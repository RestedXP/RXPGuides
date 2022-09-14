local _, addon = ...

-- Allows you to set your hearthstone as you teleport away to your previous location at the end of the hearthstone cast.
-- Only works if the binding confirmation and the HS spell cast are processed in the same batch (<10ms as of patch 1.14)
local HSframe = CreateFrame("Frame");
local currentFPS = GetCVar("maxfps")
local HSstart = 0
local batchingWindow = 0.005

local function SwitchBindLocation()
    if GetTime() - HSstart > 10 - batchingWindow then
        ConfirmBinder()
        HSframe:SetScript("OnUpdate", nil)
        SetCVar("maxfps", currentFPS)
        HSstart = 0
    end
end

local function StartHSTimer()
    if HSstart == 0 then
        batchingWindow = addon.settings.db.profile.batchSize / 1e3
        currentFPS = GetCVar("maxfps")
        SetCVar("maxfps", 0)
        HSstart = GetTime()
        HSframe:SetScript("OnUpdate", SwitchBindLocation)
    end
end

hooksecurefunc("UseContainerItem", function(...)
    if GetContainerItemID(...) == 6948 then StartHSTimer() end
end)

hooksecurefunc("UseAction", function(...)
    local event, id = GetActionInfo(...)
    if event == "item" and id == 6948 or event == "macro" and
        IsCurrentSpell(8690) then StartHSTimer() end
end)
