import type { Route } from "./+types/home";
import { NuqsAdapter } from "nuqs/adapters/react-router/v7";
import { getDb, getAllLocations } from "~/lib/db/queries";
import { getHoursStatus } from "~/lib/hours";
import type { LocationWithStatus } from "~/lib/db/types";
import { HallCard } from "~/components/hall-card";
import { MenuDrawer } from "~/components/menu-drawer";
import { Navbar } from "~/components/navbar";
import { useEffect, useState } from "react";
import { useQueryState } from "nuqs";
import { Search } from "lucide-react";
import { Input } from "~/components/ui/input";
import { Badge } from "~/components/ui/badge";

// Loader data type matching API-CONTRACTS.md
export interface HomeLoaderData {
  locations: LocationWithStatus[];
  generatedAt: string;
}

/**
 * Loader function - fetches all locations and computes hours status
 * Runs on Cloudflare Workers edge runtime
 */
export async function loader({ context }: Route.LoaderArgs) {
  // Get database instance from Cloudflare Workers context
  const db = getDb(context.cloudflare.env.DB);

  try {
    // Fetch all active locations from D1 database
    const locations = await getAllLocations(db);

    // Compute hours status for each location
    const now = new Date();
    const locationsWithStatus: LocationWithStatus[] = locations.map((loc) => {
      const status = getHoursStatus(loc.id, now);

      return {
        ...loc,
        isOpen: status.isOpen,
        currentMeal: status.currentMeal,
        currentMealLabel: status.currentMealLabel,
        closesAt: status.closesAt,
        opensAt: status.opensAt,
        closingSoon: status.closingSoon,
      };
    });

    // Return typed data with cache headers
    const data: HomeLoaderData = {
      locations: locationsWithStatus,
      generatedAt: now.toISOString(),
    };

    return Response.json(data, {
      headers: {
        // Cache for 1 minute, allow stale for 5 minutes
        // Short cache since hours status changes frequently
        'Cache-Control': 'public, max-age=60, stale-while-revalidate=300',
      },
    });
  } catch (error) {
    console.error('Error loading locations:', error);
    throw new Response('Failed to load dining halls', { status: 500 });
  }
}

/**
 * Meta tags for SEO
 */
export function meta({}: Route.MetaArgs) {
  return [
    { title: "Dining at Storrs | UConn Dining Hall Menus" },
    {
      name: "description",
      content: "View real-time dining hall hours and menus for UConn Storrs campus. Find what's open now and browse today's menu."
    },
    { name: "viewport", content: "width=device-width, initial-scale=1" },
    { name: "theme-color", content: "#000E2F" },
  ];
}

const STORAGE_KEY = "dining-storrs-favorites";

const PLACEHOLDERS = ["Pizza", "Late Night", "Coffee", "Pasta", "Tacos"];

/**
 * Inner component that uses nuqs hooks
 */
function HomeContent({ locations }: { locations: LocationWithStatus[] }) {
  const [hall, setHall] = useQueryState("hall");
  const [favorites, setFavorites] = useState<Set<string>>(new Set());
  const [searchQuery, setSearchQuery] = useState("");
  const [filter, setFilter] = useState<"all" | "open" | "favorites">("all");
  const [currentPlaceholder, setCurrentPlaceholder] = useState(0);

  // Load favorites from localStorage on mount
  useEffect(() => {
    const stored = localStorage.getItem(STORAGE_KEY);
    if (stored) {
      try {
        const parsed = JSON.parse(stored);
        setFavorites(new Set(Array.isArray(parsed) ? parsed : []));
      } catch {
        // Invalid JSON, ignore
      }
    }
  }, []);

  // Rotate placeholder text
  useEffect(() => {
    const interval = setInterval(() => {
      setCurrentPlaceholder((prev) => (prev + 1) % PLACEHOLDERS.length);
    }, 2000);
    return () => clearInterval(interval);
  }, []);

  // Save favorites to localStorage whenever they change
  useEffect(() => {
    localStorage.setItem(STORAGE_KEY, JSON.stringify(Array.from(favorites)));
  }, [favorites]);

  const toggleFavorite = (locationId: string) => {
    setFavorites((prev) => {
      const next = new Set(prev);
      if (next.has(locationId)) {
        next.delete(locationId);
      } else {
        next.add(locationId);
      }
      return next;
    });
  };

  const openMenu = (locationId: string) => {
    setHall(locationId);
  };

  // Filter locations based on search and filter
  const filteredLocations = locations.filter((location) => {
    const matchesSearch =
      location.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
      (location.locationName?.toLowerCase() || "").includes(searchQuery.toLowerCase());

    const matchesFilter =
      filter === "all" ||
      (filter === "open" && location.isOpen) ||
      (filter === "favorites" && favorites.has(location.id));

    return matchesSearch && matchesFilter;
  });

  return (
    <div className="min-h-screen bg-[rgb(var(--color-bg-primary))]">
      {/* Navbar with theme toggle */}
      <Navbar />

      {/* Main content */}
      <main>
        {/* Header */}
        <header className="pt-12 pb-8 px-6 text-center">
          <h1 className="font-display text-5xl md:text-6xl lg:text-7xl font-bold text-[rgb(var(--color-text-primary))] mb-2">
            Dining at <span className="font-accent text-6xl md:text-7xl lg:text-8xl text-[rgb(var(--color-brand-primary))]">Storrs</span>
          </h1>
          <p className="font-body text-lg text-[rgb(var(--color-text-secondary))]">
            Explore the Dining Halls Across Storrs
          </p>
        </header>

        {/* Search & Filters - Sticky */}
        <div className="sticky top-16 z-10 bg-[rgb(var(--color-bg-primary))]/95 backdrop-blur-sm border-b border-[rgb(var(--color-border-secondary))] pb-4 pt-4 px-6">
          <div className="max-w-2xl mx-auto space-y-4">
            {/* Search Bar */}
            <div className="relative">
              <Search className="absolute left-4 top-1/2 -translate-y-1/2 h-5 w-5 text-[rgb(var(--color-text-tertiary))]" />
              <Input
                type="text"
                placeholder={`Where can I find ${PLACEHOLDERS[currentPlaceholder]}...`}
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                className="pl-12 h-14 text-lg shadow-lg border-2 transition-all focus:shadow-xl font-body"
              />
            </div>

            {/* Filter Pills */}
            <div className="flex gap-2 justify-center">
              <Badge
                variant={filter === "all" ? "default" : "secondary"}
                className="cursor-pointer px-6 py-2 text-sm font-body"
                onClick={() => setFilter("all")}
              >
                All
              </Badge>
              <Badge
                variant={filter === "open" ? "default" : "secondary"}
                className="cursor-pointer px-6 py-2 text-sm font-body"
                onClick={() => setFilter("open")}
              >
                Open Now
              </Badge>
              <Badge
                variant={filter === "favorites" ? "default" : "secondary"}
                className="cursor-pointer px-6 py-2 text-sm font-body"
                onClick={() => setFilter("favorites")}
              >
                Favorites
              </Badge>
            </div>
          </div>
        </div>

        {/* Hall cards grid */}
        <section className="container mx-auto p-4">
          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {filteredLocations.map((location) => (
              <HallCard
                key={location.id}
                location={location}
                isFavorite={favorites.has(location.id)}
                onFavoriteToggle={toggleFavorite}
                onCardClick={openMenu}
              />
            ))}
          </div>

          {/* Empty state */}
          {filteredLocations.length === 0 && (
            <div className="text-center py-12">
              <p className="font-body text-[rgb(var(--color-text-secondary))]">
                No dining halls found matching your search.
              </p>
            </div>
          )}
        </section>

        {/* Menu drawer (URL-driven, opens with ?hall=<locationId>) */}
        <MenuDrawer locations={locations} />
      </main>
    </div>
  );
}

/**
 * Home route component
 * Displays hall cards in grid and menu drawer
 */
export default function Home({ loaderData }: Route.ComponentProps) {
  const { locations } = loaderData as unknown as HomeLoaderData;

  return (
    <NuqsAdapter>
      <HomeContent locations={locations} />
    </NuqsAdapter>
  );
}
