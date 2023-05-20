import { Writer, Reader } from "as-proto";

export namespace token {
  @unmanaged
  export class empty_message {
    static encode(message: empty_message, writer: Writer): void {}

    static decode(reader: Reader, length: i32): empty_message {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new empty_message();

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

  @unmanaged
  export class name_arguments {
    static encode(message: name_arguments, writer: Writer): void {}

    static decode(reader: Reader, length: i32): name_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new name_arguments();

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

  export class name_result {
    static encode(message: name_result, writer: Writer): void {
      if (message.value.length != 0) {
        writer.uint32(10);
        writer.string(message.value);
      }
    }

    static decode(reader: Reader, length: i32): name_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new name_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = reader.string();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: string;

    constructor(value: string = "") {
      this.value = value;
    }
  }

  @unmanaged
  export class symbol_arguments {
    static encode(message: symbol_arguments, writer: Writer): void {}

    static decode(reader: Reader, length: i32): symbol_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new symbol_arguments();

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

  export class symbol_result {
    static encode(message: symbol_result, writer: Writer): void {
      if (message.value.length != 0) {
        writer.uint32(10);
        writer.string(message.value);
      }
    }

    static decode(reader: Reader, length: i32): symbol_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new symbol_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = reader.string();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: string;

    constructor(value: string = "") {
      this.value = value;
    }
  }

  @unmanaged
  export class decimals_arguments {
    static encode(message: decimals_arguments, writer: Writer): void {}

    static decode(reader: Reader, length: i32): decimals_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new decimals_arguments();

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

  @unmanaged
  export class decimals_result {
    static encode(message: decimals_result, writer: Writer): void {
      if (message.value != 0) {
        writer.uint32(8);
        writer.uint32(message.value);
      }
    }

    static decode(reader: Reader, length: i32): decimals_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new decimals_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = reader.uint32();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: u32;

    constructor(value: u32 = 0) {
      this.value = value;
    }
  }

  @unmanaged
  export class total_supply_arguments {
    static encode(message: total_supply_arguments, writer: Writer): void {}

    static decode(reader: Reader, length: i32): total_supply_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new total_supply_arguments();

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

  @unmanaged
  export class total_supply_result {
    static encode(message: total_supply_result, writer: Writer): void {
      if (message.value != 0) {
        writer.uint32(8);
        writer.uint64(message.value);
      }
    }

    static decode(reader: Reader, length: i32): total_supply_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new total_supply_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = reader.uint64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: u64;

    constructor(value: u64 = 0) {
      this.value = value;
    }
  }

  @unmanaged
  export class max_supply_arguments {
    static encode(message: max_supply_arguments, writer: Writer): void {}

    static decode(reader: Reader, length: i32): max_supply_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new max_supply_arguments();

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

  @unmanaged
  export class max_supply_result {
    static encode(message: max_supply_result, writer: Writer): void {
      if (message.value != 0) {
        writer.uint32(8);
        writer.uint64(message.value);
      }
    }

    static decode(reader: Reader, length: i32): max_supply_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new max_supply_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = reader.uint64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: u64;

    constructor(value: u64 = 0) {
      this.value = value;
    }
  }

  export class balance_of_arguments {
    static encode(message: balance_of_arguments, writer: Writer): void {
      if (message.owner.length != 0) {
        writer.uint32(10);
        writer.bytes(message.owner);
      }
    }

    static decode(reader: Reader, length: i32): balance_of_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new balance_of_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.owner = reader.bytes();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    owner: Uint8Array;

    constructor(owner: Uint8Array = new Uint8Array(0)) {
      this.owner = owner;
    }
  }

  @unmanaged
  export class balance_of_result {
    static encode(message: balance_of_result, writer: Writer): void {
      if (message.value != 0) {
        writer.uint32(8);
        writer.uint64(message.value);
      }
    }

    static decode(reader: Reader, length: i32): balance_of_result {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new balance_of_result();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = reader.uint64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: u64;

    constructor(value: u64 = 0) {
      this.value = value;
    }
  }

  export class transfer_arguments {
    static encode(message: transfer_arguments, writer: Writer): void {
      if (message.from.length != 0) {
        writer.uint32(10);
        writer.bytes(message.from);
      }

      if (message.to.length != 0) {
        writer.uint32(18);
        writer.bytes(message.to);
      }

      if (message.value != 0) {
        writer.uint32(24);
        writer.uint64(message.value);
      }
    }

    static decode(reader: Reader, length: i32): transfer_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new transfer_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.from = reader.bytes();
            break;

          case 2:
            message.to = reader.bytes();
            break;

          case 3:
            message.value = reader.uint64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    from: Uint8Array;
    to: Uint8Array;
    value: u64;

    constructor(
      from: Uint8Array = new Uint8Array(0),
      to: Uint8Array = new Uint8Array(0),
      value: u64 = 0
    ) {
      this.from = from;
      this.to = to;
      this.value = value;
    }
  }

  export class mint_arguments {
    static encode(message: mint_arguments, writer: Writer): void {
      if (message.to.length != 0) {
        writer.uint32(10);
        writer.bytes(message.to);
      }

      if (message.value != 0) {
        writer.uint32(16);
        writer.uint64(message.value);
      }
    }

    static decode(reader: Reader, length: i32): mint_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new mint_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.to = reader.bytes();
            break;

          case 2:
            message.value = reader.uint64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    to: Uint8Array;
    value: u64;

    constructor(to: Uint8Array = new Uint8Array(0), value: u64 = 0) {
      this.to = to;
      this.value = value;
    }
  }

  export class burn_arguments {
    static encode(message: burn_arguments, writer: Writer): void {
      if (message.from.length != 0) {
        writer.uint32(10);
        writer.bytes(message.from);
      }

      if (message.value != 0) {
        writer.uint32(16);
        writer.uint64(message.value);
      }
    }

    static decode(reader: Reader, length: i32): burn_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new burn_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.from = reader.bytes();
            break;

          case 2:
            message.value = reader.uint64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    from: Uint8Array;
    value: u64;

    constructor(from: Uint8Array = new Uint8Array(0), value: u64 = 0) {
      this.from = from;
      this.value = value;
    }
  }

  export class initialize_arguments {
    static encode(message: initialize_arguments, writer: Writer): void {
      if (message.owner.length != 0) {
        writer.uint32(10);
        writer.bytes(message.owner);
      }

      if (message.name.length != 0) {
        writer.uint32(18);
        writer.string(message.name);
      }

      if (message.symbol.length != 0) {
        writer.uint32(26);
        writer.string(message.symbol);
      }

      if (message.decimals != 0) {
        writer.uint32(32);
        writer.uint32(message.decimals);
      }

      if (message.max_supply != 0) {
        writer.uint32(40);
        writer.uint64(message.max_supply);
      }
    }

    static decode(reader: Reader, length: i32): initialize_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new initialize_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.owner = reader.bytes();
            break;

          case 2:
            message.name = reader.string();
            break;

          case 3:
            message.symbol = reader.string();
            break;

          case 4:
            message.decimals = reader.uint32();
            break;

          case 5:
            message.max_supply = reader.uint64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    owner: Uint8Array;
    name: string;
    symbol: string;
    decimals: u32;
    max_supply: u64;

    constructor(
      owner: Uint8Array = new Uint8Array(0),
      name: string = "",
      symbol: string = "",
      decimals: u32 = 0,
      max_supply: u64 = 0
    ) {
      this.owner = owner;
      this.name = name;
      this.symbol = symbol;
      this.decimals = decimals;
      this.max_supply = max_supply;
    }
  }

  export class update_owner_arguments {
    static encode(message: update_owner_arguments, writer: Writer): void {
      if (message.new_owner.length != 0) {
        writer.uint32(10);
        writer.bytes(message.new_owner);
      }
    }

    static decode(reader: Reader, length: i32): update_owner_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new update_owner_arguments();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.new_owner = reader.bytes();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    new_owner: Uint8Array;

    constructor(new_owner: Uint8Array = new Uint8Array(0)) {
      this.new_owner = new_owner;
    }
  }

  @unmanaged
  export class get_metadata_arguments {
    static encode(message: get_metadata_arguments, writer: Writer): void {}

    static decode(reader: Reader, length: i32): get_metadata_arguments {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new get_metadata_arguments();

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

  @unmanaged
  export class balance_object {
    static encode(message: balance_object, writer: Writer): void {
      if (message.value != 0) {
        writer.uint32(8);
        writer.uint64(message.value);
      }
    }

    static decode(reader: Reader, length: i32): balance_object {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new balance_object();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.value = reader.uint64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    value: u64;

    constructor(value: u64 = 0) {
      this.value = value;
    }
  }

  export class metadata_object {
    static encode(message: metadata_object, writer: Writer): void {
      if (message.initialized != false) {
        writer.uint32(8);
        writer.bool(message.initialized);
      }

      if (message.owner.length != 0) {
        writer.uint32(18);
        writer.bytes(message.owner);
      }

      if (message.name.length != 0) {
        writer.uint32(26);
        writer.string(message.name);
      }

      if (message.symbol.length != 0) {
        writer.uint32(34);
        writer.string(message.symbol);
      }

      if (message.decimals != 0) {
        writer.uint32(40);
        writer.uint32(message.decimals);
      }

      if (message.supply != 0) {
        writer.uint32(48);
        writer.uint64(message.supply);
      }

      if (message.max_supply != 0) {
        writer.uint32(56);
        writer.uint64(message.max_supply);
      }
    }

    static decode(reader: Reader, length: i32): metadata_object {
      const end: usize = length < 0 ? reader.end : reader.ptr + length;
      const message = new metadata_object();

      while (reader.ptr < end) {
        const tag = reader.uint32();
        switch (tag >>> 3) {
          case 1:
            message.initialized = reader.bool();
            break;

          case 2:
            message.owner = reader.bytes();
            break;

          case 3:
            message.name = reader.string();
            break;

          case 4:
            message.symbol = reader.string();
            break;

          case 5:
            message.decimals = reader.uint32();
            break;

          case 6:
            message.supply = reader.uint64();
            break;

          case 7:
            message.max_supply = reader.uint64();
            break;

          default:
            reader.skipType(tag & 7);
            break;
        }
      }

      return message;
    }

    initialized: bool;
    owner: Uint8Array;
    name: string;
    symbol: string;
    decimals: u32;
    supply: u64;
    max_supply: u64;

    constructor(
      initialized: bool = false,
      owner: Uint8Array = new Uint8Array(0),
      name: string = "",
      symbol: string = "",
      decimals: u32 = 0,
      supply: u64 = 0,
      max_supply: u64 = 0
    ) {
      this.initialized = initialized;
      this.owner = owner;
      this.name = name;
      this.symbol = symbol;
      this.decimals = decimals;
      this.supply = supply;
      this.max_supply = max_supply;
    }
  }
}
