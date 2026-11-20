class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.7"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.7/starmeter-6.0.7-macos-cli.tar.gz"
    sha256 "99a4a6b58c3e97b3b749a86c83bc33f06d8843c458db97fe012fb010f9cde903"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.7/starmeter-6.0.7-linux-x64-cli.tar.gz"
      sha256 "1e0b8692167b23d1de665ba08b0cf63dd0cd03782bd4dca650f75170f069472e"
    end
  end

  def install
    libexec.install "starmeter", "lib"
    bin.install_symlink libexec/"starmeter"
  end

  test do
    assert_match "starmeter #{version}", shell_output("#{bin}/starmeter --version")
  end
end
