class Pschk < Formula
  version "0.2.1"
  sha256 "519831c72320781c16781275c23b9162448b38297310fff497992855c13ab093"

  desc "Check for suspicious processes on macOS"
  homepage "https://github.com/x13a/pschk"
  url "#{homepage}/archive/#{version}.tar.gz"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{opt}/#{name} --version 2>&1")
  end
end
