import { Arrays, Protobuf, System, SafeMath, authority, error } from "@koinos/sdk-as";
import { token } from "./proto/token";
import { SupplyStorage } from "./state/SupplyStorage";
import { BalancesStorage } from "./state/BalancesStorage";

export class Token {
  // SETTINGS BEGIN
  _name: string = "Token";
  _symbol: string = "TKN";
  _decimals: u32 = 8;

  // set _maxSupply to zero if there is no max supply
  // if set to zero, the supply would still be limited by how many tokens can fit in a u64 (u64.MAX_VALUE)
  _maxSupply: u64 = 0;

  // SETTINGS END

  _contractId: Uint8Array = System.getContractId();
  _supplyStorage: SupplyStorage = new SupplyStorage(this._contractId);
  _balancesStorage: BalancesStorage = new BalancesStorage(this._contractId);

  name(args: token.name_arguments): token.name_result {
    return new token.name_result(this._name);
  }

  symbol(args: token.symbol_arguments): token.symbol_result {
    return new token.symbol_result(this._symbol);
  }

  decimals(args: token.decimals_arguments): token.decimals_result {
    return new token.decimals_result(this._decimals);
  }

  total_supply(args: token.total_supply_arguments): token.total_supply_result {
    const supply = this._supplyStorage.get()!;

    const res = new token.total_supply_result();
    res.value = supply.value;

    return res;
  }

  max_supply(args: token.max_supply_arguments): token.max_supply_result {
    return new token.max_supply_result(this._maxSupply);
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

    const transferEvent = new token.transfer_event(from, to, value);
    const impacted = [to, from];

    System.event('koinos.contracts.token.transfer_event', Protobuf.encode(transferEvent, token.transfer_event.encode), impacted);

    return new token.empty_message();
  }

  mint(args: token.mint_arguments): token.empty_message {
    const to = args.to;
    const value = args.value;

    System.requireAuthority(authority.authorization_type.contract_call, this._contractId);

    const supply = this._supplyStorage.get()!;

    const newSupply = SafeMath.tryAdd(supply.value, value);

    System.require(!newSupply.error, 'Mint would overflow supply');

    System.require(this._maxSupply == 0 || newSupply.value <= this._maxSupply, 'Mint would overflow max supply');

    const toBalance = this._balancesStorage.get(to)!;
    toBalance.value += value;

    supply.value = newSupply.value;

    this._supplyStorage.put(supply);
    this._balancesStorage.put(to, toBalance);

    const mintEvent = new token.mint_event(to, value);
    const impacted = [to];

    System.event('koinos.contracts.token.mint_event', Protobuf.encode(mintEvent, token.mint_event.encode), impacted);

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

    const burnEvent = new token.burn_event(from, value);
    const impacted = [from];

    System.event('koinos.contracts.token.burn_event', Protobuf.encode(burnEvent, token.burn_event.encode), impacted);

    return new token.empty_message();
  }
}
