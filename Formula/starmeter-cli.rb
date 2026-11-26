class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.20"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.20/starmeter-6.0.20-macos-cli.tar.gz"
    sha256 "0e8ac83c3bbe6be31ca54055d77eaac2d302acd631a1fdde1cd2742d23bd5796"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.20/starmeter-6.0.20-linux-x64-cli.tar.gz"
      sha256 "f05d4a41d597867162fabc11abdb6f185b8da93727886d1b48254f8771099bc0"
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
