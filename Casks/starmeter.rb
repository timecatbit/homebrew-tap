cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.8"
  sha256 arm:   "795e870a935eb06a9365f15943056104ee7a5056d57bda3e2ba8dbe4a4718e57",
         intel: "702250356d66d1b0c55354f92f1418721a003c6ca904a06cfcceff5dbd0bbac0"

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
