import { Base58, MockVM } from "koinos-as-sdk";
// import { Signer } from "koilib";
import { Wallet } from "../Wallet";
import { wallet as w } from "../proto/wallet";

// const account1 = Signer.fromSeed("account1");
// const account2 = Signer.fromSeed("account2");
const CONTRACT_ID = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqe");
// const ACCOUNT1 = Base58.decode(account1.address);
// const ACCOUNT2 = Base58.decode(account2.address);
const ACCOUNT1 = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqf");
const ACCOUNT2 = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqg");

let myWallet: Wallet;

function ownerAuthority(): w.add_authority_arguments {
  const authority = new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1);
  const addAuthArgs = new w.add_authority_arguments("owner", authority, false);
  return addAuthArgs
}

function addOwner(): w.add_authority_result {
  return myWallet.add_authority(ownerAuthority());
}

describe("wallet", () => {
  beforeEach(() => {
    MockVM.reset();
    MockVM.setContractId(CONTRACT_ID);
  });

  it("should create the owner authority", () => {
    myWallet = new Wallet();
    const authority = new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1);
    const addAuthArgs = new w.add_authority_arguments("owner", authority, false);
    const res = myWallet.add_authority(addAuthArgs);
    expect(res.value).toBe(true);

    const authorities = myWallet.get_authorities(new w.get_authorities_arguments());
    expect(authorities).toStrictEqual(new w.get_authorities_result([addAuthArgs]));
  });

  it("should prevent creating another authority before owner", () => {
    myWallet = new Wallet();
    expect(() => {
      const authority = new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1);
      const addAuthArgs = new w.add_authority_arguments("active", authority, false);
      myWallet.add_authority(addAuthArgs);
    }).toThrow();
    const logs = MockVM.getLogs();
    expect(logs.length).toBe(1);
    expect(logs[0]).toBe("The first authority must be 'owner'");
  });

  // @ts-ignore
  /* it("should create 2 authorities", async () => {
    myWallet = new Wallet();
    addOwner();
    const authority = new w.authority([new w.key_auth(ACCOUNT2, null, 1)], 1);
    const addAuthArgs = new w.add_authority_arguments("posting", authority, false);
    const res = myWallet.add_authority(addAuthArgs);
    expect(res.value).toBe(true);

    let transaction = new protocol.transaction();
    transaction.id = StringBytes.stringToBytes("0x12201234567890123456789012345678901234567890123456789012345678901234");
    const signature = await account1.signHash(transaction.id);
    transaction.signatures = [signature];
    MockVM.setTransaction(transaction);
    const authorities = myWallet.get_authorities(new w.get_authorities_arguments());
    expect(authorities).toStrictEqual(new w.get_authorities_result([ownerAuthority(), addAuthArgs]));
  }); */
});