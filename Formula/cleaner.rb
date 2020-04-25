class Cleaner < Formula
  desc ""
  homepage "https://bitbucket.org/x31a/cleaner"
  url "#{homepage}/get/0.0.4.tar.gz"
  sha256 "5a8ecfa2f622772f65ff09bfdabeafccab2271e434d11d2e0c77e5417e7b4696"
  revision 3

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"#{name}", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
