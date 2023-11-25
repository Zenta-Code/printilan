import { json, urlencoded } from "body-parser";
import cors from "cors";
import express, { Express } from "express";
import RouteGroup from "express-route-grouping";
import i18next from "i18next";
import middleware from "i18next-http-middleware";
import morgan from "morgan";
import { BundleController } from "../controller/bundle";
import { DocumentController } from "../controller/document";
import { OrderController } from "../controller/order";
import { PrintController } from "../controller/print";
import { StoreController } from "../controller/store";
import { UserController } from "../controller/user";
import enCommon from "../locales/en/common.json";
import idCommon from "../locales/id/common.json";

export const createServer: () => Express = () => {
  i18next.use(middleware.LanguageDetector).init(
    {
      debug: true,
      preload: ["en", "id"],
      fallbackLng: "en",
      ns: ["translation", "zod"],
      resources: {
        en: {
          translation: enCommon,
        },
        id: {
          translation: idCommon,
        },
      },
    },
    (err, t) => {
      if (err) {
        console.error(err);
      }
      console.log(t("hello"));
    }
  );
  const app: Express = express();
  app
    .disable("x-powered-by")
    .use(morgan("dev"))
    .use(urlencoded({ extended: true }))
    .use(json())
    .use(cors())
    .use(middleware.handle(i18next));

  const root = new RouteGroup("/", express.Router());

  root.group("/", (app) => {
    app.get("/ping", (req, res) => {
      res.send(req.t("hello"));
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
