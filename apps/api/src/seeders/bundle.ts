import { Bundle } from "../model/bundle";
import { Store } from "../model/store";

type Bundle = {
  storeId?: string;
  name: string;
  desc: string;
  prices: Option[];
};
type Option = {
  option: string;
  price: number;
};

const bundles: Bundle[] = [
  {
    name: "Papper Printing",
    desc: "Common printing services",
    prices: [
      {
        option: "black",
        price: 500,
      },
      {
        option: "color",
        price: 1000,
      },
    ],
  },
  {
    name: "Photo Printing",
    desc: "Common printing services",
    prices: [
      {
        option: "4R",
        price: 2000,
      },
      {
        option: "5R",
        price: 3000,
      },
      {
        option: "6R",
        price: 4000,
      },
      {
        option: "8R",
        price: 5000,
      },
    ],
  },
];
export const BundleSeeder = async () => {
  const store = await Store.findOne({ name: "Matt's Store" });
  for (const bundle of bundles) {
    await Bundle.findOneAndUpdate(
      { name: bundle.name },
      {
        $set: {
          storeId: store!._id,
          ...bundle,
        },
      },
      { upsert: true, new: true }
    );
  }
  console.log("Bundle seed done! ✅");
};
