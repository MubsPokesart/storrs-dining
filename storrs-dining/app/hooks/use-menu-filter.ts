import { useState, useMemo, useCallback } from "react";
import type { MenuItem } from "~/lib/db/types";

/**
 * Dietary filter types
 * Maps to boolean fields in MenuItem model
 */
export type DietaryFilter = "vegan" | "vegetarian" | "gluten_free";

/**
 * Custom hook for client-side menu item filtering by dietary preferences
 *
 * Provides toggle-able filters for vegan, vegetarian, and gluten-free options.
 * Filters items client-side (no server round-trip) using useMemo for performance.
 *
 * Filter logic:
 * - When no filters active: show all items
 * - When filters active: item must match ALL active filters (AND logic)
 * - Example: If both "vegan" and "gluten_free" are active, only items that
 *   are both vegan AND gluten-free will be shown
 *
 * @param items - Array of menu items to filter
 * @returns Filtered items, active filters, and toggle function
 *
 * @example
 * ```tsx
 * function MenuDrawer({ menu }) {
 *   const { filteredItems, activeFilters, toggleFilter } = useMenuFilter(menu.items);
 *
 *   return (
 *     <>
 *       <button onClick={() => toggleFilter('vegan')}>
 *         Vegan {activeFilters.has('vegan') && '✓'}
 *       </button>
 *       {filteredItems.map(item => <MenuItem key={item.id} item={item} />)}
 *     </>
 *   );
 * }
 * ```
 */
export function useMenuFilter(items: MenuItem[]) {
  const [activeFilters, setActiveFilters] = useState<Set<DietaryFilter>>(
    new Set()
  );

  /**
   * Filter items based on active dietary filters
   * Uses AND logic: items must satisfy ALL active filters
   */
  const filteredItems = useMemo(() => {
    // If no filters active, return all items
    if (activeFilters.size === 0) return items;

    // Filter items that match ALL active filters
    return items.filter((item) => {
      // Check vegan filter
      if (activeFilters.has("vegan") && !item.isVegan) {
        return false;
      }

      // Check vegetarian filter
      if (activeFilters.has("vegetarian") && !item.isVegetarian) {
        return false;
      }

      // Check gluten-free filter
      if (activeFilters.has("gluten_free") && !item.isGlutenFree) {
        return false;
      }

      // Item matches all active filters
      return true;
    });
  }, [items, activeFilters]);

  /**
   * Toggle a dietary filter on/off
   * @param filter - The dietary filter to toggle
   */
  const toggleFilter = useCallback((filter: DietaryFilter) => {
    setActiveFilters((prev) => {
      const next = new Set(prev);

      if (next.has(filter)) {
        // Remove filter if already active
        next.delete(filter);
      } else {
        // Add filter if not active
        next.add(filter);
      }

      return next;
    });
  }, []);

  /**
   * Check if a specific filter is active
   * @param filter - The dietary filter to check
   * @returns true if filter is active
   */
  const isFilterActive = useCallback(
    (filter: DietaryFilter) => activeFilters.has(filter),
    [activeFilters]
  );

  /**
   * Clear all active filters
   */
  const clearFilters = useCallback(() => {
    setActiveFilters(new Set());
  }, []);

  /**
   * Get count of items matching a specific filter
   * Useful for showing badge counts on filter buttons
   * @param filter - The dietary filter to count
   * @returns Number of items matching the filter
   */
  const getFilterCount = useCallback(
    (filter: DietaryFilter) => {
      return items.filter((item) => {
        if (filter === "vegan") return item.isVegan;
        if (filter === "vegetarian") return item.isVegetarian;
        if (filter === "gluten_free") return item.isGlutenFree;
        return false;
      }).length;
    },
    [items]
  );

  return {
    /** Filtered menu items based on active filters */
    filteredItems,

    /** Set of currently active dietary filters */
    activeFilters,

    /** Toggle a dietary filter on/off */
    toggleFilter,

    /** Check if a specific filter is active */
    isFilterActive,

    /** Clear all active filters */
    clearFilters,

    /** Get count of items matching a specific filter */
    getFilterCount,

    /** Number of items after filtering */
    filteredCount: filteredItems.length,

    /** Total number of items before filtering */
    totalCount: items.length,
  };
}
