class MultifonApi < Formula
  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "https://bitbucket.org/x31a/multifon-api/get/0.1.5.tar.gz"
  version "0.1.5"
  sha256 "9ac243d80df04dc1d7e4e4cae4a52d215e3d3bb4783c73ab372fe73b12f6146e"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"multifon-api", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon-api -V 2>&1")
  end
end
