class ScootWasm < Formula
  desc "Optional standalone Wasm compute-unit host for scoot"
  homepage "https://github.com/jamiesun/scoot"
  version "0.9.0"
  license "MIT"

  # Installing the host pulls in the agent so wasm_tool works end-to-end.
  depends_on "jamiesun/tap/scoot"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.0/scoot-wasm-v0.9.0-macos-arm64.tar.gz"
      sha256 "1b13f9e249a2e9e52e6d213049660cda49af7c235f46e22b1064e36250ab4829"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.0/scoot-wasm-v0.9.0-macos-amd64.tar.gz"
      sha256 "8499d6ce6d8a6954fb171b06e036e561a47d9154f79616d0d34c22c71d3fc93f"
    end
  end

  def install
    bin.install "scoot-wasm"
  end

  test do
    assert_path_exists bin/"scoot-wasm"
  end
end
