class ScootWasm < Formula
  desc "Optional standalone Wasm compute-unit host for scoot"
  homepage "https://github.com/jamiesun/scoot"
  version "0.7.0"
  license "MIT"

  # Installing the host pulls in the agent so wasm_tool works end-to-end.
  depends_on "jamiesun/tap/scoot"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.7.0/scoot-wasm-v0.7.0-macos-arm64.tar.gz"
      sha256 "3217815072f4de49b1089218af818dc74a465198b94ba4c2c5ef430f80a37a31"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.7.0/scoot-wasm-v0.7.0-macos-amd64.tar.gz"
      sha256 "e4530380d0a9e50e575c22a020643a868c4a9ce9701a1ea0d8c65c1b1315bee5"
    end
  end

  def install
    bin.install "scoot-wasm"
  end

  test do
    assert_path_exists bin/"scoot-wasm"
  end
end
