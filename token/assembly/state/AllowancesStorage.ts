import { Storage } from '@koinos/sdk-as';
import { token } from '../proto/token';
import { SpaceIds } from './SpaceIds';

export class AllowancesStorage extends Storage.ProtoMap<token.allowance_key, token.uint64_object> {
  constructor(contractId: Uint8Array) {
    super(
      contractId, 
      SpaceIds.allowances, 
      token.allowance_key.decode, 
      token.allowance_key.encode,
      token.uint64_object.decode, 
      token.uint64_object.encode,
      // default balance is 0
      () => new token.uint64_object(0)
    );
  }
}