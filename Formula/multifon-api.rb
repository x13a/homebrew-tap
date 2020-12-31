class MultifonApi < Formula
  version "0.1.0"
  sha256 "f873bee132dee2414135c27f545941d5dbfb01520c9b78d65bb81dcf1660462a"

  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "rust" => :build

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon -V 2>&1")
  end
end
