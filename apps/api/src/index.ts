import dotenv from "dotenv";
import { Express } from "express";
import mongoose from "mongoose";
import { createServer } from "./server";
import { createSocket } from "./socket";

dotenv.config();

const port = process.env.PORT || 3001;
const server: Express = createServer();

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
    const socketServer = createSocket(server);
    socketServer.listen(port, () => {
      console.log(`API Ready at http://localhost:${port} 🚀`);
    });
  } catch (err) {
    console.log(err);
  }
  // try {
  //   console.log("====== API ENDPOINTS ======\n");
  //   console.log(listEndpoint(server));
  //   console.log("\n============================\n");
  // } catch (e) {
  //   console.log("Error listing endpoints\n");
  //   console.log(e);
  // }
  // server.listen(port, () => {
  //   console.log(`API Ready at http://localhost:${port} 🚀`);
  // });

  // Seeder();
});
