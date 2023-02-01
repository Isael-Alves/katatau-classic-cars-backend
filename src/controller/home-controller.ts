import homeServices from "../services/home-service";
import { Request, Response } from "express";

export async function listCars(req: Request, res: Response) {
    try {
        const resposta = await homeServices.getFiveNewNotices();
        return res.send(resposta);
    } catch (error) {
        return res.sendStatus(404);
    }
}