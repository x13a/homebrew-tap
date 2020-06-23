class LaunchProxy < Formula
  version "0.0.1"
  sha256 "cc88c651375d3da4362474783263c409c725285c4bc112693f77e1a48975b425"

  desc "Launch service proxy for macOS"
  homepage "https://bitbucket.org/x31a/launch-proxy"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "make"
    sbin.install "./target/#{name}"
    prefix.install "./plist/"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
