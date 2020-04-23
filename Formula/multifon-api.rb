class MultifonApi < Formula
  desc "Multifon API"
  version "0.1.9"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "#{homepage}/get/#{version}.tar.gz"
  sha256 "5b82d188fe6ae3d62d2d9beefe3c8c39d0e4925c2d7f6282c6564ce367558ef0"
  revision 1

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"#{name}", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
