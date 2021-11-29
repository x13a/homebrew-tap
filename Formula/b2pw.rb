class B2pw < Formula
  version "0.2.1"
  sha256 "884c393b8ba46e1dae098ef34df5de59b8d817d159ba98a369f95a39cdc34ed2"

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
