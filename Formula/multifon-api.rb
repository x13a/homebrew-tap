class MultifonApi < Formula
  version "0.1.18"
  sha256 "4a512fc20ba358f34d148d80a3be4edb1dcb5366e3249628ae6e8a7619424bcd"

  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"multifon", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon -V 2>&1")
  end
end
