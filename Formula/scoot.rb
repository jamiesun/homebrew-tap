class Scoot < Formula
  desc "Lightweight, local-first, auditable AI agent daemon and CLI in pure Zig"
  homepage "https://github.com/jamiesun/scoot"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.6.0/scoot-v0.6.0-macos-arm64.tar.gz"
      sha256 "3e88c4d479c6f529d9338f6adf304652d3ffb7519fdd2d524d175baf2b7138de"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.6.0/scoot-v0.6.0-macos-amd64.tar.gz"
      sha256 "6d8c8a322c4e362733f815ea97a19f133860e658b4d1c8e195109fd22aa6a611"
    end
  end

  def install
    bin.install "scoot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scoot --version")
  end
end
