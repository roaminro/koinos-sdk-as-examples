const { Signer, Provider, Contract, utils } = require('koilib');
const abi = require('../abi/manasharing-abi.json');

const USER_WIF = '';
const MANA_SHARING_CONTRACT_ADDRESS = '';

const main = async () => {
  const provider = new Provider('https://api.koinos.io');
  // private key of the account that wants to use the manasharing contract
  const signer = Signer.fromWif(USER_WIF);
  signer.provider = provider;

  const koinContract = new Contract({
    id: '15DJN4a8SgrbGhhGksSBASiSYjGnMU8dGL',
    abi: utils.tokenAbi,
    provider,
    signer,
  });

  const koin = koinContract.functions;

  const { operation } = await koin.transfer({
    from: signer.address,
    to: 'INVALID',
    value: '1',
  }, { 
    payer: MANA_SHARING_CONTRACT_ADDRESS
  });

  console.log(operation, receipt);

  await transaction.wait();
};

main()
  .catch(err => console.error(err));