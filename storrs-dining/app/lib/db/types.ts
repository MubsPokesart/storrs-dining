import type { InferSelectModel } from "drizzle-orm";
import type { locations, menus, menuItems } from "./schema";

export type Location = InferSelectModel<typeof locations>;
export type Menu = InferSelectModel<typeof menus>;
export type MenuItem = InferSelectModel<typeof menuItems>;

export type LocationWithStatus = Location & {
  isOpen: boolean;
  currentMeal: string | null;
  currentMealLabel: string | null;
  closesAt: string | null;
  opensAt: string | null;
  closingSoon: boolean;
};

export type MenuWithItems = Menu & {
  items: MenuItem[];
};
