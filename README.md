# Feihong's Swift Quickstart

# Installation

Install [XCode](https://apps.apple.com/app/xcode/id497799835) to get Swift.

## Commands

Run program as script:

    swift hello.swift

Generate `Music.h` header file useful for working with ScriptingBridge:

    sdef /System/Applications/Music.app | sdp -fh --basename Music

Create executable package:

    $ mkdir MyExecutable
    $ cd MyExecutable
    $ swift package init --type executable
    $ swift build
    $ swift run
    Hello, World!

## Links

- https://github.com/tensorflow/swift/blob/master/Installation.md
- https://swift.org/getting-started/#installing-swift
- https://forums.swift.org/t/swift-repl-doesnt-work/27485
- https://forums.swift.org/t/swift-repl-starts-with-error-when-homebrew-python-is-installed/12927
- https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ScriptingBridgeConcepts/UsingScriptingBridge/UsingScriptingBridge.html#//apple_ref/doc/uid/TP40006104-CH4-DontLinkElementID_12
- https://swift.org/getting-started/#package-manager
- https://stackoverflow.com/questions/37994645/how-to-set-a-property-of-itunes-scriptingbridge-using-swift-protocols
- https://gist.github.com/jkelol111/5754a3d3f1d05df3434447b2714f38da
