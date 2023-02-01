import { listCars } from "../controller/home-controller";
import { Router } from "express";

const homeRouter = Router();

homeRouter.get("/home", listCars);

export { homeRouter }