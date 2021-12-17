class Fschk < Formula
  version "0.1.1"
  sha256 "2387ef445f351347c6099ab36b9a78eb9e215a893624aabdaf494d10caf91d46"

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
  