import { chain, System } from "koinos-as-sdk";
import { wallet } from "./proto/wallet";

const AUTHORITIES_SPACE_ID = 0;
const AUTHORITY_NAMES_SPACE_ID = 1;
const AUTHORITY_NAMES_KEY = new Uint8Array(0);

export class State {
  contractId: Uint8Array;
  authoritiesSpace: chain.object_space;
  authorityNamesSpace: chain.object_space;

  constructor(contractId: Uint8Array) {
    this.contractId = contractId;

    this.authoritiesSpace = new chain.object_space(false, contractId, AUTHORITIES_SPACE_ID);
    this.authorityNamesSpace = new chain.object_space(false, contractId, AUTHORITY_NAMES_SPACE_ID);
  }

  setAuthority(name: string, authority: wallet.authority): void {
    System.putObject(this.authoritiesSpace, name, authority, wallet.authority.encode);
  }

  getAuthority(name: string): wallet.authority {
    const authority = System.getObject<String, wallet.authority>(this.authoritiesSpace, name, wallet.authority.decode);
    return authority ? authority : new wallet.authority();
  }

  setAuthorityNames(authNames: wallet.authority_names): void {
    System.putObject(this.authorityNamesSpace, AUTHORITY_NAMES_KEY, authNames, wallet.authority_names);
  }

  getAuthorityNames(): wallet.authority_names {
    const authNames = System.getObject<Uint8Array, wallet.authority_names>(this.authorityNamesSpace, AUTHORITY_NAMES_KEY, wallet.authority_names);
    return authNames ? authNames : new wallet.authority_names();
  }
}