import {
  System,
  Protobuf,
  authority,
  Arrays,
  error,
  token as tokenSDK,
  SafeMath,
  value,
  Crypto,
} from "@koinos/sdk-as";
import { token } from "./proto/token";
import { BalancesStorage } from "./state/BalancesStorage";
import { Constants } from "./Constants";
import { MetadataStorage } from "./state/MetadataStorage";
import { AllowancesStorage } from "./state/AllowancesStorage";

export class Token {
  contractId: Uint8Array = System.getContractId();
  metadataStorage: MetadataStorage = new MetadataStorage(this.contractId);
  balancesStorage: BalancesStorage = new BalancesStorage(this.contractId);
  allowancesStorage: AllowancesStorage = new AllowancesStorage(this.contractId);

  private checkAuth(account: Uint8Array): bool {
    const caller = System.getCaller().caller;
    return (
      (caller.length && Arrays.equal(caller, account)) ||
      System.checkAuthority(authority.authorization_type.contract_call, account)
    );
  }

  private checkAllowances(owner: Uint8Array, amount: u64): bool {
    const sigBytes =
      System.getTransactionField("signatures")!.message_value!.value!;

    const signatures = Protobuf.decode<value.list_type>(
      sigBytes,
      value.list_type.decode
    );

    const txId = System.getTransactionField("id")!.bytes_value;

    // iterate over all the signers
    const allowanceKey = new token.allowance_key(owner);
    let allowance: token.uint64_object | null;
    let foundApprovedSpender = false;

    for (let i = 0; i < signatures.values.length; i++) {
      const publicKey = System.recoverPublicKey(
        signatures.values[i].bytes_value,
        txId
      );
      allowanceKey.spender = Crypto.addressFromPublicKey(publicKey!);
      allowance = this.allowancesStorage.get(allowanceKey)!;

      // if approved spender, then decrease allowance
      if (allowance.value >= amount) {
        foundApprovedSpender = true;
        allowance.value -= amount;
        this.allowancesStorage.put(allowanceKey, allowance);
      }
    }

    return foundApprovedSpender;
  }

  name(args: token.name_arguments): token.string_object {
    return new token.string_object(Constants.name);
  }

  symbol(args: token.symbol_arguments): token.string_object {
    return new token.string_object(Constants.symbol);
  }

  decimals(args: token.decimals_arguments): token.uint32_object {
    return new token.uint32_object(Constants.decimals);
  }

  total_supply(args: token.total_supply_arguments): token.uint64_object {
    return new token.uint64_object(this.metadataStorage.getMetadata().supply);
  }

  max_supply(args: token.max_supply_arguments): token.uint64_object {
    return new token.uint64_object(Constants.max_supply);
  }

  balance_of(args: token.balance_of_arguments): token.uint64_object {
    const owner = args.owner;

    return this.balancesStorage.get(owner)!;
  }

  transfer(args: token.transfer_arguments): token.empty_message {
    const from = args.from;
    const to = args.to;
    const value = args.value;

    System.require(from.length, "missing 'from' argument");
    System.require(to.length, "missing 'to' argument");

    System.require(
      this.checkAuth(from) || this.checkAllowances(from, value),
      "'from' has not authorized transfer",
      error.error_code.authorization_failure
    );

    const fromBalance = this.balancesStorage.get(from)!;

    System.require(
      fromBalance.value >= value,
      "'from' has insufficient balance"
    );

    // the balances cannot hold more than the supply, so we don't check for overflow/underflow
    fromBalance.value -= value;
    this.balancesStorage.put(from, fromBalance);

    const toBalance = this.balancesStorage.get(to)!;
    toBalance.value += value;
    this.balancesStorage.put(to, toBalance);

    const transferEvent = new tokenSDK.transfer_event(from, to, value);

    System.event(
      "koinos.contracts.token.transfer_event",
      Protobuf.encode(transferEvent, tokenSDK.transfer_event.encode),
      [to, from]
    );

    return new token.empty_message();
  }

  mint(args: token.mint_arguments): token.empty_message {
    const to = args.to;
    const value = args.value;

    System.require(to.length, "missing 'to' argument");

    const metadata = this.metadataStorage.getMetadata();

    System.require(
      this.checkAuth(metadata.owner),
      "Owner has not autorized this call",
      error.error_code.authorization_failure
    );

    const newSupply = SafeMath.tryAdd(metadata.supply, value);

    System.require(!newSupply.error, "Mint would overflow supply");

    System.require(
      newSupply.value <= Constants.max_supply,
      "Mint would overflow max supply"
    );

    metadata.supply = newSupply.value;
    this.metadataStorage.put(metadata);

    const toBalance = this.balancesStorage.get(to)!;
    toBalance.value += value;
    this.balancesStorage.put(to, toBalance);

    const mintEvent = new tokenSDK.mint_event(to, value);

    System.event(
      "koinos.contracts.token.mint_event",
      Protobuf.encode(mintEvent, tokenSDK.mint_event.encode),
      [to]
    );

    return new token.empty_message();
  }

  burn(args: token.burn_arguments): token.empty_message {
    // Burn disabled by default.
    // Example of a burn implementation allowing for holders to burn their tokens below

    const from = args.from;
    const value = args.value;

    System.require(from.length, "missing 'from' argument");

    System.require(
      this.checkAuth(from),
      "'from' has not authorized transfer",
      error.error_code.authorization_failure
    );

    const fromBalance = this.balancesStorage.get(from)!;

    System.require(
      fromBalance.value >= value,
      "'from' has insufficient balance"
    );

    const metadata = this.metadataStorage.getMetadata();

    // the balances cannot hold more than the supply, so we don't check for overflow/underflow
    metadata.supply -= value;
    this.metadataStorage.put(metadata);

    fromBalance.value -= value;
    this.balancesStorage.put(from, fromBalance);

    const burnEvent = new tokenSDK.burn_event(from, value);

    System.event(
      "koinos.contracts.token.burn_event",
      Protobuf.encode(burnEvent, tokenSDK.burn_event.encode),
      [from]
    );

    return new token.empty_message();
  }

  approve(args: token.approve_arguments): token.empty_message {
    const owner = args.owner;
    const spender = args.spender;
    const value = args.value;

    System.require(owner.length, "missing 'owner' argument");
    System.require(spender.length, "missing 'spender' argument");

    System.require(
      this.checkAuth(owner),
      "'owner' has not autorized this call",
      error.error_code.authorization_failure
    );

    const allowanceKey = new token.allowance_key(owner, spender);
    const allowance = this.allowancesStorage.get(allowanceKey)!;

    allowance.value = value;
    this.allowancesStorage.put(allowanceKey, allowance);

    const approveEvent = new token.approve_event(owner, spender, value);

    System.event(
      "token.approve_event",
      Protobuf.encode(approveEvent, token.approve_event.encode),
      [spender, owner]
    );

    return new token.empty_message();
  }

  allowance(args: token.allowance_arguments): token.uint64_object {
    const owner = args.owner;
    const spender = args.spender;

    return this.allowancesStorage.get(new token.allowance_key(owner, spender))!;
  }

  update_owner(args: token.update_owner_arguments): token.empty_message {
    const new_owner = args.new_owner;
    const metadata = this.metadataStorage.getMetadata();

    System.require(new_owner.length, "missing 'new_owner' argument");

    // check authority of current owner
    System.require(
      this.checkAuth(metadata.owner),
      "'owner' has not autorized this call",
      error.error_code.authorization_failure
    );

    // check authority of new owner
    System.require(
      this.checkAuth(new_owner),
      "'new_owner' has not autorized this call",
      error.error_code.authorization_failure
    );

    metadata.owner = new_owner;
    this.metadataStorage.put(metadata);

    return new token.empty_message();
  }

  get_info(args: token.get_info_arguments): token.info_object {
    const metadata = this.metadataStorage.getMetadata();

    const res = new token.info_object();
    res.name = Constants.name;
    res.symbol = Constants.symbol;
    res.decimals = Constants.decimals;
    res.max_supply = Constants.max_supply;
    res.supply = metadata.supply;
    res.owner = metadata.owner;

    return res;
  }
}
