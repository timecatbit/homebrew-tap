class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.12"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.12/starmeter-6.0.12-macos-cli.tar.gz"
    sha256 "d9cc3b7b993ecc7cc1f093ee7f073c54354f955658291d3fd29ee0e626545762"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.12/starmeter-6.0.12-linux-x64-cli.tar.gz"
      sha256 "dd6ed7e8eb20119551ac00f9e5af99b69d99e4733286688233b884da6bc258ec"
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
