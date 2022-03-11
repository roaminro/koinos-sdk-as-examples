/* eslint-disable no-undef */
/* eslint-disable @typescript-eslint/no-var-requires */
const { program } = require('commander');
const { execSync } = require('child_process');

program
  .name('Koinos AssemblyScript Smart Contracts CLI')
  .description('CLI to build Koinos AssemblyScript Smart Contracts')
  .version('0.1.0');

program.command('generate-abi')
  .description('Generate ABI file')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<protoFileName>', 'Name of the contract proto file')
  .action((contractFolderPath, protoFileName) => {
    // compile proto file
    console.log('Generating ABI file...');
    execSync(`cd ${contractFolderPath}/assembly/proto && npx protoc --proto_path=. --plugin=protoc-gen-abi=../../../node_modules/.bin/koinos-abi-proto-gen --abi_out=../../abi/ ${protoFileName}.proto`);
  });

program.command('generate-proto-files')
  .description('Generate proto files')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .action((contractFolderPath) => {
    // compile proto file
    console.log('Generating proto files...');
    execSync(`cd ${contractFolderPath}/assembly/proto && npx protoc --proto_path=. --plugin=protoc-gen-as=../../../node_modules/.bin/as-proto-gen --as_out=. *.proto`);
  });

program.command('generate-as-files')
  .description('Generate contract.boilerplate.ts and index.ts files')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<protoFileName>', 'Name of the contract proto file')
  .action((contractFolderPath, protoFileName, buildMode) => {
    // Generate CONTRACT.boilerplate.ts and index.ts files
    console.log('Generating boilerplate.ts and index.ts files...');
    execSync(`cd ${contractFolderPath}/assembly/proto && npx protoc --proto_path=. --plugin=protoc-gen-as=../../../node_modules/.bin/koinos-as-gen --as_out=../ ${protoFileName}.proto`);
  });

program.command('build-as')
  .description('Build index.ts file')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<buildMode>', 'Build mode debug or realease')
  .action((contractFolderPath, buildMode) => {
    // compile index.ts
    console.log('Compiling index.ts...');
    execSync(`./node_modules/assemblyscript/bin/asc ${contractFolderPath}/assembly/index.ts --target ${buildMode} --use abort= --config ${contractFolderPath}/asconfig.json`);
  });

// TODO this doesn't work
program.command('upload-contract')
  .description('Upload built contract to Koinos network. Requires `koinos-cli` on PATH.')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<abiFilename>', 'Name of the ABI file to upload with the contract')
  .argument('<buildMode>', 'Build mode debug or release')
  .argument('<walletFilename>', 'Name of the wallet to use for upload')
  .argument('<walletPassword>', 'Password for the encrypted wallet file')
  .action((contractFolderPath, abiFilename, buildMode, walletFilename, walletPassword) => {
    if (!walletFilename || !walletPassword) {
      console.error("wallet filename and password are required. Run `npm run upload -- filename password`. If you do not have a wallet, run `koinos-cli --execute create <filename> <password>`");
      return;
    }

    if (buildMode !== "debug") {
      console.error("${buildMode} build mode not supported. Use 'debug' to upload to Koinos testnet.");
      return;
    }

    // compile index.ts
    console.log('Uploading contract...');
    execSync(`koinos-cli --execute connect https://api.koinos.io; open ${walletFilename} ${walletPassword}; upload ${contractFolderPath}/build/${buildMode}/contract.wasm ${contractFolderPath}/abi/${abiFilename}.abi`);
  });

program.parse();