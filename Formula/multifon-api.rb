class MultifonApi < Formula
  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "https://bitbucket.org/x31a/multifon-api/get/0.0.15.tar.gz"
  version "0.0.15"
  sha256 "677df64a73aabe4defb7f87dd030fbf830924bf0e3110dc27f50d690ceebf156"
  revision 1

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"multifon-api", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon-api -V 2>&1")
  end
end
