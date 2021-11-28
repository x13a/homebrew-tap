class Pschk < Formula
  version "0.1.1"
  sha256 "63bcb5d7678915982a15d968ed008d1901704121c91501a37d9bcb32e1529da4"

  desc "Find suspicious processes"
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
