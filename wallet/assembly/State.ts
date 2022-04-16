import { authority, chain, value, System, Protobuf } from "koinos-as-sdk";
import { wallet } from "./proto/wallet";

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

export class State {
  contractId: Uint8Array;
  varsSpace: chain.object_space;
  authoritiesSpace: chain.object_space;
  protectedContractsSpace: chain.object_space;
  requestsUpdateProtectionSpace: chain.object_space;

  constructor(contractId: Uint8Array) {
    this.contractId = contractId;

    this.varsSpace = new chain.object_space(false, contractId, VARS_SPACE_ID);
    this.authoritiesSpace = new chain.object_space(false, contractId, AUTHORITIES_SPACE_ID);
    this.protectedContractsSpace = new chain.object_space(false, contractId, PROTECTED_CONTRACTS_SPACE_ID);
    this.requestsUpdateProtectionSpace = new chain.object_space(false, contractId, REQUESTS_UPDATE_PROTECTION_SPACE_ID);
  }

  getProtectionByTarget(call: authority.call_target, remainingEntryPoints: bool): wallet.authority_contract | null {
    const protectedContract = new wallet.protected_contract(call.contract_id, call.entry_point, remainingEntryPoints);
    const key = Protobuf.encode(protectedContract, wallet.protected_contract.encode);
    const authority = System.getObject<Uint8Array, wallet.authority_contract>(this.protectedContractsSpace, key, wallet.authority_contract.decode);
    return authority;
  }
  
  setTotalRequestsUpdateProtection(total: u32): void {
    const val = new value.value_type(null, 0, 0, 0, 0, total);
    System.putObject(this.varsSpace, TOTAL_REQUESTS_UPDATE_PROTECTION_KEY, val, value.value_type.encode);
  }

  getTotalRequestsUpdateProtection(): u32 {
    const total = System.getObject<Uint8Array, value.value_type>(this.varsSpace, TOTAL_REQUESTS_UPDATE_PROTECTION_KEY, value.value_type.decode);
    if (total == null) return 0;
    return total.uint32_value;
  }

  addRequestUpdateProtection(args: wallet.request_update_protection_arguments): void {
    const total = this.getTotalRequestsUpdateProtection();
    const id = new value.value_type(null, 0, 0, 0, 0, total + 1);
    const key = Protobuf.encode(id, value.value_type.encode);
    System.putObject(this.requestsUpdateProtectionSpace, key, args, wallet.request_update_protection_arguments.encode);
    
    // save id in the list
    const keys = this.getRequestsUpdateProtectionKeys()
    keys.keys.push(key);
    System.putObject(this.varsSpace, REQUESTS_UPDATE_PROTECTION_KEYS_KEY, keys, wallet.key_array.encode);
  }

  getRequestUpdateProtection(key: Uint8Array): wallet.request_update_protection_arguments | null {
    return System.getObject<Uint8Array, wallet.request_update_protection_arguments>(this.requestsUpdateProtectionSpace, key, wallet.request_update_protection_arguments.decode);
  }

  getRequestsUpdateProtectionKeys(): wallet.key_array {
    const keys = System.getObject<Uint8Array, wallet.key_array>(this.varsSpace, REQUESTS_UPDATE_PROTECTION_KEYS_KEY, wallet.key_array.decode);
    return keys ? keys : new wallet.key_array();
  }
}