class Ncprivacy < Formula
  include Language::Python::Virtualenv

  version "0.1.3"
  sha256 "fda2fd2e3bdaed1b24d6b8f4333060d8a9b408b45171464fe504e0f6c1022d65"
  revision 4

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
