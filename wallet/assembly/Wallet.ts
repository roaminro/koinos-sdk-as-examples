import { authority, value, Protobuf, chain, System, Crypto, SafeMath, Base58 } from "koinos-as-sdk";
import { Collection } from "./Collection";
import { wallet } from "./proto/wallet";
import { State } from "./State";

const VARS_SPACE_ID = 0;
const AUTHORITIES_SPACE_ID = 1;
const PROTECTED_CONTRACTS_SPACE_ID = 2;
const REQUESTS_UPDATE_PROTECTION_SPACE_ID = 3;

const AUTHORITY_NAMES_KEY = new Uint8Array(1);
const PROTECTED_KEYS_KEY = new Uint8Array(1);
const REQUESTS_UPDATE_PROTECTION_KEYS_KEY = new Uint8Array(1);
const TOTAL_REQUESTS_UPDATE_PROTECTION_KEY = new Uint8Array(1);
AUTHORITY_NAMES_KEY[0] = 0;
PROTECTED_KEYS_KEY[0] = 1;
REQUESTS_UPDATE_PROTECTION_KEYS_KEY[0] = 2;
TOTAL_REQUESTS_UPDATE_PROTECTION_KEY[0] = 3;

function exit(message: string): void {
  System.log(message);
  System.exitContract(1);
}

function fromUint32toUint64(n: u32): u64 {
  return (n as u64) - u64.MAX_VALUE + u32.MAX_VALUE;
}

function isImpossible(authority: wallet.authority): boolean {
  const keyAuths = authority.key_auths;

  // add weights from addresses
  let totalWeightAddresses: u32 = 0;
  for(let i = 0; i < keyAuths.length; i++) {
    if (keyAuths[i].address != null)
      totalWeightAddresses += keyAuths[i].weight;
  }

  let hasContract = false;
  for(let i = 0; i < keyAuths.length; i++) {
    if (keyAuths[i].contract_id != null) {
      hasContract = true;
      if(totalWeightAddresses + keyAuths[i].weight < authority.weight_threshold) {
        System.log(`Impossible for contract ${Base58.encode(keyAuths[i].contract_id!)}`);
        return true;
      }
    } else if (keyAuths[i].address == null) {
      exit(`No address or contract_id in key_auth ${i}`);
    }
  }

  if(hasContract) return false;
  return totalWeightAddresses < authority.weight_threshold;
}

export class Wallet {

  contractId: Uint8Array;
  state: State;
  authorities: Collection<wallet.authority, string>;
  protections: Collection<wallet.authority_contract, Uint8Array>;

  constructor() {
    this.contractId = System.getContractId();
    this.state = new State(this.contractId);
    const varsSpace = new chain.object_space(false, this.contractId, VARS_SPACE_ID);
    this.authorities = new Collection(
      new chain.object_space(false, this.contractId, AUTHORITIES_SPACE_ID),
      varsSpace,
      AUTHORITY_NAMES_KEY,
      wallet.authority.encode,
      wallet.authority.decode,
      true
    );
    this.protections = new Collection(
      new chain.object_space(false, this.contractId, PROTECTED_CONTRACTS_SPACE_ID),
      varsSpace,
      PROTECTED_KEYS_KEY,
      wallet.authority_contract.encode,
      wallet.authority_contract.decode,
      false
    );
  }

  _equalBytes(a: Uint8Array, b: Uint8Array): boolean {
    if (a.length != b.length) return false;
    for (let i = 0; i < a.length; i++ ) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  _requireAuthority(name: string): void {
    const auth = this.authorities.get(name);
    if (auth == null) {
      exit(`invalid authority '${name}'`);
    }
    
    const sigBytes = System.getTransactionField("signatures")!.message_value!.value!;
    const signatures = Protobuf.decode<value.list_type>(sigBytes, value.list_type.decode);    
    const txId = System.getTransactionField("id")!.bytes_value!;
    
    let totalWeight: u32 = 0;

    // add weights from signatures
    const signers: Uint8Array[] = [];
    for(let i = 0; i < signatures.values.length; i++) {
      const publicKey = System.recoverPublicKey(signatures.values[i].bytes_value!, txId);
      const address = Crypto.addressFromPublicKey(publicKey!);

      for(let j = 0; j < signers.length; j++) {
        if(this._equalBytes(address, signers[i])) {
          exit("Duplicate signature detected");
        }
      }

      signers.push(address);

      for(let j = 0; j < auth!.key_auths.length; j++) {
        const keyAddress = auth!.key_auths[j].address;
        if(keyAddress != null && this._equalBytes(address, keyAddress)) {
          totalWeight += auth!.key_auths[j].weight;
        }
      }
    }

    // add weight from the caller
    const caller = System.getCaller().caller;
    if (caller != null) {
      for(let j = 0; j < auth!.key_auths.length; j++) {
        const contractId = auth!.key_auths[j].contract_id;
        if(contractId != null && this._equalBytes(caller, contractId)) {
          totalWeight += auth!.key_auths[j].weight;
        }
      }
    }
    
    if (totalWeight < auth!.weight_threshold) {
      exit(`authority ${name} failed`);
    }
  }

  add_authority(args: wallet.add_authority_arguments): wallet.add_authority_result {
    let names = this.authorities.getKeysS();
    const existOwner = names.length > 0;
    if (!existOwner && args.name != "owner") {
      exit("The first authority must be 'owner'");
    }

    if (args.name == null) {
      exit("name undefined");
    }

    if (args.authority == null) {
      exit("authority undefined");
    }

    if (names.includes(args.name!)) {
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
    this.authorities.set(args.name!, args.authority!);
    names.push(args.name!);
    this.authorities.setKeysS(names);
    return new wallet.add_authority_result(true);
  }

  add_protection(args: wallet.add_protection_arguments): wallet.add_protection_result {
    if (args.protected_contract == null) {
      exit("protected undefined");
    }
    if (args.authority == null) {
      exit("authority undefined");
    }
    if (args.protected_contract!.contract_id == null) {
      exit("protected_contract.contract_id not defined");
    }
    const protectionKey = Protobuf.encode(args.protected_contract!, wallet.protected_contract.encode);
    const existingAuthority = this.protections.get(protectionKey);
    if (existingAuthority) {
      exit("protected contract already exists");
    }
    if (args.authority!.native != null) {
      const auth = this.authorities.get(args.authority!.native!);
      if (auth == null) {
        exit(`authority '${args.authority!.native!}' does not exist`);
      }
    } else if (args.authority!.external != null) {
      if (args.authority!.external!.contract_id == null)
        exit("authority.external.contract_id not defined");
    } else {
      exit("authority without native or external");
    }
    args.authority!.last_update = System.getHeadInfo().head_block_time;
    this._requireAuthority("owner");
    this.protections.set(protectionKey, args.authority!);

    const protectedContractKeys = this.protections.getKeys();
    protectedContractKeys.push(protectionKey);
    this.protections.setKeys(protectedContractKeys);

    return new wallet.add_protection_result(true);
  }

  request_update_protection(args: wallet.request_update_protection_arguments): wallet.request_update_protection_result {
    if (args.protected_contract == null) {
      exit("protected undefined");
    }
    if (args.authority == null) {
      exit("authority undefined");
    }
    if (args.protected_contract!.contract_id == null) {
      exit("protected_contract.contract_id not defined");
    }
    const protectionKey = Protobuf.encode(args.protected_contract!, wallet.protected_contract.encode);
    const existingAuthority = this.protections.get(protectionKey);
    if (!existingAuthority) {
      exit("protected contract does not exist");
    }
    if (args.authority!.native != null) {
      const auth = this.authorities.get(args.authority!.native!);
      if (auth == null) {
        exit(`authority '${args.authority!.native!}' does not exist`);
      }
    } else if (args.authority!.external != null) {
      if (args.authority!.external!.contract_id == null)
        exit("authority.external.contract_id not defined");
    } else {
      exit("authority without native or external");
    }
    
    const total = this.state.getTotalRequestsUpdateProtection();
    args.authority!.last_update = 0;
    args.application_time = System.getHeadInfo().head_block_time + fromUint32toUint64(existingAuthority!.delay_update);
    args.id = total + 1;
    this._requireAuthority("owner");

    // check if request already exists and in that case reject
    this.state.addRequestUpdateProtection(args);
    return new wallet.request_update_protection_result(true);
  }

  get_authorities(args: wallet.get_authorities_arguments): wallet.get_authorities_result {
    const result = new wallet.get_authorities_result();
    const names = this.authorities.getKeysS();
    for (let i = 0; i < names.length; i++) {
      const authority = this.authorities.get(names[i]);
      result.authorities.push(new wallet.add_authority_arguments(names[i], authority));
    }
    return result;
  }

  get_protections(args: wallet.get_protections_arguments): wallet.get_protections_result {
    const result = new wallet.get_protections_result();
    const keys = this.protections.getKeys();
    for (let i = 0; i < keys.length; i++) {
      const protectedContract = Protobuf.decode<wallet.protected_contract>(keys[i], wallet.protected_contract.decode);
      const authorityContract = this.protections.get(keys[i]);
      result.protections.push(new wallet.add_protection_arguments(protectedContract, authorityContract));
    }
    return result;
  }

  get_requests_update_protection(args: wallet.get_requests_update_protection_arguments): wallet.get_requests_update_protection_result {
    const result = new wallet.get_requests_update_protection_result();
    const keys = this.state.getRequestsUpdateProtectionKeys().keys;
    for (let i = 0; i < keys.length; i++) {
      const request = this.state.getRequestUpdateProtection(keys[i]);
      if (request == null) {
        System.log(`The key ${i} is empty`);
      } else {
        result.requests.push(request);
      }
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
          this._requireAuthority("owner"); // todo: change to "active" ?
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

  require_authority(args: wallet.require_authority_arguments): wallet.require_authority_result {
    this._requireAuthority(args.name!);
    return new wallet.require_authority_result(true);
  }

  // todo: authorize update authority protected contract
  // todo: request update (clock starts)
  // todo: update protected contract
  // todo: create events
}