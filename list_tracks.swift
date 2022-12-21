// cat music.swift list_tracks.swift | swift -

import Foundation

guard let app: MusicApplication = SBApplication(bundleIdentifier: "com.apple.Music") else {
  print("Could not load Music app")
  exit(1)
}

func getMusicPlaylist() -> MusicPlaylist? {
  for case let playlist as MusicPlaylist in app.playlists!() {
    // let playlist = playlist as! MusicPlaylist
    if playlist.name! == "Music" {
      return playlist
    }  
  }
  return nil
}

guard let playlist = getMusicPlaylist() else {
  print("No Music playlist")
  exit(1)
}

for case let track as MusicTrack in playlist.tracks!() {
  print(track.name!)
}
