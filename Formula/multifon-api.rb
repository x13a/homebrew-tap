class MultifonApi < Formula
  version "0.2.0"
  sha256 "c3568d3c08df89cb27eaa48f7a702a067dbc93000508ba9f38a7edca585eaad5"
  revision 3

  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon -V 2>&1")
  end
end
