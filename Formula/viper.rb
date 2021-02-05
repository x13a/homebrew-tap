class Viper < Formula
  version "0.1.1"
  sha256 "4ae3915ae2f80a88aa28bc92f54cc42da0a9cdc2133a58c07af6875fcdf6d3f9"

  desc "Wipe files with randomized ASCII dicks"
  homepage "https://github.com/x13a/viper"
  url "#{homepage}/archive/#{version}.tar.gz"

  depends_on "rust" => :build

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{sbin}/#{name} -V 2>&1")
  end
end
  