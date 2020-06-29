class LaunchProxy < Formula
  version "0.1.0"
  sha256 "902188b0159748e848ac035b042b1be8dc2c31111b921a63e819427cb357b41b"

  desc "Launch daemon sockets proxy for macOS"
  homepage "https://bitbucket.org/x31a/launch-proxy"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "make"
    sbin.install "./target/#{name}"
    pkgshare.install "./plist/me.lucky.#{name}.plist"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
