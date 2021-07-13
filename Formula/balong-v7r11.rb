class BalongV7r11 < Formula
    version "0.2.0"
    sha256 "600b70f11fcfbe95880ce66545b2a3c50f6149c608df72fb5be4b1232b10a0b9"
    
    desc "Bruteforce OEM and NCK codes for Balong V7R11"
    homepage "https://github.com/x13a/balong-v7r11"
    url "#{homepage}/archive/#{version}.tar.gz"
    
    depends_on "zig" => :build
    
    def install
      system "make"
      system "make", "install", "prefix=#{prefix}"
    end
    
    test do
      assert_match version.to_s, shell_output("#{opt}/#{name} -V 2>&1")
    end
  end
