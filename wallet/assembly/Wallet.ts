import { Arrays, authority, Protobuf, System, Crypto, SafeMath } from "koinos-as-sdk";
import { wallet } from "./proto/wallet";
import { State } from "./State";

export class Wallet {

  _contractId: Uint8Array;
  _state: State;

  constructor() {
    this._contractId = System.getContractId();
    this._state = new State(this._contractId);
  }

  _equalBytes(a: Uint8Array, b: Uint8Array): boolean {
    if (a.length != b.length) return false;
    for (let i = 0; i < a.length; i++ ) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  _verify(name: string): boolean {
    const auth = this._state.getAuthority(name);
    // if (!auth) exit
    
    const signatures = System.getTransactionField("signatures");
    const txId = System.getTransactionField("id");    
    
    const totalWeight: u32 = 0;
    for(let i = 0; i < signatures.length; i++) {
      const publicKey = System.recoverPublicKey(0, signatures[i], txId);
      const address = Crypto.addressFromPublicKey(publicKey);

      for(let j = 0; j < auth.key_auths.length; j++) {
        const keyAddress = auth.key_auths[j].address;
        if(this._equalBytes(address, keyAddress)) {
          totalWeight += auth.key_auths[j].weight;
        }  
      }
    }
    return totalWeight >= auth.weight_threshold;
  }

  addAuthority(args: wallet.add_authority_arguments): wallet.add_authority_result {
    const name = args.name!;
    const auth = args.authority;

    const authNames = this._state.getAuthorityNames();
    if (authNames.length == 0) {
      // todo: insert owner
    }
    if (!this._verify("owner")) {
      // todo: throw error
    }
    // todo: add authority
  }
}