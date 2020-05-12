class Cleaner < Formula
  version "0.0.7"
  sha256 "18e4199fc087e239052505d137d7d26e090bace2ee6d8c690e98cca8492abf50"

  desc "Run predefined tasks on signal receive"
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
