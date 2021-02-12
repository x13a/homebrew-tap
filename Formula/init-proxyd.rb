class InitProxyd < Formula
  version "0.2.1"
  sha256 "8c431aa179ad19ecb8a9414966cea4433324c5805da9e3e72b1a1dd8acd17f64"
  revision 1

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
