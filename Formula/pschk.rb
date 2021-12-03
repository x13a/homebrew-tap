class Pschk < Formula
  version "0.1.3"
  sha256 "79fec08d9ae4f6d8a34cd305677359ca3cd8973f5a46b24f4d6cf38803f6bcea"

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
