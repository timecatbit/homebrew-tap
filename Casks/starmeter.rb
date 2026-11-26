cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.19"
  sha256 arm:   "44c0b247ec35afcb9f37266571a0754f232aaa9c388fb094bd5749d50f21d2e5",
         intel: "0e530f9d2eec547edbbbaba2e87a3e827968bd967b02e6aefc0ef63d53e2f9af"

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
