import { Reader, Writer } from "as-proto";
import { authority, chain, value, System, Protobuf } from "koinos-as-sdk";
import { wallet } from "./proto/wallet";

type Encoder<T> = (message: T, writer: Writer) => void;
type Decoder<T> = (reader: Reader, length: number) => T;

export class Collection<Item> {
  space: chain.object_space;
  varsSpace: chain.object_space;
  listKeysKey: Uint8Array;
  itemEncoder: (message: Item, writer: Writer) => void;
  itemDecoder: (reader: Reader, length: number) => Item;
  constructor(
    space: chain.object_space,
    varsSpace: chain.object_space,
    listKeysKey: Uint8Array, 
    itemEncoder: (message: Item, writer: Writer) => void,
    itemDecoder: (reader: Reader, length: number) => Item
  ) {
    this.space = space;
    this.varsSpace = varsSpace;
    this.listKeysKey = listKeysKey;
    this.itemEncoder = itemEncoder;
    this.itemDecoder = itemDecoder;
  }
  setItem(key: Uint8Array, value: Item): void {
    System.putObject(this.space, key, value, this.itemEncoder);
  }
  getItem(key: Uint8Array): Item | null {
    const item = System.getObject<Uint8Array, Item>(this.space, key, this.itemDecoder);
    return item;
  }
  setListKeys(keys: wallet.key_array): void {
    System.putObject(this.varsSpace, this.listKeysKey, keys, wallet.key_array.encode);
  }
  getListKeys(): wallet.key_array {
    const keys = System.getObject<Uint8Array, wallet.key_array>(this.varsSpace, this.listKeysKey, wallet.key_array.decode);
    return keys ? keys : new wallet.key_array();
  }
  getItems(): Item[] {
    const keys = this.getListKeys();
    const items: Item[] = [];
    for (let i = 0; i < keys.keys.length; i++) {
      const item = this.getItem(keys.keys[i]);
      if (item == null)
        System.log("item does not exist");
      else
        items.push(item);
    }
    return items;
  }
}