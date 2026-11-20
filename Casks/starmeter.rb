cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.4"
  sha256 arm:   "ed288df5d1d9c5e8843c8536dc9bc405c2e41e3f93a7465c4156d2e65dcd1cca",
         intel: "a8aff98b7db24153de2765ba8ee7ebe7e606809e52874bc03cdb5cc07d40ae6e"

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
