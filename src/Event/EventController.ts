import {Request, Response} from "express"
import { createEventService, getAllService } from "./EventService"


export async function getAll(req:Request, res: Response) {
    const allEvents = await getAllService()
    res.json(allEvents) 
    
}

export async function createEvent(req: Request, res: Response){
    const event = req.body
    const newEvent = await createEventService(event)
    res.json(newEvent)
}