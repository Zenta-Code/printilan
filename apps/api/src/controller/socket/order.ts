import { Socket } from "socket.io";
import { Order } from "../../model/order";

export const OrderSocketController = (socket: Socket) => {
  socket.on("order", async (data: any) => {
    try {
      data = data.content === undefined ? JSON.parse(data) : data;
      console.log("order:read", data);

      const { to, from, content } = data;
      const { id, storeId, userId } =
        content === undefined ? data.content : content;

      let find: any[];

      if (id) {
        find = [await Order.findById(id)];
      } else if (storeId) {
        find = await Order.find({ storeId: storeId });
      } else if (userId) {
        find = await Order.find({ userId: userId });
      } else {
        find = await Order.find();
      }

      if (!find || (Array.isArray(find) && find.length === 0)) {
        return;
      }
      socket.to(to).emit("order", { to: from, from: to, content: find });
    } catch (error) {
      console.log(error);
    }
  });

  socket.on("order:create", async (data: any) => {
    console.log("order:create", data);
    socket.broadcast.emit("order:create", data);
  });
};
