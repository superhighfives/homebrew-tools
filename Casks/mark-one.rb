cask "mark-one" do
  version "1.0.4"
  sha256 "b7f61265161bc4f7c78418c0b702be87bf97f0d52d3687ea554eabaa8fabbc04"

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
