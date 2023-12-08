import fs from "fs";
import { KodePos } from "../model/kodepos";

export const KodePosSeeder = async () => {
  const kodePosCSV = fs.readFileSync("./src/data/kodepos.csv");

  const kodePos = kodePosCSV.toString().split("\n");

  const kodePosArray = kodePos.map((kodePos) => {
    const [id, kelurahan, kecamatan, kabupaten, provinsi, kodepos] =
      kodePos.split(",");

    return {
      kelurahan:
        String(kelurahan).toLowerCase().charAt(0).toUpperCase() +
        String(kelurahan).toLowerCase().slice(1),
      kecamatan:
        String(kecamatan).toLowerCase().charAt(0).toUpperCase() +
        String(kecamatan).toLowerCase().slice(1),
      kabupaten:
        String(kabupaten).toLowerCase().charAt(0).toUpperCase() +
        String(kabupaten).toLowerCase().slice(1),
      kodepos,
    };
  });
  const bulkOps = kodePosArray.map((kodePos) => ({
    updateOne: {
      filter: { kodepos: kodePos.kodepos },
      update: { $set: kodePos },
      upsert: true,
      new: true,
    },
  }));

  const result = await KodePos.bulkWrite(bulkOps, { ordered: false });
  console.log("Kode Pos Seeder", result.upsertedCount + result.modifiedCount);
};
