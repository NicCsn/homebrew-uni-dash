cask "uni-dash" do
  version "1.0.3"
  sha256 "dd3a7c1f69ec747e3bedeb7b595e70c27ae05f8ad53cd6d949df1c0432d7e562"

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