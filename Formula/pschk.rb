class Pschk < Formula
  version "0.3.0"
  sha256 "cd72d253532394dd6d7c14cc30108e027caa705e29fd8e63edaa67eb3499e3c9"

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
