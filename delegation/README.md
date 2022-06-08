# Delegation

## Build
```sh
# build the debug version
yarn build:debug
# or
yarn exec koinos-sdk-as-cli build-all debug delegation.proto 

# build the release version
yarn build:release
# or
yarn exec koinos-sdk-as-cli build-all release delegation.proto 
```

## Upload contract
- open the script located at `scripts/upload_contract.js`
- populate the constant `DELEGATION_CONTRACT_WIF` with the private key/WIF of the account that will deploy the delegation contract
- run `yarn upload`

## Initiate a FREE transfer
- open the script located at `scripts/free_transfer.js`
- populate the constant `USER_WIF` with the private key/WIF of the account that will initiate the transfer
- populate the constant `DELEGATION_CONTRACT_ADDR` with the address of the previously uploaded contract
- run `yarn freeTransfer`
- this will initiate a transfer of `1 tKoin` to the address `16FKPtL9h7FHwFogcCgWV9okXaQPNZKniG`
- you should see the sender's account's balance decreased by `1 tKoin` (and `1 mana` because the tKoin you just transfered was carrying mana)
- you should see the delegation contract's mana balance decrease
- Enjoy you free transfer!

