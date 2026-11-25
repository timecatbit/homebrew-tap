cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.18"
  sha256 arm:   "8d04acb4751c781700bd55efd69ab614e76e49252254f7767842706657bab7da",
         intel: "62dc11452cd37afe6ccafd7d6ffee9f50397e4d4ee3ffddbab40f3b80a19a4d2"

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
