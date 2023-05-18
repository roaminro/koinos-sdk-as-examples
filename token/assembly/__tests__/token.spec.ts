import { Base58, MockVM, Arrays, Protobuf, authority, chain } from "@koinos/sdk-as";
import { Token } from "../Token";
import { token } from "../proto/token";

const CONTRACT_ID = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqe");
const MOCK_ACCT1 = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqG");
const MOCK_ACCT2 = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqK");

describe("token", () => {
  beforeEach(() => {
    MockVM.reset();
    MockVM.setContractId(CONTRACT_ID);
    MockVM.setCaller(new chain.caller_data(new Uint8Array(0), chain.privilege.user_mode));
  });

  it("should get the name", () => {
    const tkn = new Token();

    const args = new token.name_arguments();
    const res = tkn.name(args);

    expect(res.value).toBe("Token");
  });

  it("should get the symbol", () => {
    const tkn = new Token();

    const args = new token.symbol_arguments();
    const res = tkn.symbol(args);

    expect(res.value).toBe("TKN");
  });

  it("should get the decimals", () => {
    const tkn = new Token();

    const args = new token.decimals_arguments();
    const res = tkn.decimals(args);

    expect(res.value).toBe(8);
  });

  it("should get the max supply", () => {
    const tkn = new Token();

    const args = new token.max_supply_arguments();
    const res = tkn.max_supply(args);

    expect(res.value).toBe(0);
  });

  it("should/not burn tokens", () => {
    const tkn = new Token();

    MockVM.setContractArguments(new Uint8Array(0));
    MockVM.setEntryPoint(1);

    // set contract_call authority for CONTRACT_ID to true so that we can mint tokens
    let auth = new MockVM.MockAuthority(authority.authorization_type.contract_call, CONTRACT_ID, true);
    MockVM.setAuthorities([auth]);

    // check total supply
    const totalSupplyArgs = new token.total_supply_arguments();
    let totalSupplyRes = tkn.total_supply(totalSupplyArgs);
    expect(totalSupplyRes.value).toBe(0);

    // mint tokens
    const mintArgs = new token.mint_arguments(MOCK_ACCT1, 123);
    tkn.mint(mintArgs);

    auth = new MockVM.MockAuthority(authority.authorization_type.contract_call, MOCK_ACCT1, true);
    MockVM.setAuthorities([auth]);

    // burn tokens
    let burnArgs = new token.burn_arguments(MOCK_ACCT1, 10);
    tkn.burn(burnArgs);

    // check events
    const events = MockVM.getEvents();
    expect(events.length).toBe(2);
    expect(events[0].name).toBe('koinos.contracts.token.mint_event');
    expect(events[0].impacted.length).toBe(1);
    expect(Arrays.equal(events[0].impacted[0], MOCK_ACCT1)).toBe(true);
    expect(events[1].name).toBe('koinos.contracts.token.burn_event');
    expect(events[1].impacted.length).toBe(1);
    expect(Arrays.equal(events[1].impacted[0], MOCK_ACCT1)).toBe(true);

    const burnEvent = Protobuf.decode<token.burn_event>(events[1].data, token.burn_event.decode);
    expect(Arrays.equal(burnEvent.from, MOCK_ACCT1)).toBe(true);
    expect(burnEvent.value).toBe(10);

    // check balance
    let balanceArgs = new token.balance_of_arguments(MOCK_ACCT1);
    let balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(113);

    // check total supply
    totalSupplyRes = tkn.total_supply(totalSupplyArgs);
    expect(totalSupplyRes.value).toBe(113);

    // save the MockVM state because the burn is going to revert the transaction
    MockVM.commitTransaction();

    // does not burn tokens
    expect(() => {
      const tkn = new Token();
      const burnArgs = new token.burn_arguments(MOCK_ACCT1, 200);
      tkn.burn(burnArgs);
    }).toThrow();

    // check error message
    expect(MockVM.getErrorMessage()).toStrictEqual("'from' has insufficient balance");

    MockVM.setAuthorities([]);

    // save the MockVM state because the burn is going to revert the transaction
    MockVM.commitTransaction();

    expect(() => {
      // try to burn tokens
      const tkn = new Token();
      const burnArgs = new token.burn_arguments(MOCK_ACCT1, 123);
      tkn.burn(burnArgs);
    }).toThrow();

    // check balance
    balanceArgs = new token.balance_of_arguments(MOCK_ACCT1);
    balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(113);

    // check total supply
    totalSupplyRes = tkn.total_supply(totalSupplyArgs);
    expect(totalSupplyRes.value).toBe(113);
  });

  it("should mint tokens", () => {
    const tkn = new Token();

    // set contract_call authority for CONTRACT_ID to true so that we can mint tokens
    const auth = new MockVM.MockAuthority(authority.authorization_type.contract_call, CONTRACT_ID, true);
    MockVM.setAuthorities([auth]);

    // check total supply
    const totalSupplyArgs = new token.total_supply_arguments();
    let totalSupplyRes = tkn.total_supply(totalSupplyArgs);
    expect(totalSupplyRes.value).toBe(0);

    // mint tokens
    const mintArgs = new token.mint_arguments(MOCK_ACCT1, 123);
    tkn.mint(mintArgs);

    // check events
    const events = MockVM.getEvents();
    expect(events.length).toBe(1);
    expect(events[0].name).toBe('koinos.contracts.token.mint_event');
    expect(events[0].impacted.length).toBe(1);
    expect(Arrays.equal(events[0].impacted[0], MOCK_ACCT1)).toBe(true);

    const mintEvent = Protobuf.decode<token.mint_event>(events[0].data, token.mint_event.decode);
    expect(Arrays.equal(mintEvent.to, MOCK_ACCT1)).toBe(true);
    expect(mintEvent.value).toBe(123);

    // check balance
    const balanceArgs = new token.balance_of_arguments(MOCK_ACCT1);
    const balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(123);

    // check total supply
    totalSupplyRes = tkn.total_supply(totalSupplyArgs);
    expect(totalSupplyRes.value).toBe(123);
  });

  it("should not mint tokens if not contract account", () => {
    const tkn = new Token();

    // set contract_call authority for MOCK_ACCT1 to true so that we cannot mint tokens
    const auth = new MockVM.MockAuthority(authority.authorization_type.contract_call, MOCK_ACCT1, true);
    MockVM.setAuthorities([auth]);

    // check total supply
    const totalSupplyArgs = new token.total_supply_arguments();
    let totalSupplyRes = tkn.total_supply(totalSupplyArgs);
    expect(totalSupplyRes.value).toBe(0);

    // check balance
    const balanceArgs = new token.balance_of_arguments(MOCK_ACCT1);
    let balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(0);

    // save the MockVM state because the mint is going to revert the transaction
    MockVM.commitTransaction();

    expect(() => {
      // try to mint tokens
      const tkn = new Token();
      const mintArgs = new token.mint_arguments(MOCK_ACCT2, 123);
      tkn.mint(mintArgs);
    }).toThrow();

    // check balance
    balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(0);

    // check total supply
    totalSupplyRes = tkn.total_supply(totalSupplyArgs);
    expect(totalSupplyRes.value).toBe(0);
  });

  it("should not mint tokens if new total supply overflows", () => {
    const tkn = new Token();

    // set contract_call authority for CONTRACT_ID to true so that we can mint tokens
    const auth = new MockVM.MockAuthority(authority.authorization_type.contract_call, CONTRACT_ID, true);
    MockVM.setAuthorities([auth]);

    let mintArgs = new token.mint_arguments(MOCK_ACCT2, 123);
    tkn.mint(mintArgs);

    // check total supply
    let totalSupplyArgs = new token.total_supply_arguments();
    let totalSupplyRes = tkn.total_supply(totalSupplyArgs);
    expect(totalSupplyRes.value).toBe(123);

    // save the MockVM state because the mint is going to revert the transaction
    MockVM.commitTransaction();

    expect(() => {
      // try to mint tokens
      const tkn = new Token();
      const mintArgs = new token.mint_arguments(MOCK_ACCT2, u64.MAX_VALUE);
      tkn.mint(mintArgs);
    }).toThrow();

    expect(MockVM.getErrorMessage()).toStrictEqual('Mint would overflow supply');

    // check total supply
    totalSupplyRes = tkn.total_supply(totalSupplyArgs);
    expect(totalSupplyRes.value).toBe(123);
  });

  it("should not mint tokens if new total supply overflows max supply", () => {
    const tkn = new Token();

    // set contract_call authority for CONTRACT_ID to true so that we can mint tokens
    const auth = new MockVM.MockAuthority(authority.authorization_type.contract_call, CONTRACT_ID, true);
    MockVM.setAuthorities([auth]);

    let mintArgs = new token.mint_arguments(MOCK_ACCT2, 123);
    tkn.mint(mintArgs);

    // check total supply
    let totalSupplyArgs = new token.total_supply_arguments();
    let totalSupplyRes = tkn.total_supply(totalSupplyArgs);
    expect(totalSupplyRes.value).toBe(123);

    // save the MockVM state because the mint is going to revert the transaction
    MockVM.commitTransaction();

    expect(() => {
      // try to mint tokens
      const tkn = new Token();
      tkn._maxSupply = 400;
      const mintArgs = new token.mint_arguments(MOCK_ACCT2, 500);
      tkn.mint(mintArgs);
    }).toThrow();

    expect(MockVM.getErrorMessage()).toStrictEqual('Mint would overflow max supply');

    // check total supply
    totalSupplyRes = tkn.total_supply(totalSupplyArgs);
    expect(totalSupplyRes.value).toBe(123);
  });

  it("should transfer tokens", () => {
    const tkn = new Token();

    MockVM.setContractArguments(new Uint8Array(0));
    MockVM.setEntryPoint(1);

    // set contract_call authority for CONTRACT_ID to true so that we can mint tokens
    const authContractId = new MockVM.MockAuthority(authority.authorization_type.contract_call, CONTRACT_ID, true);

    // set contract_call authority for MOCK_ACCT1 to true so that we can transfer tokens
    const authMockAcct1 = new MockVM.MockAuthority(authority.authorization_type.contract_call, MOCK_ACCT1, true);
    MockVM.setAuthorities([authContractId, authMockAcct1]);

    // mint tokens
    const mintArgs = new token.mint_arguments(MOCK_ACCT1, 123);
    tkn.mint(mintArgs);

    // transfer tokens
    const transferArgs = new token.transfer_arguments(MOCK_ACCT1, MOCK_ACCT2, 10);
    tkn.transfer(transferArgs);

    // check balances
    let balanceArgs = new token.balance_of_arguments(MOCK_ACCT1);
    let balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(113);

    balanceArgs = new token.balance_of_arguments(MOCK_ACCT2);
    balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(10);

    // check events
    const events = MockVM.getEvents();
    // 2 events, 1st one is the mint event, the second one is the transfer event
    expect(events.length).toBe(2);
    expect(events[1].name).toBe('koinos.contracts.token.transfer_event');
    expect(events[1].impacted.length).toBe(2);
    expect(Arrays.equal(events[1].impacted[0], MOCK_ACCT2)).toBe(true);
    expect(Arrays.equal(events[1].impacted[1], MOCK_ACCT1)).toBe(true);

    const transferEvent = Protobuf.decode<token.transfer_event>(events[1].data, token.transfer_event.decode);
    expect(Arrays.equal(transferEvent.from, MOCK_ACCT1)).toBe(true);
    expect(Arrays.equal(transferEvent.to, MOCK_ACCT2)).toBe(true);
    expect(transferEvent.value).toBe(10);
  });

  it("should not transfer tokens without the proper authorizations", () => {
    const tkn = new Token();

    // set contract_call authority for CONTRACT_ID to true so that we can mint tokens
    const authContractId = new MockVM.MockAuthority(authority.authorization_type.contract_call, CONTRACT_ID, true);
    // do not set authority for MOCK_ACCT1
    MockVM.setAuthorities([authContractId]);

    // mint tokens
    const mintArgs = new token.mint_arguments(MOCK_ACCT1, 123);
    tkn.mint(mintArgs);

    // save the MockVM state because the transfer is going to revert the transaction
    MockVM.commitTransaction();

    expect(() => {
      // try to transfer tokens without the proper authorizations for MOCK_ACCT1
      const tkn = new Token();
      const transferArgs = new token.transfer_arguments(MOCK_ACCT1, MOCK_ACCT2, 10);
      tkn.transfer(transferArgs);
    }).toThrow();

    expect(MockVM.getErrorMessage()).toStrictEqual("'from' has not authorized transfer");

    // check balances
    let balanceArgs = new token.balance_of_arguments(MOCK_ACCT1);
    let balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(123);

    balanceArgs = new token.balance_of_arguments(MOCK_ACCT2);
    balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(0);
  });

  it("should not transfer tokens to self", () => {
    const tkn = new Token();

    // set contract_call authority for CONTRACT_ID to true so that we can mint tokens
    const authContractId = new MockVM.MockAuthority(authority.authorization_type.contract_call, CONTRACT_ID, true);

    // set contract_call authority for MOCK_ACCT1 to true so that we can transfer tokens
    const authMockAcct1 = new MockVM.MockAuthority(authority.authorization_type.contract_call, MOCK_ACCT1, true);
    MockVM.setAuthorities([authContractId, authMockAcct1]);

    // mint tokens
    const mintArgs = new token.mint_arguments(MOCK_ACCT1, 123);
    tkn.mint(mintArgs);

    // save the MockVM state because the transfer is going to revert the transaction
    MockVM.commitTransaction();

    expect(() => {
      // try to transfer tokens
      const tkn = new Token();
      const transferArgs = new token.transfer_arguments(MOCK_ACCT1, MOCK_ACCT1, 10);
      tkn.transfer(transferArgs);
    }).toThrow();

    expect(MockVM.getErrorMessage()).toStrictEqual('Cannot transfer to self');

    // check balances
    let balanceArgs = new token.balance_of_arguments(MOCK_ACCT1);
    let balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(123);
  });

  it("should not transfer if unsufficient balance", () => {
    const tkn = new Token();

    // set contract_call authority for CONTRACT_ID to true so that we can mint tokens
    const authContractId = new MockVM.MockAuthority(authority.authorization_type.contract_call, CONTRACT_ID, true);

    // set contract_call authority for MOCK_ACCT1 to true so that we can transfer tokens
    const authMockAcct1 = new MockVM.MockAuthority(authority.authorization_type.contract_call, MOCK_ACCT1, true);
    MockVM.setAuthorities([authContractId, authMockAcct1]);

    // mint tokens
    const mintArgs = new token.mint_arguments(MOCK_ACCT1, 123);
    tkn.mint(mintArgs);

    // save the MockVM state because the transfer is going to revert the transaction
    MockVM.commitTransaction();

    expect(() => {
      // try to transfer tokens
      const tkn = new Token();
      const transferArgs = new token.transfer_arguments(MOCK_ACCT1, MOCK_ACCT2, 456);
      tkn.transfer(transferArgs);
    }).toThrow();

    expect(MockVM.getErrorMessage()).toStrictEqual("'from' has insufficient balance");

    // check balances
    let balanceArgs = new token.balance_of_arguments(MOCK_ACCT1);
    let balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(123);

    balanceArgs = new token.balance_of_arguments(MOCK_ACCT2);
    balanceRes = tkn.balance_of(balanceArgs);
    expect(balanceRes.value).toBe(0);
  });
});
