class MultifonApi < Formula
  version "0.1.17"
  sha256 "9facec7d65d5e63355fe64f6718c78c0e15eb0996f7ee03871fbc05ddb6bb3b6"

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
