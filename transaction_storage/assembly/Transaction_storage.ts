import { chain, protocol, System } from "koinos-as-sdk";
import { transaction_storage } from "./proto/transaction_storage";

export class Transaction_storage {
  store_transaction(
    args: transaction_storage.store_transaction_arguments
  ): transaction_storage.store_transaction_result {
    const transaction = args.transaction!;

    const space = new chain.object_space(false, System.getContractId(), 0);
    System.putObject(space, transaction.id!, transaction, protocol.transaction.encode);


    return new transaction_storage.store_transaction_result();
  }
}
