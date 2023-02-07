local _, addon = ...

-- Allows you to set your hearthstone as you teleport away to your previous location at the end of the hearthstone cast.
-- Only works if the binding confirmation and the HS spell cast are processed in the same batch (<10ms as of patch 1.14)
local HSframe = CreateFrame("Frame");
local currentFPS = GetCVar("maxfps")
local HSstart = 0
local batchingWindow = 0.005

local function SwitchBindLocation()
    if GetTime() - HSstart > 10 - batchingWindow then
        if ConfirmBinder then
            ConfirmBinder()
        elseif C_PlayerInteractionManager then
            C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.Binder)
        end
        HSframe:SetScript("OnUpdate", nil)
        local size = addon.settings.db.profile.batchSize or 5
        if size < 5 then
            SetCVar("maxfps", currentFPS)
        end
        HSstart = 0
    end
end

local function StartHSTimer()
    if HSstart == 0 then
        local size = addon.settings.db.profile.batchSize or 5
        batchingWindow = size / 1e3
        currentFPS = GetCVar("maxfps")
        if size < 5 then
            SetCVar("maxfps", 0)
        end
        HSstart = GetTime()
        HSframe:SetScript("OnUpdate", SwitchBindLocation)
    end
end

if _G.C_Container and _G.C_Container.UseContainerItem then -- DF+
    hooksecurefunc(C_Container, "UseContainerItem", function(...)
        if (C_Container.GetContainerItemID(...) == 6948) then
            StartHSTimer()
        end
    end)
else
    hooksecurefunc("UseContainerItem", function(...)
        if GetContainerItemID(...) == 6948 then StartHSTimer() end
    end)
end

hooksecurefunc("UseAction", function(...)
    local event, id = GetActionInfo(...)
    if event == "item" and id == 6948 or event == "macro" and
        IsCurrentSpell(8690) then StartHSTimer() end
end)
