class Wanted < Formula
    version "0.2.1"
    sha256 "8a0b3f0d5f90d3ce44417c1677912d97438c53a74fc49c20a41a039d9770ee2b"
  
    desc "Run panic tasks on signal or broadcast receive"
    homepage "https://github.com/x13a/wanted"
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
