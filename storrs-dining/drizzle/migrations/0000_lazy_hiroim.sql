CREATE TABLE `analytics_events` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`event_type` text NOT NULL,
	`location_id` text,
	`session_id` text NOT NULL,
	`metadata` text,
	`created_at` text DEFAULT '(datetime(''now''))'
);
--> statement-breakpoint
CREATE TABLE `locations` (
	`id` text PRIMARY KEY NOT NULL,
	`name` text NOT NULL,
	`slug` text NOT NULL,
	`location_name` text,
	`latitude` real,
	`longitude` real,
	`has_late_night` integer DEFAULT false,
	`is_active` integer DEFAULT true
);
--> statement-breakpoint
CREATE UNIQUE INDEX `locations_slug_unique` ON `locations` (`slug`);--> statement-breakpoint
CREATE TABLE `menu_items` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`menu_id` integer NOT NULL,
	`name` text NOT NULL,
	`station` text NOT NULL,
	`station_order` integer DEFAULT 0,
	`is_vegan` integer DEFAULT false,
	`is_vegetarian` integer DEFAULT false,
	`is_gluten_free` integer DEFAULT false,
	FOREIGN KEY (`menu_id`) REFERENCES `menus`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `menus` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`location_id` text NOT NULL,
	`date` text NOT NULL,
	`meal_period` text NOT NULL,
	FOREIGN KEY (`location_id`) REFERENCES `locations`(`id`) ON UPDATE no action ON DELETE no action
);
