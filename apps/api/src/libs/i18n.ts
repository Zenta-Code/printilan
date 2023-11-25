import { Handler } from "express";
import i18next from "i18next";
import middleware from "i18next-http-middleware";
import enCommon from "../locales/en.json";
import idCommon from "../locales/id.json";

export const createI18n: () => Handler = () => {
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
  return middleware.handle(i18next);
};
