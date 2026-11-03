-- ==========================================================
-- AUTO DUNGEON LOADER
-- ==========================================================
local SCRIPT_URL = "https://https://raw.githubusercontent.com/rfsb-ui/PLgameautomations/refs/heads/main/scripts/dgntools_v1.24.85.lua"

print("Fetching latest Auto Dungeon script...")

local success, response = pcall(function()
	return game:HttpGet(SCRIPT_URL)
end)

if success and response then
	local fn, err = loadstring(response)
	if fn then
		print("Auto Dungeon loaded successfully!")
		task.spawn(fn)
	else
		warn("CRITICAL: Failed to compile script payload:", err)
	end
else
	warn("CRITICAL: Failed to fetch script from repository. Check your URL.")
end
