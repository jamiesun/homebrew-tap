class Scoot < Formula
  desc "Lightweight, local-first, auditable AI agent daemon and CLI in pure Zig"
  homepage "https://github.com/jamiesun/scoot"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.5.0/scoot-v0.5.0-macos-arm64.tar.gz"
      sha256 "c719caac07aee189ddf105e4782579469e6f03cd840f19a4a8f62a99ccf7e798"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.5.0/scoot-v0.5.0-macos-amd64.tar.gz"
      sha256 "9103f9e2909fd384d19f2c6251ee3af60e28c4e340217f5d320b7a6d58c380df"
    end
  end

  def install
    bin.install "scoot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scoot --version")
  end
end
