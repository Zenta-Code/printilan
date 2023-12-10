import jwt from "jsonwebtoken";
import { Socket } from "socket.io";
import { DefaultEventsMap } from "socket.io/dist/typed-events";

export const socketAuth = (
  socket: Socket<DefaultEventsMap, DefaultEventsMap, DefaultEventsMap, any>,
  next: any
) => {
  try {
    const userName = process.env.SOCKET_USERNAME || "";
    const password = process.env.SOCKET_PASSWORD || "";

    const token = socket.handshake.auth.token || socket.handshake.headers.token;

    if (token) {
      const decoded = jwt.verify(token, process.env.JWT_SECRET || "");
      if (decoded) {
        return next();
      } else {
        return next(new Error("Authentication error"));
      }
    }

    if (
      socket.handshake.auth.username === userName &&
      socket.handshake.auth.password === password
    ) {
      return next();
    }

    return next(new Error("Authentication error"));
  } catch (error: any) {
    console.error("Authentication error:", error.message);
    return next(new Error("Authentication error"));
  }
};
