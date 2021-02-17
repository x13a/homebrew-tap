class ExecGuard < Formula
  version "0.3.0"
  sha256 "5d50dafd2463d8d566baf59039806fcd1764d484d356246590dbb4fa7c8d3671"
  
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
  