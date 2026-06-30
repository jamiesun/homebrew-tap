class Sift < Formula
  desc "Cost-controlled open-source project auditor"
  homepage "https://github.com/jamiesun/sift"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/sift/releases/download/v0.2.0/sift-v0.2.0-macos-arm64.tar.gz"
      sha256 "5a1492d143daa8eff4fc33ed94bf432fb5d098ace200e2d134c8370de74454c1"
    else
      url "https://github.com/jamiesun/sift/releases/download/v0.2.0/sift-v0.2.0-macos-amd64.tar.gz"
      sha256 "4779be4dca53bf1f20e0197d02e09ccdb3b09f128634c14e907ee018411e9fc9"
    end
  end

  def install
    bin.install "sift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sift --version")
  end
end
