import Foundation

let directory = FileManager.default.currentDirectoryPath
let directoryUrl = URL(fileURLWithPath: directory, isDirectory: true)

let url = directoryUrl.appendingPathComponent("output.txt")
let output = "Hello File!"
print("Writing to file \(url)")

try! output.write(to: url, atomically: true, encoding: .utf8)
