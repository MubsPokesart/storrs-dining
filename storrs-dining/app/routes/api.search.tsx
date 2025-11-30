import type { LoaderFunctionArgs } from 'react-router';
import { getDb, searchMenuItems } from '~/lib/db/queries';

export interface SearchResult {
  itemId: number;
  itemName: string;
  station: string;
  isVegan: boolean | null;
  isVegetarian: boolean | null;
  isGlutenFree: boolean | null;
  menuId: number;
  mealPeriod: string;
  locationId: string;
  locationName: string;
  locationSlug: string;
}

export interface SearchLoaderData {
  results: SearchResult[];
  query: string;
}

/**
 * Search API endpoint - searches across all menu items for today
 *
 * Query params:
 * - q: Search query (minimum 2 characters)
 *
 * Returns matching menu items with location and meal period info
 */
export async function loader({ request, context }: LoaderFunctionArgs) {
  const url = new URL(request.url);
  const query = url.searchParams.get('q')?.trim() || '';

  // Return empty results if query is too short
  if (query.length < 2) {
    return Response.json(
      { results: [], query } satisfies SearchLoaderData,
      {
        headers: {
          'Cache-Control': 'public, max-age=60',
        },
      }
    );
  }

  try {
    const db = getDb(context.cloudflare.env.DB);
    const today = new Date().toISOString().split('T')[0];

    const results = await searchMenuItems(db, query, today);

    return Response.json(
      { results, query } satisfies SearchLoaderData,
      {
        headers: {
          // Cache for 5 minutes - menus don't change that often
          'Cache-Control': 'public, max-age=300, stale-while-revalidate=600',
        },
      }
    );
  } catch (error) {
    console.error('Error searching menu items:', error);

    // Return empty results on error
    return Response.json(
      { results: [], query } satisfies SearchLoaderData,
      {
        status: 500,
        headers: {
          'Cache-Control': 'no-cache',
        },
      }
    );
  }
}
