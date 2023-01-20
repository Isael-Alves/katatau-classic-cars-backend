import express, { Express } from "express";
import cors from "cors";
import dotenv from "dotenv";
import { connectDb, disconnectDB } from "./config/database";
dotenv.config();

const app = express();

app
  .use(cors())
  .use(express.json())
  .get("/health", (_req, res) => res.send("OK"));

export function init(): Promise<Express> {
  connectDb();
  return Promise.resolve(app);
}

export async function close(): Promise<void> {
  await disconnectDB();
}

const port = process.env.PORT || 4000;
app.listen(port, () => {
  console.log(`Server listen running on port: ${port}`);
});

export default app;
