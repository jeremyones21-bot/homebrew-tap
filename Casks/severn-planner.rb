cask "severn-planner" do
  version "0.1.66,73"
  sha256 "ceb50088d588c0ff4ef9c0c4c4c82cb93f35473e3f3cb11fdfe7f98b3a5e7239"

  url "https://www.severnplanner.com/mac/Severn-Planner-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Severn Planner"
  desc "School planner that syncs assignments and schedules study time"
  homepage "https://www.severnplanner.com/"

  livecheck do
    url "https://www.severnplanner.com/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Severn Planner.app"

  zap trash: [
    "~/Library/Application Support/com.severnplanner.mac",
    "~/Library/Caches/com.severnplanner.mac",
    "~/Library/HTTPStorages/com.severnplanner.mac",
    "~/Library/Logs/com.severnplanner.mac",
    "~/Library/Preferences/com.severnplanner.mac.plist",
    "~/Library/Saved Application State/com.severnplanner.mac.savedState",
    "~/Library/WebKit/com.severnplanner.mac",
  ]
end
