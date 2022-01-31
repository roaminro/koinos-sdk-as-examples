/* eslint-disable no-undef */
/* eslint-disable @typescript-eslint/no-var-requires */
const { program } = require('commander');
const { execSync } = require('child_process');

program
  .name('Koinos AssemblyScript Smart Contracts CLI')
  .description('CLI to build Koinos AssemblyScript Smart Contracts')
  .version('0.1.0');

program.command('build-all')
  .description('Build all Smart Contract files')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<protoFileName>', 'Name of the contract proto file')
  .argument('<buildMode>', 'Build mode debug or realease')
  .action((contractFolderPath, protoFileName, buildMode) => {
    // compile proto file
    console.log('Generating ABI file...');
    execSync(`protoc --plugin=protoc-gen-abi=./node_modules/.bin/koinos-abi-proto-gen --abi_out=${contractFolderPath}/abi/ ${contractFolderPath}/assembly/proto/${protoFileName}.proto`);

    console.log('Generating proto files...');
    execSync(`protoc --plugin=protoc-gen-as=./node_modules/.bin/as-proto-gen --as_out=. ${contractFolderPath}/assembly/proto/*.proto`);

    // Generate CONTRACT.boilerplate.ts and index.ts files
    console.log('Generating boilerplate.ts and index.ts files...');
    execSync(`protoc --plugin=protoc-gen-as=./node_modules/.bin/koinos-as-gen --as_out=${contractFolderPath}/assembly/ ${contractFolderPath}/assembly/proto/${protoFileName}.proto`);

    // compile index.ts
    console.log('Compiling index.ts...');
    execSync(`./node_modules/assemblyscript/bin/asc ${contractFolderPath}/assembly/index.ts --target ${buildMode} --use abort= --config ${contractFolderPath}/asconfig.json`);
  });

program.command('build')
  .description('Build index.ts file')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<buildMode>', 'Build mode debug or realease')
  .action((contractFolderPath, buildMode) => {
    // compile index.ts
    console.log('Compiling index.ts...');
    execSync(`./node_modules/assemblyscript/bin/asc ${contractFolderPath}/assembly/index.ts --target ${buildMode} --use abort= --config ${contractFolderPath}/asconfig.json`);
  });

program.command('generate-abi')
  .description('Generate ABI file')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<protoFileName>', 'Name of the contract proto file')
  .action((contractFolderPath, protoFileName) => {
    // compile proto file
    console.log('Generating ABI file...');
    execSync(`protoc --plugin=protoc-gen-abi=./node_modules/.bin/koinos-abi-proto-gen --abi_out=${contractFolderPath}/abi/ ${contractFolderPath}/assembly/proto/${protoFileName}.proto`);
  });

program.command('generate-as-files')
  .description('Generate contract.boilerplate.ts and index.ts files')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<protoFileName>', 'Name of the contract proto file')
  .action((contractFolderPath, protoFileName, buildMode) => {
    // Generate CONTRACT.boilerplate.ts and index.ts files
    console.log('Generating boilerplate.ts and index.ts files...');
    execSync(`protoc --plugin=protoc-gen-as=./node_modules/.bin/koinos-as-gen --as_out=${contractFolderPath}/assembly/ ${contractFolderPath}/assembly/proto/${protoFileName}.proto`);
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