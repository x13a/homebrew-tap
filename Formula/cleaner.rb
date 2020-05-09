class Cleaner < Formula
  version "0.0.6"
  sha256 "8fc48eb412ed2fca94dc06daf14878b602d9c880dbf8cd24a14d7eda5969eee4"

  desc ""
  homepage "https://bitbucket.org/x31a/cleaner"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"#{name}", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
