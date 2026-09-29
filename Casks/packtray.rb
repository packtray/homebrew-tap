cask "packtray" do
  version "1.0.1"
  sha256 "96b79036ee7c317698988a6a1f35bbf608412a31895896e06bc1f9ced72d5bb9"

  url "https://github.com/packtray/releases/releases/download/v#{version}/Packtray.dmg"
  name "Packtray"
  desc "Collect screenshots, text, files and notes into one context pack for any AI"
  homepage "https://packtray.app"

  depends_on macos: :ventura

  app "Packtray.app"

  zap trash: [
    "~/Library/Application Support/app.packtray.desktop",
    "~/Library/Caches/app.packtray.desktop",
    "~/Library/Logs/app.packtray.desktop",
    "~/Library/Preferences/app.packtray.desktop.plist",
    "~/Library/Saved Application State/app.packtray.desktop.savedState",
    "~/Library/WebKit/app.packtray.desktop",
  ]
end
