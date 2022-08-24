import { System, Protobuf, authority } from "@koinos/sdk-as";
import { Delegation as ContractClass } from "./Delegation";
import { delegation as ProtoNamespace } from "./proto/delegation";

export function main(): i32 {
  const contractArgs = System.getArguments();
  let retbuf = new Uint8Array(1024);

  const c = new ContractClass();

  switch (contractArgs.entry_point) {
    case 0x4a2dbd90: {
      const args = Protobuf.decode<authority.authorize_arguments>(
        contractArgs.args,
        authority.authorize_arguments.decode
      );
      const res = c.authorize(args);
      retbuf = Protobuf.encode(res, authority.authorize_result.encode);
      break;
    }

    case 0x6c843663: {
      const args = Protobuf.decode<ProtoNamespace.call_contract_arguments>(
        contractArgs.args,
        ProtoNamespace.call_contract_arguments.decode
      );
      const res = c.call_contract(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.call_contract_result.encode);
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
