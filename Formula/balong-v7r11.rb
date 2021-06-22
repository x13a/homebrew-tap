class BalongV7r11 < Formula
    version "0.1.0"
    sha256 "716f126a637c95a68636e2ce8499fb11453939dcb24b5376032af72f475af434"
    revision 2
    
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
