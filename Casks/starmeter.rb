cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.12"
  sha256 arm:   "869f7d6fc3af596790457f72c8a05ead92667cb109ca6750db561905fcf0d018",
         intel: "5319288c4e00cd371572b866eb3d260a45be1b3c383d76dd48efa37e67942f78"

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
