import dotenv from "dotenv";
import { Express } from "express";
import fs from "fs";
import { Server, createServer } from "http";
import mongoose from "mongoose";
import { createExpressServer } from "./libs/server";
import { createSocketServer } from "./libs/socket";
import { KodePosSeeder } from "./seeders/kode-pos";

dotenv.config();

const port = process.env.PORT || 3001;

const server: Express = createExpressServer();

const httpServer: Server = createServer(server);

export const io = createSocketServer(httpServer);

try {
  mongoose.connect(
    process.env.DEV_DATABASE_URL || "mongodb://127.0.0.1:27017",
    {
      dbName: process.env.MONGO_DB_NAME || "sky_print",
    }
  );
} catch (error) {
  console.error("Error connecting to database: \n", error);
}
mongoose.connection.on("error", (err) => {
  console.error(err);
});

mongoose.connection.on("connected", () => {
  console.log("Connected to MongoDB 🚀");

  try {
    httpServer.listen(port, () => {
      console.log(`API Ready at http://localhost:${port} 🚀`);
    });
  } catch (err) {
    console.log(err);
  }
  KodePosSeeder();
  // Seeder();
});

// create files folder if not exist
if (!fs.existsSync("./files")) {
  fs.mkdirSync("./files");
}

// const mysql_url = process.env.MYSQL_URL || "";
// async function mysql() {
//   const pool = await MySQL(mysql_url);

//   const [rows] = await pool.execute(
//     "SELECT COUNT(*) as count FROM information_schema.tables WHERE table_name = 'tbl_kodepos'"
//   );

//   if ((rows as any)[0].count > 0) {
//     return;
//   }

//   const sqlFile = fs.readFileSync("./src/db/kodepos.sql", "utf8");

//   const sqlQueries = sqlFile.split(";").filter((query) => query.trim());

//   await Promise.all(
//     sqlQueries.map(async (query) => {
//       await pool.execute(query);
//       console.log("Query executed:", query);
//     })
//   );
// }

// mysql();
