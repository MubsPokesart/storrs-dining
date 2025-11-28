import type { LoaderFunctionArgs } from "react-router";

export async function loader({ context }: LoaderFunctionArgs) {
  return Response.json({ status: "ok", timestamp: new Date().toISOString() });
}
