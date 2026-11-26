class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.23"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.23/starmeter-6.0.23-macos-cli.tar.gz"
    sha256 "b16710acb385917990d0474bd31aeaf7b67b950224c789d7ece07d994fef6b81"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.23/starmeter-6.0.23-linux-x64-cli.tar.gz"
      sha256 "ff676d9639036c2ce8d9dbeac1348224e4a6024d785f1a46894ae273325a0519"
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
