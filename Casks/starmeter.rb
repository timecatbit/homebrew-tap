cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.1"
  sha256 arm:   "f6083657b174903a360926689ef4c701796ece6a152d712b01cbec9ba1dc86d9",
         intel: "238a09c0e7b868e87288bbe984d6f41473f2ea1fb0f3b598a7ce997168c745c3"

  url "https://github.com/timecatbit/starmeter/releases/download/v#{version}/token-monitor-#{version}-macos-#{arch}.dmg"
  name "Starmeter"
  desc "Menu bar monitor for AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Starmeter.app"

  zap trash: "~/Library/Caches/Token Monitor"
end
