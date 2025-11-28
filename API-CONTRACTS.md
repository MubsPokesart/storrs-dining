# API-CONTRACTS.md — Type Definitions & Data Contracts

This document defines the TypeScript types shared between loaders and components. These are the "contracts" that ensure type safety across the application.

---

## 1. Core Domain Types

```typescript
// app/lib/types.ts

// ═══════════════════════════════════════════════════════════════
// DATABASE ENTITIES (match Drizzle schema)
// ═══════════════════════════════════════════════════════════════

export interface Location {
  id: string;
  name: string;
  slug: string;
  locationName: string | null;
  latitude: number | null;
  longitude: number | null;
  hasLateNight: boolean;
  isActive: boolean;
}

export interface Menu {
  id: number;
  locationId: string;
  date: string;        // ISO date "YYYY-MM-DD"
  mealPeriod: string;  // "breakfast" | "lunch" | "dinner" | "late_night"
}

export interface MenuItem {
  id: number;
  menuId: number;
  name: string;
  station: string;
  stationOrder: number;
  isVegan: boolean;
  isVegetarian: boolean;
  isGlutenFree: boolean;
}

// ═══════════════════════════════════════════════════════════════
// COMPUTED/ENRICHED TYPES (returned by loaders)
// ═══════════════════════════════════════════════════════════════

export interface HoursStatus {
  isOpen: boolean;
  currentMeal: string | null;       // "Lunch", "Dinner", etc.
  closesAt: string | null;          // "2:30 PM"
  opensAt: string | null;           // "4:30 PM" or "tomorrow"
  isClosingSoon: boolean;           // true if closing within 30 min
}

export interface LocationWithStatus extends Location {
  status: HoursStatus;
}

export interface MenuItemsByStation {
  station: string;
  stationOrder: number;
  items: MenuItem[];
}

export interface MenuWithItems {
  id: number;
  locationId: string;
  date: string;
  mealPeriod: string;
  stations: MenuItemsByStation[];
}
```

---

## 2. Loader Return Types

### 2.1 Home Page Loader (`app/routes/_index.tsx`)

```typescript
// Loader return type
export interface HomeLoaderData {
  locations: LocationWithStatus[];
  generatedAt: string;  // ISO timestamp
}

// Example loader
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

// Usage in component
export default function Home() {
  const { locations } = useLoaderData<HomeLoaderData>();
  // ...
}
```

### 2.2 Menu Resource Route (`app/routes/api.menu.$locationId.tsx`)

```typescript
// Loader return type
export interface MenuLoaderData {
  location: Location;
  menu: MenuWithItems | null;
  mealPeriod: string;
  date: string;
}

// Example loader
export async function loader({ params, context }: LoaderFunctionArgs) {
  const { locationId } = params;
  const db = getDb(context.cloudflare.env.DB);
  
  const location = await getLocation(db, locationId);
  if (!location) {
    throw new Response('Location not found', { status: 404 });
  }

  const now = new Date();
  const status = getHoursStatus(locationId, now);
  const today = now.toISOString().split('T')[0];
  const mealPeriod = status.currentMeal || 'lunch'; // fallback

  const menu = await getMenuWithItems(db, locationId, today, mealPeriod);

  return Response.json({
    location,
    menu,
    mealPeriod,
    date: today,
  } satisfies MenuLoaderData);
}
```

### 2.3 Analytics Action (`app/routes/api.analytics.tsx`)

```typescript
// Request body type
export interface AnalyticsEventRequest {
  eventType: string;
  sessionId: string;
  locationId?: string;
  metadata?: Record<string, unknown>;
}

// Response type
export interface AnalyticsEventResponse {
  success: boolean;
}

// Example action
export async function action({ request, context }: ActionFunctionArgs) {
  if (request.method !== 'POST') {
    return Response.json({ error: 'Method not allowed' }, { status: 405 });
  }

  const body = await request.json() as AnalyticsEventRequest;
  
  // Validation
  if (!body.eventType || !body.sessionId) {
    return Response.json({ error: 'Missing required fields' }, { status: 400 });
  }

  const db = getDb(context.cloudflare.env.DB);
  await insertAnalyticsEvent(db, {
    eventType: body.eventType,
    locationId: body.locationId,
    sessionId: body.sessionId,
    metadata: body.metadata ? JSON.stringify(body.metadata) : null,
  });

  return Response.json({ success: true } satisfies AnalyticsEventResponse, { status: 201 });
}
```

---

## 3. Component Prop Types

### 3.1 HallCard

```typescript
// app/components/hall-card.tsx

export interface HallCardProps {
  location: LocationWithStatus;
  isFavorite: boolean;
  onFavoriteToggle: (locationId: string) => void;
  onCardClick: (locationId: string) => void;
}
```

### 3.2 MenuDrawer

```typescript
// app/components/menu-drawer.tsx

export interface MenuDrawerProps {
  locationId: string | null;  // null = closed
  location: Location | null;
  menu: MenuWithItems | null;
  isLoading: boolean;
  onClose: () => void;
}
```

### 3.3 MenuFilters

```typescript
// app/components/menu-filters.tsx

export type DietaryFilter = 'vegan' | 'vegetarian' | 'gluten_free';

export interface MenuFiltersProps {
  activeFilters: Set<DietaryFilter>;
  onFilterToggle: (filter: DietaryFilter) => void;
}
```

### 3.4 MenuItem

```typescript
// app/components/menu-item.tsx

export interface MenuItemProps {
  item: MenuItem;
  // No onClick - items are display only
}
```

### 3.5 StationGroup

```typescript
// app/components/station-group.tsx

export interface StationGroupProps {
  station: string;
  items: MenuItem[];
  // Items may be pre-filtered by parent
}
```

---

## 4. Hook Return Types

### 4.1 useFavorites

```typescript
// app/hooks/use-favorites.ts

export interface UseFavoritesReturn {
  favorites: Set<string>;
  isFavorite: (locationId: string) => boolean;
  toggleFavorite: (locationId: string) => void;
}
```

### 4.2 useMenuFilter

```typescript
// app/hooks/use-menu-filter.ts

export interface UseMenuFilterReturn {
  filteredItems: MenuItem[];
  activeFilters: Set<DietaryFilter>;
  toggleFilter: (filter: DietaryFilter) => void;
  clearFilters: () => void;
  hasActiveFilters: boolean;
}
```

### 4.3 useDrawerState

```typescript
// app/hooks/use-drawer-state.ts

export interface UseDrawerStateReturn {
  activeLocationId: string | null;
  isOpen: boolean;
  openDrawer: (locationId: string) => void;
  closeDrawer: () => void;
}
```

### 4.4 useSessionId

```typescript
// app/hooks/use-session-id.ts

export interface UseSessionIdReturn {
  sessionId: string;
}
```

---

## 5. Scraper Output Schema

This is the JSON format the Python scraper should produce:

```typescript
// scraper/output/menus.json shape

export interface ScraperOutput {
  scrapedAt: string;  // ISO timestamp
  menus: ScrapedMenu[];
}

export interface ScrapedMenu {
  locationId: string;   // "south", "northwest", etc.
  date: string;         // "2024-11-27"
  mealPeriod: string;   // "breakfast", "lunch", "dinner", "late_night"
  items: ScrapedItem[];
}

export interface ScrapedItem {
  name: string;
  station: string;
  stationOrder: number;
  isVegan: boolean;
  isVegetarian: boolean;
  isGlutenFree: boolean;
}
```

**Example:**
```json
{
  "scrapedAt": "2024-11-27T07:00:00Z",
  "menus": [
    {
      "locationId": "south",
      "date": "2024-11-27",
      "mealPeriod": "lunch",
      "items": [
        {
          "name": "Awesome Burger",
          "station": "Grill",
          "stationOrder": 1,
          "isVegan": false,
          "isVegetarian": false,
          "isGlutenFree": true
        },
        {
          "name": "Black Bean Burger",
          "station": "Grill",
          "stationOrder": 1,
          "isVegan": true,
          "isVegetarian": true,
          "isGlutenFree": true
        },
        {
          "name": "Cheese Pizza",
          "station": "Pizza",
          "stationOrder": 2,
          "isVegan": false,
          "isVegetarian": true,
          "isGlutenFree": false
        }
      ]
    }
  ]
}
```

---

## 6. Analytics Event Types

Standardized event names for consistency:

```typescript
// app/lib/analytics-events.ts

export const ANALYTICS_EVENTS = {
  // Page views
  PAGE_VIEW: 'page_view',
  
  // Hall interactions
  HALL_CARD_CLICK: 'hall_card_click',
  HALL_MENU_VIEW: 'hall_menu_view',
  
  // Favorites
  FAVORITE_ADD: 'favorite_add',
  FAVORITE_REMOVE: 'favorite_remove',
  
  // Filters
  FILTER_APPLY: 'filter_apply',
  FILTER_CLEAR: 'filter_clear',
  
  // Drawer
  DRAWER_OPEN: 'drawer_open',
  DRAWER_CLOSE: 'drawer_close',
} as const;

export type AnalyticsEventType = typeof ANALYTICS_EVENTS[keyof typeof ANALYTICS_EVENTS];
```

---

## 7. Environment Types

```typescript
// app/env.d.ts

interface Env {
  DB: D1Database;
}

declare module 'react-router' {
  interface AppLoadContext {
    cloudflare: {
      env: Env;
    };
  }
}
```

---

## 8. Validation Helpers

```typescript
// app/lib/validation.ts

import type { AnalyticsEventRequest } from './types';

export function isValidAnalyticsEvent(body: unknown): body is AnalyticsEventRequest {
  if (typeof body !== 'object' || body === null) return false;
  
  const obj = body as Record<string, unknown>;
  
  return (
    typeof obj.eventType === 'string' &&
    obj.eventType.length > 0 &&
    typeof obj.sessionId === 'string' &&
    obj.sessionId.length > 0
  );
}

export function isValidLocationId(id: unknown): id is string {
  if (typeof id !== 'string') return false;
  
  const validIds = ['south', 'northwest', 'mcmahon', 'putnam', 'whitney', 'north', 'towers', 'buckley'];
  return validIds.includes(id);
}
```

---

## 9. Type Export Index

```typescript
// app/lib/types/index.ts

// Re-export all types from a single entry point
export type {
  Location,
  Menu,
  MenuItem,
  HoursStatus,
  LocationWithStatus,
  MenuItemsByStation,
  MenuWithItems,
  HomeLoaderData,
  MenuLoaderData,
  AnalyticsEventRequest,
  AnalyticsEventResponse,
  DietaryFilter,
  ScraperOutput,
  ScrapedMenu,
  ScrapedItem,
} from './types';
```

---

*This document ensures type safety across the entire application. Update it when adding new routes or modifying data structures.*