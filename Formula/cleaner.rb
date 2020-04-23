class Cleaner < Formula
  desc "Cleaner"
  homepage "https://bitbucket.org/x31a/cleaner"
  url "https://bitbucket.org/x31a/cleaner/get/0.0.4.tar.gz"
  version "0.0.4"
  sha256 "1daf1a555703debd45eed63c7fa4cbb0219d5ca626b7438c502793731fca0e99"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"cleaner", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cleaner -V 2>&1")
  end
end
