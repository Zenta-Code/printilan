import { Express } from "express";
import { createServer as http } from "http";
import { Types } from "mongoose";
import { Server } from "socket.io";
import { Document } from "./model/document";
import { Order } from "./model/order";
export const createSocket = (server: Express) => {
  try {
    const httpServer = http(server);
    const io = new Server(httpServer, {
      cors: {
        origin: "*",
      },
      path: process.env.SOCKET_PATH || "/socket.io",
    });
    io.on("connection", (socket) => {
      console.log("Socket connected", socket.id);
      socket.on("join", (roomId: string) => {
        console.log("join", roomId);
        socket.join(roomId);
        // tell user that he has joined the room
        socket.emit("joined", roomId);
      });

      socket.on("leave", (roomId: string) => {
        console.log("leave", roomId);
        socket.leave(roomId);
      });

      socket.on("message", async (message) => {
        console.log("message", message);
        const receiver = message.receiver;
        const sender = message.sender;
        const roomId = message.roomId;
        const content = message.content;

        if (message.content.type == "order") {
          console.log("asc", message.content.content.documentId);
          const order = await Order.create({
            userId: new Types.ObjectId(message.sender),
            storeId: new Types.ObjectId(message.receiver),
            documentId: new Types.ObjectId(message.content.content.documentId),
          });
          const document = await Document.findOne({
            _id: new Types.ObjectId(message.content.content.documentId),
          });
          console.log("document", document);
          io.to(roomId).emit("message", {
            receiver,
            sender,
            content,
            order,
            document,
          });
        }
      });
    });
    console.log(`Socket Ready Launched 🚀`);
    return httpServer;
  } catch (error) {
    console.log("Error launching socket server 🚀");
    console.log(error);
  }
};
