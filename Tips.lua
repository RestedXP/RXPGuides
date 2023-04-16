local _, addon = ...

if addon.gameVersion > 40000 then return end

local GetTime, GetMirrorTimerProgress = _G.GetTime, _G.GetMirrorTimerProgress
local UIErrorsFrame = _G.UIErrorsFrame
local STRING_ENVIRONMENTAL_DAMAGE_DROWNING =
    _G.STRING_ENVIRONMENTAL_DAMAGE_DROWNING

local L = addon.locale.Get

addon.tips = addon:NewModule("Tips", "AceEvent-3.0")

local session = {
    checkFrequency = 0.5,
    checkLast = GetTime(),
    lastAlert = 0,
    alertFrequency = 1
}

function addon.tips:Setup()
    if not addon.settings.db.profile.enableTips then return end

    addon.tips:CreateTipsFrame()

    self:RegisterEvent("MIRROR_TIMER_START")
    self:RegisterEvent("MIRROR_TIMER_STOP")

    -- Prioritize minimap button, as main frame can be easily hidden
    if addon.settings.db.profile.enableMinimapButton then
        addon.settings.minimapFrame:HookScript("OnUpdate", self.CheckEvents)
    elseif not addon.settings.db.profile.hideGuideWindow then
        addon.RXPFrame:HookScript("OnUpdate", self.CheckEvents)
        -- elseif addon.tips.frame then
    else
        addon.comms.PrettyPrint(
            L("No enabled RXP frames for tips functionality")) -- TODO locale
    end
end

function addon.tips:CreateTipsFrame()
    if not addon.settings.db.profile.enableTipsFrame then return end
    -- TODO
end

function addon.tips:MIRROR_TIMER_START(_, timerName, value, maxValue, rate)
    if timerName ~= "BREATH" or
        not addon.settings.db.profile.enableDrowningWarning then return end

    -- Recovering breath
    if rate > 0 then
        session.breath = nil
        return
    end

    -- Draining down, event fires with 30 when regaining breath
    session.breath = {value = value, maxValue = maxValue}
end

function addon.tips:MIRROR_TIMER_STOP(_, timerName)
    if timerName ~= "BREATH" or
        not addon.settings.db.profile.enableDrowningWarning then return end

    session.breath = nil
end

function addon.tips.CheckEvents()
    if not addon.settings.db.profile.enableTips then return end

    if GetTime() - session.checkLast <= session.checkFrequency then return end

    if session.breath then
        session.breath.value = GetMirrorTimerProgress("BREATH")

        if session.breath.value == 0 or
            (session.breath.value / session.breath.maxValue) <
            addon.settings.db.profile.drowningThreshold then

            if GetTime() - session.lastAlert > session.alertFrequency then
                -- TODO flash screen edges?
                FlashClientIcon()
                UIErrorsFrame:AddMessage(STRING_ENVIRONMENTAL_DAMAGE_DROWNING,
                                         1.0, 0.1, 0.1, session.alertFrequency);

                if addon.settings.db.profile.enableDrowningWarningSound then
                    PlaySound(_G.SOUNDKIT.RAID_WARNING, "Master")
                end
                session.lastAlert = GetTime()
            end

        end
    end

    session.checkLast = GetTime()
end
