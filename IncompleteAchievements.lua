DEFAULT_CHAT_FRAME:AddMessage('[IncompleteAchievements] "Incomplete" option has been selected by default in achievements dropdown menu', 1,1,0)
local frame = CreateFrame ("Button", "IncompleteAchievementsFrame", UIParent)
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function (self,event,arg1,...)
	if (event == "ADDON_LOADED" and arg1 == "Blizzard_AchievementUI") then
		SelectIncompleteAchievements()		
	end
end)


function SelectIncompleteAchievements()
	AchievementFrame_SetFilter(ACHIEVEMENT_FILTER_INCOMPLETE);
end