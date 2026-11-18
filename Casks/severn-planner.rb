cask "severn-planner" do
  version "0.1.63,69"
  sha256 "0d273c664264263bff3caae44b75762661a408669cfb1be56c838946aa7a938f"

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
