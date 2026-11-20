cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.7"
  sha256 arm:   "e5c1a162303092730fd287ed770229eb325f203aabcbc605fe4c27c049629bbe",
         intel: "366e118f97a29a37b05971b3f67faeda8561d00da879e4693febaac22ed3e423"

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
