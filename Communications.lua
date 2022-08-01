local addonName, addon = ...

local fmt = string.format

local GetNumGroupMembers, SendChatMessage, GetTime = GetNumGroupMembers,
                                                     SendChatMessage, GetTime

local _G = _G

addon.comms = addon:NewModule("Communications", "AceEvent-3.0")
addon.comms.state = {
    rxpGroupDetected = true -- TODO clustering and/or setting
}

local function announceLevelUp(message)
    if GetNumGroupMembers() > 0 then
        if addon.settings.db.profile.enableLevelUpAnnounceGroup then
            SendChatMessage(message, "PARTY", nil)
        end
    else
        if addon.settings.db.profile.enableLevelUpAnnounceSolo then
            SendChatMessage(message, "EMOTE", nil)
        end
    end

    if addon.settings.db.profile.enableLevelUpAnnounceGuild and IsInGuild() then
        SendChatMessage(message, "GUILD", nil)
    end
end

function addon.comms:Setup()
    local defaults = {profile = {levels = {}, announcements = {}}}

    self.db = LibStub("AceDB-3.0"):New("RXPCComms", defaults)

    self:RegisterEvent("PLAYER_LEVEL_UP")
end

function addon.comms:PLAYER_LEVEL_UP(_, level)
    local msg, s

    if addon.settings.db.profile.enableTracker then
        local levelData = addon.tracker.reportData[level - 1]

        if levelData then
            if level == 2 then
                s = levelData.timestamp.finished
            else
                -- missing data or alpha/beta tracking data
                if not levelData.timestamp.started or
                    levelData.timestamp.started == -1 then return end

                s = levelData.timestamp.finished - levelData.timestamp.started
            end

            msg = self.BuildNotification("I just leveled from %d to %d in %s",
                                         level - 1, level,
                                         addon.tracker:PrettyPrintTime(s))
            announceLevelUp(msg)
        else
            -- Leave enough time for TIME_PLAYED to return, ish
            C_Timer.After(5, function()
                levelData = addon.tracker.reportData[level - 1]

                if level == 2 then
                    s = levelData.timestamp.finished
                else
                    s = levelData.timestamp.finished -
                            levelData.timestamp.started
                end

                msg = self.BuildNotification(
                          "I just leveled from %d to %d in %s", level - 1,
                          level, addon.tracker:PrettyPrintTime(s))
                announceLevelUp(msg)
            end)
        end

        return
    end

    msg = self.BuildNotification("I just leveled up to %d", level)
    announceLevelUp(msg)
end

function addon.comms:AnnounceStepEvent(event, data)
    -- Only send branded messages if in an RXP party
    if not self.state.rxpGroupDetected or
        not addon.settings.db.profile.alwaysSendBranded then return end

    -- Probably step replay, shush
    -- currentStep == 1 is probably spam from rapid replay
    if RXPCData.currentStep == 1 or GetTime() - addon.lastStepUpdate < 1 then
        return
    end

    -- TODO purge cache at startup for announcements > 3 levels old
    if not self.db.profile.announcements[data.guideName] then
        self.db.profile.announcements[data.guideName] = {
            complete = {},
            collect = {}
        }
    end

    local guideAnnouncements = self.db.profile.announcements[data.guideName]

    if event == '.complete' then
        -- Don't handle announcements if Questie loaded
        if _G.Questie and not addon.settings.db.profile.ignoreQuestieConflicts then
            return
        end

        -- Replay of guide, don't spam
        if guideAnnouncements.complete[data.title] then return end

        local msg = self.BuildNotification("Completed step %d - %s", data.step,
                                           data.title)

        if addon.settings.db.profile.enableCompleteStepAnnouncements and
            GetNumGroupMembers() > 0 then
            SendChatMessage(msg, "PARTY", nil)
        end

        guideAnnouncements.complete[data.title] = UnitLevel("Player")

    elseif event == '.collect' then
        -- Don't handle announcements if Questie loaded
        if _G.Questie and not addon.settings.db.profile.ignoreQuestieConflicts then
            return
        end

        -- Replay of guide, don't spam
        if guideAnnouncements.collect[data.title] then return end

        local msg = self.BuildNotification("Collected step %d - %s", data.step,
                                           data.title)

        if addon.settings.db.profile.enableCollectAnnouncements and
            GetNumGroupMembers() > 0 then
            SendChatMessage(msg, "PARTY", nil)
        end

        guideAnnouncements.collect[data.title] = UnitLevel("Player")

    elseif event == '.fly' then
        -- Questie doesn't announce flight-time, so okay to send this out
        local msg = self.BuildNotification("Flying to %s ETA %s",
                                           data.destination,
                                           addon.tracker:PrettyPrintTime(
                                               data.duration))

        if addon.settings.db.profile.enableFlyStepAnnouncements and
            GetNumGroupMembers() > 0 then
            SendChatMessage(msg, "PARTY", nil)
        end
    else
        error("Unhandled step event announce: (" .. event .. ")")
    end

end

function addon.comms.BuildNotification(msg, ...)
    return fmt("{rt3} %s: %s", addonName, fmt(msg, ...))
end
