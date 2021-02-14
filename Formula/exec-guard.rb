class ExecGuard < Formula
  version "0.2.0"
  sha256 "62c400f2490f6e069532b4ca575a11052729dff12957e26e54763b95a2aacced"
  
  desc "Binary execution guard"
  homepage "https://github.com/x13a/exec-guard"
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
  