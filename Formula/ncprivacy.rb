class Ncprivacy < Formula
  include Language::Python::Virtualenv

  desc "MacOS Notification Center Privacy"
  homepage "https://bitbucket.org/x31a/ncprivacy"
  url "https://bitbucket.org/x31a/ncprivacy/get/0.0.7.tar.gz"
  version "0.0.7"
  sha256 "1a295b6711d4f9d29f11388d71900d97ecbf6c85bb9e084152031b849a3edfa1"
  revision 1

  depends_on "python@3.8"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ncprivacy --version 2>&1")
  end
end
