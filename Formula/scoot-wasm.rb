class ScootWasm < Formula
  desc "Optional standalone Wasm compute-unit host for scoot"
  homepage "https://github.com/jamiesun/scoot"
  version "0.5.0"
  license "MIT"

  # Installing the host pulls in the agent so wasm_tool works end-to-end.
  depends_on "jamiesun/tap/scoot"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.5.0/scoot-wasm-v0.5.0-macos-arm64.tar.gz"
      sha256 "775a5803654722ae93e46cf573e69476205fa86d3c3fa1fe41b644848015f4ce"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.5.0/scoot-wasm-v0.5.0-macos-amd64.tar.gz"
      sha256 "0affb5ef46024e214ed93911c695fa78c17da21dcd3e83ba6958c651cdf6c7fa"
    end
  end

  def install
    bin.install "scoot-wasm"
  end

  test do
    assert_path_exists bin/"scoot-wasm"
  end
end
