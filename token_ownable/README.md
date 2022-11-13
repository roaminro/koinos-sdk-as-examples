# token contract

## Instruction
- upload contract
- call `initialize` function with the following details:
- name: string = "Token"
- symbol: string = "TKN"
- decimals: u32 = 8
- owner: address of the contract that can mint/burn tokens

## Build
```sh
# build the debug version
node cli.js build-all debug token.proto 

# build the release version
node cli.js build-all release token.proto 
```

## Run tests
```sh
# example for the calculator contract
node cli.js run-tests
```