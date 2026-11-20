cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.5"
  sha256 arm:   "b8404cc372c7cd5690ba1d75e8acf0dbc4e8fb5cb566a35c5ccf2123e041db13",
         intel: "c2a7737fc28ddf422bc6a97dffb109047888f60f7e865fb4171601d90ee5d56c"

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
