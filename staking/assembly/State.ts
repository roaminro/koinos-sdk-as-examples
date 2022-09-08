import { System, chain } from "@koinos/sdk-as";
import { staking } from "./proto/staking";

const BALANCE_SPACE_ID = 1;

export class State {
  contractId: Uint8Array;
  balanceSpace: chain.object_space;

  constructor(contractId: Uint8Array) {
    this.contractId = contractId;

    this.balanceSpace = new chain.object_space(false, contractId, BALANCE_SPACE_ID);
  }

  GetBalance(owner: Uint8Array): staking.balance_object {
    const balance = System.getObject<Uint8Array, staking.balance_object>(this.balanceSpace, owner, staking.balance_object.decode);

    if (balance) {
      return balance;
    }

    return new staking.balance_object();
  }

  SaveBalance(owner: Uint8Array, balance: staking.balance_object): void {
    System.putObject(this.balanceSpace, owner, balance, staking.balance_object.encode);
  }
}
