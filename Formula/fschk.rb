class Fschk < Formula
  version "0.1.5"
  sha256 "9d7bb97516f8f193137188a2d2ee9ea62262c1f3ac4e905727492b3adef94526"
  version 1

  desc "List persistence items on macOS"
  homepage "https://github.com/x13a/fschk"
  url "#{homepage}/archive/#{version}.tar.gz"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{opt}/#{name} --version 2>&1")
  end
end
  