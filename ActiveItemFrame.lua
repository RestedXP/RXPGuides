local _, addon = ...

local _G = _G
local L = addon.locale.Get

local BackdropTemplate = BackdropTemplateMixin and "BackdropTemplate"
local GetContainerNumSlots = C_Container and C_Container.GetContainerNumSlots or _G.GetContainerNumSlots
local GetContainerItemID = C_Container and C_Container.GetContainerItemID or _G.GetContainerItemID
local GetContainerItemInfo = C_Container and C_Container.GetContainerItemInfo or _G.GetContainerItemInfo
local GetContainerItemCooldown = C_Container and C_Container.GetContainerItemCooldown or _G.GetContainerItemCooldown
local GameTooltip = _G.GameTooltip
local PickupContainerItem = C_Container and C_Container.PickupContainerItem or _G.PickupContainerItem
local GetItemCooldown = (C_Container and C_Container.GetItemCooldown or _G.GetItemCooldown) or function(searchItemID)
	local searchItemName = GetItemInfo(searchItemID);
	if not searchItemName then return end
	for bagID = _G.BACKPACK_CONTAINER, _G.NUM_BAG_FRAMES do
		local slots = GetContainerNumSlots(bagID) or 0;
		for slot = 1, slots do
			local itemInfo = GetContainerItemInfo(bagID, slot);
			if itemInfo and itemInfo.itemID then
				local startTime, duration, isEnabled = GetContainerItemCooldown(bagID, slot);
				if searchItemID == itemInfo.itemID and startTime ~= nil and startTime > 0 then
                    return startTime, duration, isEnabled;
				end
			end
		end
	end
end

addon.GetItemCooldown = GetItemCooldown

local function GetActiveItemList(ref)
    local itemList = {}
    --[[
    if not (ref and ref.activeItems) then
        ref = addon
    end]]
    ref = addon

    if ref.activeSpells then
        for spellId in pairs(ref.activeSpells) do
            if IsPlayerSpell(spellId) then
                local name, rank, icon = GetSpellInfo(spellId)
                table.insert(itemList, {
                    name = name,
                    texture = icon,
                    spell = true,
                    id = spellId,
                })
            end
        end
    end

    for i = 1, _G.INVSLOT_LAST_EQUIPPED do
        local id = GetInventoryItemID("player", i)
        if id and ref.activeItems[id] then
            local itemName, _, _, _, _, _, _, _, _, itemTexture, _, classID =
                GetItemInfo(id)
            table.insert(itemList, {
                name = itemName,
                texture = itemTexture,
                invSlot = i,
                id = id,
                spell = false,
            })
        end
    end

    for bag = _G.BACKPACK_CONTAINER, _G.NUM_BAG_FRAMES do
        for slot = 1, GetContainerNumSlots(bag) do
            local id = GetContainerItemID(bag, slot)
            -- local spell = GetItemSpell(id)
            if id and ref.activeItems[id] then
                local itemName, _, _, _, _, _, _, _, _, itemTexture, _, classID =
                    GetItemInfo(id)
                table.insert(itemList,{
                    name = itemName,
                    texture = itemTexture,
                    bag = bag,
                    slot = slot,
                    id = id,
                    spell = false,
                })
            end
        end
    end
    return itemList
end

local function UpdateCooldowns()
    if not (addon.activeItemFrame and addon.activeItemFrame:IsShown()) then
        return
    end
    local itemFrame = addon.activeItemFrame
    local buttonList = itemFrame.buttonList
    --[[local function FormatCooldown(startTime, remaining, enable)

        if remaining < 60 and remaining > 0 then
            return tostring(math.ceil(remaining))
        elseif remaining <= 0 or startTime == 0 then
            return ""
        elseif remaining >= 60 and remaining < 3600 then
            return tostring(math.ceil(remaining / 60 - 0.5)) .. "m"
        elseif remaining >= 3600 then
            return tostring(math.ceil(remaining / 3600 - 0.5)) .. "h"
        end
    end]]
    for i, btn in ipairs(buttonList) do
        local id = btn.itemId
        if id and btn:IsShown() then
            local start,duration
            if btn.spell then
                start,duration = GetSpellCooldown(id)
            else
                start,duration = GetItemCooldown(id)
            end
            --local remaining, cd
            if start then
                --remaining = start + duration - GetTime()
                --cd = FormatCooldown(start,remaining,enable)
                if btn.cooldown:GetCooldownDuration() == 0 or
                                         not btn.cooldown:IsShown() then
                    btn.cooldown:SetCooldown(start,duration)
                end
            else
                btn.cooldown:Clear()
            end
            -- print(cd)
            --[[if cd ~= btn.cd then
                btn.cd = cd
                btn.text:SetText(cd)
            end]]
        else
            btn.cooldown:Clear()
        end
    end
end

local function UpdateIconFrameVisuals(self,updateFrame)
    self:ClearBackdrop()
    if not addon.settings.profile.activeItemHideBG then
        self:SetBackdrop(addon.RXPFrame.backdrop.edge)
        local r, g, b = unpack(addon.colors.background)
        self:SetBackdropColor(r, g, b, 0.4)
    end
    self.title:ClearBackdrop()
    self.title:SetBackdrop(addon.RXPFrame.backdrop.edge)
    self.title:SetBackdropColor(unpack(addon.colors.background))
    self.title.text:SetFont(addon.font, 9, "")
    self.title.text:SetTextColor(unpack(addon.activeTheme.textColor))
    self.title:SetSize(self.title.text:GetStringWidth() + 14, 19)
    if updateFrame and self.UpdateFrame then
        return self:UpdateFrame()
    end
end

function addon.CreateActiveItemFrame(self, anchor, enableText)

    if not self or self.activeItemFrame then return end

    local f

    if not anchor then
        anchor = UIParent
        self.activeItemFrame = CreateFrame("Frame", "RXPItemFrame", anchor,
                                           BackdropTemplate)
        f = self.activeItemFrame
        f:SetClampedToScreen(true)
        f:EnableMouse(true)
        f:SetMovable(true)
    else
        self.activeItemFrame = CreateFrame("Frame", "$parentItemFrame", anchor,
                                           BackdropTemplate)
        f = self.activeItemFrame
    end

    addon.enabledFrames["activeItemFrame"] = f
    f.IsFeatureEnabled = function()
        return not addon.settings.profile.disableItemWindow and next(GetActiveItemList()) ~= nil
    end

    f.onMouseDown = function()
        if addon.settings.profile.lockFrames and not IsAltKeyDown() then return end
        f:StartMoving()
    end
    function f.onMouseUp() f:StopMovingOrSizing() end
    f:SetScript("OnMouseDown", f.onMouseDown)
    f:SetScript("OnMouseUp", f.onMouseUp)
    f.parent = self
    f.buttonList = {}
    f:SetPoint("CENTER", anchor, "CENTER", 0, 0)

    f:RegisterEvent("SPELL_UPDATE_COOLDOWN")
    f:SetScript("OnEvent",UpdateCooldowns)

    if not f.title then
        f.title = CreateFrame("Frame", "$parent_title", f, BackdropTemplate)
        f.title:SetPoint("TOPLEFT", f, 5, 5)
        f.title.text = f.title:CreateFontString(nil, "OVERLAY")
        f.title.text:ClearAllPoints()
        f.title.text:SetPoint("CENTER", f.title, 2, 1)
        f.title.text:SetJustifyH("CENTER")
        f.title.text:SetJustifyV("MIDDLE")
        f.title.text:SetTextColor(unpack(addon.activeTheme.textColor))
        f.title.text:SetFont(addon.font, 9, "")
        f.title.text:SetText(L"Active Items")
        f.title:EnableMouse(true)
        f.title:SetScript("OnMouseDown", f.onMouseDown)
        f.title:SetScript("OnMouseUp", f.onMouseUp)
    end
    f.UpdateVisuals = UpdateIconFrameVisuals
    f.UpdateFrame = addon.UpdateItemFrame
    f:UpdateVisuals()

    f:SetHeight(40);
end

local fOnEnter = function(self)
    -- print(self.itemId)
    if not GameTooltip:IsForbidden() and self.itemId then
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        if self.bag or self.invSlot then
            GameTooltip:SetInventoryItemByID(self.itemId)
        elseif self.spell then
            GameTooltip:SetSpellByID(self.itemId)
        end
        GameTooltip:Show()
    end
end

local fOnLeave = function(self)
    if not GameTooltip:IsForbidden() then GameTooltip:Hide() end
    if IsMouseButtonDown() and not InCombatLockdown() and (not IsMouseButtonDown("Left") or IsModifierKeyDown()) and not SpellIsTargeting() then
        if self.bag and self.slot then
            PickupContainerItem(self.bag, self.slot)
        end
    end
end

function addon.UpdateItemFrame(itemFrame)
    if not itemFrame then
        if addon.activeItemFrame then
            itemFrame = addon.activeItemFrame
        else
            return
        end
    end

    --[[local stepframe = itemFrame.stepframe
    local step = stepframe.step
    if not (step and step.activeItems) then
        itemFrame:SetAlpha(0.01)
        if not InCombatLockdown() then
            return itemFrame:Hide()
        end
        return
    elseif InCombatLockdown() then
        if itemFrame.step ~= stepframe.step then
            itemFrame:SetAlpha(0.1)
        end
        return
    end

    itemFrame.step = stepframe.step
    ]]

    if InCombatLockdown() then return end
    local buttonList = itemFrame.buttonList
    local itemList = GetActiveItemList()

    itemFrame.title:SetSize(itemFrame.title.text:GetStringWidth() + 10, 17)
    local i = 0
    for _, item in ipairs(itemList) do
        i = i + 1
        local btn = buttonList[i]

        if not btn then
            btn = CreateFrame("Button", "$parentButton" .. i, itemFrame,
                              "SecureActionButtonTemplate")
            btn:SetAttribute("type1", "item")
            btn:SetSize(25, 25)
            if btn.RegisterForClicks and addon.game == "DF" then
                btn:RegisterForClicks("AnyUp","AnyDown")
            end
            table.insert(buttonList, btn)
            local n = #buttonList

            btn:ClearAllPoints()
            if n == 1 then
                btn:SetPoint("BOTTOMLEFT", itemFrame, "BOTTOMLEFT", 6, 6)
            else
                btn:SetPoint("CENTER", buttonList[n - 1], "CENTER", 27, 0)
            end
            btn.icon = btn:CreateTexture(nil, "BACKGROUND");
            local icon = btn.icon
            icon:SetAllPoints(true);
            icon:SetTexture("Interface/Buttons/Button-Backpack-Up");

            --[[btn.text = btn:CreateFontString(nil, "OVERLAY")
            btn.text:ClearAllPoints()
            btn.text:SetPoint("CENTER", btn, 0, 0)
            btn.text:SetJustifyH("CENTER")
            btn.text:SetJustifyV("MIDDLE")
            btn.text:SetTextColor(1, 1, 1)
            btn.text:SetFont(addon.font, 15, "OUTLINE")
            btn.text:SetText("")]]

            btn.cooldown = CreateFrame("Cooldown", "$parentCooldown", btn, "CooldownFrameTemplate")
            btn.cooldown:SetAllPoints();
            btn.cooldown:Hide()

            btn:SetScript("OnEnter", fOnEnter)
            btn:SetScript("OnLeave", fOnLeave)

            local ht = btn:CreateTexture(nil, "HIGHLIGHT")
            ht:SetAllPoints(true)
            ht:SetTexture("Interface\\Buttons\\ButtonHilight-Square")
            ht:SetBlendMode("ADD")
        end

        -- print(id,item.texture,item.name)
        local attribute = "item"
        if item.spell then
            attribute = "spell"
        end
        btn:SetAttribute("type1",attribute)
        btn:SetAttribute(attribute, item.name)
        if btn.itemId ~= item.id and btn.cooldown then
            btn.cooldown:Clear()
        end
        btn.itemId = item.id
        btn.bag = item.bag
        btn.slot = item.slot
        btn.invSlot = item.invSlot
        btn.spell = item.spell

        btn.icon:SetTexture(item.texture)
        btn:Show()
    end
    -- print("s:",i)
    if i > 0 then itemFrame:SetAlpha(1) end

    if i == 0 or addon.settings.profile.disableItemWindow or not addon.settings.profile.showEnabled then
        itemFrame:Hide()
    else
        itemFrame:Show()
    end

    for n = i + 1, #buttonList do buttonList[n]:Hide() end
    local width = math.max(itemFrame.title:GetWidth() + 10, i * 27 + 8)
    itemFrame:SetWidth(width);
    UpdateCooldowns()

end
