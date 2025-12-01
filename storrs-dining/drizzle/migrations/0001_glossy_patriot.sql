PRAGMA foreign_keys=OFF;--> statement-breakpoint
CREATE TABLE `__new_analytics_events` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`event_type` text NOT NULL,
	`location_id` text,
	`session_id` text NOT NULL,
	`metadata` text,
	`created_at` text DEFAULT (datetime('now'))
);
--> statement-breakpoint
INSERT INTO `__new_analytics_events`("id", "event_type", "location_id", "session_id", "metadata", "created_at") SELECT "id", "event_type", "location_id", "session_id", "metadata", "created_at" FROM `analytics_events`;--> statement-breakpoint
DROP TABLE `analytics_events`;--> statement-breakpoint
ALTER TABLE `__new_analytics_events` RENAME TO `analytics_events`;--> statement-breakpoint
PRAGMA foreign_keys=ON;