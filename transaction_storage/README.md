# transaction_storage contract

## Build
```sh
# build the debug version
node cli.js build-all transaction_storage debug transaction_storage.proto koinos/protocol/protocol.proto

# build the release version
node cli.js build-all transaction_storage release transaction_storage.proto koinos/protocol/protocol.proto
```

The compilation of the file `transaction_storage.ts` will fail because the `as-proto-gen` package is not able to link files with complex "paths". Here's how to remedy this problem:

 - open the file `transaction_storage/assembly/proto/transaction_storage.ts``
 - replace the import line `import { koinos } from "./koinos/protocol/protocol";` with `import { protocol } from "koinos-as-sdk";`
 - replace all the `koinos.protocol` occurences with `protocol`
 - build the contract again `node cli.js build transaction_storage release transaction_storage.proto`