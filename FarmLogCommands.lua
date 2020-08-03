local farmBar = FarmLogBar;

SLASH_FARMLOG1 = "/farmed"
SLASH_FARMLOG2 = "/farmlog"

SlashCmdList["FARMLOG"] = function(self, txt)
	if farmBar:IsShown() then
		farmBar:Hide()
	else
		farmBar:Show()
	end
end
