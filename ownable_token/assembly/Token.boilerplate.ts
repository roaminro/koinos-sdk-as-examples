import { System, Protobuf, authority } from "@koinos/sdk-as";
import { token } from "./proto/token";

export class Token {
  name(args: token.name_arguments): token.name_result {
    // YOUR CODE HERE

    const res = new token.name_result();
    // res.value = ;

    return res;
  }

  symbol(args: token.symbol_arguments): token.symbol_result {
    // YOUR CODE HERE

    const res = new token.symbol_result();
    // res.value = ;

    return res;
  }

  decimals(args: token.decimals_arguments): token.decimals_result {
    // YOUR CODE HERE

    const res = new token.decimals_result();
    // res.value = ;

    return res;
  }

  total_supply(args: token.total_supply_arguments): token.total_supply_result {
    // YOUR CODE HERE

    const res = new token.total_supply_result();
    // res.value = ;

    return res;
  }

  max_supply(args: token.max_supply_arguments): token.max_supply_result {
    // YOUR CODE HERE

    const res = new token.max_supply_result();
    // res.value = ;

    return res;
  }

  balance_of(args: token.balance_of_arguments): token.balance_of_result {
    // const owner = args.owner;

    // YOUR CODE HERE

    const res = new token.balance_of_result();
    // res.value = ;

    return res;
  }

  transfer(args: token.transfer_arguments): token.empty_message {
    // const from = args.from;
    // const to = args.to;
    // const value = args.value;

    // YOUR CODE HERE

    const res = new token.empty_message();

    return res;
  }

  mint(args: token.mint_arguments): token.empty_message {
    // const to = args.to;
    // const value = args.value;

    // YOUR CODE HERE

    const res = new token.empty_message();

    return res;
  }

  burn(args: token.burn_arguments): token.empty_message {
    // const from = args.from;
    // const value = args.value;

    // YOUR CODE HERE

    const res = new token.empty_message();

    return res;
  }

  initialize(args: token.initialize_arguments): token.empty_message {
    // const owner = args.owner;
    // const name = args.name;
    // const symbol = args.symbol;
    // const decimals = args.decimals;
    // const max_supply = args.max_supply;

    // YOUR CODE HERE

    const res = new token.empty_message();

    return res;
  }

  update_owner(args: token.update_owner_arguments): token.empty_message {
    // const new_owner = args.new_owner;

    // YOUR CODE HERE

    const res = new token.empty_message();

    return res;
  }

  get_metadata(args: token.get_metadata_arguments): token.metadata_object {
    // YOUR CODE HERE

    const res = new token.metadata_object();
    // res.initialized = ;
    // res.owner = ;
    // res.name = ;
    // res.symbol = ;
    // res.decimals = ;
    // res.supply = ;
    // res.max_supply = ;

    return res;
  }
}
