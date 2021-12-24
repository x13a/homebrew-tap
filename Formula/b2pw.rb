class B2pw < Formula
  version "0.3.1"
  sha256 "62d9456035c0f983abe466e418f6f17a45a26518abd24aba5345568fd99ecfe7"

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
