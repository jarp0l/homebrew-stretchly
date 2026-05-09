# homebrew-stretchly

Homebrew [Tap](https://docs.brew.sh/Taps) for [Stretchly](https://hovancik.net/stretchly/) — the break time reminder app.

## Requirements

- macOS Monterey (12) or later

## Install

```sh
brew install --cask hovancik/stretchly/stretchly
```

Or, if you prefer to tap first:

```sh
brew tap hovancik/stretchly
brew install --cask stretchly
```

> **Note:** Stretchly is not signed with an Apple Developer certificate. macOS
> Gatekeeper may prevent it from opening. To allow it, run:
>
> ```sh
> xattr -dr com.apple.quarantine /Applications/Stretchly.app
> ```
>
> or right-click the app and choose **Open**.

## Update

```sh
brew upgrade --cask stretchly
```

## Uninstall

```sh
brew uninstall --cask stretchly
brew untap hovancik/stretchly
```