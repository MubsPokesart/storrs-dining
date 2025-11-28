import { drizzle } from "drizzle-orm/d1";
import { eq, and } from "drizzle-orm";
import * as schema from "./schema";

export function getDb(d1: D1Database) {
  return drizzle(d1, { schema });
}

export async function getAllLocations(db: ReturnType<typeof getDb>) {
  return db.select().from(schema.locations).where(eq(schema.locations.isActive, true));
}

export async function getMenuByLocationAndDate(
  db: ReturnType<typeof getDb>,
  locationId: string,
  date: string,
  mealPeriod: string
) {
  const menu = await db
    .select()
    .from(schema.menus)
    .where(
      and(
        eq(schema.menus.locationId, locationId),
        eq(schema.menus.date, date),
        eq(schema.menus.mealPeriod, mealPeriod)
      )
    )
    .limit(1);

  if (menu.length === 0) {
    return null;
  }

  const items = await db
    .select()
    .from(schema.menuItems)
    .where(eq(schema.menuItems.menuId, menu[0].id))
    .orderBy(schema.menuItems.stationOrder);

  return {
    ...menu[0],
    items,
  };
}

export async function insertAnalyticsEvent(
  db: ReturnType<typeof getDb>,
  event: {
    eventType: string;
    locationId?: string;
    sessionId: string;
    metadata?: object;
  }
) {
  const { eventType, locationId, sessionId, metadata } = event;

  await db.insert(schema.analyticsEvents).values({
    eventType,
    locationId: locationId ?? null,
    sessionId,
    metadata: metadata ? JSON.stringify(metadata) : null,
  });
}
