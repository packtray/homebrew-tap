cask "packtray" do
  version "1.0.0"
  sha256 "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"

  url "https://github.com/packtray/releases/releases/download/v1.0.0/Packtray.dmg"
  name "Packtray"
  desc "Collect screenshots, text, files and notes into one context pack for any AI"
  homepage "https://packtray.app"

  depends_on macos: :ventura

  app "Packtray.app"

  zap trash: [
    "~/Library/Application Support/app.packtray.desktop",
    "~/Library/Caches/app.packtray.desktop",
    "~/Library/Preferences/app.packtray.desktop.plist",
  ]
end
