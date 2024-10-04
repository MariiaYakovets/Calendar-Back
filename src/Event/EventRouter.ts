import {Router} from "express"
import { createEvent, getAll } from "./EventController"

const eventRouter = Router()


eventRouter.get('/all', getAll)
eventRouter.post('/create-event', createEvent)