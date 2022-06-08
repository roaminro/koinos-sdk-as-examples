import { System, Protobuf, authority } from "koinos-sdk-as";
import { Delegation as ContractClass } from "./Delegation";
import { delegation as ProtoNamespace } from "./proto/delegation";

export function main(): i32 {
  const entryPoint = System.getEntryPoint();
  const rdbuf = System.getContractArguments();
  let retbuf = new Uint8Array(1024);

  const c = new ContractClass();

  switch (entryPoint) {
    case 0x4a2dbd90: {
      const args = Protobuf.decode<authority.authorize_arguments>(
        rdbuf,
        authority.authorize_arguments.decode
      );
      const res = c.authorize(args);
      retbuf = Protobuf.encode(res, authority.authorize_result.encode);
      break;
    }

    case 0x6c843663: {
      const args = Protobuf.decode<ProtoNamespace.call_contract_arguments>(
        rdbuf,
        ProtoNamespace.call_contract_arguments.decode
      );
      const res = c.call_contract(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.call_contract_result.encode);
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
