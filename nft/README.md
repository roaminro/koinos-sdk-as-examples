# nft contract

## Instruction
Update the following contract properties with your nft details:
- _name: string = "NonFungibleToken";
- _symbol: string = "NFT";

## Build
```sh
# build the debug version
node cli.js build-all debug nft.proto 

# build the release version
node cli.js build-all release nft.proto 
```