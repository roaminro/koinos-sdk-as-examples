/* eslint-disable no-undef */
/* eslint-disable @typescript-eslint/no-var-requires */
const { program } = require('commander');
const { execSync } = require('child_process');

program
  .name('Koinos AssemblyScript Smart Contracts CLI')
  .description('CLI to build Koinos AssemblyScript Smart Contracts')
  .version('0.1.0');

program.command('build')
  .description('Build a Smart Contract')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<contractName>', 'Name of the contract')
  .argument('<buildMode>', 'Build mode debug or realease')
  .action((contractFolderPath, contractName, buildMode) => {
    // compile proto file
    console.log('Generating proto files...');
    execSync(`protoc --plugin=protoc-gen-as=./node_modules/.bin/as-proto-gen --as_out=. ${contractFolderPath}/assembly/proto/*.proto`);
    execSync(`protoc --plugin=protoc-gen-as=./node_modules/.bin/as-proto-gen --as_out=. ${contractFolderPath}/assembly/proto/${contractName}.proto --descriptor_set_out=${contractFolderPath}/assembly/proto/${contractName}.pb`);

    // compile contract file to generate index.ts file and ABI file
    console.log('Generating index.ts and ABI files...');
    execSync(`CONTRACT_PATH=${contractFolderPath} ./node_modules/assemblyscript/bin/asc ${contractFolderPath}/assembly/${contractName}.ts --target ${buildMode} --use abort= --config ${contractFolderPath}/asconfig.json --transform ./node_modules/koinos-cdt-as/tools/koinos-contract-transform.js`);

    // compile index.ts
    console.log('Compiling index.ts...');
    execSync(`./node_modules/assemblyscript/bin/asc ${contractFolderPath}/assembly/index.ts --target ${buildMode} --use abort= --config ${contractFolderPath}/asconfig.json`);
  });

program.command('generate-index-abi')
  .description('Generate index.ts file and ABI')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<contractName>', 'Name of the contract')
  .argument('<buildMode>', 'Build mode debug or realease')
  .action((contractFolderPath, contractName, buildMode) => {
    // compile contract file to generate index.ts file and ABI file
    console.log('Generating index.ts and ABI files...');
    execSync(`CONTRACT_PATH=${contractFolderPath} ./node_modules/assemblyscript/bin/asc ${contractFolderPath}/assembly/${contractName}.ts --target ${buildMode} --use abort= --config ${contractFolderPath}/asconfig.json --transform ./node_modules/koinos-cdt-as/tools/koinos-contract-transform.js`);

    // compile index.ts
    console.log('Compiling index.ts...');
    execSync(`./node_modules/assemblyscript/bin/asc ${contractFolderPath}/assembly/index.ts --target ${buildMode} --use abort= --config ${contractFolderPath}/asconfig.json`);
  });

program.command('generate-proto-files')
  .description('Generate proto files')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .action((contractFolderPath) => {
    // compile proto file
    console.log('Generating proto files...');
    execSync(`protoc --plugin=protoc-gen-as=./node_modules/.bin/as-proto-gen --as_out=. ${contractFolderPath}/assembly/proto/*.proto`);
  });

program.parse();