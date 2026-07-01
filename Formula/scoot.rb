class Scoot < Formula
  desc "Lightweight, local-first, auditable AI agent daemon and CLI in pure Zig"
  homepage "https://github.com/jamiesun/scoot"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.0/scoot-v0.9.0-macos-arm64.tar.gz"
      sha256 "0468d902cc3167850ed9ce56f969e4478907d5fd7522cbafd4b69df3bf7b1c1f"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.0/scoot-v0.9.0-macos-amd64.tar.gz"
      sha256 "b9a20e96f55b48ee873cda37cd52993238967db2f6649f6512a7b6d613b829b5"
    end
  end

  def install
    bin.install "scoot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scoot --version")
  end
end
