/* eslint-disable @typescript-eslint/ban-ts-comment */
import { Contract, LocalKoinos, Signer, Token } from '@roamin/local-koinos';

import * as abi from '../abi/manasharing-abi.json';

// @ts-ignore koilib_types is needed when using koilib
abi.koilib_types = abi.types;

jest.setTimeout(600000);

let localKoinos = new LocalKoinos();

if (process.env.DEVCONTAINER === 'true') {
  localKoinos = new LocalKoinos({
    rpc: 'http://host.docker.internal:8080',
    amqp: 'amqp://host.docker.internal:5672'
  });
}

const [
  genesis,
  koin,
  manasharingAccount,
  tokenAAccount,
  user1
] = localKoinos.getAccounts();

let manasharingContract: Contract;
let tokenA: Token;

beforeAll(async () => {
  // start local-koinos node
  await localKoinos.startNode();

  await localKoinos.deployKoinContract({ mode: 'manual' });
  await localKoinos.mintKoinDefaultAccounts({ mode: 'manual' });
  await localKoinos.deployNameServiceContract({ mode: 'manual' });
  await localKoinos.setNameServiceRecord('koin', koin.address, { mode: 'manual' });

  // deploy wallet contract 
  manasharingContract = await localKoinos.deployContract(
    manasharingAccount.wif,
    './build/release/contract.wasm',
    // @ts-ignore abi is compatible
    abi,
    { mode: 'manual' },
    {
      authorizesTransactionApplication: true
    }
  );

  await localKoinos.startBlockProduction();

  tokenA = new Token(tokenAAccount.address, tokenAAccount.signer);
  let res = await tokenA.deploy();
  await res.transaction.wait();
});

afterAll(async () => {
  // stop local-koinos node
  await localKoinos.stopNode();
});


describe('integration-tests', () => {
  it('allows for using the manashring contract mana', async () => {
    expect.assertions(4)

    const user3 = Signer.fromSeed('user3')
    
    let res = await tokenA.mint(user3.address, 1);
    await res.transaction.wait();

    let bal = await tokenA.balanceOf(user3.address);
    expect(bal).toStrictEqual("1");

    bal = await tokenA.balanceOf(user1.address);
    expect(bal).toStrictEqual("0");

    try {
      await tokenA.transfer(user3.address, user1.address, '1',
        {
          payer: user1.address,
          beforeSend: async (tx) => {
            tx.signatures = [];
            await user3.signTransaction(tx);
          },
        }
      );      
    } catch (error) {
      expect(JSON.parse(error.message).error).toStrictEqual(
        'account 1HYd2zqyWkDuKH26UYYNLwYGE6vhojCSqE has not authorized transaction'
      );
    }

    res = await tokenA.transfer(user3.address, user1.address, '1',
        {
          payer: manasharingAccount.address,
          beforeSend: async (tx) => {
            tx.signatures = [];
            await user3.signTransaction(tx);
          },
        }
      );

    await res.transaction.wait();

    bal = await tokenA.balanceOf(user1.address);
    expect(bal).toStrictEqual("1");
  })

})