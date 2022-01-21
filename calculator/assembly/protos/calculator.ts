import { Writer, Reader } from "as-proto";

export namespace calc {
  @unmanaged
  export class add_arguments {
    static encode(message: add_arguments, writer: Writer): void {
      writer.uint32(8);
      writer.int64(message.x);

      writer.uint32(16);
      writer.int64(message.y);
    }

    static decode(reader: Reader, length: i32): add_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new add_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.x = reader.int64();
            break;

          case 2:
            message.y = reader.int64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    x: i64;
    y: i64;

    constructor(x: i64 = 0, y: i64 = 0) {
      this.x = x;
      this.y = y;
    }
  }

  @unmanaged
  export class add_result {
    static encode(message: add_result, writer: Writer): void {
      writer.uint32(8);
      writer.int64(message.value);
    }

    static decode(reader: Reader, length: i32): add_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new add_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = reader.int64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: i64;

    constructor(value: i64 = 0) {
      this.value = value;
    }
  }

  @unmanaged
  export class sub_arguments {
    static encode(message: sub_arguments, writer: Writer): void {
      writer.uint32(8);
      writer.int64(message.x);

      writer.uint32(16);
      writer.int64(message.y);
    }

    static decode(reader: Reader, length: i32): sub_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new sub_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.x = reader.int64();
            break;

          case 2:
            message.y = reader.int64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    x: i64;
    y: i64;

    constructor(x: i64 = 0, y: i64 = 0) {
      this.x = x;
      this.y = y;
    }
  }

  @unmanaged
  export class sub_result {
    static encode(message: sub_result, writer: Writer): void {
      writer.uint32(8);
      writer.int64(message.value);
    }

    static decode(reader: Reader, length: i32): sub_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new sub_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = reader.int64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: i64;

    constructor(value: i64 = 0) {
      this.value = value;
    }
  }

  @unmanaged
  export class mul_arguments {
    static encode(message: mul_arguments, writer: Writer): void {
      writer.uint32(8);
      writer.int64(message.x);

      writer.uint32(16);
      writer.int64(message.y);
    }

    static decode(reader: Reader, length: i32): mul_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new mul_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.x = reader.int64();
            break;

          case 2:
            message.y = reader.int64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    x: i64;
    y: i64;

    constructor(x: i64 = 0, y: i64 = 0) {
      this.x = x;
      this.y = y;
    }
  }

  @unmanaged
  export class mul_result {
    static encode(message: mul_result, writer: Writer): void {
      writer.uint32(8);
      writer.int64(message.value);
    }

    static decode(reader: Reader, length: i32): mul_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new mul_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = reader.int64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: i64;

    constructor(value: i64 = 0) {
      this.value = value;
    }
  }

  @unmanaged
  export class div_arguments {
    static encode(message: div_arguments, writer: Writer): void {
      writer.uint32(8);
      writer.int64(message.x);

      writer.uint32(16);
      writer.int64(message.y);
    }

    static decode(reader: Reader, length: i32): div_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new div_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.x = reader.int64();
            break;

          case 2:
            message.y = reader.int64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    x: i64;
    y: i64;

    constructor(x: i64 = 0, y: i64 = 0) {
      this.x = x;
      this.y = y;
    }
  }

  @unmanaged
  export class div_result {
    static encode(message: div_result, writer: Writer): void {
      writer.uint32(8);
      writer.int64(message.value);
    }

    static decode(reader: Reader, length: i32): div_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new div_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = reader.int64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: i64;

    constructor(value: i64 = 0) {
      this.value = value;
    }
  }
}
