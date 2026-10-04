local addonName, addon = ...
local L = addon.locale.Get

local GetItemInfo = C_Item and C_Item.GetItemInfo or _G.GetItemInfo
local GetItemCount = C_Item and C_Item.GetItemCount or _G.GetItemCount
local GetInventoryItemID = _G.GetInventoryItemID
local GetCoinTextureString = C_CurrencyInfo and C_CurrencyInfo.GetCoinTextureString or _G.GetCoinTextureString
local GetContainerNumFreeSlots = C_Container and C_Container.GetContainerNumFreeSlots or _G.GetContainerNumFreeSlots
local GetContainerNumSlots = C_Container and C_Container.GetContainerNumSlots or _G.GetContainerNumSlots
local GetContainerItemID = C_Container and C_Container.GetContainerItemID or _G.GetContainerItemID
local PickupContainerItem = C_Container and C_Container.PickupContainerItem or _G.PickupContainerItem
local UseContainerItem = C_Container and C_Container.UseContainerItem or _G.UseContainerItem
local GetContainerItemInfo = C_Container and C_Container.GetContainerItemInfo or _G.GetContainerItemInfo
local ReturnsContainerItemTable = C_Container and C_Container.GetContainerItemInfo ~= nil
local IsEventValid = C_EventUtils and C_EventUtils.IsEventValid
local ContainerFrame_Update = _G.ContainerFrame_Update
local ContainerFrame_UpdateAll = _G.ContainerFrame_UpdateAll

local DELETE_JUNK_BINDING = "CLICK RXPInventory_DeleteJunk:LeftButton"
local supportedBagAddons = {
    AdiBags = true,
    ArkInventory = true,
    Baganator = true,
    Bagnon = true,
    Baggins = true,
    BaudBag = true,
    BetterBags = true,
    ElvUI = true,
    EllesmereUI = true,
    EllesmereUIBags = true
}

addon.inventoryManager = addon:NewModule("InventoryManager", "AceEvent-3.0")

local session = {
    deletion = {
        bag = nil,
        slot = nil,
        manual = false
    },
    merchant = {
        sellGoods = false,
        opened = false
    },
    binding = {
        index = nil
    },
    items = {
        toOpen = {}
    },
    quiver = {
        projectileType = 0,
        freeSlots = 0,
        slot = nil,
        organize = false,
        closestSlot = {}
    },
    timers = {
        sort = 0,
        update = 0
    },
    bags = {
        update = false
    }
}

local SSHARD = 6265

-- Core InventoryManager
function addon.inventoryManager:Setup()
    RXPCData.discardPile = RXPCData.discardPile or {}

    local wasInitialized = self.initialized

    self:SetupUI()
    self.bagManager:Setup()
    self:RegisterEvent("ADDON_LOADED")

    if not self:IsFeatureEnabled() then
        self:UnregisterAllEvents()
        self:RegisterEvent("ADDON_LOADED")

        if self.DeleteJunkFrame then self.DeleteJunkFrame:SetScript("OnUpdate", nil) end
        if self.clickFrame then self.clickFrame:Hide() end

        for _, icon in pairs(self.junkIcons or {}) do icon:Hide() end
        for frame in pairs(self.hookedFrames or {}) do if frame.JunkIcon then frame.JunkIcon:Hide() end end

        session.deletion.bag = nil
        session.deletion.slot = nil
        session.deletion.manual = false
        session.merchant.sellGoods = false
        session.timers.update = 0
        session.quiver.organize = false
        session.merchant.opened = false
        session.bags.update = false

        return
    end

    if not wasInitialized then
        self.deleteJunkButton = CreateFrame("BUTTON", "RXPInventory_DeleteJunk")
        self.deleteJunkButton:SetScript("OnClick", function() self:DeleteCheapestItem() end)

        BINDING_HEADER_RXPInventory = addon.title
        _G["BINDING_NAME_" .. DELETE_JUNK_BINDING] = L("Delete Cheapest Junk Item")

        self.DeleteJunkFrame = self.DeleteJunkFrame or CreateFrame("Frame", "RXPDeleteJunk", UIParent)
        self.bagUpdateScript = function(this, elapsed) self:OnBagUpdate(elapsed) end
        self.initialized = true
    end

    self:RegisterEvent("ITEM_LOCKED")
    self:RegisterEvent("ITEM_UNLOCKED")
    if IsEventValid and IsEventValid("BAG_CONTAINER_UPDATE") then self:RegisterEvent("BAG_CONTAINER_UPDATE") end
    self:RegisterEvent("BAG_UPDATE_DELAYED")
    self:RegisterEvent("MERCHANT_SHOW")
    self:RegisterEvent("PLAYER_MONEY")
    self:RegisterEvent("LOOT_READY")
    self:RegisterEvent("UI_ERROR_MESSAGE")

    if not self.inputHooksInitialized then
        -- You can only delete items on a hardware input, so hook every keyboard
        -- input and mouse click to our item deletion function.
        if self.DeleteJunkFrame.SetPassThroughButtons then
            -- Post patch 1.15.7 workaround.
            self.clickFrame = CreateFrame("Frame", "RXPJunkHandler", UIParent)
            self.clickFrame:SetAllPoints(UIParent)
            self.clickFrame:SetScript("OnMouseDown", function()
                if self:IsFeatureEnabled() then
                    self:WorldFrameHook()
                    if GetCVarBool("autoLootDefault") ~= IsModifiedClick("AUTOLOOTTOGGLE") then
                        for i = GetNumLootItems(), 1, -1 do LootSlot(i) end
                    end
                end
                self.clickFrame:Hide()
            end)

            local button = "LootButton"
            local current = _G["LootButton1"]
            local i = 1
            while current and i < 10 do
                current:HookScript("OnClick", function() self:WorldFrameHook() end)
                i = i + 1
                current = _G[button .. i]
            end

            self.clickFrame:EnableMouse(false)
            self.clickFrame:SetMouseClickEnabled(true)
            self.clickFrame:EnableMouseMotion(false)
            self.clickFrame:EnableMouseWheel(false)
            self.clickFrame:SetFrameStrata("BACKGROUND")
            self.clickFrame:SetFrameLevel(0)
            self.clickFrame:Hide()
        end

        WorldFrame:HookScript("OnMouseDown", function() self:WorldFrameHook() end)
        WorldFrame:HookScript("OnMouseUp", function() self:WorldFrameHook() end)

        self.DeleteJunkFrame:SetPropagateKeyboardInput(true)
        self.DeleteJunkFrame:SetScript("OnKeyDown", function() self:WorldFrameHook() end)
        self.DeleteJunkFrame:SetScript("OnKeyUp", function() self:WorldFrameHook() end)

        if _G["ContainerFrameItemButton_OnModifiedClick"] then
            hooksecurefunc("ContainerFrameItemButton_OnModifiedClick", function(button, mouseButton)
                local mod = self:GetModKey()
                if not self:IsFeatureEnabled() or not addon.settings.profile.rightClickJunk or not mod or
                    mouseButton ~= "RightButton" then return end
                local parent = button:GetParent()
                local bag = parent and parent:GetID()
                local slot = button:GetID()
                if bag and slot then
                    local id = self.bagManager:GetContainerItemID(bag, slot)
                    self:ToggleJunk(id, bag, slot)
                end
            end)
        end

        hooksecurefunc("ToggleAllBags", function() self:InitializeBags() end)
        hooksecurefunc("ToggleBag", function() self:InitializeBags() end)

        if _G.MainMenuBarBackpackButton then
            _G.MainMenuBarBackpackButton:HookScript("OnClick", function() self:InitializeBags() end)
        end

        self.inputHooksInitialized = true
    end

    if wasInitialized then self.bagManager:UpdateAllBags() end
end

function addon.inventoryManager:SetupUI()
    if self.bagFrame then return end

    self.junkIcons = {}
    self.hookedFrames = {}

    local bagFrame = {}
    for bag = BACKPACK_CONTAINER, NUM_BAG_FRAMES do bagFrame[bag] = {} end
    self.bagFrame = bagFrame
end

function addon.inventoryManager:BAG_CONTAINER_UPDATE()
    if not self:IsFeatureEnabled() then return end

    session.deletion.bag = nil
    session.deletion.slot = nil
    session.timers.update = 0
    session.bags.update = true
    if addon.settings.profile.autoDiscardItems then self:FindJunk() end

    self:ScheduleBagUpdate()
end

function addon.inventoryManager:BAG_UPDATE_DELAYED()
    if not self:IsFeatureEnabled() then return end

    session.deletion.bag = nil
    session.deletion.slot = nil
    session.timers.update = 0
    session.bags.update = true
    if addon.settings.profile.autoDiscardItems then self:FindJunk() end

    self:ScheduleBagUpdate()
end

function addon.inventoryManager:MERCHANT_SHOW()
    if not self:IsFeatureEnabled() then return end

    session.merchant.opened = true
    session.timers.update = 0

    self:ScheduleBagUpdate()
end

function addon.inventoryManager:PLAYER_MONEY()
    if not self:IsFeatureEnabled() or not session.merchant.sellGoods then return end

    session.merchant.opened = true
    session.timers.update = 0.125

    self:ScheduleBagUpdate()
end

function addon.inventoryManager:ITEM_LOCKED(_, bag, slot)
    if not self:IsFeatureEnabled() then return end

    if self.bagManager.activeAdapter.containerPattern ~= "%s" then
        local frame = self.bagFrame[bag] and self.bagFrame[bag][slot]

        if frame then self:HideJunkIcon(frame) end
    end

    self:InitializeBags()
end

function addon.inventoryManager:ITEM_UNLOCKED(_, bag, slot)
    if not self:IsFeatureEnabled() then return end

    if self.bagManager.activeAdapter.containerPattern ~= "%s" then
        local frame = self.bagFrame[bag] and self.bagFrame[bag][slot]

        if frame then self:UpdateBagButton(frame, bag, slot) end
    end

    self:InitializeBags()
end

function addon.inventoryManager:LOOT_READY() self:HandleBagAutomation() end

function addon.inventoryManager:UI_ERROR_MESSAGE(_, flag, msg)
    if not self:IsFeatureEnabled() then return end

    if self.clickFrame and addon.settings.profile.autoDiscardItems and flag == 3 and msg == INVENTORY_FULL and
        LootFrame:IsShown() then self.clickFrame:Show() end

    self:HandleBagAutomation()
end

function addon.inventoryManager:ADDON_LOADED(_, loadedAddon)
    if not supportedBagAddons[loadedAddon] then return end

    self.bagManager.activeAdapter = nil
    self:Setup()
end

function addon.inventoryManager:IsFeatureEnabled()
    return self.bagManager and self.bagManager:IsAvailable() and addon.settings.profile.enableInventoryManager
end

function addon.inventoryManager:GetModKey()
    -- IsAltKeyDown or IsControlKeyDown, shift is used for splitting stacks
    -- Ctrl + Left click is used for dressing room
    local mod = addon.settings.profile.rightClickMod

    if mod == 3 then
        return IsControlKeyDown() and IsAltKeyDown()
    elseif mod == 2 then
        return IsAltKeyDown()
    else
        return IsControlKeyDown()
    end
end

function addon.inventoryManager:FindQuiverSlot()
    if not self:IsFeatureEnabled() then return end

    local free, bagType

    for bag = BACKPACK_CONTAINER, NUM_BAG_FRAMES do
        free, bagType = self.bagManager:GetContainerNumFreeSlots(bag)

        if bit.band(bagType, 3) > 0 then
            session.quiver.slot = bag
            session.quiver.projectileType, session.quiver.freeSlots = bagType, free
        end
    end
end

function addon.inventoryManager:SortQuiver()
    -- Makes sure you only have 1 partial stack at the left most quiver slot for each ammo type
    if not self:IsFeatureEnabled() or addon.gameVersion > 30000 or UnitIsDead('player') then return end
    session.quiver.organize = false

    if not session.quiver.slot then
        self:FindQuiverSlot()
    else
        local _, quiverType = self.bagManager:GetContainerNumFreeSlots(session.quiver.slot)
        if bit.band(quiverType, 3) == 0 then self:FindQuiverSlot() end
    end

    local id

    table.wipe(session.quiver.closestSlot)

    local numQuiverSlots = self.bagManager:GetContainerNumSlots(session.quiver.slot)
    local t = GetTime()
    local colour = addon.guideTextColors["RXP_WARN_"]
    local maxStack
    local stack, locked, destLocked

    if session.deletion.manual then
        session.deletion.manual = false
        addon.comms.PrettyPrint(L("|c%sSorting arrows/bullets|r"), colour)
    elseif t - session.timers.sort > 3 then
        addon.comms.PrettyPrint(L("|c%sInventory is full, sorting arrows/bullets|r"), colour)
    end
    session.timers.sort = t

    for slot = 1, numQuiverSlots do
        id = self.bagManager:GetContainerItemID(session.quiver.slot, slot)

        if id then
            if not session.quiver.closestSlot[id] then session.quiver.closestSlot[id] = numQuiverSlots end
            -- local t = GetItemInfo(id)
            maxStack = select(8, GetItemInfo(id))
            -- print(maxStack)
            stack, locked = select(2, self.bagManager:GetContainerItemInfo(session.quiver.slot, slot))

            -- print('sl',stack,locked)
            if slot < session.quiver.closestSlot[id] then
                session.quiver.closestSlot[id] = slot
            elseif stack < maxStack then
                destLocked = select(3, self.bagManager:GetContainerItemInfo(session.quiver.slot,
                                                                            session.quiver.closestSlot[id]))
                session.quiver.organize = true

                if not (GetCursorInfo() or locked or destLocked) then
                    C_Timer.After(0.01, function()
                        if self:IsFeatureEnabled() and not GetCursorInfo() then
                            self.bagManager:PickupContainerItem(session.quiver.slot, slot)
                            self.bagManager:PickupContainerItem(session.quiver.slot, session.quiver.closestSlot[id])

                            ClearCursor()
                            -- print(session.quiver.slot, slot)
                        end
                    end)

                    break
                end
            end
        end

    end

end

local exceptions = {[6196] = true}

local exclusions = {
    [6948] = true,
    [184871] = true,
    [260221] = true
    -- [6265] = true, --Soul Shard
}

function addon.inventoryManager:GetShardCount(bag, slot)
    local max = tonumber(addon.settings.profile.maxSoulShards) or 100
    local storedShards = 0
    local currentBag, currentSlot, numSlots, itemID

    if not self:IsFeatureEnabled() then return false, max, storedShards end

    if bag and slot then
        for currentBag = BACKPACK_CONTAINER, NUM_BAG_FRAMES do
            numSlots = self.bagManager:GetContainerNumSlots(currentBag)
            if currentBag == bag then numSlots = slot - 1 end

            for currentSlot = 1, numSlots do
                itemID = self.bagManager:GetContainerItemID(currentBag, currentSlot)
                if itemID == SSHARD then storedShards = storedShards + 1 end
            end

            if currentBag == bag then break end
        end
    end

    return GetItemCount(SSHARD) > max, max, storedShards
end

function addon.inventoryManager:IsJunk(id, bag, slot)
    if not self:IsFeatureEnabled() then return false end

    if id == 6265 then
        local bagType = 0

        if bag then _, bagType = self.bagManager:GetContainerNumFreeSlots(bag) end
        if bit.band(bagType) == 0x4 then return false end

        local pass, count, storedShards = self:GetShardCount(bag, slot)
        return bag and slot and pass and storedShards >= count
    elseif not id or exclusions[id] then
        return false
    end

    local discard = RXPCData.discardPile and RXPCData.discardPile[id]
    if discard == nil then
        local _, _, quality = GetItemInfo(id)

        if quality == Enum.ItemQuality.Poor and not exceptions[id] then
            return true
            -- TODO: add an option that ignores auto selling grays if item is an upgrade
        end
        -- TODO: Integrate with item upgrade system to auto sell soulbound greens, check if C_Item.IsBound exists, otherwise parse tooltips, check if character has enchanting or not
    else
        return discard
    end
end

function addon.inventoryManager:SetDiscardedItem(id, discarded)
    RXPCData.discardPile = RXPCData.discardPile or {}

    if discarded == nil then
        RXPCData.discardPile[id] = nil
    else
        RXPCData.discardPile[id] = discarded and true or false
    end
end

function addon.inventoryManager:ToggleJunk(id, bag, slot)
    if not self:IsFeatureEnabled() or not id or exclusions[id] then return end

    local junk = self:IsJunk(id, bag, slot)
    local _, link = GetItemInfo(id)
    local colour = addon.guideTextColors["RXP_WARN_"]

    self:SetDiscardedItem(id, not junk)

    if junk then
        addon.comms.PrettyPrint(L("|c%sSet %s as useful|r"), colour, link)
    else
        addon.comms.PrettyPrint(L("|c%sSet %s as junk|r"), colour, link)
    end

    self.bagManager:UpdateAllBags()

    addon:SendEvent("RXP_JUNK", id, bag, slot)
end

function addon.inventoryManager:FindJunk(deleteItem)
    if not self:IsFeatureEnabled() then return end

    session.deletion.bag = nil
    session.deletion.slot = nil

    if session.quiver.organize then self:SortQuiver() end
    session.quiver.freeSlots = 0

    local freeSlots, bagType
    local ammoFlags
    for bag = BACKPACK_CONTAINER, NUM_BAG_FRAMES do
        freeSlots, bagType = self.bagManager:GetContainerNumFreeSlots(bag)
        -- print(bagType,freeSlots,deleteItem)
        if bagType and bagType == 0 and freeSlots and freeSlots > 0 and not deleteItem and not self:GetShardCount() then
            return
        end

        ammoFlags = bit.band(bagType or 0, 3) + 1
        -- bit flag 1 for arrows, 2 for guns, according to ItemBagFamily.db2
        -- add 1 to compare with Enum.ItemWeaponSubclass (2 for arrows, 3 for bullets)
        if ammoFlags > 1 then
            session.quiver.slot = bag
            session.quiver.projectileType = ammoFlags
            session.quiver.freeSlots = freeSlots
        end
    end

    local movingAmmo
    local bestBag, bestSlot
    local bestValue = math.huge
    local numSlots
    local isProjectile
    local id
    local stackMax
    local price, class, subclass
    local count
    local _
    local value

    for bag = BACKPACK_CONTAINER, NUM_BAG_FRAMES do
        bagType = select(2, self.bagManager:GetContainerNumFreeSlots(bag))
        if not bagType or bagType > 2 then
            numSlots = 0
        else
            numSlots = self.bagManager:GetContainerNumSlots(bag)
        end

        for slot = 1, numSlots do
            isProjectile = nil
            id = self.bagManager:GetContainerItemID(bag, slot)

            if id then
                _, _, _, _, _, _, _, stackMax, _, _, price, class, subclass = GetItemInfo(id)
                if bagType == 0 and class == Enum.ItemClass.Projectile and subclass == session.quiver.projectileType then
                    isProjectile = true
                end

                if not (isProjectile or movingAmmo) then
                    count = select(2, self.bagManager:GetContainerItemInfo(bag, slot))

                    if stackMax and count and self:IsJunk(id, bag, slot) then
                        -- local item_count = select(2, self.bagManager:GetContainerItemInfo(bag, slot))
                        price = price or 0
                        value = (stackMax + count) * price / 2
                        if value < bestValue then
                            bestBag = bag
                            bestSlot = slot
                            bestValue = value
                            -- print(bestBag,bestSlot)
                        end
                    end
                elseif isProjectile and session.quiver.freeSlots > 0 then
                    movingAmmo = true
                    bestBag, bestSlot, bestValue = nil, nil, nil
                    self.bagManager:PickupContainerItem(bag, slot)

                    PutItemInBag(session.quiver.slot + CharacterBag0Slot:GetID() - 1)

                    -- CharacterBag0Slot:BagSlotButton_OnClick()
                    -- /run local bagframe = _G["CharacterBag".. tostring(1 - 1) .."Slot"] local f = bagframe:GetScript("OnClick") print(f) f(bagframe,"LeftButton")

                    session.quiver.freeSlots = session.quiver.freeSlots - 1
                end
            end
        end
    end

    if movingAmmo then
        self:SortQuiver()
    elseif bestBag and bestSlot then
        session.deletion.bag = bestBag
        session.deletion.slot = bestSlot
    elseif self.clickFrame then
        self.clickFrame:Hide()
    end
    -- print(bestBag,bestSlot)
end

function addon.inventoryManager:DeleteItems()
    if not self:IsFeatureEnabled() then return end

    if session.merchant.sellGoods and MerchantFrame:IsShown() and MerchantFrame.selectedTab == 1 then
        self:ProcessJunk(true)

        return
    elseif UnitIsDead('player') or GetCursorInfo() then
        return
    elseif session.deletion.bag then
        local bag, slot = session.deletion.bag, session.deletion.slot
        local itemID = self.bagManager:GetContainerItemID(bag, slot)
        local _, stack, _, _, _, _, link = self.bagManager:GetContainerItemInfo(bag, slot)

        if not itemID or not self:IsJunk(itemID, bag, slot) then
            session.deletion.bag = nil
            session.deletion.slot = nil
            if addon.settings.profile.autoDiscardItems then self:FindJunk() end

            return
        end

        self.bagManager:PickupContainerItem(bag, slot)
        DeleteCursorItem()

        local colour = addon.guideTextColors["RXP_WARN_"]

        if link then
            if session.deletion.manual or itemID == SSHARD then
                addon.comms.PrettyPrint(L("|c%sDeleting %sx%s|r"), colour, link, stack)
            else
                addon.comms.PrettyPrint(L("|c%sInventory is full, deleting %sx%s|r"), colour, link, stack)
            end
        end

        session.deletion.bag = nil
        session.deletion.slot = nil
    elseif session.quiver.organize and not InCombatLockdown() then
        self:SortQuiver()
    end
end

function addon.inventoryManager:DeleteCheapestItem(deleteIfFull)
    if not self:IsFeatureEnabled() then return end

    session.deletion.manual = true

    self:FindJunk(not deleteIfFull)
    self:DeleteItems(true)

    session.deletion.manual = false
end

function addon.inventoryManager:OpenItems(itemID, clear)
    if clear then
        table.wipe(session.items.toOpen)

        return
    elseif itemID then
        session.items.toOpen[itemID] = true

        return
    end

    if not self:IsFeatureEnabled() or not next(session.items.toOpen) then return end

    local locked, id

    for bag = _G.BACKPACK_CONTAINER, _G.NUM_BAG_FRAMES do
        for slot = 1, self.bagManager:GetContainerNumSlots(bag) do
            _, _, locked, _, _, _, _, _, _, id = self.bagManager:GetContainerItemInfo(bag, slot)

            if not locked and session.items.toOpen[id] then self.bagManager:UseContainerItem(bag, slot) end
        end
    end
end

function addon.inventoryManager:GetSellKeybind()
    local index = session.binding.index
    local command, _, key = GetBinding(index or 1)

    if command == DELETE_JUNK_BINDING then return key end

    for index = 1, GetNumBindings() do
        command, _, key = GetBinding(index)
        if command == DELETE_JUNK_BINDING then
            session.binding.index = index

            return key
        end
    end
end

function addon.inventoryManager:SetSellKeybind(key)
    local index = session.binding.index
    local command, _, currentKey = GetBinding(index or 1)

    if command == DELETE_JUNK_BINDING and currentKey then SetBinding(currentKey) end

    SetBinding(key, DELETE_JUNK_BINDING)
end

function addon.inventoryManager:WorldFrameHook()
    -- local n = self and self:GetName()
    -- print(n,...)
    if self:IsFeatureEnabled() and addon.settings.profile.autoDiscardItems then self:DeleteItems() end

    if self:IsFeatureEnabled() then self:OpenItems() end
end

function addon.inventoryManager:ShowJunkIcon(frame)
    if not self:IsFeatureEnabled() then return end

    if not frame.RXPJunkIcon then
        local texture = frame:CreateTexture(nil, "OVERLAY")

        table.insert(self.junkIcons, texture)
        texture:SetSize(16, 16)
        texture:SetPoint(self.bagManager.activeAdapter.alignment, 1, -1)
        frame.RXPJunkIcon = texture
    end

    frame.RXPJunkIcon:SetTexture(addon.v2:GetAuctionHouseTheme().valueIcon)
    frame.RXPJunkIcon:SetShown(addon.settings.profile.showJunkIcon)

end

function addon.inventoryManager:HideJunkIcon(frame) if frame.RXPJunkIcon then frame.RXPJunkIcon:Hide() end end

function addon.inventoryManager:UpdateBagButton(button, bag, slot)
    if not self:IsFeatureEnabled() then return end

    local id = self.bagManager:GetContainerItemID(bag, slot)

    local isJunk = self:IsJunk(id, bag, slot)
    -- print(bag,slot,isJunk)
    if isJunk then
        self:ShowJunkIcon(button)
    else
        self:HideJunkIcon(button)
    end
end

function addon.inventoryManager:CatalogInventory()
    local itemList = {}
    local itemName, itemTexture, id, bagSlots

    if not self:IsFeatureEnabled() then return itemList end

    for i = 1, _G.INVSLOT_LAST_EQUIPPED do
        id = GetInventoryItemID("player", i)

        if id then
            itemName = GetItemInfo(id)
            itemTexture = select(10, GetItemInfo(id))
            table.insert(itemList, {name = itemName, texture = itemTexture, invSlot = i, id = id})
        end
    end

    for bag = _G.BACKPACK_CONTAINER, _G.NUM_BAG_FRAMES do
        bagSlots = self.bagManager:GetContainerNumSlots(bag)

        for slot = 1, bagSlots do
            id = self.bagManager:GetContainerItemID(bag, slot)

            if id then
                itemName = GetItemInfo(id)
                itemTexture = select(10, GetItemInfo(id))

                table.insert(itemList, {name = itemName, texture = itemTexture, bag = bag, slot = slot, id = id})
            end
        end
    end

    return itemList
end

function addon.inventoryManager:GetBagItemFrame(bag, slot)
    if not self:IsFeatureEnabled() then return end

    local frame = self.bagFrame and self.bagFrame[bag] and self.bagFrame[bag][slot]
    if not frame then
        self.bagManager:UpdateAllBags()
        frame = self.bagFrame and self.bagFrame[bag] and self.bagFrame[bag][slot]
    end

    return frame
end

function addon.inventoryManager:ScheduleBagUpdate()
    if self.DeleteJunkFrame then self.DeleteJunkFrame:SetScript("OnUpdate", self.bagUpdateScript) end
end

function addon.inventoryManager:OnBagUpdate(elapsed)
    local frame = self.DeleteJunkFrame

    if not frame then return end

    if not self:IsFeatureEnabled() then
        frame:SetScript("OnUpdate", nil)
        session.timers.update = 0
        session.merchant.opened = false
        session.bags.update = false

        return
    end

    session.timers.update = session.timers.update + elapsed
    if session.timers.update > 0.33 then
        if session.merchant.opened then
            session.merchant.opened = false
            self:ProcessJunk(true)
        end

        if session.bags.update then
            session.bags.update = false
            self.bagManager:UpdateAllBags()
        end

        session.timers.update = 0
        frame:SetScript("OnUpdate", nil)
    end
end

function addon.inventoryManager:InitializeBags()
    if not self:IsFeatureEnabled() then return end
    if next(self.junkIcons) then return end

    session.bags.update = true
    self:ScheduleBagUpdate()
    -- UpdateAllBags()
end

function addon.inventoryManager:ProcessJunk(sellWares, override)
    if not self:IsFeatureEnabled() then return 0 end

    local isMerchant = sellWares and MerchantFrame:IsShown() and MerchantFrame.selectedTab == 1 and
                           (addon.settings.profile.autoSellJunk or override)

    local totalCost = 0
    local itemsToSell = {}
    local id, stack, locked, quality, junk, price, itemValue

    for bag = BACKPACK_CONTAINER, NUM_BAG_FRAMES do
        for slot = 1, self.bagManager:GetContainerNumSlots(bag) do
            id = self.bagManager:GetContainerItemID(bag, slot)
            stack, locked, quality = select(2, self.bagManager:GetContainerItemInfo(bag, slot))
            junk = self:IsJunk(id, bag, slot)

            if junk then
                price = select(11, GetItemInfo(id))
                if type(price) == "number" and type(stack) == "number" then
                    itemValue = price * stack
                    if isMerchant and itemValue > 0 then
                        table.insert(itemsToSell, {bag = bag, slot = slot, value = itemValue, quality = quality})
                    end

                    totalCost = totalCost + itemValue
                end
            end
        end
    end

    if totalCost == 0 then
        if session.merchant.sellGoods then
            local value = GetMoney() - session.merchant.sellGoods
            local colour = addon.guideTextColors["RXP_WARN_"]

            if value > 0 then
                addon.comms.PrettyPrint(L("|c%sSold junk items for|r %s"), colour, GetCoinTextureString(value))
            end

            session.merchant.sellGoods = false
        end
    elseif isMerchant then
        session.merchant.sellGoods = session.merchant.sellGoods or GetMoney()
        -- Sorts the item list to sell low quality/cheap items first, in case of needing to buy stuff back
        table.sort(itemsToSell, function(i1, i2)
            if i1.quality == i2.quality then
                return i1.value < i2.value
            else
                return i1.quality < i2.quality
            end
        end)

        for _, item in ipairs(itemsToSell) do
            self.bagManager:PickupContainerItem(item.bag, item.slot)
            PickupMerchantItem()
        end

    end

    return totalCost
end

function addon.inventoryManager:ResetJunk()
    if not self:IsFeatureEnabled() then return end

    RXPCData.discardPile = {}
    self.bagManager:UpdateAllBags()
    addon:SendEvent("RXP_JUNK")
end

function addon.inventoryManager:GetNetWorth()
    if not self:IsFeatureEnabled() then return GetMoney() end

    local inventory = self:ProcessJunk()
    return GetMoney() + inventory
end

function addon.inventoryManager:OnClickHook(button, mouseButton, ...)
    if not self:IsFeatureEnabled() or not addon.settings.profile.rightClickJunk then return end

    local bag, slot = self.bagManager:GetButtonLocation(button)
    local mod = self:GetModKey()

    if not mod or mouseButton ~= "RightButton" then return end
    if bag and slot then
        local id = self.bagManager:GetContainerItemID(bag, slot)
        self:ToggleJunk(id, bag, slot)
        if button.JunkIcon and self.hookedFrames[button] ~= "ElvUI" then
            button.JunkIcon:SetShown(addon.settings.profile.showJunkIcon and id and self:IsJunk(id, bag, slot) and
                                         button:IsShown())
        end

        if _G.Baganator and _G.Baganator.API and _G.Baganator.API.RequestItemButtonsRefresh then
            _G.Baganator.API.RequestItemButtonsRefresh()
        end
    end
end

function addon.inventoryManager:HandleBagAutomation()
    if not self:IsFeatureEnabled() then return end

    if self.clickFrame and not addon.settings.profile.autoDiscardItems then self.clickFrame:Hide() end
    if addon.settings.profile.autoDiscardItems then self:FindJunk() end
end

-- Junk icons have to hook into existing UI elements, different bag UI mods have
-- different frame names and update paths.
addon.inventoryManager.bagManager = {}
addon.inventoryManager.bagManager.returnsItemTable = ReturnsContainerItemTable

function addon.inventoryManager.bagManager:Setup()
    self:LoadAdapters()
    self:SelectAdapter()
    if not addon.inventoryManager:IsFeatureEnabled() then return end

    if not self.onClickHook then
        self.onClickHook = function(button, mouseButton, ...)
            addon.inventoryManager:OnClickHook(button, mouseButton, ...)
        end
    end

    self:HookBags()

    self.initialized = true
end

addon.inventoryManager.bagManager.adapters = {
    Default = {
        containerPattern = "%sItem%d",
        containerName = "ContainerFrame%d",
        containerIndex = -1,
        alignment = "TOPLEFT"
    },
    Bagnon = {
        containerPattern = "%s",
        containerName = "BagnonContainerItem%d",
        custom = true,
        clickHook = true
    },
    ElvUI = {
        containerPattern = "%sSlot%d",
        containerName = "ElvUI_ContainerFrameBag%d",
        clickHook = true
    },
    AdiBags = {
        containerPattern = "%s",
        containerName = "AdiBagsItemButton%d",
        clickHook = true
    },
    BetterBags = {
        containerPattern = "%s",
        containerName = "BetterBagsItemButton%d",
        clickHook = true
    },
    Baggins = {
        containerPattern = "%s",
        containerName = "BagginsPooledItemButton%d",
        clickHook = true
    },
    ArkInventory = {
        containerPattern = "%sItem%d",
        containerName = "ARKINV_Frame1ScrollContainerBag%d",
        clickHook = true
    },
    BaudBag = {
        containerPattern = "%sItem%d",
        containerName = "BaudBagSubBag%d",
        clickHook = true
    },
    Baganator = {
        containerPattern = "%s",
        containerName = "BGRLiveItemButton%d",
        alignment = "TOPRIGHT",
        custom = true,
        clickHook = true
    },
    EllesmereUI = {
        containerPattern = "%s",
        containerName = "EUI_MainBagFrame",
        custom = true,
        clickHook = true
    },
    Consolidated = {
        consolidated = true
    }
}

function addon.inventoryManager.bagManager:LoadAdapters()
    if self.adaptersLoaded then return end

    local defaultAdapter = self.adapters.Default

    for name, adapter in pairs(self.adapters) do
        if name ~= "Default" then setmetatable(adapter, {__index = defaultAdapter}) end
    end

    self.adaptersLoaded = true
end

function addon.inventoryManager.bagManager:SelectAdapter()
    self:LoadAdapters()

    local adapter

    if _G["BagnonContainerItem1"] then
        adapter = self.adapters.Bagnon
    elseif _G["ElvUI_ContainerFrame"] then
        adapter = self.adapters.ElvUI
    elseif _G["AdiBagsItemButton1"] then
        adapter = self.adapters.AdiBags
    elseif _G["BetterBagsItemButton1"] then
        adapter = self.adapters.BetterBags
    elseif _G["BagginsPooledItemButton0"] then
        adapter = self.adapters.Baggins
    elseif _G["ARKINV_Frame1ScrollContainer"] then
        adapter = self.adapters.ArkInventory
    elseif _G["BaudBagSubBag0"] then
        adapter = self.adapters.BaudBag
    elseif _G.EUI_MainBagFrame then
        adapter = self.adapters.EllesmereUI
    elseif _G.Bagnon and _G.Bagnon.Item then
        adapter = self.adapters.Bagnon
    elseif _G.Baganator and _G.Baganator.API then
        adapter = self.adapters.Baganator
    elseif addon.game == "FOREVER" and ContainerFrame_UpdateAll then
        adapter = self.adapters.Default
    elseif ContainerFrame_UpdateAll and not ContainerFrame_Update then
        adapter = self.adapters.Consolidated
    elseif ContainerFrame_Update then
        adapter = self.adapters.Default
    end

    self.activeAdapter = adapter
    return adapter
end

function addon.inventoryManager.bagManager:UpdateBag(frame, name, pattern)
    if not addon.inventoryManager:IsFeatureEnabled() then return end

    pattern = pattern or self.activeAdapter.containerPattern
    name = name or frame:GetName()

    local i = 1
    local ref = format(pattern, name, i)
    local lastFrame, button
    local parent, bag, slot
    button = _G[ref]

    while button and lastFrame ~= ref do
        parent = button:GetParent()
        bag = parent and parent:GetID()

        if bag and bag >= BACKPACK_CONTAINER and bag <= NUM_BAG_FRAMES then
            slot = button:GetID()
            addon.inventoryManager.bagFrame[bag][slot] = button

            if self.activeAdapter.clickHook and button.OnClick then self:HookButton(button) end
            if addon.settings.profile.showJunkIcon then
                addon.inventoryManager:UpdateBagButton(button, bag, slot)
            end
        end

        i = i + 1
        lastFrame = ref
        ref = format(pattern, name, i)
        button = _G[ref]
    end
end

function addon.inventoryManager.bagManager:UpdateAllBags(name, i)
    local featureEnabled = addon.inventoryManager:IsFeatureEnabled()
    if not featureEnabled then
        for _, icon in pairs(addon.inventoryManager.junkIcons or {}) do icon:Hide() end

        return
    end

    addon.inventoryManager:SetupUI()

    if featureEnabled and not addon.settings.profile.showJunkIcon then
        for _, icon in pairs(addon.inventoryManager.junkIcons or {}) do icon:Hide() end
    end

    local adapter = self:SelectAdapter()
    if not adapter then return end

    if adapter == self.adapters.Bagnon then
        self:HookBagnon()
        return
    elseif adapter == self.adapters.Baganator then
        self:LoadBaganator()
        return
    elseif adapter == self.adapters.EllesmereUI then
        self:HookEllesmereUI()
        return
    end

    if adapter.consolidated then
        if ContainerFrame_UpdateAll then ContainerFrame_UpdateAll() end

        local containerFrame
        for n = 0, NUM_CONTAINER_FRAMES do
            if n == 0 then
                containerFrame = _G.ContainerFrameCombinedBags
            else
                containerFrame = _G["ContainerFrame" .. n]
            end

            if containerFrame and containerFrame.UpdateItems then self:UpdateContainerFrame(containerFrame) end
        end

        return
    end

    i = i or adapter.containerIndex
    name = name or adapter.containerName

    local ref = format(name, i)
    local frame = _G[ref]
    while frame or i <= 0 do
        if frame then self:UpdateBag(frame, ref) end

        i = i + 1
        ref = format(name, i)
        frame = _G[ref]
    end
end

function addon.inventoryManager.bagManager:GetButtonLocation(button)
    if not button then return end

    local bag = button.GetBag and button:GetBag()
    local slot = button.GetID and button:GetID()

    if not bag and button.GetBagID then bag = button:GetBagID() end
    if not bag then
        local parent = button:GetParent()
        bag = parent and parent.GetID and parent:GetID()
    end

    return bag, slot
end

function addon.inventoryManager.bagManager:HookButtonsInFrame(frame, source, depth)
    if not frame or not frame.GetChildren then return end

    local children = {frame:GetChildren()}
    local child, bag, slot
    depth = depth or 5

    for index = 1, #children do
        child = children[index]
        bag, slot = self:GetButtonLocation(child)

        if type(bag) == "number" and type(slot) == "number" and bag >= BACKPACK_CONTAINER and
            bag <= NUM_BAG_FRAMES and slot > 0 then
            self:HookButton(child, source)
        end

        if depth > 1 then self:HookButtonsInFrame(child, source, depth - 1) end
    end
end

function addon.inventoryManager.bagManager:HookBagnon()
    if not addon.inventoryManager:IsFeatureEnabled() or not _G.Bagnon then return end

    local bagnonItem = _G.Bagnon.Item
    local this = self

    if bagnonItem and bagnonItem.Update and self.bagnonItem ~= bagnonItem then
        hooksecurefunc(bagnonItem, "Update", function(button) this:HookButton(button, "Bagnon") end)
        self.bagnonItem = bagnonItem
    end

    self:HookButtonsInFrame(_G.BagnonFrameinventory, "Bagnon")
    self:HookButtonsInFrame(_G.BagnonFramebank, "Bagnon")
end

function addon.inventoryManager.bagManager:HookEllesmereUI()
    if not addon.inventoryManager:IsFeatureEnabled() then return end

    local frame = _G.EUI_MainBagFrame
    if not frame then return end

    local this = self
    if self.ellesmereUIFrame ~= frame then
        frame:HookScript("OnShow", function() this:HookEllesmereUI() end)
        self.ellesmereUIFrame = frame
    end

    self:HookButtonsInFrame(frame, "EllesmereUI")
    self:HookButtonsInFrame(_G.EUI_ReagentBagFrame, "EllesmereUI")
end

function addon.inventoryManager.bagManager:HookButton(button, source)
    if not addon.inventoryManager:IsFeatureEnabled() then return end
    if not button then return end

    local bag, slot = self:GetButtonLocation(button)
    if type(bag) ~= "number" or type(slot) ~= "number" or bag < BACKPACK_CONTAINER or
        bag > NUM_BAG_FRAMES or slot < 1 then return end

    if addon.inventoryManager.hookedFrames[button] then
        if source then addon.inventoryManager.hookedFrames[button] = source end
        return
    end

    button:HookScript("OnClick", self.onClickHook)

    addon.inventoryManager.hookedFrames[button] = source or true
end

function addon.inventoryManager.bagManager:LoadBaganator()
    if not addon.inventoryManager:IsFeatureEnabled() then return end

    local frames = {
        "Baganator_SingleViewBackpackViewFrameblizzard_black", -- "Baganator_SingleViewGuildViewFrameblizzard_black",
        -- "Baganator_SingleViewGuildViewFramedark",
        "Baganator_CategoryViewBackpackViewFramedark", -- "Baganator_SingleViewGuildViewFrameblizzard",
        "Baganator_SingleViewBackpackViewFrameblizzard", "Baganator_SingleViewBackpackViewFramedark",
        "Baganator_CategoryViewBackpackViewFrameblizzard", "Baganator_CategoryViewBackpackViewFrameblizzard_black"
    }

    local frame

    for _, frameName in pairs(frames) do
        frame = _G[frameName]

        if frame and frame.Container and frame.Container.Layouts then
            for _, container in pairs(frame.Container.Layouts) do
                for _, button in pairs(container.buttons or {}) do
                    if button.BGR then self:HookButton(button, "Baganator") end
                end
            end
        end

        self:HookButtonsInFrame(frame, "Baganator")
    end
end

function addon.inventoryManager.bagManager:UpdateContainerFrame(containerFrame)
    if not addon.inventoryManager:IsFeatureEnabled() then return end

    local frames = {containerFrame:GetChildren()}
    local frame, bag, slot, id

    for index = 1, #frames do
        frame = frames[index]
        if frame.GetID and frame.OnClick then
            self:HookButton(frame)

            bag = frame.GetBagID and frame:GetBagID()
            slot = frame:GetID()

            if bag and bag >= BACKPACK_CONTAINER and bag <= NUM_BAG_FRAMES and slot and slot >= 0 then
                addon.inventoryManager.bagFrame[bag][slot] = frame
                id = self:GetContainerItemID(bag, slot)

                if frame.JunkIcon then
                    frame.JunkIcon:SetShown(addon.settings.profile.showJunkIcon and id and
                                                addon.inventoryManager:IsJunk(id, bag, slot))
                end
            end
        end
    end
end

function addon.inventoryManager.bagManager:HookContainerFrame(containerFrame)
    if not addon.inventoryManager:IsFeatureEnabled() then return end

    self.hookedContainerFrames = self.hookedContainerFrames or {}
    if self.hookedContainerFrames[containerFrame] then return end
    self.hookedContainerFrames[containerFrame] = true

    local this = self
    hooksecurefunc(containerFrame, "UpdateItems", function() this:UpdateContainerFrame(containerFrame) end)
    self:UpdateContainerFrame(containerFrame)
end

function addon.inventoryManager.bagManager:HookBags()
    if not addon.inventoryManager:IsFeatureEnabled() then return end

    local this = self
    local bagframe
    local adapter = self.activeAdapter or self:SelectAdapter()

    if adapter == self.adapters.Bagnon then
        self:HookBagnon()
    elseif adapter == self.adapters.Baganator then
        if not self.baganatorPluginHooked and _G.Baganator and _G.Baganator.API then
            _G.Baganator.API.RegisterJunkPlugin(addonName, "RXPGuides", function(bagID, slotID, id)
                return addon.inventoryManager:IsFeatureEnabled() and id and
                    addon.inventoryManager:IsJunk(id, bagID, slotID)
            end)
            self.baganatorPluginHooked = true
        end

        C_Timer.After(1, function() this:LoadBaganator() end)

        if _G.Baganator.CallbackRegistry and not self.baganatorCallbackHooked then
            _G.Baganator.CallbackRegistry:RegisterCallback("SettingChanged", function()
                C_Timer.After(0.1, function() this:LoadBaganator() end)
            end)
            self.baganatorCallbackHooked = true
        end
    elseif adapter == self.adapters.EllesmereUI then
        self:HookEllesmereUI()
    elseif adapter == self.adapters.ElvUI then
        local elvUIFrame = _G.ElvUI_ContainerFrame
        if elvUIFrame and elvUIFrame.Bags and self.elvUIHooked ~= elvUIFrame then
            local hookElvUISlots = function(frame)
                for _, bag in pairs(frame.Bags) do
                    for _, slot in ipairs(bag) do
                        this:HookButton(slot, "ElvUI")
                    end
                end
            end

            elvUIFrame:HookScript("OnShow", hookElvUISlots)
            hookElvUISlots(elvUIFrame)
            self.elvUIHooked = elvUIFrame
        end
    end

    if not adapter.custom and ContainerFrame_Update and not self.containerFrameHooked then
        hooksecurefunc("ContainerFrame_Update", function(frame) this:UpdateBag(frame, nil, "%sItem%d") end)
        self.containerFrameHooked = true
    end

    if not adapter.custom and ContainerFrame_UpdateAll then
        for n = 0, NUM_CONTAINER_FRAMES do
            if n == 0 then
                bagframe = _G.ContainerFrameCombinedBags
            else
                bagframe = _G["ContainerFrame" .. n]
            end

            if bagframe and bagframe.UpdateItems then self:HookContainerFrame(bagframe) end
        end
    end
end

function addon.inventoryManager.bagManager:IsAvailable()
    if not self.activeAdapter then self:SelectAdapter() end

    return self.activeAdapter ~= nil
end

function addon.inventoryManager.bagManager:GetContainerNumFreeSlots(bag)
    if not addon.inventoryManager:IsFeatureEnabled() then return 0, 0 end

    return GetContainerNumFreeSlots(bag)
end

function addon.inventoryManager.bagManager:GetContainerNumSlots(bag)
    if not addon.inventoryManager:IsFeatureEnabled() then return 0 end

    return GetContainerNumSlots(bag)
end

function addon.inventoryManager.bagManager:GetContainerItemID(bag, slot)
    if not addon.inventoryManager:IsFeatureEnabled() then return end

    return GetContainerItemID(bag, slot)
end

function addon.inventoryManager.bagManager:PickupContainerItem(bag, slot)
    if not addon.inventoryManager:IsFeatureEnabled() then return end

    return PickupContainerItem(bag, slot)
end

function addon.inventoryManager.bagManager:UseContainerItem(bag, slot)
    if not addon.inventoryManager:IsFeatureEnabled() then return end

    return UseContainerItem(bag, slot)
end

function addon.inventoryManager.bagManager:GetContainerItemInfo(bag, slot)
    if not addon.inventoryManager:IsFeatureEnabled() then return end

    if self.returnsItemTable then
        local itemTable = GetContainerItemInfo(bag, slot)

        if itemTable then
            return itemTable.texture or itemTable.iconFileID, itemTable.stackCount, itemTable.isLocked,
                   itemTable.quality, itemTable.isReadable, itemTable.hasLoot, itemTable.hyperlink,
                   itemTable.isFiltered, itemTable.hasNoValue, itemTable.itemID, itemTable.isBound
        end
        return
    end

    return GetContainerItemInfo(bag, slot)
end
