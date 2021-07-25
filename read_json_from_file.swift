import Foundation

let directoryUrl = URL(fileURLWithPath: FileManager.default.currentDirectoryPath, isDirectory: true)
let inputUrl = directoryUrl.appendingPathComponent("tracks.json")

let data = try Data(contentsOf: inputUrl, options: .mappedIfSafe)
let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
if let array = jsonResult as? [Dictionary<String, Any>] {
  for dict in array {
    print(dict["title"]!)
    print(dict["location"]!)
    print(dict["rating"]!)
  }
}
