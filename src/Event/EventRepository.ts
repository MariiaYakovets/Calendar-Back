import client from "../prisma/client";

export async function getAll(): Promise<Event[] | null | string> {
  try {
    const events = client.event.findMany();
    if (events.length == 0) {
      return "No events found";
    }
    return events;
  } catch (err) {
    return err.message;
  }
}
