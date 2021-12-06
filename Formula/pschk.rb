class Pschk < Formula
  version "0.1.5"
  sha256 "bec405ccb07b2bd26375ec405140b1dd8da31160c3cc115bab6870d4058ff6c6"

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
