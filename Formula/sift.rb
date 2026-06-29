class Sift < Formula
  desc "Cost-controlled open-source project auditor"
  homepage "https://github.com/jamiesun/sift"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamiesun/sift/releases/download/v0.1.0/sift-v0.1.0-macos-arm64.tar.gz"
      sha256 "52cb6cb520706a4d73f0cbc4625d45a591a97be5d0130818546a27e9b042e04a"
    else
      url "https://github.com/jamiesun/sift/releases/download/v0.1.0/sift-v0.1.0-macos-amd64.tar.gz"
      sha256 "a124bb39f9b2c606fbe1d726a7bef593beaf458a9672b2dc05473ff16a9664f6"
    end
  end

  def install
    bin.install "sift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sift --version")
  end
end
