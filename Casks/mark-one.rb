cask "mark-one" do
  version "1.0.1"
  sha256 "4c4d3dfa08d850292cfb3e4b2b3fcad3cc5921cb74f40da287803fcdd371258d"

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
