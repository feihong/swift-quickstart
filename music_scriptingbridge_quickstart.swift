import Foundation
import ScriptingBridge

@objc protocol MusicTrack {
  @objc optional var name: String { get }
  @objc optional var album: String { get }
  @objc optional var artist: String { get }
  @objc optional var genre: String { get }
  @objc optional var lyrics: String { get }
  @objc optional var comment: String { get }
  @objc optional var rating: Int { get }
  @objc optional var dateAdded: Date { get }
  @objc optional var modificationDate: Date { get }
  @objc optional var location: URL { get }

  @objc optional var databaseID: Int { get }
  @objc optional func setRating(_ rating: Int)
}

@objc protocol MusicApplication {
  @objc optional var soundVolume: Int { get }
  @objc optional var currentTrack: MusicTrack { get }
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

print("Current track: \(track.name!) by \(track.artist!), database ID: \(track.databaseID!)")
print("Rating: \(track.rating! / 20) stars")
print("Modified: \(track.modificationDate!), Added: \(track.dateAdded!)")
print("Location: \(track.location!.path)")
let lyrics = track.lyrics!.replacingOccurrences(of: "\r", with: "\n", options: .literal, range: nil)
// print("Lyrics:\n\(lyrics)")

print("Set rating to 5 stars")
track.setRating!(100)
