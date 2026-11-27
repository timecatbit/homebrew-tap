class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.24"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.24/starmeter-6.0.24-macos-cli.tar.gz"
    sha256 "da9ddeb8e273b51191d308c3a4e89624df6a0726a4e53f1154b9ba1c095dab83"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.24/starmeter-6.0.24-linux-x64-cli.tar.gz"
      sha256 "c73f94016051b4ceb9e030b64cf44ad5d764da4546b3b5484f916effcbf23ab5"
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
