/**
 * Seeds D1 database from scraper JSON output
 * Run with: npx tsx scripts/seed.ts
 *
 * This script:
 * 1. Reads the scraper output JSON
 * 2. Generates SQL statements to insert menus and items
 * 3. Executes the SQL via wrangler d1 execute
 */

import { readFileSync, writeFileSync } from "fs";
import { execSync } from "child_process";
import { join, dirname } from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

interface ScraperOutput {
  date: string;
  menus: ScrapedMenu[];
}

interface ScrapedMenu {
  location_id: string;
  meal_period: string;
  items: ScrapedItem[];
}

interface ScrapedItem {
  name: string;
  station: string;
  station_order: number;
  is_vegan: boolean;
  is_vegetarian: boolean;
  is_gluten_free: boolean;
}

function escapeSql(value: string): string {
  return value.replace(/'/g, "''");
}

function main() {
  console.log("📥 Reading scraper output...");

  const scraperOutputPath = join(__dirname, "..", "scraper", "output", "output.json");
  const data: ScraperOutput = JSON.parse(readFileSync(scraperOutputPath, "utf-8"));

  console.log(`📅 Processing menus for date: ${data.date}`);
  console.log(`📊 Found ${data.menus.length} menu entries`);

  // Group by unique location_id + meal_period combinations
  const menuMap = new Map<string, ScrapedMenu>();
  for (const menu of data.menus) {
    const key = `${menu.location_id}:${menu.meal_period}`;
    if (menuMap.has(key)) {
      // Merge items if duplicate
      const existing = menuMap.get(key)!;
      existing.items.push(...menu.items);
    } else {
      menuMap.set(key, menu);
    }
  }

  // Generate SQL statements
  const sqlStatements: string[] = [];

  // Defer foreign key constraints until end of transaction
  // D1 enforces foreign keys by default, but we need to defer them during bulk inserts
  // MUST be set BEFORE starting the transaction
  sqlStatements.push("PRAGMA defer_foreign_keys = ON;");

  // Start transaction
  sqlStatements.push("BEGIN TRANSACTION;");

  // Delete existing menu items for today (cascade will handle menu_items)
  sqlStatements.push(`
DELETE FROM menus WHERE date = '${data.date}';
  `.trim());

  // Insert menus and items
  for (const menu of menuMap.values()) {
    const { location_id, meal_period, items } = menu;

    if (items.length === 0) {
      console.log(`⚠️  Skipping empty menu: ${location_id} - ${meal_period}`);
      continue;
    }

    // Normalize meal_period to lowercase to match hours config
    const normalizedMealPeriod = meal_period.toLowerCase();

    // Insert menu and get the ID
    // We'll use a two-step approach: insert menu, then insert items with menu_id
    const menuInsertSql = `
INSERT INTO menus (location_id, date, meal_period)
VALUES ('${location_id}', '${data.date}', '${escapeSql(normalizedMealPeriod)}');
    `.trim();

    sqlStatements.push(menuInsertSql);

    // Insert menu items
    // We need to get the menu_id that was just inserted
    // SQLite doesn't support RETURNING in the same way, so we'll query for it
    const menuItemsInsertSql = items.map((item) => {
      const vegan = item.is_vegan ? 1 : 0;
      const vegetarian = item.is_vegetarian ? 1 : 0;
      const glutenFree = item.is_gluten_free ? 1 : 0;

      return `
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, '${escapeSql(item.name)}', '${escapeSql(item.station)}', ${item.station_order}, ${vegan}, ${vegetarian}, ${glutenFree}
FROM menus
WHERE location_id = '${location_id}' AND date = '${data.date}' AND meal_period = '${escapeSql(normalizedMealPeriod)}';
      `.trim();
    }).join("\n");

    sqlStatements.push(menuItemsInsertSql);

    console.log(`✅ Prepared ${items.length} items for ${location_id} - ${meal_period}`);
  }

  // Commit transaction
  sqlStatements.push("COMMIT;");

  // Re-enable immediate foreign key checking after transaction
  sqlStatements.push("PRAGMA defer_foreign_keys = OFF;");

  // Write SQL to temporary file
  const sqlFilePath = join(__dirname, "seed-menus.sql");
  const sqlContent = sqlStatements.join("\n\n");
  writeFileSync(sqlFilePath, sqlContent, "utf-8");

  console.log(`\n📝 SQL file written to: ${sqlFilePath}`);
  console.log(`📦 Total SQL statements: ${sqlStatements.length}`);

  // Execute SQL via wrangler
  console.log("\n🚀 Executing SQL via wrangler...");

  try {
    // Check if we should use --local or --remote
    const isLocal = process.argv.includes("--local");
    const localFlag = isLocal ? "--local" : "--remote";

    const command = `wrangler d1 execute dining-db ${localFlag} --file=${sqlFilePath}`;
    console.log(`💻 Running: ${command}`);

    const output = execSync(command, {
      cwd: join(__dirname, ".."),
      encoding: "utf-8",
    });

    console.log(output);
    console.log("✅ Database seeded successfully!");
  } catch (error) {
    console.error("❌ Error executing SQL:");
    if (error instanceof Error) {
      console.error(error.message);
    }
    process.exit(1);
  }
}

// Run main if this is the entry point
main();
