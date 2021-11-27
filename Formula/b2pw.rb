class B2pw < Formula
  version "0.1.0"
  sha256 "17a7c618f0ca48d83c0476865a14e3efd7baf086a6b798cb9ae985800cb4ad3a"
  revision 1

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
  