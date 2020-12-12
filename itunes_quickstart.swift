import Foundation
import ScriptingBridge

@objc protocol iTunesTrack {
  @objc optional var name: String {get}
  @objc optional var album: String {get}
  @objc optional var artist: String {get}
  @objc optional var genre: String {get}
  @objc optional var lyrics: String {get}
  @objc optional var comment: String {get}
}

@objc protocol iTunesApplication {
  @objc optional var soundVolume: Int {get}
  @objc optional var currentTrack: iTunesTrack? {get}
}

extension SBApplication : iTunesApplication {}

if let app: iTunesApplication = SBApplication(bundleIdentifier: "com.apple.Music") {
  // Because these are all optional properties (to avoid providing an implementation), we have
  // to use '!' to indicate we know the implementation exists.
  guard let track: iTunesTrack = app.currentTrack! else {
    exit(1)
  }
  let trackName = track.name!
  let lyrics = track.lyrics!.replacingOccurrences(of: "\r", with: "\n", options: .literal, range: nil)

  print("Current track: \(trackName) by \(track.artist!)")
  print("Lyrics:\n\(lyrics)")
}
