import { Leaf, Sprout, WheatOff } from "lucide-react";
import { cn } from "~/lib/utils";

/**
 * Menu item from database
 */
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

/**
 * Props for MenuItem component
 */
export interface MenuItemProps {
  item: MenuItem;
  className?: string;
}

/**
 * Displays a single menu item with dietary badges
 *
 * Features:
 * - Compact list-style layout
 * - Dietary icons (Vegan, Vegetarian, Gluten-Free)
 * - Touch-friendly 44px minimum height
 * - High contrast for outdoor readability
 *
 * @example
 * ```tsx
 * <MenuItem item={menuItem} />
 * ```
 */
export function MenuItem({ item, className }: MenuItemProps) {
  // Build accessibility label with dietary info
  const dietaryInfo: string[] = [];
  if (item.isVegan) dietaryInfo.push("Vegan");
  if (item.isVegetarian && !item.isVegan) dietaryInfo.push("Vegetarian");
  if (item.isGlutenFree) dietaryInfo.push("Gluten-Free");

  const ariaLabel = dietaryInfo.length > 0
    ? `${item.name}, ${dietaryInfo.join(", ")}`
    : item.name;

  return (
    <li
      className={cn(
        // Layout
        "flex items-center justify-between gap-3",
        // Spacing: --space-3 vertical padding (12px)
        "py-3",
        // Touch-friendly minimum height
        "min-h-[44px]",
        // Hover state for better UX
        "hover:bg-[rgb(var(--color-interactive-hover))]",
        "transition-colors duration-[var(--duration-fast)]",
        // Rounded corners on hover
        "rounded-lg px-2 -mx-2",
        className
      )}
      aria-label={ariaLabel}
    >
      {/* Item Name */}
      <span className="font-body text-base text-[rgb(var(--color-text-primary))] flex-1">
        {item.name}
      </span>

      {/* Dietary Badges */}
      {(item.isVegan || item.isVegetarian || item.isGlutenFree) && (
        <div className="flex items-center gap-1.5 flex-shrink-0">
          {/* Vegan Badge */}
          {item.isVegan && (
            <span
              className={cn(
                "inline-flex items-center justify-center",
                "w-6 h-6 rounded-full",
                "bg-[rgb(var(--color-dietary-vegan-bg))]"
              )}
              title="Vegan"
              aria-hidden="true"
            >
              <Leaf
                className="w-4 h-4 text-[rgb(var(--color-dietary-vegan))]"
                strokeWidth={2}
              />
            </span>
          )}

          {/* Vegetarian Badge (only show if not vegan) */}
          {item.isVegetarian && !item.isVegan && (
            <span
              className={cn(
                "inline-flex items-center justify-center",
                "w-6 h-6 rounded-full",
                "bg-[rgb(var(--color-dietary-vegetarian-bg))]"
              )}
              title="Vegetarian"
              aria-hidden="true"
            >
              <Sprout
                className="w-4 h-4 text-[rgb(var(--color-dietary-vegetarian))]"
                strokeWidth={2}
              />
            </span>
          )}

          {/* Gluten-Free Badge */}
          {item.isGlutenFree && (
            <span
              className={cn(
                "inline-flex items-center justify-center",
                "w-6 h-6 rounded-full",
                "bg-[rgb(var(--color-dietary-gf-bg))]"
              )}
              title="Gluten-Free"
              aria-hidden="true"
            >
              <WheatOff
                className="w-4 h-4 text-[rgb(var(--color-dietary-gf))]"
                strokeWidth={2}
              />
            </span>
          )}
        </div>
      )}
    </li>
  );
}
