class Ncprivacy < Formula
  include Language::Python::Virtualenv

  version "0.1.2"
  sha256 "70f6fe983888ddf7027144954cce04c21f0b99bca8c740d894ad92cbd4a9199d"
  revision 1

  desc "MacOS Notification Center Privacy"
  homepage "https://bitbucket.org/x31a/ncprivacy"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "python@3.8"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
