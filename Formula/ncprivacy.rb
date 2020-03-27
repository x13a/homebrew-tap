class Ncprivacy < Formula
  include Language::Python::Virtualenv

  desc "MacOS Notification Center Privacy"
  homepage "https://bitbucket.org/x31a/ncprivacy"
  url "https://bitbucket.org/x31a/ncprivacy/get/0.0.7.tar.gz"
  version "0.0.7"
  sha256 "2ccf2b2b3ed3e551935cb68faf87a2088a4ec31e6b069e2242fe251e3b81bc41"
  revision 2

  depends_on "python@3.8"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ncprivacy --version 2>&1")
  end
end
