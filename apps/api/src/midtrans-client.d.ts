declare module "midtrans-client" {
  export class Snap {
    constructor(options: {
      isProduction: boolean;
      serverKey: string;
      clientKey: string;
    });

    createTransaction(transactionDetails: object): Promise<{ token: string }>;
  }

  // Add any other types you might need here
}
