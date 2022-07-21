class InitProxyd < Formula
  version "0.2.2"
  sha256 "dfdcbb3a4edda7594aa5035fda0cb8e29b20dce6fb3c2e54d1bfb9cd0cace800"

  desc "Init daemons socket activation proxy"
  homepage "https://github.com/x13a/init-proxyd"
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
