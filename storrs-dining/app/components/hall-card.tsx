import { Star } from "lucide-react";
import { cn } from "~/lib/utils";
import type { LocationWithStatus } from "~/lib/db/types";
import { useAnalytics } from "~/hooks/use-analytics";

/**
 * Props for HallCard component
 */
export interface HallCardProps {
  location: LocationWithStatus;
  isFavorite: boolean;
  onFavoriteToggle: (locationId: string) => void;
  onCardClick: (locationId: string) => void;
  className?: string;
}

/**
 * Hall card component - displays dining hall status with favorite toggle
 *
 * Design specs: DESIGN-ETHOS.md Section 3.1
 *
 * @example
 * ```tsx
 * <HallCard
 *   location={location}
 *   isFavorite={false}
 *   onFavoriteToggle={(id) => toggleFavorite(id)}
 *   onCardClick={(id) => openMenu(id)}
 * />
 * ```
 */
export function HallCard({
  location,
  isFavorite,
  onFavoriteToggle,
  onCardClick,
  className,
}: HallCardProps) {
  const { isOpen, currentMeal, closesAt, opensAt, closingSoon } = location;
  const { trackEvent } = useAnalytics();

  return (
    <article
      className={cn(
        // Group for hover effects
        "group",
        // Base card styling - 1rem border radius, white background
        "relative rounded-2xl bg-[rgb(var(--color-bg-secondary))]",
        // Shadow with hover elevation
        "shadow-[var(--shadow-card)] transition-shadow duration-300",
        "hover:shadow-[var(--shadow-card-hover)]",
        // Responsive padding: 1rem mobile, 1.25rem tablet+
        "p-4 md:p-5",
        // Favorite border: 2px amber when favorited
        isFavorite && "ring-2 ring-[rgb(var(--color-border-favorite))]",
        // Clickable state
        "cursor-pointer select-none",
        // Focus states for keyboard navigation
        "focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-[rgb(var(--color-interactive-focus))]",
        className
      )}
      onClick={() => {
        onCardClick(location.id);
        trackEvent("hall_card_click", { locationId: location.id });
      }}
      role="button"
      tabIndex={0}
      aria-label={`View menu for ${location.name}`}
      onKeyDown={(e) => {
        if (e.key === "Enter" || e.key === " ") {
          e.preventDefault();
          onCardClick(location.id);
          trackEvent("hall_card_click", { locationId: location.id });
        }
      }}
    >
      {/* Favorite Toggle Button - Top Right */}
      <button
        type="button"
        aria-label={
          isFavorite
            ? `Remove ${location.name} from favorites`
            : `Add ${location.name} to favorites`
        }
        className={cn(
          "absolute top-4 right-4 p-2 rounded-full",
          "hover:bg-[rgb(var(--color-interactive-hover))]",
          "focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-[rgb(var(--color-interactive-focus))]",
          "transition-all duration-150",
          // Touch target: 44x44px minimum
          "min-h-[44px] min-w-[44px]",
          "flex items-center justify-center"
        )}
        onClick={(e) => {
          e.stopPropagation();
          onFavoriteToggle(location.id);
          trackEvent("favorite_toggle", {
            locationId: location.id,
            action: isFavorite ? "remove" : "add",
          });
        }}
        onKeyDown={(e) => {
          if (e.key === "Enter" || e.key === " ") {
            e.preventDefault();
            e.stopPropagation();
            onFavoriteToggle(location.id);
            trackEvent("favorite_toggle", {
              locationId: location.id,
              action: isFavorite ? "remove" : "add",
            });
          }
        }}
      >
        <Star
          className={cn(
            "w-5 h-5 transition-all duration-150",
            isFavorite
              ? "fill-[rgb(var(--color-brand-accent))] text-[rgb(var(--color-brand-accent))]"
              : "text-[rgb(var(--color-text-tertiary))]",
            // Scale animation on click (handled by CSS)
            "active:scale-125"
          )}
          aria-hidden="true"
        />
      </button>

      {/* Hall Name - Display Font (Libre Baskerville) */}
      <h2
        className={cn(
          "font-display text-xl font-bold",
          "mb-1 pr-12", // Right padding to avoid star button overlap
          "transition-colors duration-300",
          "hall-card-title"
        )}
      >
        {location.name}
      </h2>

      {/* Location Name - Body Font (Montserrat) */}
      {location.locationName && (
        <p className="font-body text-sm text-[rgb(var(--color-text-secondary))] mb-4">
          {location.locationName}
        </p>
      )}

      {/* Status Badge with Timing */}
      <div className="mb-4">
        <span
          className={cn(
            "inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full",
            "text-sm font-medium font-body",
            "transition-colors duration-150",
            isOpen && closingSoon
              ? "bg-[rgb(var(--color-status-warning-bg))] text-[rgb(var(--color-status-warning))]"
              : isOpen
                ? "bg-[rgb(var(--color-status-open-bg))] text-[rgb(var(--color-status-open))]"
                : "bg-[rgb(var(--color-status-closed-bg))] text-[rgb(var(--color-status-closed))]"
          )}
          aria-label={`${location.name} is ${isOpen ? "open" : "closed"}${isOpen && closesAt ? ` until ${closesAt}` : ""
            }${!isOpen && opensAt ? `, opens at ${opensAt}` : ""}`}
        >
          {/* Status indicator circle */}
          <span
            className={cn(
              "w-2 h-2 rounded-full transition-all duration-150",
              isOpen
                ? "bg-current"
                : "border-2 border-current bg-transparent"
            )}
            aria-hidden="true"
          />
          {isOpen ? (
            <>
              Open{closesAt && ` • Closes at ${closesAt}`}
            </>
          ) : (
            <>
              Closed{opensAt && ` • ${opensAt === "tomorrow" ? "Opens tomorrow" : `Opens at ${opensAt}`}`}
            </>
          )}
        </span>
      </div>

      {/* Current meal period (only when open) */}
      {isOpen && currentMeal && (
        <div className="mb-4">
          <span className="text-sm font-body text-[rgb(var(--color-text-secondary))]">
            Serving {currentMeal}
          </span>
        </div>
      )}

      {/* View Menu Link - Footer */}
      <div className="pt-4 border-t border-[rgb(var(--color-border-secondary))]">
        <span
          className={cn(
            "text-sm font-medium font-body",
            "text-[rgb(var(--color-brand-primary))]",
            "hover:underline transition-all duration-150"
          )}
          aria-hidden="true"
        >
          View Menu →
        </span>
      </div>
    </article>
  );
}
