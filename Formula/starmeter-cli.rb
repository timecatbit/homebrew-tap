class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.21"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.21/starmeter-6.0.21-macos-cli.tar.gz"
    sha256 "8133cad0866e49507da5c90e073697cb8214170d6f5c38d1bfed7d28009792c3"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.21/starmeter-6.0.21-linux-x64-cli.tar.gz"
      sha256 "e815d7ed393a65f9339ecc540413c44236af53677288dd2eb6ad21c78c0cfb41"
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
