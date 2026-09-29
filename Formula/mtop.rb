class Mtop < Formula
  desc "Cross-platform terminal system monitor"
  homepage "https://github.com/EvarinthoSec/mtop"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EvarinthoSec/mtop/releases/download/v#{version}/mtop-macos-arm64-#{version}.tar.gz"
      sha256 "a6993c614b9c598aaecd0b9f75ccc105d681b65a17ab3081d80cb2b0c98122a5"
    end

    on_intel do
      url "https://github.com/EvarinthoSec/mtop/releases/download/v#{version}/mtop-macos-x86_64-#{version}.tar.gz"
      sha256 "7d253dd925b7a1600b18813e9659a41cd0814fcb8ca702ed94169e7d2dac5847"
    end
  end

  def install
    bin.install "mtop"
  end

  test do
    assert_match "A fast terminal system monitor", shell_output("#{bin}/mtop --help")
  end
end
