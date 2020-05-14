class Ncprivacy < Formula
  include Language::Python::Virtualenv

  version "0.1.3"
  sha256 "dc0afd8d8797d09648b8410edb6e486f0afc752f6a06dfcddc12350098a14f2d"
  revision 2

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
