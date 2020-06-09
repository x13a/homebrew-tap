class Ncprivacy < Formula
  include Language::Python::Virtualenv

  version "0.1.4"
  sha256 "16b0207ac12b5654b024c16ee72662231a3d0f646af30e1a5c0515afc3d8e5a5"

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
