class DiscordPrompt < Formula
  version "0.1.0"
  sha256 "7afbf674c6dfae47fc5c1110ec6f786fe28cf36894a9c7e831739181adeb7e9c"

  desc "Discord prompt"
  homepage "https://github.com/x13a/discord-prompt"
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
