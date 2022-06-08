const { Signer, Provider, Contract } = require('koilib');
const abi = require('../abi/delegation-abi.json');
const fs = require('fs');
const path = require('path');

const DELEGATION_CONTRACT_WIF = '';

const main = async () => {
  const provider = new Provider('http://api.koinos.io:8080');

  // private key for the delegation contract
  const signer = Signer.fromWif(DELEGATION_CONTRACT_WIF);
  signer.provider = provider;

  const contract = new Contract({
    id: signer.address,
    abi,
    provider: signer.provider,
    signer,
    bytecode: fs.readFileSync(path.resolve(__dirname, '../build/release/contract.wasm'))
  });

  const { transaction, receipt } = await contract.deploy({
    // contract options
    abi: fs.readFileSync(path.resolve(__dirname, '../abi/delegation.abi')).toString(),
    authorizesTransactionApplication: true,
  });

  console.log(receipt)

  await transaction.wait();
};

main()
  .catch(err => console.error(err));