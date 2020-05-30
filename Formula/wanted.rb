class Wanted < Formula
  version "0.0.15"
  sha256 "c8c26d136298623e24edf235d6f543a3eb0449080ce60c70408e9d43e66a8b67"

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
