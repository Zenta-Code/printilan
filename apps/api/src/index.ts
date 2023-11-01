import dotenv from "dotenv";
import mongoose from "mongoose";
import { createServer } from "./server";
dotenv.config();
const port = process.env.PORT || 3001;
const server = createServer();
try {
  console.log("DATABASE_URL", process.env.DATABASE_URL);
  mongoose.connect(
    process.env.DATABASE_URL || "mongodb://127.0.0.1:27017/sky_print"
  );
  mongoose.connection.on("error", (err) => {
    console.error(err);
  });

  mongoose.connection.on("connecting", () => {
    console.log("Connected to MongoDB");
  });
} catch (error) {
  console.error("Error connecting to database: \n", error);
}
server.listen(port, () => {
  console.log(`API Ready at http://localhost:${port} 🚀`);
});
