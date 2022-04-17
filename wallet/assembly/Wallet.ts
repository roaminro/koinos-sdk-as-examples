import { authority, value, Protobuf, chain, System, Crypto, SafeMath, Base58 } from "koinos-as-sdk";
import { wallet } from "./proto/wallet";
import { equalBytes, fromUint32toUint64 } from "./utils";
import { Collection } from "./Collection";

const GRACE_PERIOD_PROTECTION: u64 = 86400; // 1 day

const VARS_SPACE_ID = 0;
const AUTHORITIES_SPACE_ID = 1;
const PROTECTED_CONTRACTS_SPACE_ID = 2;
const REQUESTS_UPDATE_PROTECTION_SPACE_ID = 3;

const AUTHORITY_NAMES_KEY = new Uint8Array(1);
const PROTECTED_KEYS_KEY = new Uint8Array(1);
const REQUESTS_UPDATE_PROTECTION_KEYS_KEY = new Uint8Array(1);
const COUNTER_REQUESTS_UPDATE_PROTECTION_KEY = new Uint8Array(1);
AUTHORITY_NAMES_KEY[0] = 0;
PROTECTED_KEYS_KEY[0] = 1;
REQUESTS_UPDATE_PROTECTION_KEYS_KEY[0] = 2;
COUNTER_REQUESTS_UPDATE_PROTECTION_KEY[0] = 3;

function exit(message: string): void {
  System.log(message);
  System.exitContract(1);
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

class ResultVerifyArgumentsProtection {
  protectionKey: Uint8Array;
  existingAuthority: wallet.authority_contract | null;
  constructor(protectionKey: Uint8Array, existingAuthority: wallet.authority_contract | null) {
    this.protectionKey = protectionKey;
    this.existingAuthority = existingAuthority;
  }
}

class Result {
  error: boolean;
  message: string;
  constructor(error: boolean, message: string) {
    this.error = error;
    this.message = message;
  }
}

export class Wallet {

  contractId: Uint8Array;
  authorities: Collection<wallet.authority, string>;
  protections: Collection<wallet.authority_contract, Uint8Array>;
  requests: Collection<wallet.request_update_protection_arguments, Uint8Array>;

  constructor() {
    this.contractId = System.getContractId();
    const varsSpace = new chain.object_space(false, this.contractId, VARS_SPACE_ID);
    this.authorities = new Collection(
      new chain.object_space(false, this.contractId, AUTHORITIES_SPACE_ID),
      varsSpace,
      AUTHORITY_NAMES_KEY,
      new Uint8Array(1), // not used
      wallet.authority.encode,
      wallet.authority.decode,
      true
    );
    this.protections = new Collection(
      new chain.object_space(false, this.contractId, PROTECTED_CONTRACTS_SPACE_ID),
      varsSpace,
      PROTECTED_KEYS_KEY,
      new Uint8Array(1), // not used
      wallet.authority_contract.encode,
      wallet.authority_contract.decode,
      false
    );
    this.requests = new Collection(
      new chain.object_space(false, this.contractId, REQUESTS_UPDATE_PROTECTION_SPACE_ID),
      varsSpace,
      REQUESTS_UPDATE_PROTECTION_KEYS_KEY,
      COUNTER_REQUESTS_UPDATE_PROTECTION_KEY,
      wallet.request_update_protection_arguments.encode,
      wallet.request_update_protection_arguments.decode,
      false
    );
  }

  _getProtectionByTarget(call: authority.call_target, remainingEntryPoints: bool): wallet.authority_contract | null {
    const protectedContract = new wallet.protected_contract(call.contract_id, call.entry_point, remainingEntryPoints);
    const key = Protobuf.encode(protectedContract, wallet.protected_contract.encode);
    return this.protections.get(key);
  }

  _requireAuthority(name: string): void {
    const result = this._verifyAuthority(name);
    if (result.error) exit(result.message);
  }

  _verifyAuthority(name: string): Result {
    const auth = this.authorities.get(name);
    if (auth == null) {
      return new Result(true, `invalid authority '${name}'`);
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
        if(equalBytes(address, signers[i])) {
          return new Result(true, "Duplicate signature detected");
        }
      }

      signers.push(address);

      for(let j = 0; j < auth.key_auths.length; j++) {
        const keyAddress = auth.key_auths[j].address;
        if(keyAddress != null && equalBytes(address, keyAddress)) {
          totalWeight += auth.key_auths[j].weight;
        }
      }
    }

    // add weight from the caller
    const caller = System.getCaller().caller;
    if (caller != null) {
      for(let j = 0; j < auth.key_auths.length; j++) {
        const contractId = auth.key_auths[j].contract_id;
        if(contractId != null && equalBytes(caller, contractId)) {
          totalWeight += auth.key_auths[j].weight;
        }
      }
    }
    
    if (totalWeight < auth.weight_threshold) {
      return new Result(true, `authority ${name} failed`);
    }

    return new Result(false, "");
  }

  add_authority(args: wallet.add_authority_arguments): wallet.add_authority_result {
    let names = this.authorities.getKeysS();
    const existOwner = names.length > 0;
    if (!existOwner && args.name != "owner" && args.name != "recovery") {
      exit("The first authority must be 'owner' or 'recovery'");
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

    if (impossible && args.name == "recovery") {
      exit("recovery authority can not be impossible");
    }
    
    if (existOwner) this._requireAuthority("owner");
    this.authorities.set(args.name!, args.authority!);
    names.push(args.name!);
    this.authorities.setKeysS(names);
    return new wallet.add_authority_result(true);
  }

  verifyArgumentsProtection(protected_contract: wallet.protected_contract | null, authority: wallet.authority_contract | null, isNewProtection: boolean, checkAuthority: boolean): ResultVerifyArgumentsProtection {
    if (protected_contract == null) {
      exit("protected undefined");
    }
    if (checkAuthority && authority == null) {
      exit("authority undefined");
    }
    if (protected_contract!.contract_id == null) {
      exit("protected_contract.contract_id not defined");
    }
    const protectionKey = Protobuf.encode(protected_contract!, wallet.protected_contract.encode);
    const existingAuthority = this.protections.get(protectionKey);
    if (isNewProtection && existingAuthority) {
      exit("protected contract already exists");
    }
    if (!isNewProtection && !existingAuthority) {
      exit("protected contract does not exist");
    }

    if (checkAuthority) {
      if (authority!.native != null) {
        const auth = this.authorities.get(authority!.native!);
        if (auth == null) {
          exit(`authority '${authority!.native!}' does not exist`);
        }
      } else if (authority!.external != null) {
        if (authority!.external!.contract_id == null)
          exit("authority.external.contract_id not defined");
      } else {
        exit("authority without native or external");
      }
    }
    return new ResultVerifyArgumentsProtection(protectionKey, existingAuthority);
  }

  add_protection(args: wallet.add_protection_arguments): wallet.add_protection_result {
    const resultVerify = this.verifyArgumentsProtection(args.protected_contract, args.authority, true, true);
    
    args.authority!.last_update = System.getHeadInfo().head_block_time;
    this._requireAuthority("owner");
    this.protections.set(resultVerify.protectionKey, args.authority!);
    this.protections.addKey(resultVerify.protectionKey);

    return new wallet.add_protection_result(true);
  }

  request_update_protection(args: wallet.request_update_protection_arguments): wallet.request_update_protection_result {
    const resultVerify = this.verifyArgumentsProtection(args.protected_contract, args.authority, false, !args.remove);

    const requests = this.requests.getAll();
    for (let i = 0; i < requests.length; i++) {
      const pKey = Protobuf.encode(requests[i].protected_contract, wallet.protected_contract.encode);
      if(equalBytes(resultVerify.protectionKey, pKey))
        exit(`request ongoing for this protected contract`);
    }
    
    const counter = this.requests.getCounter();
    args.authority!.last_update = 0;
    args.application_time = System.getHeadInfo().head_block_time + fromUint32toUint64(resultVerify.existingAuthority!.delay_update);
    args.id = counter + 1;
    this._requireAuthority("owner");

    const key = Collection.calcKey(args.id);
    this.requests.set(key, args);
    this.requests.addKey(key);

    return new wallet.request_update_protection_result(true);
  }

  update_protection(args: wallet.update_protection_arguments): wallet.update_protection_result {
    const resultVerify = this.verifyArgumentsProtection(args.protected_contract, args.authority, false, !args.remove);

    let authorized: boolean = false;
    let indexRequest: i32 = -1;
    let requests: wallet.request_update_protection_arguments[] = [];
    const bytes1 = Protobuf.encode(args.protected_contract, wallet.protected_contract.encode);
    const bytes2 = args.remove ? new Uint8Array(0) : Protobuf.encode(args.authority, wallet.authority_contract.encode);

    let verifRecovery = this._verifyAuthority("recovery");
    if(verifRecovery.error) {
      System.log(verifRecovery.message);
      const now = System.getHeadInfo().head_block_time;
      if(resultVerify.existingAuthority!.last_update < now + GRACE_PERIOD_PROTECTION) {
        verifRecovery = this._verifyAuthority("owner");
        if(verifRecovery.error) {
          System.log(verifRecovery.message);
        } else {
          authorized = true;
        }
      } else {
        System.log("not in grace period");
      }

      if(!authorized) {
        requests = this.requests.getAll();
        for (let i = 0; i < requests.length; i++) {
          const bytes1Req = Protobuf.encode(requests[i].protected_contract, wallet.protected_contract.encode);
          const bytes2Req = args.remove ? new Uint8Array(0) : Protobuf.encode(requests[i].authority, wallet.authority_contract.encode);
          if(equalBytes(bytes1, bytes1Req) && equalBytes(bytes2, bytes2Req)) {
            indexRequest = i;
            break;
          }
        }
        if (indexRequest < 0) {
          exit("the corresponding request to update the protection was not found");
        }
        if(requests[indexRequest].application_time > now) {
          exit("it is not yet the application time");
        }
        authorized = true;
      }
    } else {
      authorized = true;
    }

    if(!authorized) System.exitContract(1);
    
    // update protection
    if (args.remove) {
      this.protections.remove(resultVerify.protectionKey);
      this.protections.removeKey(resultVerify.protectionKey);
    } else {
      args.authority!.last_update = System.getHeadInfo().head_block_time;
      this.protections.set(resultVerify.protectionKey, args.authority!);
    }

    // remove existing request
    if (indexRequest < 0) {
      requests = this.requests.getAll();
      for (let i = 0; i < requests.length; i++) {
        const bytes1Req = Protobuf.encode(requests[i].protected_contract, wallet.protected_contract.encode);
        const bytes2Req = args.remove ? new Uint8Array(0) : Protobuf.encode(requests[i].authority, wallet.authority_contract.encode);
        if(equalBytes(bytes1, bytes1Req) && equalBytes(bytes2, bytes2Req)) {
          indexRequest = i;
          break;
        }
      }
    }
    if (indexRequest >= 0) {
      const key = Collection.calcKey(requests[indexRequest].id);
      this.requests.remove(key);
      this.requests.removeKey(key);
    }

    return new wallet.update_protection_result(true);
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
    const keys = this.requests.getKeys();
    for (let i = 0; i < keys.length; i++) {
      const request = this.requests.get(keys[i]);
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
      let authContract = this._getProtectionByTarget(args.call!, false);
      if (!authContract) {
        // check if there is an authority for the remaining entry points
        authContract = this._getProtectionByTarget(args.call!, true);
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
  // todo: create events
}