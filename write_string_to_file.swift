import Foundation

let str = "你好世界！"

let filename = URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent("temp.txt")

print(filename)

do {
  try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
} catch {
  print("There was an error")
}
