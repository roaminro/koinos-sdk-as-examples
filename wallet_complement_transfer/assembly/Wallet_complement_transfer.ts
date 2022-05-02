/*! wallet - MIT License (c) Julian Gonzalez (joticajulian@gmail.com) */

import {
  authority,
  value,
  Protobuf,
  chain,
  System,
  Base58,
  protocol,
} from "koinos-sdk-as";
import { wallet_complement_transfer as w } from "./proto/wallet_complement_transfer";
import { equalBytes } from "./utils";

export const TRANSFER_DAILY_LIMIT: u64 = 2000 * 100000000; // 2000 tKoins
const WALLET_CONTRACT = Base58.decode("1DN7vxfg6srzCf69KVawp7D2mURgifLHsy");
const WALLET_ENTRY_POINT_REQUIRE_AUTHORITY = 0xad91ec37;
const KOIN_CONTRACT = Base58.decode("19JntSm8pSNETT9aHTwAUHC5RMoaSmgZPJ");
const ENTRY_POINT_TRANSFER = 0x27f576ca;
const VARS_SPACE_ID = 0;
const BUDGET_KEY = new Uint8Array(1);
BUDGET_KEY[0] = 0;

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

  _getBudget(): w.budget {
    let budget = System.getObject<Uint8Array, w.budget>(
      this.varsSpace,
      BUDGET_KEY,
      w.budget.decode
    );
    const now = System.getHeadInfo().head_block_time;

    if (!budget) budget = new w.budget(0, now - 86400000);

    // recharge budget
    const dtime = now - budget.time;
    // todo: use safe mat
    let recharge = (TRANSFER_DAILY_LIMIT * dtime) / 86400000;
    budget.value += recharge;
    if (budget.value > TRANSFER_DAILY_LIMIT)
      budget.value = TRANSFER_DAILY_LIMIT;
    budget.time = now;
    return budget;
  }

  _saveBudget(budget: w.budget): void {
    System.putObject(this.varsSpace, BUDGET_KEY, budget, w.budget.encode);
  }

  get_budget(args: w.get_budget_arguments): w.get_budget_result {
    const budget = this._getBudget();
    return new w.get_budget_result(budget.value);
  }

  authorize_transfer(
    args: w.authorize_transfer_arguments
  ): w.authorize_transfer_result {
    const caller = System.getCaller().caller;

    if (!equalBytes(caller!, WALLET_CONTRACT)) {
      System.log(`invalid caller ${Base58.encode(caller!)}`);
      return new w.authorize_transfer_result(false);
    }

    const opsBytes =
      System.getTransactionField("operations")!.message_value!.value!;
    const operations = Protobuf.decode<value.list_type>(
      opsBytes,
      value.list_type.decode
    );

    if (operations.values.length != 1) {
      System.log("only 1 operation is allowed");
      return new w.authorize_transfer_result(false);
    }

    const operation = Protobuf.decode<protocol.operation>(
      operations.values[0].message_value!.value!,
      protocol.operation.decode
    );

    if (!operation.call_contract) {
      System.log("operation must be a call contract");
      return new w.authorize_transfer_result(false);
    }

    if (!equalBytes(operation.call_contract!.contract_id!, KOIN_CONTRACT)) {
      System.log("not the Koin Contract");
      return new w.authorize_transfer_result(false);
    }

    if (operation.call_contract!.entry_point != ENTRY_POINT_TRANSFER) {
      System.log("not a transfer");
      return new w.authorize_transfer_result(false);
    }

    const transfer = Protobuf.decode<w.transfer>(
      operation.call_contract!.args!,
      w.transfer.decode
    );

    let budget = this._getBudget();

    if (transfer.value > budget.value) {
      System.log(
        `invalid amount ${transfer.value}. Current budget: ${budget.value}`
      );
      return new w.authorize_transfer_result(false);
    }

    System.callContract(
      WALLET_CONTRACT,
      WALLET_ENTRY_POINT_REQUIRE_AUTHORITY,
      Protobuf.encode(
        new w.wallet_require_authority("koin-transfer"),
        w.wallet_require_authority.encode
      )
    );

    budget.value -= transfer.value;

    this._saveBudget(budget);

    return new w.authorize_transfer_result(true);
  }
}
