class Ncprivacy < Formula
  include Language::Python::Virtualenv

  version "0.1.1"
  sha256 "1d0ccbda668476ea694027d849f51fc97b90eb6a93f85a705f8e5abc75ab6762"

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
