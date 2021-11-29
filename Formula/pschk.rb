class Pschk < Formula
  version "0.1.2"
  sha256 "b431ca76a93bc28d59f043c7b3ec2e0bc2961bcf1d47fbba4d305f2364eadadc"

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
