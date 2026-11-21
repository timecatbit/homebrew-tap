class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.8"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.8/starmeter-6.0.8-macos-cli.tar.gz"
    sha256 "0052f91ff8178d15e738c3c6c5c80d5e0f6275493b964896a6094aa70507f1c4"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.8/starmeter-6.0.8-linux-x64-cli.tar.gz"
      sha256 "9e606a2759cbebc4045363c6f68daf8ccc72baf8e5079616f281e97352f98794"
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
