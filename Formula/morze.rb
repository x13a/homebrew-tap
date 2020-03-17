class Morze < Formula
  desc "Morse coder"
  homepage "https://bitbucket.org/x31a/morze"
  url "https://bitbucket.org/x31a/morze/get/0.0.27.tar.gz"
  version "0.0.27"
  sha256 "3dee0002b9ae3021eab4f59cb8e01dda957a43c320f793825fb6cf229cb4832f"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/morze -V 2>&1")
  end
end
