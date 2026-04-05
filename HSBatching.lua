local _, addon = ...

-- Allows you to set your hearthstone as you teleport away to your previous location at the end of the hearthstone cast.
-- Only works if the binding confirmation and the HS spell cast are processed in the same batch (<10ms as of patch 1.14)
local HSframe = CreateFrame("Frame");
local currentFPS = GetCVar("maxfps")
local HSstart = 0
local barLabel = "Hearthstone"
local batchingWindow = 0.006
local bindConfirmation = string.gsub(CONFIRM_BINDER,"%%s",".-")
local IsCurrentSpell = C_Spell and C_Spell.IsCurrentSpell or _G.IsCurrentSpell

local ConfirmBinder
if C_PlayerInteractionManager and C_PlayerInteractionManager.ConfirmationInteraction and Enum and Enum.PlayerInteractionType and Enum.PlayerInteractionType.Binder then
    ConfirmBinder = function()
        return C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.Binder)
    end
else
    ConfirmBinder = _G.ConfirmBinder
end

local function StopHSTimer()
    HSframe:SetScript("OnUpdate", nil)
    SetCVar("maxfps", currentFPS)
    HSstart = 0
    addon.isCastingHS = false
    addon.StopTimer(barLabel)
end

local function SwitchBindLocation()
    if GetTime() - HSstart > 10 - batchingWindow then
        ConfirmBinder()
        StopHSTimer()
        -- print('bind-ok')
    elseif GetFramerate() < 20 then
        SetCVar("maxfps", currentFPS)
    end
    addon.isCastingHS = false
end
--[[
hooksecurefunc("SetCVar",function(n,v)
    if n == "maxfps" then
        print(n,v)--ok
        C_Timer.After(1,function()
            print(GetCVar("maxfps"))
        end)
    end
end)
]]

local function StartHSTimer()
    if HSstart == 0 and addon.settings.profile.enableHSbatch then
        --print('start-hs')
        local size = addon.settings.profile.batchSize or 6
        batchingWindow = size / 1e3
        currentFPS = GetCVar("maxfps")
        HSstart = GetTime()
        HSframe:SetScript("OnUpdate", SwitchBindLocation)
        local text = _G.StaticPopup1 and (_G.StaticPopup1.text or _G.StaticPopup1.Text)
        local bind = text and text:GetText() or ""
        if bind:find(bindConfirmation) then
            SetCVar("maxfps", "300")
            addon.isCastingHS = 0.5
            addon.StartTimer(10-batchingWindow, barLabel)
        end
    end
end

HSframe:SetScript("OnEvent", function(self, event, ...)
    if event == "UNIT_SPELLCAST_INTERRUPTED" then
        local unitTarget, _, spellID = ...
        -- Player interrupted Hearthstone cast
        if unitTarget == "player" and spellID == 8690 then
            StopHSTimer()
        end
    end
end)

HSframe:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED")

if _G.C_Container and _G.C_Container.UseContainerItem then -- DF+
    hooksecurefunc(C_Container, "UseContainerItem", function(...)
        if (C_Container.GetContainerItemID(...) == 6948) then
            StartHSTimer()
        end
    end)
else
    hooksecurefunc("UseContainerItem", function(...)
        if _G.GetContainerItemID(...) == 6948 then StartHSTimer() end
    end)
end

hooksecurefunc("UseAction", function(...)
    local event, id = GetActionInfo(...)
    --print(event,id,IsCurrentSpell(id))
    if event == "item" and id == 6948 or
        event == "macro" and (IsCurrentSpell(8690) or IsCurrentSpell(556)) or
        event == "spell" and id == 556 then StartHSTimer() end
end)
