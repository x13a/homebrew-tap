class Pschk < Formula
  version "0.1.7"
  sha256 "449e159b79f7e98e140955c3cd762b133800401f329fbb9b2c9551feb1b80d1e"

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
