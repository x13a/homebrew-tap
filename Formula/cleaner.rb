class Cleaner < Formula
  desc "Cleaner"
  homepage "https://bitbucket.org/x31a/cleaner"
  url "https://bitbucket.org/x31a/cleaner/get/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "71cf18a25d73dec5042094092b5ceeb3d5ee11d8a933bbc8d2bb86966be577d5"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"cleaner", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cleaner -V 2>&1")
  end
end
