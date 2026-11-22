cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.14"
  sha256 arm:   "3e355cb0fea3f105c74472cb009b1ccac767f209421d54704eb597b9fd2b6e4f",
         intel: "856bf1475739a78959a42b4dea8a203cec69f316bd9a59d774ac09c55d913a39"

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
