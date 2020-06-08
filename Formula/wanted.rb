class Wanted < Formula
  version "0.1.5"
  sha256 "c50882d195100d2e24ba597356f6dc722f0d070a461ee1be8e6de7f41c5ee10e"

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
