# (optional) Build Mana-Sharing contract
```ssh
# install dependencies
yarn

# build contract
yarn build:release
```

# Deploy contract using JavaScript

Open the `scripts/upload_contract.js` file and add the account's WIF to this line:
```js
const MANA_SHARING_CONTRACT_WIF = '';
```

Then run the script using NodeJS:
```sh
node scripts/upload_contract.js
```

# Deploy contract using the Koinos CLI

When deploying the mana-sharing contract we want to override the transaction application authorization so that the contract can be used as payer.

Grab the wasm file at https://raw.githubusercontent.com/roaminro/koinos-sdk-as-examples/main/manasharing/build/release/contract.wasm

Grab the abi file at https://raw.githubusercontent.com/roaminro/koinos-sdk-as-examples/main/manasharing/abi/manasharing.abi


The following command will upload the wasm file and will override the correct authorization:

```sh
upload ./contract.wasm ./manasharing.abi false true false
```