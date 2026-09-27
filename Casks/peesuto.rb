cask "peesuto" do
  version "0.2.3"
  sha256 "38bad98179b74f1e1f81aacc58db81ff72fda77b6ec3d7ebc2236ef8dd0a1003"

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
