export type MealPeriod = "breakfast" | "brunch" | "lunch" | "dinner" | "late night";
export type DayType = "weekday" | "weekend";

export interface MealSchedule {
  period: MealPeriod;
  open: string;  // 24h format "HH:MM"
  close: string;
}

export interface LocationHours {
  weekday: MealSchedule[];
  weekend: MealSchedule[];
}

/**
 * Dining hall hours for UConn Storrs campus.
 *
 * Source: dining-hall-schedule.txt (ground truth)
 * Last updated: November 2024
 *
 * Note: Late night at South & Northwest is Sunday-Thursday until 10pm.
 * Weekend hours include late night on Sunday only.
 */
export const HOURS: Record<string, LocationHours> = {

  // ═══════════════════════════════════════════════════════════════
  // SOUTH CAMPUS MARKETPLACE
  // Late Night: Sunday-Thursday until 10pm
  // ═══════════════════════════════════════════════════════════════
  south: {
    weekday: [
      { period: "breakfast", open: "07:00", close: "10:45" },
      { period: "lunch", open: "11:00", close: "15:00" },
      { period: "dinner", open: "16:30", close: "19:15" },
      { period: "late night", open: "19:15", close: "22:00" },
    ],
    weekend: [
      { period: "breakfast", open: "07:00", close: "09:30" },
      { period: "brunch", open: "09:30", close: "15:00" },
      { period: "dinner", open: "16:30", close: "19:15" },
      { period: "late night", open: "19:15", close: "22:00" },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // NORTHWEST DINING HALL
  // Late Night: Sunday-Thursday until 10pm
  // ═══════════════════════════════════════════════════════════════
  northwest: {
    weekday: [
      { period: "breakfast", open: "07:00", close: "10:45" },
      { period: "lunch", open: "11:00", close: "14:15" },
      { period: "dinner", open: "15:45", close: "19:15" },
      { period: "late night", open: "19:15", close: "22:00" },
    ],
    weekend: [
      { period: "brunch", open: "10:30", close: "14:15" },
      { period: "dinner", open: "15:45", close: "19:15" },
      { period: "late night", open: "19:15", close: "22:00" },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // MCMAHON DINING HALL
  // ═══════════════════════════════════════════════════════════════
  mcmahon: {
    weekday: [
      { period: "breakfast", open: "07:00", close: "10:45" },
      { period: "lunch", open: "11:00", close: "14:00" },
      { period: "dinner", open: "15:30", close: "19:15" },
    ],
    weekend: [
      { period: "brunch", open: "10:30", close: "14:00" },
      { period: "dinner", open: "15:30", close: "19:15" },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // PUTNAM REFECTORY
  // ═══════════════════════════════════════════════════════════════
  putnam: {
    weekday: [
      { period: "breakfast", open: "07:00", close: "10:45" },
      { period: "lunch", open: "11:00", close: "14:30" },
      { period: "dinner", open: "16:00", close: "19:15" },
    ],
    weekend: [
      { period: "brunch", open: "09:30", close: "14:30" },
      { period: "dinner", open: "16:00", close: "19:15" },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // WHITNEY DINING HALL
  // ═══════════════════════════════════════════════════════════════
  whitney: {
    weekday: [
      { period: "breakfast", open: "07:00", close: "10:45" },
      { period: "lunch", open: "11:00", close: "15:00" },
      { period: "dinner", open: "16:30", close: "19:15" },
    ],
    weekend: [
      { period: "brunch", open: "10:30", close: "15:00" },
      { period: "dinner", open: "16:30", close: "19:15" },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // NORTH CAMPUS DINING HALL
  // ═══════════════════════════════════════════════════════════════
  north: {
    weekday: [
      { period: "breakfast", open: "07:00", close: "10:45" },
      { period: "lunch", open: "11:00", close: "15:00" },
      { period: "dinner", open: "16:30", close: "19:15" },
    ],
    weekend: [
      { period: "brunch", open: "10:30", close: "15:00" },
      { period: "dinner", open: "16:30", close: "19:15" },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // CONNECTICUT DINING HALL
  // ═══════════════════════════════════════════════════════════════
  connecticut: {
    weekday: [
      { period: "breakfast", open: "07:00", close: "10:45" },
      { period: "lunch", open: "11:00", close: "14:30" },
      { period: "dinner", open: "16:00", close: "19:15" },
    ],
    weekend: [
      { period: "brunch", open: "10:30", close: "14:30" },
      { period: "dinner", open: "16:00", close: "19:15" },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // TOWERS / GELFENBIEN DINING HALL
  // ═══════════════════════════════════════════════════════════════
  towers: {
    weekday: [
      { period: "breakfast", open: "07:00", close: "10:45" },
      { period: "lunch", open: "11:00", close: "15:00" },
      { period: "dinner", open: "16:30", close: "19:15" },
    ],
    weekend: [
      { period: "brunch", open: "09:30", close: "15:00" },
      { period: "dinner", open: "16:30", close: "19:15" },
    ],
  },
};

/**
 * Human-readable meal period names
 */
export const MEAL_LABELS: Record<MealPeriod, string> = {
  breakfast: "Breakfast",
  brunch: "Brunch",
  lunch: "Lunch",
  dinner: "Dinner",
  "late night": "Late Night",
};

/**
 * Location metadata (static, not hours-related)
 */
export const LOCATIONS: Record<string, { name: string; fullName: string; hasLateNight: boolean }> = {
  south: { name: "South", fullName: "South Campus Marketplace", hasLateNight: true },
  northwest: { name: "Northwest", fullName: "Northwest Dining Hall", hasLateNight: true },
  mcmahon: { name: "McMahon", fullName: "McMahon Dining Hall", hasLateNight: false },
  putnam: { name: "Putnam", fullName: "Putnam Refectory", hasLateNight: false },
  whitney: { name: "Whitney", fullName: "Whitney Dining Hall", hasLateNight: false },
  north: { name: "North", fullName: "North Campus Dining Hall", hasLateNight: false },
  towers: { name: "Towers", fullName: "Gelfenbien Dining Hall", hasLateNight: false },
  connecticut: { name: "Connecticut", fullName: "Connecticut Dining Hall", hasLateNight: false },
};
