class Netlock < Formula
  desc "Network lock (killswitch)"
  homepage "https://bitbucket.org/x31a/netlock"
  url "https://bitbucket.org/x31a/netlock/get/0.0.31.tar.gz"
  version "0.0.31"
  sha256 "9f5a1a39232d3a7e2467ccdeccdf637f4a8f596176bed4493538c234aad0774c"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    sbin.mkpath
    cp_r bin.children, sbin
    rm_rf bin
  end

  def caveats; <<~EOS
    In many cases netlock requires root privileges, so you will need to run:
    `sudo #{HOMEBREW_PREFIX}/sbin/netlock`.
    
    You should be certain that you trust any software you grant root privileges.
  EOS
  end

  test do
    assert_match version.to_s, shell_output("#{sbin}/netlock -V 2>&1")
  end
end
