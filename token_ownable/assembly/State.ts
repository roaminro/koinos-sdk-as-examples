import { chain, System } from "@koinos/sdk-as";
import { token } from "./proto/token";

const METADATA_SPACE_ID = 0;
const METADATA_KEY = new Uint8Array(0);
const BALANCE_SPACE_ID = 1;

export class State {
  contractId: Uint8Array;
  metadataSpace: chain.object_space;
  balanceSpace: chain.object_space;

  constructor(contractId: Uint8Array) {
    this.contractId = contractId;

    this.metadataSpace = new chain.object_space(false, contractId, METADATA_SPACE_ID);
    this.balanceSpace = new chain.object_space(false, contractId, BALANCE_SPACE_ID);
  }

  GetMetadata(): token.metadata_object {
    const metadata = System.getObject<Uint8Array, token.metadata_object>(this.metadataSpace, METADATA_KEY, token.metadata_object.decode);

    if (metadata) {
      return metadata;
    }

    return new token.metadata_object();
  }

  SaveMetadata(supply: token.metadata_object): void {
    System.putObject(this.metadataSpace, METADATA_KEY, supply, token.metadata_object.encode);
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
