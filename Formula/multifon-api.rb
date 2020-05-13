class MultifonApi < Formula
  version "0.1.13"
  sha256 "763fad19d0ced6392a281aaed1cd12bf8781f9713a5feddcdda86a0c9322cbb7"
  revision 6

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
