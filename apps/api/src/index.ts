import mongoose from "mongoose";
import { createServer } from "./server";

const port = process.env.PORT || 3001;
const server = createServer();

mongoose.connect(
  process.env.DATABASE_URL || "mongodb://127.0.0.1:27017/sky_print"
);
mongoose.connection.on("error", (err) => {
  console.error(err);
});

mongoose.connection.on("connecting", () => {
  console.log("Connected to MongoDB");
});

server.listen(port, () => {
  console.log(`API Ready at http://localhost:${port} 🚀`);
});
