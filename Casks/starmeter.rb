cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.2"
  sha256 arm:   "7a20b0fcca4a982185219f2b2bc4afea3ec38b24c3fc6854fee1e88c9f6405d9",
         intel: "af366412db434629ed531decdf6867625ab23db66f5bfee5daa012a9be2d31eb"

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
