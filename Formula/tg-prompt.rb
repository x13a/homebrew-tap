class TgPrompt < Formula
  version "0.1.0"
  sha256 "4365eaa6ffab3ed4512246126acdd28207c89c2084492ed4f81538f9a9f14ce1"

  desc "Telegram prompt"
  homepage "https://github.com/x13a/tg-prompt"
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
