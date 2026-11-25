class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.18"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.18/starmeter-6.0.18-macos-cli.tar.gz"
    sha256 "a77df8f553c959a4e4f24749f0c90216563a2b1678725942cc730471caf23685"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.18/starmeter-6.0.18-linux-x64-cli.tar.gz"
      sha256 "ba6606c1038301f91f7652d79c539a54fe89b8b3e18d2045e34f1c4f53f03cba"
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
