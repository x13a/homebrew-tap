class Netlock < Formula
  desc "Network lock (killswitch)"
  homepage "https://bitbucket.org/x31a/netlock"
  url "https://bitbucket.org/x31a/netlock/get/0.0.30.tar.gz"
  version "0.0.30"
  sha256 "17a6b9be70234f8998cc5efc1ae5b8a4e6946d8d9cc751d9c11371873eeac2f8"

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
