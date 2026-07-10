cask "looped-whisper" do
  version "0.7.0"
  sha256 "b51a0060fa57a9c3c4fd81c67d2d9ed34f90c57aba040882802b67098baa5fcf"

  url "https://github.com/loopedautomation/whisper/releases/download/v#{version}/LoopedWhisper-#{version}.dmg"
  name "Looped Whisper"
  desc "Local voice transcription for macOS — on-device Whisper models"
  homepage "https://github.com/loopedautomation/whisper"

  # The app updates itself in place (in-app "Restart to Update"),
  # so tell Homebrew not to treat version drift as outdated.
  auto_updates true

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "LoopedWhisper.app"

  zap trash: [
    "~/Library/Application Support/Looped Whisper",
    "~/Library/Preferences/com.looped.whisper.plist",
  ]
end
