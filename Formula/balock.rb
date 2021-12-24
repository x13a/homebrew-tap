class Balock < Formula
  version "0.2.3"
  sha256 "8d64c2f340c72d29060b14cf1022c2479a3aa789e7c8d66b194500f482327637"

  desc "Bruteforce OEM and NCK codes for Balong V7R11"
  homepage "https://github.com/x13a/balock"
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
