class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.22"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.22/starmeter-6.0.22-macos-cli.tar.gz"
    sha256 "0eeb83e36ca7ccddb12059e740b97ec224572b7b471ec1dff764c8513dbd2fe1"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.22/starmeter-6.0.22-linux-x64-cli.tar.gz"
      sha256 "6490f326a37e249bc2d9a795a000684f0abeb288d101aaa6559672119469b23c"
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
