class ExecGuard < Formula
  version "0.1.0"
  sha256 "7e4459427b399565ca1dbbff24e1b1236313752554dea63f558d6b1ba64f7513"
  
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
  