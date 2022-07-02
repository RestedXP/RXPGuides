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
