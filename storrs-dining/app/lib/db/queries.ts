import { drizzle } from "drizzle-orm/d1";
import { eq, and, like } from "drizzle-orm";
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

export async function searchMenuItems(
  db: ReturnType<typeof getDb>,
  query: string,
  date: string
) {
  // Search for menu items matching the query for today's menus
  const results = await db
    .select({
      itemId: schema.menuItems.id,
      itemName: schema.menuItems.name,
      station: schema.menuItems.station,
      isVegan: schema.menuItems.isVegan,
      isVegetarian: schema.menuItems.isVegetarian,
      isGlutenFree: schema.menuItems.isGlutenFree,
      menuId: schema.menus.id,
      mealPeriod: schema.menus.mealPeriod,
      locationId: schema.menus.locationId,
      locationName: schema.locations.name,
      locationSlug: schema.locations.slug,
    })
    .from(schema.menuItems)
    .innerJoin(schema.menus, eq(schema.menuItems.menuId, schema.menus.id))
    .innerJoin(schema.locations, eq(schema.menus.locationId, schema.locations.id))
    .where(
      and(
        like(schema.menuItems.name, `%${query}%`),
        eq(schema.menus.date, date),
        eq(schema.locations.isActive, true)
      )
    )
    .limit(50);

  return results;
}
