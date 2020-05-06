class MultifonApi < Formula
  version "0.1.13"
  sha256 "e92bcb070eceb170c509a546bd6bead114a749c389d99f60ceff285725d978e4"
  revision 1

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
