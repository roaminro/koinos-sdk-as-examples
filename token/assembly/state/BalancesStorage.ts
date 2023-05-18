import { Storage } from '@koinos/sdk-as';
import { token } from '../proto/token';

const BALANCE_SPACE_ID = 1;

export class BalancesStorage extends Storage.Map<Uint8Array, token.balance_object> {
  constructor(contractId: Uint8Array) {
    super(
      contractId, 
      BALANCE_SPACE_ID, 
      token.balance_object.decode, 
      token.balance_object.encode,
      // default balance is 0
      () => new token.balance_object()
    );
  }
}