import { Express } from "express";
import { createServer as http } from "http";
import { Server } from "socket.io";
export const createSocket = (server: Express) => {
  const httpServer = http(server);
  const io = new Server(httpServer, {
    cors: {
      origin: "*",
    },
  });
  io.on("connection", (socket) => {
    console.log("Socket connected", socket.id);
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
  });
  console.log(`Socket Ready Launched 🚀`);
  return httpServer;
};
