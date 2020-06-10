class Wanted < Formula
  version "0.1.6"
  sha256 "e58af3543d90b05a30bf48ed75f9011e5aa399d8b2f30a20a9c8930b674d2263"
  revision 1

  desc "Run predefined tasks on signal or broadcast receive"
  homepage "https://bitbucket.org/x31a/wanted"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
