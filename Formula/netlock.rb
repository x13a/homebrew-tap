class Netlock < Formula
  desc "Network lock (killswitch)"
  homepage "https://bitbucket.org/x31a/netlock"
  url "https://bitbucket.org/x31a/netlock/get/0.0.28.tar.gz"
  version "0.0.28"
  sha256 "cee6c6f23d78c462dba517f9b9eb3f3db9876d5fd3032c6510d20fbc4ffa29c2"

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
