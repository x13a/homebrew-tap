class Morze < Formula
  desc "Morse coder"
  homepage "https://bitbucket.org/x31a/morze"
  url "https://bitbucket.org/x31a/morze/get/0.0.29.tar.gz"
  version "0.0.29"
  sha256 "0be7dedfa5f9f0557ed436ac2738515a29e31b66190be30515abba66fadad740"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/morze -V 2>&1")
  end
end
