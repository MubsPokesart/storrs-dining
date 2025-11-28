# TASKS.md — Dining at Storrs Implementation Guide

Complete step-by-step from empty repository to deployed MVP.

---

## Phase 1: Project Initialization

### 1.1 Create React Router v7 Project
- [ ] Run `npm create cloudflare@latest dining-storrs -- --framework=react-router`
- [ ] `cd dining-storrs`
- [ ] Verify the project runs: `npm run dev`

### 1.2 Install Dependencies
- [ ] Install core packages:
  ```bash
  npm install drizzle-orm vaul nuqs clsx tailwind-merge lucide-react date-fns
  ```
- [ ] Install dev dependencies:
  ```bash
  npm install -D drizzle-kit @tailwindcss/vite
  ```
- [ ] Verify Tailwind v4 is configured (check `vite.config.ts` for `@tailwindcss/vite` plugin)

### 1.3 Configure Cloudflare D1
- [ ] Create D1 database: `npx wrangler d1 create dining-db`
- [ ] Copy the output binding to `wrangler.toml`:
  ```toml
  [[d1_databases]]
  binding = "DB"
  database_name = "dining-db"
  database_id = "<your-database-id>"
  ```
- [ ] Add local D1 for development in `wrangler.toml`:
  ```toml
  [env.development]
  [[env.development.d1_databases]]
  binding = "DB"
  database_name = "dining-db"
  database_id = "<your-database-id>"
  ```

### 1.4 Project Structure Setup
- [ ] Create directory structure:
  ```
  app/
  ├── components/
  │   └── ui/
  ├── lib/
  │   └── db/
  ├── config/
  └── styles/
  scraper/
  └── output/
  scripts/
  ```
- [ ] Create `app/lib/utils.ts` with `cn()` helper:
  ```typescript
  import { clsx, type ClassValue } from "clsx";
  import { tailwindMerge } from "tailwind-merge";
  
  export function cn(...inputs: ClassValue[]) {
    return tailwindMerge(clsx(inputs));
  }
  ```

### 1.5 TypeScript Configuration
- [ ] Update `tsconfig.json` with path alias:
  ```json
  {
    "compilerOptions": {
      "paths": {
        "~/*": ["./app/*"]
      }
    }
  }
  ```
- [ ] Ensure `strict: true` is enabled

---

## Phase 2: Database Layer

### 2.1 Drizzle Schema
- [ ] Create `app/lib/db/schema.ts`:
  ```typescript
  import { sqliteTable, text, integer, real } from "drizzle-orm/sqlite-core";
  
  export const locations = sqliteTable("locations", {
    id: text("id").primaryKey(),
    name: text("name").notNull(),
    slug: text("slug").notNull().unique(),
    locationName: text("location_name"),
    latitude: real("latitude"),
    longitude: real("longitude"),
    hasLateNight: integer("has_late_night", { mode: "boolean" }).default(false),
    isActive: integer("is_active", { mode: "boolean" }).default(true),
  });
  
  export const menus = sqliteTable("menus", {
    id: integer("id").primaryKey({ autoIncrement: true }),
    locationId: text("location_id").notNull().references(() => locations.id),
    date: text("date").notNull(),
    mealPeriod: text("meal_period").notNull(),
  });
  
  export const menuItems = sqliteTable("menu_items", {
    id: integer("id").primaryKey({ autoIncrement: true }),
    menuId: integer("menu_id").notNull().references(() => menus.id),
    name: text("name").notNull(),
    station: text("station").notNull(),
    stationOrder: integer("station_order").default(0),
    isVegan: integer("is_vegan", { mode: "boolean" }).default(false),
    isVegetarian: integer("is_vegetarian", { mode: "boolean" }).default(false),
    isGlutenFree: integer("is_gluten_free", { mode: "boolean" }).default(false),
  });
  
  export const analyticsEvents = sqliteTable("analytics_events", {
    id: integer("id").primaryKey({ autoIncrement: true }),
    eventType: text("event_type").notNull(),
    locationId: text("location_id"),
    sessionId: text("session_id").notNull(),
    metadata: text("metadata"),
    createdAt: text("created_at").default("(datetime('now'))"),
  });
  ```

### 2.2 Drizzle Configuration
- [ ] Create `drizzle.config.ts`:
  ```typescript
  import type { Config } from "drizzle-kit";
  
  export default {
    schema: "./app/lib/db/schema.ts",
    out: "./drizzle/migrations",
    driver: "d1",
    dbCredentials: {
      wranglerConfigPath: "./wrangler.toml",
      dbName: "dining-db",
    },
  } satisfies Config;
  ```
- [ ] Add scripts to `package.json`:
  ```json
  {
    "scripts": {
      "db:generate": "drizzle-kit generate:sqlite",
      "db:migrate": "wrangler d1 migrations apply dining-db",
      "db:studio": "drizzle-kit studio"
    }
  }
  ```

### 2.3 Generate and Apply Migrations
- [ ] Run `npm run db:generate`
- [ ] Verify migration files created in `drizzle/migrations/`
- [ ] Apply locally: `npm run db:migrate -- --local`
- [ ] Apply to production: `npm run db:migrate`

### 2.4 Database Query Functions
- [ ] Create `app/lib/db/queries.ts`:
  ```typescript
  import { drizzle } from "drizzle-orm/d1";
  import { eq, and } from "drizzle-orm";
  import * as schema from "./schema";
  
  export function getDb(d1: D1Database) {
    return drizzle(d1, { schema });
  }
  
  export async function getAllLocations(db: ReturnType<typeof getDb>) {
    return db.select().from(schema.locations).where(eq(schema.locations.isActive, true));
  }
  
  export async function getMenuByLocationAndDate(
    db: ReturnType<typeof getDb>,
    locationId: string,
    date: string,
    mealPeriod: string
  ) {
    // Query menu with items
  }
  
  export async function insertAnalyticsEvent(
    db: ReturnType<typeof getDb>,
    event: { eventType: string; locationId?: string; sessionId: string; metadata?: object }
  ) {
    // Insert analytics event
  }
  ```

### 2.5 Type Definitions
- [ ] Create `app/lib/db/types.ts` for inferred types:
  ```typescript
  import type { InferSelectModel } from "drizzle-orm";
  import type { locations, menus, menuItems } from "./schema";
  
  export type Location = InferSelectModel<typeof locations>;
  export type Menu = InferSelectModel<typeof menus>;
  export type MenuItem = InferSelectModel<typeof menuItems>;
  
  export type LocationWithStatus = Location & {
    isOpen: boolean;
    currentMeal: string | null;
    closesAt: string | null;
    opensAt: string | null;
  };
  
  export type MenuWithItems = Menu & {
    items: MenuItem[];
  };
  ```

---

## Phase 3: Hours Configuration

### 3.1 Hours Data Structure
- [ ] Create `app/config/hours.ts`:
  ```typescript
  export type MealPeriod = "breakfast" | "brunch" | "lunch" | "dinner" | "late_night";
  export type DayType = "weekday" | "weekend";
  
  export interface MealSchedule {
    period: MealPeriod;
    open: string;  // "07:00"
    close: string; // "10:00"
  }
  
  export interface LocationHours {
    weekday: MealSchedule[];
    weekend: MealSchedule[];
  }
  
  export const HOURS: Record<string, LocationHours> = {
    south: {
      weekday: [
        { period: "breakfast", open: "07:00", close: "10:00" },
        { period: "lunch", open: "11:00", close: "14:30" },
        { period: "dinner", open: "16:30", close: "20:00" },
      ],
      weekend: [
        { period: "brunch", open: "10:00", close: "14:30" },
        { period: "dinner", open: "16:30", close: "20:00" },
      ],
    },
    northwest: {
      // ... define for each hall
    },
    putnam: {
      // ...
    },
    whitney: {
      // ...
    },
    mcmahon: {
      // ...
    },
    north: {
      // ...
    },
    towers: {
      // ...
    },
    connecticut: {
      // ...
    },
  };
  ```

### 3.2 Hours Computation Logic
- [ ] Create `app/lib/hours.ts`:
  ```typescript
  import { HOURS, type MealSchedule } from "~/config/hours";
  
  export function isWeekend(date: Date): boolean {
    const day = date.getDay();
    return day === 0 || day === 6;
  }
  
  export function getCurrentMealPeriod(
    locationId: string,
    now: Date
  ): { isOpen: boolean; currentMeal: string | null; closesAt: string | null; opensAt: string | null } {
    const hours = HOURS[locationId];
    if (!hours) return { isOpen: false, currentMeal: null, closesAt: null, opensAt: null };
    
    const dayType = isWeekend(now) ? "weekend" : "weekday";
    const schedule = hours[dayType];
    const currentTime = formatTime24(now);
    
    // Find current meal period
    for (const meal of schedule) {
      if (currentTime >= meal.open && currentTime < meal.close) {
        return {
          isOpen: true,
          currentMeal: meal.period,
          closesAt: meal.close,
          opensAt: null,
        };
      }
    }
    
    // Find next opening time
    // ...
    
    return { isOpen: false, currentMeal: null, closesAt: null, opensAt: null };
  }
  
  function formatTime24(date: Date): string {
    return date.toTimeString().slice(0, 5);
  }
  
  export function formatTimeDisplay(time24: string): string {
    // Convert "14:30" to "2:30 PM"
  }
  ```

---

## Phase 4: API Routes

### 4.1 Health Check Endpoint
- [ ] Create `app/routes/api.health.tsx`:
  ```typescript
  import type { LoaderFunctionArgs } from "react-router";
  
  export async function loader({ context }: LoaderFunctionArgs) {
    return Response.json({ status: "ok", timestamp: new Date().toISOString() });
  }
  ```

### 4.2 Analytics Endpoint
- [ ] Create `app/routes/api.analytics.tsx`:
  ```typescript
  import type { ActionFunctionArgs } from "react-router";
  import { getDb, insertAnalyticsEvent } from "~/lib/db/queries";
  
  export async function action({ request, context }: ActionFunctionArgs) {
    if (request.method !== "POST") {
      return Response.json({ error: "Method not allowed" }, { status: 405 });
    }
    
    const body = await request.json();
    const { eventType, locationId, sessionId, metadata } = body;
    
    if (!eventType || !sessionId) {
      return Response.json({ error: "Missing required fields" }, { status: 400 });
    }
    
    const db = getDb(context.cloudflare.env.DB);
    await insertAnalyticsEvent(db, { eventType, locationId, sessionId, metadata });
    
    return Response.json({ success: true }, { status: 201 });
  }
  ```

---

## Phase 5: Core UI Components

### 5.1 Install shadcn/ui Primitives
- [ ] Initialize shadcn/ui: `npx shadcn@latest init`
- [ ] Select Tailwind CSS v4, default style
- [ ] Install required components:
  ```bash
  npx shadcn@latest add button badge card skeleton
  ```

### 5.2 Hall Card Component
- [ ] Create `app/components/hall-card.tsx`:
  - Display hall name, location
  - Show status badge (Open/Closed)
  - Show current meal period if open
  - Show "Closes at X" or "Opens at X"
  - Favorite star button (client-side toggle)
  - Click handler to open drawer
  - Minimum 44px touch target

### 5.3 Menu Drawer Component
- [ ] Create `app/components/menu-drawer.tsx`:
  - Use `Drawer` from `vaul`
  - Accept `locationId` prop
  - Pull menu data from loader (passed via context or pre-loaded)
  - URL-driven open state via `nuqs`:
    ```typescript
    import { useQueryState } from "nuqs";
    
    const [hall, setHall] = useQueryState("hall");
    const isOpen = hall === locationId;
    ```
  - Handle drawer close by setting `hall` to `null`

### 5.4 Station Group Component
- [ ] Create `app/components/station-group.tsx`:
  - Group menu items by `station`
  - Display station name as header
  - Render list of menu items
  - Collapsible (optional for MVP)

### 5.5 Menu Item Component
- [ ] Create `app/components/menu-item.tsx`:
  - Display item name
  - Show dietary badges (V, VG, GF)
  - Use `lucide-react` icons for badges

### 5.6 Dietary Filter Pills
- [ ] Create `app/components/menu-filters.tsx`:
  - Horizontal scroll container with filter pills
  - Filters: "Vegan", "Vegetarian", "Gluten-Free"
  - Client-side filtering (no server round-trip)
  - Active state styling

---

## Phase 6: Home Route & Loader

### 6.1 Home Route Loader
- [ ] Update `app/routes/_index.tsx` loader:
  ```typescript
  import type { LoaderFunctionArgs } from "react-router";
  import { getDb, getAllLocations } from "~/lib/db/queries";
  import { getCurrentMealPeriod } from "~/lib/hours";
  
  export async function loader({ context }: LoaderFunctionArgs) {
    const db = getDb(context.cloudflare.env.DB);
    const locations = await getAllLocations(db);
    
    const now = new Date();
    const locationsWithStatus = locations.map((loc) => ({
      ...loc,
      ...getCurrentMealPeriod(loc.id, now),
    }));
    
    return Response.json(
      { locations: locationsWithStatus },
      {
        headers: {
          "Cache-Control": "public, max-age=60, stale-while-revalidate=300",
        },
      }
    );
  }
  ```

### 6.2 Home Route Component
- [ ] Update `app/routes/_index.tsx` component:
  ```typescript
  import { useLoaderData } from "react-router";
  import { NuqsAdapter } from "nuqs/adapters/react-router/v7";
  import { HallCard } from "~/components/hall-card";
  import { MenuDrawer } from "~/components/menu-drawer";
  
  export default function Home() {
    const { locations } = useLoaderData<typeof loader>();
    
    return (
      <NuqsAdapter>
        <main className="min-h-screen bg-background">
          <header className="sticky top-0 z-10 bg-background/80 backdrop-blur">
            <h1>Dining at Storrs</h1>
          </header>
          
          <section className="grid gap-4 p-4">
            {locations.map((location) => (
              <HallCard key={location.id} location={location} />
            ))}
          </section>
          
          <MenuDrawer />
        </main>
      </NuqsAdapter>
    );
  }
  ```

### 6.3 Menu Data Loading Strategy
- [ ] Decide approach (choose one):
  - **Option A**: Pre-load all menus in home loader (acceptable if total payload <50KB)
  - **Option B**: Fetch menu when drawer opens via resource route
- [ ] If Option B, create `app/routes/api.menu.$locationId.tsx`:
  ```typescript
  export async function loader({ params, context }: LoaderFunctionArgs) {
    const { locationId } = params;
    const today = new Date().toISOString().split("T")[0];
    
    const db = getDb(context.cloudflare.env.DB);
    const menu = await getMenuByLocationAndDate(db, locationId, today, currentMealPeriod);
    
    return Response.json({ menu });
  }
  ```

---

## Phase 7: Client-Side Features

### 7.1 Favorites Hook
- [ ] Create `app/hooks/use-favorites.ts`:
  ```typescript
  import { useState, useEffect, useCallback } from "react";
  
  const STORAGE_KEY = "dining-favorites";
  
  export function useFavorites() {
    const [favorites, setFavorites] = useState<Set<string>>(new Set());
    
    useEffect(() => {
      const stored = localStorage.getItem(STORAGE_KEY);
      if (stored) {
        setFavorites(new Set(JSON.parse(stored)));
      }
    }, []);
    
    const toggleFavorite = useCallback((locationId: string) => {
      setFavorites((prev) => {
        const next = new Set(prev);
        if (next.has(locationId)) {
          next.delete(locationId);
        } else {
          next.add(locationId);
        }
        localStorage.setItem(STORAGE_KEY, JSON.stringify([...next]));
        return next;
      });
    }, []);
    
    const isFavorite = useCallback((locationId: string) => favorites.has(locationId), [favorites]);
    
    return { favorites, toggleFavorite, isFavorite };
  }
  ```

### 7.2 Session ID Hook
- [ ] Create `app/hooks/use-session-id.ts`:
  - Generate UUID on first visit
  - Store in sessionStorage
  - Used for analytics

### 7.3 Menu Filtering Logic
- [ ] Create `app/hooks/use-menu-filter.ts`:
  ```typescript
  import { useState, useMemo } from "react";
  import type { MenuItem } from "~/lib/db/types";
  
  export type DietaryFilter = "vegan" | "vegetarian" | "gluten_free";
  
  export function useMenuFilter(items: MenuItem[]) {
    const [activeFilters, setActiveFilters] = useState<Set<DietaryFilter>>(new Set());
    
    const filteredItems = useMemo(() => {
      if (activeFilters.size === 0) return items;
      
      return items.filter((item) => {
        if (activeFilters.has("vegan") && !item.isVegan) return false;
        if (activeFilters.has("vegetarian") && !item.isVegetarian) return false;
        if (activeFilters.has("gluten_free") && !item.isGlutenFree) return false;
        return true;
      });
    }, [items, activeFilters]);
    
    const toggleFilter = (filter: DietaryFilter) => {
      setActiveFilters((prev) => {
        const next = new Set(prev);
        if (next.has(filter)) {
          next.delete(filter);
        } else {
          next.add(filter);
        }
        return next;
      });
    };
    
    return { filteredItems, activeFilters, toggleFilter };
  }
  ```

### 7.4 Analytics Hook
- [ ] Create `app/hooks/use-analytics.ts`:
  - `trackEvent(eventType, metadata)` function
  - Batches events or sends immediately
  - Uses sessionId from `use-session-id`

---

## Phase 8: Styling & Polish

### 8.1 Global Styles
- [ ] Update `app/styles/globals.css`:
  - Define CSS custom properties for colors
  - Set base typography (high contrast for outdoor readability)
  - Define status colors (open: green, closed: red/gray)

### 8.2 Responsive Layout
- [ ] Mobile-first grid (1 column)
- [ ] Tablet: 2 column grid
- [ ] Desktop: 3 column grid (max-width container)

### 8.3 Drawer Styling
- [ ] Style Vaul drawer with:
  - Rounded top corners
  - Subtle shadow
  - Drag handle indicator
  - Smooth spring animation

### 8.4 Loading States
- [ ] Add skeleton loading for hall cards
- [ ] Add skeleton loading for menu items in drawer
- [ ] Use `Skeleton` component from shadcn/ui

### 8.5 Empty States
- [ ] "No menu available" state for drawer
- [ ] "All halls closed" state (late night)

---

## Phase 9: Scraper Interface

### 9.1 Scraper Output Schema
- [ ] Create `scraper/schema.json` documenting expected output:
  ```json
  {
    "scraped_at": "2024-11-27T02:00:00Z",
    "menus": [
      {
        "location_id": "south",
        "date": "2024-11-27",
        "meal_period": "lunch",
        "items": [
          {
            "name": "Grilled Chicken",
            "station": "Grill",
            "station_order": 1,
            "is_vegan": false,
            "is_vegetarian": false,
            "is_gluten_free": true
          }
        ]
      }
    ]
  }
  ```

### 9.2 Scraper Stub
- [ ] Create `scraper/scrape.py`:
  ```python
  """
  UConn Dining Menu Scraper
  Target: nutritionanalysis.dds.uconn.edu (FoodPro)
  
  Output: JSON file matching schema.json
  
  TODO: Implement scraping logic
  """
  
  import json
  from datetime import datetime
  from pathlib import Path
  
  def main():
      # Placeholder - implement scraping logic
      output = {
          "scraped_at": datetime.utcnow().isoformat() + "Z",
          "menus": []
      }
      
      output_path = Path(__file__).parent / "output" / "menus.json"
      output_path.parent.mkdir(exist_ok=True)
      
      with open(output_path, "w") as f:
          json.dump(output, f, indent=2)
      
      print(f"Output written to {output_path}")
  
  if __name__ == "__main__":
      main()
  ```
- [ ] Create `scraper/requirements.txt`:
  ```
  beautifulsoup4>=4.12.0
  httpx>=0.25.0
  lxml>=4.9.0
  ```

### 9.3 Seeder Script
- [ ] Create `scripts/seed.ts`:
  ```typescript
  /**
   * Seeds D1 database from scraper JSON output
   * Run with: npx tsx scripts/seed.ts
   */
  
  import { readFileSync } from "fs";
  import { execSync } from "child_process";
  
  interface ScraperOutput {
    scraped_at: string;
    menus: ScrapedMenu[];
  }
  
  interface ScrapedMenu {
    location_id: string;
    date: string;
    meal_period: string;
    items: ScrapedItem[];
  }
  
  interface ScrapedItem {
    name: string;
    station: string;
    station_order: number;
    is_vegan: boolean;
    is_vegetarian: boolean;
    is_gluten_free: boolean;
  }
  
  function main() {
    const data: ScraperOutput = JSON.parse(
      readFileSync("scraper/output/menus.json", "utf-8")
    );
    
    // Generate SQL statements
    const statements: string[] = [];
    
    for (const menu of data.menus) {
      // Insert menu
      statements.push(`
        INSERT INTO menus (location_id, date, meal_period)
        VALUES ('${menu.location_id}', '${menu.date}', '${menu.meal_period}')
        ON CONFLICT (location_id, date, meal_period) DO UPDATE SET location_id = location_id
        RETURNING id;
      `);
      
      // Insert items (need menu_id from above)
      // ...
    }
    
    // Write to SQL file
    // Execute with wrangler
  }
  
  main();
  ```

### 9.4 Seed Locations Data
- [ ] Create `scripts/seed-locations.sql`:
  ```sql
  INSERT INTO locations (id, name, slug, location_name, has_late_night) VALUES
    ('south', 'South', 'south', 'South Campus Marketplace', 0),
    ('northwest', 'Northwest', 'northwest', 'Northwest Dining Hall', 1),
    ('putnam', 'Putnam', 'putnam', 'Putnam Refectory', 0),
    ('whitney', 'Whitney', 'whitney', 'Whitney Dining Hall', 0),
    ('mcmahon', 'McMahon', 'mcmahon', 'McMahon Dining Hall', 0),
    ('north', 'North', 'north', 'North Campus Dining Hall', 0),
    ('towers', 'Towers', 'towers', 'Towers Dining Hall', 0),
    ('connecticut', 'Connecticut', 'connecticut', 'Connecticut Dining Hall', 0)
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name;
  ```
- [ ] Add npm script: `"db:seed-locations": "wrangler d1 execute dining-db --file=scripts/seed-locations.sql"`

---

## Phase 10: GitHub Actions

### 10.1 CI Workflow
- [ ] Create `.github/workflows/ci.yml`:
  ```yaml
  name: CI
  
  on:
    push:
      branches: [main]
    pull_request:
      branches: [main]
  
  jobs:
    lint-and-typecheck:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v4
        - uses: actions/setup-node@v4
          with:
            node-version: 20
            cache: npm
        - run: npm ci
        - run: npm run lint
        - run: npm run typecheck
  
    build:
      runs-on: ubuntu-latest
      needs: lint-and-typecheck
      steps:
        - uses: actions/checkout@v4
        - uses: actions/setup-node@v4
          with:
            node-version: 20
            cache: npm
        - run: npm ci
        - run: npm run build
  ```

### 10.2 Deploy Workflow
- [ ] Create `.github/workflows/deploy.yml`:
  ```yaml
  name: Deploy
  
  on:
    push:
      branches: [main]
  
  jobs:
    deploy:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v4
        - uses: actions/setup-node@v4
          with:
            node-version: 20
            cache: npm
        - run: npm ci
        - run: npm run build
        - uses: cloudflare/wrangler-action@v3
          with:
            apiToken: ${{ secrets.CLOUDFLARE_API_TOKEN }}
            command: deploy
  ```

### 10.3 Scraper Workflow (Stub)
- [ ] Create `.github/workflows/scrape.yml`:
  ```yaml
  name: Scrape Menus
  
  on:
    schedule:
      - cron: "0 7 * * *"  # 2 AM EST (7 AM UTC)
    workflow_dispatch:
  
  jobs:
    scrape:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v4
        - uses: actions/setup-python@v5
          with:
            python-version: "3.11"
        - run: pip install -r scraper/requirements.txt
        - run: python scraper/scrape.py
        
        # TODO: Run seeder to update D1
        # - uses: actions/setup-node@v4
        # - run: npm ci
        # - run: npx tsx scripts/seed.ts
        # - uses: cloudflare/wrangler-action@v3
        #   with:
        #     apiToken: ${{ secrets.CLOUDFLARE_API_TOKEN }}
        #     command: d1 execute dining-db --file=scripts/seed.sql
  ```

---

## Phase 11: Testing & Quality

### 11.1 ESLint Configuration
- [ ] Update `eslint.config.js`:
  - Add React hooks rules
  - Add accessibility rules
  - Set max-lines rule to 300

### 11.2 Add Typecheck Script
- [ ] Add to `package.json`:
  ```json
  {
    "scripts": {
      "typecheck": "tsc --noEmit"
    }
  }
  ```

### 11.3 Manual Testing Checklist
- [ ] Test hall card display (open/closed states)
- [ ] Test drawer open via tap
- [ ] Test drawer close via swipe down
- [ ] Test drawer close via back button
- [ ] Test dietary filters
- [ ] Test favorites toggle
- [ ] Test on mobile viewport (Chrome DevTools)
- [ ] Test on actual mobile device

---

## Phase 12: Final Polish & Launch

### 12.1 Meta Tags & SEO
- [ ] Add meta tags in root layout:
  - `<title>Dining at Storrs | UConn Dining Hall Menus</title>`
  - Open Graph tags
  - `viewport` meta tag for mobile
  - `theme-color` meta tag

### 12.2 PWA Setup (Optional)
- [ ] Add `manifest.json`
- [ ] Add service worker for offline caching
- [ ] Add app icons (192x192, 512x512)

### 12.3 Error Boundaries
- [ ] Add error boundary in root layout
- [ ] Create user-friendly error page

### 12.4 Production Checklist
- [ ] Remove all `console.log` statements
- [ ] Verify environment variables are set in Cloudflare
- [ ] Test production build locally: `npm run build && npm run preview`
- [ ] Deploy: `npm run deploy`
- [ ] Verify production site works
- [ ] Run Lighthouse audit (target: 90+ performance)

---

## Future Tasks (Post-MVP)

### Backlog
- [ ] Google Popular Times integration for occupancy
- [ ] Admin panel for hours overrides
- [ ] Push notifications
- [ ] User accounts with synced favorites
- [ ] Nutritional information
- [ ] Native mobile apps

---

## Appendix: Quick Reference

### Essential Commands
```bash
npm run dev           # Start dev server
npm run build         # Production build
npm run deploy        # Deploy to Cloudflare
npm run db:generate   # Generate migrations
npm run db:migrate    # Apply migrations
npm run db:studio     # Open Drizzle Studio
```

### Key Files
| File | Purpose |
|------|---------|
| `wrangler.toml` | Cloudflare config |
| `app/lib/db/schema.ts` | Database schema |
| `app/config/hours.ts` | Hours configuration |
| `app/routes/_index.tsx` | Home page |
| `app/components/menu-drawer.tsx` | Main drawer |

### Dining Hall IDs
| ID | Name |
|----|------|
| `south` | South |
| `northwest` | Northwest |
| `putnam` | Putnam |
| `whitney` | Whitney |
| `mcmahon` | McMahon |
| `north` | North |
| `towers` | Towers |
| `connecticut` | Connecticut |