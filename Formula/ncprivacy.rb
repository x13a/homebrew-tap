class Ncprivacy < Formula
  include Language::Python::Virtualenv

  version "0.1.3"
  sha256 "ea1cc9a545b80b7318f770b7fa779b3446dd80cbf8c0086cd7cb9dbbc4654cd5"

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
