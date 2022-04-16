import { Reader, Writer } from "as-proto";
import { chain, System } from "koinos-as-sdk";
import { wallet } from "./proto/wallet";

export class Collection<Item,KeyType> {
  space: chain.object_space;
  varsSpace: chain.object_space;
  listKeysKey: Uint8Array;
  itemEncoder: (message: Item, writer: Writer) => void;
  itemDecoder: (reader: Reader, length: i32) => Item;
  isArrayString: boolean;
  
  constructor(
    space: chain.object_space,
    varsSpace: chain.object_space,
    listKeysKey: Uint8Array,
    itemEncoder: (message: Item, writer: Writer) => void,
    itemDecoder: (reader: Reader, length: i32) => Item,
    isArrayString: boolean
  ) {
    this.space = space;
    this.varsSpace = varsSpace;
    this.listKeysKey = listKeysKey;
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
  
  setKeys(keys: Uint8Array[]): void {
    const list = new wallet.bytes_array(keys);
    System.putObject(this.varsSpace, this.listKeysKey, list, wallet.bytes_array.encode);
  }

  setKeysS(keys: string[]): void {
    const list = new wallet.string_array(keys as string[]);
    System.putObject(this.varsSpace, this.listKeysKey, list, wallet.string_array.encode);
  }
  
  getKeys(): Uint8Array[] {
    const list = System.getObject<Uint8Array, wallet.bytes_array>(this.varsSpace, this.listKeysKey, wallet.bytes_array.decode);
    return list ? list.keys : [];
  }

  getKeysS(): string[] {
    const list = System.getObject<Uint8Array, wallet.string_array>(this.varsSpace, this.listKeysKey, wallet.string_array.decode);
    return list ? list.keys : [];
  }

  getAll(): Item[] {
    // todo: consider using System.get_next_object
    const items: Item[] = [];
    
    if (this.isArrayString) {
      const keys = this.getKeysS();
      for (let i = 0; i < keys.length; i++) {
        const item = this.get<string>(keys[i]);
        if (item == null)
          System.log("item does not exist");
        else
          items.push(item);
      }
      return items;
    }

    const keys = this.getKeys();
    for (let i = 0; i < keys.length; i++) {
      const item = this.get<Uint8Array>(keys[i]);
      if (item == null)
        System.log("item does not exist");
      else
        items.push(item);
    }
    return items;
  }
}