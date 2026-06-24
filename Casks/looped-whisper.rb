cask "looped-whisper" do
  version "0.1.1"
  sha256 "aa42ffa89c8630538c8e6f2d96b492a9460da4343e9fc293fd857afa98b31e3b"

  url "https://github.com/loopedautomation/whisper/releases/download/v#{version}/LoopedWhisper-#{version}.zip"
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
