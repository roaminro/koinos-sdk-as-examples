/* eslint-disable @typescript-eslint/ban-ts-comment */
import { Contract, LocalKoinos } from '@roamin/local-koinos';

import * as abi from '../abi/manasharing-abi.json';

// @ts-ignore koilib_types is needed when using koilib
abi.koilib_types = abi.types;

jest.setTimeout(600000);

let localKoinos = new LocalKoinos();

if (process.env.ENV === 'DEVCONTAINER') {
  localKoinos = new LocalKoinos({
    rpc: 'http://host.docker.internal:8080',
    amqp: 'amqp://host.docker.internal:5672'
  });
}

const [
  genesis,
  koin,
  contractAccount,
] = localKoinos.getAccounts();

let contract: Contract;

beforeAll(async () => {
  // start local-koinos node
  await localKoinos.startNode();

  await localKoinos.deployKoinContract({ mode: 'manual' });
  await localKoinos.mintKoinDefaultAccounts({ mode: 'manual' });
  await localKoinos.deployNameServiceContract({ mode: 'manual' });
  await localKoinos.setNameServiceRecord('koin', koin.address, { mode: 'manual' });

  // deploy wallet contract 
  contract = await localKoinos.deployContract(
    contractAccount.wif,
    './build/release/contract.wasm',
    // @ts-ignore abi is compatible
    abi,
    { mode: 'manual' },
  );

  await localKoinos.startBlockProduction();
});

afterAll(async () => {
  // stop local-koinos node
  await localKoinos.stopNode();
});


describe('integration-tests', () => {
  it('runs the hello function', async () => {
    const { result } = await contract.functions.hello({
      name: 'me'
    });

    expect(result?.value).toEqual('Hello, me!');
  })

})