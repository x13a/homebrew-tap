class Balock < Formula
  version "0.2.2"
  sha256 "47360eba83b1a4f7b516cd38132b189beea4221c8d6d7cc77794d3ac4c516d5c"

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
