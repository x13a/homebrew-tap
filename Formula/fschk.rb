class Fschk < Formula
  version "0.1.5"
  sha256 "c5db4863d10cee36afc7f6563b78f0e5b961c8e1792b13b0b756f301ada7244a"

  desc "List persistence items on macOS"
  homepage "https://github.com/x13a/fschk"
  url "#{homepage}/archive/#{version}.tar.gz"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{opt}/#{name} --version 2>&1")
  end
end
  