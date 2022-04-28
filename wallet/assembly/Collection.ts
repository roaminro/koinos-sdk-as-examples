import { Reader, Writer } from "as-proto";
import { chain, System, value as val, Protobuf } from "koinos-sdk-as";
import { wallet } from "./proto/wallet";
import { equalBytes } from "./utils";

export class Collection<Item, KeyType> {
  space: chain.object_space;
  varsSpace: chain.object_space;
  listKeysKey: Uint8Array;
  counterKeysKey: Uint8Array;
  itemEncoder: (message: Item, writer: Writer) => void;
  itemDecoder: (reader: Reader, length: i32) => Item;
  isArrayString: boolean;

  constructor(
    space: chain.object_space,
    varsSpace: chain.object_space,
    listKeysKey: Uint8Array,
    counterKeysKey: Uint8Array,
    itemEncoder: (message: Item, writer: Writer) => void,
    itemDecoder: (reader: Reader, length: i32) => Item,
    isArrayString: boolean
  ) {
    this.space = space;
    this.varsSpace = varsSpace;
    this.listKeysKey = listKeysKey;
    this.counterKeysKey = counterKeysKey;
    this.itemEncoder = itemEncoder;
    this.itemDecoder = itemDecoder;
    this.isArrayString = isArrayString;
  }

  set(key: KeyType, value: Item): void {
    System.putObject(this.space, key, value, this.itemEncoder);
  }

  get<T>(key: T): Item | null {
    const item = System.getObject<T, Item>(this.space, key, this.itemDecoder);
    return item;
  }

  remove(key: KeyType): void {
    System.removeObject(this.space, key);
  }

  getCounter(): u32 {
    const counter = System.getObject<Uint8Array, val.value_type>(
      this.varsSpace,
      this.counterKeysKey,
      val.value_type.decode
    );
    return counter ? counter.uint32_value : 0;
  }

  setCounter(n: u32): void {
    const counter = new val.value_type(null, 0, 0, 0, 0, n);
    System.putObject(
      this.varsSpace,
      this.counterKeysKey,
      counter,
      val.value_type.encode
    );
  }

  static calcKey(n: u32): Uint8Array {
    const value = new val.value_type(null, 0, 0, 0, 0, n);
    return Protobuf.encode(value, val.value_type.encode);
  }

  setKeys(keys: Uint8Array[]): void {
    const list = new wallet.bytes_array(keys);
    System.putObject(
      this.varsSpace,
      this.listKeysKey,
      list,
      wallet.bytes_array.encode
    );
  }

  setKeysS(keys: string[]): void {
    const list = new wallet.string_array(keys as string[]);
    System.putObject(
      this.varsSpace,
      this.listKeysKey,
      list,
      wallet.string_array.encode
    );
  }

  getKeys(): Uint8Array[] {
    const list = System.getObject<Uint8Array, wallet.bytes_array>(
      this.varsSpace,
      this.listKeysKey,
      wallet.bytes_array.decode
    );
    return list ? list.keys : [];
  }

  getKeysS(): string[] {
    const list = System.getObject<Uint8Array, wallet.string_array>(
      this.varsSpace,
      this.listKeysKey,
      wallet.string_array.decode
    );
    return list ? list.keys : [];
  }

  addKey(key: Uint8Array): void {
    const keys = this.getKeys();
    keys.push(key);
    this.setKeys(keys);
  }

  addKeyS(key: string): void {
    const keys = this.getKeysS();
    keys.push(key);
    this.setKeysS(keys);
  }

  removeKey(key: Uint8Array): void {
    const keys = this.getKeys();
    const keys2: Uint8Array[] = [];
    for (let i = 0; i < keys.length; i++) {
      if (!equalBytes(keys[i], key)) {
        keys2.push(keys[i]);
      }
    }
    this.setKeys(keys2);
  }

  removeKeyS(key: string): void {
    const keys = this.getKeysS();
    const keys2: string[] = [];
    for (let i = 0; i < keys.length; i++) {
      if (keys[i] != key) {
        keys2.push(keys[i]);
      }
    }
    this.setKeysS(keys2);
  }

  getAll(): Item[] {
    // todo: consider using System.get_next_object
    const items: Item[] = [];

    if (this.isArrayString) {
      const keys = this.getKeysS();
      for (let i = 0; i < keys.length; i++) {
        const item = this.get<string>(keys[i]);
        if (item == null) System.log("item does not exist");
        else items.push(item);
      }
      return items;
    }

    const keys = this.getKeys();
    for (let i = 0; i < keys.length; i++) {
      const item = this.get<Uint8Array>(keys[i]);
      if (item == null) System.log("item does not exist");
      else items.push(item);
    }
    return items;
  }
}
