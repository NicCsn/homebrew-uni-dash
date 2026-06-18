cask "uni-dash" do
  version "1.0.2"
  sha256 "PUT_HASH_HERE"

  url "https://github.com/NicCsn/uni-dash/releases/download/v#{version}/Uni.Dash_#{version}_aarch64.dmg"
  name "Uni Dash"
  desc "Local offline university dashboard"
  homepage "https://github.com/NicCsn/uni-dash"

  auto_updates true

  app "Uni Dash.app"

  zap trash: [
    "~/Library/Application Support/com.unidash.app",
    "~/Library/WebKit/com.unidash.app",
  ]
end