cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.17"
  sha256 arm:   "8bc5f4246862fcd2bfd67be0ccfb4bab90e003202a4891e2802251bdecce5fdf",
         intel: "cb1d63573b4825cd08e60519180845fd951a6c811655e99411a41dac85a4418b"

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
