class InitProxyd < Formula
  version "0.2.0"
  sha256 "0ff4222c0c2fe0547de25caa11bdf84669a49c9d5842dbd0aad8d9fec2b27368"
  revision 1

  desc "Init daemon socket activation proxy"
  homepage "https://github.com/x13a/init-proxyd"
  url "#{homepage}/archive/#{version}.tar.gz"

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
          <string>-c</string>
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
          </dict>
          <key>udp4</key>
          <dict>
            <key>SockNodeName</key>
            <string>127.0.0.1</string>
            <key>SockServiceName</key>
            <string>domain</string>
            <key>SockType</key>
            <string>dgram</string>
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
