class Wanted < Formula
  version "0.0.10"
  sha256 "85ed678019973cdd2c8c7471e7755adfe80d0b2998ee943e8e02c9b137912ecc"

  desc "Run predefined tasks on signal receive"
  homepage "https://bitbucket.org/x31a/wanted"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"#{name}", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
