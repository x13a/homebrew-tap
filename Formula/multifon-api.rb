class MultifonApi < Formula
  version "0.1.13"
  sha256 "c1f7d150aeda8c77bd26de2e7b7249b24bb23c3728c4253b3e2f669cb98c800a"
  revision 5

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
