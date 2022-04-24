# Mycontract

## Build
```sh
# build the debug version
yarn build:debug
# or
yarn exec koinos-sdk-as-cli build-all debug mycontract.proto 

# build the release version
yarn build:release
# or
yarn exec koinos-sdk-as-cli build-all release mycontract.proto 
```

## Test
```sh
yarn test
# or
yarn exec koinos-sdk-as-cli run-tests
```