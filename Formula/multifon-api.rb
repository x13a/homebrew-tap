class MultifonApi < Formula
  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "https://bitbucket.org/x31a/multifon-api/get/0.0.19.tar.gz"
  version "0.0.19"
  sha256 "ff0b52b28fbb610fbf7b5664b0ad4be2a06baa9e4df9dfa2a450ae6fed3f0fc1"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"multifon-api", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon-api -V 2>&1")
  end
end
