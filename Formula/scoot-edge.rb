class ScootEdge < Formula
  desc "Optional standalone fleet companion (status heartbeat + job dispatch) for scoot"
  homepage "https://github.com/jamiesun/scoot"
  version "0.8.0"
  license "MIT"

  # scoot-edge launches the agent as a subprocess, so installing it
  # pulls in scoot for a working end-to-end setup.
  depends_on "jamiesun/tap/scoot"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.8.0/scoot-edge-v0.8.0-macos-arm64.tar.gz"
      sha256 "7e01471f8026ac58acfc573b083a972bf85ed3e01a067dd90b0ffbfc03729f76"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.8.0/scoot-edge-v0.8.0-macos-amd64.tar.gz"
      sha256 "64e8a0071b918e3011767f9746bbe719af60d1d47edc894efb4b53f817da53e2"
    end
  end

  def install
    bin.install "scoot-edge"
  end

  test do
    assert_path_exists bin/"scoot-edge"
  end
end
