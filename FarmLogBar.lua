function FarmLogBar_Update(self, event, ...)
	local totalItemSellPrice = 0
	for bag = 0, NUM_BAG_SLOTS do
		-- Slot 0 is reserved for the bag, start from Slot 1.
		for slot = 1, GetContainerNumSlots(bag) do
			local slotOccupied, itemCount, 
			arg3, arg4, arg5, arg6, itemLink
				= GetContainerItemInfo(bag, slot)
			if slotOccupied then
				local itemName, arg2, itemRarity, 
				itemLevel, itemMinLevel, itemType, 
				itemSubType, itemStackCount, itemEquipLoc, 
				itemTexture, itemSellPrice 
					= GetItemInfo(itemLink)
				totalItemSellPrice = totalItemSellPrice + (itemSellPrice * itemCount)
			end
		end
	end
	self.totalItemSellPrice:SetText(GetCoinTextureString(totalItemSellPrice))
end