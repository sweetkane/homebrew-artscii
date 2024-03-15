class Artscii < Formula
  desc "This tool uses AI to generate ascii art from a given prompt."
  homepage "https://github.com/sweetkane/artscii"
  url "https://github.com/sweetkane/artscii/releases/download/v0.0.1/artscii-0.0.1.tar.gz"
  sha256 "tarball_sha256"
  license "Apache-2.0"

  depends_on "TheZoraiz/ascii-image-converter/ascii-image-converter"
  depends_on "python@3.12"

  def install
    bin.install "artscii"
  end

  test do
    system "#{bin}/artscii", "--help"
  end
end
