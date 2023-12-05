/* eslint-disable @typescript-eslint/ban-ts-comment */
import { Signer, Provider, Contract } from 'koilib';
import * as path from 'path';
import { fileURLToPath } from 'url';
import * as fs from 'fs';
import * as jsonAbi from '../abi/token-abi.json'  assert { type: "json" };
import dotenv from 'dotenv';
dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const CONTRACT_WASM_PATH = '../build/release/contract.wasm';
const CLI_ABI_PATH = '../abi/token.abi';

let [networkName] = process.argv.slice(2);

const abi = {
  ...jsonAbi,
  koilib_types: jsonAbi.types
};

(async () => {
  networkName = networkName || 'HARBINGER';
  const contractPrivateKey = process.env[`${networkName}_CONTRACT_PRIVATE_KEY`];
  const jsonRPCUrl = process.env[`${networkName}_JSON_RPC_URL`];

  // deploy contract
  const provider = new Provider(jsonRPCUrl);
  const signer = Signer.fromWif(contractPrivateKey);
  signer.provider = provider;

  const bytecode = fs.readFileSync(path.resolve(__dirname, CONTRACT_WASM_PATH));
  const contract = new Contract({
    id: signer.address,
    // @ts-ignore abi is compatible
    abi,
    provider,
    signer,
    bytecode
  });

  const { receipt, transaction } = await contract.deploy({
    abi: fs.readFileSync(path.resolve(__dirname, CLI_ABI_PATH)).toString(),
  });

  console.log('The contract is being deployed. Transaction receipt:');
  console.log(receipt);

  const { blockNumber } = await transaction.wait('byBlock', 60000);

  console.log(`Contract successfully deployed at address ${contract.getId()} in block ${blockNumber} on the ${networkName} network`);
})();