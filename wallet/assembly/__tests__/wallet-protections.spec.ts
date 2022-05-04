import { Base58, Base64, chain, MockVM, protocol, System } from "koinos-sdk-as";
import {
  Wallet,
  Result,
  GRACE_PERIOD_RECOVERY,
  PERIOD_UPDATE_RECOVERY,
  GRACE_PERIOD_PROTECTION,
} from "../Wallet";
import { wallet as w, wallet } from "../proto/wallet";

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

describe("wallet protections", () => {
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

    // add posting key
    myWallet.add_authority(
      new w.add_authority_arguments(
        "posting",
        new w.authority([new w.key_auth(ACCOUNT2, null, 1)], 1)
      )
    );

    // add recovery
    myWallet.add_authority(
      new w.add_authority_arguments(
        "recovery",
        new w.authority([new w.key_auth(ACCOUNT3, null, 1)], 1)
      )
    );
    MockVM.commitTransaction();
  });

  it("should add a protection", () => {
    myWallet.add_protection(
      new w.add_protection_arguments(
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("posting", null, 86400)
      )
    );
    expect(
      myWallet.get_protections(new w.get_protections_arguments())
    ).toStrictEqual(
      new w.get_protections_result([
        new w.add_protection_arguments(
          new w.protected_contract(ACCOUNT6, 1),
          new w.authority_contract("posting", null, 86400, TIME_0)
        ),
      ])
    );
    expect(MockVM.getLogs()).toStrictEqual([]);
  });

  it("should add a protection only from owner", () => {
    const tx = new protocol.transaction();
    tx.id = TX_ID;
    tx.signatures = [SIG_ACCOUNT2];
    MockVM.setTransaction(tx);

    expect(() => {
      myWallet.add_protection(
        new w.add_protection_arguments(
          new w.protected_contract(ACCOUNT6, 1),
          new w.authority_contract("posting", null, 86400)
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual(["authority owner failed"]);
  });

  it("should require a request to update a protection", () => {
    myWallet.add_protection(
      new w.add_protection_arguments(
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("posting", null, 86400000)
      )
    );
    MockVM.commitTransaction();

    MockVM.setHeadInfo(new chain.head_info(null, TIME_0 + 86400000, 1));

    expect(() => {
      myWallet.update_protection(
        new w.update_protection_arguments(
          new w.protected_contract(ACCOUNT6, 1),
          new w.authority_contract("owner", null, 86400000)
        )
      );
    }).toThrow();
    expect(MockVM.getLogs()).toStrictEqual([
      "authority recovery failed",
      "not in grace period",
      "request to update protection not found",
    ]);
  });

  it("should accept an update call from recovery without additional requests", () => {
    myWallet.add_protection(
      new w.add_protection_arguments(
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("posting", null, 86400000)
      )
    );
    MockVM.commitTransaction();

    MockVM.setHeadInfo(new chain.head_info(null, TIME_0 + 86400000, 1));

    // recovery signs
    MockVM.setTransaction(
      new protocol.transaction(TX_ID, null, [], [SIG_ACCOUNT3])
    );

    myWallet.update_protection(
      new w.update_protection_arguments(
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("owner", null, 86400)
      )
    );
    expect(MockVM.getLogs()).toStrictEqual([]);
  });

  it("should accept an update call from owner without additional requests if it is done before the grace period", () => {
    myWallet.add_protection(
      new w.add_protection_arguments(
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("posting", null, 86400000)
      )
    );
    MockVM.commitTransaction();

    MockVM.setHeadInfo(
      new chain.head_info(null, TIME_0 + GRACE_PERIOD_PROTECTION - 1, 1)
    );

    myWallet.update_protection(
      new w.update_protection_arguments(
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("owner", null, 86400)
      )
    );
    expect(MockVM.getLogs()).toStrictEqual(["authority recovery failed"]);
  });

  it("should accept requests only from owner", () => {
    myWallet.add_protection(
      new w.add_protection_arguments(
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("posting", null, 86400)
      )
    );
    MockVM.commitTransaction();

    // posting signs
    MockVM.setTransaction(
      new protocol.transaction(TX_ID, null, [], [SIG_ACCOUNT2])
    );

    expect(() => {
      myWallet.request_update_protection(
        new w.request_update_protection_arguments(
          1,
          new w.protected_contract(ACCOUNT6, 1),
          new w.authority_contract("owner", null, 86400)
        )
      );
    }).toThrow();

    expect(MockVM.getLogs()).toStrictEqual(["authority owner failed"]);
  });

  it("should create a request and remove it", () => {
    myWallet.add_protection(
      new w.add_protection_arguments(
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("posting", null, 86400)
      )
    );
    MockVM.commitTransaction();

    myWallet.request_update_protection(
      new w.request_update_protection_arguments(
        1,
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("owner", null, 86400)
      )
    );

    expect(
      myWallet.get_requests_update_protection(
        new w.get_requests_update_protection_arguments()
      )
    ).toStrictEqual(
      new w.get_requests_update_protection_result([
        new w.request_update_protection_arguments(
          1,
          new w.protected_contract(ACCOUNT6, 1),
          new w.authority_contract("owner", null, 86400),
          false,
          TIME_0 + 86400
        ),
      ])
    );

    myWallet.cancel_request_update_protection(
      new w.cancel_request_update_protection_arguments(1)
    );

    expect(
      myWallet.get_requests_update_protection(
        new w.get_requests_update_protection_arguments()
      )
    ).toStrictEqual(new w.get_requests_update_protection_result([]));

    expect(MockVM.getLogs()).toStrictEqual([]);
  });

  it("should reject bad calls to cancel_request_update_protection", () => {
    expect(() => {
      myWallet.cancel_request_update_protection(
        new w.cancel_request_update_protection_arguments(10)
      );
    }).toThrow();

    expect(MockVM.getLogs()).toStrictEqual(["request not found"]);
  });

  it("should update a protection using request", () => {
    myWallet.add_protection(
      new w.add_protection_arguments(
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("posting", null, 120000)
      )
    );
    MockVM.commitTransaction();

    // time passes
    let currentTime = TIME_0 + GRACE_PERIOD_PROTECTION;
    MockVM.setHeadInfo(new chain.head_info(null, currentTime, 1));

    myWallet.request_update_protection(
      new w.request_update_protection_arguments(
        1,
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("owner", null, 125000)
      )
    );

    // time passes
    currentTime += 120000;
    MockVM.setHeadInfo(new chain.head_info(null, currentTime, 1));

    myWallet.update_protection(
      new w.update_protection_arguments(
        new w.protected_contract(ACCOUNT6, 1),
        new w.authority_contract("owner", null, 125000)
      )
    );
    expect(MockVM.getLogs()).toStrictEqual([
      "authority recovery failed",
      "not in grace period",
    ]);

    expect(
      myWallet.get_requests_update_protection(
        new w.get_requests_update_protection_arguments()
      )
    ).toStrictEqual(new w.get_requests_update_protection_result([]));
  });
});
