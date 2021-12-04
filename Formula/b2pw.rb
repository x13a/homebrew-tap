class B2pw < Formula
  version "0.3.0"
  sha256 "52c51a861f8f898a60f3d15f506d5aa0905664f52d5fe979d57280d87397dba8"

  desc "Convert bytes to password"
  homepage "https://github.com/x13a/b2pw"
  url "#{homepage}/archive/#{version}.tar.gz"

  depends_on "zig" => :build

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{opt}/#{name} -V 2>&1")
  end
end
