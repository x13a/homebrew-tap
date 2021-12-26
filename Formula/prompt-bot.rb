class PromptBot < Formula
  version "0.2.2"
  sha256 "dc226fb665df5c31b8dc922eecc0473da9c5418fcd58fca1510a5a6a6e5ddf30"

  desc "Prompt bot"
  homepage "https://github.com/x13a/prompt-bot"
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
