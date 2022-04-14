import { Writer, Reader } from "as-proto";
import { transaction } from "koinos-as-sdk";

export class store_transaction_arguments {
  static encode(message: store_transaction_arguments, writer: Writer): void {
    const field_transaction = message.transaction;
    if (field_transaction !== null) {
      writer.uint32(10);
      writer.fork();
      transaction.encode(field_transaction, writer);
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
          message.transaction = transaction.decode(reader, reader.uint32());
          break;

        default:
          reader.skipType(tag & 7);
          break;
      }
    }

    return message;
  }

  transaction: transaction | null;

  constructor(transaction: transaction | null = null) {
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
    const field_id = message.id;
    if (field_id !== null) {
      writer.uint32(10);
      writer.bytes(field_id);
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
    const field_value = message.value;
    if (field_value !== null) {
      writer.uint32(10);
      writer.fork();
      transaction.encode(field_value, writer);
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
          message.value = transaction.decode(reader, reader.uint32());
          break;

        default:
          reader.skipType(tag & 7);
          break;
      }
    }

    return message;
  }

  value: transaction | null;

  constructor(value: transaction | null = null) {
    this.value = value;
  }
}
