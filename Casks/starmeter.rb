cask "starmeter" do
  arch arm: "apple-silicon", intel: "intel"

  version "6.0.15"
  sha256 arm:   "aaa6431876fb4315bb251fe927700cdac3dd1ffd2efec0a777f3ea887cacf65f",
         intel: "47e8d98abcd6fa01c9e78ea1eecf0e663988c606cd5391c6b2cd62aa6d3fa6e2"

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
