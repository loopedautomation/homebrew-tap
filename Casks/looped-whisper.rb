cask "looped-whisper" do
  version "0.6.2"
  sha256 "ebb8ed46e36071b9a910bdf51a6c12328253a4f88e9ba1567a4f8a83d1d566b1"

  url "https://github.com/loopedautomation/whisper/releases/download/v#{version}/LoopedWhisper-#{version}.dmg"
  name "Looped Whisper"
  desc "Local voice transcription for macOS — on-device Whisper models"
  homepage "https://github.com/loopedautomation/whisper"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "LoopedWhisper.app"

  zap trash: [
    "~/Library/Application Support/Looped Whisper",
    "~/Library/Preferences/com.looped.whisper.plist",
  ]
end
