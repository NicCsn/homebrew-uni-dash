cask "uni-dash" do
  version "1.0.6"
  sha256 "19765f49d9836f72758e2c8ff5c6210fbf329e78ae02be94e5817e14f98b4757"

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