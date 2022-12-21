import Foundation
import ScriptingBridge

@objc protocol MusicTrack {
  @objc optional var name: String {get}
  @objc optional var album: String {get}
  @objc optional var artist: String {get}
  @objc optional var genre: String {get}
  @objc optional var lyrics: String {get}
  @objc optional var comment: String {get}
  @objc optional var rating: Int {get}
  @objc optional var dateAdded: Date {get}
  @objc optional var modificationDate: Date {get}
}

@objc protocol MusicApplication {
  @objc optional var soundVolume: Int {get}
  @objc optional var currentTrack: MusicTrack {get}
}

extension SBApplication : MusicApplication {}

guard let app: MusicApplication = SBApplication(bundleIdentifier: "com.apple.Music") else {
  print("Could not load Music app")
  exit(1)
}

guard let track: MusicTrack = app.currentTrack else {
  print("No current track")
  exit(1)
}

let lyrics = track.lyrics!.replacingOccurrences(of: "\r", with: "\n", options: .literal, range: nil)

print("Current track: \(track.name!) by \(track.artist!)")
print("Rating: \(track.rating! / 20) stars")
print("Modified: \(track.modificationDate!), Added: \(track.dateAdded!)")
print("Lyrics:\n\(lyrics)")

