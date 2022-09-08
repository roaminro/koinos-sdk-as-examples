import { Base58, Base64, Crypto, chain, protocol, authority, StringBytes, System } from "@koinos/sdk-as";
import { update } from "./proto/update";

const DIGEST_KEY = 'digest';
const CONTRACT_SIZE_KEY = 'contract_size';
const DIGEST_SPACE = new chain.object_space(false, System.getContractId(), 0);

export class Update {

  authorize(args: authority.authorize_arguments): authority.authorize_result {
    let authorizedUpload = false;

    // get the contract size that will be uploaded
    // this will be used to make the buffer large enough to retrieve the transaction which contains the bytecode
    const contractSize = System.getBytes(DIGEST_SPACE, CONTRACT_SIZE_KEY);

    if (contractSize) {
      System.MAX_BUFFER_SIZE = 1024 + parseInt(StringBytes.bytesToString(contractSize) as string) as i32;

      const transaction = System.getTransaction();
      const contractId = System.getContractId();


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
    }

    return new authority.authorize_result(authorizedUpload);
  }

  allow_sha256(
    args: update.allow_sha256_arguments
  ): update.allow_sha256_result {
    const digest = args.digest as string;
    const contract_size = args.contract_size;

    // implement a governance mechanism to allow a contract update to be published
    System.putBytes(DIGEST_SPACE, DIGEST_KEY, Base64.decode(digest));
    System.putBytes(DIGEST_SPACE, CONTRACT_SIZE_KEY, StringBytes.stringToBytes(contract_size.toString()));

    return new update.allow_sha256_result();
  }
}
