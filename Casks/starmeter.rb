cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.11"
  sha256 arm:   "35950ca026ba9f8885e8cb1a8f1224b7dd369538eaf50acd487be691cb11d51a",
         intel: "b054e426a273f3c0eabf98c06c79743fa119223537e4312de2c349ed3f43274c"

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
