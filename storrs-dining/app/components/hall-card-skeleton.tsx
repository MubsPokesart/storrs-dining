import { cn } from "~/lib/utils";

/**
 * Loading skeleton for HallCard component
 *
 * Matches the visual structure of HallCard for smooth loading states
 */
export function HallCardSkeleton({ className }: { className?: string }) {
  return (
    <div
      className={cn(
        "rounded-2xl bg-[rgb(var(--color-bg-secondary))] p-4 md:p-5",
        "shadow-[var(--shadow-card)]",
        "animate-pulse",
        className
      )}
      aria-label="Loading dining hall"
      role="status"
    >
      {/* Hall name skeleton */}
      <div className="h-6 w-32 bg-gray-200 rounded mb-2" />

      {/* Location name skeleton */}
      <div className="h-4 w-48 bg-gray-200 rounded mb-4" />

      {/* Status badge skeleton */}
      <div className="h-8 w-20 bg-gray-200 rounded-full mb-4" />

      {/* Timing info skeleton */}
      <div className="h-4 w-36 bg-gray-200 rounded mb-4" />

      {/* Footer divider */}
      <div className="pt-4 border-t border-[rgb(var(--color-border-secondary))]">
        <div className="h-4 w-24 bg-gray-200 rounded" />
      </div>
    </div>
  );
}
