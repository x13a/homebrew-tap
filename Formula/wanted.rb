class Wanted < Formula
  version "0.1.6"
  sha256 "45365145162a7fccb32f4b6e5fbebab06e83d7dfee6dda8cb9429407351b0be9"
  revision 2

  desc "Run predefined tasks on signal or broadcast receive"
  homepage "https://github.com/x13a/wanted"
  url "#{homepage}/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
