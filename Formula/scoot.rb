class Scoot < Formula
  desc "Lightweight, local-first, auditable AI agent daemon and CLI in pure Zig"
  homepage "https://github.com/jamiesun/scoot"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.8.0/scoot-v0.8.0-macos-arm64.tar.gz"
      sha256 "8ab73f4a9195a7274895bac7a3d5ab8eac9d70d0bc7fe8f78d630a842a0ca11f"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.8.0/scoot-v0.8.0-macos-amd64.tar.gz"
      sha256 "5031bfbc4079f5d4229804503369ab77766c631e5b2b16b419297c4c2e1b971d"
    end
  end

  def install
    bin.install "scoot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scoot --version")
  end
end
