class MultifonApi < Formula
  version "0.3.1"
  sha256 "3d4b16b221655c715bf2533f96c268dbfa9cb3c2688cff2fe061c22e32fb52f3"

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
