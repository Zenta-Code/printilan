import { Store } from "../model/store";
import { User } from "../model/user";

export const StoreSeeder = async () => {
  const user = await User.findOne({ email: "rahmat@gmail.com" });
  console.log(user);
  const store = await Store.findOneAndUpdate(
    { name: "Matt's Store" },
    {
      $set: {
        name: "Matt's Store",
        address: {
          street: "123 Main St",
          city: "New York",
          state: "NY",
          country: "USA",
          zipCode: "10001",
        },
        phone: "1234567890",
        ownerId: user?._id,
      },
    },
    { upsert: true, new: true }
  );
  console.log("Store: 🚀", store, "\n");
  console.log("Store seed done! ✅");
};
