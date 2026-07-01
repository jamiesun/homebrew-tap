class ScootWasm < Formula
  desc "Optional standalone Wasm compute-unit host for scoot"
  homepage "https://github.com/jamiesun/scoot"
  version "0.8.0"
  license "MIT"

  # Installing the host pulls in the agent so wasm_tool works end-to-end.
  depends_on "jamiesun/tap/scoot"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.8.0/scoot-wasm-v0.8.0-macos-arm64.tar.gz"
      sha256 "1951020288048de03cf7404b5e9425c19731123af5040a2a1cf97f0bbcf92c24"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.8.0/scoot-wasm-v0.8.0-macos-amd64.tar.gz"
      sha256 "ca69690d05580e914b8b00eb745e605b8b23d36114dddf0853c0ac3e1d57988a"
    end
  end

  def install
    bin.install "scoot-wasm"
  end

  test do
    assert_path_exists bin/"scoot-wasm"
  end
end
