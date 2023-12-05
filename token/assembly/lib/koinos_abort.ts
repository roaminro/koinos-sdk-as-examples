import { error, system_call_ids } from "@koinos/sdk-as";
import { env } from "@koinos/sdk-as/assembly/env";

export function koinos_abort(
  message: string | null = null,
  fileName: string | null = null,
  lineNumber: u32 = 0,
  columnNumber: u32 = 0
): void {
  let abortMessage = 'abort: ';

  if (message != null) {
    abortMessage += `${message}`;
  }

  if (fileName != null) {
    abortMessage += ` at ${fileName}`;
  }

  abortMessage += `:${lineNumber.toString()}:${columnNumber.toString()}`;

  const buffer = new Uint8Array(0);
  const retBuffer = new Uint32Array(0);

  const args = new exit_arguments();
  args.res = new result(new error_data(abortMessage));
  args.code = error.error_code.reversion;

  const encodedArgs = Protobuf.encode(args, exit_arguments.encode);

  env.invokeSystemCall(system_call_ids.system_call_id.exit, buffer.dataStart as u32, 0, encodedArgs.dataStart as u32, encodedArgs.byteLength, retBuffer.dataStart as u32);
}

class error_data {
  static encode(message: error_data, writer: Writer): void {
    if (message.message.length != 0) {
      writer.uint32(10);
      writer.string(message.message);
    }
  }

  message: string;

  constructor(message: string = "") {
    this.message = message;
  }
}

class result {
  static encode(message: result, writer: Writer): void {
    const unique_name_error = message.error;
    if (unique_name_error !== null) {
      writer.uint32(18);
      writer.fork();
      error_data.encode(unique_name_error, writer);
      writer.ldelim();
    }
  }

  error: error_data | null;

  constructor(
    error: error_data | null = null
  ) {
    this.error = error;
  }
}

class exit_arguments {
  static encode(message: exit_arguments, writer: Writer): void {
    if (message.code != 0) {
      writer.uint32(8);
      writer.int32(message.code);
    }

    const unique_name_res = message.res;
    if (unique_name_res !== null) {
      writer.uint32(18);
      writer.fork();
      result.encode(unique_name_res, writer);
      writer.ldelim();
    }
  }

  code: i32;
  res: result | null;

  constructor(code: i32 = 0, res: result | null = null) {
    this.code = code;
    this.res = res;
  }
}

/**
 * Wire format writer using `Uint8Array`
 */
abstract class Writer {
  /**
   * Writes an unsigned 32 bit value as a varint.
   */
  abstract uint32(value: u32): void;

  /**
   * Writes a signed 32 bit value as a varint.
   */
  abstract int32(value: i32): void;

  /**
   * Writes a sequence of bytes.
   */
  abstract bytes(value: Uint8Array): void;

  /**
   * Writes a string.
   */
  abstract string(value: string): void;

  /**
   * Forks this writer's state.
   * Calling {@link ldelim} resets the writer to the previous state.
   */
  abstract fork(): void;

  /**
   * Resets to the last state.
   */
  abstract ldelim(): void;
}

/**
 * @internal
 */
class FixedSizer extends Writer {
  /**
   * Total length.
   */
  len: u32;

  /**
   * Position stack.
   */
  readonly pos: Array<u32>;

  /**
   * Variable length list.
   */
  readonly varlen: Array<i32>;

  /**
   * Variable length index stack.
   */
  readonly varlenidx: Array<i32>;

  constructor() {
    super();
    this.len = 0;
    this.pos = [];
    this.varlen = [];
    this.varlenidx = [];
  }

  @inline
  uint32(value: u32): void {
    this.varint32(value);
  }

  @inline
  int32(value: i32): void {
    if (value < 0) {
      // 10 bytes to encode negative number
      this.len += 10;
    } else {
      this.varint32(value);
    }
  }

  bytes(value: Uint8Array): void {
    this.uint32(value.byteLength);
    this.len += value.byteLength;
  }

  string(value: string): void {
    const len = String.UTF8.byteLength(value);
    this.varlen.push(len);
    this.uint32(len);
    this.len += len;
  }

  @inline
  fork(): void {
    this.pos.push(this.len); // save current position
    this.varlenidx.push(this.varlen.length); // save current index in varlen array
    this.varlen.push(0); // add 0 length to varlen array (to be updated in ldelim())
  }

  ldelim(): void {
    assert(
      this.pos.length && this.varlenidx.length,
      "Missing fork() before ldelim() call."
    );

    const endPos = this.len; // current position is end position
    const startPos = this.pos.pop(); // get start position from stack
    const idx = this.varlenidx.pop(); // get varlen index from stack
    const len = endPos - startPos; // calculate length

    this.varlen[idx] = len; // update variable length
    this.uint32(len); // add uint32 that should be called in fork()
  }

  reset(): void {
    this.len = 0;
    // re-use arrays
    this.pos.length = 0;
    this.varlen.length = 0;
    this.varlenidx.length = 0;
  }

  @inline
  private varint32(value: u32): void {
    this.len +=
      value < 0
        ? 10 // 10 bits with leading 1's
        : value < 0x80
        ? 1
        : value < 0x4000
        ? 2
        : value < 0x200000
        ? 3
        : value < 0x10000000
        ? 4
        : 5;
  }
}


/**
 * @internal
 *
 * Wire format writer using `Uint8Array`
 */
class FixedWriter extends Writer {
  /**
   * Related sizer
   */
  readonly sizer: FixedSizer;

  /**
   * Current pointer.
   */
  private ptr: usize;

  /**
   * Fixed buffer.
   */
  private buf: Uint8Array = new Uint8Array(0);

  /**
   * Index in varlen array from sizer.
   */
  private varlenidx: i32;

  constructor() {
    super();
    this.sizer = new FixedSizer();
    this.buf = new Uint8Array(this.sizer.len);
    this.ptr = this.buf.dataStart;
    this.varlenidx = 0;
  }

  @inline
  uint32(value: u32): void {
    this.varint<u32>(value);
  }

  @inline
  int32(value: i32): void {
    this.varint<u32>(value);
  }

  bytes(value: Uint8Array): void {
    this.uint32(value.byteLength);
    memory.copy(this.ptr, value.dataStart, value.byteLength);
    this.ptr += value.byteLength;
  }

  string(value: string): void {
    const len = this.varlen(); // use precomputed length
    this.uint32(len);
    String.UTF8.encodeUnsafe(changetype<usize>(value), value.length, this.ptr);
    this.ptr += len;
  }

  @inline
  fork(): void {
    this.uint32(this.varlen()); // use precomputed length
  }

  @inline
  ldelim(): void {
    // nothing to do - all dirty work done by sizer
  }

  finish(): Uint8Array {
    return this.buf;
  }

  reset(): void {
    this.buf = new Uint8Array(this.sizer.len);
    this.ptr = this.buf.dataStart;
    this.varlenidx = 0;
  }

  @inline
  private varint<T extends number>(val: T): void {
    while (val > 0x7f) {
      store<u8>(this.ptr++, (val & 0x7f) | 0x80);
      val = <T>(val >>> 7);
    }
    store<u8>(this.ptr++, val);
  }

  @inline
  private varlen(): u32 {
    return this.varlenidx >= this.sizer.varlen.length
      ? 0
      : this.sizer.varlen[this.varlenidx++];
  }
}



// re-use instances to reduce allocations and GC
const WRITER = new FixedWriter();

class Protobuf {
  static encode<TMessage>(
    message: TMessage,
    encoder: (message: TMessage, writer: Writer) => void
  ): Uint8Array {
    // 1st pass - calculate length
    WRITER.sizer.reset();
    encoder(message, WRITER.sizer);
    // 2nd pass - write data using length from the 1st pass
    WRITER.reset();
    encoder(message, WRITER);
    return WRITER.finish();
  }
}