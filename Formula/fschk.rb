class Fschk < Formula
  version "0.1.3"
  sha256 "3675b70d8854ce9ed4cc46999aa47bdc97119f3897cbb5a80a4382302f019789"

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
  