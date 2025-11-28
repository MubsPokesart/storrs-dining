# Dining at Storrs

Mobile-first dining companion for UConn students. Answer "Where should I eat right now?" in under 2 seconds.

## Stack

| Layer | Technology |
|-------|------------|
| Framework | React Router v7 (Framework Mode) |
| Runtime | Cloudflare Workers (Edge) |
| Database | Cloudflare D1 (SQLite) via Drizzle ORM |
| Styling | Tailwind CSS v4 + shadcn/ui |
| Drawer | Vaul (required for all menu interactions) |
| URL State | nuqs (drives drawer open/close state) |
| Scraper | Python (BeautifulSoup4) on GitHub Actions |

## Architecture Rules

### Data Access
- **Server-first**: All data fetching in `loader` functions, never in `useEffect`
- **D1 Binding**: Access database via `context.cloudflare.env.DB`, not HTTP APIs
- **Cache**: Set `Cache-Control: public, max-age=3600, stale-while-revalidate=86400` on loaders

### Component Patterns
- Drawer state driven by URL: `/?hall=south` opens drawer, back button closes it
- Client-side filtering for menu items (dataset <100 items per meal)
- Touch targets minimum 44px height
- No Node.js APIs (`fs`, `net`) — Edge runtime only

### Hours Logic
- Hours defined in `app/config/hours.ts`, not database
- Compute `isOpen` and `currentMeal` in loader at request time
- Return pre-computed status to client

## Database Schema (D1/SQLite)

```sql
CREATE TABLE locations (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  location_name TEXT,
  latitude REAL,
  longitude REAL,
  has_late_night INTEGER DEFAULT 0,
  is_active INTEGER DEFAULT 1
);

CREATE TABLE menus (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  location_id TEXT NOT NULL REFERENCES locations(id),
  date TEXT NOT NULL,
  meal_period TEXT NOT NULL,
  UNIQUE(location_id, date, meal_period)
);

CREATE TABLE menu_items (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  menu_id INTEGER NOT NULL REFERENCES menus(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  station TEXT NOT NULL,
  station_order INTEGER DEFAULT 0,
  is_vegan INTEGER DEFAULT 0,
  is_vegetarian INTEGER DEFAULT 0,
  is_gluten_free INTEGER DEFAULT 0
);

CREATE TABLE analytics_events (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  event_type TEXT NOT NULL,
  location_id TEXT,
  session_id TEXT NOT NULL,
  metadata TEXT,
  created_at TEXT DEFAULT (datetime('now'))
);
```

## Project Structure

```
app/
├── routes/
│   ├── _index.tsx          # Home: hall list + drawer
│   ├── api.analytics.tsx   # POST /api/analytics
│   └── api.health.tsx      # GET /api/health
├── components/
│   ├── ui/                 # shadcn primitives
│   ├── hall-card.tsx
│   ├── menu-drawer.tsx
│   ├── menu-filters.tsx
│   ├── menu-item.tsx
│   └── station-group.tsx
├── lib/
│   ├── db/
│   │   ├── schema.ts       # Drizzle schema
│   │   └── queries.ts      # Query functions
│   ├── hours.ts            # Hours config + computation
│   └── utils.ts            # cn(), formatTime(), etc.
├── config/
│   └── hours.ts            # Static hours data
└── styles/
    └── globals.css
scraper/
├── scrape.py               # BeautifulSoup scraper
├── requirements.txt
└── output/                 # JSON output for seeding
scripts/
└── seed.ts                 # D1 seeder script
```

## Key Commands

```bash
npm run dev              # Local dev with Wrangler
npm run build            # Production build
npm run deploy           # Deploy to Cloudflare
npm run db:generate      # Generate Drizzle migrations
npm run db:migrate       # Apply migrations to D1
npm run db:seed          # Seed database from scraper output
npm run scrape           # Run Python scraper locally
```

## Coding Standards

- Max file length: 300 lines (refactor at 250)
- Max function length: 30 lines
- Use `cn()` for className merging (clsx + tailwind-merge)
- Barrel exports via `index.ts` in component folders
- TypeScript strict mode enabled

## Critical Constraints

1. **No client-side data fetching** — loaders only
2. **Vaul drawer is mandatory** — no custom modals
3. **URL drives drawer state** — enables back button navigation
4. **Scraper runs externally** — Workers can't scrape (CPU limits)
5. **Favorites are client-side** — localStorage only, no auth