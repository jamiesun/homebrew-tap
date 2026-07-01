class Sift < Formula
  desc "Cost-controlled open-source project auditor"
  homepage "https://github.com/jamiesun/sift"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/sift/releases/download/v0.3.0/sift-v0.3.0-macos-arm64.tar.xz"
      sha256 "8cc48ad59c921d426a27686f8e84c55cf189e35fe32d2c24edd2e938b4a56fd8"
    else
      url "https://github.com/jamiesun/sift/releases/download/v0.3.0/sift-v0.3.0-macos-amd64.tar.xz"
      sha256 "0ce8a6f81e6785962cd4ca4ceb6ddd6b17b86bd5fd5ba006e4123e4fea704a9c"
    end
  end

  def install
    bin.install "sift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sift --version")
  end
end
