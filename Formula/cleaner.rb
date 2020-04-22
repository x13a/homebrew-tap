class Cleaner < Formula
  desc "Cleaner"
  homepage "https://bitbucket.org/x31a/cleaner"
  url "https://bitbucket.org/x31a/cleaner/get/0.0.3.tar.gz"
  version "0.0.3"
  sha256 "0bded8bf104b61e4d7a3b81e654394128351aab34825765518bc3213814f53e2"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"cleaner", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cleaner -V 2>&1")
  end
end
