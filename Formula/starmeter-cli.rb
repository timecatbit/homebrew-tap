class StarmeterCli < Formula
  desc "Command-line view of AI coding tools' token usage, costs and limits"
  homepage "https://github.com/timecatbit/starmeter"
  version "6.0.26"
  license "MIT"

  livecheck do
    url "https://github.com/timecatbit/starmeter"
    strategy :github_latest
  end

  on_macos do
    url "https://github.com/timecatbit/starmeter/releases/download/v6.0.26/starmeter-6.0.26-macos-cli.tar.gz"
    sha256 "6890c28465ba38de00cb074d64622d5707e15ff915a9ea16c77eaf8f228a87ec"
  end

  on_linux do
    on_intel do
      url "https://github.com/timecatbit/starmeter/releases/download/v6.0.26/starmeter-6.0.26-linux-x64-cli.tar.gz"
      sha256 "ebbc6b87243544fbdb5f89be23f7fe61935b67a02ce5904b69bfd12f9d0cc719"
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
