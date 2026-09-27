# Packtray Homebrew tap

This tap publishes the signed and notarized Packtray macOS cask.

The first cask is created automatically when Packtray publishes its first
stable release. Tester and pre-release builds are intentionally ignored: they
use Dodo test mode and are not suitable for public Homebrew installation.

Install the latest stable release with:

```sh
brew install --cask packtray/tap/packtray
```

Upgrade it later with:

```sh
brew upgrade --cask packtray
```

The cask is generated from the latest stable release in the public
[`packtray/releases`](https://github.com/packtray/releases) repository. A
scheduled workflow updates the version, immutable release URL and SHA-256
checksum after a new release is published. Pre-releases are ignored.

Packtray requires macOS 13 (Ventura) or later.
