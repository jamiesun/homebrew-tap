class Scoot < Formula
  desc "Lightweight, local-first, auditable AI agent daemon and CLI in pure Zig"
  homepage "https://github.com/jamiesun/scoot"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.1/scoot-v0.9.1-macos-arm64.tar.gz"
      sha256 "7fdec989325983a416c8a52b9694d49861ab43bcc5658b1c36ade517aa9222dc"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.1/scoot-v0.9.1-macos-amd64.tar.gz"
      sha256 "3261bbd85fcb42e51ff3825a2f24f0187c3563c217ef0e466918dd8ddb13c6ce"
    end
  end

  def install
    bin.install "scoot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scoot --version")
  end
end
