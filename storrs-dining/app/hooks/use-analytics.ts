import { useCallback, useRef, useEffect } from "react";
import { useSessionId } from "./use-session-id";

/**
 * Analytics event types
 * Tracks user interactions throughout the app
 */
export type AnalyticsEventType =
  | "page_view"
  | "hall_card_click"
  | "drawer_open"
  | "drawer_close"
  | "favorite_toggle"
  | "filter_toggle"
  | "menu_item_view";

/**
 * Analytics event metadata
 * Additional context for analytics events
 */
export interface AnalyticsEventMetadata {
  [key: string]: string | number | boolean | undefined;
}

/**
 * Analytics event payload
 * Matches the expected format for the analytics API endpoint
 */
interface AnalyticsEvent {
  eventType: AnalyticsEventType;
  locationId?: string;
  sessionId: string;
  metadata?: AnalyticsEventMetadata;
}

/**
 * Configuration for analytics batching
 */
const BATCH_CONFIG = {
  /** Maximum number of events to batch before sending */
  maxBatchSize: 10,
  /** Maximum time (ms) to wait before sending batch */
  maxBatchWaitMs: 5000,
} as const;

/**
 * Custom hook for tracking analytics events
 *
 * Sends events to the analytics API endpoint with automatic batching
 * to reduce network requests. Uses sessionId from useSessionId hook.
 *
 * Features:
 * - Automatic session ID injection
 * - Event batching (configurable max size and wait time)
 * - Error handling with console warnings
 * - Cleanup on unmount (flushes pending events)
 *
 * @example
 * ```tsx
 * function HallCard({ location }) {
 *   const { trackEvent } = useAnalytics();
 *
 *   return (
 *     <button
 *       onClick={() => {
 *         trackEvent('hall_card_click', { locationId: location.id });
 *       }}
 *     >
 *       {location.name}
 *     </button>
 *   );
 * }
 * ```
 */
export function useAnalytics() {
  const { sessionId, isReady } = useSessionId();
  const batchRef = useRef<AnalyticsEvent[]>([]);
  const timerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const isSendingRef = useRef(false);

  /**
   * Send batched events to analytics API
   */
  const sendBatch = useCallback(async () => {
    // Prevent concurrent sends
    if (isSendingRef.current) return;
    if (batchRef.current.length === 0) return;

    isSendingRef.current = true;

    // Take current batch and clear it
    const eventsToSend = [...batchRef.current];
    batchRef.current = [];

    // Clear the timer since we're sending now
    if (timerRef.current) {
      clearTimeout(timerRef.current);
      timerRef.current = null;
    }

    try {
      // Send each event individually to the API
      // (Could be optimized to accept batch in the future)
      await Promise.all(
        eventsToSend.map((event) =>
          fetch("/api/analytics", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify(event),
          })
        )
      );
    } catch (error) {
      console.warn("Failed to send analytics events:", error);
      // Events are lost on error (could implement retry logic)
    } finally {
      isSendingRef.current = false;
    }
  }, []);

  /**
   * Track an analytics event
   * Events are batched and sent automatically based on BATCH_CONFIG
   *
   * @param eventType - Type of event to track
   * @param metadata - Optional metadata object with additional context
   */
  const trackEvent = useCallback(
    (
      eventType: AnalyticsEventType,
      metadata?: AnalyticsEventMetadata & { locationId?: string }
    ) => {
      // Don't track events until session ID is ready
      if (!isReady || !sessionId) {
        console.warn("Analytics not ready, skipping event:", eventType);
        return;
      }

      // Extract locationId from metadata if provided
      const { locationId, ...restMetadata } = metadata || {};

      // Create event object
      const event: AnalyticsEvent = {
        eventType,
        sessionId,
        locationId,
        metadata: Object.keys(restMetadata).length > 0 ? restMetadata : undefined,
      };

      // Add to batch
      batchRef.current.push(event);

      // Send immediately if batch is full
      if (batchRef.current.length >= BATCH_CONFIG.maxBatchSize) {
        sendBatch();
        return;
      }

      // Otherwise, schedule batch send
      if (timerRef.current) {
        clearTimeout(timerRef.current);
      }

      timerRef.current = setTimeout(() => {
        sendBatch();
      }, BATCH_CONFIG.maxBatchWaitMs);
    },
    [sessionId, isReady, sendBatch]
  );

  /**
   * Manually flush any pending analytics events
   * Useful for ensuring events are sent before page unload
   */
  const flush = useCallback(() => {
    if (batchRef.current.length > 0) {
      sendBatch();
    }
  }, [sendBatch]);

  // Cleanup: flush pending events on unmount
  useEffect(() => {
    return () => {
      if (batchRef.current.length > 0) {
        // Use sendBeacon if available for reliable delivery on page unload
        if (typeof navigator !== "undefined" && navigator.sendBeacon) {
          batchRef.current.forEach((event) => {
            navigator.sendBeacon(
              "/api/analytics",
              JSON.stringify(event)
            );
          });
        } else {
          // Fallback to synchronous fetch
          flush();
        }
      }

      // Clear timer
      if (timerRef.current) {
        clearTimeout(timerRef.current);
      }
    };
  }, [flush]);

  return {
    /** Track an analytics event */
    trackEvent,

    /** Manually flush pending events */
    flush,

    /** Whether analytics is ready to track events */
    isReady,
  };
}
