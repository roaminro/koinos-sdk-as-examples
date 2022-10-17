import { LocalKoinos, Token, Signer } from '@roamin/local-koinos';

// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// @ts-ignore 
import * as abi from '../abi/calculator-abi.json';

// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// @ts-ignore koilib_types is needed when using koilib
abi.koilib_types = abi.types;

jest.setTimeout(600000);

const localKoinos = new LocalKoinos();

beforeAll(async () => {
  // start local-koinos node
  await localKoinos.startNode();
  await localKoinos.startBlockProduction();

  await localKoinos.deployKoinContract();
  await localKoinos.mintKoinDefaultAccounts();
});

afterAll(async () => {
  // stop local-koinos node
  await localKoinos.stopNode();
});

test("test1", async () => {
  const [genesis, koin, acct1] = localKoinos.getAccounts();

  const contract = await localKoinos.deployContract(acct1.wif, './build/release/contract.wasm', abi);

  const { result } = await contract.functions.add({ x: '4', y: '5' });
  expect(result!.value).toBe('9');

  const signer = Signer.fromWif('L59UtJcTdNBnrH2QSBA5beSUhRufRu3g6tScDTite6Msuj7U93tM');
  signer.provider = localKoinos.getProvider();
  let tkn = new Token(localKoinos.koin.address(), signer);

  try {
    await tkn.mint(signer.address, 40);
  } catch (error) {
    expect(error.message).toContain('can only mint token with contract authority');
  }

  const signer2 = Signer.fromWif('5KL5GNq42Syr52dUUi4UhQ5cANwNr9xgxKivF9YjtGdM7BBjuks');
  signer2.provider = localKoinos.getProvider();
  tkn = new Token(localKoinos.koin.address(), signer2);

  try {
    const signer2 = Signer.fromWif('5KL5GNq42Syr52dUUi4UhQ5cANwNr9xgxKivF9YjtGdM7BBjuks');
    signer2.provider = localKoinos.getProvider();
    tkn = new Token(localKoinos.koin.address(), signer2);

    const { transaction, receipt } = await tkn.transfer(signer2.address, signer.address, 40000000000000000);
    await transaction!.wait();
  } catch (error) {
    expect(error.message).toContain("account 'from' has insufficient balance");
  }
});
