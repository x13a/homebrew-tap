class B2pw < Formula
  version "0.1.0"
  sha256 "250361f2c44b5523e0bd87754c687e43c3ae4b8fcf79e20380730c8110db89a4"

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
  