import {
  System,
  Protobuf,
  authorize_arguments,
  authorize_result,
} from "koinos-sdk-as";
import { Transaction_storage as ContractClass } from "./Transaction_storage";
import * as ProtoNamespace from "./proto/transaction_storage";

export function main(): i32 {
  const entryPoint = System.getEntryPoint();
  const rdbuf = System.getContractArguments();
  let retbuf = new Uint8Array(1024);

  const c = new ContractClass();

  switch (entryPoint) {
    case 0x2e31315a: {
      const args = Protobuf.decode<ProtoNamespace.store_transaction_arguments>(
        rdbuf,
        ProtoNamespace.store_transaction_arguments.decode
      );
      const res = c.store_transaction(args);
      retbuf = Protobuf.encode(
        res,
        ProtoNamespace.store_transaction_result.encode
      );
      break;
    }

    case 0x8fa709bd: {
      const args = Protobuf.decode<ProtoNamespace.get_transaction_arguments>(
        rdbuf,
        ProtoNamespace.get_transaction_arguments.decode
      );
      const res = c.get_transaction(args);
      retbuf = Protobuf.encode(
        res,
        ProtoNamespace.get_transaction_result.encode
      );
      break;
    }

    default:
      System.exitContract(1);
      break;
  }

  System.setContractResult(retbuf);

  System.exitContract(0);
  return 0;
}

main();
