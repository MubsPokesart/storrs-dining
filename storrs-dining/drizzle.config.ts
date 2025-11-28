import type { Config } from "drizzle-kit";

export default {
  schema: "./app/lib/db/schema.ts",
  out: "./drizzle/migrations",
  dialect: "sqlite",
  driver: "d1-http",
  dbCredentials: {
    wranglerConfigPath: "./wrangler.jsonc",
    databaseName: "dining-db",
  },
} satisfies Config;
