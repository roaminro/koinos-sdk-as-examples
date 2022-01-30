
  

# koinos-cdt-as-examples

  

  

## Installation

  

```sh

  

# with npm

  

npm install

  
  

# with yarn

  

yarn install

  

```

  

  

## Build examples

  

```sh
# example for the calculator contract
# with npm
npm run asbuild:calculator

# with yarn
yarn run asbuild:calculator
```

This will result in the generation of:
    - a contract.wasm file in the folder `calculator/build/release` and `calculator/build/debug`
    - an contract.abi file in the folder `calculator/abi/`

## Generate AssemblyScript proto files
see example `generate:calculator:proto` in the package.json file

## Generate ABI file
see example `generate:calculator:indexAndAbi` in the package.json file