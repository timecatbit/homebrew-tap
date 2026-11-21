cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.10"
  sha256 arm:   "1b67434ad971fc8c3614057110c1d3d52359d147ab8e1b0ad875c4479c8f85da",
         intel: "5cf5960b23c128d54b1c23cab5d4b4b1470c5a263e4d8ce28f4cedd3bfec918e"

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
