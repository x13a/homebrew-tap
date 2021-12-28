class Unlike < Formula
  version "0.1.2"
  sha256 "4bddbf0403778b0d35eb2f53fb2274b9feb57d499d327f3416e1fe6054b84d9d"

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
  