class Pschk < Formula
  version "0.1.6"
  sha256 "7d15a59bd1770d2ea0261e4ce47f0eb4d2d688966239b1b89c5e4dd4d8626f09"

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
