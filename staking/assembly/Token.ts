import { Protobuf, System } from "koinos-as-sdk";
import { token } from "./proto/token";

enum entries {
  name_entry = 0x82a3537f,
  symbol_entry = 0xb76a7ca1,
  decimals_entry = 0xee80fd2f,
  total_supply_entry = 0xb0da3934,
  balance_of_entry = 0x5c721497,
  transfer_entry = 0x27f576ca,
  mint_entry = 0xdc6f17bb
}

export class Token {
  _contractId: Uint8Array;

  constructor(contractId: Uint8Array) {
    this._contractId = contractId;
  }

  name(): string {
    const args = new token.name_arguments();

    const buf = System.callContract(this._contractId, entries.name_entry, Protobuf.encode(args, token.name_arguments.encode));
    const res = Protobuf.decode<token.name_result>(buf as Uint8Array, token.name_result.decode);

    return res.value as string;
  }

  symbol(): string {
    const args = new token.symbol_arguments();

    const buf = System.callContract(this._contractId, entries.symbol_entry, Protobuf.encode(args, token.symbol_arguments.encode));
    const res = Protobuf.decode<token.symbol_result>(buf as Uint8Array, token.symbol_result.decode);

    return res.value as string;
  }

  decimals(): u32 {
    const args = new token.decimals_arguments();

    const buf = System.callContract(this._contractId, entries.decimals_entry, Protobuf.encode(args, token.decimals_arguments.encode));
    const res = Protobuf.decode<token.decimals_result>(buf as Uint8Array, token.decimals_result.decode);

    return res.value;
  }

  total_supply(): u64 {
    const args = new token.total_supply_arguments();

    const buf = System.callContract(this._contractId, entries.total_supply_entry, Protobuf.encode(args, token.total_supply_arguments.encode));
    const res = Protobuf.decode<token.total_supply_result>(buf as Uint8Array, token.total_supply_result.decode);

    return res.value;
  }

  balance_of(owner: Uint8Array): u64 {
    const args = new token.balance_of_arguments(owner);

    const buf = System.callContract(this._contractId, entries.balance_of_entry, Protobuf.encode(args, token.balance_of_arguments.encode));
    
    const res = Protobuf.decode<token.balance_of_result>(buf as Uint8Array, token.balance_of_result.decode);

    return res.value;
  }

  transfer(from: Uint8Array, to: Uint8Array, value: u64): bool {
    const args = new token.transfer_arguments(from, to, value);

    const buf = System.callContract(this._contractId, entries.transfer_entry, Protobuf.encode(args, token.transfer_arguments.encode));
    
    if (buf) {
      const res = Protobuf.decode<token.transfer_result>(buf, token.transfer_result.decode);
      return res.value;
    }

    return false;
  }

  mint(to: Uint8Array, value: u64): bool {
    const args = new token.mint_arguments(to, value);

    const buf = System.callContract(this._contractId, entries.mint_entry, Protobuf.encode(args, token.mint_arguments.encode));
    
    if (buf) {
      const res = Protobuf.decode<token.mint_result>(buf as Uint8Array, token.mint_result.decode);

      return res.value;
    }

    return false;
  }
}