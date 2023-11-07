import { Socket } from "socket.io";

interface AuthSocket extends Socket {
  user: any;
}
