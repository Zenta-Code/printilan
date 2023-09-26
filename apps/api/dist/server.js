"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
exports.__esModule = true;
exports.createServer = void 0;
var body_parser_1 = require("body-parser");
var cors_1 = __importDefault(require("cors"));
var express_1 = __importDefault(require("express"));
var express_route_grouping_1 = __importDefault(require("express-route-grouping"));
var morgan_1 = __importDefault(require("morgan"));
var UserController_1 = require("./controller/UserController");
var createServer = function () {
    var app = (0, express_1["default"])();
    app
        .disable("x-powered-by")
        .use((0, morgan_1["default"])("dev"))
        .use((0, body_parser_1.urlencoded)({ extended: true }))
        .use((0, body_parser_1.json)())
        .use((0, cors_1["default"])())
        .get("/message/:name", function (req, res) {
        res.json({ message: "hello ".concat(req.params.name) });
    })
        .get("/healthz", function (req, res) {
        res.json({ ok: true });
    });
    var root = new express_route_grouping_1["default"]("/", express_1["default"].Router());
    root.group("/", function (app) {
        app.get("/", function (req, res) {
            res.json({
                message: "🚀"
            });
        });
        app.group("/user", function (app) {
            (0, UserController_1.UserController)({ route: app });
        });
    });
    app.use("/api", root["export"]());
    return app;
};
exports.createServer = createServer;
