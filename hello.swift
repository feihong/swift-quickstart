import Darwin

print("你好世界！")

let n = Int.random(in: 0x4e00...0x9fff)
if let scalar = UnicodeScalar(n) {
  let char = Character(scalar)
  print("Random hanzi: \(char)")
}
