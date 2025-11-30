import { HOURS, MEAL_LABELS, type MealPeriod, type MealSchedule } from "~/config/hours";

interface HoursStatus {
  isOpen: boolean;
  currentMeal: MealPeriod | null;
  currentMealLabel: string | null;
  closesAt: string | null;
  opensAt: string | null;
  nextMeal: MealPeriod | null;
  closingSoon: boolean;
}

/**
 * Get current time in Eastern Time (ET)
 * Handles both EST and EDT automatically
 */
export function getEasternTime(): Date {
  const now = new Date();
  // Convert to Eastern Time using Intl API
  const etString = now.toLocaleString("en-US", { timeZone: "America/New_York" });
  return new Date(etString);
}

/**
 * Get today's date in Eastern Time as YYYY-MM-DD string
 */
export function getTodayEastern(): string {
  const now = new Date();
  // Use toLocaleDateString with Eastern timezone to get the correct date parts
  const options: Intl.DateTimeFormatOptions = {
    timeZone: "America/New_York",
    year: "numeric",
    month: "2-digit",
    day: "2-digit",
  };
  const parts = new Intl.DateTimeFormat("en-CA", options).format(now);
  return parts; // en-CA format is already YYYY-MM-DD
}

/**
 * Check if a date falls on a weekend
 */
export function isWeekend(date: Date): boolean {
  const day = date.getDay();
  return day === 0 || day === 6; // Sunday = 0, Saturday = 6
}

/**
 * Format Date to "HH:MM" string
 */
export function toTimeString(date: Date): string {
  return date.toTimeString().slice(0, 5);
}

/**
 * Convert "HH:MM" to minutes since midnight
 */
function toMinutes(time: string): number {
  const [hours, minutes] = time.split(":").map(Number);
  return hours * 60 + minutes;
}

/**
 * Format "14:30" to "2:30 PM"
 */
export function formatTime12h(time24: string): string {
  const [hours, minutes] = time24.split(":").map(Number);
  const period = hours >= 12 ? "PM" : "AM";
  const hours12 = hours % 12 || 12;
  return `${hours12}:${minutes.toString().padStart(2, "0")} ${period}`;
}

/**
 * Get current meal status for a location
 * Uses Eastern Time by default
 */
export function getHoursStatus(locationId: string, now: Date = getEasternTime()): HoursStatus {
  const hours = HOURS[locationId];

  if (!hours) {
    return {
      isOpen: false,
      currentMeal: null,
      currentMealLabel: null,
      closesAt: null,
      opensAt: null,
      nextMeal: null,
      closingSoon: false,
    };
  }

  const dayType = isWeekend(now) ? "weekend" : "weekday";
  const schedule = hours[dayType];
  const currentTime = toTimeString(now);
  const currentMinutes = toMinutes(currentTime);

  // Check if currently in a meal period
  for (const meal of schedule) {
    const openMinutes = toMinutes(meal.open);
    const closeMinutes = toMinutes(meal.close);

    if (currentMinutes >= openMinutes && currentMinutes < closeMinutes) {
      const minutesUntilClose = closeMinutes - currentMinutes;
      return {
        isOpen: true,
        currentMeal: meal.period,
        currentMealLabel: MEAL_LABELS[meal.period],
        closesAt: formatTime12h(meal.close),
        opensAt: null,
        nextMeal: null,
        closingSoon: minutesUntilClose <= 30,
      };
    }
  }

  // Find next meal period
  for (const meal of schedule) {
    const openMinutes = toMinutes(meal.open);

    if (currentMinutes < openMinutes) {
      return {
        isOpen: false,
        currentMeal: null,
        currentMealLabel: null,
        closesAt: null,
        opensAt: formatTime12h(meal.open),
        nextMeal: meal.period,
        closingSoon: false,
      };
    }
  }

  // After all meals today - next opening is tomorrow
  // For simplicity, just say "tomorrow"
  return {
    isOpen: false,
    currentMeal: null,
    currentMealLabel: null,
    closesAt: null,
    opensAt: "tomorrow",
    nextMeal: null,
    closingSoon: false,
  };
}

/**
 * Check if closing within N minutes (for "Closing Soon" warning)
 */
export function isClosingSoon(locationId: string, withinMinutes: number = 30): boolean {
  const now = getEasternTime();
  const status = getHoursStatus(locationId, now);

  if (!status.isOpen || !status.closesAt) return false;

  // Parse closesAt back to minutes for comparison
  // This is a bit hacky - in production you'd pass the raw close time
  const hours = HOURS[locationId];
  const dayType = isWeekend(now) ? "weekend" : "weekday";
  const schedule = hours[dayType];
  const currentMealSchedule = schedule.find((m) => m.period === status.currentMeal);

  if (!currentMealSchedule) return false;

  const closeMinutes = toMinutes(currentMealSchedule.close);
  const currentMinutes = toMinutes(toTimeString(now));

  return (closeMinutes - currentMinutes) <= withinMinutes;
}
