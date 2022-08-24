import { chain, protocol, System } from "@koinos/sdk-as";
import { transaction_storage } from "./proto/transaction_storage";

export class Transaction_storage {
  _space: chain.object_space;

  constructor() {
    this._space = new chain.object_space(false, System.getContractId(), 0);

  }

  store_transaction(
    args: transaction_storage.store_transaction_arguments
  ): transaction_storage.store_transaction_result {
    const transaction = args.transaction!;

    System.putObject(this._space, transaction.id!, transaction, protocol.transaction.encode);

    return new transaction_storage.store_transaction_result();
  }

  get_transaction(
    args: transaction_storage.get_transaction_arguments
  ): transaction_storage.get_transaction_result {
    const id = args.id!;

    const res = new transaction_storage.get_transaction_result();

    const tx = System.getObject<Uint8Array, protocol.transaction>(this._space, id, protocol.transaction.decode);

    if (tx) {
      res.value = tx;
    }

    return res;
  }
}
