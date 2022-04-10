import { Arrays, authority, Protobuf, System, SafeMath } from "koinos-as-sdk";
import { wallet } from "./proto/wallet";
import { State } from "./State";

export class Wallet {

  _contractId: Uint8Array;
  _state: State;

  constructor() {
    this._contractId = System.getContractId();
    this._state = new State(this._contractId);
  }

  _verify(name: string): boolean {
    const signatures = System.getTransactionField("signatures");
    const txId = System.getTransactionField("id");
    const addresses: Uint8Array[] = [];
    for(let i = 0; i < signatures.length; i++) {
      const publicKey = System.recoverPublicKey(0, signatures[i], txId);
      const address = new Uint8Array(0); // todo: get address from public key
      addresses.push(address);
    }
  }
}