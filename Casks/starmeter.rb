cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.0"
  sha256 arm:   "39ca4323c314f873936861ef13fa189ea6bbc82ca6e2d6fcbcec878abab5f9d0",
         intel: "e56def758ffbd4874add402108e1f117cc656dc10c884a28e1e77edb1de49ec2"

  url "https://github.com/timecatbit/starmeter/releases/download/v#{version}/token-monitor-#{version}-macos-#{arch}.dmg"
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
