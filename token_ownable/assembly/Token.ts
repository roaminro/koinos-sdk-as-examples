import { Arrays, Protobuf, System, SafeMath, authority, error } from "@koinos/sdk-as";
import { token } from "./proto/token";
import { State } from "./State";

export class Token {
  contractId: Uint8Array = System.getContractId();
  state: State = new State(this.contractId);

  name(args: token.name_arguments): token.name_result {
    const metadata = this.state.GetMetadata();
    return new token.name_result(metadata.name);
  }

  symbol(args: token.symbol_arguments): token.symbol_result {
    const metadata = this.state.GetMetadata();
    return new token.symbol_result(metadata.symbol);
  }

  decimals(args: token.decimals_arguments): token.decimals_result {
    const metadata = this.state.GetMetadata();
    return new token.decimals_result(metadata.decimals);
  }

  total_supply(args: token.total_supply_arguments): token.total_supply_result {
    const metadata = this.state.GetMetadata();
    return new token.total_supply_result(metadata.supply);
  }

  balance_of(args: token.balance_of_arguments): token.balance_of_result {
    const owner = args.owner!;

    const balanceObj = this.state.GetBalance(owner);

    const res = new token.balance_of_result();
    res.value = balanceObj.value;

    return res;
  }

  transfer(args: token.transfer_arguments): token.empty_message {
    const from = args.from!;
    const to = args.to!;
    const value = args.value;

    System.require(!Arrays.equal(from, to), 'Cannot transfer to self');

    System.require(
      Arrays.equal(System.getCaller().caller, args.from!) || 
        System.checkAuthority(authority.authorization_type.contract_call, args.from!),
      "'from' has not authorized transfer",
      error.error_code.authorization_failure
    );

    const fromBalance = this.state.GetBalance(from);

    System.require(fromBalance.value >= value, "'from' has insufficient balance");

    const toBalance = this.state.GetBalance(to);

    // the balances cannot hold more than the supply, so we don't check for overflow/underflow
    fromBalance.value -= value;
    toBalance.value += value;

    this.state.SaveBalance(from, fromBalance);
    this.state.SaveBalance(to, toBalance);

    const transferEvent = new token.transfer_event(from, to, value);
    const impacted = [to, from];

    System.event('token.transfer_event', Protobuf.encode(transferEvent, token.transfer_event.encode), impacted);

    return new token.empty_message();
  }

  mint(args: token.mint_arguments): token.empty_message {
    const to = args.to!;
    const value = args.value;

    const metadata = this.state.GetMetadata();

    System.require(
      Arrays.equal(System.getCaller().caller, metadata.owner),
      'not authorized mint',
      error.error_code.authorization_failure
    );

    const newSupply = SafeMath.tryAdd(metadata.supply, value);

    System.require(!newSupply.error, 'Mint would overflow supply');

    const toBalance = this.state.GetBalance(to);
    toBalance.value += value;

    metadata.supply = newSupply.value;

    this.state.SaveMetadata(metadata);
    this.state.SaveBalance(to, toBalance);

    const mintEvent = new token.mint_event(to, value);
    const impacted = [to];

    System.event('token.mint_event', Protobuf.encode(mintEvent, token.mint_event.encode), impacted);

    return new token.empty_message();
  }

  burn(args: token.burn_arguments): token.empty_message {
    const from = args.from!;
    const value = args.value;

    const metadata = this.state.GetMetadata();

    System.require(
      Arrays.equal(System.getCaller().caller, metadata.owner),
      'not authorized burn',
      error.error_code.authorization_failure
    );

    const fromBalance = this.state.GetBalance(from);

    System.require(fromBalance.value >= value, "'from' has insufficient balance");

    const newSupply = SafeMath.sub(metadata.supply, value);

    metadata.supply = newSupply;
    fromBalance.value -= value;

    this.state.SaveMetadata(metadata);
    this.state.SaveBalance(from, fromBalance);

    const burnEvent = new token.burn_event(from, value);
    const impacted = [from];

    System.event('token.burn_event', Protobuf.encode(burnEvent, token.burn_event.encode), impacted);
    
    return new token.empty_message();
  }

  initialize(args: token.initialize_arguments): token.empty_message {
    const metadata = this.state.GetMetadata();
    System.require(!metadata.initialized, 'already initialized');
    System.require(args.owner!.length, 'missing owner argument');
    System.require(args.name!.length, 'missing name argument');
    System.require(args.symbol!.length, 'missing symbol argument');

    metadata.initialized = true;
    metadata.owner = args.owner;
    metadata.name = args.name;
    metadata.symbol = args.symbol;
    metadata.decimals = args.decimals;

    this.state.SaveMetadata(metadata);

    return new token.empty_message();
  }

  get_metadata(args: token.get_metadata_arguments): token.metadata_object {
    return this.state.GetMetadata();
  }
}
