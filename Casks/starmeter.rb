cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.21"
  sha256 arm:   "bacad9fac861c2aaf4b9c28002217bb58f2147415840fad91b781dfa673f2b94",
         intel: "9d6471d479beb0d40017c4e05347b770fd4aaf1fba3229100fd116e27a9e5fc2"

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
