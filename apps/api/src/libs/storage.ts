import crypto from "crypto";
import fs from "fs";
import multer from "multer";
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    const userId = req.body.userId;
    const dir = "./files/" + userId;
    if (!fs.existsSync(dir)) {
      fs.mkdirSync(dir);
    }
    cb(null, dir);
  },
  filename: function (req, file, cb) {
    const fileName = file.originalname;
    const userId = req.body.userId;
    const split = fileName.split(".");
    const extension = split[split.length - 1];
    const encryptedFileName = crypto
      .createHash("sha1")
      .update(fileName + userId)
      .digest("hex");

    cb(null, encryptedFileName + "." + extension);
  },
});

export const upload = multer({ storage: storage });
