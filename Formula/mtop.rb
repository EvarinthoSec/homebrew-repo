class Mtop < Formula
  desc "Cross-platform terminal system monitor"
  homepage "https://github.com/EvarinthoSec/mtop"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EvarinthoSec/mtop/releases/download/v#{version}/mtop-macos-arm64-#{version}.tar.gz"
      sha256 "9745ea8ab77cb47dcfe0bc24a8ce58042c9c66548502b2945781c20c33e90d0b"
    end

    on_intel do
      url "https://github.com/EvarinthoSec/mtop/releases/download/v#{version}/mtop-macos-x86_64-#{version}.tar.gz"
      sha256 "e1d542793c6fdb3d7c1e6d33a0e937abe30882f66932f865cccdf35ca50a8374"
    end
  end

  def install
    bin.install "mtop"
  end

  test do
    assert_match "A fast terminal system monitor", shell_output("#{bin}/mtop --help")
  end
end
