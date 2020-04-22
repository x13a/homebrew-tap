class MultifonApi < Formula
  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "https://bitbucket.org/x31a/multifon-api/get/0.1.8.tar.gz"
  version "0.1.8"
  sha256 "34595758da5dea5a85d75f88e45bf26937d09c353c7ff58bb443ba24d37193e5"
  revision 1

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"multifon-api", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon-api -V 2>&1")
  end
end
