import { MenuItem } from "./menu-item";
import type { MenuItem as MenuItemType } from "./menu-item";
import { cn } from "~/lib/utils";

/**
 * Props for StationGroup component
 */
export interface StationGroupProps {
  station: string;
  items: MenuItemType[];
  className?: string;
}

/**
 * Groups menu items by station (e.g., "Grill", "Salad Bar", "Desserts")
 *
 * Features:
 * - Station name as uppercase header
 * - List of menu items in semantic <ul>
 * - Visual separation with border divider
 * - Uses design tokens for all styling
 * - Accessible heading hierarchy (<h3>)
 *
 * Design Specs (DESIGN-ETHOS.md Section 3.4):
 * - Station text: --font-body, --text-sm, --font-semibold
 * - Color: --color-text-tertiary
 * - Letter spacing: 0.05em (tracked out)
 * - Transform: uppercase
 * - Margin top: --space-6 (except first)
 * - Margin bottom: --space-2
 * - Underline: 1px --color-border-secondary
 *
 * @example
 * ```tsx
 * <StationGroup
 *   station="Grill"
 *   items={grillItems}
 * />
 * ```
 */
export function StationGroup({ station, items, className }: StationGroupProps) {
  // Don't render if no items
  if (items.length === 0) {
    return null;
  }

  return (
    <section
      className={cn(
        // Margin top for spacing between groups (skip for first child in parent)
        "first:mt-0 mt-6",
        className
      )}
      aria-labelledby={`station-${station.toLowerCase().replace(/\s+/g, "-")}`}
    >
      {/* Station Header */}
      <h3
        id={`station-${station.toLowerCase().replace(/\s+/g, "-")}`}
        className={cn(
          // Typography: --font-body, --text-sm, --font-semibold
          "font-body text-sm font-semibold",
          // Color: --color-text-tertiary
          "text-[rgb(var(--color-text-tertiary))]",
          // Letter spacing: tracked out
          "tracking-wide",
          // Transform: uppercase
          "uppercase",
          // Spacing: --space-2 bottom margin
          "mb-2",
          // Underline with border
          "pb-1 border-b border-[rgb(var(--color-border-secondary))]"
        )}
      >
        {station}
      </h3>

      {/* Menu Items List */}
      <ul
        className={cn(
          // Remove default list styling
          "list-none",
          // Spacing
          "space-y-0"
        )}
        role="list"
      >
        {items.map((item) => (
          <MenuItem key={item.id} item={item} />
        ))}
      </ul>
    </section>
  );
}
