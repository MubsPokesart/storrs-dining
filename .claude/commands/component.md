---
description: Create a new React component with TypeScript following design system specs
---

Create a new React component with the following specifications:

**Component Name:** {Provide component name in PascalCase}
**Purpose:** {Brief description of what this component does}
**Props:** {Description of expected props}

# Requirements

Follow these STRICT requirements from the project documentation:

## Code Quality
- TypeScript with explicit prop interfaces exported
- Use `cn()` utility from ~/lib/utils for className merging
- Max file length: 250 lines (refactor at 200)
- Max function length: 30 lines
- Export both the component and its prop interface

## Design System (DESIGN-ETHOS.md)
**Colors:**
- Use CSS variables: `bg-[rgb(var(--color-bg-primary))]`
- Never hardcode hex colors

**Typography:**
- Headings: `font-display` (Libre Baskerville)
- Body text: `font-body` (Montserrat)
- Text sizes: Use `text-xl`, `text-sm`, etc. from design tokens

**Spacing:**
- Use `--space-*` variables: `p-4`, `space-y-6`
- Mobile: `p-4` (1rem)
- Tablet+: `p-5` (1.25rem)

**Shadows:**
- Cards: `shadow-[var(--shadow-card)]`
- Hover: `hover:shadow-[var(--shadow-card-hover)]`

## Accessibility (WCAG 2.1 AA)
- Semantic HTML: Use `<article>`, `<button>`, `<nav>`, etc.
- ARIA labels on all interactive elements
- Touch targets: Minimum 44×44px
- 4.5:1 contrast ratio on all text
- Keyboard navigation support

## React Patterns
- No client-side data fetching (no useEffect for data)
- Use React Router hooks where appropriate
- Proper TypeScript generics for components

## Mobile-First
- Start with mobile layout (375px)
- Enhance for tablet (768px) and desktop (1024px)
- Test on: iPhone SE, iPhone 14 Pro, Pixel 7

# Template Structure

```typescript
// app/components/{kebab-case-name}.tsx

import type { ReactNode } from 'react';
import { cn } from '~/lib/utils';
// Import other dependencies as needed

export interface {ComponentName}Props {
  // Define all props with explicit types
  // Include JSDoc comments for complex props
  className?: string; // Always accept optional className
}

/**
 * {Brief component description}
 * 
 * @example
 * ```tsx
 * <{ComponentName} prop={value} />
 * ```
 */
export function {ComponentName}({
  // Destructure props
  className,
  ...props
}: {ComponentName}Props) {
  return (
    <div className={cn(
      // Base styles
      "relative",
      // Add component-specific styles
      className
    )}>
      {/* Component JSX */}
    </div>
  );
}
```

# Design Token Reference

Use these exact values from DESIGN-ETHOS.md:

**Colors:**
- Primary background: `bg-[rgb(var(--color-bg-primary))]` (#F7F7F4 cream)
- Secondary background: `bg-[rgb(var(--color-bg-secondary))]` (white)
- Primary text: `text-[rgb(var(--color-text-primary))]` (gray-900)
- Secondary text: `text-[rgb(var(--color-text-secondary))]` (gray-500)
- Brand primary: `bg-[rgb(var(--color-brand-primary))]` (UConn blue)
- Status open: `text-[rgb(var(--color-status-open))]` (green-600)
- Status closed: `text-[rgb(var(--color-status-closed))]` (gray-500)

**Typography:**
- Display font: `font-display` (hall names, headings)
- Body font: `font-body` (default text)
- Sizes: `text-xs`, `text-sm`, `text-base`, `text-lg`, `text-xl`, `text-2xl`
- Weights: `font-normal`, `font-medium`, `font-semibold`, `font-bold`

**Spacing:**
- Card padding: `p-4` (mobile), `md:p-5` (tablet+)
- Grid gap: `gap-4`
- Section margin: `my-8` or `my-10`

**Border Radius:**
- Cards: `rounded-2xl` (1rem)
- Drawer: `rounded-t-3xl` (1.5rem top corners)
- Buttons: `rounded-lg`

# Implementation Checklist

Before submitting the component, verify:

- [ ] TypeScript interface exported
- [ ] Uses design tokens (no hardcoded values)
- [ ] Semantic HTML used
- [ ] ARIA labels present
- [ ] Touch targets are 44×44px minimum
- [ ] Mobile-first responsive
- [ ] Uses cn() for className merging
- [ ] File is under 250 lines
- [ ] Functions are under 30 lines each
- [ ] No console.log statements
- [ ] Imports organized (React, third-party, local)

# Example: HallCard Component

```typescript
// app/components/hall-card.tsx

import { Star } from 'lucide-react';
import { cn } from '~/lib/utils';
import type { LocationWithStatus } from '~/lib/types';

export interface HallCardProps {
  location: LocationWithStatus;
  isFavorite: boolean;
  onFavoriteToggle: (locationId: string) => void;
  onCardClick: (locationId: string) => void;
  className?: string;
}

export function HallCard({
  location,
  isFavorite,
  onFavoriteToggle,
  onCardClick,
  className,
}: HallCardProps) {
  const { status } = location;

  return (
    <article
      className={cn(
        // Base styles
        "relative rounded-2xl bg-[rgb(var(--color-bg-secondary))]",
        "shadow-[var(--shadow-card)] transition-shadow duration-300",
        "hover:shadow-[var(--shadow-card-hover)]",
        // Padding
        "p-4 md:p-5",
        // Favorite border
        isFavorite && "ring-2 ring-[rgb(var(--color-border-favorite))]",
        // Clickable
        "cursor-pointer",
        className
      )}
      onClick={() => onCardClick(location.id)}
    >
      {/* Favorite Toggle */}
      <button
        aria-label={isFavorite ? `Remove ${location.name} from favorites` : `Add ${location.name} to favorites`}
        className="absolute top-4 right-4 p-2 rounded-full hover:bg-[rgb(var(--color-interactive-hover))] transition-colors"
        onClick={(e) => {
          e.stopPropagation();
          onFavoriteToggle(location.id);
        }}
      >
        <Star
          className={cn(
            "w-5 h-5",
            isFavorite
              ? "fill-[rgb(var(--color-brand-accent))] text-[rgb(var(--color-brand-accent))]"
              : "text-[rgb(var(--color-text-tertiary))]"
          )}
        />
      </button>

      {/* Hall Name */}
      <h2 className="font-display text-xl font-bold text-[rgb(var(--color-text-primary))] mb-1">
        {location.name}
      </h2>

      {/* Location */}
      <p className="font-body text-sm text-[rgb(var(--color-text-secondary))] mb-4">
        {location.locationName}
      </p>

      {/* Status Badge */}
      <div className="flex items-center gap-3 mb-4">
        <span
          className={cn(
            "inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full text-sm font-medium",
            status.isOpen
              ? "bg-[rgb(var(--color-status-open-bg))] text-[rgb(var(--color-status-open))]"
              : "bg-[rgb(var(--color-status-closed-bg))] text-[rgb(var(--color-status-closed))]"
          )}
          aria-label={`${location.name} is ${status.isOpen ? 'open' : 'closed'}`}
        >
          <span className={cn("w-2 h-2 rounded-full", status.isOpen ? "bg-current" : "border-2 border-current")} />
          {status.isOpen ? 'Open' : 'Closed'}
        </span>

        {status.isOpen && status.currentMeal && (
          <span className="text-sm text-[rgb(var(--color-text-secondary))]">
            Serving {status.currentMeal}
          </span>
        )}
      </div>

      {/* Timing Info */}
      {status.isOpen && status.closesAt && (
        <p className="text-sm text-[rgb(var(--color-text-secondary))]">
          Closes at {status.closesAt}
        </p>
      )}
      {!status.isOpen && status.opensAt && (
        <p className="text-sm text-[rgb(var(--color-text-secondary))]">
          Opens at {status.opensAt}
        </p>
      )}

      {/* View Menu Button */}
      <button
        className="mt-4 text-sm font-medium text-[rgb(var(--color-brand-primary))] hover:underline"
        aria-label={`View menu for ${location.name}`}
      >
        View Menu →
      </button>
    </article>
  );
}
```

# Documentation Lookup

**BEFORE implementing, use Context7 MCP to get up-to-date documentation:**

Use the Context7 MCP tools to retrieve current documentation for libraries used in this component:

1. **React Router v7** - For hooks like `useNavigate`, `useLoaderData`, `useSearchParams`
2. **Tailwind CSS v4** - For latest utility classes and CSS variable patterns
3. **shadcn/ui** - For component primitives and accessibility patterns
4. **Vaul** - For drawer implementation (if component uses drawers)
5. **nuqs** - For URL state management (if component manages query params)
6. **Lucide React** - For icon usage

**Example Context7 queries:**
```typescript
// Get React Router v7 docs
mcp__context7__resolve-library-id({ libraryName: "react-router" })
mcp__context7__get-library-docs({ context7CompatibleLibraryID: "/remix-run/react-router", topic: "hooks" })

// Get Tailwind CSS v4 docs
mcp__context7__resolve-library-id({ libraryName: "tailwindcss" })
mcp__context7__get-library-docs({ context7CompatibleLibraryID: "/tailwindlabs/tailwindcss", topic: "css variables" })

// Get shadcn/ui docs
mcp__context7__resolve-library-id({ libraryName: "shadcn" })
mcp__context7__get-library-docs({ context7CompatibleLibraryID: "/shadcn/ui", topic: "button" })

// Get Vaul drawer docs
mcp__context7__resolve-library-id({ libraryName: "vaul" })
mcp__context7__get-library-docs({ context7CompatibleLibraryID: "/emilkowalski/vaul", topic: "drawer" })
```

# Now Create the Component

Place the completed component in: `app/components/{kebab-case-name}.tsx`

Ensure all requirements above are met before considering the task complete.