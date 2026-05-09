cask "stretchly" do
  arch arm: "-arm64"

  version "1.20.0"
  sha256 arm:   "277b8c5649aad01182f224abcda21b154775531ca4aacd71d6cff359d435584d",
         intel: "799f14585d0220abdd500e57cd9775a48505f894cbd2eca83f57c9cf0a45f620"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/Stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Stretchly.app"

  uninstall quit: "net.hovancik.stretchly"

  zap trash: [
    "~/Library/Application Support/Stretchly",
    "~/Library/Logs/Stretchly",
    "~/Library/Preferences/net.hovancik.stretchly.plist",
  ]

  caveats <<~EOS
    Stretchly is not signed with an Apple Developer certificate.
    macOS Gatekeeper may block it from opening. To allow it, run:
      xattr -dr com.apple.quarantine /Applications/Stretchly.app
    or right-click the app and choose "Open".
  EOS
end
