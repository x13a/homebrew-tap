class Netlock < Formula
  version "0.1.3"
  sha256 "4116448e8a20da48cf397f1afd8fb6de2fc3b9ab8b48e2a4b7ebb75e4c5e261c"

  desc "Network lock (killswitch)"
  homepage "https://bitbucket.org/x31a/netlock"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    sbin.mkpath
    cp_r bin.children, sbin
    rm_rf bin
  end

  def caveats; <<~EOS
    In many cases netlock requires root privileges, so you will need to run:
    `sudo #{HOMEBREW_PREFIX}/sbin/#{name}`.
    
    You should be certain that you trust any software you grant root privileges.
  EOS
  end

  test do
    assert_match version.to_s, shell_output("#{sbin}/#{name} -V 2>&1")
  end
end
