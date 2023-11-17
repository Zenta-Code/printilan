import dotenv from "dotenv";
import { Express } from "express";
import fs from "fs";
import { Server } from "http";
import mongoose from "mongoose";
import { createServer } from "./libs/server";
import { createSocket } from "./libs/socket";

dotenv.config();

const port = process.env.PORT || 3001;

const server: Express = createServer();

const socketServer = createSocket(server) as Server;

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
    socketServer.listen(port, () => {
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
