class Gexec < Formula
  version "0.3.2"
  sha256 "0bd6ec2a4da71c0dbbec40f62b3021e320edfe803eab07714ee77ba9a0d9ac96"
  
  desc "Execution guard"
  homepage "https://github.com/x13a/gexec"
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
  