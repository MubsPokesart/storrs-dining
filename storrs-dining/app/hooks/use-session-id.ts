import { useState, useEffect } from "react";

/**
 * Canonical sessionStorage key for analytics session ID
 * Per CLAUDE.md storage keys specification
 */
const STORAGE_KEY = "dining-storrs-session";

/**
 * Generate a UUID v4 (simplified implementation)
 * Uses crypto.randomUUID() if available, otherwise falls back to Math.random
 *
 * @returns UUID string in format: xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx
 */
function generateUUID(): string {
  // Use native crypto.randomUUID if available (modern browsers)
  if (typeof crypto !== "undefined" && crypto.randomUUID) {
    return crypto.randomUUID();
  }

  // Fallback to Math.random-based UUID generation
  return "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, (c) => {
    const r = (Math.random() * 16) | 0;
    const v = c === "x" ? r : (r & 0x3) | 0x8;
    return v.toString(16);
  });
}

/**
 * Custom hook for managing analytics session ID
 *
 * Generates a UUID on first visit and stores it in sessionStorage.
 * The session ID persists for the browser session (until tab is closed).
 * Used for tracking user events in analytics without identifying users.
 *
 * @example
 * ```tsx
 * function Analytics() {
 *   const { sessionId, isReady } = useSessionId();
 *
 *   useEffect(() => {
 *     if (isReady) {
 *       trackEvent('page_view', { sessionId });
 *     }
 *   }, [sessionId, isReady]);
 * }
 * ```
 */
export function useSessionId() {
  const [sessionId, setSessionId] = useState<string>("");
  const [isReady, setIsReady] = useState(false);

  useEffect(() => {
    try {
      // Try to load existing session ID from sessionStorage
      let storedId = sessionStorage.getItem(STORAGE_KEY);

      // If no session ID exists, generate a new one
      if (!storedId) {
        storedId = generateUUID();
        sessionStorage.setItem(STORAGE_KEY, storedId);
      }

      setSessionId(storedId);
      setIsReady(true);
    } catch (error) {
      // Handle errors (e.g., sessionStorage disabled, quota exceeded)
      console.error("Failed to initialize session ID:", error);

      // Generate ID but don't persist it
      setSessionId(generateUUID());
      setIsReady(true);
    }
  }, []);

  return {
    /**
     * The session ID for this browser session
     * Empty string until hydrated (check isReady)
     */
    sessionId,

    /**
     * Whether the session ID has been loaded/generated
     * Use this to avoid tracking events before the session ID is ready
     */
    isReady,
  };
}
