class Wanted < Formula
  version "0.1.4"
  sha256 "7dbdf3aac6aa73e0b7c0c9e98106ee5e4a2a9be2992eae0286dacc5d24cb4d00"

  desc "Run predefined tasks on signal or broadcast receive"
  homepage "https://bitbucket.org/x31a/wanted"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"#{name}", "./src/"
    etc.mkpath
    etc.install "./config/#{name}.json"
    chmod 0600, etc/"#{name}.json"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/#{name} -V 2>&1")
  end
end
