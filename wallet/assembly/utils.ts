export function equalBytes(a: Uint8Array, b: Uint8Array): boolean {
  if (a.length != b.length) return false;
  for (let i = 0; i < a.length; i++ ) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
  
export function fromUint32toUint64(n: u32): u64 {
  return (n as u64) - u64.MAX_VALUE + u32.MAX_VALUE;
}
  