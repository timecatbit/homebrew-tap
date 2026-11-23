cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.16"
  sha256 arm:   "234897d0010a04ddf80815cc01cc7deb9965edc76af2923c3456c5e6d2b4bf19",
         intel: "b73a984cd1d790d4e560b5d43382abb7c0a7eded83e41fecd990d4e597c78261"

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
