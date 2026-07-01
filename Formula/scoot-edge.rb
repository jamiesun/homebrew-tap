class ScootEdge < Formula
  desc "Optional standalone fleet companion (status heartbeat + job dispatch) for scoot"
  homepage "https://github.com/jamiesun/scoot"
  version "0.9.1"
  license "MIT"

  # scoot-edge launches the agent as a subprocess, so installing it
  # pulls in scoot for a working end-to-end setup.
  depends_on "jamiesun/tap/scoot"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.1/scoot-edge-v0.9.1-macos-arm64.tar.gz"
      sha256 "0d8b84e9109b1ecea24b2e854afbf629c632c95d2a3307d1b0cd8844cce0f4d5"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.1/scoot-edge-v0.9.1-macos-amd64.tar.gz"
      sha256 "c1bbfbc1d3781d8c881182c2a391598e7ac97bfd21ede97f07f4e2c0762ed03f"
    end
  end

  def install
    bin.install "scoot-edge"
  end

  test do
    assert_path_exists bin/"scoot-edge"
  end
end
