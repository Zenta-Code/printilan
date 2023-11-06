"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
exports.__esModule = true;
var dotenv_1 = __importDefault(require("dotenv"));
var mongoose_1 = __importDefault(require("mongoose"));
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
    server.listen(port, function () {
        console.log("API Ready at http://localhost:".concat(port, " \uD83D\uDE80"));
    });
    (0, seeder_1.Seeder)();
});
