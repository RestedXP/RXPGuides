local _, addon = ...
local RXPFrame = addon.RXPFrame
local candy = LibStub("LibCandyBar-3.0")

local BarContainer = CreateFrame("Frame", "$parentBarContainer", RXPFrame)

BarContainer.height = 16

RXPFrame.BarContainer = BarContainer
BarContainer.bars = {}
BarContainer.barTexture = "Interface\\CHARACTERFRAME\\BarFill"
BarContainer.barIcon = "Interface\\ICONS\\INV_Misc_PocketWatch_02"

BarContainer:ClearAllPoints()
BarContainer:SetPoint("TOPLEFT", RXPFrame.Footer, "TOPLEFT", 4, 0)
BarContainer:SetPoint("BOTTOMRIGHT", RXPFrame.Footer, "BOTTOMRIGHT", 0, 1)

function addon:SortTimers()
    local bars = {}
    for _, bar in pairs(BarContainer.bars) do if bar:IsShown() then table.insert(bars, bar) end end

    local guideWindow = addon.v2.IsEnabled and addon.v2:IsEnabled() and addon.v2:GetGuideWindow()
    local reverse = not guideWindow and RXPFrame.CurrentStepFrame.anchor == "BOTTOM" and #bars > 1

    BarContainer:ClearAllPoints()

    if guideWindow then
        BarContainer:SetPoint("TOPLEFT", guideWindow.footer, "TOPLEFT", 0, 0)
        BarContainer:SetPoint("BOTTOMRIGHT", guideWindow.footer, "BOTTOMRIGHT", -12, 0)
    elseif reverse then
        BarContainer:SetPoint("BOTTOMLEFT", RXPFrame.GuideName, "TOPLEFT", 4, 0)
        BarContainer:SetPoint("BOTTOMRIGHT", RXPFrame.GuideName, "TOPRIGHT", 0, 1)
        BarContainer:SetHeight(BarContainer.height * #bars)
    else
        BarContainer:SetPoint("TOPLEFT", RXPFrame.Footer, "TOPLEFT", 4, 0)
        BarContainer:SetPoint("BOTTOMRIGHT", RXPFrame.Footer, "BOTTOMRIGHT", 0, 1)
    end

    local footerAlpha = #bars > 0 and 0 or 1
    RXPFrame.Footer.icon:SetAlpha(footerAlpha)
    RXPFrame.Footer.text:SetAlpha(footerAlpha)
    RXPFrame.Footer.cog:SetAlpha(footerAlpha)

    if guideWindow then guideWindow.footerText:SetAlpha(footerAlpha) end

    table.sort(bars, function(b1, b2) return b1.exp > b2.exp end)

    local lastBar, anchor
    for _, bar in ipairs(bars) do
        anchor = lastBar or BarContainer
        bar:ClearAllPoints()

        if reverse then
            bar:SetPoint("BOTTOMLEFT", anchor, lastBar and "TOPLEFT" or "BOTTOMLEFT")
            bar:SetPoint("BOTTOMRIGHT", anchor, lastBar and "TOPRIGHT" or "BOTTOMRIGHT")
        elseif guideWindow and not lastBar then
            bar:SetPoint("TOPLEFT", anchor, "TOPLEFT")
            bar:SetPoint("BOTTOMRIGHT", anchor, "BOTTOMRIGHT")
        else
            bar:SetPoint("TOPLEFT", anchor, lastBar and "BOTTOMLEFT" or "TOPLEFT")
            bar:SetPoint("TOPRIGHT", anchor, lastBar and "BOTTOMRIGHT" or "TOPRIGHT")
        end

        if not guideWindow then bar:SetHeight(BarContainer.height) end

        lastBar = bar
    end
end

function addon.HideTimers()
    for _, bar in pairs(BarContainer.bars) do bar:Hide() end

    addon:SortTimers()
end

function addon.ShowTimers()
    local ctime = GetTime()

    for _, bar in pairs(BarContainer.bars) do if bar.exp > ctime then bar:Show() end end

    addon:SortTimers()
end

function addon.StopTimer(label)
    local bar = BarContainer.bars[label]

    if bar then bar:Stop() end
end

function addon.StartTimer(duration, label, options)
    if type(duration) ~= "number" or duration <= 0 or not RXPFrame:IsShown() then return end
    label = label or ""

    local bar = BarContainer.bars[label]

    if not bar then
        bar = candy:New(BarContainer.barTexture, 100, BarContainer.height)
        bar:SetLabel(label)
        BarContainer.bars[label] = bar
    end

    bar:SetDuration(duration)

    if options then
        if options.colors then bar:SetColor(unpack(options.colors)) end

        if options.texture then bar:SetTexture(options.texture) end

        if options.icon then bar:SetIcon(options.icon) end
    end

    bar:SetIcon(BarContainer.barIcon)
    bar:SetColor(unpack(addon.colors.mapPins))
    bar:SetHeight(BarContainer.height)
    bar:Start()

    addon:SortTimers()

    return bar
end

local flightInfo = {}
addon.flightInfo = flightInfo

local nodeHash = {}
flightInfo.nodeHash = nodeHash

local flightUpdate = 0

-- LibCandyBar fires this before returning the bar to its shared pool.
candy.RegisterCallback(BarContainer, "LibCandyBar_Stop", function(_, bar)
    local label = bar:GetLabel()

    if BarContainer.bars[label] ~= bar then return end

    BarContainer.bars[label] = nil

    if flightInfo.flightBar == bar then flightInfo.flightBar = nil end

    addon:SortTimers()
end)

function addon:TAXIMAP_OPENED()
    local mapID = C_Map.GetBestMapForUnit("player")
    local cTime = GetTime()

    if mapID and cTime - flightUpdate > 1 then
        flightUpdate = cTime
        table.wipe(nodeHash)
        table.wipe(flightInfo)

        flightInfo.nodeHash = nodeHash

        local FPList = C_TaxiMap.GetAllTaxiNodes(mapID)
        local id, hash

        for _, v in pairs(FPList) do
            id = v.nodeID
            -- print(id)
            if id and v.state ~= Enum.FlightPathState.Unreachable then
                hash = addon.GetFlightHash(v.slotIndex)

                flightInfo.nodeHash[hash] = id
                RXPCData.flightPaths[id] = v.name
                flightInfo[v.slotIndex] = v.nodeID

                -- print(v.nodeID,v.name,hash)
                if v.state == Enum.FlightPathState.Current then flightInfo.currentFP = id end
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

        if addon.RXPFrame and addon.RXPFrame:IsShown() and flightInfo.timer and addon.settings.profile.showFlightTimers then
            flightInfo.flightBar = addon.StartTimer(flightInfo.timer, RXPCData.flightPaths[flightInfo.dest])
        end

        addon:SendEvent("RXP_FLIGHT_START", flightInfo.currentFP, flightInfo.dest, flightInfo.timer)
    end
end

function addon:PLAYER_CONTROL_GAINED() if flightInfo.flightBar then flightInfo.flightBar:Stop() end end

-- You can only retrieve x,y info from each leg
function addon.GetFlightHash(index, level)
    local x, y
    if level then
        local slot = TaxiGetNodeSlot and TaxiGetNodeSlot(index, level, false)
        if slot and slot > 0 then
            x, y = TaxiNodePosition(slot)
        else
            x, y = TaxiGetDestX(index, level), TaxiGetDestY(index, level)
        end
    else
        x, y = TaxiNodePosition(index)
    end
    -- print('h:',x,y)
    return math.floor(x * 4096) + math.floor(y * 4096) * 4096
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
    -- uses the flight timer from destination to source if the timer is not found
    local time = FPDB[src] and FPDB[src][dest] or FPDB[dest] and FPDB[dest][src]
    if time then
        flightInfo.timer = time
        return time
    else
        local totalTime = 0
        -- Sums the flight time for each leg if the direct timer is not found
        for i = 1, GetNumRoutes(index) do
            local hash = addon.GetFlightHash(index, i)
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
    if not (addon.settings.profile and addon.settings.profile.showFlightTimers) then return end

    local index = button:GetID()
    if TaxiNodeGetType(index) == "REACHABLE" then
        local time = GetFlightTime(index)
        if time and not _G.GameTooltip:IsForbidden() then
            _G.GameTooltip:AddLine(format("%s %d:%02d", addon.icons.clock, time / 60, time % 60), 1, 1, 1)
            _G.GameTooltip:Show()
        end
        --
        -- print(index,format("%.02f, %.02f",TaxiGetDestX(index,1)*100,TaxiGetDestY(index,1)*100))
    end
end)

flightInfo.startFlight = 0
_G.hooksecurefunc("TakeTaxiNode", function(index)
    if flightInfo.activeIndex ~= index then GetFlightTime(index) end
    flightInfo.startFlight = GetTime()
end)
