import { useState, useEffect, useCallback } from "react";

/**
 * Canonical localStorage key for favorites
 * Per CLAUDE.md storage keys specification
 */
const STORAGE_KEY = "dining-storrs-favorites";

/**
 * Custom hook for managing favorite dining hall locations
 *
 * Stores favorites in localStorage as a Set of location IDs.
 * Provides methods to toggle favorites and check if a location is favorited.
 *
 * @example
 * ```tsx
 * function HallCard({ location }) {
 *   const { isFavorite, toggleFavorite } = useFavorites();
 *
 *   return (
 *     <button onClick={() => toggleFavorite(location.id)}>
 *       {isFavorite(location.id) ? '⭐' : '☆'}
 *     </button>
 *   );
 * }
 * ```
 */
export function useFavorites() {
  const [favorites, setFavorites] = useState<Set<string>>(new Set());
  const [isHydrated, setIsHydrated] = useState(false);

  // Load favorites from localStorage on mount
  useEffect(() => {
    try {
      const stored = localStorage.getItem(STORAGE_KEY);
      if (stored) {
        const parsed = JSON.parse(stored);
        if (Array.isArray(parsed)) {
          setFavorites(new Set(parsed));
        }
      }
    } catch (error) {
      console.error("Failed to load favorites from localStorage:", error);
      // Reset to empty set on error
      setFavorites(new Set());
    }
    setIsHydrated(true);
  }, []);

  /**
   * Toggle a location's favorite status
   * @param locationId - The location ID to toggle
   */
  const toggleFavorite = useCallback((locationId: string) => {
    setFavorites((prev) => {
      const next = new Set(prev);

      if (next.has(locationId)) {
        next.delete(locationId);
      } else {
        next.add(locationId);
      }

      // Persist to localStorage
      try {
        localStorage.setItem(STORAGE_KEY, JSON.stringify([...next]));
      } catch (error) {
        console.error("Failed to save favorites to localStorage:", error);
      }

      return next;
    });
  }, []);

  /**
   * Check if a location is in favorites
   * @param locationId - The location ID to check
   * @returns true if location is favorited
   */
  const isFavorite = useCallback(
    (locationId: string) => favorites.has(locationId),
    [favorites]
  );

  /**
   * Get all favorited location IDs as an array
   * @returns Array of location IDs
   */
  const getFavorites = useCallback(() => [...favorites], [favorites]);

  /**
   * Clear all favorites
   */
  const clearFavorites = useCallback(() => {
    setFavorites(new Set());
    try {
      localStorage.removeItem(STORAGE_KEY);
    } catch (error) {
      console.error("Failed to clear favorites from localStorage:", error);
    }
  }, []);

  return {
    favorites,
    toggleFavorite,
    isFavorite,
    getFavorites,
    clearFavorites,
    isHydrated,
  };
}
