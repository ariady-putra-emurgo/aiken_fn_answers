use aiken/builtin

fn double(x: Int) -> Int {
  2 * x
}

/// Triples the value of `x`
/// ```
/// triple(2) == 6
/// triple(3) == 9
/// triple(4) == 12
/// ```
pub fn triple(x: Int) -> Int {
  let y = double(x)
  x + y
}

/// Explicit recursion.
/// Or, foldl: https://aiken-lang.github.io/stdlib/aiken/primitive/bytearray.html#foldl
pub fn reverse(word: ByteArray) -> ByteArray {
  when word is {
    "" -> ""
    ws -> {
      let tail_length = builtin.length_of_bytearray(ws) - 1
      let tail = builtin.slice_bytearray(1, tail_length, ws)
      let head = builtin.slice_bytearray(0, 1, ws)

      // [..tail, head]
      builtin.append_bytearray(reverse(tail), head)
    }
  }
}
