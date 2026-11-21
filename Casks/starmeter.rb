cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.9"
  sha256 arm:   "8a78c43282154832fcc2863849ef7971349d3f87f157676d50d93af3a9a8900c",
         intel: "1ff51ce95c417393c9ebf1b6148c2ba37fe283925800b04e82acf5caa7bcea7e"

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
