class ScootEdge < Formula
  desc "Optional standalone fleet companion (status heartbeat + job dispatch) for scoot"
  homepage "https://github.com/jamiesun/scoot"
  version "0.9.0"
  license "MIT"

  # scoot-edge launches the agent as a subprocess, so installing it
  # pulls in scoot for a working end-to-end setup.
  depends_on "jamiesun/tap/scoot"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.0/scoot-edge-v0.9.0-macos-arm64.tar.gz"
      sha256 "7dde3b2fc2b9d4065b1cb9be69a87cbae7a170a4871f4aadd316a4121ae2c78c"
    else
      url "https://github.com/jamiesun/scoot/releases/download/v0.9.0/scoot-edge-v0.9.0-macos-amd64.tar.gz"
      sha256 "57eab60df13840d022fb4ee4d01761d6a5fb608362b2198015f41425ca1160ad"
    end
  end

  def install
    bin.install "scoot-edge"
  end

  test do
    assert_path_exists bin/"scoot-edge"
  end
end
