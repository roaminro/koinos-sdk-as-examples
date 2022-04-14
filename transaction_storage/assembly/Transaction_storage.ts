import { object_space, transaction as koinosTransaction, System } from "koinos-as-sdk";
import * as transaction_storage from "./proto/transaction_storage";

export class Transaction_storage {
  _space: object_space;

  constructor() {
    this._space = new object_space(false, System.getContractId(), 0);

  }

  store_transaction(
    args: transaction_storage.store_transaction_arguments
  ): transaction_storage.store_transaction_result {
    const transaction = args.transaction!;

    System.putObject(this._space, transaction.id!, transaction, koinosTransaction.encode);

    return new transaction_storage.store_transaction_result();
  }

  get_transaction(
    args: transaction_storage.get_transaction_arguments
  ): transaction_storage.get_transaction_result {
    const id = args.id!;

    const res = new transaction_storage.get_transaction_result();

    const tx = System.getObject<Uint8Array, koinosTransaction>(this._space, id, koinosTransaction.decode);

    if (tx) {
      res.value = tx;
    }

    return res;
  }
}
