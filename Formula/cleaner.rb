class Cleaner < Formula
  version "0.0.4"
  sha256 "5a8ecfa2f622772f65ff09bfdabeafccab2271e434d11d2e0c77e5417e7b4696"
  revision 4

  desc ""
  homepage "https://bitbucket.org/x31a/cleaner"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"#{name}", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
