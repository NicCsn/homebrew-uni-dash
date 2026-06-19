cask "uni-dash" do
  version "1.0.4"
  sha256 "41cf3d2f8490e2e65f9fa57c124b619ed934997e71d56e54c41f7ae5b225d2eb"

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