import dotenv from "dotenv";
import { createServer as http } from "http";
import jwt from "jsonwebtoken";
import mongoose from "mongoose";
import { Server } from "socket.io";
import { Seeder } from "./seeders/seeder";
import { createServer } from "./server";

dotenv.config();
const port = process.env.PORT || 3001;
const server = createServer();

try {
  console.log("DATABASE_URL", process.env.DATABASE_URL);
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

  const httpServer = http(server);
  const io = new Server(httpServer, {
    cors: {
      origin: "*",
      methods: ["GET", "POST"],
    },
    path: "/socket",
  });
  io.use((socket, next) => {
    const token = socket.handshake.auth.token;
    console.log("token", token);
    if (token) {
      const jwtSecret = process.env.JWT_SECRET || "JWT_SECRET";
      jwt.verify(token, jwtSecret, (err: any, user: any) => {
        if (err) {
          return next(new Error("unauthorized"));
        }
        next();
      });
    } else {
      next(new Error("unauthorized"));
    }
  }).on("connection", (socket) => {
    socket.on("disconnect", () => {
      console.log("user disconnected");
      socket.disconnect();
    });
    socket.on("join", (room) => {
      console.log("join", room);
      socket.join(room);
    });

    socket.on("leave", (room) => {
      console.log("leave", room);
      socket.leave(room);
    });

    socket.on("message", (message) => {
      console.log("message", message);
      io.to(message.room).emit("message", message);
    });

    socket.on("typing", (message) => {
      console.log("typing", message);
      io.to(message.room).emit("typing", message);
    });
  });
  httpServer.listen(port, () => {
    console.log(`API Ready at http://localhost:${port} 🚀`);
  });

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

  Seeder();
});
