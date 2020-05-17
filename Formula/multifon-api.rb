class MultifonApi < Formula
  version "0.1.13"
  sha256 "2802761b1a0db79f3d49b9ab6bbd41012550f3edf11da0c18a61ce5f6659788d"
  revision 7

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
