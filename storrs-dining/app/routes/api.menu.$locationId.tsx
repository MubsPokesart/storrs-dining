import type { LoaderFunctionArgs } from 'react-router';
import { getDb, getAllLocations } from '~/lib/db/queries';
import { getHoursStatus, getTodayEastern } from '~/lib/hours';
import type { Location, MenuItem } from '~/lib/db/types';

// Type for menu data returned from loader
export interface MenuLoaderData {
  location: Location;
  allMeals: {
    mealPeriod: string;
    menu: {
      id: number;
      locationId: string;
      date: string;
      mealPeriod: string;
      items: MenuItem[];
    } | null;
  }[];
  currentMealPeriod: string;
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

    // Get current hours status and meal period (uses Eastern Time)
    const status = getHoursStatus(locationId);
    const today = getTodayEastern();

    // Determine which meal period to show by default
    let currentMealPeriod = status.currentMeal || 'lunch';

    // Fetch all meal periods for the day
    const mealPeriods = ['breakfast', 'brunch', 'lunch', 'dinner', 'late_night'];
    const allMeals = await Promise.all(
      mealPeriods.map(async (period) => {
        const menu = await getMenuByLocationAndDate(db, locationId, today, period);
        return { mealPeriod: period, menu };
      })
    );

    // Filter out meals with no data
    const availableMeals = allMeals.filter(m => m.menu !== null);

    // Fallback: if current meal (brunch) is not found, try lunch instead
    if (currentMealPeriod === 'brunch' && !availableMeals.find(m => m.mealPeriod === 'brunch')) {
      const lunchMeal = availableMeals.find(m => m.mealPeriod === 'lunch');
      if (lunchMeal) {
        currentMealPeriod = 'lunch';
      }
    }

    // Return typed JSON response with cache headers
    return Response.json(
      {
        location,
        allMeals: availableMeals,
        currentMealPeriod,
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
