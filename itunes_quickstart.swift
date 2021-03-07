import Foundation
import ScriptingBridge

@objc protocol iTunesTrack {
  @objc optional var name: String {get}
  @objc optional var album: String {get}
  @objc optional var artist: String {get}
  @objc optional var genre: String {get}
  @objc optional var lyrics: String {get}
  @objc optional var comment: String {get}
  @objc optional var dateAdded: Date {get}
  @objc optional var modificationDate: Date {get}
}

@objc protocol iTunesApplication {
  @objc optional var soundVolume: Int {get}
  @objc optional var currentTrack: iTunesTrack? {get}
}

extension SBApplication : iTunesApplication {}

guard let app: iTunesApplication = SBApplication(bundleIdentifier: "com.apple.Music") else {
  print("Could not load Music app")
  exit(1)
}

// Because these are all optional properties (to avoid providing an implementation), we have
// to use '!' to indicate we know the implementation exists.
guard let track: iTunesTrack = app.currentTrack! else {
  print("No current track")
  exit(1)
}

let lyrics = track.lyrics!.replacingOccurrences(of: "\r", with: "\n", options: .literal, range: nil)

print("Current track: \(track.name!) by \(track.artist!)")
print("Modified: \(track.modificationDate!), Added: \(track.dateAdded!)")
print("Lyrics:\n\(lyrics)")

