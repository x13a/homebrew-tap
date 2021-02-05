class InitProxyd < Formula
  version "0.2.1"
  sha256 "e0b15ba7fb325fc6830077825ddb1532475b1aa3bcd1d11be31e96959898e265"

  desc "Init daemon socket activation proxy"
  homepage "https://github.com/x13a/init-proxyd"
  url "#{homepage}/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{sbin}/#{name} -V 2>&1")
  end
end
