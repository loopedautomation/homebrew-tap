cask "looped-whisper" do
  version "0.5.0"
  sha256 "3270c37dd99bc11fe945ef18cf6f316310f479d2bafe76425d2fa5a50d5360ff"

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
