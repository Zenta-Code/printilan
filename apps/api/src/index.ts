import dotenv from "dotenv";
import { Express } from "express";
import fs from "fs";
import { Server, createServer } from "http";
import mongoose from "mongoose";
import { connectMongo } from "./libs/db";
import { createExpressServer } from "./libs/server";
import { createSocketServer } from "./libs/socket";
import { KodePosSeeder } from "./seeders/kode-pos";

dotenv.config();

const dbUrl = process.env.DEV_DATABASE_URL || "mongodb://127.0.0.1:27017";
const dbName = process.env.MONGO_DB_NAME || "sky_print";
const port = parseInt(process.env.PORT || "3001");

async function MainApiApp() {
  const server: Express = createExpressServer();

  const httpServer: Server = createServer(server);

  const io = createSocketServer(httpServer);

  await connectMongo(dbUrl, dbName);

  mongoose.connection.on("connected", () => {
    console.log("Connected to MongoDB 🚀");
    httpServer.listen(port, () => {
      console.log(`API Ready at http://localhost:${port} 🚀`);
    });
    KodePosSeeder();
  });

  if (!fs.existsSync("./files")) {
    fs.mkdirSync("./files");
  }
}

MainApiApp();
