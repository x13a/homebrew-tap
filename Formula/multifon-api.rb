class MultifonApi < Formula
  version "0.1.13"
  sha256 "5d345955b1f0f66c747a55eeab8d4ed866f3fd1c758062a4753d73c9b5466e9e"
  revision 4

  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"#{name}", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
