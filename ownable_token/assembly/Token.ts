import { Arrays, Protobuf, System, SafeMath, authority, error, token as tokenSDK } from "@koinos/sdk-as";
import { token } from "./proto/token";
import { SupplyStorage } from "./state/SupplyStorage";
import { BalancesStorage } from "./state/BalancesStorage";
import { MetadataStorage } from "./state/MetadataStorage";

export class Token {
  _contractId: Uint8Array = System.getContractId();
  _supplyStorage: SupplyStorage = new SupplyStorage(this._contractId);
  _balancesStorage: BalancesStorage = new BalancesStorage(this._contractId);
  _metadataStorage: MetadataStorage = new MetadataStorage(this._contractId);

  name(args: token.name_arguments): token.name_result {
    const metadata = this._metadataStorage.get()!;
    return new token.name_result(metadata.name);
  }

  symbol(args: token.symbol_arguments): token.symbol_result {
    const metadata = this._metadataStorage.get()!;
    return new token.symbol_result(metadata.symbol);
  }

  decimals(args: token.decimals_arguments): token.decimals_result {
    const metadata = this._metadataStorage.get()!;
    return new token.decimals_result(metadata.decimals);
  }

  total_supply(args: token.total_supply_arguments): token.total_supply_result {
    const supply = this._supplyStorage.get()!;

    const res = new token.total_supply_result();
    res.value = supply.value;

    return res;
  }

  max_supply(args: token.max_supply_arguments): token.max_supply_result {
    const metadata = this._metadataStorage.get()!;
    return new token.max_supply_result(metadata.max_supply);
  }

  balance_of(args: token.balance_of_arguments): token.balance_of_result {
    const owner = args.owner;

    const balanceObj = this._balancesStorage.get(owner)!;

    const res = new token.balance_of_result();
    res.value = balanceObj.value;

    return res;
  }

  transfer(args: token.transfer_arguments): token.empty_message {
    const from = args.from;
    const to = args.to;
    const value = args.value;

    System.require(from.length, "missing 'from' argument");
    System.require(to.length, "missing 'to' argument");
    System.require(!Arrays.equal(from, to), 'Cannot transfer to self');

    System.require(
      Arrays.equal(System.getCaller().caller, args.from) ||
      System.checkAuthority(authority.authorization_type.contract_call, args.from, System.getArguments().args),
      "'from' has not authorized transfer",
      error.error_code.authorization_failure
    );

    const fromBalance = this._balancesStorage.get(from)!;

    System.require(fromBalance.value >= value, "'from' has insufficient balance");

    const toBalance = this._balancesStorage.get(to)!;

    // the balances cannot hold more than the supply, so we don't check for overflow/underflow
    fromBalance.value -= value;
    toBalance.value += value;

    this._balancesStorage.put(from, fromBalance);
    this._balancesStorage.put(to, toBalance);

    const transferEvent = new tokenSDK.transfer_event(from, to, value);
    const impacted = [to, from];

    System.event('koinos.contracts.token.transfer_event', Protobuf.encode(transferEvent, tokenSDK.transfer_event.encode), impacted);

    return new token.empty_message();
  }

  mint(args: token.mint_arguments): token.empty_message {
    const to = args.to;
    const value = args.value;

    const metadata = this._metadataStorage.get()!;

    System.require(
      Arrays.equal(System.getCaller().caller, metadata.owner) ||
      System.checkAuthority(authority.authorization_type.contract_call, metadata.owner, System.getArguments().args),
      'Owner has not autorized this call',
      error.error_code.authorization_failure
    );

    const supply = this._supplyStorage.get()!;

    const newSupply = SafeMath.tryAdd(supply.value, value);

    System.require(!newSupply.error, 'Mint would overflow supply');

    System.require(metadata.max_supply == 0 || newSupply.value <= metadata.max_supply, 'Mint would overflow max supply');

    const toBalance = this._balancesStorage.get(to)!;
    toBalance.value += value;

    supply.value = newSupply.value;

    this._supplyStorage.put(supply);
    this._balancesStorage.put(to, toBalance);

    const mintEvent = new tokenSDK.mint_event(to, value);
    const impacted = [to];

    System.event('koinos.contracts.token.mint_event', Protobuf.encode(mintEvent, tokenSDK.mint_event.encode), impacted);

    return new token.empty_message();
  }

  burn(args: token.burn_arguments): token.empty_message {
    const from = args.from;
    const value = args.value;

    System.require(
      Arrays.equal(System.getCaller().caller, args.from) ||
      System.checkAuthority(authority.authorization_type.contract_call, args.from, System.getArguments().args),
      "'from' has not authorized transfer",
      error.error_code.authorization_failure
    );

    const fromBalance = this._balancesStorage.get(from)!;

    System.require(fromBalance.value >= value, "'from' has insufficient balance");

    const supply = this._supplyStorage.get()!;

    const newSupply = SafeMath.sub(supply.value, value);

    supply.value = newSupply;
    fromBalance.value -= value;

    this._supplyStorage.put(supply);
    this._balancesStorage.put(from, fromBalance);

    const burnEvent = new tokenSDK.burn_event(from, value);
    const impacted = [from];

    System.event('koinos.contracts.token.burn_event', Protobuf.encode(burnEvent, tokenSDK.burn_event.encode), impacted);

    return new token.empty_message();
  }

  initialize(args: token.initialize_arguments): token.empty_message {
    // only this contract can initialize itself
    System.requireAuthority(authority.authorization_type.contract_call, this._contractId);

    const metadata = this._metadataStorage.get()!;
    System.require(!metadata.initialized, 'already initialized');
    System.require(args.owner.length, 'missing owner argument');
    System.require(args.name.length, 'missing name argument');
    System.require(args.symbol.length, 'missing symbol argument');

    metadata.initialized = true;
    metadata.owner = args.owner;
    metadata.name = args.name;
    metadata.symbol = args.symbol;
    metadata.decimals = args.decimals;
    // set _maxSupply to zero if there is no max supply
    // if set to zero, the supply would still be limited by how many tokens can fit in a u64 (u64.MAX_VALUE)
    metadata.max_supply = args.max_supply;

    this._metadataStorage.put(metadata);

    return new token.empty_message();
  }

  update_owner(args: token.update_owner_arguments): token.empty_message {
    const new_owner = args.new_owner;
    const metadata = this._metadataStorage.get()!;

    const callArgs = System.getArguments().args;

    // check authority of current owner
    System.require(
      Arrays.equal(System.getCaller().caller, metadata.owner) ||
      System.checkAuthority(authority.authorization_type.contract_call, metadata.owner, callArgs),
      'Owner has not autorized this call',
      error.error_code.authorization_failure
    );

    // check authority of current owner
    System.require(
      System.checkAuthority(authority.authorization_type.contract_call, new_owner, callArgs),
      'New owner has not autorized this call',
      error.error_code.authorization_failure
    );

    metadata.owner = new_owner;
    this._metadataStorage.put(metadata);

    return new token.empty_message();
  }

  get_metadata(args: token.get_metadata_arguments): token.metadata_object {
    return this._metadataStorage.get()!;
  }
}
