local _,addon = ...
local RXPFrame = addon.RXPFrame
local candy = LibStub("LibCandyBar-3.0")

local BarContainer = CreateFrame("Frame","$parentBarContainer",RXPFrame)

BarContainer.height = 16

RXPFrame.BarContainer = BarContainer
BarContainer.bars = {}
BarContainer.barTexture = "Interface\\CHARACTERFRAME\\BarFill"
BarContainer.barIcon = "Interface\\ICONS\\INV_Misc_PocketWatch_02"

BarContainer:ClearAllPoints()
BarContainer:SetPoint("TOPLEFT",RXPFrame.Footer,"TOPLEFT",4,0)
BarContainer:SetPoint("BOTTOMRIGHT",RXPFrame.Footer,"BOTTOMRIGHT",0,1)

local function OnHide(self)
    BarContainer.bars[self:GetLabel()] = nil
    addon:SortTimers()
    if not next(BarContainer.bars) then
        RXPFrame.Footer.icon:SetAlpha(1)
        RXPFrame.Footer.text:SetAlpha(1)
        RXPFrame.Footer.cog:SetAlpha(1)
    end
end

function addon:SortTimers()

    local lastBar = false
    local bars = {}
    local reverse

    for l,bar in pairs(BarContainer.bars) do
        table.insert(bars,bar)
    end

    if RXPFrame.CurrentStepFrame.anchor == "BOTTOM" and #bars > 1 then
        BarContainer:ClearAllPoints()
        BarContainer:SetPoint("BOTTOMLEFT",RXPFrame.GuideName,"TOPLEFT",4,0)
        BarContainer:SetPoint("BOTTOMRIGHT",RXPFrame.GuideName,"TOPRIGHT",0,1)
        BarContainer:SetHeight(BarContainer.height*#bars)
        reverse = true
    else
        BarContainer:ClearAllPoints()
        BarContainer:SetPoint("TOPLEFT",RXPFrame.Footer,"TOPLEFT",4,0)
        BarContainer:SetPoint("BOTTOMRIGHT",RXPFrame.Footer,"BOTTOMRIGHT",0,1)
    end

    table.sort(bars,function(b1,b2)
        return b1.exp > b2.exp
    end)

    for _,bar in ipairs(bars) do
        bar:ClearAllPoints()
        if lastBar then
            if reverse then
                bar:SetPoint("BOTTOMLEFT",lastBar,"TOPLEFT")
                bar:SetPoint("BOTTOMRIGHT",lastBar,"TOPRIGHT")
            else
                bar:SetPoint("TOPLEFT",lastBar,"BOTTOMLEFT")
                bar:SetPoint("TOPRIGHT",lastBar,"BOTTOMRIGHT")
            end
        else
            if reverse then
                bar:SetPoint("BOTTOMLEFT",BarContainer,"BOTTOMLEFT")
                bar:SetPoint("BOTTOMRIGHT",BarContainer,"BOTTOMRIGHT")
            else
                bar:SetPoint("TOPLEFT",BarContainer,"TOPLEFT")
                bar:SetPoint("TOPRIGHT",BarContainer,"TOPRIGHT")
            end
        end
        lastBar = bar
        bar:SetHeight(BarContainer.height)
    end
end

local barPool = {}
local function CreateBar(label)
    local bar
    for i,v in pairs(barPool) do
        if not v:IsShown() then
            bar = v
            break
        end
    end
    if not bar then
        bar = candy:New(BarContainer.barTexture, 100, 16)
        table.insert(barPool,bar)
        bar:SetDuration(60)
        bar:SetScript("OnHide",OnHide)
    end
    bar:SetLabel(label)
    --print(bar:GetScript("OnHide"))
    return bar
end

function addon.HideTimers()
    for _,bar in pairs(barPool) do
        if bar:IsShown() then
            bar:Hide()
        end
    end
    RXPFrame.Footer.icon:SetAlpha(1)
    RXPFrame.Footer.text:SetAlpha(1)
    RXPFrame.Footer.cog:SetAlpha(1)
end

function addon.StopTimer(label)
    local bar = BarContainer.bars[label]
    if not bar then
        return
    end

    bar:Stop()
    addon:SortTimers()
end

function addon.StartTimer(duration,label,options)
    if type(duration) ~= "number" or duration <= 0 or not RXPFrame:IsShown() then return end
    label = label or ""
    local bar = BarContainer.bars[label] or CreateBar(label)
    BarContainer.bars[label] = bar
    --bar:ClearAllPoints()

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
    bar:SetIcon(BarContainer.barIcon)
    bar:SetColor(unpack(addon.colors.mapPins))
    bar:SetHeight(BarContainer.height)
    bar:Start()
    RXPFrame.Footer.icon:SetAlpha(0)
    RXPFrame.Footer.text:SetAlpha(0)
    RXPFrame.Footer.cog:SetAlpha(0)

    addon:SortTimers()
    return bar
end


local flightInfo = {}
addon.flightInfo = flightInfo
local nodeHash = {}
flightInfo.nodeHash = nodeHash
local flightUpdate = 0

function addon:TAXIMAP_OPENED()
    local mapID = C_Map.GetBestMapForUnit("player")
    local cTime = GetTime()
    if mapID and cTime - flightUpdate > 1 then
        flightUpdate = cTime
        table.wipe(nodeHash)
        table.wipe(flightInfo)
        flightInfo.nodeHash = nodeHash
        local FPList = C_TaxiMap.GetAllTaxiNodes(mapID)
        for _, v in pairs(FPList) do
            local id = v.nodeID
            --print(id)
            if id and v.state ~= Enum.FlightPathState.Unreachable then
                local hash = addon.GetFlightHash(v.slotIndex)
                flightInfo.nodeHash[hash] = id
                RXPCData.flightPaths[id] = v.name
                flightInfo[v.slotIndex] = v.nodeID
                --print(v.nodeID,v.name,hash)
                if v.state == Enum.FlightPathState.Current then
                    flightInfo.currentFP = id
                end
            end
        end
    end
    flightInfo.MapID = mapID
end

function addon:PLAYER_CONTROL_LOST()
    -- Don't display flight timer if addon hidden
    if not (flightInfo and flightInfo.startFlight) then return end
    if GetTime() - flightInfo.startFlight < 1.5 then
        flightInfo.lastFlightSrc = flightInfo.currentFP
        flightInfo.lastFlightDest = flightInfo.dest
        if addon.RXPFrame and addon.RXPFrame:IsShown() and
         flightInfo.timer and addon.settings.profile.showFlightTimers then
            flightInfo.flightBar = addon.StartTimer(
                flightInfo.timer,
                RXPCData.flightPaths[flightInfo.dest]
            )
        end
        addon:SendEvent("RXP_FLIGHT_START",flightInfo.currentFP,flightInfo.dest,flightInfo.timer)
    end
end

function addon:PLAYER_CONTROL_GAINED()
    if flightInfo.flightBar then
        flightInfo.flightBar:Hide()
    end
end

--You can only retrieve x,y info from each leg
function addon.GetFlightHash(index,level)
    local x,y
    if level then
        x,y = TaxiGetDestX(index,level), TaxiGetDestY(index,level)
    else
        x,y = TaxiNodePosition(index)
    end
    --print('h:',x,y)
    return math.floor(x*4096)+math.floor(y*4096)*4096
end

local function GetFlightTime(index)
    local faction = addon.player.faction
    local dest = flightInfo.nodeHash[addon.GetFlightHash(index)]
    local src = flightInfo.currentFP
    flightInfo.dest = dest
    flightInfo.activeIndex = index
    local FPDB = addon.FPDB and addon.FPDB[faction]
    if not FPDB then
        flightInfo.timer = nil
        return
    end
    --uses the flight timer from destination to source if the timer is not found
    local time = FPDB[src] and FPDB[src][dest] or FPDB[dest] and FPDB[dest][src]
    if time then
        flightInfo.timer = time
        return time
    else
        local totalTime = 0
        --Sums the flight time for each leg if the direct timer is not found
        for i = 1,GetNumRoutes(index) do
            local hash = addon.GetFlightHash(index,i)
            dest = flightInfo.nodeHash[hash]
            time = FPDB[src] and FPDB[src][dest] or FPDB[dest] and FPDB[dest][src]
            if time then
                totalTime = totalTime + time
            else
                totalTime = 0
                break
            end
            src = dest
        end
        if totalTime > 0 then
            flightInfo.timer = totalTime
            return totalTime
        end
    end
    flightInfo.timer = nil
end

 -- add flight path times to taxi map tooltips:
_G.hooksecurefunc("TaxiNodeOnButtonEnter", function(button)
    if not (addon.settings.profile and addon.settings.profile.showFlightTimers) then
        return
    end

    local index = button:GetID()
    if TaxiNodeGetType(index) == "REACHABLE" then
        local time = GetFlightTime(index)
        if time and not _G.GameTooltip:IsForbidden() then
            _G.GameTooltip:AddLine(format("%s %d:%02d", addon.icons.clock, time / 60, time % 60), 1, 1, 1)
            _G.GameTooltip:Show()
        end
        --
        --print(index,format("%.02f, %.02f",TaxiGetDestX(index,1)*100,TaxiGetDestY(index,1)*100))
    end
end)

flightInfo.startFlight = 0
_G.hooksecurefunc("TakeTaxiNode", function(index)
    if flightInfo.activeIndex ~= index then
        GetFlightTime(index)
    end
    flightInfo.startFlight = GetTime()
end)
