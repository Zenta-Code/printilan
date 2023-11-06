import { StoreSeeder } from "./store";
import "./user";
import { UserSeeder } from "./user";
export const Seeder = async () => {
  console.log("Running seeders...🚀");
  await UserSeeder();
  await StoreSeeder();
  console.log("Seeders finished.✅");
};
