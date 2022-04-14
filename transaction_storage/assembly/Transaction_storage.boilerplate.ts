import * as authority from "../../koinos-proto-as/koinos/chain/authority";
import * as transaction_storage from "./proto/transaction_storage";

export class Transaction_storage {
  store_transaction(
    args: transaction_storage.store_transaction_arguments
  ): transaction_storage.store_transaction_result {
    // const transaction = args.transaction;

    // YOUR CODE HERE

    const res = new transaction_storage.store_transaction_result();

    return res;
  }

  get_transaction(
    args: transaction_storage.get_transaction_arguments
  ): transaction_storage.get_transaction_result {
    // const id = args.id;

    // YOUR CODE HERE

    const res = new transaction_storage.get_transaction_result();
    // res.value = ;

    return res;
  }
}
