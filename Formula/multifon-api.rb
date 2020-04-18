class MultifonApi < Formula
  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "https://bitbucket.org/x31a/multifon-api/get/0.1.7.tar.gz"
  version "0.1.7"
  sha256 "1443f8eac4970c6d4f41742a085eb7c89729b7328b14a36486a5fbcdad62b0a3"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"multifon-api", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon-api -V 2>&1")
  end
end
