class Cleaner < Formula
  version "0.0.5"
  sha256 "6d6f31d15b59e6ac1d484ecad2d2f1f5d38d7390899f40a2acc85c625741b648"

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
