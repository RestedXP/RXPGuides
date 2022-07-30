local addonName, addon = ...

local fmt = string.format

local UnitInRaid, UnitInParty, GetNumGroupMembers, SendChatMessage = UnitInRaid,
                                                                     UnitInParty,
                                                                     GetNumGroupMembers,
                                                                     SendChatMessage

local _G = _G

addon.comms = addon:NewModule("Communications", "AceEvent-3.0")
addon.comms.state = {}

local function announceLevelUp(message)
    if GetNumGroupMembers() > 0 then
        local channel
        if UnitInRaid("player") then
            channel = "RAID"
        elseif UnitInParty("player") then
            channel = "PARTY"
        end

        if addon.settings.db.profile.enableLevelUpAnnounceGroup then
            SendChatMessage(message, channel, nil)
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
    local defaults = {profile = {levels = {}}}

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

            msg = self:BuildNotification("I just leveled from %d to %d in %s",
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

                msg = self:BuildNotification(
                          "I just leveled from %d to %d in %s", level - 1,
                          level, addon.tracker:PrettyPrintTime(s))
                announceLevelUp(msg)
            end)
        end

        return
    end

    msg = self:BuildNotification("I just leveled up to %d", level)
    announceLevelUp(msg)
end

function addon.comms:BuildNotification(msg, ...)
    return fmt("{rt3} %s: %s", addonName, fmt(msg, ...))
end
