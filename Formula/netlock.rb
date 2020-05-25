class Netlock < Formula
  version "0.1.2"
  sha256 "b5e71a31da0271053f6ae201e3547fb97ebdb3a7b3fd6ed79c14a623ecd4dcc5"

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
