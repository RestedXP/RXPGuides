local _, addon = ...

local _G = _G

local fmt, mrand, smatch, sbyte, tostr = string.format, math.random, string.match, string.byte, tostring

local GetNumGroupMembers, GetTime, pcall = _G.GetNumGroupMembers, _G.GetTime, _G.pcall
local UnitXP, UnitXPMax, UnitName, UnitClassBase = _G.UnitXP, _G.UnitXPMax, _G.UnitName, _G.UnitClassBase

local SendChatMessage = C_ChatInfo and C_ChatInfo.SendChatMessage or _G.SendChatMessage

local L = addon.locale.Get

local AceGUI = LibStub("AceGUI-3.0")

addon.comms = addon:NewModule("Communications", "AceEvent-3.0", "AceComm-3.0", "AceSerializer-3.0")

addon.comms._commPrefix = "RXPGComms"
addon.comms.state = {rxpGroupDetected = false, updateFound = {guide = false, addon = false}}

local function announceLevelUp(message)
    if not message then return end

    if GetNumGroupMembers() > 0 then
        if addon.settings.profile.enableLevelUpAnnounceGroup then SendChatMessage(message, "PARTY", nil) end
    else
        if addon.settings.profile.enableLevelUpAnnounceSolo then SendChatMessage(message, "EMOTE", nil) end
    end

    if addon.settings.profile.enableLevelUpAnnounceGuild and IsInGuild() then SendChatMessage(message, "GUILD", nil) end
end

function addon.comms:Setup()
    local defaults = {profile = {announcements = {}, players = {}}}

    self.db = LibStub("AceDB-3.0"):New("RXPCComms", defaults)
    self.players = self.db.profile.players

    -- These shouldn't trigger at max level, but disabling for optimization
    if addon.player.level < addon.player.maxlevel then
        self:RegisterEvent("CHAT_MSG_COMBAT_XP_GAIN")
        self:RegisterEvent("QUEST_TURNED_IN")
        self:RegisterEvent("PLAYER_LEVEL_UP")
    end

    -- Leave addon or guide version checks even if max level
    self:RegisterEvent("GROUP_FORMED")
    self:RegisterEvent("GROUP_LEFT")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")

    self:RegisterComm(self._commPrefix)

    -- Update Feedback Report into GuideWindow context menu, load order workaround
    for i, m in ipairs(addon.RXPFrame.bottomMenu) do
        if m.text == L("Give Feedback for step") then
            addon.RXPFrame.bottomMenu[i].func = addon.comms.OpenBugReport
            break
        end
    end

    addon.comms:UpgradeDB()
end

function addon.comms:UpgradeDB()
    local abs = math.abs
    for _, data in pairs(self.players) do
        if data.timePlayed < 0 then
            data.timePlayed = abs(data.timePlayed)
        end

        -- Initial logic didn't calculate XP properly
        -- Only counted the first XP chunk
        if not data.version then
            data.version = 1
            data.xp = 0
        end
    end
end

function addon.comms:PLAYER_ENTERING_WORLD(_, isInitialLogin, isReloadingUi)
    if isInitialLogin or isReloadingUi then self:AnnounceSelf("ANNOUNCE") end
end

function addon.comms:GROUP_FORMED() C_Timer.After(5 + mrand(5), function() self:AnnounceSelf("ANNOUNCE") end) end

function addon.comms:GROUP_LEFT() self.state.rxpGroupDetected = false end

function addon.comms:PLAYER_LEVEL_UP(_, level)
    if not addon.settings.profile.enableTracker then
        announceLevelUp(self.BuildNotification(L("I just leveled up to %d"), level))

        return
    end

    local msg, s
    local levelData = addon.tracker.reportData[level - 1]

    if levelData and levelData.timestamp and levelData.timestamp.started and levelData.timestamp.finished then
        s = levelData.timestamp.finished - levelData.timestamp.started

        if not s or s < 0 then return end

        local prettyTime = addon.comms:PrettyPrintTime(s)

        if not prettyTime then return end

        msg = self.BuildNotification(L("I just leveled from %d to %d in %s"), level - 1, level, prettyTime)
        announceLevelUp(msg)
    else
        -- Leave enough time for TIME_PLAYED to return, ish
        C_Timer.After(5, function()
            levelData = addon.tracker.reportData[level - 1]

            if levelData and levelData.timestamp and levelData.timestamp.started and levelData.timestamp.finished then

                s = levelData.timestamp.finished - levelData.timestamp.started

                if s < 0 then return end

                msg = self.BuildNotification(L("I just leveled from %d to %d in %s"), level - 1, level,
                                             addon.comms:PrettyPrintTime(s))
                announceLevelUp(msg)
            elseif addon.settings.profile.debug then
                self.PrettyDebug("Invalid .started or .finished %d", level)
            end
        end)
    end
end

local questXPPrefix = _G.COMBATLOG_XPGAIN_FIRSTPERSON_UNNAMED:sub(0, 5)
function addon.comms:CHAT_MSG_COMBAT_XP_GAIN(_, text, ...)
    if questXPPrefix == text:sub(0, #questXPPrefix) then return end

    local xpGained = tonumber(smatch(text, "%d+"))

    if not xpGained or xpGained <= 0 then return end

    self:TallyGroup(xpGained)
end

function addon.comms:QUEST_TURNED_IN(_, _, xpReward)
    xpReward = tonumber(xpReward)

    if not xpReward or xpReward <= 0 then return end

    self:TallyGroup(xpReward)
end

function addon.comms:TallyGroup(xp)
    if GetNumGroupMembers() < 1 then return end
    if not xp then return end

    local diff = 0
    local now = GetTime()
    if self.state.lastXPGain then
        diff = now - self.state.lastXPGain
    end

    self.state.lastXPGain = now

    local name
    for i = 1, GetNumGroupMembers() - 1 do
        name = UnitName("party" .. i)

        if not name then break end

        if self.players[name] then
            self.players[name].xp = xp + (self.players[name].xp or 0)
            -- Only calculate < 5 minutes between XP gains
            if diff < 300 then self.players[name].timePlayed = self.players[name].timePlayed + diff end
        else
            self.players[name] = {xp = xp, timePlayed = 0, class = UnitClassBase("party" .. i)}
        end

    end

end

function addon.comms:AnnounceSelf(command)
    -- TODO call when active guide changes
    local data = {
        command = command,
        player = {
            name = addon.player.name,
            class = addon.player.class,
            level = addon.player.level,
            xpPercentage = floor(100 * UnitXP("player") / UnitXPMax("player"))
        },
        addon = {release = addon.release}
    }

    if addon.currentGuide then data.guide = {name = addon.currentGuide.name, version = addon.currentGuide.version} end

    self:Broadcast(data)
end

function addon.comms:OnCommReceived(prefix, data, _, sender)
    if prefix ~= self._commPrefix or sender == addon.player.name then return end

    if UnitInBattleground("player") ~= nil or GetNumGroupMembers() <= 1 then return end

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

function addon.comms:IsNewRelease(theirRelease, name)
    -- Treat Development announcements as equal to current
    if theirRelease == 'Development' then
        return false
    elseif addon.release == 'Development' then
        self.PrettyDebug("%s:theirRelease = %s", name, theirRelease)
        return false
    end

    local myMajor, myMinor, myPatch, mySub = smatch(addon.release, "v(%d+)%.(%d+)%.(%d+)(%a?)")

    mySub = mySub and sbyte(mySub) or 0

    local myIntVersion = tonumber(fmt('%d%d%d', myMajor, myMinor, myPatch))

    local theirMajor, theirMinor, theirPatch, theirSub = smatch(theirRelease, "v(%d+)%.(%d+)%.(%d)(%a?)")

    theirSub = theirSub and sbyte(theirSub) or 0

    local theirIntVersion = tonumber(fmt('%d%d%d', theirMajor, theirMinor, theirPatch))

    -- Failed to parse version
    if myIntVersion == 0 or theirIntVersion == 0 then return false end

    -- Sub versioned letter, compare ascii codes
    if myIntVersion == theirIntVersion and mySub < theirSub then return true end

    return myIntVersion < theirIntVersion
end

function addon.comms:HandleAnnounce(data)
    if not self.players[data.player.name] then self.players[data.player.name] = {timePlayed = 0} end

    self.players[data.player.name].class = data.player.class
    self.players[data.player.name].level = data.player.level
    self.players[data.player.name].xpPercentage = data.player.xpPercentage
    self.players[data.player.name].isRxp = true
    self.players[data.player.name].lastSeen = GetTime()

    if not addon.settings.profile.checkVersions then return end

    if not self.state.updateFound.addon and self:IsNewRelease(data.addon.release, data.player.name) then

        self.state.updateFound.addon = true

        self.PrettyPrint(L("There's a new addon version (%s) available"), data.addon.release)
    end

    if not self.state.updateFound.guide and addon.currentGuide and data.guide and addon.currentGuide.name ==
        data.guide.name and addon.currentGuide.version and data.guide.version and addon.currentGuide.version <
        data.guide.version then

        self.state.updateFound.guide = true

        self.PrettyPrint(L("There's a new version (%s) available for %s"), data.guide.version, data.guide.name)
    end
end

function addon.comms:Broadcast(data)
    if UnitInBattleground("player") ~= nil or GetNumGroupMembers() <= 1 then return end

    local sz = self:Serialize(data)
    self:SendCommMessage(self._commPrefix, sz, "PARTY")
end

function addon.comms:AnnounceStepEvent(event, data)
    -- Only send branded messages if in an RXP party
    if not self.state.rxpGroupDetected and not addon.settings.profile.alwaysSendBranded then return end

    if addon.IsInInstance() then return end

    -- Probably step replay, shush
    -- currentStep == 1 is probably spam from rapid replay
    if RXPCData.currentStep == 1 or GetTime() - addon.lastStepUpdate < 1 then return end

    -- TODO purge cache at startup for announcements > 3 levels old
    if not self.db.profile.announcements[data.guideName] then
        self.db.profile.announcements[data.guideName] = {complete = {}, collect = {}}
    end

    local guideAnnouncements = self.db.profile.announcements[data.guideName]
    local msg

    if event == '.complete' then
        -- Don't handle announcements if Questie loaded
        if _G.Questie and not addon.settings.profile.ignoreQuestieConflicts then return end

        msg = self.BuildNotification(L("Completed step %s - %s"), data.title, data.completionText)

        -- Replay of guide, don't spam
        if guideAnnouncements.complete[msg] then return end

        if addon.settings.profile.enableCompleteStepAnnouncements and GetNumGroupMembers() > 0 then
            SendChatMessage(msg, "PARTY", nil)
        elseif addon.settings.profile.debug then
            self.PrettyDebug(msg)
        end

        guideAnnouncements.complete[msg] = addon.player.level

    elseif event == '.collect' then
        -- Don't handle announcements if Questie loaded
        if _G.Questie and not addon.settings.profile.ignoreQuestieConflicts then return end

        msg = self.BuildNotification(L("Collected step %s - %s"), data.title, data.completionText)

        -- Replay of guide, don't spam
        if guideAnnouncements.collect[msg] then return end

        if addon.settings.profile.enableCollectAnnouncements and GetNumGroupMembers() > 0 then
            SendChatMessage(msg, "PARTY", nil)
        elseif addon.settings.profile.debug then
            self.PrettyDebug(msg)
        end

        guideAnnouncements.collect[msg] = addon.player.level

    elseif event == '.fly' then
        if not data.duration or data.duration <= 0 then return end

        -- Questie doesn't announce flight-time, so okay to send this out
        msg = self.BuildNotification(L("Flying to %s ETA %s"), RXPCData.flightPaths[data.destination] or '',
                                        addon.comms:PrettyPrintTime(data.duration))

        if addon.settings.profile.enableFlyStepAnnouncements and GetNumGroupMembers() > 0 then
            SendChatMessage(msg, "PARTY", nil)
        elseif addon.settings.profile.debug then
            self.PrettyDebug(msg)
        end
    else
        error("Unhandled step event announce: (" .. event .. ")")
    end

end

function addon.comms.BuildNotification(msg, ...) return fmt("{rt3} %s: %s", addon.title, fmt(msg, ...)) end

function addon.comms.PrettyPrint(msg, ...)
    if not msg then return end

    print(fmt("%s: %s", addon.title, fmt(msg, ...)))
end

function addon.comms.PrettyAnnounce(channel, msg, ...)
    if not msg then return end

    SendChatMessage(fmt("%s: %s", addon.title, fmt(msg, ...)), channel, nil)
end

addon.comms.debugThrottle = {}
function addon.comms.PrettyDebug(msg, ...)
    if not msg then return end
    if not addon.settings.profile.debug then return end

    msg = fmt(msg, ...)

    local now = GetTime()

    if not addon.comms.debugThrottle[msg] then
        addon.comms.debugThrottle[msg] = {
            last = now,
            throttled = false
        }
        print(fmt("%s (Debug): %s", addon.title, msg))

        return
    end

    local dt = addon.comms.debugThrottle[msg]

    local diff = now - dt.last

    if diff < 5 then
        if not dt.throttled then
            print(fmt("%s (Debug): ... %s", addon.title, msg))
            dt.throttled = true
        end

        return
    else
        dt.throttled = false
    end
    dt.last = now

    print(fmt("%s (Debug): %s", addon.title, msg))
end

function addon.comms.OpenBugReport(stepNumber)
    -- Came from dropdown menu
    if type(stepNumber) == "table" and stepNumber.arg1 then stepNumber = stepNumber.arg1 end

    local character = fmt("%s / %s / level %d (%.2f%%)", addon.player.race, addon.player.class, addon.player.level,
                          UnitXP("player") / UnitXPMax("player") * 100)

    local position = C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player") or -1, "player")
    local zone = fmt("%s / %s / %.2f,%.2f", GetRealZoneText(), GetSubZoneText(), position and position.x * 100 or -1,
                     position and position.y * 100 or -1)

    local guide = "Inactive"

    if addon.currentGuide and addon.currentGuide.key then
        guide = fmt("%s v%d (%s)", addon.currentGuide.key, tonumber(addon.currentGuide.version) or 0,
                    (addon.currentGuide.guideId) or 'N/A')
    end

    stepNumber = stepNumber or RXPCData.currentStep
    local stepData = ""
    if addon.currentGuide and addon.currentGuide.steps and stepNumber then
        local step = addon.currentGuide.steps[stepNumber]
        if type(step) == "table" then
            local stepId = step.stepId or 0
            stepData = fmt("%s\nStep ID: %.0f\n", stepData, stepId)
            if step.elements then
                for s, e in pairs(step.elements) do
                    stepData = fmt("%s\nStep %d:%d", stepData, stepNumber, s)
                    if e.title then stepData = fmt("%s\n  title = %s", stepData, e.title) end

                    if e.text then stepData = fmt("%s\n  text = %s", stepData, e.text) end

                    if e.tag then stepData = fmt("%s\n  tag = %s", stepData, e.tag) end

                    if e.questId then stepData = fmt("%s\n  questId = %s", stepData, e.questId) end

                    if e.questIds and type(e.questIds) == "table" then
                        for _, id in pairs(e.questIds) do
                            stepData = fmt("%s\n  questId = %s", stepData, id)
                        end
                    end

                    if e.x and e.y then
                        stepData = fmt("%s\n  goto = %.2f / %.2f (%d/%d,%.4f,%.4f)", stepData, e.x, e.y, e.zone or 0,
                                       e.instance, e.wx, e.wy)
                    end

                    if e.targets then
                        stepData = fmt("%s\n  targets = %s", stepData, strjoin(', ', unpack(e.targets)))
                    end

                    if e.unitscan then
                        stepData = fmt("%s\n  unitscan = %s", stepData, strjoin(', ', unpack(e.unitscan)))
                    end

                    if e.completed then stepData = fmt("%s\n  completed = True", stepData) end
                end
            else
                stepData = fmt("%s\nNo active step elements", stepData, step)
            end
        elseif type(step) == "string" then
            stepData = fmt("%s\n%s", stepData, step)
        end

    else
        stepData = "N/A"
    end

    local af = addon.arrowFrame
    local sameContinent = 'N/A'

    if af.element and af.element.instance then
        local _, _, instance = LibStub("HereBeDragons-2.0"):GetPlayerWorldPosition()
        sameContinent = tostr(af.element.instance == instance)
    end

    local arrowData = af and fmt(
                          "  Shown: %s\n  Hidden by step: %s\n  Disabled: %s\n  Distance: %s\n  Same Continent: %s\n  Zone: %s\n  Coordinates (w): wy (%.02f) wx (%.02f); zy (%.03f) zx (%.03f)",
                          tostr(af:IsShown()), tostr(addon.hideArrow), tostr(addon.settings.profile.disableArrow),
                          af.distance or -1, sameContinent, af.element and af.element.zone or 'N/A',
                          af.element and af.element.wy or 0, af.element and af.element.wx or 0,
                          af.element and af.element.y or 0, af.element and af.element.x or 0) or 'N/A'

    local addonErrors = "\n"
    for _, entry in pairs(addon.settings.routingOptions) do
        local value = addon.settings.profile[entry]
        local str = tostring(value)
        if type(value) == "table" then
            for k, v in pairs(value) do
                local substr = tostring(v)
                if substr then addonErrors = addonErrors .. k .. ":" .. substr .. ", " end
            end
        elseif value ~= nil and str then
            addonErrors = addonErrors .. entry .. ":" .. str .. ", "
        end
    end
    if next(addon.errors) then addonErrors = "\nAddon Errors:\n" end

    for tag, list in pairs(addon.errors) do
        addonErrors = addonErrors .. tostring(tag) .. ':\n'
        for error, count in pairs(list) do addonErrors = fmt("%s(%d) %s\n", addonErrors, count, error) end
    end
    local errorFlags = ""
    if addon.lastEvent then errorFlags = "\nError Flags: " .. addon.lastCall .. addon.lastEvent end
    local content = fmt([[%s



%s
```
Character: %s
Zone: %s
Guide: %s
Addon: %s
XP Rate: %.1f
Locale: %s
Client Version: %s
BNet: %s

Current Step data
%s

Arrow data
%s
%s%s
```
]], L("Describe your issue:"), L("Do not edit below this line"), character or "Error", zone or "Error",
                        guide and guide:gsub("|", "||") or "Error", addon.release, addon.settings.profile.xprate,
                        GetLocale(), select(1, GetBuildInfo()), select(2, BNGetInfo()) ~= nil and "Online" or "Offline",
                        stepData, arrowData, addonErrors, errorFlags)

    local f = AceGUI:Create("Frame")

    f:SetLayout("Fill")
    f:EnableResize(true)
    f.statustext:GetParent():Hide()
    f:SetTitle(L("RestedXP Feedback Form"))

    f.scrollContainer = AceGUI:Create("ScrollFrame")
    f.scrollContainer:SetLayout("Fill")
    f.scrollContainer:SetFullHeight(true)
    f:AddChild(f.scrollContainer)

    f.frame:SetBackdrop(addon.RXPFrame.backdrop.edge)
    f.frame:SetBackdropColor(unpack(addon.colors.background))

    local editbox = AceGUI:Create("MultiLineEditBox")
    editbox:SetLabel(L("Join our support discord at discord.gg/RestedXP and copy paste this form into #bug-report"))
    editbox:SetFullWidth(true)
    editbox:SetFullHeight(true)
    editbox:SetText(content)
    editbox:DisableButton(true)
    f.scrollContainer:AddChild(editbox)

    _G["RESTEDXP_BUG_REPORT_WINDOW"] = f.frame
    tinsert(_G.UISpecialFrames, "RESTEDXP_BUG_REPORT_WINDOW")

    -- TODO save to variable to preserve open/close
end

function addon.comms.OpenBrandedExport(title, description, content, width, height, acceptCallback)

    local f = AceGUI:Create("Frame") -- TODO use AceGUI:Create("Window")
    f:Hide()

    f:SetLayout("Fill")
    f:EnableResize(true)
    f.statustext:GetParent():Hide()
    f:SetTitle("RestedXP: " .. title)

    f.frame:SetBackdrop(addon.RXPFrame.backdrop.edge)
    f.frame:SetBackdropColor(unpack(addon.colors.background))

    local editbox = AceGUI:Create("MultiLineEditBox")
    editbox:SetLabel(description)
    editbox:SetFullWidth(true)
    editbox:SetFullHeight(true)
    editbox:SetMaxLetters(0)
    editbox:SetText(content)

    if acceptCallback then
        editbox:SetCallback("OnEnterPressed", function(_, _, text)
            local success = pcall(acceptCallback, text)
            if success then editbox:SetText("") end
        end)
    else
        -- Fake read-only
        editbox:DisableButton(true)
        editbox:SetCallback("OnTextChanged", function() editbox:SetText(content) end)

        editbox.editBox:SetScript("OnMouseUp", function()
            editbox:HighlightText()

            -- Only highlight text on first enter
            editbox.editBox:SetScript("OnMouseUp", nil)
        end)
    end

    f:AddChild(editbox)

    local frameWidth = max(width or 0, f.titletext:GetWidth() * 1.5, editbox.label:GetStringWidth() * 1.1)

    f:SetWidth(frameWidth)
    f:SetHeight(height or 100)
    addon.SetResizeBounds(f.frame, frameWidth, height or 20)
    _G["RESTEDXP_BRANDED_EXPORT"] = f.frame
    tinsert(_G.UISpecialFrames, "RESTEDXP_BRANDED_EXPORT")

    f:SetCallback("OnClose", function() f:Release() end)

    f:DoLayout()
    f:Show()
end

function addon.comms:PrettyPrintTime(s)
    if not s or s <= 0 then return end

    local days = floor(s / 24 / 60 / 60)
    s = mod(s, 24 * 60 * 60)

    local hours = floor(s / 60 / 60)
    s = mod(s, 60 * 60)

    local minutes = floor(s / 60)
    s = mod(s, 60)

    local formattedString
    if days > 0 then
        formattedString = fmt("%d %s %d %s %d %s %d %s", days, days == 1 and L('day') or L('days'), hours,
                              hours == 1 and L('hour') or L('hours'), minutes,
                              minutes == 1 and L('minute') or L('minutes'), s, s == 1 and L('second') or L('seconds'))
    elseif hours > 0 then
        formattedString = fmt("%d %s %d %s %d %s", hours, hours == 1 and L('hour') or L('hours'), minutes,
                              minutes == 1 and L('minute') or L('minutes'), s, s == 1 and L('second') or L('seconds'))
    elseif minutes > 0 then
        formattedString = fmt("%d %s %d %s", minutes, minutes == 1 and L('minute') or L('minutes'), s,
                              s == 1 and L('second') or L('seconds'))
    else
        formattedString = fmt("%d %s", s, s == 1 and L('second') or L('seconds')) -- Big gratz for leveling in under a minute
    end

    return formattedString
end

function addon.comms:ConfirmChoice(lookup, prompt, confirmCallback, payload)

    StaticPopupDialogs[lookup] = {
        text = prompt,
        button1 = _G.YES,
        button2 = _G.NO,
        OnAccept = function() if confirmCallback then confirmCallback(payload) end end,
        timeout = 0,
        whileDead = 1,
        hideOnEscape = 1,
        showAlert = 1
    }

    _G.StaticPopup_Show(lookup)
end

function addon.comms:PopupNotification(lookup, prompt)

    StaticPopupDialogs[lookup] = {
        text = prompt,
        button1 = _G.OKAY,
        timeout = 0,
        whileDead = 1,
        hideOnEscape = 1,
        showAlert = 1
    }

    _G.StaticPopup_Show(lookup)
end

addon.comms.grouping = {}
function addon.comms.grouping:ShareQuest(questId)
    if not addon.settings.profile.shareQuests then return end

    if GetNumGroupMembers() <= 1 or UnitInBattleground("player") ~= nil then return end

    local questLogIndex, isPushable = addon.GetLogIndexForQuestID(questId)

    -- Do not announce shared quests, too verbose and bloated.
    -- Will let end-user announce when they accept a shared quest
    if not isPushable then return end

    if not questLogIndex then
        addon.comms.PrettyDebug("Quest ID not in quest log", questId)
        return
    end

    -- Only required for Classic
    if _G.SelectQuestLogEntry then
        _G.SelectQuestLogEntry(questLogIndex)
    end

    return _G.QuestLogPushQuest(questLogIndex)
end
