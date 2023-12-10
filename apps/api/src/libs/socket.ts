import { instrument } from "@socket.io/admin-ui";
import bcrypt from "bcrypt";
import { Server as HttpServer } from "http";
import { Server, Socket } from "socket.io";
import { ApiConfig } from "../config/config";
import { OrderSocketController } from "../controller/socket/order";
import { socketAuth } from "../middleware/socket-auth";
import { Store } from "../model/store";
import { User } from "../model/user";

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

    io.use(socketAuth);
    io.of("/admin");
    instrument(io, {
      auth: {
        type: "basic",
        username: process.env.SOCKET_USERNAME || "",
        password: await bcrypt.hash(
          process.env.SOCKET_PASSWORD || "",
          ApiConfig.salt()
        ),
      },
    });

    // clear customer on store
    const sellerStore = await Store.find();
    const user = await User.find();

    sellerStore.forEach(async (store) => {
      await Store.findByIdAndUpdate(store._id, {
        $set: { customer: [], status: "close", socketId: "" },
      });
    });

    user.forEach(async (user) => {
      await User.findByIdAndUpdate(user._id, {
        $set: { socketId: "" },
      });
    });

    io.on("connection", (socket: Socket) => {
      console.log("========= Socket connected =========\n", socket.id);

      OrderSocketController(socket);

      socket.on("join", async (data: any) => {
        console.log("join", data);

        if (data.storeId) {
          const store = await Store.findByIdAndUpdate(data.storeId, {
            status: "open",
            socketId: socket.id,
          });
          if (store) {
            console.log("store", store);
            socket.join(store._id.toString());
          }
        } else if (data.roomId) {
          const user = await User.findByIdAndUpdate(data.userId, {
            socketId: socket.id,
          });
          if (!user) {
            return;
          }
          const store = await Store.findByIdAndUpdate(data.roomId, {
            $addToSet: { customer: user },
          });
          if (store) {
            console.log("store", store);
            socket.join(store._id.toString());
            socket.to(store._id.toString()).emit("join", user);
          }
        }

        console.log("All rooms", socket.rooms);
      });

      socket.on("leave", async (data: any) => {
        console.log("leave", data);

        if (data.storeId) {
          const store = await Store.findByIdAndUpdate(data.storeId, {
            status: "close",
            socketId: "",
          });
          if (store) {
            console.log("store", store);
            socket.leave(store._id.toString());
          }
        } else if (data.roomId) {
          const user = User.findByIdAndUpdate(data.userId, {
            socketId: "",
          });
          if (!user) {
            return;
          }
          const store = await Store.findByIdAndUpdate(data.roomId, {
            $pull: { customer: user },
          });
          if (store) {
            console.log("store", store);
            socket.leave(store._id.toString());
            socket.to(store._id.toString()).emit("leave", user);
          }
        }

        console.log("All rooms", socket.rooms);
      });

      socket.on("disconnect", async (reason) => {
        console.log("========= Socket disconnect =========\n", reason);
        console.log("socket", socket.id);
        const store = await Store.findOne({ socketId: socket.id });
        if (store) {
          await Store.findByIdAndUpdate(store._id, {
            status: "close",
            socketId: "",
            customer: [],
          });
        }
        const user = await User.findOne({ socketId: socket.id });
        if (user) {
          const store = await Store.findOneAndUpdate(
            { customer: user },
            { $pull: { customer: user } }
          );
          if (store) {
            console.log("store", store);
          }
        }
      });

      socket.on("error", (error) => {
        console.log("========= Socket error =========\n", error);
      });

      socket.on("message", async (message: any) => {
        console.log("message", message);
      });
    });

    console.log(`Socket Ready Launched :${process.env.SOCKET_PATH} 🚀`);

    setInterval(async () => {
      const sellerStore = await Store.find({ status: "open" });
      console.log("All seller store", sellerStore);
    }, 5000);

    return io;
  } catch (error) {
    console.log("Socket Error", error);
  }
};
