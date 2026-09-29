class Mtop < Formula
  desc "Cross-platform terminal system monitor"
  homepage "https://github.com/EvarinthoSec/mtop"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EvarinthoSec/mtop/releases/download/v#{version}/mtop-macos-arm64-#{version}.tar.gz"
      sha256 "3bb51b7c87c55f7caa24ba32800ab3a819753a8879435824a3c5259e5354abf2"
    end

    on_intel do
      url "https://github.com/EvarinthoSec/mtop/releases/download/v#{version}/mtop-macos-x86_64-#{version}.tar.gz"
      sha256 "e3cf99f090a9def24e4290f645ac0b81395c74086e108e25ca139d7f1e6c238a"
    end
  end

  def install
    bin.install "mtop"
  end

  test do
    assert_match "A fast terminal system monitor", shell_output("#{bin}/mtop --help")
  end
end
