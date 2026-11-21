class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.9"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.9/starmeter-6.0.9-macos-cli.tar.gz"
    sha256 "8a4629f9244f380923e996163266f0926fe0b38ac1374a4ca6b8c8f0f1b04305"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.9/starmeter-6.0.9-linux-x64-cli.tar.gz"
      sha256 "13f44cf844a60c2af4c6fc1447bf4ae1ee70cce05c30c45cebe8f8cdafa2f6cb"
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
