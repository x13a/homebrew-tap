class ExecGuard < Formula
  version "0.3.1"
  sha256 "ebbe4595a0ecf023367b24aa2275ac14c5664c9e1f09e0ceefb5c38daa75336f"
  
  desc "Execution guard"
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
  