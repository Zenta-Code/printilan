import bcrypt from "bcrypt";
import { User } from "../model/user";
const customerRole = [
  {
    name: "John Doe",
    email: "john@gmail.com",
    password: "password",
    address: {
      street: "123 Main St",
      city: "New York",
      state: "NY",
      country: "USA",
      zipCode: "10001",
    },
    phone: "1234567890",
    role: "customer",
  },
  {
    name: "Will Smith",
    email: "will@gmail.com",
    password: "password",
    address: {
      street: "123 Main St",
      city: "New York",
      state: "NY",
      country: "USA",
      zipCode: "10001",
    },
    phone: "1234567890",
    role: "customer",
  },
];

const storeRole = [
  {
    name: "Rahmat Hidayatullah",
    email: "rahmat@gmail.com",
    password: "password",
    address: {
      street: "Jln. Raya Bogor",
      city: "Sukabumi",
      state: "Jawa Barat",
      country: "Indonesia",
      zipCode: "43151",
    },
    phone: "08573231980",
    role: "seller",
  },
];
export const UserSeeder = async () => {
  const envSalt = process.env.SALT_ROUNDS || "10";
  const salt = bcrypt.genSaltSync(parseInt(envSalt));
  for (const customer of customerRole) {
    customer.password = bcrypt.hashSync(customer.password, salt);
    const user = await User.findOneAndUpdate(
      { email: customer.email },
      { $set: customer },
      { upsert: true, new: true }
    );
    // console.log("Customer: 🚀", user, "\n");
  }

  for (const store of storeRole) {
    store.password = bcrypt.hashSync(store.password, salt);
    const user = await User.findOneAndUpdate(
      { email: store.email },
      { $set: store },
      { upsert: true, new: true }
    );
    // console.log("Store: 🚀", user, "\n");
  }
  console.log("User seed done! ✅");
};
