import { json, urlencoded } from "body-parser";
import cors from "cors";
import express, { Express } from "express";
import RouteGroup from "express-route-grouping";
import morgan from "morgan";
import { UserController } from "./controller/user";
export const createServer: () => Express = () => {
  const app: Express = express();
  app
    .disable("x-powered-by")
    .use(morgan("dev"))
    .use(urlencoded({ extended: true }))
    .use(json())
    .use(cors())
    .get("/message/:name", (req, res) => {
      res.json({ message: `hello ${req.params.name}` });
    })
    .get("/healthz", (req, res) => {
      res.json({ ok: true });
    });
  const root = new RouteGroup("/", express.Router());
  root.group("/", (app) => {
    app.get("/", (req, res) => {
      res.json({
        message: "🚀",
      });
    });
    app.group("/user", (app) => {
      UserController({ route: app });
    });
  });

  app.use("/api", root.export());

  return app;
};
