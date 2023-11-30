// const midtransClient = require("midtrans-client");
declare module "midtrans-client" {
  export class CoreApi {
    constructor(options: {
      isProduction: boolean;
      serverKey: string;
      clientKey: string;
    });
    charge(transactionDetails: object): Promise<{ token: string }>;

    transaction: {
      status(transactionId: string): Promise<any>;
    };
  }
  export class Snap {
    constructor(options: {
      isProduction: boolean;
      serverKey: string;
      clientKey: string;
    });

    createTransaction(transactionDetails: object): Promise<{ token: string }>;
  }
}
