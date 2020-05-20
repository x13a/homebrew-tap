class MultifonApi < Formula
  version "0.1.14"
  sha256 "4c8bd862446ca61869e88d6be5e5e94ab96c16f59a59ac99470cd02fbf2c851f"

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
