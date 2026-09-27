#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"

path, version, tag, sha256 = ARGV
abort "usage: update_cask.rb CASK_PATH VERSION TAG SHA256" unless [path, version, tag, sha256].all? { |value| value && !value.empty? }
abort "invalid version" unless version.match?(/\A\d+\.\d+\.\d+(?:[-+][0-9A-Za-z.-]+)?\z/)
# The cask builds the URL from the version, which Homebrew's audit requires, so the tag
# must be exactly "v" + version.
abort "tag must be v#{version}" unless tag == "v#{version}"
abort "invalid SHA-256" unless sha256.match?(/\A[0-9a-f]{64}\z/i)

FileUtils.mkdir_p(File.dirname(path))
File.write(path, <<~RUBY)
  cask "packtray" do
    version "#{version}"
    sha256 "#{sha256.downcase}"

    url "https://github.com/packtray/releases/releases/download/v\#{version}/Packtray.dmg"
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
RUBY
