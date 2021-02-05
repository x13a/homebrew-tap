class MultifonApi < Formula
  version "0.1.1"
  sha256 "8db11a686b3e9330b8b0abe66144bb5c8cd71b1a42d67b1cb20a628970b2e6d6"

  desc "Multifon API"
  homepage "https://github.com/x13a/multifon-api"
  url "#{homepage}/archive/#{version}.tar.gz"

  depends_on "rust" => :build

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon -V 2>&1")
  end
end
