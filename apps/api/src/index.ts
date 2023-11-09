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
    path: "/sky-printing",
    maxHttpBufferSize: 1e8,
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
  })
    .on("connection", (socket) => {
      // const roomId: string = socket.handshake.query.roomId as string;

      // socket.join(roomId);

      // socket.on("disconnect", () => {
      //   socket.leave(roomId);
      // });

      // socket.on("message", (message) => {
      //   const receiver = message.receiver;
      //   const sender = message.sender;
      //   const roomId = message.roomId;
      //   const content = message.content;

      //   io.to(roomId).emit("message", {
      //     receiver,
      //     sender,
      //     content,
      //   });
      // });
      socket.on("join", (roomId: string) => {
        console.log("join", roomId);
        socket.join(roomId);
      });

      socket.on("leave", (roomId: string) => {
        console.log("leave", roomId);
        socket.leave(roomId);
      });

      socket.on("message", (message) => {
        console.log("message", message);
        const receiver = message.receiver;
        const sender = message.sender;
        const roomId = message.roomId;
        const content = message.content;

        io.to(roomId).emit("message", {
          receiver,
          sender,
          content,
        });
      });
    })
    .on("error", (err) => {
      console.log("Socket error", err);
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
