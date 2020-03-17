class Morze < Formula
  desc "Morse coder"
  homepage "https://bitbucket.org/x31a/morze"
  url "https://bitbucket.org/x31a/morze/get/0.0.26.tar.gz"
  version "0.0.26"
  sha256 "0e8843f61bd547762635d7f5d9b90bc389d8ec222c1799a362f52f7da1c93de5"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/morze -V 2>&1")
  end
end
