class Wanted < Formula
  version "0.0.11"
  sha256 "421f63578b5b9ce0330b3c8682b60d02181b580abf8637089c4c9f3f06d12c97"

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
