class Wanted < Formula
  version "0.1.6"
  sha256 "6f76cb56e98d722348d27740d380dd515d9ff28a0a6af9e5e7cc89afb9358f08"

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
