import { System, authority } from "@koinos/sdk-as";
import { delegation } from "./proto/delegation";

export class Delegation {
  authorize(args: authority.authorize_arguments): authority.authorize_result {
    // Override the "authorize" entrypoint for the "transaction_application" check
    // Since we're only overriding "transaction_application" when uploading the contract
    // no need to check the type of override here

    // We always return true here, but that's where the logic that controls the delegation would go
    let result: bool = true;
    // for example, you could have a whitelist of "payees" that are allowed to consume this address/contract's mana
    // result = false;
    // const whitelist = [
    //    Base58.encode(System.getContractId()),
    //   '1NvZvWNqDX7t93inmLBvbv6kxhpEZYRFWK',
    //   '1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqe'
    // ];
    // 
    // const txField = System.getTransactionField('header.payee');
    // if (txField && txField.bytes_value) {
    //   const payee = Base58.encode(txField.bytes_value!);
    //   result = whitelist.includes(payee);
    // }

    return new authority.authorize_result(result);
  }

  call_contract(
    args: delegation.call_contract_arguments
  ): delegation.call_contract_result {
    const contract_id = args.contract_id!;
    const entry_point = args.entry_point;
    const contract_args = args.args!;

    // so call the target contract
    const callRet = System.call(contract_id, entry_point, contract_args);

    return new delegation.call_contract_result(callRet.res.object);
  }
}
