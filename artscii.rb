class Artscii < Formula
  include Language::Python::Virtualenv

  desc "This tool uses AI to generate ascii art from a given prompt."
  homepage "https://github.com/sweetkane/artscii"
  url "https://github.com/sweetkane/artscii/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "27423197e10e59fdf16a53c6e174217c81f059ec9178a426a73cc35ea17b23f3"
  license "Apache-2.0"

  depends_on "TheZoraiz/ascii-image-converter/ascii-image-converter"
  depends_on "python@3.12"

  resource "requests" do 
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end
  
    def install
    bin.install "artscii.py" => "artscii"
  end

  test do
    system "#{bin}/artscii", "--help"
  end
end
