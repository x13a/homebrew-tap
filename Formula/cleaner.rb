class Cleaner < Formula
  desc ""
  version "0.0.4"
  homepage "https://bitbucket.org/x31a/cleaner"
  url "#{homepage}/get/#{version}.tar.gz"
  sha256 "1daf1a555703debd45eed63c7fa4cbb0219d5ca626b7438c502793731fca0e99"
  revision 1

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"#{name}", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
