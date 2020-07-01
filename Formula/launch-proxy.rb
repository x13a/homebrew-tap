class LaunchProxy < Formula
  version "0.1.1"
  sha256 "fdc9a9d114417d8b17010e7ff7fd9f3fc2b7e1ead2fa6621448de4a834a7a9bc"

  desc "Launch daemon sockets proxy for macOS"
  homepage "https://bitbucket.org/x31a/launch-proxy"
  url "#{homepage}/get/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    system "make"
    sbin.install "./target/#{name}"
  end

  plist_options :startup => true

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>KeepAlive</key>
        <true/>
        <key>RunAtLoad</key>
        <true/>
        <key>ProgramArguments</key>
        <array>
          <string>#{opt_sbin}/#{name}</string>
          <string>-d</string>
          <string>:5350</string>
          <string>-p</string>
          <string>/Library/LaunchDaemons/#{plist_name}</string>
        </array>
        <key>UserName</key>
        <string>nobody</string>
        <key>GroupName</key>
        <string>nogroup</string>
        <key>StandardOutPath</key>
        <string>/dev/null</string>
        <key>StandardErrorPath</key>
        <string>/dev/null</string>
        <key>Sockets</key>
        <dict>
          <key>tcp4</key>
          <dict>
            <key>SockNodeName</key>
            <string>127.0.0.1</string>
            <key>SockServiceName</key>
            <string>domain</string>
            <key>SockType</key>
            <string>stream</string>
            <key>SockFamily</key>
            <string>IPv4</string>
            <key>SockProtocol</key>
            <string>TCP</string>
          </dict>
          <key>udp4</key>
          <dict>
            <key>SockNodeName</key>
            <string>127.0.0.1</string>
            <key>SockServiceName</key>
            <string>domain</string>
            <key>SockType</key>
            <string>dgram</string>
            <key>SockFamily</key>
            <string>IPv4</string>
            <key>SockProtocol</key>
            <string>UDP</string>
          </dict>
        </dict>
      </dict>
    </plist>
  EOS
  end

  test do
    assert_match version.to_s, shell_output("#{sbin}/#{name} -V 2>&1")
  end
end
