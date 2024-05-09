class Pschk < Formula
  version "0.2.0"
  sha256 "c0264ff7c87f7899d1981522f0ecfcd5d3962f9bc69b494458f35155493d33b0"

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
