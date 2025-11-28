import { sqliteTable, text, integer, real } from "drizzle-orm/sqlite-core";

export const locations = sqliteTable("locations", {
  id: text("id").primaryKey(),
  name: text("name").notNull(),
  slug: text("slug").notNull().unique(),
  locationName: text("location_name"),
  latitude: real("latitude"),
  longitude: real("longitude"),
  hasLateNight: integer("has_late_night", { mode: "boolean" }).default(false),
  isActive: integer("is_active", { mode: "boolean" }).default(true),
});

export const menus = sqliteTable("menus", {
  id: integer("id").primaryKey({ autoIncrement: true }),
  locationId: text("location_id").notNull().references(() => locations.id),
  date: text("date").notNull(),
  mealPeriod: text("meal_period").notNull(),
});

export const menuItems = sqliteTable("menu_items", {
  id: integer("id").primaryKey({ autoIncrement: true }),
  menuId: integer("menu_id").notNull().references(() => menus.id),
  name: text("name").notNull(),
  station: text("station").notNull(),
  stationOrder: integer("station_order").default(0),
  isVegan: integer("is_vegan", { mode: "boolean" }).default(false),
  isVegetarian: integer("is_vegetarian", { mode: "boolean" }).default(false),
  isGlutenFree: integer("is_gluten_free", { mode: "boolean" }).default(false),
});

export const analyticsEvents = sqliteTable("analytics_events", {
  id: integer("id").primaryKey({ autoIncrement: true }),
  eventType: text("event_type").notNull(),
  locationId: text("location_id"),
  sessionId: text("session_id").notNull(),
  metadata: text("metadata"),
  createdAt: text("created_at").default("(datetime('now'))"),
});
