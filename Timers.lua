local _,addon = ...
local RXPFrame = addon.RXPFrame
local candy = LibStub("LibCandyBar-3.0")

local BarContainer = CreateFrame("Frame","$parentBarContainer",RXPFrame)
BarContainer:SetHeight(16)

RXPFrame.BarContainer = BarContainer
BarContainer.barTexture = "Interface\\CHARACTERFRAME\\BarFill"
BarContainer.barIcon = "Interface\\ICONS\\INV_Misc_PocketWatch_02"

BarContainer.barPool = {}
BarContainer.labels = {}

function BarContainer.SetAnchor()

    local lastActive
    for _,bar in ipairs(BarContainer.barPool) do
        if bar:IsShown() then
            bar:ClearAllPoints()
            if not lastActive then
                bar:SetPoint("TOPLEFT",BarContainer,"TOPLEFT")
                bar:SetPoint("TOPRIGHT",BarContainer,"TOPRIGHT")
            else
                bar:SetPoint("TOPLEFT",lastActive,"BOTTOMLEFT",0,-3)
                bar:SetPoint("TOPRIGHT",lastActive,"BOTTOMRIGHT",0,-3)
            end
            lastActive = bar
        end
    end
end

function BarContainer:Acquire(label)
    local bar
    for i = #BarContainer.barPool,1,-1 do
        local v = BarContainer.barPool[i]
        if label and BarContainer.labels[v] == label then
            bar = v
            break
        elseif not v:IsShown() then
            bar = v
        end
    end
    if bar then
        BarContainer.labels[bar] = label
        bar:SetLabel(label)
        bar:SetIcon(BarContainer.barIcon)
        bar:SetColor(unpack(addon.colors.mapPins))
        bar:SetTexture(BarContainer.barTexture)
        return bar
    end
    return BarContainer:CreateBar(label)
end

function BarContainer:CreateBar(label)
    local bar = candy:New(BarContainer.barTexture, 100, 16)
    bar:SetDuration(60)
    bar:SetPoint("TOPLEFT",BarContainer,"TOPLEFT")
    bar:SetPoint("TOPRIGHT",BarContainer,"TOPRIGHT")
    bar:SetScript("OnHide",BarContainer.SetAnchor)
    table.insert(BarContainer.barPool,bar)
    BarContainer.labels[bar] = label
    bar:SetIcon(BarContainer.barIcon)
    bar:SetColor(unpack(addon.colors.mapPins))
    bar:SetLabel(label)
    return bar
end
--RXP = addon
function addon.StartTimer(duration,label,options)
    local bar = RXPFrame.BarContainer:Acquire(label or "")
    bar:SetDuration(duration)
    if options then
        if options.colors then
            bar:SetColor(unpack(options.colors))
        end
        if options.texture then
            bar:SetTexture(options.texture)
        end
        if options.icon then
            bar:SetIcon(options.icon)
        end
    end
    bar:Start()
    BarContainer.SetAnchor()
    return bar
end

local faction = UnitFactionGroup("player")
addon.nodeHash = {}
addon.flightInfo = {}
addon.flightTimer = 0

function addon:TAXIMAP_OPENED()
    local mapID = C_Map.GetBestMapForUnit("player")
    if addon.flightInfo.MapID ~= mapID then
        local FPList = C_TaxiMap.GetAllTaxiNodes(mapID)
        for _, v in pairs(FPList) do
            local id = v.nodeID
            print(id)
            if id then
                if v.state == 2 then
                    RXPCData.flightPaths[id] = false
                else
                    local hash = addon.GetFlightHash(v.slotIndex)
                    addon.nodeHash[hash] = id
                    RXPCData.flightPaths[id] = v.name
                    addon.flightInfo[v.slotIndex] = v.nodeID
                    --print(v.nodeID,v.name,hash)
                    if v.state == 0 then addon.currentFP = id end
                end
            end
        end
    end
    addon.flightInfo.MapID = mapID
end

function addon:PLAYER_CONTROL_LOST()
    if GetTime() - addon.startFlight < 1.5 then
        addon.flightBar = addon.StartTimer(addon.flightInfo.timer,addon.flightInfo.dest)
    end
end

function addon:PLAYER_CONTROL_GAINED()
    if addon.flightBar then
        addon.flightBar:Hide()
    end
end

function addon.GetFlightHash(index,level)
    local x,y
    if level then
        x,y = TaxiGetDestX(index,level), TaxiGetDestY(index,level)
    else
        x,y = TaxiNodePosition(index)
    end
    --print('h:',x,y)
    return math.floor(x*2048)*79+math.floor(y*2048)*43
end

local function GetFlightTime(index)
    local dest = addon.nodeHash[addon.GetFlightHash(index)]
    local src = addon.currentFP
    local FPDB = addon.FPDB[faction]
    local time = FPDB[src] and FPDB[src][dest] or FPDB[dest] and FPDB[dest][src]
    if time then
        addon.flightInfo.timer = time
        addon.flightInfo.dest = RXPCData.flightPaths[dest]
        addon.flightInfo.activeIndex = index
        return time
    else
        local totalTime = 0
        for i = 1,GetNumRoutes(index) do
            local hash = addon.GetFlightHash(index,i)
            dest = addon.nodeHash[hash]
            time = FPDB[src] and FPDB[src][dest]
            time = time or FPDB[dest] and FPDB[dest][src]
            if time then
                totalTime = totalTime + time
            else
                totalTime = 0
                break
            end
            src = dest
        end
        if totalTime > 0 then
            addon.flightInfo.timer = totalTime
            addon.flightInfo.activeIndex = index
            addon.flightInfo.dest = RXPCData.flightPaths[dest]
            return totalTime
        end
    end
end


_G.hooksecurefunc("TaxiNodeOnButtonEnter", function(button)  -- add time info on the taxi map tooltips

    local index = button:GetID()
    if TaxiNodeGetType(index) == "REACHABLE" then
        local time = GetFlightTime(index)
        if time then
            GameTooltip:AddLine(addon.icons.clock .. string.format("%d:%02d", time / 60, time % 60), 1, 1, 1)
            GameTooltip:Show()
        end
        --
        print(index,format("%.02f, %.02f",TaxiGetDestX(index,1)*100,TaxiGetDestY(index,1)*100))
    end
end)

addon.startFlight = 0
_G.hooksecurefunc("TakeTaxiNode", function(index)
    if addon.flightInfo.activeIndex ~= index then
        GetFlightTime(index)
    end
    addon.startFlight = GetTime()
end)
