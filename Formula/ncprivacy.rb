class Ncprivacy < Formula
  include Language::Python::Virtualenv

  version "0.1.3"
  sha256 "f07bbdbd9558079a6ceb0433adfaf8ce3a66a7fcdd6f6340a8189bfc5c0cbfaa"
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
