import { chain, System } from "@koinos/sdk-as";
import { token } from "./proto/token";

const SUPPLY_SPACE_ID = 0;
const SUPPLY_KEY = new Uint8Array(0);
const BALANCE_SPACE_ID = 1;

export class State {
  contractId: Uint8Array;
  supplySpace: chain.object_space;
  balanceSpace: chain.object_space;

  constructor(contractId: Uint8Array) {
    this.contractId = contractId;

    this.supplySpace = new chain.object_space(false, contractId,SUPPLY_SPACE_ID);
    this.balanceSpace = new chain.object_space(false, contractId, BALANCE_SPACE_ID);
  }

  GetSupply(): token.balance_object {
    const supply = System.getObject<Uint8Array, token.balance_object>(this.supplySpace, SUPPLY_KEY, token.balance_object.decode);

    if (supply) {
      return supply;
    }

    return new token.balance_object();
  }

  SaveSupply(supply: token.balance_object): void {
    System.putObject(this.supplySpace, SUPPLY_KEY, supply, token.balance_object.encode);
  }

  GetBalance(owner: Uint8Array): token.balance_object {
    const balance = System.getObject<Uint8Array, token.balance_object>(this.balanceSpace, owner, token.balance_object.decode);

    if (balance) {
      return balance;
    }

    return new token.balance_object();
  }

  SaveBalance(owner: Uint8Array, balance: token.balance_object): void {
    System.putObject(this.balanceSpace, owner, balance, token.balance_object.encode);
  }
}
