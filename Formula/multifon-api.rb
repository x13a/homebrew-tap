class MultifonApi < Formula
  version "0.1.16"
  sha256 "ea06156fc818158f33e623164fe60a70dda96c5c16d68723fb04642447828fa5"

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
