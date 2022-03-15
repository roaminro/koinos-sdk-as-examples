# token contract

## Instruction
Update the following contract properties with your token details:
- _name: string = "Token";
- _symbol: string = "TKN";
- _decimals: u32 = 8;

## Build
```sh
# build the debug version
node cli.js build-all token debug token.proto 

# build the release version
node cli.js build-all token release token.proto 
```