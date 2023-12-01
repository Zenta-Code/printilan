import dotenv from "dotenv";
import { Express } from "express";
import fs from "fs";
import { Server, createServer } from "http";
import mongoose from "mongoose";
import { createExpressServer } from "./libs/server";
import { createSocketServer } from "./libs/socket";

dotenv.config();

const port = process.env.PORT || 3001;

const server: Express = createExpressServer();

const httpServer: Server = createServer(server);

export const io = createSocketServer(httpServer); 

try {
  mongoose.connect(
    process.env.DATABASE_URL || "mongodb://127.0.0.1:27017/sky_print"
  );
} catch (error) {
  console.error("Error connecting to database: \n", error);
}
mongoose.connection.on("error", (err) => {
  console.error(err);
});

mongoose.connection.on("connected", () => {
  console.log("Connected to MongoDB 🚀");

  try {
    httpServer.listen(port, () => {
      console.log(`API Ready at http://localhost:${port} 🚀`);
    });
  } catch (err) {
    console.log(err);
  }

  // Seeder();
});

// create files folder if not exist
if (!fs.existsSync("./files")) {
  fs.mkdirSync("./files");
}
