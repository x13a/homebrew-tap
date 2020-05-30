class Wanted < Formula
  version "0.0.13"
  sha256 "d8a58148cd180afed323fa1ee6aff792933f97f07490994e08145a0f1a178b29"

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
