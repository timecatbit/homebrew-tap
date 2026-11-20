class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.6"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.6/starmeter-6.0.6-macos-cli.tar.gz"
    sha256 "57f198bcc0fda3cc1675b3375a570476acbe9ba1444de3473fdaa3b687fd1334"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.6/starmeter-6.0.6-linux-x64-cli.tar.gz"
      sha256 "0ca433d37d9242a3c0e5ae6b2ca4318b51acd9de477a10151ebabb41ae044859"
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
