cask "peesuto" do
  version "0.2.2"
  sha256 "f7e9e100eaea9571e90893d57f84d38a477cf59aa401d04ce5280964c1e7f1ec"

  url "https://github.com/anelikes/peesuto/releases/download/v#{version}/Peesuto-#{version}-arm64.dmg"
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
