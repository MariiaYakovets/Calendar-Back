import {Prisma,  } from "@prisma/client"
import { create } from "ts-node"
import { getAll } from "./EventRepository"


export async function getAllService(): Promise<Event[] | null | string> {
    const allEvents = await getAll()
    return allEvents
}
export async function createEventService(data){
    const event = await create(data)
    return event
}