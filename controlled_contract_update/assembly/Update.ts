import { authority, Base58, Base64, chain, Crypto, protocol, System } from "koinos-as-sdk";
import { update } from "./proto/update";

const DIGEST_KEY = new Uint8Array(0);
const DIGEST_SPACE = new chain.object_space(false, System.getContractId(), 0);

export class Update {
  
  authorize(args: authority.authorize_arguments): authority.authorize_result {
    // make the buffer large enough to retrieve the transaction which contains the bytecode
    System.MAX_BUFFER_SIZE = 1024 * 50;

    const transaction = System.getTransaction();
    const contractId = System.getContractId();

    let authorizedUpload = false;

    for (let index = 0; index < transaction.operations.length; index++) {
      const op = transaction.operations[index];
      
      // search for an upload_contract operation for this contract
      if (op.upload_contract) {
        const uploadOp = (op.upload_contract as protocol.upload_contract_operation);
        if (Base58.encode(uploadOp.contract_id as Uint8Array) == Base58.encode(contractId)) {

          // calculate the bytecode's digest
          const bytecode = uploadOp.bytecode as Uint8Array;
          const bytecodeDigest = System.hash(Crypto.multicodec.sha2_256, bytecode) as Uint8Array;
          const b64Digest = Base64.encode(bytecodeDigest);

          // compare it to the allowed one
          const allowedDisgest = System.getBytes(DIGEST_SPACE, DIGEST_KEY);
          if (allowedDisgest) {
            const b64AllowedDigest = Base64.encode(allowedDisgest);
            authorizedUpload = b64Digest == b64AllowedDigest;
            System.log(`contract bytecode was successfully updated: digest ${b64Digest}`);
          }
        }
      }
    }

    return new authority.authorize_result(authorizedUpload);
  }

  allow_sha256(
    args: update.allow_sha256_arguments
  ): update.allow_sha256_result {
    const digest = args.digest as string;

    // implement a governance mechanism to allow a contract update to be published
    System.putBytes(DIGEST_SPACE, DIGEST_KEY, Base64.decode(digest));

    return new update.allow_sha256_result();
  }
}
