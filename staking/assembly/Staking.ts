import { Base58, Protobuf, SafeMath, System, Token } from "@koinos/sdk-as";
import { staking } from "./proto/staking";
import { State } from "./State";

const TOKEN_CONTRACT_ID = Base58.decode('19JntSm8pSNETT9aHTwAUHC5RMoaSmgZPJ');

export class Staking {
  _contractId: Uint8Array;
  _state: State;
  _token: Token;

  constructor() {
    this._contractId = System.getContractId();
    this._state = new State(this._contractId);
    this._token = new Token(TOKEN_CONTRACT_ID);
  }

  balance_of(args: staking.balance_of_arguments): staking.balance_of_result {
    const account = args.account as Uint8Array;

    const balanceObj = this._state.GetBalance(account);

    const res = new staking.balance_of_result();
    res.value = balanceObj.value;

    return res;
  }

  stake(args: staking.stake_arguments): staking.stake_result {
    const account = args.account as Uint8Array;
    const value = args.value;

    const res = new staking.stake_result(false);

    if (!this._token.transfer(account, this._contractId, value)) {
      System.log("Token transfer from 'account' failed");

      return res;
    }

    const accountBalance = this._state.GetBalance(account);
    accountBalance.value = SafeMath.add(accountBalance.value, value);

    this._state.SaveBalance(account, accountBalance);

    const stakeEvent = new staking.stake_event(account, value);
    const impacted = [account];

    System.event('staking.stake', Protobuf.encode(stakeEvent, staking.stake_event.encode), impacted);

    res.value = true;

    return res;
  }

  withdraw(args: staking.withdraw_arguments): staking.withdraw_result {
    const account = args.account as Uint8Array;
    const value = args.value;

    const res = new staking.withdraw_result(false);

    const accountBalance = this._state.GetBalance(account);

    if (accountBalance.value < value) {
      System.log("'account' has insufficient balance");

      return res;
    }

    if (!this._token.transfer(this._contractId, account, value)) {
      System.log('Contract had insufficient funds for withdraw ¯\\_(ツ)_/¯');

      return res;
    }

    accountBalance.value -= value;

    this._state.SaveBalance(account, accountBalance);

    const withdrawEvent = new staking.withdraw_event(account, value);
    const impacted = [account];

    System.event('staking.withdraw', Protobuf.encode(withdrawEvent, staking.withdraw_event.encode), impacted);

    res.value = true;

    return res;
  }
}
