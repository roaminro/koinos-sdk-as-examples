const { Signer, Provider, Contract, utils } = require('koilib');
const abi = require('../abi/delegation-abi.json');

const USER_WIF = '';
const DELEGATION_CONTRACT_ADDR = '';

const main = async () => {
  const provider = new Provider('http://api.koinos.io:8080');
  // private key of the account that wants to use the delegation contract
  const signer = Signer.fromWif(USER_WIF);
  signer.provider = provider;

  const delegationContract = new Contract({
    // address of the delegation contract
    id: DELEGATION_CONTRACT_ADDR,
    abi,
    provider: signer.provider,
    signer,
  });

  const delegation = delegationContract.functions;

  const koinContract = new Contract({
    id: '19JntSm8pSNETT9aHTwAUHC5RMoaSmgZPJ',
    abi: utils.tokenAbi,
    provider,
    signer,
  });

  const koin = koinContract.functions;

  const { operation: transferOp } = await koin.transfer({
    from: signer.address,
    to: '16FKPtL9h7FHwFogcCgWV9okXaQPNZKniG',
    value: '100000000',
  }, { sendTransaction: false, signTransaction: false });

  const { transaction, receipt, operation } = await delegation.call_contract({
    contractId: transferOp.call_contract.contract_id,
    entryPoint: transferOp.call_contract.entry_point,
    args: transferOp.call_contract.args
  }, {
    payer: delegationContract.getId(),
    payee: signer.address,
  });

  console.log(operation, receipt);

  await transaction.wait();
};

main()
  .catch(err => console.error(err));