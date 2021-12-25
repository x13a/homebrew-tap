class BotPrompt < Formula
  version "0.2.1"
  sha256 "c8b13fbf5f324e40ae349158ee0fe27e0d2aef00d1ba2525d78f20c88ed0610a"

  desc "Bot prompt"
  homepage "https://github.com/x13a/bot-prompt"
  url "#{homepage}/archive/#{version}.tar.gz"

  depends_on "rust" => :build

  def install
    system "make"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
