import Foundation

let dict = ["A": "1", "B": "2", "C": "3", "D": "太阳"]

do {
    let jsonData = try JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)
    print(String(decoding: jsonData, as: UTF8.self))
} catch {
    print(error.localizedDescription)
}
