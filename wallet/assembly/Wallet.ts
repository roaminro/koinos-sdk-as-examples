import { Arrays, authority, value, Protobuf, System, Crypto, SafeMath } from "koinos-as-sdk";
import { wallet } from "./proto/wallet";
import { State } from "./State";

function exit(message: string): void {
  System.log(message);
  System.exitContract(1);
}

function isImpossible(authority: wallet.authority): boolean {
  const keyAuths = authority.key_auths;
  let totalWeight: u32 = 0;
  for(let i = 0; i < keyAuths.length; i++) {
    totalWeight += keyAuths[i].weight;
  }
  return totalWeight < authority.weight_threshold;
}

export class Wallet {

  contractId: Uint8Array;
  state: State;

  constructor() {
    this.contractId = System.getContractId();
    this.state = new State(this.contractId);
  }

  _equalBytes(a: Uint8Array, b: Uint8Array): boolean {
    if (a.length != b.length) return false;
    for (let i = 0; i < a.length; i++ ) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  _requireAuthority(name: string): void {
    const auth = this.state.getAuthority(name);
    if (auth == null) {
      exit(`invalid authority '${name}'`);
    }
    
    const sigBytes = System.getTransactionField("signatures")!.message_value!.value!;
    const signatures = Protobuf.decode<value.list_type>(sigBytes, value.list_type.decode);    
    const txId = System.getTransactionField("id")!.bytes_value!;    
    
    let totalWeight: u32 = 0;
    for(let i = 0; i < signatures.values.length; i++) {
      const publicKey = System.recoverPublicKey(signatures.values[i].bytes_value!, txId);
      const address = Crypto.addressFromPublicKey(publicKey!);

      for(let j = 0; j < auth!.key_auths.length; j++) {
        const keyAddress = auth!.key_auths[j].address!;
        if(this._equalBytes(address, keyAddress)) {
          totalWeight += auth!.key_auths[j].weight;
        }  
      }
    }
    
    if (totalWeight < auth!.weight_threshold) {
      exit(`authority ${name} failed`);
    }
  }

  add_authority(args: wallet.add_authority_arguments): wallet.add_authority_result {
    let authNames = this.state.getAuthorityNames();
    const existOwner = authNames.names.length > 0;
    if (!existOwner && args.name != "owner") {
      exit("The first authority must be 'owner'");
    }

    if (args.name == null) {
      exit("name undefined");
    }

    if (args.authority == null) {
      exit("authority undefined");
    }

    if (authNames.names.includes(args.name!)) {
      exit(`Authority ${args.name!} already exists`);
    }

    const impossible = isImpossible(args.authority!);
    if (impossible != args.impossible) {
      if (impossible)
        exit(`Impossible authority: If this is your intention tag it as impossible`);
      else
        exit(`The authority was tagged as impossible but it is not`)
    }
    
    if (existOwner) this._requireAuthority("owner");
    this.state.setAuthority(args.name!, args.authority!);
    authNames.names.push(args.name!);
    this.state.setAuthorityNames(authNames);
    return new wallet.add_authority_result(true);
  }

  add_protection(args: wallet.add_protection_arguments): wallet.add_protection_result {
    if (args.protected_contract == null) {
      exit("protected undefined");
    }
    if (args.authority == null) {
      exit("authority undefined");
    }
    const protectionKey = Protobuf.encode(args.protected_contract!, wallet.protected_contract.encode);
    const existingAuthority = this.state.getProtection(protectionKey);
    if (existingAuthority) {
      exit("protected contract already exists");
    }
    this._requireAuthority("owner");
    this.state.setProtection(protectionKey, args.authority!);
    return new wallet.add_protection_result(true);
  }

  get_authorities(args: wallet.get_authorities_arguments): wallet.get_authorities_result {
    const result = new wallet.get_authorities_result();
    const authNames = this.state.getAuthorityNames();
    for (let i = 0; i < authNames.names.length; i++) {
      const authority = this.state.getAuthority(authNames.names[i]);
      result.authorities.push(new wallet.add_authority_arguments(authNames.names[i], authority));
    }
    return result;
  }

  // todo: update authority function
  // todo: delete authority function

  authorize(args: authority.authorize_arguments): authority.authorize_result {
    if (args.type == authority.authorization_type.contract_call) {
      // check if there is an authority for the specific endpoint
      let authContract = this.state.getProtectionByTarget(args.call!, false);
      if (!authContract) {
        // check if there is an authority for the remaining entry points
        authContract = this.state.getProtectionByTarget(args.call!, true);
        if (!authContract) {
          this._requireAuthority("owner"); // todo: change to "active"
          return new authority.authorize_result(true);
        }
      }

      if (authContract.native != null) {
        this._requireAuthority(authContract.native!);
        return new authority.authorize_result(true);
      }

      if (authContract.external != null) {
        const contractId = authContract.external!.contract_id!;
        const entryPoint = authContract.external!.entry_point;
        const resBuf = System.callContract(contractId, entryPoint, Protobuf.encode(args, authority.authorize_arguments.encode))!;
        const authorized = Protobuf.decode<authority.authorize_result>(resBuf, authority.authorize_result.decode);
        return authorized;
      }

      exit("Authority is not defined correctly");
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