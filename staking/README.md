# staking contract

## Instruction
Update the `TOKEN_CONTRACT_ID` in `Staking.ts` constant with the address of the token you want to add the staking feature to.

## Build
```sh
# build the debug version
node cli.js build-all debug staking.proto 

# build the release version
node cli.js build-all release staking.proto 
```