import { instrument } from "@socket.io/admin-ui";
import bcrypt from "bcrypt";
import { Server as HttpServer } from "http";
import jwt from "jsonwebtoken";
import { Server } from "socket.io";
import { Document } from "../model/document";
import { Order } from "../model/order";
import { Store } from "../model/store";
import { User } from "../model/user";

interface BasicAuthentication {
  type: "basic";
  username: string;
  password: string;
}

export const createSocketServer = async (httpServer: HttpServer) => {
  const pingInterval = 5000;
  try {
    const io = new Server(httpServer, {
      pingInterval: pingInterval,
      pingTimeout: pingInterval * 2,
      cors: {
        origin: "https://manpro.zenta.dev",
        methods: ["GET", "POST"],
        credentials: true,
      },
      path: process.env.SOCKET_PATH || "/socket.io",
    });

    const salt = await bcrypt.genSalt(10);
    const userName = process.env.SOCKET_USERNAME || "";
    const password = process.env.SOCKET_PASSWORD || "";
    io.use((socket, next) => {
      try {
        if (socket.handshake.auth.username) {
          const isValid =
            socket.handshake.auth.username === userName &&
            socket.handshake.auth.password === password;
          if (isValid) {
            return next();
          }
        }
        const token = socket.handshake.auth.token;
        console.log("token", token);
        if (token) {
          const decoded = jwt.verify(token, process.env.JWT_SECRET || "");
          console.log("decoded", decoded);
          if (decoded) {
            return next();
          } else {
            return next(new Error("authentication error"));
          }
        }
        return next(new Error("authentication error"));
      } catch (error) {
        console.log("error", error);
      }
    });

    instrument(io, {
      auth: {
        type: "basic",
        username: userName,
        password: await bcrypt.hash(password, salt),
      },
    });
    io.of("/admin");
    let sellerStore: any = {};
    io.on("connection", (socket) => {
      console.log("========= Socket connected =========\n", socket.id);
      socket.on("join", async (data: any) => {
        console.log("join", data);
        if (data.storeId) {
          socket.join(data.storeId);
          sellerStore[socket.id] = [
            ...(sellerStore[socket.id] || []),
            {
              type: "seller",
              id: data.storeId,
              socketId: socket.id,
            },
          ];
          const store = await Store.findById(data.storeId);
          if (store) {
            await Store.findByIdAndUpdate(store._id, { status: "open" });
          }
        } else if (data.roomId) {
          const rooms: Set<string> | undefined = io.sockets.adapter.rooms.get(
            data.roomId
          );
          console.log("room", rooms);
          if (rooms) {
            socket.join(rooms.values().next().value);

            sellerStore[rooms.values().next().value] = [
              ...(sellerStore[rooms.values().next().value] || []),
              {
                type: "customer",
                id: data.userId,
                socketId: socket.id,
              },
            ];
          } else {
            socket.emit("error", "room not found");
          }
        }
      });
      socket.on("leave", (roomId: any) => {
        const room = io.sockets.adapter.rooms.get(roomId);
        if (room) {
          sellerStore[room.values().next().value].forEach(async (item: any) => {
            if (item.socketId == socket.id) {
              socket.leave(item.id);
            }
          });
        }
      });
      socket.on("disconnecting", (reason) => {
        console.log("========= Socket disconnecting =========\n", reason);
        console.log("socket", socket.id);
      });
      socket.on("disconnect", async (reason) => {
        try {
          if (sellerStore[socket.id]) {
            sellerStore[socket.id].forEach(async (item: any) => {
              if (item.type == "seller") {
                const store = await Store.findById(item.id);
                if (store) {
                  await Store.findByIdAndUpdate(store._id, {
                    status: "close",
                  });
                }
              }
            });
            delete sellerStore[socket.id];
          }
          if (sellerStore.isArray && sellerStore.length > 0) {
            const find = sellerStore.filter((item: any) => {
              return item.socketId == socket.id;
            });
            if (find) {
              sellerStore = sellerStore.filter((item: any) => {
                return item.socketId != socket.id;
              });
            }
          }
        } catch (error) {
          console.log("error", error);
        }
      });
      socket.on("error", (error) => {
        console.log("========= Socket error =========\n", error);
      });

      socket.on("message", async (message: any) => {
        console.log("message", message);
        const receiver = message.receiver;
        const sender = message.sender;
        const roomId = message.roomId;
        const content = message.content;

        const rooms: Set<string> | undefined =
          io.sockets.adapter.rooms.get(roomId);

        if (message.content.type == "order") {
          const order = await Order.findById(message.content.content._id);
          const document = await Document.findById(
            message.content.content.documentId
          );
          const user = await User.findById(message.content.content.userId);
          console.log("document", document);
          io.to(roomId).emit("message", {
            receiver,
            sender,
            content,
            order: {
              userId: order?.userId,
              storeId: order?.storeId,
              documentId: order?.documentId,
              user: user,
            },
            document,
          });
        }
      });
    });

    console.log(`Socket Ready Launched :${process.env.SOCKET_PATH} 🚀`);

    setInterval(() => {
      console.log("All seller store", sellerStore);
    }, 10000);

    return io;
  } catch (error) {
    console.log("Error launching socket server 🚀");
    console.log(error);
  }
};
