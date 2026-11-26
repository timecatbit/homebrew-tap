class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.19"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.19/starmeter-6.0.19-macos-cli.tar.gz"
    sha256 "e5e02a4d65cc73c2066b99f8a8927b650f3ab5439be3489cf274e4ec34989453"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.19/starmeter-6.0.19-linux-x64-cli.tar.gz"
      sha256 "d419230bb0f1b4d0e76a0206406c4191b99a98d60afc5174d2a6146f710bc64c"
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
