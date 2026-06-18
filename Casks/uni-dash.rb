cask "uni-dash" do
  version "1.0.2"
  sha256 "c1500579fe5168857f27fec4b3c648e345ade3f2cc713c2fdd52df9fbc11f257"

  url "https://github.com/NicCsn/uni-dash/releases/download/v#{version}/Uni%20Dash_#{version}_aarch64.dmg"
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