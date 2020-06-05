class Wanted < Formula
  version "0.1.2"
  sha256 "47dc6048e46b65e9b5f262d5d9f1fba51cd782366cd43b9164046b557a813e8e"

  desc "Run predefined tasks on signal or broadcast receive"
  homepage "https://bitbucket.org/x31a/wanted"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"#{name}", "./src/"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
