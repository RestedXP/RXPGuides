local addonName,addon = ...
local L = addon.locale.Get

local inventoryManager = {}
addon.inventoryManager = inventoryManager

local gameVersion = select(4, GetBuildInfo())

local GetItemInfo = C_Item and C_Item.GetItemInfo or _G.GetItemInfo
local GetContainerNumFreeSlots = C_Container and C_Container.GetContainerNumFreeSlots or _G.GetContainerNumFreeSlots
local GetContainerNumSlots = C_Container and C_Container.GetContainerNumSlots or _G.GetContainerNumSlots

local GetContainerItemID = C_Container and C_Container.GetContainerItemID or _G.GetContainerItemID

local PickupContainerItem = C_Container and C_Container.PickupContainerItem or _G.PickupContainerItem

local UseContainerItem = C_Container and C_Container.UseContainerItem or _G.UseContainerItem
--local GetContainerItemLink = C_Container and C_Container.GetContainerItemLink or _G.GetContainerItemLink
--local GetItemCount = C_Item and C_Item.GetItemCount or _G.GetItemCount

local GetCoinTextureString = C_CurrencyInfo and C_CurrencyInfo.GetCoinTextureString or _G.GetCoinTextureString

inventoryManager.bagHook = _G.ContainerFrame_Update

local GetContainerItemInfo


if C_Container and C_Container.GetContainerItemInfo then
    GetContainerItemInfo = function(...)
        local itemTable = C_Container.GetContainerItemInfo(...)
        if itemTable then
            return itemTable.texture,
                    itemTable.stackCount,
                    itemTable.isLocked,
                    itemTable.quality,
                    itemTable.isReadable,
                    itemTable.hasLoot,
                    itemTable.hyperlink,
                    itemTable.isFiltered,
                    itemTable.hasNoValue,
                    itemTable.itemID,
                    itemTable.isBound
        end
    end
else
    GetContainerItemInfo = _G.GetContainerItemInfo
end


--TODO: Handle UI options:
function inventoryManager.IsRightClickEnabled()
    if not inventoryManager.bagHook then return false end
    return addon.settings.profile.rightClickJunk
end

function inventoryManager.IsBagAutomationEnabled()
    if not inventoryManager.bagHook then return false end
    return addon.settings.profile.autoDiscardItems
end

function inventoryManager.IsMerchantAutomationEnabled()
    if not inventoryManager.bagHook then return false end
    return addon.settings.profile.autoSellJunk
end

function inventoryManager.IsJunkIconEnabled()
    if not inventoryManager.bagHook then return false end
    return addon.settings.profile.showJunkIcon
end

function inventoryManager.GetModKey()
    --IsAltKeyDown or IsControlKeyDown, shift is used for splitting stacks
    --Ctrl + Left click is used for dressing room
    local mod = addon.settings.profile.rightClickMod
    if mod == 3 then
        return IsControlKeyDown() and IsAltKeyDown()
    elseif mod == 2 then
        return IsAltKeyDown()
    else
        return IsControlKeyDown()
    end
end

function inventoryManager.GetMouseButton()
    --LeftButton/RightButton
    return "RightButton"
end

local projectileType = 0
local quiverFreeSlots = 0
local quiverSlot
local organizeQuiver
local closestSlot = {}
local sortTimer = 0

local function SortQuiver()
--Makes sure you only have 1 partial stack at the left most quiver slot for each ammo type
    if gameVersion > 30000 or UnitIsDead('player') then
        return
    end
    organizeQuiver = false
    local function GetQuiverSlot()
        for bag = BACKPACK_CONTAINER, NUM_BAG_FRAMES do
            local free, type = GetContainerNumFreeSlots(bag)
            if bit.band(type,3) > 0 then
                quiverSlot = bag
                projectileType,quiverFreeSlots = type,free
            end
        end
    end

    if not quiverSlot then
        GetQuiverSlot()
    else
        local _,quiverType = GetContainerNumFreeSlots(quiverSlot)
        if bit.band(quiverType,3) == 0 then
            GetQuiverSlot()
        end
    end
    local id
    table.wipe(closestSlot)
    local numQuiverSlots = GetContainerNumSlots(quiverSlot)
    local t = GetTime()
    local colour = addon.guideTextColors["RXP_WARN_"]
    if inventoryManager.manualDelete then
        inventoryManager.manualDelete = false
        print(format(L("RXPGuides: |c%sSorting arrows/bullets|r"),colour))
    elseif t - sortTimer > 3 then
        print(format(L("RXPGuides: |c%sInventory is full, sorting arrows/bullets|r"),colour))
    end
    sortTimer = t

    for slot = 1, numQuiverSlots do
        id = GetContainerItemID(quiverSlot, slot)

        if id then
            if not closestSlot[id] then
                closestSlot[id] = numQuiverSlots
            end
            --local t = GetItemInfo(id)
            local maxStack = select(8, GetItemInfo(id))
            --print(maxStack)
            local itemtable,stack,locked = GetContainerItemInfo(quiverSlot, slot)
            if type(itemtable) == "table" then
                stack,locked = itemtable.stackCount,itemtable.isLocked
            end
            --print('sl',stack,locked)
            if slot < closestSlot[id] then
                closestSlot[id] = slot
            elseif stack < maxStack then
                local itemExists,_,destLocked = GetContainerItemInfo(quiverSlot,closestSlot[id])
                if type(itemExists) == "table" then
                    destLocked = itemExists.isLocked
                end
                organizeQuiver = true
                if not (GetCursorInfo() or locked or itemExists and destLocked) then
                    C_Timer.After(0.01,function()
                        if not GetCursorInfo() then
                            PickupContainerItem(quiverSlot, slot)
                            PickupContainerItem(quiverSlot, closestSlot[id])
                            ClearCursor()
                            --print(quiverSlot, slot)
                        end
                    end)
                    break
                end
            end
        end

    end

end

local exceptions = {
    [6196] = true,
}

local function IsJunk(id)
    if not id then return end
    local discard = RXPCData.discardPile[id]
    if discard == nil then
        local _, _, quality = GetItemInfo(id)
        if quality == Enum.ItemQuality.Poor and not exceptions[id] then
            return true
            --TODO: add an option that ignores auto selling grays if item is an upgrade
        end
        --TODO: Integrate with item upgrade system to auto sell soulbound greens, check if C_Item.IsBound exists, otherwise parse tooltips, check if character has enchanting or not
    else
        return discard
    end
end

inventoryManager.IsJunk = IsJunk

local function ToggleJunk(id,bag,slot)
    if not id then return end
    local junk = IsJunk(id)
    local _,link = GetItemInfo(id)
    local colour = addon.guideTextColors["RXP_WARN_"]
    RXPCData.discardPile[id] = not junk
    if junk then
        print(format(L("%s: |c%sSet %s as useful|r"),addonName,colour,link))
    else
        print(format(L("%s: |c%sSet %s as junk|r"),addonName,colour,link))
    end
    inventoryManager.UpdateAllBags()
    addon:SendEvent("RXP_JUNK", id, bag, slot)
end

inventoryManager.ToggleJunk = ToggleJunk

local function FindJunk(deleteItem)

    inventoryManager.deleteBag = nil
    inventoryManager.deleteSlot = nil

    if organizeQuiver then
        SortQuiver()
    end
    quiverFreeSlots = 0

    for bag = BACKPACK_CONTAINER, NUM_BAG_FRAMES do
        local freeSlots, bagType = GetContainerNumFreeSlots(bag)
        --print(bagType,freeSlots,deleteItem)
        if bagType and bagType == 0 and freeSlots and freeSlots > 0 and not deleteItem then
            return
        end

        local ammoFlags = bit.band(bagType or 0,3) + 1
        --bit flag 1 for arrows, 2 for guns, according to ItemBagFamily.db2
        --add 1 to compare with Enum.ItemWeaponSubclass (2 for arrows, 3 for bullets)
        if  ammoFlags > 1 then
            quiverSlot = bag
            projectileType = ammoFlags
            quiverFreeSlots = freeSlots
        end
    end

    local movingAmmo
    local bestBag, bestSlot
    local bestValue = math.huge

    for bag = BACKPACK_CONTAINER, NUM_BAG_FRAMES do
        local _,bagType = GetContainerNumFreeSlots(bag)
        local numSlots
        if not bagType or bagType > 2 then
            numSlots = 0
        else
            numSlots = GetContainerNumSlots(bag)
        end
        for slot = 1, numSlots do
            local isProjectile
            local id = GetContainerItemID(bag, slot)
            if id then
                local stackMax,_,_,price,class,subclass = select(8, GetItemInfo(id))
                if bagType == 0 and class == Enum.ItemClass.Projectile and subclass == projectileType then
                    isProjectile = true
                end

                if not (isProjectile or movingAmmo) then
                    local t,count = GetContainerItemInfo(bag,slot)
                    if type(t) == "table" and not count then
                        count = t.stackCount
                    end
                    if stackMax and count and IsJunk(id,bag,slot) then
                        --local item_count = select(2, GetContainerItemInfo(bag, slot))
                        price = price or 0
                        local value = (stackMax + count) * price/2
                        if value < bestValue then
                            bestBag = bag
                            bestSlot = slot
                            bestValue = value
                            --print(bestBag,bestSlot)
                        end
                    end
                elseif isProjectile and quiverFreeSlots > 0 then
                    movingAmmo = true
                    bestBag,bestSlot,bestValue = nil,nil,nil
                    PickupContainerItem(bag, slot)
                    PutItemInBag(quiverSlot + CharacterBag0Slot:GetID() - 1)

                    --CharacterBag0Slot:BagSlotButton_OnClick()
                    --/run local bagframe = _G["CharacterBag".. tostring(1 - 1) .."Slot"] local f = bagframe:GetScript("OnClick") print(f) f(bagframe,"LeftButton")

                    quiverFreeSlots = quiverFreeSlots -1
                end
            end
        end
    end

    if movingAmmo then
        SortQuiver()
    elseif bestBag and bestSlot then
        inventoryManager.deleteBag = bestBag
        inventoryManager.deleteSlot = bestSlot
    elseif inventoryManager.clickFrame then
        inventoryManager.clickFrame:Hide()
    end
    --print(bestBag,bestSlot)
end

local function DeleteItems()
    if inventoryManager.sellGoods and MerchantFrame:IsShown() and MerchantFrame.selectedTab == 1 then
        inventoryManager.ProcessJunk(true)
        return
    elseif UnitIsDead('player') or GetCursorInfo() then
        return
    elseif inventoryManager.deleteBag then
        PickupContainerItem(inventoryManager.deleteBag,inventoryManager.deleteSlot)
        DeleteCursorItem()
        local colour = addon.guideTextColors["RXP_WARN_"]
        local _,stack,_,_,_,_,link = GetContainerItemInfo(inventoryManager.deleteBag,inventoryManager.deleteSlot)
        if link then
            if inventoryManager.manualDelete then
                print(format(L("RXPGuides: |c%sDeleting %sx%s|r"),colour,link,stack))
            else
                print(format(L("RXPGuides: |c%sInventory is full, deleting %sx%s|r"),colour,link,stack))
            end
        end
        inventoryManager.deleteBag = nil
        inventoryManager.deleteSlot = nil
    elseif organizeQuiver and not InCombatLockdown() then
        SortQuiver()
    end
end

local DeleteCheapestItem = function(self,deleteIfFull)

    if not inventoryManager.bagUpdated then
        return
    end
    inventoryManager.manualDelete = true
    FindJunk(not deleteIfFull)
    DeleteItems(true)
    inventoryManager.manualDelete = false
end

inventoryManager.itemsToOpen = {}
local function OpenItems()
    if not next(inventoryManager.itemsToOpen) then return end
    for bag = _G.BACKPACK_CONTAINER, _G.NUM_BAG_FRAMES do
        for slot = 1, GetContainerNumSlots(bag) do
            local _, _, locked, _, _, _, _, _, _, id = GetContainerItemInfo(bag, slot)
            if not locked and inventoryManager.itemsToOpen[id] then
                UseContainerItem(bag, slot)
            end
        end
    end
end

addon.DeleteCheapestItem = DeleteCheapestItem
--A3 =DeleteCheapestItem

local btn = CreateFrame("BUTTON", "RXPInventory_DeleteJunk")
btn:SetScript("OnClick", function()
    DeleteCheapestItem()
end)

BINDING_HEADER_RXPInventory = addon.title

_G["BINDING_NAME_CLICK RXPInventory_DeleteJunk:LeftButton"] =
    L("Delete Cheapest Junk Item")

local bagEvent = "BAG_UPDATE_DELAYED"
local WorldFrameHook = function(self,...)
    --local n = self and self:GetName()
    --print(n,...)
    if inventoryManager.IsBagAutomationEnabled() then
        DeleteItems()
    end
    OpenItems()
end
local f = inventoryManager.DeleteJunkFrame or CreateFrame("Frame","RXPDeleteJunk",UIParent)
f:RegisterEvent("PLAYER_ENTERING_WORLD")

local clickFrame

if f.SetPassThroughButtons then
    --post patch 1.15.7 workaround
    clickFrame = CreateFrame("Frame","RXPJunkHandler",UIParent)
    inventoryManager.clickFrame = clickFrame
    clickFrame:SetAllPoints(UIParent)
    clickFrame:SetScript("OnMouseDown", function(self)
        WorldFrameHook()
        if GetCVarBool("autoLootDefault") ~= IsModifiedClick("AUTOLOOTTOGGLE") then
            for i = GetNumLootItems(), 1, -1 do
                LootSlot(i)
            end
        end
        clickFrame:Hide()
    end)

    local button = "LootButton"
    local current = _G["LootButton1"]
    local i = 1
    while current and i < 10 do
        current:HookScript("OnClick",WorldFrameHook)
        i = i + 1
        current = _G[button .. i]
    end

    clickFrame:EnableMouse(false)
    clickFrame:SetMouseClickEnabled(true)
    clickFrame:EnableMouseMotion(false)
    clickFrame:EnableMouseWheel(false)
    clickFrame:SetFrameStrata("BACKGROUND")
    clickFrame:SetFrameLevel(0)
    clickFrame:Hide()
end

--You can only delete items on a hardware input, so we hook every keyboard input and mouse click to our item deletion function

f:SetScript("OnEvent",function(self)
    inventoryManager.bagUpdated = true
    self:RegisterEvent(bagEvent)
    self:RegisterEvent("LOOT_READY")
    self:RegisterEvent("UI_ERROR_MESSAGE")

    self:SetScript("OnEvent",function(self,event,flag,msg)
        if clickFrame then
            if inventoryManager.IsBagAutomationEnabled() then
                if event == "UI_ERROR_MESSAGE" and flag == 3 and msg == INVENTORY_FULL and LootFrame:IsShown() then
                    clickFrame:Show()
                end
            else
                clickFrame:Hide()
            end
        end
        if inventoryManager.IsBagAutomationEnabled() then
            FindJunk()
        end
    end)
    RXPCData.discardPile = RXPCData.discardPile or {}

    WorldFrame:HookScript("OnMouseDown", WorldFrameHook)
    WorldFrame:HookScript("OnMouseUp", WorldFrameHook)

    inventoryManager.DeleteJunkFrame = self

    self:SetPropagateKeyboardInput(true)
    self:SetScript("OnKeyDown", WorldFrameHook)
    self:SetScript("OnKeyUp", WorldFrameHook)

    if _G["ContainerFrameItemButton_OnModifiedClick"] then
        hooksecurefunc("ContainerFrameItemButton_OnModifiedClick", function(self,button)
            local mod = inventoryManager.GetModKey()
            if not inventoryManager.IsRightClickEnabled() or not mod or button ~= inventoryManager.GetMouseButton() then
                return
            end
            local parent = self:GetParent()
            local bag = parent and parent:GetID()
            local slot = self:GetID()
            if bag and slot then
                local id = GetContainerItemID(bag,slot)
                ToggleJunk(id,bag,slot)
            end

        end)
    end

    hooksecurefunc('ToggleAllBags', inventoryManager.InitializeBags)
    hooksecurefunc('ToggleBag', inventoryManager.InitializeBags)
    _G.MainMenuBarBackpackButton:HookScript("OnClick",inventoryManager.InitializeBags)

end)

local junkIcons = {}

local function ShowJunkIcon(frame)

    if not frame.RXPJunkIcon then
        local texture = frame:CreateTexture(nil, "OVERLAY")
        table.insert(junkIcons,texture)
        texture:SetTexture("Interface/Buttons/UI-GroupLoot-Coin-Up")
        texture:SetSize(16,16)
        texture:SetPoint(inventoryManager.alignment, 1, -1)
        frame.RXPJunkIcon = texture
    end

    frame.RXPJunkIcon:SetShown(inventoryManager.IsJunkIconEnabled())

end

local function HideJunkIcon(frame)

    if frame.RXPJunkIcon then
        frame.RXPJunkIcon:Hide()
    end

end

local function UpdateBagButton(button,bag,slot)
    local id = GetContainerItemID(bag, slot)

    local isJunk = IsJunk(id)
    --print(bag,slot,isJunk)
    if isJunk then
        ShowJunkIcon(button)
    else
        HideJunkIcon(button)
    end
end

local bagFrame = {}

for i = BACKPACK_CONTAINER, NUM_BAG_FRAMES do
    bagFrame[i] = {}
end



local function UpdateBag(frame,name,pattern)
    if not inventoryManager.IsJunkIconEnabled() then
        return
    end
    pattern = pattern or inventoryManager.containerPattern
    name = name or frame:GetName()
    local i = 1
    local ref = format(pattern,name,i)
    local lastFrame
    local button = _G[ref]

    while button and lastFrame ~= ref do
        local parent = button:GetParent()
        local bag = parent and parent:GetID()
        if bag and bag >= BACKPACK_CONTAINER and bag <= NUM_BAG_FRAMES then
            local slot = button:GetID()
            bagFrame[bag][slot] = ref
            --print(ref)
            UpdateBagButton(button,bag,slot)
        end
        i = i + 1
        lastFrame = ref
        ref = format(pattern,name,i)
        button = _G[ref]
    end
end

--Junk icon has to hook into existing UI elements, different bag UI mods have different frame names causing compatibility issues

inventoryManager.containerPattern = "%sItem%d"
inventoryManager.containerName = "ContainerFrame%d"
inventoryManager.containerIndex = -1
inventoryManager.alignment = "TOPLEFT"

local function DetectBagMods()
    if _G["BagnonContainerItem1"] then
        inventoryManager.containerName = "BagnonContainerItem%d"
        inventoryManager.containerPattern = "%s"
    elseif _G["ElvUI_ContainerFrame"] then
        inventoryManager.containerName = "ElvUI_ContainerFrameBag%d"
        inventoryManager.containerPattern = "%sSlot%d"
    elseif _G["AdiBagsItemButton1"] then
        inventoryManager.containerName = "AdiBagsItemButton%d"
        inventoryManager.containerPattern = "%s"
    elseif _G["BetterBagsItemButton1"] then
        inventoryManager.containerName = "BetterBagsItemButton%d"
        inventoryManager.containerPattern = "%s"
    elseif _G["BagginsPooledItemButton0"] then
        inventoryManager.containerName = "BagginsPooledItemButton%d"
        inventoryManager.containerPattern = "%s"
    elseif _G["ARKINV_Frame1ScrollContainer"] then
        inventoryManager.containerName = "ARKINV_Frame1ScrollContainerBag%d"
    elseif _G["BaudBagSubBag0"] then
        inventoryManager.containerName = "BaudBagSubBag%d"
    elseif _G["Baganator"] then
        inventoryManager.containerName = "BGRLiveItemButton%d"
        inventoryManager.containerPattern = "%s"
        inventoryManager.alignment = "TOPRIGHT"
    end
end


local function UpdateAllBags(self,name,i)
    if not inventoryManager.IsJunkIconEnabled() then
        for _,icon in pairs(junkIcons) do
            icon:Hide()
        end
        return
    end
    DetectBagMods()
    i = i or inventoryManager.containerIndex
    name = name or inventoryManager.containerName
    --print(name,inventoryManager.containerPattern)
    local ref = format(name,i)
    local frame = _G[ref]
    while frame or i <= 0 do
        if frame then
            UpdateBag(frame,ref)
        end
        i = i + 1
        ref = format(name,i)
        frame = _G[ref]
    end
end
inventoryManager.UpdateAllBags = UpdateAllBags

local invUpdate = CreateFrame("Frame")
invUpdate:RegisterEvent("ITEM_LOCKED")
invUpdate:RegisterEvent("ITEM_UNLOCKED")
if C_EventUtils and C_EventUtils.IsEventValid("BAG_CONTAINER_UPDATE") then
    invUpdate:RegisterEvent("BAG_CONTAINER_UPDATE")
end
invUpdate:RegisterEvent("BAG_UPDATE_DELAYED")
invUpdate:RegisterEvent("MERCHANT_SHOW")
invUpdate:RegisterEvent("PLAYER_MONEY")
local updateTimer = 0
local merchantOpened
local updateBags
inventoryManager.BagHandler = function(self,event,bag,slot)
    if type(event) == "number" then
        updateTimer = updateTimer + event
        if updateTimer > 0.33 then
            if merchantOpened then
                merchantOpened = false
                inventoryManager.ProcessJunk(true)
            end
            if updateBags then
                updateBags = false
                UpdateAllBags()
            end
            updateTimer = 0
            self:SetScript("OnUpdate",nil)
        end
        return
    elseif event == "PLAYER_MONEY" and inventoryManager.sellGoods then
        merchantOpened = true
        updateTimer = 0.125
        self:SetScript("OnUpdate",inventoryManager.BagHandler)
        return
    elseif event == "BAG_CONTAINER_UPDATE" then
        updateTimer = 0
        updateBags = true
        self:SetScript("OnUpdate",inventoryManager.BagHandler)
    elseif event == "MERCHANT_SHOW" then
        merchantOpened = true
        updateTimer = 0
        self:SetScript("OnUpdate",inventoryManager.BagHandler)
    elseif event == "BAG_UPDATE_DELAYED" then
        updateTimer = 0
        updateBags = true
        self:SetScript("OnUpdate",inventoryManager.BagHandler)
    elseif inventoryManager.containerPattern ~= "%s" then
        if event == "ITEM_LOCKED" then
            local frame = bagFrame[bag] and bagFrame[bag][slot]
            frame = frame and _G[frame]
            if frame then
                HideJunkIcon(frame)
            end
        elseif event == "ITEM_UNLOCKED" and inventoryManager.containerPattern ~= "%s" then
            local frame = bagFrame[bag] and bagFrame[bag][slot]
            frame = frame and _G[frame]
            if frame then
                UpdateBagButton(frame,bag,slot)
            end
        end
    end
    if not next(junkIcons) then
        updateBags = true
        self:SetScript("OnUpdate",inventoryManager.BagHandler)
    end
end

invUpdate:SetScript("OnEvent",inventoryManager.BagHandler)


local initialized
function inventoryManager.InitializeBags()
    if initialized and next(junkIcons) then return end
    initialized = true
    updateBags = true
    invUpdate:SetScript("OnUpdate",inventoryManager.BagHandler)
    --UpdateAllBags()
end

if _G['ContainerFrame_Update'] then
    hooksecurefunc('ContainerFrame_Update', function(self)
        UpdateBag(self,nil,"%sItem%d")
    end)
end

--[[
hooksecurefunc('ContainerFrameItemButton_OnEnter',function(self)
    print(self:GetName(),self:GetParent():GetID(),self:GetID())
end)]]


local function ProcessJunk(sellWares,override)
    local isMerchant = sellWares and MerchantFrame:IsShown() and MerchantFrame.selectedTab == 1 and (inventoryManager.IsMerchantAutomationEnabled() or override)
    local totalCost = 0
    local itemsToSell = {}
    for bag = BACKPACK_CONTAINER, NUM_BAG_FRAMES do
        for slot = 1, GetContainerNumSlots(bag) do
            local id = GetContainerItemID(bag,slot)
            local _,stack,locked,quality = GetContainerItemInfo(bag, slot)
            local junk = IsJunk(id)
            if junk then
                local price = select(11,GetItemInfo(id))
                local value = price * stack
                if isMerchant and value > 0 then
                    table.insert(itemsToSell,{bag = bag, slot = slot, value = value, quality = quality})
                end
                totalCost = totalCost + value
            end
        end
    end

    if totalCost == 0 then
        if inventoryManager.sellGoods then
            local value = GetMoney() - inventoryManager.sellGoods
            local colour = addon.guideTextColors["RXP_WARN_"]
            if value > 0 then
                print(format(L("RXPGuides: |c%sSold junk items for|r %s"),colour,GetCoinTextureString(value)))
            end
            inventoryManager.sellGoods = false
        end
    elseif isMerchant then
        inventoryManager.sellGoods = inventoryManager.sellGoods or GetMoney()
        --Sorts the item list to sell low quality/cheap items first, in case of needing to buy stuff back
        table.sort(itemsToSell,function(i1,i2)
            if i1.quality == i2.quality then
                return i1.value < i2.value
            else
                return i1.quality < i2.quality
            end
        end)

        for _,item in ipairs(itemsToSell) do
            PickupContainerItem(item.bag,item.slot)
            PickupMerchantItem()
        end

    end

    return totalCost
end
inventoryManager.ProcessJunk = ProcessJunk

function inventoryManager.GetNetWorth()
    local inventory = ProcessJunk()
    return GetMoney() + inventory
end


