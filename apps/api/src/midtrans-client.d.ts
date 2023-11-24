const midtransClient = require("midtrans-client");
declare module "midtrans-client" {
  export class Snap {
    constructor(options: {
      isProduction: boolean;
      serverKey: string;
      clientKey: string;
    });

    createTransaction(transactionDetails: object): Promise<{ token: string }>;
  }
}
