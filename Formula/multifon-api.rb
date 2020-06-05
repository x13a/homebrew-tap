class MultifonApi < Formula
  version "0.2.0"
  sha256 "f76f4a76951bf2b06322ad6b83aa1f62121564a01f6e32212ce46cbbfdf2bb82"
  revision 1

  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"multifon", "./src/"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon -V 2>&1")
  end
end
