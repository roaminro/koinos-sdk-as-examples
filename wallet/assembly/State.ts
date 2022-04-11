import { authority, chain, System, Protobuf } from "koinos-as-sdk";
import { wallet } from "./proto/wallet";

const AUTHORITIES_SPACE_ID = 0;
const AUTHORITY_NAMES_SPACE_ID = 1;
const PROTECTED_CONTRACTS_SPACE_ID = 2;
const AUTHORITY_NAMES_KEY = new Uint8Array(0);

export class State {
  contractId: Uint8Array;
  authoritiesSpace: chain.object_space;
  authorityNamesSpace: chain.object_space;
  protectedContractsSpace: chain.object_space;

  constructor(contractId: Uint8Array) {
    this.contractId = contractId;

    this.authoritiesSpace = new chain.object_space(false, contractId, AUTHORITIES_SPACE_ID);
    this.authorityNamesSpace = new chain.object_space(false, contractId, AUTHORITY_NAMES_SPACE_ID);
    this.protectedContractsSpace = new chain.object_space(false, contractId, PROTECTED_CONTRACTS_SPACE_ID);
  }

  setAuthority(name: string, authority: wallet.authority): void {
    System.putObject(this.authoritiesSpace, name, authority, wallet.authority.encode);
  }

  getAuthority(name: string): wallet.authority | null {
    const authority = System.getObject<String, wallet.authority>(this.authoritiesSpace, name, wallet.authority.decode);
    return authority;
  }

  setAuthorityNames(authNames: wallet.authority_names): void {
    System.putObject(this.authorityNamesSpace, AUTHORITY_NAMES_KEY, authNames, wallet.authority_names.encode);
  }

  getAuthorityNames(): wallet.authority_names {
    const authNames = System.getObject<Uint8Array, wallet.authority_names>(this.authorityNamesSpace, AUTHORITY_NAMES_KEY, wallet.authority_names.decode);
    return authNames ? authNames : new wallet.authority_names();
  }

  getAuthorityProtectedContract(call: authority.call_target, entireContract: boolean): wallet.authority_contract | null {
    const protectedContract = new wallet.protected_contract(call.contract_id, call.entry_point, entireContract);
    const key = Protobuf.encode(protectedContract, wallet.protected_contract.encode);
    const authority = System.getObject<Uint8Array, wallet.authority_contract>(this.protectedContractsSpace, key, wallet.authority_contract.decode);
    return authority;
  }
}