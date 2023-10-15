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
var bundle_1 = require("./controller/bundle");
var document_1 = require("./controller/document");
var print_1 = require("./controller/print");
var toko_1 = require("./controller/toko");
var user_1 = require("./controller/user");
var order_1 = require("./controller/order");
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
            (0, user_1.UserController)({ route: app });
        });
        app.group("/toko", function (app) {
            (0, toko_1.TokoController)({ route: app });
        });
        app.group("/print", function (app) {
            (0, print_1.PrintController)({ route: app });
        });
        app.group("/document", function (app) {
            (0, document_1.DocumentController)({ route: app });
        });
        app.group("/bundle", function (app) {
            (0, bundle_1.BundleController)({ route: app });
        });
        app.group("/order", function (app) {
            (0, order_1.OrderController)({ route: app });
        });
    });
    app.use("/api", root["export"]());
    return app;
};
exports.createServer = createServer;
