# aiken_fn_answers

This project contains the definitions for:

- `fn double(Int) -> Int`
- `fn reverse(ByteArray) -> ByteArray`
  Notice that `ByteArray` `"abcd"` is not the same as `#"abcd"`:
  - `"abcd"` == `#[0x61, 0x62, 0x63, 0x64]`
  - `#"abcd"` == `#[0xab, 0xcd]`
