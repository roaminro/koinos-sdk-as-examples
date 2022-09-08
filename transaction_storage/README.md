# transaction_storage contract

## Build
```sh
# build the debug version
node cli.js build-all debug transaction_storage.proto koinos/protocol/protocol.proto

# build the release version
node cli.js build-all release transaction_storage.proto koinos/protocol/protocol.proto
```

The compilation of the file `transaction_storage.ts` will fail because the `as-proto-gen` package is not able to link files with complex "paths". Here's how to remedy this problem:

 - open the file `transaction_storage/assembly/proto/transaction_storage.ts``
 - replace the import line `import { transaction } from "../../../koinos/protocol/protocol";` with `import { transaction } from "koinos-sdk-as";`
 - build the contract again `node cli.js build release transaction_storage.proto`