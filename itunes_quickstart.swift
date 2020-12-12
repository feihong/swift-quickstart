import Foundation
import ScriptingBridge

@objc protocol iTunesTrack {
  @objc optional var name: String {get}
  @objc optional var album: String {get}
  @objc optional var lyrics: String {get}
}

@objc protocol iTunesApplication {
  @objc optional var soundVolume: Int {get}
  @objc optional var currentTrack: iTunesTrack? {get}
}

extension SBApplication : iTunesApplication {}

if let app: iTunesApplication = SBApplication(bundleIdentifier: "com.apple.Music") {
  // Because these are all optional properties (to avoid providing an implementation), we have
  // to use '!' to indicate we know the implementation exists.
  let track: iTunesTrack? = app.currentTrack!
  let album = track?.album!
  let trackName = track?.name!
  let lyrics = track?.lyrics!

  print("Current track: \(String(describing: trackName)) - \(String(describing: album))")
  print("Lyrics: \(String(describing: lyrics))")
}
