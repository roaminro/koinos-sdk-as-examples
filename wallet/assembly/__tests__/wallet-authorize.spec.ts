import {
  authority,
  Base58,
  Base64,
  chain,
  MockVM,
  Protobuf,
  protocol,
  System,
} from "koinos-sdk-as";
import { Wallet } from "../Wallet";
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
const TIME_0: u64 = 86400000;

let myWallet: Wallet;

describe("wallet authorize", () => {
  beforeEach(() => {
    MockVM.reset();
    MockVM.setContractId(CONTRACT_ID);
    MockVM.setHeadInfo(new chain.head_info(null, TIME_0, 1));

    const tx = new protocol.transaction();
    tx.id = TX_ID;
    tx.signatures = [SIG_ACCOUNT1];
    MockVM.setTransaction(tx);
    MockVM.setCaller(new chain.caller_data());

    myWallet = new Wallet();

    // add owner
    myWallet.add_authority(
      new w.add_authority_arguments(
        "owner",
        new w.authority([new w.key_auth(ACCOUNT1, null, 1)], 1)
      )
    );

    // add key for transfers
    myWallet.add_authority(
      new w.add_authority_arguments(
        "transfer",
        new w.authority([new w.key_auth(ACCOUNT2, null, 1)], 1)
      )
    );

    // add key for others
    myWallet.add_authority(
      new w.add_authority_arguments(
        "others",
        new w.authority([new w.key_auth(ACCOUNT3, null, 1)], 1)
      )
    );

    // add recovery
    myWallet.add_authority(
      new w.add_authority_arguments(
        "recovery",
        new w.authority([new w.key_auth(ACCOUNT4, null, 1)], 1)
      )
    );

    // protected contract specific entry point
    myWallet.add_protection(
      new w.add_protection_arguments(
        new w.protected_contract(ACCOUNT5, 1),
        new w.authority_contract("transfer", null, 1000)
      )
    );

    // protected contract with an external contract for a specific entry point
    myWallet.add_protection(
      new w.add_protection_arguments(
        new w.protected_contract(ACCOUNT5, 2),
        new w.authority_contract(
          null,
          new w.external_authority(ACCOUNT6, 12),
          1000
        )
      )
    );

    // protected contract for the remaining entry points
    myWallet.add_protection(
      new w.add_protection_arguments(
        new w.protected_contract(ACCOUNT5, 0, true),
        new w.authority_contract("others", null, 1000)
      )
    );

    MockVM.commitTransaction();
  });

  it("should authorize a call to specific entry point", () => {
    // sig authority transfer
    MockVM.setTransaction(
      new protocol.transaction(TX_ID, null, [], [SIG_ACCOUNT2])
    );
    expect(
      myWallet.authorize(
        new authority.authorize_arguments(
          authority.authorization_type.contract_call,
          new authority.call_target(ACCOUNT5, 1)
        )
      )
    ).toStrictEqual(new authority.authorize_result(true));
  });

  it("should authorize a call to the remaining entry points", () => {
    // sig authority others
    MockVM.setTransaction(
      new protocol.transaction(TX_ID, null, [], [SIG_ACCOUNT3])
    );
    expect(
      myWallet.authorize(
        new authority.authorize_arguments(
          authority.authorization_type.contract_call,
          new authority.call_target(ACCOUNT5, 10)
        )
      )
    ).toStrictEqual(new authority.authorize_result(true));
  });

  it("should authorize a call by consulting an external contract", () => {
    // signed by anyone
    MockVM.setTransaction(
      new protocol.transaction(TX_ID, null, [], [SIG_ACCOUNT9])
    );

    const resTrue = new authority.authorize_result(true);
    MockVM.setCallContractResults([
      Protobuf.encode(resTrue, authority.authorize_result.encode),
    ]);
    expect(
      myWallet.authorize(
        new authority.authorize_arguments(
          authority.authorization_type.contract_call,
          new authority.call_target(ACCOUNT5, 2)
        )
      )
    ).toStrictEqual(new authority.authorize_result(true));
  });

  it("should authorize a call using owner when there are no protections", () => {
    expect(
      myWallet.authorize(
        new authority.authorize_arguments(
          authority.authorization_type.contract_call,
          new authority.call_target(ACCOUNT7, 20)
        )
      )
    ).toStrictEqual(new authority.authorize_result(true));
  });

  it("should reject authorizations", () => {
    expect(() => {
      myWallet.authorize(
        new authority.authorize_arguments(
          authority.authorization_type.contract_call,
          new authority.call_target(ACCOUNT5, 1)
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual(["authority transfer failed"]);
    MockVM.clearLogs();

    expect(() => {
      myWallet.authorize(
        new authority.authorize_arguments(
          authority.authorization_type.contract_call,
          new authority.call_target(ACCOUNT5, 20)
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual(["authority others failed"]);
    MockVM.clearLogs();

    const resFalse = new authority.authorize_result(false);
    MockVM.setCallContractResults([
      Protobuf.encode(resFalse, authority.authorize_result.encode),
    ]);
    expect(
      myWallet.authorize(
        new authority.authorize_arguments(
          authority.authorization_type.contract_call,
          new authority.call_target(ACCOUNT5, 2)
        )
      )
    ).toStrictEqual(new authority.authorize_result(false));
    expect(MockVM.getLogs()).toStrictEqual([]);
    MockVM.clearLogs();

    // signed by anyone
    MockVM.setTransaction(
      new protocol.transaction(TX_ID, null, [], [SIG_ACCOUNT9])
    );
    expect(() => {
      myWallet.authorize(
        new authority.authorize_arguments(
          authority.authorization_type.contract_call,
          new authority.call_target(ACCOUNT7, 30)
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual(["authority owner failed"]);
  });
});
