import { System, Protobuf, authority } from "@koinos/sdk-as";
import { delegation } from "./proto/delegation";

export class Delegation {
  authorize(args: authority.authorize_arguments): authority.authorize_result {
    // const call = args.call;
    // const type = args.type;

    // YOUR CODE HERE

    const res = new authority.authorize_result();
    res.value = true;

    return res;
  }

  call_contract(
    args: delegation.call_contract_arguments
  ): delegation.call_contract_result {
    // const contract_id = args.contract_id;
    // const entry_point = args.entry_point;
    // const args = args.args;

    // YOUR CODE HERE

    const res = new delegation.call_contract_result();
    // res.result = ;

    return res;
  }
}
