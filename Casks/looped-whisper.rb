cask "looped-whisper" do
  version "0.9.0"
  sha256 "19260f955b751fef4f140a1d35317e5f4de64a07f46b4c8acc371dd655d8aac0"

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
