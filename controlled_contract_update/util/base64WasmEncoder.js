const fs = require('fs');
const crypto = require('crypto');

const bytecode = fs.readFileSync(__dirname + '/../build/release/contract.wasm');

const digest = crypto.createHash('sha256').update(bytecode).digest();

// prepend 18 (sha2-256) and 32 (32 bytes) because Koinos uses multihash digests
console.log('bytecode sha2-256 digest:', Buffer.from([18, 32, ...digest]).toString('base64'));