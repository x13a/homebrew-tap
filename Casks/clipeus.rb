cask "clipeus" do
  version "1.0.0"
  sha256 "f32a57434223f10699b9a9965b8b21631645de2f1facbaaa749d6ffe6a202776"

  homepage "https://github.com/x13a/ClipeusX"
  url "#{homepage}/releases/download/v#{version}/Clipeus_#{version}.zip"
  name "Clipeus"
  desc "Clipboard cleaner"

  app "Clipeus.app"

  uninstall quit: [
    "me.lucky.clipeus",
  ]
end
