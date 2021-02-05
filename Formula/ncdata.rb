class Ncdata < Formula
  include Language::Python::Virtualenv

  version "0.1.5"
  sha256 "967e6fb4e32b8f9ee79bb39f40d9339e4db083cf42854eaec728d4f33ed29130"

  desc "MacOS Notification Center Data"
  homepage "https://github.com/x13a/ncdata"
  url "#{homepage}/archive/#{version}.tar.gz"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
