class Unlike < Formula
  version "0.1.1"
  sha256 "07caed510333c93fca8e142e40e306c363fb24530fd5ed5c439da906e07695be"

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
  