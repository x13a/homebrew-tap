class Pschk < Formula
  version "0.1.7"
  sha256 "5be871f678e4b4906757be3303469ef689bc19c8d4572147a17108a0c9342622"

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
