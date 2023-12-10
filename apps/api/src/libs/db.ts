import mongoose from "mongoose";
export const connectMongo = async (
  dbUrl: string,
  dbName: string, 
) => {
  try {
    mongoose.connect(dbUrl, {
      dbName: dbName,
    });
    mongoose.connection.on("error", (err) => {
      throw new Error(err);
    });
  
  } catch (error) {
    console.log(error);
  }
};
