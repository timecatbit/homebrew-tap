class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.11"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.11/starmeter-6.0.11-macos-cli.tar.gz"
    sha256 "d96af95892486733f11cd53ba1854d595d5632971a4080358b5d6f674aadae1f"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.11/starmeter-6.0.11-linux-x64-cli.tar.gz"
      sha256 "b3d305b9aad552410de0596079ed1b039a9b06e8103a24550ed9fc0879225d1f"
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
