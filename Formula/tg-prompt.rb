class TgPrompt < Formula
  version "0.1.1"
  sha256 "f470c46828ee99c99beff1bd36a4e3a41d8b6af374cb68f497aab497481faa88"

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
