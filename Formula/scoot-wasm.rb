class ScootWasm < Formula
  desc "Optional standalone Wasm compute-unit host for scoot"
  homepage "https://github.com/jamiesun/scoot"
  version "0.9.1"
  license "MIT"

  # Installing the host pulls in the agent so wasm_tool works end-to-end.
  depends_on "jamiesun/tap/scoot"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.1/scoot-wasm-v0.9.1-macos-arm64.tar.gz"
      sha256 "b44b6a00a1ac49d59340f178c7f931dd3770ddf68186ed34010adb01caedc10e"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.1/scoot-wasm-v0.9.1-macos-amd64.tar.gz"
      sha256 "c1dc03cae338ee37097e926e735110de9679baedec8548c43ae16ad2cf0dc261"
    end
  end

  def install
    bin.install "scoot-wasm"
  end

  test do
    assert_path_exists bin/"scoot-wasm"
  end
end
