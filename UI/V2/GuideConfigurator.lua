local addonName, addon = ...

function addon.ui.v2.LaunchConfigurator()
    local isFirstRun = addon.RXPFrame:IsShown() and UnitLevel("player") == 1 and (not addon.currentGuide or addon.currentGuide.empty)

    if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then return end

    if false and isFirstRun and addon.startHardcoreIntroUI then return addon.startHardcoreIntroUI() end

    addon.ui.v2:GetBrandedFrame("RXPConfigurator")

    -- Set softcore or hardcore
    -- Proxmity Scanning (deprecated)
    -- Auction House
    -- Group Quests (turn into Group Settings)
    -- Dungeon selector
    --- Dungeons with bonuses and weighting
    --- Recommendations

    if addon.settings.profile.hardcore then
        addon:LoadGuideTable(addon.defaultGroupHC, addon.defaultGuideHC)
    else
        addon:LoadGuideTable(addon.defaultGroup, addon.defaultGuide)
    end
end
