class Morze < Formula
  desc "Morse coder"
  homepage "https://bitbucket.org/x31a/morze"
  url "https://bitbucket.org/x31a/morze/get/0.0.25.tar.gz"
  version "0.0.25"
  sha256 "da59933cadafa4fe45bb4c3140bc81a6fe20fac98b060e9e51f0b5207f2973a4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/morze -V 2>&1")
  end
end
