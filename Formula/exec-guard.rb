class ExecGuard < Formula
  version "0.1.0"
  sha256 "6aec11776ee2c8f9483674fba2aa2a41405eefafbb2b23d2b7ce8293129c60b1"
  revision 1
  
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
  