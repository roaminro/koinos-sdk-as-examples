import { Writer, Reader } from "as-proto";

export namespace delegation {
  export class call_contract_arguments {
    static encode(message: call_contract_arguments, writer: Writer): void {
      const unique_name_contract_id = message.contract_id;
      if (unique_name_contract_id !== null) {
        writer.uint32(10);
        writer.bytes(unique_name_contract_id);
      }

      if (message.entry_point != 0) {
        writer.uint32(16);
        writer.uint32(message.entry_point);
      }

      const unique_name_args = message.args;
      if (unique_name_args !== null) {
        writer.uint32(26);
        writer.bytes(unique_name_args);
      }
    }

    static decode(reader: Reader, length: i32): call_contract_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new call_contract_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.contract_id = reader.bytes();
            break;

          case 2:
            message.entry_point = reader.uint32();
            break;

          case 3:
            message.args = reader.bytes();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    contract_id: Uint8Array | null;
    entry_point: u32;
    args: Uint8Array | null;

    constructor(
      contract_id: Uint8Array | null = null,
      entry_point: u32 = 0,
      args: Uint8Array | null = null
    ) {
      this.contract_id = contract_id;
      this.entry_point = entry_point;
      this.args = args;
    }
  }

  export class call_contract_result {
    static encode(message: call_contract_result, writer: Writer): void {
      const unique_name_result = message.result;
      if (unique_name_result !== null) {
        writer.uint32(10);
        writer.bytes(unique_name_result);
      }
    }

    static decode(reader: Reader, length: i32): call_contract_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new call_contract_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.result = reader.bytes();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    result: Uint8Array | null;

    constructor(result: Uint8Array | null = null) {
      this.result = result;
    }
  }
}
