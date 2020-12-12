import Foundation


let dict = [
  ["name": "Bob", "age": 23],
  ["name": "Bobby", "age": 43],
  ["name": "Robbie", "age": 53],
  ["name": "Bert", "age": 13],
]

let filename = URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent("temp.json")

do {
    let jsonData = try JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)
    try jsonData.write(to: filename)
} catch {
    print(error.localizedDescription)
}
