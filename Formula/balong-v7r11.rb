class BalongV7r11 < Formula
    version "0.1.0"
    sha256 "c8f18bf07f61e4d18da65e117bea73a23b94506a9b1dd3664c0a4cb45d58c0c1"
    revision 1
    
    desc "Bruteforce OEM and NCK codes for Balong V7R11"
    homepage "https://github.com/x13a/balong-v7r11"
    url "#{homepage}/archive/#{version}.tar.gz"
    
    depends_on "rust" => :build
    
    def install
      system "make"
      system "make", "install", "prefix=#{prefix}"
    end
    
    test do
      assert_match version.to_s, shell_output("#{opt}/#{name} -V 2>&1")
    end
  end
