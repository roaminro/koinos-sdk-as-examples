import { System, Protobuf, authority } from "@koinos/sdk-as";
import { Transaction_storage as ContractClass } from "./Transaction_storage";
import { transaction_storage as ProtoNamespace } from "./proto/transaction_storage";

export function main(): i32 {
  const contractArgs = System.getArguments();
  let retbuf = new Uint8Array(1024);

  const c = new ContractClass();

  switch (contractArgs.entry_point) {
    case 0x2e31315a: {
      const args = Protobuf.decode<ProtoNamespace.store_transaction_arguments>(
        contractArgs.args,
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
        contractArgs.args,
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
      System.exit(1);
      break;
  }

  System.exit(0, retbuf);
  return 0;
}

main();
