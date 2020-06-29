class MultifonApi < Formula
  version "0.3.0"
  sha256 "200e406b372debf0be28c91c5e674fbf54c80e0d97bf72e688a0826e91156619"

  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon -V 2>&1")
  end
end
