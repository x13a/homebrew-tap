class Fschk < Formula
  version "0.1.4"
  sha256 "7c3919100d9d00a3039afe39315aa247df0f2476f3cd779f1d4227a3df3f3e40"

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
  