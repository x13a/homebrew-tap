class MultifonApi < Formula
  version "0.1.11"
  sha256 "b800ac871c41a0701617fc9f60a9647fcb166015079377aeab4799e13e17480f"

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
