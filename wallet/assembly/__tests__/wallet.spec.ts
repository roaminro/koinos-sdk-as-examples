import { Base58, Base64, chain, MockVM, protocol, System } from "koinos-as-sdk";
import { Wallet, Result } from "../Wallet";
import { wallet as w } from "../proto/wallet";

const CONTRACT_ID = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqe");
const TX_ID = Base64.decode("EiD-ihKNeY7p9zZG7ACveUO08N3Sd_dGGCS_jRYRIGsPAg==");
const ACCOUNT1 = Base58.decode("1Bg7bqSo1PhcbCXYQb7PbfKWoxhaUTHBy4");
const ACCOUNT2 = Base58.decode("14vdfUse7L5FVrUvgcr3ynjf5md7zXKNP6");
const ACCOUNT3 = Base58.decode("1F9XLhYk2FffYJWb68QASqSfEw7ud9TbnF");
const ACCOUNT4 = Base58.decode("1AaDHQh7GU7xAyXbrXrrMAqXg3B52hYsCb");
const ACCOUNT5 = Base58.decode("1MC518m61gVVH5Eq3288F7YXARoQ9VBsdC");
const ACCOUNT6 = Base58.decode("1iJhKNvNzSv3rRATs8oCBNcHdXxdPUAvG");
const ACCOUNT7 = Base58.decode("14BTgUHdQq52dPgKB6o6NVq3ck5SnKsV8q");
const ACCOUNT8 = Base58.decode("1BSKso82VLWJcKNh77qh6Fa29MyWi1GD7W");
const ACCOUNT9 = Base58.decode("1LKriKy5iethHktm3asExcG7EFuPivNwo6");
const SIG_ACCOUNT1 = Base64.decode(
  "IBcayb2rHsDSfjvHK03ypQGyJU_Uv-ZMPcZ69ry4-jeNdzHZCwxQdwQdgD-iAc97xxicuWOT9pvw7VkEE2z5moE="
);
const SIG_ACCOUNT2 = Base64.decode(
  "H6FdCSQo9j-hsFjxAXmnM_ctO0IoxNpCJyp-hkJBOPE7ahDHQxodzyP1PihQsx1Ym8lyYlRReEyaCJpWaS6fpgQ="
);
const SIG_ACCOUNT3 = Base64.decode(
  "IGzVRPril_zpFn5TezGnqOB__jtDTspW8yw7BFZo9JjBVWroIzonSikPfwitrvTTd1chNmM8pisIhtr1Q2Dz_iA="
);
const SIG_ACCOUNT4 = Base64.decode(
  "H2uKW0mSQAaAiKtGdkAYYCtCcL613YDcAdJOpXbfvtrBM7pK3sFoV5xTxJLz1O1qIoIi-B8TfYhF9hdkFlyLcQg="
);
const SIG_ACCOUNT5 = Base64.decode(
  "INYHVZ9jnKSIelnsr3D39jkDpBu_CnbEPYTWrPv3P03qWh2vokJLxly7l54MxuGedWVZQU5gV4eqp8_g5x9BHwQ="
);
const SIG_ACCOUNT6 = Base64.decode(
  "ICkKajbPWNN9uvPGbP1YyIhPQMzXcIUTSv5Q5gBG4-9XRRRfdKo8jxOh3JNLS_LdXVEU1G7UZIqSbUe63xXRk4w="
);
const SIG_ACCOUNT7 = Base64.decode(
  "H_qiiGwLjsc_ZLNMUNNhNHdbWb9tXH5uk8toeHYL9G5QYWgHgNa580V4RL0oYaVE_8omF9QwSo4eiGiTqTU0It8="
);
const SIG_ACCOUNT8 = Base64.decode(
  "IGMqrNkFoUdfSjH0o4dol9aMFRw4vv0wLvvyhUvED5YYYDNGe0xa8okQrkW0u601MMNAjuvtNXEnez7POlxYtUg="
);
const SIG_ACCOUNT9 = Base64.decode(
  "Hz7FmbICJ2lXl4jAySqvZEWGHrrW71-Sdr8FiXuCtCZsI_VOXuhlVni6lVGWzVXcbXJBmP3Krb4x_7Iun9DMKHQ="
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
            new w.key_auth(ACCOUNT9, null, 1),
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

    MockVM.commitTransaction();

    expect(() => {
      myWallet._requireAuthority("owner");
    }).toThrow();

    expect(() => {
      myWallet._requireAuthority("owner");
    }).toThrow();

    expect(() => {
      myWallet._requireAuthority("owner");
    }).toThrow();

    expect(MockVM.getLogs()).toStrictEqual([]);
  });
});
