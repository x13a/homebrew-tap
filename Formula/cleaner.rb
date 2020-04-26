class Cleaner < Formula
  version "0.0.4"
  sha256 "4c5702aac4f47b58f3dfcff0dc5dd1e776822d6c33ffe0379fa7637ed4914466"
  revision 5

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
