import { type RouteConfig, index, route } from "@react-router/dev/routes";

export default [
  index("routes/home.tsx"),
  route("api/health", "routes/api.health.tsx"),
  route("api/analytics", "routes/api.analytics.tsx"),
  route("api/menu/:locationId", "routes/api.menu.$locationId.tsx"),
  route("api/search", "routes/api.search.tsx"),
] satisfies RouteConfig;
