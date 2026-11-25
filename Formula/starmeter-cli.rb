class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.17"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.17/starmeter-6.0.17-macos-cli.tar.gz"
    sha256 "01f345baef30cbf04b8d1c9a6779af9e91542c88ff9bf4c61c6c77ac16f21354"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.17/starmeter-6.0.17-linux-x64-cli.tar.gz"
      sha256 "d2f7f3e27c7e443de8d614789cde119b0ea3ceff89215d015b46cef555702c55"
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
