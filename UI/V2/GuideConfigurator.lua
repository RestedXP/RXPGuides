local addonName, addon = ...

local AceGUI = LibStub("AceGUI-3.0")

local guideConfigurator

function addon.ui.v2:CreateConfigurator()
    if guideConfigurator then return guideConfigurator end

    addon.ui.v2.RegisterRXPGuideConfigurator()

    local frame = AceGUI:Create("RXPGuideConfigurator")
    RXPD = frame

    guideConfigurator = frame

    return frame
end

function addon.ui.v2.LaunchConfigurator(login)
    local f = addon.ui.v2:CreateConfigurator()

    f:Show()
    -- Set softcore or hardcore
    -- Proxmity Scanning (deprecated)
    -- Auction House
    -- Group Quests (turn into Group Settings)
    -- Dungeon selector
    --- Dungeons with bonuses and weighting
    --- Recommendations
    local isFirstRun = addon.RXPFrame:IsShown() and UnitLevel("player") == 1 and (not addon.currentGuide or addon.currentGuide.empty)

    if isFirstRun and login then
        if addon.settings.profile.hardcore then
            addon:LoadGuideTable(addon.defaultGroupHC, addon.defaultGuideHC)
        else
            addon:LoadGuideTable(addon.defaultGroup, addon.defaultGuide)
        end
    end
end
