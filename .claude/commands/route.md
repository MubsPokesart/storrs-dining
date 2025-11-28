---
description: Create a React Router v7 route with typed loader for Cloudflare Workers
---

Create a new route for the Dining at Storrs application.

**Route Path:** {Specify the route path, e.g., "api.menu.$locationId"}
**Purpose:** {What this route does}
**Loader Data:** {What data needs to be fetched and returned}

# Critical Requirements

## Cloudflare Workers Constraints
- ❌ NO Node.js APIs (fs, net, path, etc.)
- ❌ NO client-side data fetching in components
- ✅ Database access ONLY via `context.cloudflare.env.DB`
- ✅ All data fetched in loader functions
- ✅ Must work on edge runtime

## React Router v7 Pattern
- Use Framework Mode (not SPA mode)
- Export `loader` function for data fetching
- Use `Response.json()` for responses
- Type loader return with `satisfies LoaderData`
- Use `useLoaderData<LoaderData>()` in component

## Caching Strategy
Always include cache headers:
```typescript
headers: {
  'Cache-Control': 'public, max-age=3600, stale-while-revalidate=86400'
}
```

## Error Handling
- 404 for not found resources
- 500 for server errors
- Throw Response() for HTTP errors
- Never expose database errors to client

# Template Structure

```typescript
// app/routes/{route-path}.tsx

import type { LoaderFunctionArgs } from 'react-router';
import { useLoaderData } from 'react-router';
import { getDb } from '~/lib/db/queries';
// Import other query functions as needed

// Define the shape of data returned from loader
export interface LoaderData {
  // Add your data shape here
  // Match types from API-CONTRACTS.md
}

/**
 * Loader function - runs on server (Cloudflare Workers)
 * Fetches all data needed for this route
 */
export async function loader({ 
  params, 
  request,
  context 
}: LoaderFunctionArgs) {
  // Get database instance
  const db = getDb(context.cloudflare.env.DB);
  
  // Extract params/query strings
  const { paramName } = params;
  
  // Fetch data from database
  try {
    // Your database queries here
    
    // Return typed JSON response with cache headers
    return Response.json(
      {
        // Your data
      } satisfies LoaderData,
      {
        headers: {
          'Cache-Control': 'public, max-age=3600, stale-while-revalidate=86400',
        },
      }
    );
  } catch (error) {
    console.error('Error in loader:', error);
    throw new Response('Internal Server Error', { status: 500 });
  }
}

/**
 * Route component
 */
export default function Route() {
  const data = useLoaderData<LoaderData>();
  
  return (
    <div>
      {/* Your JSX using data */}
    </div>
  );
}
```

# Examples from Project

## Example 1: Home Page (_index.tsx)

```typescript
// app/routes/_index.tsx

import type { LoaderFunctionArgs } from 'react-router';
import { useLoaderData } from 'react-router';
import { getDb, getAllLocations } from '~/lib/db/queries';
import { getHoursStatus } from '~/lib/hours';
import type { LocationWithStatus } from '~/lib/types';
import { HallCard } from '~/components/hall-card';

export interface HomeLoaderData {
  locations: LocationWithStatus[];
  generatedAt: string;
}

export async function loader({ context }: LoaderFunctionArgs) {
  const db = getDb(context.cloudflare.env.DB);
  const locations = await getAllLocations(db);
  
  const now = new Date();
  const locationsWithStatus: LocationWithStatus[] = locations.map((loc) => ({
    ...loc,
    status: getHoursStatus(loc.id, now),
  }));

  return Response.json(
    {
      locations: locationsWithStatus,
      generatedAt: now.toISOString(),
    } satisfies HomeLoaderData,
    {
      headers: {
        'Cache-Control': 'public, max-age=60, stale-while-revalidate=300',
      },
    }
  );
}

export default function Home() {
  const { locations } = useLoaderData<HomeLoaderData>();
  
  return (
    <main className="min-h-screen bg-[rgb(var(--color-bg-primary))] p-4">
      <h1 className="font-display text-3xl font-bold mb-8 text-[rgb(var(--color-text-primary))]">
        Dining at Storrs
      </h1>
      
      <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
        {locations.map((location) => (
          <HallCard
            key={location.id}
            location={location}
            isFavorite={false}
            onFavoriteToggle={() => {}}
            onCardClick={() => {}}
          />
        ))}
      </div>
    </main>
  );
}
```

## Example 2: API Resource Route (api.menu.$locationId.tsx)

```typescript
// app/routes/api.menu.$locationId.tsx

import type { LoaderFunctionArgs } from 'react-router';
import { getDb, getLocation, getMenuWithItems } from '~/lib/db/queries';
import { getHoursStatus } from '~/lib/hours';
import type { Location, MenuWithItems } from '~/lib/types';

export interface MenuLoaderData {
  location: Location;
  menu: MenuWithItems | null;
  mealPeriod: string;
  date: string;
}

export async function loader({ params, context }: LoaderFunctionArgs) {
  const { locationId } = params;
  
  if (!locationId) {
    throw new Response('Location ID required', { status: 400 });
  }
  
  const db = getDb(context.cloudflare.env.DB);
  
  // Fetch location
  const location = await getLocation(db, locationId);
  if (!location) {
    throw new Response('Location not found', { status: 404 });
  }

  // Get current meal period
  const now = new Date();
  const status = getHoursStatus(locationId, now);
  const today = now.toISOString().split('T')[0];
  const mealPeriod = status.currentMeal?.toLowerCase() || 'lunch';

  // Fetch menu
  const menu = await getMenuWithItems(db, locationId, today, mealPeriod);

  return Response.json(
    {
      location,
      menu,
      mealPeriod,
      date: today,
    } satisfies MenuLoaderData,
    {
      headers: {
        'Cache-Control': 'public, max-age=1800, stale-while-revalidate=3600',
      },
    }
  );
}
```

## Example 3: Analytics Action (api.analytics.tsx)

```typescript
// app/routes/api.analytics.tsx

import type { ActionFunctionArgs } from 'react-router';
import { getDb, insertAnalyticsEvent } from '~/lib/db/queries';

export interface AnalyticsEventRequest {
  eventType: string;
  sessionId: string;
  locationId?: string;
  metadata?: Record<string, unknown>;
}

export async function action({ request, context }: ActionFunctionArgs) {
  if (request.method !== 'POST') {
    return Response.json(
      { error: 'Method not allowed' },
      { status: 405 }
    );
  }

  try {
    const body = await request.json() as AnalyticsEventRequest;
    
    // Validation
    if (!body.eventType || !body.sessionId) {
      return Response.json(
        { error: 'Missing required fields: eventType, sessionId' },
        { status: 400 }
      );
    }

    const db = getDb(context.cloudflare.env.DB);
    
    await insertAnalyticsEvent(db, {
      eventType: body.eventType,
      locationId: body.locationId,
      sessionId: body.sessionId,
      metadata: body.metadata ? JSON.stringify(body.metadata) : null,
    });

    return Response.json(
      { success: true },
      { status: 201 }
    );
  } catch (error) {
    console.error('Analytics error:', error);
    return Response.json(
      { error: 'Failed to record event' },
      { status: 500 }
    );
  }
}
```

# Type Safety Checklist

Before completing the route, ensure:

- [ ] LoaderData interface matches API-CONTRACTS.md
- [ ] loader function uses `satisfies LoaderData`
- [ ] useLoaderData uses type parameter `<LoaderData>`
- [ ] All database queries have proper return types
- [ ] params are validated before use
- [ ] Error responses use proper HTTP status codes

# Cache Headers Reference

Choose appropriate cache duration:

**Frequently changing data (menus):**
```typescript
'Cache-Control': 'public, max-age=1800, stale-while-revalidate=3600'
// 30 min cache, 1 hour stale
```

**Stable data (locations, hours):**
```typescript
'Cache-Control': 'public, max-age=3600, stale-while-revalidate=86400'
// 1 hour cache, 24 hour stale
```

**Real-time data (analytics):**
```typescript
'Cache-Control': 'no-cache, no-store, must-revalidate'
// No caching
```

# Database Access Pattern

Always follow this pattern:

```typescript
// 1. Get database instance
const db = getDb(context.cloudflare.env.DB);

// 2. Call query functions (never raw SQL)
const data = await getYourData(db, params);

// 3. Handle null/undefined
if (!data) {
  throw new Response('Not found', { status: 404 });
}

// 4. Return typed response
return Response.json({ data } satisfies LoaderData, { headers });
```

# Common Pitfalls to Avoid

❌ **DON'T:**
- Use `fs` or Node.js modules
- Fetch data in useEffect
- Access `process.env` (use context.cloudflare.env)
- Return plain objects (use Response.json())
- Expose database errors to client

✅ **DO:**
- Use context.cloudflare.env for environment
- Fetch all data in loader
- Return Response.json() with headers
- Handle errors gracefully
- Validate params before queries

# Documentation Lookup

**BEFORE implementing, use Context7 MCP to get up-to-date documentation:**

Use the Context7 MCP tools to retrieve current documentation for the stack:

1. **React Router v7** - For loader/action patterns, Framework Mode, typed responses
2. **Cloudflare Workers** - For edge runtime constraints, context API
3. **Drizzle ORM** - For D1 database queries and schema patterns
4. **Cloudflare D1** - For SQLite edge database usage

**Example Context7 queries:**
```typescript
// Get React Router v7 loader documentation
mcp__context7__resolve-library-id({ libraryName: "react-router" })
mcp__context7__get-library-docs({
  context7CompatibleLibraryID: "/remix-run/react-router",
  topic: "loader functions framework mode"
})

// Get Cloudflare Workers documentation
mcp__context7__resolve-library-id({ libraryName: "cloudflare workers" })
mcp__context7__get-library-docs({
  context7CompatibleLibraryID: "/cloudflare/workers-sdk",
  topic: "context bindings"
})

// Get Drizzle ORM documentation for D1
mcp__context7__resolve-library-id({ libraryName: "drizzle-orm" })
mcp__context7__get-library-docs({
  context7CompatibleLibraryID: "/drizzle-team/drizzle-orm",
  topic: "cloudflare d1"
})

// Get D1 database documentation
mcp__context7__resolve-library-id({ libraryName: "cloudflare d1" })
mcp__context7__get-library-docs({
  context7CompatibleLibraryID: "/cloudflare/workers-sdk",
  topic: "d1 database queries"
})
```

**When to use Context7:**
- Verifying the latest React Router v7 API (Framework Mode is new)
- Checking Cloudflare Workers runtime constraints
- Looking up Drizzle ORM query patterns for D1
- Understanding cache header best practices
- Validating TypeScript patterns for loaders

# Now Create the Route

Place the completed route in: `app/routes/{route-path}.tsx`

Verify all requirements above before considering complete.