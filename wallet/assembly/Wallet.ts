import { Arrays, authority, value, Protobuf, System, Crypto, SafeMath } from "koinos-as-sdk";
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

  _requireAuthority(name: string): void {
    const auth = this._state.getAuthority(name);
    if (auth == null) {
      System.log(`invalid authority '${name}'`);
      System.exitContract(1);
      return;
    }
    
    const sigBytes = System.getTransactionField("signatures")!.message_value!.value!;
    const signatures = Protobuf.decode<value.list_type>(sigBytes, value.list_type.decode);    
    const txId = System.getTransactionField("id")!.bytes_value!;    
    
    let totalWeight: u32 = 0;
    for(let i = 0; i < signatures.values.length; i++) {
      const publicKey = System.recoverPublicKey(signatures.values[i].bytes_value!, txId);
      const address = Crypto.addressFromPublicKey(publicKey!);

      for(let j = 0; j < auth.key_auths.length; j++) {
        const keyAddress = auth.key_auths[j].address!;
        if(this._equalBytes(address, keyAddress)) {
          totalWeight += auth.key_auths[j].weight;
        }  
      }
    }
    
    if (totalWeight < auth.weight_threshold) {
      System.log(`authority ${name} failed`);
      System.exitContract(1);
    }
  }

  add_authority(args: wallet.add_authority_arguments): wallet.add_authority_result {
    const authNames = this._state.getAuthorityNames();
    if (authNames.names.length == 0 && args.name != "owner") {
      System.log("The first authority must be 'owner'");
      System.exitContract(1);
    }

    if (authNames.names.includes(args.name!)) {
      System.log(`Authority ${args.name!} already exists`);
      System.exitContract(1);
    }
    
    this._requireAuthority("owner");
    this._state.setAuthority(args.name!, args.authority!);
    authNames.names.push(args.name!);
    this._state.setAuthorityNames(authNames);
    return new wallet.add_authority_result(true);
  }

  // todo: update authority function
  // todo: delete authority function

  authorize(args: authority.authorize_arguments): authority.authorize_result {
    if (args.type == authority.authorization_type.contract_call) {
      // check if there is an authority for the specific endpoint
      let authContract = this._state.getAuthorityProtectedContract(args.call!, false);
      if (!authContract) {
        // check if there is an authority for the entire contract
        authContract = this._state.getAuthorityProtectedContract(args.call!, true);
        if (!authContract) {
          this._requireAuthority("owner"); // todo: change to "active"
          return new authority.authorize_result(true);
        }
      }

      if (authContract.native != null) {
        this._requireAuthority(authContract.native);
        return new authority.authorize_result(true);
      }

      if (authContract.external != null) {
        const contractId = authContract.external.contract_id!;
        const entryPoint = authContract.external.entry_point;
        const resBuf = System.callContract(contractId, entryPoint, Protobuf.encode(args, authority.authorize_arguments.encode))!;
        const authorized = Protobuf.decode<authority.authorize_result>(resBuf, authority.authorize_result.decode);
        return authorized;
      }

      System.log("Authority is not defined correctly");
      return new authority.authorize_result(false);
    }
    // todo: type upload_contract
    // todo: type transaction_application
    return new authority.authorize_result(false);
  }

  // todo: authorize update authority protected contract
  // todo: request update (clock starts)
  // todo: add protected contract
  // todo: update protected contract
}