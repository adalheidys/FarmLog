local farmBar = FarmLogBar;

SLASH_FARMLOG_OPEN1 = "/farmed"
SLASH_FARMLOG_OPEN2 = "/farmlog"
SLASH_FARMLOG_TEST1 = "/flnobg"
SLASH_FARMLOG_TEST2 = "/flnobg"

SlashCmdList["FARMLOG_OPEN"] = function(self, txt)
	if farmBar:IsShown() then
		farmBar:Hide()
	else
		farmBar:Show()
	end
end

SlashCmdList["FARMLOG_TEST"] = function(self, txt)
	farmBar:SetBackdropBorderColor(0,0,0,0)
	farmBar:SetBackdropColor(0,0,0,0)
end