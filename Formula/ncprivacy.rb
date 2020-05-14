class Ncprivacy < Formula
  include Language::Python::Virtualenv

  version "0.1.3"
  sha256 "6986106375090e2b65b03c2e2b504ae37346eed3afb5efc0789faaf9b5c2188f"
  revision 3

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
