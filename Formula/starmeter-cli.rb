class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.16"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.16/starmeter-6.0.16-macos-cli.tar.gz"
    sha256 "95c25f014c9844ddcb2abf810ec07975447981138b8733b8f63e8fa8d402df96"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.16/starmeter-6.0.16-linux-x64-cli.tar.gz"
      sha256 "b14b37b9a020d432c588272f16c2b2d09826a96be31370a5cf5971c1df3b7066"
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
