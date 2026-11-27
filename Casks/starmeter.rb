cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.26"
  sha256 arm:   "3b59daa519e99f01b1210c9c60112c2cede697767c61e97a73c8945be55eb964",
         intel: "64c8162153ef30beab7c69495f09fb872e0b15072505bc562cb4724e0ff4baa0"

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
