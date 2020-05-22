class MultifonApi < Formula
  version "0.1.15"
  sha256 "9c369c0a2f67bddc2abcf4f9f8eddcad17556670588d894b3ea6adc1de4ee17e"

  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"#{name}", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
