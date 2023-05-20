import { System, Protobuf, authority } from "@koinos/sdk-as";
import { Token as ContractClass } from "./Token";
import { token as ProtoNamespace } from "./proto/token";

export function main(): i32 {
  const contractArgs = System.getArguments();
  let retbuf = new Uint8Array(1024);

  const c = new ContractClass();

  switch (contractArgs.entry_point) {
    case 0x82a3537f: {
      const args = Protobuf.decode<ProtoNamespace.name_arguments>(
        contractArgs.args,
        ProtoNamespace.name_arguments.decode
      );
      const res = c.name(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.name_result.encode);
      break;
    }

    case 0xb76a7ca1: {
      const args = Protobuf.decode<ProtoNamespace.symbol_arguments>(
        contractArgs.args,
        ProtoNamespace.symbol_arguments.decode
      );
      const res = c.symbol(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.symbol_result.encode);
      break;
    }

    case 0xee80fd2f: {
      const args = Protobuf.decode<ProtoNamespace.decimals_arguments>(
        contractArgs.args,
        ProtoNamespace.decimals_arguments.decode
      );
      const res = c.decimals(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.decimals_result.encode);
      break;
    }

    case 0xb0da3934: {
      const args = Protobuf.decode<ProtoNamespace.total_supply_arguments>(
        contractArgs.args,
        ProtoNamespace.total_supply_arguments.decode
      );
      const res = c.total_supply(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.total_supply_result.encode);
      break;
    }

    case 0x02c683fd: {
      const args = Protobuf.decode<ProtoNamespace.max_supply_arguments>(
        contractArgs.args,
        ProtoNamespace.max_supply_arguments.decode
      );
      const res = c.max_supply(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.max_supply_result.encode);
      break;
    }

    case 0x5c721497: {
      const args = Protobuf.decode<ProtoNamespace.balance_of_arguments>(
        contractArgs.args,
        ProtoNamespace.balance_of_arguments.decode
      );
      const res = c.balance_of(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.balance_of_result.encode);
      break;
    }

    case 0x27f576ca: {
      const args = Protobuf.decode<ProtoNamespace.transfer_arguments>(
        contractArgs.args,
        ProtoNamespace.transfer_arguments.decode
      );
      const res = c.transfer(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.empty_message.encode);
      break;
    }

    case 0xdc6f17bb: {
      const args = Protobuf.decode<ProtoNamespace.mint_arguments>(
        contractArgs.args,
        ProtoNamespace.mint_arguments.decode
      );
      const res = c.mint(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.empty_message.encode);
      break;
    }

    case 0x859facc5: {
      const args = Protobuf.decode<ProtoNamespace.burn_arguments>(
        contractArgs.args,
        ProtoNamespace.burn_arguments.decode
      );
      const res = c.burn(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.empty_message.encode);
      break;
    }

    case 0x470ebe82: {
      const args = Protobuf.decode<ProtoNamespace.initialize_arguments>(
        contractArgs.args,
        ProtoNamespace.initialize_arguments.decode
      );
      const res = c.initialize(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.empty_message.encode);
      break;
    }

    case 0x48bd00e9: {
      const args = Protobuf.decode<ProtoNamespace.update_owner_arguments>(
        contractArgs.args,
        ProtoNamespace.update_owner_arguments.decode
      );
      const res = c.update_owner(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.empty_message.encode);
      break;
    }

    case 0xfcf7a68f: {
      const args = Protobuf.decode<ProtoNamespace.get_metadata_arguments>(
        contractArgs.args,
        ProtoNamespace.get_metadata_arguments.decode
      );
      const res = c.get_metadata(args);
      retbuf = Protobuf.encode(res, ProtoNamespace.metadata_object.encode);
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
