class Wanted < Formula
  version "0.0.9"
  sha256 "281f35fba067b967068b7c1095af77a078ee018265a6b0a7d499a4ae513f6c83"

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
