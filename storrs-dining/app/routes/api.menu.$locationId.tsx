import type { LoaderFunctionArgs } from 'react-router';
import { getDb, getAllLocations } from '~/lib/db/queries';
import { getHoursStatus } from '~/lib/hours';
import type { Location, MenuItem } from '~/lib/db/types';

// Type for menu data returned from loader
export interface MenuLoaderData {
  location: Location;
  menu: {
    id: number;
    locationId: string;
    date: string;
    mealPeriod: string;
    items: MenuItem[];
  } | null;
  mealPeriod: string;
  date: string;
  isOpen: boolean;
  currentMealLabel: string | null;
}

/**
 * Loader function - fetches menu for a specific location
 * Runs on Cloudflare Workers edge runtime
 *
 * @param params.locationId - The dining hall location ID (e.g., "south", "northwest")
 */
export async function loader({ params, context }: LoaderFunctionArgs) {
  const { locationId } = params;

  // Validate locationId param
  if (!locationId) {
    throw new Response('Location ID required', { status: 400 });
  }

  try {
    // Get database instance from Cloudflare Workers context
    const db = getDb(context.cloudflare.env.DB);

    // Fetch all locations to find the requested one
    const locations = await getAllLocations(db);
    const location = locations.find(loc => loc.id === locationId);

    if (!location) {
      throw new Response('Location not found', { status: 404 });
    }

    // Get current hours status and meal period
    const now = new Date();
    const status = getHoursStatus(locationId, now);
    const today = now.toISOString().split('T')[0];

    // Determine which meal period to fetch
    // If open, use current meal; if closed, default to lunch for preview
    const mealPeriod = status.currentMeal || 'lunch';

    // Fetch menu from database
    // Note: For now, we'll return null since we don't have menu data seeded yet
    // This will be populated when the scraper runs and seeds the database
    const menu = await getMenuByLocationAndDate(db, locationId, today, mealPeriod);

    // Return typed JSON response with cache headers
    return Response.json(
      {
        location,
        menu,
        mealPeriod,
        date: today,
        isOpen: status.isOpen,
        currentMealLabel: status.currentMealLabel,
      } satisfies MenuLoaderData,
      {
        headers: {
          // Cache for 30 minutes, allow stale for 1 hour
          // Menus change throughout the day
          'Cache-Control': 'public, max-age=1800, stale-while-revalidate=3600',
        },
      }
    );
  } catch (error) {
    // Log error for debugging but don't expose details to client
    console.error('Error loading menu:', error);

    // If it's already a Response, re-throw it
    if (error instanceof Response) {
      throw error;
    }

    // Otherwise throw a generic 500 error
    throw new Response('Failed to load menu', { status: 500 });
  }
}

/**
 * Helper function to fetch menu with items from database
 * This will use the getMenuByLocationAndDate query function
 */
async function getMenuByLocationAndDate(
  db: ReturnType<typeof getDb>,
  locationId: string,
  date: string,
  mealPeriod: string
) {
  // Import the actual query function
  const { getMenuByLocationAndDate: getMenu } = await import('~/lib/db/queries');

  try {
    const menu = await getMenu(db, locationId, date, mealPeriod);
    return menu;
  } catch (error) {
    // If menu doesn't exist yet (no data seeded), return null
    console.log(`No menu found for ${locationId} on ${date} for ${mealPeriod}`);
    return null;
  }
}
