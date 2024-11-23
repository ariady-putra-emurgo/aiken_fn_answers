use aiken/primitive/bytearray

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
      let tail = ws |> bytearray.drop(1)
      let head = ws |> bytearray.take(1)

      // [..reverse(tail), head]
      bytearray.concat(reverse(tail), head)
    }
  }
}
