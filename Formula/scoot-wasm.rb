class ScootWasm < Formula
  desc "Optional standalone Wasm compute-unit host for scoot"
  homepage "https://github.com/jamiesun/scoot"
  version "0.6.0"
  license "MIT"

  # Installing the host pulls in the agent so wasm_tool works end-to-end.
  depends_on "jamiesun/tap/scoot"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.6.0/scoot-wasm-v0.6.0-macos-arm64.tar.gz"
      sha256 "66912d188ca696b5c8ead1e93f00068b6bd1eca2f540b2f92047e6186ce9abc0"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.6.0/scoot-wasm-v0.6.0-macos-amd64.tar.gz"
      sha256 "8704977359fc92704a0697517cf817b5965ceb3d96907cfdfc58dbc754dfb964"
    end
  end

  def install
    bin.install "scoot-wasm"
  end

  test do
    assert_path_exists bin/"scoot-wasm"
  end
end
