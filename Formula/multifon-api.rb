class MultifonApi < Formula
  version "0.1.13"
  sha256 "89b48b34308dfca8db7b6c7a76b8490f87e78f4bf9d129274d9d5ebc27b6a721"
  revision 3

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
