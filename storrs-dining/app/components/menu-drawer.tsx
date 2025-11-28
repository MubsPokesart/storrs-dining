import { useEffect } from "react";
import { useQueryState } from "nuqs";
import { useFetcher } from "react-router";
import { Drawer } from "vaul";
import { X } from "lucide-react";
import { cn } from "~/lib/utils";
import type { LocationWithStatus } from "~/routes/home";
import type { MenuLoaderData } from "~/routes/api.menu.$locationId";

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

  // Use fetcher to load menu data from API route
  const fetcher = useFetcher<MenuLoaderData>();

  const isOpen = !!hall;

  // Find the location data for the current hall
  const location = locations.find((loc) => loc.id === hall) || null;

  // Fetch menu data when drawer opens
  useEffect(() => {
    if (hall && fetcher.state === "idle" && !fetcher.data) {
      fetcher.load(`/api/menu/${hall}`);
    }
  }, [hall, fetcher]);

  // Get menu data from fetcher
  const menuData = fetcher.data;
  const menu = menuData?.menu || null;
  const isLoading = fetcher.state === "loading";

  const handleClose = () => {
    setHall(null);
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
              {!isLoading && !menu && menuData && (
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
                    Menu data hasn't been scraped yet for {menuData.mealPeriod}.
                  </p>
                </div>
              )}

              {/* Menu data available */}
              {!isLoading && menu && (
                <div>
                  <p
                    className={cn(
                      "font-body text-sm mb-4",
                      "text-[rgb(var(--color-text-secondary))]"
                    )}
                  >
                    {menuData?.currentMealLabel || menuData?.mealPeriod} • {menuData?.date}
                  </p>

                  {/* TODO: Add MenuFilters, StationGroup, and MenuItem components here */}
                  <div className="flex flex-col items-center justify-center py-8 text-center">
                    <p
                      className={cn(
                        "font-body text-sm",
                        "text-[rgb(var(--color-text-secondary))]"
                      )}
                    >
                      {menu.items.length} items found. Menu display components coming in Phase 7.
                    </p>
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
