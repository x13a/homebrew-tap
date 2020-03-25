class Ncprivacy < Formula
  include Language::Python::Virtualenv

  desc "MacOS Notification Center Privacy"
  homepage "https://bitbucket.org/x31a/ncprivacy"
  url "https://bitbucket.org/x31a/ncprivacy/get/0.0.7.tar.gz"
  version "0.0.7"
  sha256 "e60e8baca15306c38f033ad04fac0e5042bc8663c9100fff86aaef4b0e1064d5"

  depends_on "python@3.8"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ncprivacy --version 2>&1")
  end
end
