# wallet contract

This a contract to protect and manage digital assets using authorities and multisignatures. It enables the possibility to set a recovery contract which can help to recover the digital assets in case of loss of private keys.

## Instruction

## Build

```sh
# build the debug version
node cli.js build-all debug wallet.proto

# build the release version
node cli.js build-all release wallet.proto
```

## Run tests

```sh
# example for the calculator contract
node cli.js run-tests
```
