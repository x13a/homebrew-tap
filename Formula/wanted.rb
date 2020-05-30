class Wanted < Formula
  version "0.0.14"
  sha256 "4b2a89b8712581c2143fddc25d1c9bc10b28dd53b323fa67ad1d12be9e0f4c89"

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
