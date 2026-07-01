class Scoot < Formula
  desc "Lightweight, local-first, auditable AI agent daemon and CLI in pure Zig"
  homepage "https://github.com/jamiesun/scoot"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.7.0/scoot-v0.7.0-macos-arm64.tar.gz"
      sha256 "4b20270dfe3c1dd4c4b8c8407abeddd8a87f419bb4ea801b3bc5bd64d1d6a216"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.7.0/scoot-v0.7.0-macos-amd64.tar.gz"
      sha256 "14d7c6f4128bcc3e7bcc4604cedbd2112a6642f5f67b2f7a34b08d264ee4f868"
    end
  end

  def install
    bin.install "scoot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scoot --version")
  end
end
