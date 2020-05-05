class Ncprivacy < Formula
  include Language::Python::Virtualenv

  version "0.1.2"
  sha256 "5b4492f3cb20217d18ebd21a91cdb170db8d32e727d00d303622debc415765cf"

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
