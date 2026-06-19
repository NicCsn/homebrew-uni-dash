cask "uni-dash" do
  version "1.1.0"
  sha256 "f475919039203827510481df93e53d5164b4e5daf13c71eca788f653092b77d0"

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