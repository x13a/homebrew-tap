class Pschk < Formula
  version "0.1.0"
  sha256 "3aa5f9c6d9fd8bb9a8845b67fc36b9135c9636906e725c6e562f77fe32d2082b"

  desc "Find suspicious processes"
  homepage "https://github.com/x13a/pschk"
  url "#{homepage}/archive/#{version}.tar.gz"

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{opt}/#{name} --version 2>&1")
  end
end
