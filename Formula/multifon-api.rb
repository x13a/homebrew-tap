class MultifonApi < Formula
  desc "Multifon API"
  homepage "https://bitbucket.org/x31a/multifon-api"
  url "https://bitbucket.org/x31a/multifon-api/get/master.tar.gz"
  version "0.0.14"
  sha256 "a2fb6e3ea9eedfee49a9b4d2e5088812433a75e47cf4043a03ba5b00aae8d6a4"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/multifon-api", "./multifon_api"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/multifon-api -V 2>&1")
  end
end
