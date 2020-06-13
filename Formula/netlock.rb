class Netlock < Formula
  version "0.1.4"
  sha256 "63e623923d5fdd6385a9e49357e080a4c63b7204868b62a670596373fed0e605"

  desc "Network lock (killswitch)"
  homepage "https://bitbucket.org/x31a/netlock"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "rust" => :build

  def install
    system "make"
    sbin.install "./target/release/#{name}"
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
