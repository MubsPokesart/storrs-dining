import { Leaf, Sprout, WheatOff } from "lucide-react";
import { cn } from "~/lib/utils";

/**
 * Dietary filter type
 */
export type DietaryFilter = "vegan" | "vegetarian" | "gluten_free";

/**
 * Props for MenuFilters component
 */
export interface MenuFiltersProps {
  activeFilters: Set<DietaryFilter>;
  onFilterToggle: (filter: DietaryFilter) => void;
  className?: string;
}

/**
 * Filter configuration with labels and icons
 */
interface FilterConfig {
  id: DietaryFilter;
  label: string;
  icon: typeof Leaf;
  ariaLabel: string;
}

const FILTER_CONFIGS: FilterConfig[] = [
  {
    id: "vegan",
    label: "Vegan",
    icon: Leaf,
    ariaLabel: "Filter by vegan items",
  },
  {
    id: "vegetarian",
    label: "Vegetarian",
    icon: Sprout,
    ariaLabel: "Filter by vegetarian items",
  },
  {
    id: "gluten_free",
    label: "Gluten-Free",
    icon: WheatOff,
    ariaLabel: "Filter by gluten-free items",
  },
];

/**
 * Horizontal scrollable filter pills for dietary restrictions
 *
 * Features:
 * - Three filters: Vegan, Vegetarian, Gluten-Free
 * - Client-side filtering (no server round-trip)
 * - Active state styling with brand colors
 * - Touch-friendly 44px minimum height
 * - Sticky positioning at top of drawer content
 * - Keyboard accessible with aria-pressed
 *
 * @example
 * ```tsx
 * const [activeFilters, setActiveFilters] = useState(new Set<DietaryFilter>());
 *
 * const handleToggle = (filter: DietaryFilter) => {
 *   const newFilters = new Set(activeFilters);
 *   if (newFilters.has(filter)) {
 *     newFilters.delete(filter);
 *   } else {
 *     newFilters.add(filter);
 *   }
 *   setActiveFilters(newFilters);
 * };
 *
 * <MenuFilters
 *   activeFilters={activeFilters}
 *   onFilterToggle={handleToggle}
 * />
 * ```
 */
export function MenuFilters({
  activeFilters,
  onFilterToggle,
  className,
}: MenuFiltersProps) {
  return (
    <div
      className={cn(
        // Sticky positioning at top of drawer content
        "sticky top-0 z-10",
        // Background with subtle shadow for depth
        "bg-[rgb(var(--color-bg-secondary))]",
        "shadow-sm",
        // Padding: --space-3 vertical, --space-4 horizontal
        "py-3 px-4",
        className
      )}
      role="group"
      aria-label="Dietary filters"
    >
      {/* Horizontal scroll container */}
      <div
        className={cn(
          // Flex layout with no wrapping
          "flex items-center gap-2",
          "flex-nowrap",
          // Horizontal scroll
          "overflow-x-auto",
          // Hide scrollbar for cleaner look
          "scrollbar-hide",
          // Scroll padding for better UX
          "scroll-px-4",
          // Smooth scrolling
          "scroll-smooth"
        )}
      >
        {FILTER_CONFIGS.map((filter) => {
          const Icon = filter.icon;
          const isActive = activeFilters.has(filter.id);

          return (
            <button
              key={filter.id}
              type="button"
              aria-label={filter.ariaLabel}
              aria-pressed={isActive}
              onClick={() => onFilterToggle(filter.id)}
              className={cn(
                // Base layout
                "inline-flex items-center gap-2",
                "flex-shrink-0",
                // Touch-friendly size
                "min-h-[44px] min-w-[44px]",
                // Padding
                "px-4 py-2",
                // Shape: pill
                "rounded-full",
                // Typography
                "font-body text-sm font-medium",
                // Transitions
                "transition-all duration-[var(--duration-fast)]",
                // Focus state
                "focus:outline-none focus:ring-2 focus:ring-[rgb(var(--color-interactive-focus))] focus:ring-offset-2",
                // Active state styles
                isActive
                  ? [
                      // Filled background
                      "bg-[rgb(var(--color-brand-primary))]",
                      // White text
                      "text-[rgb(var(--color-text-inverse))]",
                      // No border
                      "border-0",
                      // Hover: slightly darker
                      "hover:bg-[rgb(var(--color-interactive-active))]",
                    ]
                  : [
                      // Inactive: white background
                      "bg-[rgb(var(--color-bg-secondary))]",
                      // Gray text
                      "text-[rgb(var(--color-text-secondary))]",
                      // Gray border
                      "border border-[rgb(var(--color-border-primary))]",
                      // Hover: light gray background
                      "hover:bg-[rgb(var(--color-interactive-hover))]",
                      "hover:border-[rgb(var(--color-text-tertiary))]",
                    ]
              )}
            >
              {/* Icon */}
              <Icon
                className={cn(
                  "w-4 h-4",
                  isActive
                    ? "text-[rgb(var(--color-text-inverse))]"
                    : "text-[rgb(var(--color-text-secondary))]"
                )}
                strokeWidth={2}
                aria-hidden="true"
              />

              {/* Label */}
              <span>{filter.label}</span>
            </button>
          );
        })}
      </div>
    </div>
  );
}
