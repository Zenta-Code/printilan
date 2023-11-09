import { Bundle } from "../model/bundle";

type Bundle = {
  name: string;
  desc: string;
  prices: Color[];
};
type Color = {
  color: string;
  price: number;
};

const bundles: Bundle[] = [
  {
    name: "Printing",
    desc: "Common printing services",
    prices: [
      {
        color: "black",
        price: 0.1,
      },
      {
        color: "color",
        price: 0.2,
      },
    ],
  },
];
const BundleSeeder = async () => {};
