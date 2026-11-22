class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.14"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.14/starmeter-6.0.14-macos-cli.tar.gz"
    sha256 "bd5938d86ee49330b18ea378e89629f0501d5da0213847d6306f8dd3cb49d235"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.14/starmeter-6.0.14-linux-x64-cli.tar.gz"
      sha256 "8da5487c10873010797ae074904f9d197981b9b5528f0476ba3a8cfae2c578a9"
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
