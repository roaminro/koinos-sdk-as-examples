/* eslint-disable no-undef */
/* eslint-disable @typescript-eslint/no-var-requires */
const { program } = require('commander');
const { execSync } = require('child_process');

let ASProtoGenPath;
let koinoABIGenPath;
let koinosASGenPath;

switch (process.platform) {
  case 'win32':
    ASProtoGenPath = '.\\node_modules\\.bin\\as-proto-gen.cmd';
    koinoABIGenPath = '.\\node_modules\\.bin\\koinos-abi-proto-gen.cmd';
    koinosASGenPath = '.\\node_modules\\.bin\\koinos-as-gen.cmd';
    break;
  default:
    ASProtoGenPath = './node_modules/.bin/as-proto-gen';
    koinoABIGenPath = './node_modules/.bin/koinos-abi-proto-gen';
    koinosASGenPath = './node_modules/.bin/koinos-as-gen';
    break;
}

program
  .name('Koinos AssemblyScript Smart Contracts CLI')
  .description('CLI to build Koinos AssemblyScript Smart Contracts')
  .version('0.1.0');

program.command('build-all')
  .description('Build all Smart Contract files')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<buildMode>', 'Build mode debug or realease')
  .argument('<protoFileNames...>', 'Name of the contract proto files')
  .option('--generate_authorize', 'generate the authorize entry point')
  .action((contractFolderPath, buildMode, protoFileNames, options) => {
    const generateAuthEndpoint = options.generate_authorize ? 'GENERATE_AUTHORIZE_ENTRY_POINT=1' : '';
    const protoFileNamesFinal = protoFileNames.map(protoFileName => `${contractFolderPath}/assembly/proto/${protoFileName}`);

    // compile proto file
    console.log('Generating ABI file...');
    let cmd = `protoc --plugin=protoc-gen-abi=${koinoABIGenPath} --abi_out=${contractFolderPath}/abi/ ${protoFileNamesFinal.join(' ')}`;
    console.log(cmd);
    execSync(cmd);

    console.log('Generating proto files...');
    cmd = `protoc --plugin=protoc-gen-as=${ASProtoGenPath} --as_out=. ${contractFolderPath}/assembly/proto/*.proto`;
    console.log(cmd);
    execSync(cmd);

    // Generate CONTRACT.boilerplate.ts and index.ts files
    console.log('Generating boilerplate.ts and index.ts files...');
    cmd = `${generateAuthEndpoint} protoc --plugin=protoc-gen-as=${koinosASGenPath} --as_out=${contractFolderPath}/assembly/ ${protoFileNamesFinal[0]}`;
    console.log(cmd);
    execSync(cmd);

    // compile index.ts
    console.log('Compiling index.ts...');
    cmd = `node ./node_modules/assemblyscript/bin/asc ${contractFolderPath}/assembly/index.ts --target ${buildMode} --use abort= --config ${contractFolderPath}/asconfig.json`;
    console.log(cmd);
    execSync(cmd);
  });

program.command('build')
  .description('Build index.ts file')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<buildMode>', 'Build mode debug or realease')
  .action((contractFolderPath, buildMode) => {
    // compile index.ts
    console.log('Compiling index.ts...');
    execSync(`node ./node_modules/assemblyscript/bin/asc ${contractFolderPath}/assembly/index.ts --target ${buildMode} --use abort= --config ${contractFolderPath}/asconfig.json`);
  });

program.command('generate-abi')
  .description('Generate ABI files')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<protoFileNames...>', 'Name of the contract proto files')
  .action((contractFolderPath, protoFileNames) => {
    const protoFileNamesFinal = protoFileNames.map(protoFileName => `${contractFolderPath}/assembly/proto/${protoFileName}`);

    // compile proto file
    console.log('Generating ABI file...');
    let cmd = `protoc --plugin=protoc-gen-abi=${koinoABIGenPath} --abi_out=${contractFolderPath}/abi/ ${protoFileNamesFinal.join(' ')}`;
    console.log(cmd);
    execSync(cmd);
  });

program.command('generate-as-files')
  .description('Generate contract.boilerplate.ts and index.ts files')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .argument('<protoFileName>', 'Name of the contract proto file')
  .option('--generate_authorize', 'generate the authorize entry point')
  .action((contractFolderPath, protoFileName, options) => {
    const generateAuthEndpoint = options.generate_authorize ? 'GENERATE_AUTHORIZE_ENTRY_POINT=1' : '';

    // Generate CONTRACT.boilerplate.ts and index.ts files
    console.log('Generating boilerplate.ts and index.ts files...');
    execSync(`${generateAuthEndpoint} protoc --plugin=protoc-gen-as=${koinosASGenPath} --as_out=${contractFolderPath}/assembly/ ${contractFolderPath}/assembly/proto/${protoFileName}`);
  });

program.command('generate-proto-files')
  .description('Generate proto files')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .action((contractFolderPath) => {
    // compile proto file
    console.log('Generating proto files...');
    execSync(`protoc --plugin=protoc-gen-as=${ASProtoGenPath} --as_out=. ${contractFolderPath}/assembly/proto/*.proto`);
  });

program.command('run-tests')
  .description('Run contract tests')
  .argument('<contractFolderPath>', 'Path to the contract folder')
  .action((contractFolderPath) => {
    console.log('Running tests...');
    let cmd = `yarn asp --verbose --config ${contractFolderPath}/as-pect.config.js`;
    console.log(cmd);
    execSync(cmd, { stdio: 'inherit' });
  });

program.parse();