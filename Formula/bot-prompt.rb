class BotPrompt < Formula
  version "0.2.0"
  sha256 "c5c06f517c5f699eb51b1da16f50aae8daf1428c8ebfd292c0b4f87418f56059"

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
