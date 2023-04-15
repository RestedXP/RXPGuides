local _, addon = ...

if addon.gameVersion > 40000 then return end

addon.tips = addon:NewModule("Tips", "AceEvent-3.0")

function addon.tips:Setup()
    if not addon.settings.db.profile.enableTips then return end

    addon.tips:CreateTipsFrame()
end

function addon.tips:CreateTipsFrame()
    if not addon.settings.db.profile.enableTipsFrame then return end
    -- TODO
end
