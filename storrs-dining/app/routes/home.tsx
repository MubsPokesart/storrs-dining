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
import { useFetcher } from "react-router";
import { Search } from "lucide-react";
import { Input } from "~/components/ui/input";
import { Badge } from "~/components/ui/badge";
import type { SearchLoaderData } from "./api.search";

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
    { title: "Dining at Storrs | Campus Dining Hall Menus" },
    {
      name: "description",
      content: "View real-time dining hall hours and menus for Storrs campus. Find what's open now and browse today's menu."
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

  // Use fetcher for search API
  const searchFetcher = useFetcher<SearchLoaderData>();

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

  // Debounced search effect
  useEffect(() => {
    // Only search if query is 2+ characters
    if (searchQuery.length >= 2) {
      const timeoutId = setTimeout(() => {
        searchFetcher.load(`/api/search?q=${encodeURIComponent(searchQuery)}`);
      }, 300); // 300ms debounce

      return () => clearTimeout(timeoutId);
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [searchQuery]);

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

  // Get location IDs from menu search results
  const searchResultLocationIds = new Set(
    searchFetcher.data?.results?.map((r) => r.locationId) || []
  );

  // Filter locations based on search and filter
  const filteredLocations = locations.filter((location) => {
    let matchesSearch = true;

    // If search query exists
    if (searchQuery.trim()) {
      // For queries >= 2 chars, use menu search results if available
      if (searchQuery.length >= 2 && searchFetcher.data) {
        // Match if location name matches OR if location has matching menu items
        const nameMatches =
          location.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
          (location.locationName?.toLowerCase() || "").includes(searchQuery.toLowerCase());

        const menuMatches = searchResultLocationIds.has(location.id);

        matchesSearch = nameMatches || menuMatches;
      } else {
        // For short queries (<2 chars), only search location names
        matchesSearch =
          location.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
          (location.locationName?.toLowerCase() || "").includes(searchQuery.toLowerCase());
      }
    }

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
          <p className="font-body text-sm text-[rgb(var(--color-text-tertiary))] mt-2">
            <a
              href="https://forms.gle/H6X6Mu4S43eCzxou9"
              target="_blank"
              rel="noopener noreferrer"
              className="underline hover:text-[rgb(var(--color-brand-primary))] transition-colors"
            >
              Help us improve - take our quick survey
            </a>
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
              {/* Search results indicator */}
              {searchQuery.length >= 2 && searchFetcher.data && searchFetcher.data.results.length > 0 && (
                <div className="absolute right-4 top-1/2 -translate-y-1/2">
                  <Badge variant="secondary" className="font-body text-xs">
                    {searchFetcher.data.results.length} menu item{searchFetcher.data.results.length !== 1 ? 's' : ''}
                  </Badge>
                </div>
              )}
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

        {/* Disclaimer Footer */}
        <footer className="border-t border-[rgb(var(--color-border-secondary))] mt-12 py-8 px-6">
          <p className="font-body text-xs text-center text-[rgb(var(--color-text-tertiary))] max-w-3xl mx-auto">
            This website is an independent student-run project and is not affiliated with, endorsed by, or sponsored by the University of Connecticut.
            All dining information is for reference only. For official updates, visit{" "}
            <a
              href="https://dining.uconn.edu/"
              target="_blank"
              rel="noopener noreferrer"
              className="underline hover:text-[rgb(var(--color-brand-primary))] transition-colors"
            >
              dining.uconn.edu
            </a>
            .
          </p>
        </footer>
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
