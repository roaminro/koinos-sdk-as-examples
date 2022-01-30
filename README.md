# koinos-cdt-as-examples
## Installation

```sh
# with npm
npm install

# with yarn
yarn install
```

## Build examples
To build a Smart Contract you can use the cli.js script. This script will help you generate all the files required to build your smart contract.
```sh
# see the cli help
node cli.js help
```

```sh
# example for building the calculator contract
# build the debug version
node cli.js build ./calculator Calculator debug

# build the release version
node cli.js build ./calculator Calculator release
```

  

This will result in the generation of:

- a contract.wasm file in the folder `calculator/build/release` and `calculator/build/debug`

- an contract.abi file in the folder `calculator/abi/`

  

## Generate AssemblyScript proto files

To generate the protofiles you will need to first install `protoc` on your machine https://github.com/protocolbuffers/protobuf/releases

```sh
# example for the calculator contract
node cli.js generate-proto-files ./calculator
```

## Generate ABI file and index.ts file
```sh
# example for the calculator contract
# build the debug version
node cli.js generate-index-abi ./calculator Calculator debug

# build the release version
node cli.js generate-index-abi ./calculator Calculator release
```