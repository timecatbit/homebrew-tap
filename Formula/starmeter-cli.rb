class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.10"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.10/starmeter-6.0.10-macos-cli.tar.gz"
    sha256 "037337417980e0674c15c07dc8c3b43b7c1dbc679b23dfd72080b55ab2add3fd"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.10/starmeter-6.0.10-linux-x64-cli.tar.gz"
      sha256 "302c227e7ebf18bb592fe0ad00301fc807b6e84594b3f5695ed1adfb25eb0924"
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
