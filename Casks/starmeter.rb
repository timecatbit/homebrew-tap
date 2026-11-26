cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.23"
  sha256 arm:   "e48252a89f77b8c745f9ddcaae4234a339824d6e8daa3702534b952cfdba43c0",
         intel: "6d61da167db7c5ef64600dc9d7b7e08c435550e5853f295412e90b3516a2f0cd"

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
