class Unlike < Formula
  version "0.1.0"
  sha256 "880fbc8eb0e1f2566a602ed4c77671bee73f49ca337bcd1b6da1ba0b69d991aa"

  desc "Unlike old tweets"
  homepage "https://github.com/x13a/unlike"
  url "#{homepage}/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{opt}/#{name} -V 2>&1")
  end
end
  