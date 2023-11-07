"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
exports.__esModule = true;
var dotenv_1 = __importDefault(require("dotenv"));
var http_1 = require("http");
var jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
var mongoose_1 = __importDefault(require("mongoose"));
var socket_io_1 = require("socket.io");
var seeder_1 = require("./seeders/seeder");
var server_1 = require("./server");
dotenv_1["default"].config();
var port = process.env.PORT || 3001;
var server = (0, server_1.createServer)();
try {
    console.log("DATABASE_URL", process.env.DATABASE_URL);
    mongoose_1["default"].connect(process.env.DATABASE_URL || "mongodb://127.0.0.1:27017/sky_print");
}
catch (error) {
    console.error("Error connecting to database: \n", error);
}
mongoose_1["default"].connection.on("error", function (err) {
    console.error(err);
});
mongoose_1["default"].connection.on("connected", function () {
    console.log("Connected to MongoDB 🚀");
    var httpServer = (0, http_1.createServer)(server);
    var io = new socket_io_1.Server(httpServer, {
        cors: {
            origin: "*",
            methods: ["GET", "POST"]
        },
        path: "/socket"
    });
    io.use(function (socket, next) {
        var token = socket.handshake.auth.token;
        console.log("token", token);
        if (token) {
            var jwtSecret = process.env.JWT_SECRET || "JWT_SECRET";
            jsonwebtoken_1["default"].verify(token, jwtSecret, function (err, user) {
                if (err) {
                    return next(new Error("unauthorized"));
                }
                next();
            });
        }
        else {
            next(new Error("unauthorized"));
        }
    }).on("connection", function (socket) {
        socket.on("disconnect", function () {
            console.log("user disconnected");
            socket.disconnect();
        });
        socket.on("join", function (room) {
            console.log("join", room);
            socket.join(room);
        });
        socket.on("leave", function (room) {
            console.log("leave", room);
            socket.leave(room);
        });
        socket.on("message", function (message) {
            console.log("message", message);
            io.to(message.room).emit("message", message);
        });
        socket.on("typing", function (message) {
            console.log("typing", message);
            io.to(message.room).emit("typing", message);
        });
    });
    httpServer.listen(port, function () {
        console.log("API Ready at http://localhost:".concat(port, " \uD83D\uDE80"));
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
    (0, seeder_1.Seeder)();
});
