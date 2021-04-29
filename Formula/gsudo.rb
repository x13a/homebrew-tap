class Gsudo < Formula
    version "0.1.0"
    sha256 "8ac0e968868ed653de843e5d623af8b968a91d6d12a5b390a2c90412d0640c67"
  
    desc "Sudo GUI helper for macOS"
    homepage "https://github.com/x13a/gsudo"
    url "#{homepage}/archive/#{version}.tar.gz"
  
    depends_on "rust" => :build
  
    def install
      system "make"
      system "make", "install", "prefix=#{prefix}"
    end
  
    test do
      assert_match version.to_s, shell_output("#{sbin}/#{name} -V 2>&1")
    end
  end
  