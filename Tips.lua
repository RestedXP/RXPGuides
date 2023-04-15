local _, addon = ...

if addon.gameVersion > 40000 then return end

local GetTime = _G.GetTime

local L = addon.locale.Get

addon.tips = addon:NewModule("Tips", "AceEvent-3.0")

local session = {checkFrequency = 0.5, checkLast = GetTime()}
local BREATH_WARNING_THRESHOLD = 0.2

function addon.tips:Setup()
    if not addon.settings.db.profile.enableTips then return end

    addon.tips:CreateTipsFrame()

    self:RegisterEvent("MIRROR_TIMER_START")
    self:RegisterEvent("MIRROR_TIMER_STOP")

    if not addon.settings.db.profile.hideGuideWindow then
        addon.RXPFrame:HookScript("OnUpdate", self.CheckEvents)
    elseif addon.settings.db.profile.enableMinimapButton then
        addon.settings.minimapFrame:HookScript("OnUpdate", self.CheckEvents)
        -- elseif addon.tips.frame then
    else
        addon.comms.PrettyPrint(
            L("No enabled RXP frames for tips functionality"))
    end
end

function addon.tips:CreateTipsFrame()
    if not addon.settings.db.profile.enableTipsFrame then return end
    -- TODO
end

function addon.tips:MIRROR_TIMER_START(_, timerName, value, maxValue, rate)
    if timerName ~= "BREATH" or
        not addon.settings.db.profile.enableBreathWarning then return end

    -- Recovering breath
    if rate > 0 then session.breath = nil end

    print("MIRROR_TIMER_START", timerName)

    -- Draining down, event fires with 30 when regaining breath
    session.breath = {value = value, maxValue = maxValue}
end

function addon.tips:MIRROR_TIMER_STOP(_, timerName)
    if timerName ~= "BREATH" or
        not addon.settings.db.profile.enableBreathWarning then return end

    print("MIRROR_TIMER_STOP", timerName)

    session.breath = nil
    -- TODO
end

function addon.tips.CheckEvents()
    if not addon.settings.db.profile.enableTips then return end

    if GetTime() - session.checkLast <= session.checkFrequency then return end

    if session.breath then
        session.breath.value = GetMirrorTimerProgress("BREATH")

        if session.breath.value == 0 or
            (session.breath.value / session.breath.maxValue) <
            BREATH_WARNING_THRESHOLD then
            print("Drowning!", session.breath.value / session.breath.maxValue)

            -- TODO notify throttling
            -- TODO sound on drowning
            -- TODO flash screen edges
            FlashClientIcon()

        end
    end

    session.checkLast = GetTime()
end
