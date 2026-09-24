cask "peesuto" do
  version "0.2.0"
  sha256 "c55d92a3a879f6987e0439d50c6f1c8fb041789b498895feac3b2d5f8d7ee71b"

  url "https://github.com/anelikes/peesuto/releases/download/v#{version}/Peesuto-#{version}-arm64.dmg",
      verified: "github.com/anelikes/peesuto/"
  name "Peesuto"
  desc "Clipboard manager that pastes copied text as image cards, GIFs and videos"
  homepage "https://peesuto.com/"

  livecheck do
    url "https://peesuto.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Peesuto.app"

  zap trash: [
    "~/.pocket-paste",
    "~/Library/Application Support/com.peesuto.desktop",
    "~/Library/Caches/com.peesuto.desktop",
    "~/Library/HTTPStorages/com.peesuto.desktop",
    "~/Library/Preferences/com.peesuto.desktop.plist",
    "~/Library/Saved Application State/com.peesuto.desktop.savedState",
    "~/Library/WebKit/com.peesuto.desktop",
  ]
end
