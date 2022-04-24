import { Base58, Base64, chain, MockVM, protocol, System } from "koinos-as-sdk";
import { Wallet, Result } from "../Wallet";
import { wallet as w } from "../proto/wallet";

System.MAX_BUFFER_SIZE = 4096;
const CONTRACT_ID = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqe");
const TX_ID = Base64.decode("EiDzPCOIvAo2wEZiM8JYpL5syByokxC0kTQraOw4OVmSYA==");
const ACCOUNT1 = Base58.decode("1MaqFT7kZdTBypYFeiXvZketbPwbzdJrHd");
const ACCOUNT2 = Base58.decode("1EnbyyFR8AWGYRh4HFjvF3mL2s7CVKwxqA");
const ACCOUNT3 = Base58.decode("1HxYahK6EPjbBFdcraK7xCVC9mNozHvQEq");
const ACCOUNT4 = Base58.decode("15Ft19SWESYnudEzYFUoYqHx4fxmeEcYtF");
const ACCOUNT5 = Base58.decode("125K7e7M357JRRnj7s6kSfHTeRpNFaMD8f");
const ACCOUNT6 = Base58.decode("1DUMLYMr5WVNP8z4u3vuwpcy5oFB9z3fth");
const ACCOUNT7 = Base58.decode("1LxX1FArfX5UQKww1Uj6xirTZ6ar1YNATv");
const ACCOUNT8 = Base58.decode("1FQB5FpZbvZfxxFTid7jykpLkaqpuTeAcN");
const ACCOUNT9 = Base58.decode("13NxsLNY3WKCeK8biDkHnv3iz3V2pvV4Vb");
const SIG_ACCOUNT1 = Base64.decode(
  "IHn4RGrZRVVj9V0cDF6heNiwOlHclCQ8QTDkNbaWhvBdUKyohLyq7tuIHZj1e6aydNLvOGXpOYlLP3G9SsTpALs="
);
const SIG_ACCOUNT2 = Base64.decode(
  "H7szWmH3ku-aKSTEBipT0zRe4UIAbNNVQYd9oKL4a5xAS-Ud1t4RR-KqXISmRv8P5VxY72tDt5MhiPur_C9UX64="
);
const SIG_ACCOUNT3 = Base64.decode(
  "IGDoiBAYRnKk1SGhaInB6lGXg-Majpwi9bWx8g9oKGIHLcJyYe-3d93Kz9qUzMV_xEVn7BJxHVa53ZLJO0fta5Y="
);
const SIG_ACCOUNT4 = Base64.decode(
  "H0usX9n0PcLzh9EkbRPcVd1XfCixqi4EzIzwUFlkVDclejRSUKDIhlN_trj6RLUg-H68DoiPXoxd2iIvfVVNLec="
);
const SIG_ACCOUNT5 = Base64.decode(
  "IPg4EV67x7jmFc5nny_nMEchBlcDN6wCCTlZwGoy5HaEBpPtNv2rYKDwwOaaWC_DIxN2rDvHc04oa49FSbfwsBA="
);
const SIG_ACCOUNT6 = Base64.decode(
  "IJM_AQJVwF9e8i05KvJwA8RuVt8XuIL1PgbWLkLU_5UcWQzfrb0bBc_FDnk8jbId5N3IuzMrBbctPG6qjTa_XFA="
);
const SIG_ACCOUNT7 = Base64.decode(
  "IPdA3APd-fSWTiuC2iZEuxM4r7i9K8lIP4A90I7KCB7bCGD7KzYiID0C0LSTVToASloiuiGW7VhdCsMuRa-DWI0="
);
const SIG_ACCOUNT8 = Base64.decode(
  "H7cBdfmVi1H229-Vv6_y3AsCpz9gZm9WH1VXtR2WOJr1QBDh5SzLQPzYr-Pz20C_2x6FAM5B2HuAERKMHw9ojL8="
);
const SIG_ACCOUNT9 = Base64.decode(
  "H-jhwlYEkAvxxJ1mU-SsTtMuQEbtGzU0mIje_G1rgrYJIC9bEjtTRBKnA7OGAyoLZxFo2ztLuIfHikG8RrVhsco="
);
const TIME_0: u64 = 86400;

let myWallet: Wallet;

function ownerAuthority(): w.add_authority_arguments {
  const authority = new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1);
  const addAuthArgs = new w.add_authority_arguments("owner", authority, false);
  return addAuthArgs;
}

function addOwner(): w.add_authority_result {
  return myWallet.add_authority(ownerAuthority());
}

describe("wallet", () => {
  beforeEach(() => {
    MockVM.reset();
    MockVM.setContractId(CONTRACT_ID);
    MockVM.setHeadInfo(new chain.head_info(null, TIME_0, 1));
  });

  it("should create the owner authority", () => {
    myWallet = new Wallet();
    const authority = new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1);
    const addAuthArgs = new w.add_authority_arguments(
      "owner",
      authority,
      false
    );
    const res = myWallet.add_authority(addAuthArgs);
    expect(res.value).toBe(true);
    expect(authority.last_update).toBe(TIME_0);

    const authorities = myWallet.get_authorities(
      new w.get_authorities_arguments()
    );
    expect(MockVM.getLogs()).toStrictEqual([]);
    expect(authorities).toStrictEqual(
      new w.get_authorities_result([addAuthArgs])
    );
  });

  it("should prevent creating another authority before owner", () => {
    myWallet = new Wallet();
    expect(() => {
      const authority = new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1);
      const addAuthArgs = new w.add_authority_arguments(
        "active",
        authority,
        false
      );
      myWallet.add_authority(addAuthArgs);
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual([
      "the first authority must be 'owner'",
    ]);
  });

  it("should require owner signature to add new authorities", () => {
    myWallet = new Wallet();
    const authority = new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1);
    const addAuthArgs = new w.add_authority_arguments(
      "owner",
      authority,
      false
    );
    myWallet.add_authority(addAuthArgs);

    const tx = new protocol.transaction();
    tx.id = TX_ID;
    tx.signatures = [SIG_ACCOUNT2];
    MockVM.setTransaction(tx);
    MockVM.setCaller(new chain.caller_data());
    expect(() => {
      const authority2 = new w.authority(
        [new w.key_auth(ACCOUNT2, null, 1)],
        1
      );
      const addAuthArgs2 = new w.add_authority_arguments(
        "active",
        authority2,
        false
      );
      myWallet.add_authority(addAuthArgs2);
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual(["authority owner failed"]);
  });

  it("should create 2 authorities", () => {
    myWallet = new Wallet();
    const authority = new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1);
    const addAuthArgs = new w.add_authority_arguments(
      "owner",
      authority,
      false
    );
    myWallet.add_authority(addAuthArgs);

    const tx = new protocol.transaction();
    tx.id = TX_ID;
    tx.signatures = [SIG_ACCOUNT1];
    MockVM.setTransaction(tx);
    MockVM.setCaller(new chain.caller_data());

    const authority2 = new w.authority([new w.key_auth(ACCOUNT2, null, 1)], 1);
    const addAuthArgs2 = new w.add_authority_arguments(
      "active",
      authority2,
      false
    );
    myWallet.add_authority(addAuthArgs2);
    const authorities = myWallet.get_authorities(
      new w.get_authorities_arguments()
    );
    expect(MockVM.getLogs()).toStrictEqual([]);
    expect(authorities).toStrictEqual(
      new w.get_authorities_result([addAuthArgs, addAuthArgs2])
    );
  });

  it("should handle verify authority", () => {
    const tx = new protocol.transaction();
    tx.id = TX_ID;
    tx.signatures = [SIG_ACCOUNT1];
    MockVM.setTransaction(tx);
    MockVM.setCaller(new chain.caller_data());

    myWallet = new Wallet();

    // owner
    myWallet.add_authority(
      new w.add_authority_arguments(
        "owner",
        new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1),
        false
      )
    );

    // multisig: require several signatures with different weights
    myWallet.add_authority(
      new w.add_authority_arguments(
        "multisig",
        new w.authority(
          [
            new w.key_auth(ACCOUNT2, null, 2),
            new w.key_auth(ACCOUNT3, null, 1),
            new w.key_auth(ACCOUNT4, null, 1),
            new w.key_auth(ACCOUNT5, null, 1),
          ],
          3
        ),
        false
      )
    );

    // contractCaller: require to be called by a contract
    myWallet.add_authority(
      new w.add_authority_arguments(
        "contractCaller",
        new w.authority([new w.key_auth(null, ACCOUNT6, 1)], 1),
        false
      )
    );

    // caller+multisig: require signatures and to be called by a contract
    myWallet.add_authority(
      new w.add_authority_arguments(
        "caller+multisig",
        new w.authority(
          [
            new w.key_auth(null, ACCOUNT6, 7),
            new w.key_auth(ACCOUNT7, null, 1),
            new w.key_auth(ACCOUNT8, null, 1),
          ],
          8
        ),
        false
      )
    );

    MockVM.commitTransaction();

    expect(myWallet._verifyAuthority("asdfg")).toStrictEqual(
      new Result(true, "invalid authority 'asdfg'")
    );
    expect(myWallet._verifyAuthority("owner")).toStrictEqual(
      new Result(false, "")
    );
    expect(myWallet._verifyAuthority("multisig")).toStrictEqual(
      new Result(true, "authority multisig failed")
    );

    tx.signatures = [SIG_ACCOUNT2, SIG_ACCOUNT3];
    MockVM.setTransaction(tx);
    expect(myWallet._verifyAuthority("multisig")).toStrictEqual(
      new Result(false, "")
    );

    tx.signatures = [SIG_ACCOUNT3, SIG_ACCOUNT4];
    MockVM.setTransaction(tx);
    expect(myWallet._verifyAuthority("multisig")).toStrictEqual(
      new Result(true, "authority multisig failed")
    );

    tx.signatures = [SIG_ACCOUNT3, SIG_ACCOUNT3, SIG_ACCOUNT4];
    MockVM.setTransaction(tx);
    expect(myWallet._verifyAuthority("multisig")).toStrictEqual(
      new Result(true, "duplicate signature detected")
    );

    tx.signatures = [SIG_ACCOUNT1];
    MockVM.setTransaction(tx);
    expect(myWallet._verifyAuthority("contractCaller")).toStrictEqual(
      new Result(true, "authority contractCaller failed")
    );

    tx.signatures = [SIG_ACCOUNT9];
    MockVM.setTransaction(tx);
    MockVM.setCaller(
      new chain.caller_data(ACCOUNT6, chain.privilege.user_mode)
    );
    expect(myWallet._verifyAuthority("contractCaller")).toStrictEqual(
      new Result(false, "")
    );

    expect(myWallet._verifyAuthority("caller+multisig")).toStrictEqual(
      new Result(true, "authority caller+multisig failed")
    );

    tx.signatures = [SIG_ACCOUNT7];
    MockVM.setTransaction(tx);
    expect(myWallet._verifyAuthority("caller+multisig")).toStrictEqual(
      new Result(false, "")
    );

    tx.signatures = [SIG_ACCOUNT7, SIG_ACCOUNT8];
    MockVM.setTransaction(tx);
    expect(myWallet._verifyAuthority("caller+multisig")).toStrictEqual(
      new Result(false, "")
    );

    expect(MockVM.getLogs()).toStrictEqual([]);
  });

  it("should reject bad request of add authority", () => {
    myWallet = new Wallet();

    expect(() => {
      myWallet.add_authority(
        new w.add_authority_arguments(
          "owner",
          new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 2)
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual([
      "owner authority can not be impossible",
    ]);
    MockVM.clearLogs();

    expect(() => {
      myWallet.add_authority(
        new w.add_authority_arguments(
          "owner",
          new w.authority(
            [
              new w.key_auth(ACCOUNT1, null, 1),
              new w.key_auth(ACCOUNT1, null, 1),
            ],
            2
          )
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual(["duplicate address detected"]);
    MockVM.clearLogs();

    // add owner
    myWallet.add_authority(
      new w.add_authority_arguments(
        "owner",
        new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1)
      )
    );
    MockVM.commitTransaction();

    expect(() => {
      myWallet.add_authority(
        new w.add_authority_arguments(
          null,
          new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 2)
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual(["name undefined"]);
    MockVM.clearLogs();

    expect(() => {
      myWallet.add_authority(new w.add_authority_arguments("recovery", null));
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual(["authority undefined"]);
    MockVM.clearLogs();

    expect(() => {
      myWallet.add_authority(
        new w.add_authority_arguments(
          "owner",
          new w.authority([new w.key_auth(ACCOUNT3, null, 1)], 1)
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual(["authority owner already exists"]);
    MockVM.clearLogs();

    expect(() => {
      myWallet.add_authority(
        new w.add_authority_arguments(
          "recovery",
          new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 2)
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual([
      "recovery authority can not be impossible",
    ]);
    MockVM.clearLogs();

    expect(() => {
      myWallet.add_authority(
        new w.add_authority_arguments(
          "active",
          new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 2)
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual([
      "impossible authority: If this is your intention tag it as impossible",
    ]);
    MockVM.clearLogs();

    expect(() => {
      myWallet.add_authority(
        new w.add_authority_arguments(
          "active",
          new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1),
          true
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual([
      "the authority was tagged as impossible but it is not",
    ]);
    MockVM.clearLogs();

    expect(() => {
      myWallet.add_authority(
        new w.add_authority_arguments(
          "active",
          new w.authority(
            [
              new w.key_auth(null, ACCOUNT1, 1),
              new w.key_auth(null, ACCOUNT1, 1),
            ],
            2
          )
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual(["duplicate address detected"]);
    MockVM.clearLogs();

    expect(() => {
      myWallet.add_authority(
        new w.add_authority_arguments(
          "active",
          new w.authority(
            [
              new w.key_auth(null, ACCOUNT1, 1),
              new w.key_auth(null, ACCOUNT2, 1),
            ],
            2
          )
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual([
      `impossible for contract ${Base58.encode(ACCOUNT1)}`,
      "impossible authority: If this is your intention tag it as impossible",
    ]);
    MockVM.clearLogs();

    expect(() => {
      myWallet.add_authority(
        new w.add_authority_arguments(
          "active",
          new w.authority(
            [
              new w.key_auth(null, ACCOUNT1, 1),
              new w.key_auth(null, null, 1),
              new w.key_auth(ACCOUNT3, null, 1),
            ],
            2
          )
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual([
      "no address or contract_id in key_auth 1",
    ]);
    MockVM.clearLogs();
  });
});
