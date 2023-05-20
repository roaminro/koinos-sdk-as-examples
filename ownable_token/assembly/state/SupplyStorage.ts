import { Storage } from '@koinos/sdk-as';
import { token } from '../proto/token';
import { SUPPLY_SPACE_ID } from './SpaceIds';

export class SupplyStorage extends Storage.Obj<token.balance_object> {
  constructor(contractId: Uint8Array) {
    super(
      contractId, 
      SUPPLY_SPACE_ID, 
      token.balance_object.decode, 
      token.balance_object.encode,
      // total supply is 0 by default
      () => new token.balance_object()
    );
  }
}
