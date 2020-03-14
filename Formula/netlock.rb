class Netlock < Formula
  desc "Network lock (killswitch)"
  homepage "https://bitbucket.org/x31a/netlock"
  url "https://bitbucket.org/x31a/netlock/get/0.0.29.tar.gz"
  version "0.0.29"
  sha256 "d1840de9c444494544f0936977f55d334e1fdcc3ed9ac9bf4ad81a61225bdc4c"

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
