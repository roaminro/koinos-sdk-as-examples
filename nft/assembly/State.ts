import { chain, Protobuf, System } from "koinos-as-sdk";
import { nft } from "./proto/nft";

const TOKEN_SPACE_ID = 0;
const BALANCE_SPACE_ID = 1;
const OPERATOR_APPROVAL_SPACE_ID = 2;
const TOKEN_APPROVAL_SPACE_ID = 3;

export class State {
  contractId: Uint8Array;
  tokenSpace: chain.object_space;
  balanceSpace: chain.object_space;
  operatorApprovalSpace: chain.object_space;
  tokenApprovalSpace: chain.object_space;

  constructor(contractId: Uint8Array) {
    this.contractId = contractId;

    this.tokenSpace = new chain.object_space(false, contractId, TOKEN_SPACE_ID);
    this.balanceSpace = new chain.object_space(false, contractId, BALANCE_SPACE_ID);
    this.operatorApprovalSpace = new chain.object_space(false, contractId, OPERATOR_APPROVAL_SPACE_ID);
    this.tokenApprovalSpace = new chain.object_space(false, contractId, TOKEN_APPROVAL_SPACE_ID);
  }

  GetToken(tokenId: u64): nft.token_object | null {
    const token = System.getObject<string, nft.token_object>(this.tokenSpace, tokenId.toString(), nft.token_object.decode);

    return token;
  }

  SaveToken(tokenId: u64, token: nft.token_object): void {
    System.putObject(this.tokenSpace, tokenId.toString(), token, nft.token_object.encode);
  }

  GetBalance(owner: Uint8Array): nft.balance_object {
    const balance = System.getObject<Uint8Array, nft.balance_object>(this.balanceSpace, owner, nft.balance_object.decode);

    if (balance) {
      return balance;
    }

    return new nft.balance_object();
  }

  SaveBalance(owner: Uint8Array, balance: nft.balance_object): void {
    System.putObject(this.balanceSpace, owner, balance, nft.balance_object.encode);
  }

  GetOperatorApproval(approver: Uint8Array, operator: Uint8Array): nft.operator_approval_object {
    const approvalKey = new nft.operator_approval_key(approver, operator);
    const keyBytes = Protobuf.encode(approvalKey, nft.operator_approval_key.encode);

    const approval = System.getObject<Uint8Array, nft.operator_approval_object>(this.operatorApprovalSpace, keyBytes, nft.operator_approval_object.decode);

    if (approval) {
      return approval;
    }

    return new nft.operator_approval_object();
  }

  SaveOperatorApproval(approver: Uint8Array, operator: Uint8Array, approval: nft.operator_approval_object): void {
    const approvalKey = new nft.operator_approval_key(approver, operator);
    const keyBytes = Protobuf.encode(approvalKey, nft.operator_approval_key.encode);

    System.putObject(this.operatorApprovalSpace, keyBytes, approval, nft.operator_approval_object.encode);
  }

  GetTokenApproval(tokenId: u64): nft.token_approval_object | null {
    const approval = System.getObject<string, nft.token_approval_object>(this.tokenApprovalSpace, tokenId.toString(), nft.token_approval_object.decode);

    return approval;
  }

  SaveTokenApproval(tokenId: u64, approval: nft.token_approval_object): void {
    System.putObject(this.tokenApprovalSpace, tokenId.toString(), approval, nft.token_approval_object.encode);
  }

  DeleteTokenApproval(tokenId: u64): void {
    System.removeObject(this.tokenApprovalSpace, tokenId.toString());
  }
}
