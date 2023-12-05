import { Storage } from "@koinos/sdk-as";
import { token } from "../proto/token";
import { SpaceIds } from "./SpaceIds";

export class MetadataStorage extends Storage.Obj<token.metadata_object> {
  contractId: Uint8Array;
  constructor(contractId: Uint8Array) {
    super(
      contractId,
      SpaceIds.metadata,
      token.metadata_object.decode,
      token.metadata_object.encode
    );

    this.contractId = contractId;
  }

  getMetadata(): token.metadata_object {
    const metadata = this.get();

    if (!metadata) {
      // default metadata object has the contract id as owner and 0 supply
      return new token.metadata_object(this.contractId, 0);
    }

    return metadata;
  }
}
