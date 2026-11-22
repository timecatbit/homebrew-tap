cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.13"
  sha256 arm:   "a1d03f1574e2164cf8f3e9d93465a5d3fe90e2b043f86180a28e99fe04eefab9",
         intel: "e67774f01beeaf5aab1135a6ce735ddd33121abfed7d65f67470a6aebe6ffcf6"

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
