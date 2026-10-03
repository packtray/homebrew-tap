cask "packtray" do
  version "1.0.2"
  sha256 "2ac2fec1063214f0de1e3f13ae3f418575ace451edf74022a9960225906843a8"

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
