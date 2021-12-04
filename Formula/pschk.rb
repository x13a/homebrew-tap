class Pschk < Formula
  version "0.1.4"
  sha256 "2f459292d7e712627b113780355ca09d903f2582f9be2ca19f85dc2d3361c15b"

  desc "Check for suspicious processes on macOS"
  homepage "https://github.com/x13a/pschk"
  url "#{homepage}/archive/#{version}.tar.gz"

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{opt}/#{name} --version 2>&1")
  end
end
