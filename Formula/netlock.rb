class Netlock < Formula
  version "0.1.4"
  sha256 "25d4b99da89b65a09d5a5d50d273fef0cd995683cf3adf6eb2ceb0e106ce4bec"
  revision 1

  desc "Network lock (vpn killswitch)"
  homepage "https://github.com/x13a/netlock"
  url "#{homepage}/archive/#{version}.tar.gz"

  depends_on "rust" => :build

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{sbin}/#{name} -V 2>&1")
  end
end
