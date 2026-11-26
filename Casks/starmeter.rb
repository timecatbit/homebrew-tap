cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.22"
  sha256 arm:   "8fc070570f64e2751b3b8ba4ca672ffbc24f5a5b63840a3b673b38b2c702a4b7",
         intel: "e4c91a81d5730ba36df14ec24130f847f3c5681f717d1b94e78145e299ef19b9"

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
