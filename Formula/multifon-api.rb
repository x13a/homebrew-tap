class MultifonApi < Formula
  version "0.1.13"
  sha256 "9306c5578e0d13d82fa09abd970f5f3a4dc37ef09517a8b26b50643224fe76cb"
  revision 2

  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"#{name}", "./src"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
