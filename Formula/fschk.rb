class Fschk < Formula
  version "0.1.0"
  sha256 "1a5df24748bbbfd368aa51663bf9cf0d2f7ef8ef84ef9653844bd317af76a583"

  desc "List persistence items on macOS"
  homepage "https://github.com/x13a/fschk"
  url "#{homepage}/archive/#{version}.tar.gz"

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{opt}/#{name} --version 2>&1")
  end
end
  