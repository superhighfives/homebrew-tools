cask "mark-one" do
  version "1.0"
  sha256 "a6bf238d1237899665587c3d87921aa5e3fd9781a2052d90ac01000a33d339a1"

  url "https://github.com/superhighfives/mark-one/releases/download/#{version}/Mark-One-#{version}.dmg"
  name "Mark One"
  desc "Turns an Olympus OM-D E-M5 (Mark I) into a webcam"
  homepage "https://superhighfives.com/mark-one"

  livecheck do
    url "https://superhighfives.com/releases/mark-one/feed"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Mark One.app"

  uninstall quit: "com.superhighfives.markone"

  zap trash: [
    "~/Library/Application Scripts/com.superhighfives.markone",
    "~/Library/Caches/com.superhighfives.markone",
    "~/Library/Containers/com.superhighfives.markone",
    "~/Library/HTTPStorages/com.superhighfives.markone",
    "~/Library/Preferences/com.superhighfives.markone.plist",
  ]
end
