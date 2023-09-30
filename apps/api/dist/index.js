"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
exports.__esModule = true;
var mongoose_1 = __importDefault(require("mongoose"));
var server_1 = require("./server");
var port = process.env.PORT || 3001;
var server = (0, server_1.createServer)();
mongoose_1["default"].connect(process.env.DATABASE_URL || "mongodb://127.0.0.1:27017/sky_print");
mongoose_1["default"].connection.on("error", function (err) {
    console.error(err);
});
mongoose_1["default"].connection.on("connecting", function () {
    console.log("Connected to MongoDB");
});
server.listen(port, function () {
    console.log("API Ready at http://localhost:".concat(port, " \uD83D\uDE80"));
});
