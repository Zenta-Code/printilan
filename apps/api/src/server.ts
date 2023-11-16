import { json, urlencoded } from "body-parser";
import cors from "cors";
import express, { Express } from "express";
import RouteGroup from "express-route-grouping";
import morgan from "morgan";
import { BundleController } from "./controller/bundle";
import { DocumentController } from "./controller/document";
import { OrderController } from "./controller/order";
import { PrintController } from "./controller/print";
import { StoreController } from "./controller/store";
import { UserController } from "./controller/user";

export const createServer: () => Express = () => {
  const app: Express = express();
  app
    .disable("x-powered-by")
    .use(morgan("dev"))
    .use(urlencoded({ extended: true }))
    .use(json())
    .use(cors());

  const root = new RouteGroup("/", express.Router());

  root.group("/", (app) => {
    app.get("/ping", (req, res) => {
      res.send("pong 💣");
    });
    app.group("/user", (app) => {
      UserController({ route: app });
    });
    app.group("/store", (app) => {
      StoreController({ route: app });
    });
    app.group("/print", (app) => {
      PrintController({ route: app });
    });
    app.group("/document", (app) => {
      DocumentController({ route: app });
    });
    app.group("/bundle", (app) => {
      BundleController({ route: app });
    });
    app.group("/order", (app) => {
      OrderController({ route: app });
    });
  });

  app.use("/api", root.export());
  return app;
};
