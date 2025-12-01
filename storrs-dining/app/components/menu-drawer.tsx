import { useEffect, useState, useMemo } from "react";
import { useQueryState } from "nuqs";
import { useFetcher } from "react-router";
import { Drawer } from "vaul";
import { X } from "lucide-react";
import { cn } from "~/lib/utils";
import type { LocationWithStatus } from "~/lib/db/types";
import type { MenuLoaderData } from "~/routes/api.menu.$locationId";
import { MenuFilters, type DietaryFilter } from "./menu-filters";
import { StationGroup } from "./station-group";
import type { MenuItem as MenuItemType } from "./menu-item";
import { useAnalytics } from "~/hooks/use-analytics";

export interface MenuDrawerProps {
  // Locations with status from home loader
  locations: LocationWithStatus[];
}

/**
 * Menu drawer component using Vaul for native-like bottom sheet experience.
 * URL-driven open state via nuqs enables back button support.
 *
 * Opens when ?hall=<locationId> is in URL.
 * Closes by removing the hall query parameter.
 *
 * @example
 * ```tsx
 * <MenuDrawer locations={locations} menus={menusMap} />
 * ```
 */
export function MenuDrawer({ locations = [] }: MenuDrawerProps) {
  // Read hall ID from URL query params
  const [hall, setHall] = useQueryState("hall");
  const { trackEvent } = useAnalytics();

  // Use fetcher to load menu data from API route
  const fetcher = useFetcher<MenuLoaderData>();

  // Dietary filter state
  const [activeFilters, setActiveFilters] = useState<Set<DietaryFilter>>(new Set());

  // Active meal period tab state
  const [activeMealPeriod, setActiveMealPeriod] = useState<string | null>(null);

  const isOpen = !!hall;

  // Find the location data for the current hall
  const location = locations.find((loc) => loc.id === hall) || null;

  // Fetch menu data when drawer opens or hall changes
  useEffect(() => {
    if (hall) {
      // Always fetch when hall changes, even if we have stale data
      fetcher.load(`/api/menu/${hall}`);
      trackEvent("drawer_open", { locationId: hall });
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [hall]); // Only re-run when hall changes, not when fetcher changes

  // Get menu data from fetcher - only use if it matches current hall
  const isDataForCurrentHall = fetcher.data?.location?.id === hall;
  const menuData = isDataForCurrentHall ? fetcher.data : null;

  // Set active meal period to current meal when data loads
  useEffect(() => {
    if (menuData && !activeMealPeriod) {
      // Priority: current meal if available, otherwise find first available meal
      let defaultMeal = menuData.currentMealPeriod;

      // Check if current meal period has data
      const currentMealExists = menuData.allMeals.some(m => m.mealPeriod === defaultMeal);

      if (!currentMealExists && menuData.allMeals.length > 0) {
        // Fallback logic for missing meal periods
        const availableMeals = menuData.allMeals.map(m => m.mealPeriod);

        // If brunch doesn't exist, fall back to lunch
        if (defaultMeal === 'brunch' && availableMeals.includes('lunch')) {
          defaultMeal = 'lunch';
        }
        // If late_night doesn't exist, fall back to dinner
        else if (defaultMeal === 'late night' && availableMeals.includes('dinner')) {
          defaultMeal = 'dinner';
        }
        // Otherwise just use the first available meal
        else {
          defaultMeal = availableMeals[0];
        }
      }

      setActiveMealPeriod(defaultMeal);
    }
  }, [menuData, activeMealPeriod]);

  // Get the currently selected meal
  const selectedMealData = menuData?.allMeals?.find(m => m.mealPeriod === activeMealPeriod);
  const menu = selectedMealData?.menu || null;

  // Show loading if fetcher is actively loading, OR if we're waiting for data to match current hall
  const isLoading = fetcher.state === "loading" || (hall && !isDataForCurrentHall);

  // Filter menu items based on active dietary filters
  const filteredItems = useMemo(() => {
    if (!menu?.items) return [];
    if (activeFilters.size === 0) return menu.items;

    return menu.items.filter((item) => {
      if (activeFilters.has("vegan") && !item.isVegan) return false;
      if (activeFilters.has("vegetarian") && !item.isVegetarian) return false;
      if (activeFilters.has("gluten_free") && !item.isGlutenFree) return false;
      return true;
    });
  }, [menu?.items, activeFilters]);

  // Group items by station
  const itemsByStation = useMemo(() => {
    const grouped = new Map<string, MenuItemType[]>();
    filteredItems.forEach((item) => {
      const existing = grouped.get(item.station) || [];
      grouped.set(item.station, [...existing, item]);
    });
    return grouped;
  }, [filteredItems]);

  const handleFilterToggle = (filter: DietaryFilter) => {
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

  const handleClose = () => {
    if (hall) {
      trackEvent("drawer_close", { locationId: hall });
    }
    setHall(null);
    setActiveFilters(new Set()); // Reset filters on close
    setActiveMealPeriod(null); // Reset meal period on close
  };

  return (
    <Drawer.Root
      open={isOpen}
      onOpenChange={(open) => {
        if (!open) handleClose();
      }}
    >
      <Drawer.Portal>
        {/* Backdrop overlay */}
        <Drawer.Overlay className="fixed inset-0 bg-black/40 z-40" />

        {/* Drawer content */}
        <Drawer.Content
          className={cn(
            // Layout
            "fixed bottom-0 left-0 right-0 z-50",
            "flex flex-col",
            // Appearance
            "bg-[rgb(var(--color-bg-secondary))]",
            "rounded-t-3xl",
            "shadow-[var(--shadow-drawer)]",
            // Height - mobile first, then desktop
            "h-[85vh]",
            "md:max-h-[600px]"
          )}
          role="dialog"
          aria-modal="true"
          aria-labelledby="drawer-title"
          aria-describedby="drawer-description"
        >
          {/* Drag handle indicator */}
          <div
            className="flex justify-center py-3 shrink-0"
            aria-hidden="true"
          >
            <div
              className={cn(
                "w-12 h-1 rounded-full",
                "bg-[rgb(var(--color-border-primary))]"
              )}
            />
          </div>

          {/* Header */}
          <header
            className={cn(
              "flex items-start justify-between gap-4",
              "px-4 pb-3 shrink-0",
              "border-b border-[rgb(var(--color-border-secondary))]"
            )}
          >
            <div className="flex-1 min-w-0">
              {/* Hall name - Display font per design system */}
              <h2
                id="drawer-title"
                className={cn(
                  "font-display text-2xl font-bold",
                  "text-[rgb(var(--color-text-primary))]",
                  "truncate"
                )}
              >
                {location?.name || "Loading..."}
              </h2>

              {/* Location subtitle - Body font */}
              {location?.locationName && (
                <p
                  className={cn(
                    "font-body text-sm mt-0.5",
                    "text-[rgb(var(--color-text-secondary))]",
                    "truncate"
                  )}
                >
                  {location.locationName}
                </p>
              )}

              {/* Status description */}
              <p
                id="drawer-description"
                className={cn(
                  "font-body text-sm mt-1",
                  "text-[rgb(var(--color-text-secondary))]"
                )}
              >
                {location ? "View today's menu" : "Loading menu..."}
              </p>
            </div>

            {/* Close button - 44x44px touch target */}
            <button
              onClick={handleClose}
              className={cn(
                // Touch target - exactly 44x44px
                "min-h-[44px] min-w-[44px]",
                "flex items-center justify-center shrink-0",
                // Appearance
                "rounded-full",
                "text-[rgb(var(--color-text-secondary))]",
                "hover:bg-[rgb(var(--color-interactive-hover))]",
                "transition-colors",
                // Focus - 2px brand blue ring
                "focus:outline-none focus:ring-2",
                "focus:ring-[rgb(var(--color-interactive-focus))]"
              )}
              aria-label={`Close ${location?.name || 'menu'} drawer`}
            >
              <X className="w-5 h-5" />
            </button>
          </header>

          {/* Scrollable content area */}
          <div className="flex-1 overflow-y-auto">
            <div className="px-4 py-6">
              {/* Loading state */}
              {isLoading && (
                <div className="flex flex-col items-center justify-center py-12 text-center">
                  <div
                    className="text-6xl mb-4 animate-pulse"
                    role="img"
                    aria-label="Loading"
                  >
                    🍽️
                  </div>
                  <p
                    className={cn(
                      "font-body text-sm",
                      "text-[rgb(var(--color-text-secondary))]"
                    )}
                  >
                    Loading menu...
                  </p>
                </div>
              )}

              {/* No menu data state */}
              {!isLoading && menuData && menuData.allMeals.length === 0 && (
                <div className="flex flex-col items-center justify-center py-12 text-center">
                  <div
                    className="text-6xl mb-4"
                    role="img"
                    aria-label="No menu"
                  >
                    📋
                  </div>
                  <h3
                    className={cn(
                      "font-display text-xl font-semibold mb-2",
                      "text-[rgb(var(--color-text-primary))]"
                    )}
                  >
                    No menu available
                  </h3>
                  <p
                    className={cn(
                      "font-body text-sm max-w-xs",
                      "text-[rgb(var(--color-text-secondary))]"
                    )}
                  >
                    Menu data hasn't been scraped yet for today.
                  </p>
                </div>
              )}

              {/* Menu data available */}
              {!isLoading && menuData && menuData.allMeals.length > 0 && (
                <div>
                  {/* Meal period tabs */}
                  {menuData.allMeals.length > 0 && (
                    <div className="px-4 mb-3">
                      <div className="flex gap-2 overflow-x-auto scrollbar-hide pb-2">
                        {menuData.allMeals.map(({ mealPeriod, menu: mealMenu }) => (
                          <button
                            key={mealPeriod}
                            onClick={() => setActiveMealPeriod(mealPeriod)}
                            className={cn(
                              "px-4 py-2 rounded-full text-sm font-medium whitespace-nowrap transition-colors",
                              "min-h-[44px]",
                              activeMealPeriod === mealPeriod
                                ? "bg-[rgb(var(--color-brand-primary))] text-[rgb(var(--color-text-inverse))]"
                                : "bg-[rgb(var(--color-bg-tertiary))] text-[rgb(var(--color-text-secondary))] hover:bg-[rgb(var(--color-interactive-hover))]"
                            )}
                          >
                            {mealPeriod.charAt(0).toUpperCase() + mealPeriod.slice(1).replace('_', ' ')}
                            {mealMenu && ` (${mealMenu.items.length})`}
                          </button>
                        ))}
                      </div>
                    </div>
                  )}

                  {/* Dietary filters - sticky at top */}
                  {menu && (
                    <MenuFilters
                      activeFilters={activeFilters}
                      onFilterToggle={handleFilterToggle}
                    />
                  )}

                  {/* Menu items grouped by station */}
                  <div className="px-4 mt-4">
                    {itemsByStation.size === 0 ? (
                      // No items match filters
                      <div className="flex flex-col items-center justify-center py-12 text-center">
                        <div
                          className="text-6xl mb-4"
                          role="img"
                          aria-label="No results"
                        >
                          🔍
                        </div>
                        <h3
                          className={cn(
                            "font-display text-xl font-semibold mb-2",
                            "text-[rgb(var(--color-text-primary))]"
                          )}
                        >
                          No items match filters
                        </h3>
                        <p
                          className={cn(
                            "font-body text-sm max-w-xs",
                            "text-[rgb(var(--color-text-secondary))]"
                          )}
                        >
                          Try adjusting your dietary filters to see more options.
                        </p>
                      </div>
                    ) : (
                      // Display stations with items
                      Array.from(itemsByStation.entries()).map(([station, items]) => (
                        <StationGroup key={station} station={station} items={items} />
                      ))
                    )}
                  </div>
                </div>
              )}
            </div>
          </div>

          {/* Footer with last updated timestamp */}
          <footer
            className={cn(
              "shrink-0 px-4 py-3",
              "border-t border-[rgb(var(--color-border-secondary))]",
              "bg-[rgb(var(--color-bg-tertiary))]"
            )}
          >
            <p
              className={cn(
                "font-body text-xs text-center",
                "text-[rgb(var(--color-text-tertiary))]"
              )}
            >
              Last updated: {new Date().toLocaleTimeString()}
            </p>
          </footer>
        </Drawer.Content>
      </Drawer.Portal>
    </Drawer.Root>
  );
}
