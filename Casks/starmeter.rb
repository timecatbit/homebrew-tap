cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.20"
  sha256 arm:   "2df636f04e4b3eea4617edc18f18d63ac178c956fe3306dc3312abadf13a1c4f",
         intel: "4d9092473f22ef6757c216c365a6746f58d790efeb10cef6b773e26604ae6f47"

  url "https://github.com/timecatbit/starmeter/releases/download/v#{version}/starmeter-#{version}-macos-#{arch}.dmg"
  name "Starmeter"
  desc "Menu bar monitor for AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself in place from its GitHub releases (应用内升级): brew upgrade leaves it to that.
  auto_updates true
  depends_on macos: :ventura

  app "Starmeter.app"

  zap trash: "~/Library/Caches/Token Monitor"
end
