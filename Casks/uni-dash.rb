cask "uni-dash" do
  version "1.1.1"
  sha256 "4ccdffcb4a2b0ff2b0207e8f5b25fc7e79f10d3c6c6d9b21007665566c3e16cf"

  url "https://github.com/NicCsn/uni-dash/releases/download/v#{version}/Uni.Dash_#{version}_aarch64.dmg"
  name "Uni Dash"
  desc "Local offline university dashboard"
  homepage "https://github.com/NicCsn/uni-dash"

  auto_updates true

  app "Uni Dash.app"

  caveats do
    "On first launch, macOS Gatekeeper may block the app.\nFix: xattr -cr /Applications/Uni\\ Dash.app"
  end

  zap trash: [
    "~/Library/Application Support/com.unidash.app",
    "~/Library/WebKit/com.unidash.app",
    "~/Library/Application Support/com.unidash.appuni-dash",
  ]
end