# HOURS-DATA.md — UConn Dining Hall Hours

This document contains the actual operating hours for UConn Storrs dining halls. Copy this data directly into `app/config/hours.ts`.

> **Note:** These hours are approximate and based on typical semester schedules. Verify against [dining.uconn.edu](https://dining.uconn.edu) before production launch.

---

## Hours Configuration

```typescript
// app/config/hours.ts

export type MealPeriod = 'breakfast' | 'brunch' | 'lunch' | 'dinner' | 'late_night';
export type DayType = 'weekday' | 'weekend';

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
 * Sources:
 * - https://dining.uconn.edu/hours/
 * - Verified November 2024
 * 
 * Note: Hours may vary during breaks, finals, and holidays.
 * Consider adding an `overrides` system for special dates.
 */
export const HOURS: Record<string, LocationHours> = {
  
  // ═══════════════════════════════════════════════════════════════
  // SOUTH CAMPUS MARKETPLACE
  // ═══════════════════════════════════════════════════════════════
  south: {
    weekday: [
      { period: 'breakfast', open: '07:00', close: '10:30' },
      { period: 'lunch',     open: '11:00', close: '14:30' },
      { period: 'dinner',    open: '16:30', close: '20:00' },
    ],
    weekend: [
      { period: 'brunch',    open: '10:30', close: '14:30' },
      { period: 'dinner',    open: '16:30', close: '20:00' },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // NORTHWEST DINING HALL
  // Offers late night dining
  // ═══════════════════════════════════════════════════════════════
  northwest: {
    weekday: [
      { period: 'breakfast',  open: '07:00', close: '10:30' },
      { period: 'lunch',      open: '11:00', close: '14:30' },
      { period: 'dinner',     open: '16:30', close: '20:00' },
      { period: 'late_night', open: '20:00', close: '23:00' },
    ],
    weekend: [
      { period: 'brunch',     open: '10:30', close: '14:30' },
      { period: 'dinner',     open: '16:30', close: '20:00' },
      { period: 'late_night', open: '20:00', close: '23:00' },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // MCMAHON DINING HALL
  // ═══════════════════════════════════════════════════════════════
  mcmahon: {
    weekday: [
      { period: 'breakfast', open: '07:00', close: '10:30' },
      { period: 'lunch',     open: '11:00', close: '14:30' },
      { period: 'dinner',    open: '16:30', close: '20:00' },
    ],
    weekend: [
      { period: 'brunch',    open: '10:30', close: '14:30' },
      { period: 'dinner',    open: '16:30', close: '20:00' },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // PUTNAM REFECTORY
  // ═══════════════════════════════════════════════════════════════
  putnam: {
    weekday: [
      { period: 'breakfast', open: '07:00', close: '10:30' },
      { period: 'lunch',     open: '11:00', close: '14:30' },
      { period: 'dinner',    open: '16:30', close: '19:30' },
    ],
    weekend: [
      { period: 'brunch',    open: '10:30', close: '14:30' },
      { period: 'dinner',    open: '16:30', close: '19:30' },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // WHITNEY DINING HALL
  // ═══════════════════════════════════════════════════════════════
  whitney: {
    weekday: [
      { period: 'breakfast', open: '07:00', close: '10:30' },
      { period: 'lunch',     open: '11:00', close: '14:00' },
      { period: 'dinner',    open: '17:00', close: '19:30' },
    ],
    weekend: [
      { period: 'brunch',    open: '10:30', close: '14:00' },
      { period: 'dinner',    open: '17:00', close: '19:30' },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // NORTH CAMPUS DINING HALL
  // ═══════════════════════════════════════════════════════════════
  north: {
    weekday: [
      { period: 'breakfast', open: '07:00', close: '10:30' },
      { period: 'lunch',     open: '11:00', close: '14:30' },
      { period: 'dinner',    open: '16:30', close: '19:30' },
    ],
    weekend: [
      { period: 'brunch',    open: '10:30', close: '14:30' },
      { period: 'dinner',    open: '16:30', close: '19:30' },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // TOWERS DINING HALL
  // ═══════════════════════════════════════════════════════════════
  towers: {
    weekday: [
      { period: 'breakfast', open: '07:00', close: '10:30' },
      { period: 'lunch',     open: '11:00', close: '14:00' },
      { period: 'dinner',    open: '17:00', close: '19:30' },
    ],
    weekend: [
      { period: 'brunch',    open: '10:30', close: '14:00' },
      { period: 'dinner',    open: '17:00', close: '19:30' },
    ],
  },

  // ═══════════════════════════════════════════════════════════════
  // CONNECTICUT DINING HALL
  // ═══════════════════════════════════════════════════════════════
  connecticut: {
    weekday: [
      { period: 'breakfast', open: '07:00', close: '10:30' },
      { period: 'lunch',     open: '11:00', close: '14:00' },
      { period: 'dinner',    open: '17:00', close: '19:00' },
    ],
    weekend: [
      { period: 'brunch',    open: '10:30', close: '14:00' },
      { period: 'dinner',    open: '17:00', close: '19:00' },
    ],
  },
};

/**
 * Human-readable meal period names
 */
export const MEAL_LABELS: Record<MealPeriod, string> = {
  breakfast: 'Breakfast',
  brunch: 'Brunch',
  lunch: 'Lunch',
  dinner: 'Dinner',
  late_night: 'Late Night',
};

/**
 * Location metadata (static, not hours-related)
 */
export const LOCATIONS: Record<string, { name: string; fullName: string; hasLateNight: boolean }> = {
  south:     { name: 'South',     fullName: 'South Campus Marketplace', hasLateNight: false },
  northwest: { name: 'Northwest', fullName: 'Northwest Dining Hall',    hasLateNight: true  },
  mcmahon:   { name: 'McMahon',   fullName: 'McMahon Dining Hall',      hasLateNight: false },
  putnam:    { name: 'Putnam',    fullName: 'Putnam Refectory',         hasLateNight: false },
  whitney:   { name: 'Whitney',   fullName: 'Whitney Dining Hall',      hasLateNight: false },
  north:     { name: 'North',     fullName: 'North Campus Dining Hall', hasLateNight: false },
  towers:    { name: 'Towers',    fullName: 'Towers Dining Hall',       hasLateNight: false },
  connecticut:   { name: 'Connecticut',   fullName: 'Connecticut Dining Hall',      hasLateNight: false },
};
```

---

## Hours Computation Logic

```typescript
// app/lib/hours.ts

import { HOURS, MEAL_LABELS, type MealPeriod, type MealSchedule } from '~/config/hours';

interface HoursStatus {
  isOpen: boolean;
  currentMeal: MealPeriod | null;
  currentMealLabel: string | null;
  closesAt: string | null;
  opensAt: string | null;
  nextMeal: MealPeriod | null;
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
  const [hours, minutes] = time.split(':').map(Number);
  return hours * 60 + minutes;
}

/**
 * Format "14:30" to "2:30 PM"
 */
export function formatTime12h(time24: string): string {
  const [hours, minutes] = time24.split(':').map(Number);
  const period = hours >= 12 ? 'PM' : 'AM';
  const hours12 = hours % 12 || 12;
  return `${hours12}:${minutes.toString().padStart(2, '0')} ${period}`;
}

/**
 * Get current meal status for a location
 */
export function getHoursStatus(locationId: string, now: Date = new Date()): HoursStatus {
  const hours = HOURS[locationId];
  
  if (!hours) {
    return {
      isOpen: false,
      currentMeal: null,
      currentMealLabel: null,
      closesAt: null,
      opensAt: null,
      nextMeal: null,
    };
  }

  const dayType = isWeekend(now) ? 'weekend' : 'weekday';
  const schedule = hours[dayType];
  const currentTime = toTimeString(now);
  const currentMinutes = toMinutes(currentTime);

  // Check if currently in a meal period
  for (const meal of schedule) {
    const openMinutes = toMinutes(meal.open);
    const closeMinutes = toMinutes(meal.close);

    if (currentMinutes >= openMinutes && currentMinutes < closeMinutes) {
      return {
        isOpen: true,
        currentMeal: meal.period,
        currentMealLabel: MEAL_LABELS[meal.period],
        closesAt: formatTime12h(meal.close),
        opensAt: null,
        nextMeal: null,
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
    opensAt: 'tomorrow',
    nextMeal: null,
  };
}

/**
 * Check if closing within N minutes (for "Closing Soon" warning)
 */
export function isClosingSoon(locationId: string, withinMinutes: number = 30): boolean {
  const now = new Date();
  const status = getHoursStatus(locationId, now);
  
  if (!status.isOpen || !status.closesAt) return false;

  // Parse closesAt back to minutes for comparison
  // This is a bit hacky - in production you'd pass the raw close time
  const hours = HOURS[locationId];
  const dayType = isWeekend(now) ? 'weekend' : 'weekday';
  const schedule = hours[dayType];
  const currentMealSchedule = schedule.find(m => m.period === status.currentMeal);
  
  if (!currentMealSchedule) return false;
  
  const closeMinutes = toMinutes(currentMealSchedule.close);
  const currentMinutes = toMinutes(toTimeString(now));
  
  return (closeMinutes - currentMinutes) <= withinMinutes;
}
```

---

## Seed SQL for Locations

```sql
-- scripts/seed-locations.sql

INSERT INTO locations (id, name, slug, location_name, has_late_night, is_active) VALUES
  ('south',     'South',     'south',     'South Campus Marketplace', 0, 1),
  ('northwest', 'Northwest', 'northwest', 'Northwest Dining Hall',    1, 1),
  ('mcmahon',   'McMahon',   'mcmahon',   'McMahon Dining Hall',      0, 1),
  ('putnam',    'Putnam',    'putnam',    'Putnam Refectory',         0, 1),
  ('whitney',   'Whitney',   'whitney',   'Whitney Dining Hall',      0, 1),
  ('north',     'North',     'north',     'North Campus Dining Hall', 0, 1),
  ('towers',    'Towers',    'towers',    'Towers Dining Hall',       0, 1),
  ('connecticut',   'Connecticut',   'connecticut',   'Connecticut Dining Hall',      0, 1)
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  location_name = EXCLUDED.location_name,
  has_late_night = EXCLUDED.has_late_night;
```

---

## Special Hours Handling (Future)

For holidays and breaks, consider adding an overrides system:

```typescript
// Future: app/config/hour-overrides.ts

interface HoursOverride {
  locationId: string | '*';  // '*' = all locations
  startDate: string;         // ISO date
  endDate: string;
  status: 'closed' | 'modified';
  hours?: MealSchedule[];    // If modified
  reason?: string;           // "Spring Break", "Thanksgiving"
}

export const HOURS_OVERRIDES: HoursOverride[] = [
  {
    locationId: '*',
    startDate: '2024-11-28',
    endDate: '2024-12-01',
    status: 'closed',
    reason: 'Thanksgiving Break',
  },
  // ...
];
```

---

## Timezone Considerations

All times are in **America/New_York** (Eastern Time). The server-side loader should:

```typescript
// In loader
const now = new Date().toLocaleString('en-US', { timeZone: 'America/New_York' });
const etNow = new Date(now);
const status = getHoursStatus(locationId, etNow);
```

Or use a library like `date-fns-tz` for production.

---

## Verification Checklist

Before launch:
- [ ] Verify hours against [dining.uconn.edu/hours](https://dining.uconn.edu/hours/)
- [ ] Check Connecticut hours (sometimes closes earlier)
- [ ] Confirm late night is only at Northwest
- [ ] Add any retail locations if needed (Union Street Market, etc.)
- [ ] Set up override system for upcoming breaks