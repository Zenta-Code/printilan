import crypto from "crypto";
import multer from "multer";

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "./files/");
  },
  filename: function (req, file, cb) {
    // encrypt file name
    const fileName = file.originalname;
    const userId = req.body.userId;
    const encryptedFileName = `${userId}-${fileName}`;
    const hashedFileName = crypto
      .createHash("sha256")
      .update(encryptedFileName)
      .digest("hex");
    const fileExtension = hashedFileName.split(".");
    const fileExtensionLength = fileExtension.length;
    const fileExtensionName = fileExtension[fileExtensionLength - 1];
    const fileExtensionNameLowerCase = fileExtensionName.toLowerCase();
    const newFileName = `${hashedFileName}.${fileExtensionNameLowerCase}`;
    cb(null, newFileName);
  },
});

export const upload = multer({ storage: storage });
