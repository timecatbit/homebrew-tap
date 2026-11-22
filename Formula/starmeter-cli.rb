class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.13"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.13/starmeter-6.0.13-macos-cli.tar.gz"
    sha256 "8a10125f58f2b7bce720aa7a8b6b0fd056c834ab7f9bcfac04a01e4757f558c0"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.13/starmeter-6.0.13-linux-x64-cli.tar.gz"
      sha256 "ba2231a9e912ba3f811d4a3e2a93174f935bb5d4a6b4c312c92747838e38a80f"
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
