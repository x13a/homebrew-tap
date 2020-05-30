class Wanted < Formula
  version "0.0.12"
  sha256 "8216fa32abbb58de61f631f8deb228be81058227bfd10de0699eb91e36db52e5"

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
