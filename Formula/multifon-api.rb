class MultifonApi < Formula
  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "https://bitbucket.org/x31a/multifon-api/get/0.0.18.tar.gz"
  version "0.0.18"
  sha256 "18be16b84370419ae9b176159e1f281c35f4604ec1544f1cb8db79bc5f074449"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"multifon-api", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon-api -V 2>&1")
  end
end
