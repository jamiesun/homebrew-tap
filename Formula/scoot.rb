class Scoot < Formula
  desc "Lightweight, local-first, auditable AI agent daemon and CLI in pure Zig"
  homepage "https://github.com/jamiesun/scoot"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.4.0/scoot-v0.4.0-macos-arm64.tar.gz"
      sha256 "6f70cbe3317b0f1fddb928e5b7f37ce000222429e65dd607fc7353ee89d884be"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.4.0/scoot-v0.4.0-macos-amd64.tar.gz"
      sha256 "3735388454cc18c3087ce8dc78ef69af0a6a96410541b8310901a3e5aa1dab94"
    end
  end

  def install
    bin.install "scoot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scoot --version")
  end
end
