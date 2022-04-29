/*! wallet - MIT License (c) Julian Gonzalez (joticajulian@gmail.com) */

import {
  authority,
  value,
  Protobuf,
  chain,
  System,
  Crypto,
  Base58,
  protocol,
} from "koinos-sdk-as";
import { wallet_complement_transfer as w } from "./proto/wallet_complement_transfer";

export const TRANSFER_DAILY_LIMIT: u64 = 2000 * 100000000; // 2000 tKoins
const WALLET_CONTRACT = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqe");
const VARS_SPACE_ID = 0;
const TOKENS_AVAILABLES_KEY = new Uint8Array(1);
TOKENS_AVAILABLES_KEY[0] = 0;

export class Wallet_complement_transfer {
  contractId: Uint8Array;
  varsSpace: chain.object_space;

  constructor() {
    this.contractId = System.getContractId();
    this.varsSpace = new chain.object_space(
      false,
      this.contractId,
      VARS_SPACE_ID
    );
  }

  authorize(args: authority.authorize_arguments): authority.authorize_result {
    return new authority.authorize_result(false);
  }

  authorizeTransfer(args: authority.authorize_arguments): authority.authorize_result {
    const opsBytes =
      System.getTransactionField("operations")!.message_value!.value!;
    const operations = Protobuf.decode<value.list_type>(
      opsBytes,
      value.list_type.decode
    );

    if (operations.values.length != 1) {
      System.log("only 1 operation is allowed");
      return new authority.authorize_result(false);
    }

    const operation = Protobuf.decode<protocol.operation>(
      operations.values[0].bytes_value!,
      protocol.operation.decode
    );

    if (!operation.call_contract) {
      System.log("operation must be a call contract");
      return new authority.authorize_result(false);
    }
  }
}
