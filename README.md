
  

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

  

# with npm

  

npm run asbuild:calculator

  
  

# with yarn

  

yarn run asbuild:calculator

  

```

  

This will result in the generation of a contract.wasm file in the folder `calculator/build/release`and `calculator/build/debug`

  
  

## Generate proto files

To generate the protofiles you will need to first install `protoc` on your machine https://github.com/protocolbuffers/protobuf/releases

Once installed you can run this command to generate the proto files as well as descriptor files needed for your smart contract:

`protoc --plugin=protoc-gen-as=./node_modules/.bin/as-proto-gen --as_out=. ./calculator/assembly/protos/calculator.proto --descriptor_set_out=./calculator/assembly/protos/calculator.pb`

## Generate ABI file

Please refer to the Koinos documentation https://docs.koinos.io/architecture/contract-abi.html