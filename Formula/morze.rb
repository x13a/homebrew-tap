class Morze < Formula
  desc "Morse coder"
  homepage "https://bitbucket.org/x31a/morze"
  url "https://bitbucket.org/x31a/morze/get/0.0.28.tar.gz"
  version "0.0.28"
  sha256 "44c6a497bdd943f0b9f5655a697dd73e08d0830a6d8fa89bd36feb0fabd19594"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/morze -V 2>&1")
  end
end
