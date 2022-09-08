import { Writer, Reader } from "as-proto";
import { protocol } from "@koinos/sdk-as";

export namespace transaction_storage {
  export class store_transaction_arguments {
    static encode(message: store_transaction_arguments, writer: Writer): void {
      const unique_name_transaction = message.transaction;
      if (unique_name_transaction !== null) {
        writer.uint32(10);
        writer.fork();
        protocol.transaction.encode(unique_name_transaction, writer);
        writer.ldelim();
      }
    }

    static decode(reader: Reader, length: i32): store_transaction_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new store_transaction_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.transaction = protocol.transaction.decode(
              reader,
              reader.uint32()
            );
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    transaction: protocol.transaction | null;

    constructor(transaction: protocol.transaction | null = null) {
      this.transaction = transaction;
    }
  }

  @unmanaged
  export class store_transaction_result {
    static encode(message: store_transaction_result, writer: Writer): void {}

    static decode(reader: Reader, length: i32): store_transaction_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new store_transaction_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    constructor() {}
  }

  export class get_transaction_arguments {
    static encode(message: get_transaction_arguments, writer: Writer): void {
      const unique_name_id = message.id;
      if (unique_name_id !== null) {
        writer.uint32(10);
        writer.bytes(unique_name_id);
      }
    }

    static decode(reader: Reader, length: i32): get_transaction_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new get_transaction_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.id = reader.bytes();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    id: Uint8Array | null;

    constructor(id: Uint8Array | null = null) {
      this.id = id;
    }
  }

  export class get_transaction_result {
    static encode(message: get_transaction_result, writer: Writer): void {
      const unique_name_value = message.value;
      if (unique_name_value !== null) {
        writer.uint32(10);
        writer.fork();
        protocol.transaction.encode(unique_name_value, writer);
        writer.ldelim();
      }
    }

    static decode(reader: Reader, length: i32): get_transaction_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new get_transaction_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = protocol.transaction.decode(
              reader,
              reader.uint32()
            );
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: protocol.transaction | null;

    constructor(value: protocol.transaction | null = null) {
      this.value = value;
    }
  }
}
