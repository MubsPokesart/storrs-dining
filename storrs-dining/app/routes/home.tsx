import type { Route } from "./+types/home";
import { NuqsAdapter } from "nuqs/adapters/react-router/v7";
import { getDb, getAllLocations } from "~/lib/db/queries";
import { getHoursStatus } from "~/lib/hours";
import type { Location } from "~/lib/db/types";
import { HallCard } from "~/components/hall-card";
import { MenuDrawer } from "~/components/menu-drawer";

// Type for location with computed hours status
export interface LocationWithStatus extends Location {
  isOpen: boolean;
  currentMeal: string | null;
  currentMealLabel: string | null;
  closesAt: string | null;
  opensAt: string | null;
}

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
      };
    });

    // Return typed JSON response with cache headers
    return Response.json(
      {
        locations: locationsWithStatus,
        generatedAt: now.toISOString(),
      } satisfies HomeLoaderData,
      {
        headers: {
          // Cache for 1 minute, allow stale for 5 minutes
          // Short cache since hours status changes frequently
          'Cache-Control': 'public, max-age=60, stale-while-revalidate=300',
        },
      }
    );
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

/**
 * Home route component
 * Displays hall cards in grid and menu drawer
 */
export default function Home({ loaderData }: Route.ComponentProps) {
  const { locations } = loaderData;

  return (
    <NuqsAdapter>
      <main className="min-h-screen bg-[rgb(var(--color-bg-primary))]">
        {/* Sticky header */}
        <header className="sticky top-0 z-20 bg-[rgb(var(--color-bg-primary))]/80 backdrop-blur border-b border-[rgb(var(--color-border-secondary))]">
          <div className="container mx-auto px-4 py-4">
            <h1 className="font-display text-3xl font-bold text-[rgb(var(--color-text-primary))]">
              Dining at Storrs
            </h1>
            <p className="font-body text-sm text-[rgb(var(--color-text-secondary))] mt-1">
              UConn Dining Halls
            </p>
          </div>
        </header>

        {/* Hall cards grid */}
        <section className="container mx-auto p-4">
          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {locations.map((location) => (
              <HallCard
                key={location.id}
                location={location}
              />
            ))}
          </div>

          {/* Empty state */}
          {locations.length === 0 && (
            <div className="text-center py-12">
              <p className="font-body text-[rgb(var(--color-text-secondary))]">
                No dining halls available at this time.
              </p>
            </div>
          )}
        </section>

        {/* Menu drawer (URL-driven, opens with ?hall=<locationId>) */}
        <MenuDrawer locations={locations} />
      </main>
    </NuqsAdapter>
  );
}
