import { authority, Base58, MockVM, Arrays, Protobuf } from "koinos-as-sdk";
import { Wallet } from "../Wallet";
import { wallet } from "../proto/wallet";

const CONTRACT_ID = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqe");
const ACCOUNT1 = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqG");
//const ACCOUNT2 = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqK");

describe("wallet", () => {
  beforeEach(() => {
    MockVM.reset();
    MockVM.setContractId(CONTRACT_ID);
  });

  it("should create the owner authority", () => {
    const w = new Wallet();
    const authority = new wallet.authority([new wallet.key_auth(ACCOUNT1, 1)], 1);
    const addAuthArgs = new wallet.add_authority_arguments("owner", authority, false);
    const res = w.add_authority(addAuthArgs);
    expect(res.value).toBe(true);

    const authorities = w.get_authorities(new wallet.get_authorities_arguments());
    expect(authorities).toStrictEqual(new wallet.get_authorities_result([addAuthArgs]));
  });
});