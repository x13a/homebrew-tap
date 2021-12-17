class Fschk < Formula
  version "0.1.2"
  sha256 "231edbecd1d4ff284c3abdc53e5a00f82b17cdeb8c445b40598ebdbf9f0cc325"

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
  