![Test Ubuntu](https://github.com/roaminro/koinos-sdk-as-examples/actions/workflows/test-ubuntu.yml/badge.svg)
![Test Windows](https://github.com/roaminro/koinos-sdk-as-examples/actions/workflows/test-windows.yml/badge.svg)
![Test MacOS](https://github.com/roaminro/koinos-sdk-as-examples/actions/workflows/test-macos.yml/badge.svg)


# Koinos AssemblyScript SDK Examples

`DISCLAIMER: NONE OF THESE CONTRACTS HAVE BEEN AUDITED, USE AT YOUR OWN RISK`

Link to the Koinos AssemblyScript SDK documentation: https://roamin.github.io/koinos-sdk-as/

## Installation

```sh
# clone this repo
git clone https://github.com/roaminro/koinos-sdk-as-examples

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
To build a Smart Contract you can use the CLI `koinos-sdk-as-cli`. It will help you generate all the files required to build your smart contract.
```sh
# see the cli help
yarn exec koinos-sdk-as-cli help
```

```sh
# example for building the calculator contract
# build the debug version (execute command in the "calculator" folder)
yarn exec koinos-sdk-as-cli build-all debug calculator.proto 

# build the release version (execute command in the "calculator" folder)
yarn exec koinos-sdk-as-cli build-all release calculator.proto 
```

This will result in the generation of:

- a `calculator.abi` file in the folder `calculator/abi/`
- a `calculator-abi.json` file in the folder `calculator/abi/`
- a `contract.wasm` file in the folder `calculator/build/release` and `calculator/build/debug`
- an `index.ts` file in the folder `calculator/assembly/`
- a `Calculator.boilerplate.ts` file in the folder `calculator/assembly/`
  
## Generate AssemblyScript files for all the proto files of a contract
```sh
# example for the calculator contract (execute command in the "calculator" folder)
yarn exec koinos-sdk-as-cli generate-contract-proto
```

## Generate ABI file
```sh
# example for the calculator contract (execute command in the "calculator" folder)
yarn exec koinos-sdk-as-cli generate-abi calculator.proto
```
This will generate a calculator.abi file in the folder `calculator/abi/`

## Generate contract.boilerplate.ts and index.ts files
```sh
# example for the calculator contract (execute command in the "calculator" folder)
yarn exec koinos-sdk-as-cli generate-contract-as calculator.proto
```

This will generate a `Calculator.boilerplate.ts`file and `index.ts` file in the folder `calculator/assembly/`

## Run tests
```sh
# example for the calculator contract (execute command in the "calculator" folder)
yarn exec koinos-sdk-as-cli run-tests
```