class MultifonApi < Formula
  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "https://bitbucket.org/x31a/multifon-api/get/0.1.8.tar.gz"
  version "0.1.8"
  sha256 "682bf0fb6db1cfb30b63f8a4443ce27b0953ceed3fe6b78568d0e1cda610bdf1"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"multifon-api", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon-api -V 2>&1")
  end
end
