class MultifonApi < Formula
  version "0.2.1"
  sha256 "0feef0577de4f225e7de3d03dafa94f2c5a285d6e9575afb75c1e2a35b04b45a"

  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
    prefix.install "config/"
    chmod 0600, prefix/"config/multifon.json"
  end

  def caveats; <<~EOS
    Config sample filepath is #{prefix}/config/multifon.json
  EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon -V 2>&1")
  end
end
