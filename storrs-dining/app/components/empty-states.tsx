import { cn } from "~/lib/utils";

/**
 * Empty States Components
 * Per DESIGN-ETHOS.md Section 7.2
 *
 * Provides friendly, helpful empty states for various scenarios
 */

interface EmptyStateProps {
  className?: string;
}

/**
 * All Halls Closed Empty State
 * Shown when no dining halls are currently open
 *
 * @example
 * ```tsx
 * {locations.every(loc => !loc.isOpen) && <AllHallsClosedState />}
 * ```
 */
export function AllHallsClosedState({ className }: EmptyStateProps) {
  return (
    <div
      className={cn(
        "flex flex-col items-center justify-center text-center py-12 px-4",
        className
      )}
      role="status"
      aria-live="polite"
    >
      {/* Moon emoji */}
      <div
        className="text-6xl mb-4"
        role="img"
        aria-label="Moon"
      >
        🌙
      </div>

      {/* Heading */}
      <h2
        className={cn(
          "font-display text-xl font-semibold mb-2",
          "text-[rgb(var(--color-text-primary))]"
        )}
      >
        All dining halls are closed
      </h2>

      {/* Description */}
      <p
        className={cn(
          "font-body text-sm max-w-xs",
          "text-[rgb(var(--color-text-secondary))]"
        )}
      >
        They'll open again for breakfast around 7:00 AM
      </p>
    </div>
  );
}

/**
 * No Menu Available Empty State
 * Shown in drawer when menu data hasn't been scraped yet
 *
 * @example
 * ```tsx
 * {!menu && <NoMenuAvailableState mealPeriod="lunch" />}
 * ```
 */
export function NoMenuAvailableState({
  mealPeriod,
  className,
}: {
  mealPeriod?: string;
  className?: string;
}) {
  return (
    <div
      className={cn(
        "flex flex-col items-center justify-center text-center py-12 px-4",
        className
      )}
      role="status"
      aria-live="polite"
    >
      {/* Clipboard emoji */}
      <div
        className="text-6xl mb-4"
        role="img"
        aria-label="Clipboard"
      >
        📋
      </div>

      {/* Heading */}
      <h3
        className={cn(
          "font-display text-xl font-semibold mb-2",
          "text-[rgb(var(--color-text-primary))]"
        )}
      >
        No menu available
      </h3>

      {/* Description */}
      <p
        className={cn(
          "font-body text-sm max-w-xs",
          "text-[rgb(var(--color-text-secondary))]"
        )}
      >
        {mealPeriod
          ? `Menu data hasn't been scraped yet for ${mealPeriod}.`
          : "Menu data hasn't been scraped yet."}
      </p>
    </div>
  );
}

/**
 * No Filter Results Empty State
 * Shown when dietary filters exclude all menu items
 *
 * @example
 * ```tsx
 * {filteredItems.length === 0 && (
 *   <NoFilterResultsState onClearFilters={clearFilters} />
 * )}
 * ```
 */
export function NoFilterResultsState({
  onClearFilters,
  className,
}: {
  onClearFilters?: () => void;
  className?: string;
}) {
  return (
    <div
      className={cn(
        "flex flex-col items-center justify-center text-center py-12 px-4",
        className
      )}
      role="status"
      aria-live="polite"
    >
      {/* Salad emoji */}
      <div
        className="text-6xl mb-4"
        role="img"
        aria-label="Salad bowl"
      >
        🥗
      </div>

      {/* Heading */}
      <h3
        className={cn(
          "font-display text-xl font-semibold mb-2",
          "text-[rgb(var(--color-text-primary))]"
        )}
      >
        No items match your filters
      </h3>

      {/* Description */}
      <p
        className={cn(
          "font-body text-sm max-w-xs mb-4",
          "text-[rgb(var(--color-text-secondary))]"
        )}
      >
        Try removing some dietary filters to see more options
      </p>

      {/* Clear filters button */}
      {onClearFilters && (
        <button
          onClick={onClearFilters}
          className={cn(
            // Touch target
            "min-h-[44px] px-6 py-2",
            // Appearance
            "rounded-full",
            "font-body font-medium text-sm",
            "bg-[rgb(var(--color-brand-primary))]",
            "text-[rgb(var(--color-text-inverse))]",
            // Hover
            "hover:bg-[rgb(var(--color-interactive-active))]",
            // Focus
            "focus:outline-none focus:ring-2",
            "focus:ring-[rgb(var(--color-interactive-focus))]",
            // Transition
            "transition-colors",
            "duration-[var(--duration-fast)]"
          )}
          type="button"
        >
          Clear Filters
        </button>
      )}
    </div>
  );
}

/**
 * Generic Empty State
 * For custom scenarios not covered by specific states
 *
 * @example
 * ```tsx
 * <EmptyState
 *   emoji="🔍"
 *   title="No results found"
 *   description="Try adjusting your search"
 * />
 * ```
 */
export function EmptyState({
  emoji,
  emojiLabel,
  title,
  description,
  action,
  className,
}: {
  emoji: string;
  emojiLabel: string;
  title: string;
  description?: string;
  action?: React.ReactNode;
  className?: string;
}) {
  return (
    <div
      className={cn(
        "flex flex-col items-center justify-center text-center py-12 px-4",
        className
      )}
      role="status"
      aria-live="polite"
    >
      {/* Emoji icon */}
      <div
        className="text-6xl mb-4"
        role="img"
        aria-label={emojiLabel}
      >
        {emoji}
      </div>

      {/* Title */}
      <h3
        className={cn(
          "font-display text-xl font-semibold mb-2",
          "text-[rgb(var(--color-text-primary))]"
        )}
      >
        {title}
      </h3>

      {/* Description */}
      {description && (
        <p
          className={cn(
            "font-body text-sm max-w-xs mb-4",
            "text-[rgb(var(--color-text-secondary))]"
          )}
        >
          {description}
        </p>
      )}

      {/* Action */}
      {action && <div className="mt-2">{action}</div>}
    </div>
  );
}
