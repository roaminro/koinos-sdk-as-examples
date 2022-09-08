import { Base58, chain, System, Arrays, MockVM } from "@koinos/sdk-as";
import { protocol } from "@koinos/proto-as";
import { Transaction_storage } from "../Transaction_storage";
import { transaction_storage } from "../proto/transaction_storage";

const CONTRACT_ID = Base58.decode("1DQzuCcTKacbs9GGScRTU1Hc8BsyARTPqe");
const SPACE = new chain.object_space(false, CONTRACT_ID, 0);

describe("transaction_storage", () => {
  beforeEach(() => {
    MockVM.reset();
    MockVM.setContractId(CONTRACT_ID);
  });

  it("should store a transaction", () => {
    const contract = new Transaction_storage();
    const txId = Arrays.fromHexString('0x123456');
    const tx = new protocol.transaction(txId);

    const args = new transaction_storage.store_transaction_arguments(tx);
    contract.store_transaction(args);

    const storedTx = System.getObject<Uint8Array, protocol.transaction>(SPACE, txId, protocol.transaction.decode);

    expect(storedTx).not.toBeNull();
    expect(Arrays.equal(storedTx!.id, txId)).toBe(true);
  });

  it("should get a transaction", () => {
    const contract = new Transaction_storage();
    const txId = Arrays.fromHexString('0x123456');
    const tx = new protocol.transaction(txId);

    const storeArgs = new transaction_storage.store_transaction_arguments(tx);
    contract.store_transaction(storeArgs);

    const getArgs = new transaction_storage.get_transaction_arguments(txId);

    const storedTx = contract.get_transaction(getArgs);

    expect(storedTx.value).not.toBeNull();
    expect(Arrays.equal(storedTx.value!.id, txId)).toBe(true);
  });

});
