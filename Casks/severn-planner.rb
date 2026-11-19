cask "severn-planner" do
  version "0.1.64,70"
  sha256 "c398d79e1f7921abf2facc9bca7b7048603eb4ba0fa1712c5526275ed2941ccf"

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
