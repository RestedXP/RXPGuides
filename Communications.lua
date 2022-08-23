local addonName, addon = ...

local fmt, mrand, smatch, sbyte = string.format, math.random, string.match,
                                  string.byte

local GetNumGroupMembers, SendChatMessage, GetTime, UnitLevel, UnitClass,
      UnitXP, UnitXPMax = GetNumGroupMembers, SendChatMessage, GetTime,
                          UnitLevel, UnitClass, UnitXP, UnitXPMax

local _G = _G

local playerName = _G.UnitName("player")

addon.comms = addon:NewModule("Communications", "AceEvent-3.0", "AceComm-3.0",
                              "AceSerializer-3.0")

addon.comms._commPrefix = "RXPGComms"
addon.comms.state = {
    rxpGroupDetected = false,
    updateFound = {guide = false, addon = false}
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
    local defaults = {profile = {announcements = {}, players = {}}}

    self.db = LibStub("AceDB-3.0"):New("RXPCComms", defaults)
    self.players = self.db.profile.players

    self:RegisterEvent("PLAYER_LEVEL_UP")
    self:RegisterEvent("GROUP_FORMED")
    self:RegisterEvent("GROUP_LEFT")
    self:RegisterEvent("PLAYER_XP_UPDATE")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")

    self:RegisterComm(self._commPrefix)
end

function addon.comms:PLAYER_LEVEL_UP(_, level)
    local msg, s

    if addon.settings.db.profile.enableTracker then
        local levelData = addon.tracker.reportData[level - 1]

        if levelData and levelData.timestamp and levelData.timestamp.started and
            levelData.timestamp.finished then
            s = levelData.timestamp.finished - levelData.timestamp.started

            msg = self.BuildNotification("I just leveled from %d to %d in %s",
                                         level - 1, level,
                                         addon.tracker:PrettyPrintTime(s))
            announceLevelUp(msg)
        else
            -- Leave enough time for TIME_PLAYED to return, ish
            C_Timer.After(5, function()
                levelData = addon.tracker.reportData[level - 1]

                if levelData and levelData.timestamp and
                    levelData.timestamp.started and levelData.timestamp.finished then

                    s = levelData.timestamp.finished -
                            levelData.timestamp.started

                    msg = self.BuildNotification(
                              "I just leveled from %d to %d in %s", level - 1,
                              level, addon.tracker:PrettyPrintTime(s))
                    announceLevelUp(msg)
                elseif addon.release == 'Development' then
                    self.PrettyPrint("Invalid .started or .finished %d", level)
                end
            end)
        end

        return
    end

    msg = self.BuildNotification("I just leveled up to %d", level)
    announceLevelUp(msg)
end

function addon.comms:GROUP_FORMED()
    C_Timer.After(5 + mrand(5), function() self:AnnounceSelf("ANNOUNCE") end)
end

function addon.comms:GROUP_LEFT() self.state.rxpGroupDetected = false end

function addon.comms:PLAYER_ENTERING_WORLD(_, isInitialLogin, isReloadingUi)
    if isInitialLogin or isReloadingUi then self:AnnounceSelf("ANNOUNCE") end
end

function addon.comms:PLAYER_XP_UPDATE()
    if self.state.lastXPGain then self:TallyGroup() end

    self.state.lastXPGain = GetTime()
end

function addon.comms:TallyGroup()
    if GetNumGroupMembers() < 1 then return end

    local diff = self.state.lastXPGain - GetTime()
    local name
    for i = 1, GetNumGroupMembers() - 1 do
        name = UnitName("party" .. i)
        if not name then break end

        if self.players[name] then
            self.players[name].timePlayed = self.players[name].timePlayed + diff
        else
            self.players[name] = {
                timePlayed = 0,
                class = UnitClassBase("party" .. i)
            }
        end
    end
end

function addon.comms:AnnounceSelf(command)
    -- TODO call when active guide changes
    local data = {
        command = command,
        player = {
            name = playerName,
            class = select(2, UnitClass("player")),
            level = UnitLevel("player"),
            xpPercentage = floor(UnitXP("player") / UnitXPMax("player"))
        },
        addon = {release = addon.release}
    }

    if addon.currentGuide then
        data.guide = {
            name = addon.currentGuide.name,
            version = addon.currentGuide.version
        }
    end

    self:Broadcast(data)
end

function addon.comms:OnCommReceived(prefix, data, _, sender)
    if prefix ~= self._commPrefix or sender == playerName then return end

    if UnitInBattleground("player") ~= nil or GetNumGroupMembers() <= 1 then
        return
    end

    local status, obj = self:Deserialize(data)

    if not status or not obj.command then return end

    self.state.rxpGroupDetected = true

    if obj.command == 'ANNOUNCE' then
        self:HandleAnnounce(obj)
        self:AnnounceSelf("REPLY")
    elseif obj.command == 'REPLY' then
        self:HandleAnnounce(obj)
        -- Don't respond on REPLY
    end

end

function addon.comms:IsNewRelease(theirRelease)
    -- Treat Development announcements as equal to current
    if theirRelease == 'Development' then
        return false
    elseif addon.release == 'Development' then
        self.PrettyPrint("IsNewRelease:theirRelease = %s", theirRelease)
        return false
    end

    local myMajor, myMinor, myPatch, mySub =
        smatch(addon.release, "v(%d+)%.(%d+)%.(%d+)(%a?)")

    mySub = mySub and sbyte(mySub) or 0

    local myIntVersion = tonumber(fmt('%d%d%d', myMajor, myMinor, myPatch))

    local theirMajor, theirMinor, theirPatch, theirSub =
        smatch(theirRelease, "v(%d+)%.(%d+)%.(%d)(%a?)")

    theirSub = theirSub and sbyte(theirSub) or 0

    local theirIntVersion = tonumber(fmt('%d%d%d', theirMajor, theirMinor,
                                         theirPatch))

    -- Failed to parse version
    if myIntVersion == 0 or theirIntVersion == 0 then return false end

    -- Sub versioned letter, compare ascii codes
    if myIntVersion == theirIntVersion and mySub < theirSub then return true end

    return myIntVersion < theirIntVersion
end

function addon.comms:HandleAnnounce(data)
    if not self.players[data.player.name] then
        self.players[data.player.name] = {timePlayed = 0}
    end

    self.players[data.player.name].class = data.player.class
    self.players[data.player.name].level = data.player.level
    self.players[data.player.name].xpPercentage = data.player.xpPercentage
    self.players[data.player.name].isRxp = true
    self.players[data.player.name].lastSeen = GetTime()

    if addon.settings.db.profile.checkVersions then
        if not self.state.updateFound.addon and
            self:IsNewRelease(data.addon.release) then

            self.state.updateFound.addon = true

            self.PrettyPrint("There's a new addon version (%s) available",
                             data.addon.release)
        end

        if not self.state.updateFound.guide and addon.currentGuide and
            data.guide and addon.currentGuide.name == data.guide.name and
            addon.currentGuide.version and data.guide.version and
            addon.currentGuide.version < data.guide.version then

            self.state.updateFound.guide = true

            self.PrettyPrint("There's a new version (%s) available for %s",
                             data.guide.version, data.guide.name)
        end
    end
end

function addon.comms:Broadcast(data)
    if UnitInBattleground("player") ~= nil or GetNumGroupMembers() <= 1 then
        return
    end

    local sz = self:Serialize(data)
    self:SendCommMessage(self._commPrefix, sz, "PARTY")
end

function addon.comms:AnnounceStepEvent(event, data)
    -- Only send branded messages if in an RXP party
    if not self.state.rxpGroupDetected and
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
        elseif addon.release == 'Development' then
            print(msg)
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
        elseif addon.release == 'Development' then
            print(msg)
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
        elseif addon.release == 'Development' then
            print(msg)
        end
    else
        error("Unhandled step event announce: (" .. event .. ")")
    end

end

function addon.comms.BuildNotification(msg, ...)
    return fmt("{rt3} %s: %s", addonName, fmt(msg, ...))
end

function addon.comms.PrettyPrint(msg, ...)
    print(fmt("%s%s: %s", addonName,
              addon.settings.db.profile.debug and ' (Debug)' or '',
              fmt(msg, ...)))
end

function addon.comms:OpenBugReport()
    local character = fmt("%s / %s / level %d (%.2f%%)", UnitRace("player"),
                          select(1, UnitClass("player")), UnitLevel("player"),
                          UnitXP("player") / UnitXPMax("player") * 100)

    local position = C_Map.GetPlayerMapPosition(
                         C_Map.GetBestMapForUnit("player") or -1, "player")
    local zone = fmt("%s / %s / %.2f,%.2f", GetRealZoneText(), GetSubZoneText(),
                     position and position.x * 100 or -1,
                     position and position.y * 100 or -1)

    local guide = fmt("%s (v%d)",
                      addon.currentGuide and addon.currentGuide.key or 'nil',
                      addon.currentGuide.name and addon.currentGuide.version or
                          'N/A')

    local stepData = ""
    if addon.currentGuide and addon.currentGuide.steps and RXPCData.currentStep then
        local step = addon.currentGuide.steps[RXPCData.currentStep]
        if type(step) == "table" then
            if step.elements then
                for s, e in pairs(step.elements) do
                    stepData = fmt(
                                   "%s\nStep %d:%d\n  title = %s\n  text = %s\n  tag = %s\n  questId = %s\n",
                                   stepData, RXPCData.currentStep, s,
                                   e.title or '', e.text or '', e.tag or '',
                                   e.questId or '')
                end
            else
                stepData = fmt("%s\nUnknown table", stepData, step)
            end
        elseif type(step) == "string" then
            stepData = fmt("%s\n%s", stepData, step)
        end

    else
        stepData = "N/A"
    end

    local content = fmt([[Describe your issue:



Do not edit below this line
```
Character: %s
Zone: %s
Guide: %s
Addon: %s
XP Rate: %.1f
Locale: %s
Realm: %s

Current Step data
%s
```
]], character or "Error", zone or "Error", guide or "Error", addon.release,
                        RXPCData.xprate, GetLocale(), GetRealmName(), stepData)

    local AceGUI = LibStub("AceGUI-3.0")
    local f = AceGUI:Create("Frame")

    f:SetLayout("Fill")
    f:EnableResize(true)
    f.statustext:GetParent():Hide()
    f:SetTitle("RestedXP Feedback Form")

    f.scrollContainer = AceGUI:Create("ScrollFrame")
    f.scrollContainer:SetLayout("Fill")
    f.scrollContainer:SetFullHeight(true)
    f:AddChild(f.scrollContainer)

    f.frame:SetBackdrop(addon.RXPFrame.backdropEdge)
    f.frame:SetBackdropColor(unpack(addon.colors.background))

    local editbox = AceGUI:Create("MultiLineEditBox")
    editbox:SetLabel(
        "Join our support discord at discord.gg/RestedXP and copy paste this form into #addon-feedback ")
    editbox:SetFullWidth(true)
    editbox:SetFullHeight(true)
    editbox:SetText(content)
    editbox:DisableButton(true)
    f.scrollContainer:AddChild(editbox)

    _G["RESTEDXP_BUG_REPORT_WINDOW"] = f.frame
    tinsert(_G.UISpecialFrames, "RESTEDXP_BUG_REPORT_WINDOW")

    -- TODO save to variable to preserve open/close
end
