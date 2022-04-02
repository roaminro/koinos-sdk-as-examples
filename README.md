![Test](https://github.com/roaminroe/koinos-as-sdk-examples/actions/workflows/test.yml/badge.svg)

# koinos-cdt-as-examples

`DISCLAIMER: NONE OF THESE CONTRACTS HAVE BEEN AUDITED, USE AT YOUR OWN RISK`

## Installation

```sh
# clone this repo
git clone --recursive https://github.com/roaminroe/koinos-as-sdk-examples

# with npm
npm install

# or

# with yarn
yarn install
```

## Important note
- It important that your smart contract file lives in the `assembly` folder of your project. (i.e.: `./calculator/assembly/Calculator.ts`)
- And, it is also important that your `proto` files live in the `assembly/proto/` folder of your project. (i.e.: `./calculator/assembly/proto/calculator.proto`)

## Build examples
To build a Smart Contract you can use the cli.js script. This script will help you generate all the files required to build your smart contract.
```sh
# see the cli help
node cli.js help
```

```sh
# example for building the calculator contract
# build the debug version
node cli.js build-all calculator debug calculator.proto 

# build the release version
node cli.js build-all calculator release calculator.proto 
```

This will result in the generation of:

- a `calculator.abi` file in the folder `calculator/abi/`
- a `calculator-abi.json` file in the folder `calculator/abi/`
- a `contract.wasm` file in the folder `calculator/build/release` and `calculator/build/debug`
- an `index.ts` file in the folder `calculator/assembly/`
- a `Calculator.boilerplate.ts` file in the folder `calculator/assembly/`
  
## Generate AssemblyScript files for all the proto files of a contract
```sh
# example for the calculator contract
node cli.js generate-contract-proto calculator
```

## Generate ABI file
```sh
# example for the calculator contract
node cli.js generate-abi calculator calculator.proto
```
This will generate a calculator.abi file in the folder `calculator/abi/`

## Generate contract.boilerplate.ts and index.ts files
```sh
# example for the calculator contract
node cli.js generate-contract-as calculator calculator.proto
```

This will generate a `Calculator.boilerplate.ts`file and `index.ts` file in the folder `calculator/assembly/`

## Run tests
```sh
# example for the calculator contract
node cli.js run-tests calculator
```