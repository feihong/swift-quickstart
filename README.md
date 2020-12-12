# Feihong's Swift Quickstart

# Installation

- [Download latest XCode](https://developer.apple.com/download/) (warning: big download) and drag the uncompressed app into `Applications` directory, renaming it to avoid replacing your current Xcode install
- [Download Swift for TensorFlow](https://github.com/tensorflow/swift/blob/master/Installation.md) and run installer
- In XCode preferences:
  - Under Locations, make sure latest Xcode is selected for Command Line Tools
  - Under Components > Toolchains, select the installed Swift for TensorFlow toolchain
- Add this to `~/.bash_profile`:

  ```
  alias swift='PATH="/Library/Developer/Toolchains/swift-latest/usr/bin:$PATH" swift'
  ```

Note: Setting `PATH` forces the latest version of swift to be used, as opposed to whatever version came with your Xcode installation.

## Commands

Run program as script:

    swift hello.swift

Generate `Music.h` header file useful for working with ScriptingBridge:

    sdef /System/Applications/Music.app | sdp -fh --basename Music

## Links

- https://github.com/tensorflow/swift/blob/master/Installation.md
- https://swift.org/getting-started/#installing-swift
- https://forums.swift.org/t/swift-repl-doesnt-work/27485
- https://forums.swift.org/t/swift-repl-starts-with-error-when-homebrew-python-is-installed/12927
- https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ScriptingBridgeConcepts/UsingScriptingBridge/UsingScriptingBridge.html#//apple_ref/doc/uid/TP40006104-CH4-DontLinkElementID_12
