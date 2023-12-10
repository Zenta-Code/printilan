import bcrypt from "bcrypt";

export interface ApiConfigInterface {
  salt: string;
  secret: string;
}

export class ApiConfig {
  static salt(): string {
    const envSalt = process.env.SALT_ROUNDS || "10";

    const salt = bcrypt.genSaltSync(parseInt(envSalt));

    return salt;
  }

  static signToken(password: string): string {
    const salt = ApiConfig.salt();

    const hashedPassword = bcrypt.hashSync(password, salt);

    return hashedPassword;
  }
}
