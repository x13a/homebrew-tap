class Ncprivacy < Formula
  include Language::Python::Virtualenv

  version "0.1.0"
  sha256 "dc4378ce0772cd46b8dc2da497c2c84274d7748ea4795685abbba8091021617a"
  revision 6

  desc "MacOS Notification Center Privacy"
  homepage "https://bitbucket.org/x31a/ncprivacy"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "python@3.8"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} --version 2>&1")
  end
end
