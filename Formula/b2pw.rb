class B2pw < Formula
  version "0.2.0"
  sha256 "c68afc66e4ee8f834c0a868d8eb22725ad62bdef023e33cf35ab932c95db8469"

  desc "Convert bytes to password"
  homepage "https://github.com/x13a/b2pw"
  url "#{homepage}/archive/#{version}.tar.gz"

  depends_on "zig" => :build

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{opt}/#{name} -V 2>&1")
  end
end
