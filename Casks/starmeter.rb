cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.6"
  sha256 arm:   "ebf020ac4d5ff569a45023b9ad9c0f66966adb49ea7e738f60a97f92625fbda1",
         intel: "39830ca342178587af9788fc9f629ed4d6e064612f1d6ed5bbf966910ee71d00"

  url "https://github.com/timecatbit/starmeter/releases/download/v#{version}/starmeter-#{version}-macos-#{arch}.dmg"
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
