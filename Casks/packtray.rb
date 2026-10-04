cask "packtray" do
  version "1.0.3"
  sha256 "ce85ddefc835d094ca916a03526112bab716ea41c3c9719ba9e116bd07a675b6"

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
