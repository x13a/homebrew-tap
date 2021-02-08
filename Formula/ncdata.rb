class Ncdata < Formula
  include Language::Python::Virtualenv

  version "0.1.5"
  sha256 "cb17ba2bcd69cd7e2337a7d7e3b742d059a6796ba695f283495fa42da9ed832d"
  revision 1

  desc "View saved macOS notifications and.. remove them."
  homepage "https://github.com/x13a/ncdata"
  url "#{homepage}/archive/#{version}.tar.gz"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
