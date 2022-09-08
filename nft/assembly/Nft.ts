import { Base58, Protobuf, System, SafeMath, authority } from "@koinos/sdk-as";
import { nft } from "./proto/nft";
import { State } from "./State";

export class Nft {
  _name: string = "NonFungibleToken";
  _symbol: string = "NFT";

  _contractId: Uint8Array;
  _state: State;

  constructor() {
    this._contractId = System.getContractId();
    this._state = new State(this._contractId);
  }

  name(args: nft.name_arguments): nft.name_result {
    return new nft.name_result(this._name);
  }

  symbol(args: nft.symbol_arguments): nft.symbol_result {
    return new nft.symbol_result(this._symbol);
  }

  balance_of(args: nft.balance_of_arguments): nft.balance_of_result {
    const owner = args.owner as Uint8Array;

    const balanceObj = this._state.GetBalance(owner);

    const res = new nft.balance_of_result();
    res.value = balanceObj.value;

    return res;
  }

  owner_of(args: nft.owner_of_arguments): nft.owner_of_result {
    const token_id = args.token_id;
    const res = new nft.owner_of_result();

    const token = this._state.GetToken(token_id);

    if (token) {
      res.value = token.owner;
    }

    return res;
  }

  get_approved(args: nft.get_approved_arguments): nft.get_approved_result {
    const token_id = args.token_id;

    const res = new nft.get_approved_result();

    const approval = this._state.GetTokenApproval(token_id);

    if (approval) {
      res.value = approval.address;
    }

    return res;
  }

  is_approved_for_all(
    args: nft.is_approved_for_all_arguments
  ): nft.is_approved_for_all_result {
    const owner = args.owner as Uint8Array;
    const operator = args.operator as Uint8Array;

    const res = new nft.is_approved_for_all_result();

    const approval = this._state.GetOperatorApproval(owner, operator);

    if (approval) {
      res.value = approval.approved;
    }

    return res;
  }

  mint(args: nft.mint_arguments): nft.mint_result {
    const to = args.to as Uint8Array;
    const token_id = args.token_id;

    const res = new nft.mint_result(false);

    // only this contract can mint new tokens
    System.requireAuthority(authority.authorization_type.contract_call, this._contractId);

    let token = this._state.GetToken(token_id);

    // check that the token has not already been minted
    if (token) {
      System.log('token already minted');
      return res;
    }

    // assign the new token's owner
    token = new nft.token_object(to);

    // update the owner's balance
    const balance = this._state.GetBalance(to);
    balance.value = SafeMath.add(balance.value, 1);

    this._state.SaveBalance(to, balance);
    this._state.SaveToken(token_id, token);

    // generate event
    const mintEvent = new nft.mint_event(to, token_id);
    const impacted = [to];

    System.event('nft.mint', Protobuf.encode(mintEvent, nft.mint_event.encode), impacted);

    res.value = true;

    return res;
  }

  transfer(args: nft.transfer_arguments): nft.transfer_result {
    const from = args.from as Uint8Array;
    const to = args.to as Uint8Array;
    const token_id = args.token_id;

    const b58From = Base58.encode(from);

    const res = new nft.transfer_result(false);

    // require authority of the from address
    System.requireAuthority(authority.authorization_type.contract_call, from);

    // check that the token exists
    let token = this._state.GetToken(token_id);

    if (!token) {
      System.log('nonexistent token');
      return res;
    }

    const owner = token.owner as Uint8Array;
    const b58Owner = Base58.encode(owner);

    if (b58Owner != b58From) {
      let isTokenApproved = false;

      const tokenApproval = this._state.GetTokenApproval(token_id);

      if (tokenApproval) {
        const approvedAddress = tokenApproval.address as Uint8Array;

        isTokenApproved = Base58.encode(approvedAddress) == b58From;
      }

      if (!isTokenApproved) {
        const operatorApproval = this._state.GetOperatorApproval(owner, from);

        if (!operatorApproval.approved) {
          System.log('transfer caller is not owner nor approved');
          return res;
        }
      }
    }

    // clear the token approval
    this._state.DeleteTokenApproval(token_id);

    // update the balances
    // from
    const fromBalance = this._state.GetBalance(from);
    fromBalance.value = SafeMath.sub(fromBalance.value, 1);
    this._state.SaveBalance(from, fromBalance);

    // to
    const toBalance = this._state.GetBalance(to);
    toBalance.value = SafeMath.add(toBalance.value, 1);
    this._state.SaveBalance(to, toBalance);

    // update token owner
    token.owner = to;
    this._state.SaveToken(token_id, token);

    // generate event
    const transferEvent = new nft.transfer_event(from, to, token_id);
    const impacted = [to, from];

    System.event('nft.transfer', Protobuf.encode(transferEvent, nft.transfer_event.encode), impacted);

    res.value = true;

    return res;
  }

  approve(args: nft.approve_arguments): nft.approve_result {
    const approver_address = args.approver_address as Uint8Array;
    const to = args.to as Uint8Array;
    const token_id = args.token_id;

    const res = new nft.approve_result(false);

    // require authority of the approver_address
    System.requireAuthority(authority.authorization_type.contract_call, approver_address);

    // check that the token exists
    let token = this._state.GetToken(token_id);

    if (!token) {
      System.log('nonexistent token');
      return res;
    }

    const owner = token.owner as Uint8Array;
    const b58Owner = Base58.encode(owner);

    // check that the to is not the owner
    if (Base58.encode(to) == b58Owner) {
      System.log('approve to current owner');

      return res;
    }

    // check that the approver_address is allowed to approve the token
    if (Base58.encode(approver_address) != b58Owner) {
      const approval = this._state.GetOperatorApproval(owner, approver_address);

      if (!approval.approved) {
        System.log('approver_address is not owner nor approved');
        return res;
      }
    }

    // update approval
    let approval = this._state.GetTokenApproval(token_id);

    if (!approval) {
      approval = new nft.token_approval_object();
    }

    approval.address = to;
    this._state.SaveTokenApproval(token_id, approval);

    // generate event
    const approvalEvent = new nft.token_approval_event(approver_address, to, token_id);
    const impacted = [to, approver_address];

    System.event('nft.token_approval', Protobuf.encode(approvalEvent, nft.token_approval_event.encode), impacted);

    res.value = true;

    return res;
  }

  set_approval_for_all(
    args: nft.set_approval_for_all_arguments
  ): nft.set_approval_for_all_result {
    const approver_address = args.approver_address as Uint8Array;
    const operator_address = args.operator_address as Uint8Array;
    const approved = args.approved;

    const res = new nft.set_approval_for_all_result(false);

    // only the owner of approver_address can approve an operator for his account
    System.requireAuthority(authority.authorization_type.contract_call, approver_address);

    // check that the approver_address is not the address to approve
    if (Base58.encode(approver_address) == Base58.encode(operator_address)) {
      System.log('approve to operator_address');

      return res;
    }

    // update the approval
    const approval = this._state.GetOperatorApproval(approver_address, operator_address);
    approval.approved = approved;
    this._state.SaveOperatorApproval(approver_address, operator_address, approval);

    // generate event
    const approvalEvent = new nft.operator_approval_event(approver_address, operator_address, approved);
    const impacted = [operator_address, approver_address];

    System.event('nft.operator_approval', Protobuf.encode(approvalEvent, nft.operator_approval_event.encode), impacted);

    res.value = true;

    return res;
  }
}
