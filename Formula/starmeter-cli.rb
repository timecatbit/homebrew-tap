class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.15"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.15/starmeter-6.0.15-macos-cli.tar.gz"
    sha256 "5efc265d360ba8bbfa8ff2a0f34f8e3e968525d2d17d71337cc6b7e3e6f01a7c"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.15/starmeter-6.0.15-linux-x64-cli.tar.gz"
      sha256 "e2ca60e3b6a621e8d52981dff2b426af1d191b50f382fa3e74ce3f92d1f37d77"
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
