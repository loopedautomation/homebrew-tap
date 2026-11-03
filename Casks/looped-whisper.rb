cask "looped-whisper" do
  version "0.13.0"
  sha256 "d266b1a04439281492f4907207500f95b507a6230e02ecd4879ecccd33531f15"

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
