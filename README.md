# Feihong's Swift Quickstart

# Installation

- [Download the .pkg file](https://swift.org/download/) and run it
- In XCode preferences, under Locations, make sure something is selected for Command Line Tools
- Add this to `~/.bash_profile`:

  ```
  alias swift='TOOLCHAINS=swift PATH="/usr/bin:$PATH" swift'
  ```

Note: Setting `TOOLCHAINS` forces the latest version of swift to be used, setting `PATH` forces the system version of Python to be used.

## Commands

```
swift hello.swift
```

## Links

- https://swift.org/getting-started/#installing-swift
- https://forums.swift.org/t/swift-repl-doesnt-work/27485
- https://forums.swift.org/t/swift-repl-starts-with-error-when-homebrew-python-is-installed/12927
