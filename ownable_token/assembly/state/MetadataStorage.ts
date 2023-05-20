import { Storage } from '@koinos/sdk-as';
import { token } from '../proto/token';
import { METADATA_SPACE_ID } from './SpaceIds';

export class MetadataStorage extends Storage.Obj<token.metadata_object> {
  constructor(contractId: Uint8Array) {
    super(
      contractId, 
      METADATA_SPACE_ID, 
      token.metadata_object.decode, 
      token.metadata_object.encode,
      () => new token.metadata_object()
    );
  }
}
