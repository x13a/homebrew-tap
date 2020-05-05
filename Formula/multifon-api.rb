class MultifonApi < Formula
  version "0.1.12"
  sha256 "8595e102b1d16ce2737987f0551aa644768aeed7b8b8492abd100577232714ec"

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
