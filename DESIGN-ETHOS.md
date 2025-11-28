# DESIGN-ETHOS.md — Dining at Storrs Design System

This document defines the visual language, design tokens, component patterns, and UX principles for the Dining at Storrs application. Reference this when implementing any task from TASKS.md.

---

## 1. Design Philosophy

### 1.1 Core Principles

| Principle | Meaning | Implementation |
|-----------|---------|----------------|
| **Mobile-First** | Design for 375px width, enhance upward | Start with single column, expand to grid |
| **Glanceable** | Answer "where to eat?" in 2 seconds | Status badges visible without scrolling |
| **High Contrast** | Readable in direct sunlight | 4.5:1 minimum contrast ratio |
| **Native Feel** | Feels like iOS/Android app | Vaul drawer physics, smooth transitions |
| **Touch-Friendly** | Designed for thumbs | 44px minimum touch targets |

### 1.2 Visual Identity

The app uses a **warm, refined aesthetic** that balances UConn's brand blue with cream/warm tones to feel welcoming—like a nice restaurant menu rather than a utilitarian campus app.

**Tone:** Sophisticated yet approachable. Think "farm-to-table restaurant menu" not "cafeteria schedule."

---

## 2. Design Tokens

### 2.1 Color Palette

```css
/* app/styles/tokens.css */

:root {
  /* === BRAND === */
  --color-brand-primary: 30 64 175;        /* #1E40AF - UConn Blue */
  --color-brand-primary-light: 130 177 255; /* Light accent */
  --color-brand-accent: 251 191 36;        /* Amber - favorites */

  /* === BACKGROUNDS === */
  --color-bg-primary: 247 247 244;         /* #F7F7F4 - Warm cream */
  --color-bg-secondary: 255 255 255;       /* White - cards */
  --color-bg-tertiary: 249 250 251;        /* Gray-50 - subtle sections */

  /* === TEXT === */
  --color-text-primary: 17 24 39;          /* Gray-900 - headings */
  --color-text-secondary: 107 114 128;     /* Gray-500 - body */
  --color-text-tertiary: 156 163 175;      /* Gray-400 - captions */
  --color-text-inverse: 255 255 255;       /* White on dark */

  /* === STATUS === */
  --color-status-open: 22 163 74;          /* Green-600 */
  --color-status-open-bg: 240 253 244;     /* Green-50 */
  --color-status-closed: 107 114 128;      /* Gray-500 */
  --color-status-closed-bg: 243 244 246;   /* Gray-100 */
  --color-status-warning: 217 119 6;       /* Amber-600 - closing soon */
  --color-status-warning-bg: 254 243 199;  /* Amber-100 */

  /* === DIETARY BADGES === */
  --color-dietary-vegan: 4 120 87;         /* Emerald-700 */
  --color-dietary-vegan-bg: 236 253 245;   /* Emerald-50 */
  --color-dietary-vegetarian: 5 150 105;   /* Emerald-600 */
  --color-dietary-vegetarian-bg: 236 253 245;
  --color-dietary-gf: 147 51 234;          /* Purple-600 */
  --color-dietary-gf-bg: 250 245 255;      /* Purple-50 */

  /* === INTERACTIVE === */
  --color-interactive-hover: 243 244 246;  /* Gray-100 */
  --color-interactive-focus: 30 64 175;    /* Brand blue ring */
  --color-interactive-active: 29 78 216;   /* Blue-700 pressed */

  /* === BORDERS === */
  --color-border-primary: 229 231 235;     /* Gray-200 */
  --color-border-secondary: 243 244 246;   /* Gray-100 */
  --color-border-favorite: 252 211 77;     /* Amber-300 */

  /* === OVERLAY === */
  --color-overlay: 0 0 0 / 0.6;
}

/* === DARK MODE === */
.dark {
  --color-bg-primary: 20 18 11;            /* Espresso */
  --color-bg-secondary: 31 29 22;          /* Dark card */
  --color-bg-tertiary: 17 24 39;           /* Gray-900 */

  --color-text-primary: 243 244 246;       /* Gray-100 */
  --color-text-secondary: 156 163 175;     /* Gray-400 */
  --color-text-tertiary: 107 114 128;      /* Gray-500 */

  --color-status-open-bg: 5 46 22 / 0.3;   /* Green-900/30 */
  --color-status-closed-bg: 31 41 55;      /* Gray-800 */

  --color-border-primary: 55 65 81;        /* Gray-700 */
  --color-border-secondary: 31 41 55;      /* Gray-800 */
}
```

### 2.2 Typography

```css
:root {
  /* === FONT FAMILIES === */
  --font-display: 'Libre Baskerville', Georgia, serif;  /* Headings */
  --font-body: 'Montserrat', system-ui, sans-serif;     /* Body text */
  --font-accent: 'Great Vibes', cursive;                /* Decorative (sparingly) */

  /* === FONT SIZES === */
  --text-xs: 0.75rem;      /* 12px - badges, captions */
  --text-sm: 0.875rem;     /* 14px - secondary text */
  --text-base: 1rem;       /* 16px - body */
  --text-lg: 1.125rem;     /* 18px - emphasis */
  --text-xl: 1.25rem;      /* 20px - card titles */
  --text-2xl: 1.5rem;      /* 24px - section headers */
  --text-3xl: 1.875rem;    /* 30px - page titles */

  /* === FONT WEIGHTS === */
  --font-normal: 400;
  --font-medium: 500;
  --font-semibold: 600;
  --font-bold: 700;

  /* === LINE HEIGHTS === */
  --leading-tight: 1.25;   /* Headings */
  --leading-normal: 1.5;   /* Body */
  --leading-relaxed: 1.625; /* Long-form */
}
```

**Typography Rules:**
- **Headings:** Use `--font-display` (Libre Baskerville) for hall names, page titles
- **Body:** Use `--font-body` (Montserrat) for everything else
- **Accent:** Use `--font-accent` sparingly (e.g., hero tagline only)
- **Never** use system fonts or Inter — they feel generic

### 2.3 Spacing Scale

```css
:root {
  --space-1: 0.25rem;   /* 4px */
  --space-2: 0.5rem;    /* 8px */
  --space-3: 0.75rem;   /* 12px */
  --space-4: 1rem;      /* 16px */
  --space-5: 1.25rem;   /* 20px */
  --space-6: 1.5rem;    /* 24px */
  --space-8: 2rem;      /* 32px */
  --space-10: 2.5rem;   /* 40px */
  --space-12: 3rem;     /* 48px */
}
```

**Spacing Rules:**
- Card padding: `--space-4` (mobile), `--space-5` (tablet+)
- Grid gap: `--space-4`
- Section margin: `--space-8` or `--space-10`

### 2.4 Shadows

```css
:root {
  --shadow-sm: 0 1px 2px 0 rgb(0 0 0 / 0.05);
  --shadow-md: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
  --shadow-lg: 0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1);
  --shadow-xl: 0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1);

  /* Semantic */
  --shadow-card: var(--shadow-sm);
  --shadow-card-hover: var(--shadow-lg);
  --shadow-drawer: var(--shadow-xl);
}

.dark {
  --shadow-card: none;
  --shadow-card-hover: 0 0 0 1px rgb(255 255 255 / 0.1);
}
```

### 2.5 Animation Tokens

```css
:root {
  /* Durations */
  --duration-fast: 150ms;
  --duration-normal: 300ms;
  --duration-slow: 500ms;

  /* Easings */
  --ease-out: cubic-bezier(0, 0, 0.2, 1);
  --ease-in-out: cubic-bezier(0.4, 0, 0.2, 1);
  --ease-bounce: cubic-bezier(0.68, -0.55, 0.265, 1.55);

  /* Semantic */
  --transition-fast: var(--duration-fast) var(--ease-out);
  --transition-normal: var(--duration-normal) var(--ease-out);
}
```

---

## 3. Component Design Patterns

### 3.1 Hall Card

The hall card is the primary UI element. It must communicate status at a glance.

```
┌─────────────────────────────────────────────┐
│ ★ (if favorite)                             │
├─────────────────────────────────────────────┤
│                                             │
│  South                          ☆ (toggle)  │
│  South Campus Marketplace                   │
│                                             │
│  ┌──────────┐                               │
│  │ ● Open   │  Serving Lunch                │
│  └──────────┘  Closes at 2:30 PM            │
│                                             │
│  [Halal]  [Late Night]                      │
│                                             │
│                        View Menu →          │
└─────────────────────────────────────────────┘
```

**Design Specifications:**
- Border radius: `1rem` (16px)
- Padding: `1rem` mobile, `1.25rem` tablet+
- Background: `--color-bg-secondary` (white)
- Shadow: `--shadow-card`, elevates to `--shadow-card-hover` on hover
- Favorite border: 2px `--color-border-favorite` when favorited
- Hall name: `--font-display`, `--text-xl`, `--font-bold`
- Location: `--font-body`, `--text-sm`, `--color-text-secondary`
- Touch target: Entire card is clickable (min 44px height achieved)

**Status Badge States:**
| State | Background | Text | Icon |
|-------|------------|------|------|
| Open | `--color-status-open-bg` | `--color-status-open` | Filled circle |
| Closed | `--color-status-closed-bg` | `--color-status-closed` | Empty circle |
| Closing Soon | `--color-status-warning-bg` | `--color-status-warning` | Clock icon |

### 3.2 Menu Drawer (Vaul)

The drawer is the heart of the "app feel." It must have native-like physics.

```
┌─────────────────────────────────────────────┐
│                 ═══════                     │  ← Drag handle
├─────────────────────────────────────────────┤
│  South                              ✕       │
│  Lunch • Open until 2:30 PM                 │
├─────────────────────────────────────────────┤
│  ┌────────┐ ┌────────┐ ┌────────┐          │
│  │ Vegan  │ │ Veg    │ │  GF    │          │  ← Filter pills
│  └────────┘ └────────┘ └────────┘          │
├─────────────────────────────────────────────┤
│                                             │
│  GRILL                                      │
│  ────────────────────────────               │
│  Awesome Burger                    (V)      │
│  Grilled Chicken                   (GF)     │
│  Black Bean Burger                 (VG)(V)  │
│                                             │
│  PIZZA                                      │
│  ────────────────────────────               │
│  Cheese Pizza                      (V)      │
│  Pepperoni Pizza                            │
│                                             │
└─────────────────────────────────────────────┘
```

**Design Specifications:**
- Corner radius: `1.5rem` top corners only
- Handle: 48px wide, 4px tall, centered, `--color-border-primary`
- Header padding: `--space-4` horizontal, `--space-3` vertical
- Content area: scrollable, max-height 85vh
- Snap points: 0.5 (half), 0.9 (full)
- Dismiss: Drag down below 0.25 threshold

**Filter Pills:**
- Shape: Pill (`border-radius: 9999px`)
- Height: 36px
- Padding: `--space-2` horizontal
- Inactive: `--color-bg-tertiary`, `--color-text-secondary`
- Active: `--color-brand-primary`, `--color-text-inverse`
- Transition: `--transition-fast`

### 3.3 Menu Item

```
┌─────────────────────────────────────────────┐
│  Awesome Burger                    (V)(GF)  │
└─────────────────────────────────────────────┘
```

**Design Specifications:**
- Padding: `--space-3` vertical
- Border bottom: 1px `--color-border-secondary` (except last)
- Item name: `--font-body`, `--text-base`, `--color-text-primary`
- Dietary badges: Inline, 4px gap
- Badge size: 20px circles with 10px text

**Dietary Badge Colors:**
| Badge | Background | Text |
|-------|------------|------|
| V (Vegan) | `--color-dietary-vegan-bg` | `--color-dietary-vegan` |
| VG (Vegetarian) | `--color-dietary-vegetarian-bg` | `--color-dietary-vegetarian` |
| GF (Gluten-Free) | `--color-dietary-gf-bg` | `--color-dietary-gf` |

### 3.4 Station Header

```
  GRILL
  ────────────────────────────
```

**Design Specifications:**
- Text: `--font-body`, `--text-sm`, `--font-semibold`
- Color: `--color-text-tertiary`
- Letter spacing: `0.05em` (tracked out)
- Transform: `uppercase`
- Margin top: `--space-6` (except first)
- Margin bottom: `--space-2`
- Underline: 1px `--color-border-secondary`

---

## 4. Layout System

### 4.1 Responsive Breakpoints

```css
/* Tailwind v4 approach */
--breakpoint-sm: 640px;   /* Large phones landscape */
--breakpoint-md: 768px;   /* Tablets */
--breakpoint-lg: 1024px;  /* Desktops */
```

### 4.2 Grid Layout

```css
/* Hall card grid */
.hall-grid {
  display: grid;
  gap: var(--space-4);
  grid-template-columns: 1fr;                    /* Mobile: 1 col */
}

@media (min-width: 640px) {
  .hall-grid {
    grid-template-columns: repeat(2, 1fr);       /* Tablet: 2 cols */
  }
}

@media (min-width: 1024px) {
  .hall-grid {
    grid-template-columns: repeat(3, 1fr);       /* Desktop: 3 cols */
    max-width: 1200px;
    margin: 0 auto;
  }
}
```

### 4.3 Page Container

```css
.page-container {
  width: 100%;
  max-width: 1280px;
  margin: 0 auto;
  padding: var(--space-4);
}

@media (min-width: 768px) {
  .page-container {
    padding: var(--space-6);
  }
}
```

---

## 5. Interaction Patterns

### 5.1 Drawer URL Sync (Critical)

The drawer's open/close state **must** be driven by URL for back-button support.

```typescript
// Using nuqs
import { useQueryState } from 'nuqs';

function useDrawerState() {
  const [hall, setHall] = useQueryState('hall');
  
  const openDrawer = (locationId: string) => setHall(locationId);
  const closeDrawer = () => setHall(null);
  const isOpen = hall !== null;
  
  return { hall, isOpen, openDrawer, closeDrawer };
}
```

**User Flow:**
1. User taps hall card
2. URL changes to `/?hall=south`
3. Drawer opens with menu for "south"
4. User presses back button
5. URL changes to `/`
6. Drawer closes

### 5.2 Favorite Toggle

```typescript
// Click handler on star icon
const handleFavoriteClick = (e: React.MouseEvent) => {
  e.stopPropagation(); // Prevent card click
  toggleFavorite(location.id);
};
```

**Animation:**
- Scale to 1.2x on click
- Return to 1x with bounce easing
- Fill color transitions from empty to `--color-brand-accent`

### 5.3 Filter Behavior

Filters are **client-side only** for instant feedback:

```typescript
const filteredItems = useMemo(() => {
  if (activeFilters.size === 0) return items;
  
  return items.filter(item => {
    if (activeFilters.has('vegan') && !item.isVegan) return false;
    if (activeFilters.has('vegetarian') && !item.isVegetarian) return false;
    if (activeFilters.has('gluten_free') && !item.isGlutenFree) return false;
    return true;
  });
}, [items, activeFilters]);
```

**UX:**
- No loading state (instant filter)
- Show "No items match filters" empty state
- Filters persist within drawer session, reset on close

---

## 6. Accessibility Requirements

### 6.1 WCAG 2.1 AA Checklist

| Criterion | Implementation |
|-----------|----------------|
| **1.4.3 Contrast** | All text meets 4.5:1 ratio |
| **1.4.11 Non-text Contrast** | UI elements meet 3:1 ratio |
| **2.1.1 Keyboard** | All interactions via Tab/Enter/Escape |
| **2.1.2 No Trap** | Drawer has close button + Escape |
| **2.4.7 Focus Visible** | 2px brand-blue focus ring |
| **4.1.2 Name/Role/Value** | ARIA labels on all controls |

### 6.2 Focus Management

```typescript
// Drawer focus trap
const drawerRef = useFocusTrap<HTMLDivElement>(isOpen);

// On open: Focus first focusable element
// On close: Return focus to trigger (hall card)
```

### 6.3 Screen Reader Announcements

```tsx
// Status badge
<Badge aria-label={`${location.name} is ${isOpen ? 'open' : 'closed'}`}>
  {isOpen ? 'Open' : 'Closed'}
</Badge>

// Drawer
<Drawer.Content
  role="dialog"
  aria-modal="true"
  aria-labelledby="drawer-title"
>
  <h2 id="drawer-title">{location.name} Menu</h2>
</Drawer.Content>
```

### 6.4 Touch Targets

All interactive elements must be at least 44×44px:

```css
.touchable {
  min-height: 44px;
  min-width: 44px;
  /* Use padding to achieve size, not fixed dimensions */
}
```

---

## 7. Loading & Empty States

### 7.1 Skeleton Loading

Use animated skeletons that match component shapes:

```tsx
// Hall card skeleton
function HallCardSkeleton() {
  return (
    <div className="rounded-2xl bg-bg-secondary p-4 animate-pulse">
      <div className="h-6 w-24 bg-gray-200 rounded mb-2" />
      <div className="h-4 w-40 bg-gray-200 rounded mb-4" />
      <div className="h-8 w-20 bg-gray-200 rounded-full" />
    </div>
  );
}
```

**Skeleton Animation:**
```css
@keyframes pulse {
  0%, 100% { opacity: 1; }
  50% { opacity: 0.5; }
}

.animate-pulse {
  animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
}
```

### 7.2 Empty States

**All Halls Closed:**
```
┌─────────────────────────────────────────────┐
│                                             │
│                    🌙                       │
│                                             │
│          All dining halls are closed        │
│                                             │
│     They'll open again for breakfast        │
│              around 7:00 AM                 │
│                                             │
└─────────────────────────────────────────────┘
```

**No Filter Results:**
```
┌─────────────────────────────────────────────┐
│                                             │
│                    🥗                       │
│                                             │
│        No items match your filters          │
│                                             │
│     Try removing some dietary filters       │
│                                             │
│           [ Clear Filters ]                 │
│                                             │
└─────────────────────────────────────────────┘
```

---

## 8. Performance Budgets

### 8.1 Core Web Vitals Targets

| Metric | Target | Limit |
|--------|--------|-------|
| **LCP** | < 1.5s | < 2.5s |
| **FID** | < 50ms | < 100ms |
| **CLS** | < 0.05 | < 0.1 |
| **TTI** | < 2.0s | < 3.5s |

### 8.2 Bundle Budgets

| Chunk | Target | Limit |
|-------|--------|-------|
| Initial JS | < 50KB | < 80KB |
| Total JS (gzip) | < 120KB | < 180KB |
| Total CSS (gzip) | < 15KB | < 25KB |

### 8.3 Optimization Strategies

1. **No client-side data fetching** — All data in loaders
2. **Font subsetting** — Only load needed characters
3. **Component lazy loading** — Drawer code-split
4. **Image optimization** — N/A for MVP (no images)

---

## 9. Task-to-Design Mapping

Reference this when implementing tasks from TASKS.md:

| Task | Design Reference |
|------|------------------|
| **5.2 Hall Card** | Section 3.1 Hall Card |
| **5.3 Menu Drawer** | Section 3.2 Menu Drawer |
| **5.4 Station Group** | Section 3.4 Station Header |
| **5.5 Menu Item** | Section 3.3 Menu Item |
| **5.6 Filter Pills** | Section 3.2 Filter Pills |
| **6.2 Home Route** | Section 4 Layout System |
| **7.1 Favorites Hook** | Section 5.2 Favorite Toggle |
| **7.3 Menu Filtering** | Section 5.3 Filter Behavior |
| **8.1 Global Styles** | Section 2 Design Tokens |
| **8.2 Responsive Layout** | Section 4.2 Grid Layout |
| **8.3 Drawer Styling** | Section 3.2 Menu Drawer |
| **8.4 Loading States** | Section 7.1 Skeleton Loading |
| **8.5 Empty States** | Section 7.2 Empty States |

---

## 10. Font Loading

### 10.1 Required Fonts

```html
<!-- In app/root.tsx <head> -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
  href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Libre+Baskerville:wght@400;700&family=Montserrat:wght@400;500;600&display=swap"
  rel="stylesheet"
/>
```

### 10.2 Font Application

```css
/* Base */
body {
  font-family: var(--font-body);
}

/* Headings */
h1, h2, h3, .hall-name {
  font-family: var(--font-display);
}

/* Accent (use sparingly) */
.hero-tagline {
  font-family: var(--font-accent);
}
```

---

## 11. Dark Mode Implementation

### 11.1 Theme Toggle

Dark mode is optional for MVP but tokens are defined. Implementation:

```typescript
// app/hooks/use-theme.ts
export function useTheme() {
  const [theme, setTheme] = useState<'light' | 'dark'>(() => {
    if (typeof window === 'undefined') return 'light';
    return localStorage.getItem('theme') as 'light' | 'dark' || 'light';
  });

  useEffect(() => {
    document.documentElement.classList.toggle('dark', theme === 'dark');
    localStorage.setItem('theme', theme);
  }, [theme]);

  return { theme, setTheme, toggle: () => setTheme(t => t === 'light' ? 'dark' : 'light') };
}
```

### 11.2 Dark Mode Priority

For MVP, light mode only. Dark mode can be added in Phase 2 since all tokens are defined.

---

## 12. Do's and Don'ts

### ✅ Do

- Use semantic HTML (`<article>`, `<nav>`, `<main>`)
- Apply `--font-display` to hall names
- Make entire card clickable, not just a button inside
- Use Vaul's built-in physics (don't override spring config)
- Test on actual mobile devices
- Ensure 4.5:1 contrast on all text

### ❌ Don't

- Use system fonts or Inter
- Create custom modals (use Vaul drawer)
- Fetch data in useEffect
- Use fixed heights that break text scaling
- Forget focus states on interactive elements
- Use pure black (#000) for text — use `--color-text-primary`

---

## Appendix: Tailwind v4 Config

```typescript
// tailwind.config.ts (Tailwind v4 CSS-first approach)
// Most tokens defined in CSS, minimal JS config needed

export default {
  darkMode: 'class',
  content: ['./app/**/*.{ts,tsx}'],
  theme: {
    extend: {
      fontFamily: {
        display: ['Libre Baskerville', 'Georgia', 'serif'],
        body: ['Montserrat', 'system-ui', 'sans-serif'],
        accent: ['Great Vibes', 'cursive'],
      },
      borderRadius: {
        '2xl': '1rem',
        '3xl': '1.5rem',
      },
    },
  },
};
```

---

*This document is the source of truth for all visual decisions. When in doubt, reference these specifications.*