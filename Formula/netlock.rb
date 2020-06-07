class Netlock < Formula
  version "0.1.3"
  sha256 "f69d5f47166395ca3ca73b08043225bbb307c6635c0d055b20440cca7e5e2ff2"
  revision 2

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
    Cause `#{name}` requires root privileges, you have to set right permissions:

    $ sudo chown -R root:admin #{sbin}/
    $ sudo chmod +t #{sbin}/
    
    You should be certain that you trust any software you grant root privileges.
  EOS
  end

  test do
    assert_match version.to_s, shell_output("#{sbin}/#{name} -V 2>&1")
  end
end
