# controlled_contract_update contract

## Build
```sh
# build the debug version
node cli.js build-all --generate_authorize debug update.proto 

# build the release version
node cli.js build-all --generate_authorize release update.proto 
```

## Upload
```sh
# using the Koinos CLI, update the contract
upload controlled_contract_update/build/release/contract.wasm controlled_contract_update/abi/update.abi false false true

# then, try to update the contract again...
# cannot upload contract, -32603:account 16FKPtL9h7FHwFogcCgWV9okXaQPNZKniG has not authorized action

# generate the bytecode's digest using the provided util
# (it's just a small nodejs script that calculates the SHA2-256 of the bytecode and encode it into a base64 string)
node controlled_contract_update/util/base64WasmEncoder.js
# will output:
# bytecode sha2-256 digest: EiA50AbJTbAYcEzT2n7mpfuUg7obIevwfbs8XVLAiG9NOw==
# contract size: 29300

# register the contract in your CLI, for example: 
register update 16FKPtL9h7FHwFogcCgWV9okXaQPNZKniG

# call the allow_sha256 function with the digest calculated above and the expected bytecode size
update.allow_sha256 EiA50AbJTbAYcEzT2n7mpfuUg7obIevwfbs8XVLAiG9NOw== 29300

# try to update the contract again...
#contract bytecode was successfully updated: digest EiA50AbJTbAYcEzT2n7mpfuUg7obIevwfbs8XVLAiG9NOw==
```