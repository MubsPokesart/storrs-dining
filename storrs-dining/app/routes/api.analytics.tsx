import type { ActionFunctionArgs } from "react-router";
import { getDb, insertAnalyticsEvent } from "~/lib/db/queries";

export async function action({ request, context }: ActionFunctionArgs) {
  if (request.method !== "POST") {
    return Response.json({ error: "Method not allowed" }, { status: 405 });
  }

  const body = await request.json();
  const { eventType, locationId, sessionId, metadata } = body;

  if (!eventType || !sessionId) {
    return Response.json({ error: "Missing required fields" }, { status: 400 });
  }

  const db = getDb(context.cloudflare.env.DB);
  await insertAnalyticsEvent(db, { eventType, locationId, sessionId, metadata });

  return Response.json({ success: true }, { status: 201 });
}
