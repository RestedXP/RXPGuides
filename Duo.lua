-- RXP Groupe : suivre le même guide que ses amis (jusqu'à 5 joueurs) et voir leur étape en direct.
-- Tous les joueurs doivent avoir cette version modifiée de RXPGuides.
-- /groupe ajouter <Nom>  : invite un ami dans le groupe (les autres membres le reçoivent aussi)
-- /groupe retirer <Nom>  : le retire du groupe
-- /groupe quitter        : quitte le groupe
-- /groupe                : état du groupe
-- /groupe cacher | montrer
-- (/duo marche toujours : même commandes)
local addonName, addon = ...

local duo = {}
addon.duo = duo

local PREFIX = "RXPDuo"
local PROTO = "3"
local MAX_OTHERS = 4             -- moi + 4 = 5 joueurs
local fmt = string.format
local _G = _G
local L = addon.groupL or setmetatable({}, { __index = function(_, k) return k end })
local TITLE = "|cff33ff99RXP " .. L["Group"] .. "|r"

local function Print(msg, ...)
    print(fmt(TITLE .. ": " .. L[msg], ...))
end

-- Forever : un nom complet est "Prenom Nom". L'expediteur d'un message arrive en "Prenom-Nom" (le nom de famille
-- est range comme un royaume) : tout est ramene a "Prenom Nom".
local function Short(name)
    if type(name) ~= "string" then return nil end
    name = name:gsub("%-", " "):gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")
    if name == "" then return nil end
    return name
end

local function Same(a, b)
    a, b = Short(a), Short(b)
    return a and b and strlower(a) == strlower(b)
end

-- mon nom complet (UnitName peut rendre le nom de famille a part)
local function MyName()
    local first, surname = UnitName("player")
    if type(surname) == "string" and surname ~= "" and not first:find(surname, 1, true) then
        return Short(first .. " " .. surname)
    end
    return Short(first)
end
-- nom complet d'un membre du groupe de jeu (party1..4)
local function UnitFull(unit)
    local first, surname = UnitName(unit)
    if type(first) ~= "string" then return nil end
    if type(surname) == "string" and surname ~= "" then return Short(first .. " " .. surname) end
    return Short(first)
end

local function DB()
    _G.RXPDuoDB = _G.RXPDuoDB or {}
    local db = _G.RXPDuoDB
    db.members = db.members or {}
    -- ancien duo : le pote devient le premier membre du groupe
    if db.partner then
        local found = false
        for _, n in ipairs(db.members) do if Same(n, db.partner) then found = true end end
        if not found then table.insert(db.members, Short(db.partner)) end
        db.partner = nil
    end
    if type(db.pending) ~= "table" then db.pending = {} end
    if not db.cleaned2 then
        local me, clean, seen = MyName(), {}, {}
        for _, n in ipairs(db.members) do
            local c = Short(n)
            if c and c:find(" ", 1, true) and not (me and strlower(c) == strlower(me)) and not seen[strlower(c)] then
                seen[strlower(c)] = true
                table.insert(clean, c)
            end
        end
        db.members, db.cleaned2 = clean, true
    end
    return db
end

local function Members() return DB().members end
local function IsMember(name)
    for _, n in ipairs(Members()) do if Same(n, name) then return true end end
    return false
end
local function MemberKey(name) return strlower(Short(name) or "") end

local function CleanText(t)
    if type(t) ~= "string" then return "" end
    t = t:gsub("|T.-|t", ""):gsub("|A.-|a", "")
    t = t:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|cRXP_%u+_", ""):gsub("|r", "")
    t = t:gsub("|H.-|h(.-)|h", "%1"):gsub("::%d+", "")
    t = t:gsub("[\r\n\t]+", " / "):gsub("%s+", " "):gsub("^[%s/]+", ""):gsub("[%s/]+$", "")
    return t
end

-- Coupe une chaine UTF-8 a n octets max sans casser un caractere
local function Truncate(s, n)
    if #s <= n then return s end
    s = s:sub(1, n)
    while #s > 0 do
        local b = s:byte(#s)
        if b >= 0x80 and b < 0xC0 then
            s = s:sub(1, -2)
        elseif b >= 0xC0 then
            s = s:sub(1, -2)
            break
        else
            break
        end
    end
    return s
end

-- AceComm (fourni par RXP) decoupe les messages longs ; sinon envoi brut tronque
local AceComm = _G.LibStub and _G.LibStub("AceComm-3.0", true)
if AceComm then AceComm:Embed(duo) end

local function Send(target, ...)
    if not target then return end
    local msg = table.concat({...}, "\t")
    if duo.SendCommMessage then
        pcall(duo.SendCommMessage, duo, PREFIX, Truncate(msg, 900), "WHISPER", target)
        return
    end
    local sendFn = _G.C_ChatInfo and _G.C_ChatInfo.SendAddonMessage or _G.SendAddonMessage
    if sendFn then pcall(sendFn, PREFIX, Truncate(msg, 250), "WHISPER", target) end
end
local function SendAll(...)
    for _, n in ipairs(Members()) do Send(n, ...) end
end

-- API : messages caches entre membres pour les autres modules (ex. Prereq.lua : "PQQ" / "PQR")
local handlers = {}
function duo.Members() local t = {} for i, n in ipairs(Members()) do t[i] = n end return t end
function duo.SendAll(kind, ...) SendAll(kind, PROTO, ...) end
function duo.Send(name, kind, ...) Send(name, kind, PROTO, ...) end
function duo.On(kind, fn) handlers[kind] = fn end
duo.MyName = MyName

---------------------------------------------------------------------------
-- Etat local : ou j'en suis
---------------------------------------------------------------------------
local function CurrentGuide()
    local guide = addon.currentGuide
    if not guide or guide.empty or not guide.steps then return nil end
    return guide
end

local function CurrentIndex()
    return tonumber(_G.RXPCData and _G.RXPCData.currentStep) or 1
end

local function GuideId(guide)
    return (guide.group or "") .. "\\" .. (guide.name or "")
end

local function StepText(step)
    if not step then return "" end
    local text = step.text
    if not text or text == "" then
        local parts = {}
        for _, el in ipairs(step.elements or {}) do
            if type(el.text) == "string" then table.insert(parts, el.text) end
        end
        text = table.concat(parts, " / ")
    end
    return CleanText(text)
end

-- Empreinte d'une etape, identique pour toutes les classes sur les etapes communes :
-- premiere quete (a=accept, t=turnin, c=complete) sinon premiere position de carte
local function StepFingerprint(step)
    if not step or not step.elements then return "" end
    local gotoFp
    for _, el in ipairs(step.elements) do
        local tag = el.tag
        if (tag == "accept" or tag == "turnin" or tag == "complete") and el.questId then
            return tag:sub(1, 1) .. tostring(el.questId) .. (tag == "complete" and ("." .. tostring(el.objIndex or "")) or "")
        elseif tag == "goto" and not gotoFp then
            local x, y = el.wx or el.x, el.wy or el.y
            if x and y then gotoFp = fmt("g%d/%d", math.floor(x + 0.5), math.floor(y + 0.5)) end
        end
    end
    return gotoFp or ""
end
duo.StepFingerprint = StepFingerprint

local function MyState()
    local guide = CurrentGuide()
    if not guide then return nil end
    local idx = CurrentIndex()
    local step = guide.steps[idx]
    local ids, fps = {}, {}
    for i = idx, math.min(idx + 5, #guide.steps) do
        local s = guide.steps[i]
        if s then
            table.insert(ids, tostring(s.stepId or 0))
            table.insert(fps, StepFingerprint(s))
        end
    end
    return {
        guideId = GuideId(guide),
        guideName = addon.GetGuideName and addon.GetGuideName(guide) or guide.name,
        index = idx,
        duo = step and tonumber(step.duo) or 0,
        ids = table.concat(ids, ","),
        fps = table.concat(fps, ";"),
        text = StepText(step),
    }
end

---------------------------------------------------------------------------
-- Envoi de mon etape (a chaque membre)
---------------------------------------------------------------------------
duo.lastKey = nil
duo.lastSend = 0
duo.states = {}     -- cle membre -> etat recu
duo.online = {}     -- cle membre -> nil inconnu / false hors ligne / true en ligne
duo.lastTry = {}    -- cle membre -> dernier envoi (hors ligne : un essai par minute)

function duo:SendStep(force)
    if #Members() == 0 then return end
    local st = MyState()
    local key = st and (st.guideId .. ":" .. st.index .. ":" .. #st.text) or "none"
    local now = GetTime()
    if not force and key == self.lastKey and now - self.lastSend < 30 then return end
    self.lastKey = key
    self.lastSend = now

    local _, classFile = UnitClass("player")
    local className = UnitClass("player")
    local level = UnitLevel("player")
    for _, n in ipairs(Members()) do
        local k = MemberKey(n)
        if force or self.online[k] ~= false or now - (self.lastTry[k] or 0) >= 60 then
            self.lastTry[k] = now
            if not st then
                Send(n, "STP", PROTO, "", "", "0", "0", tostring(level), className or "", classFile or "", "", "", "")
            else
                -- le texte est en dernier pour pouvoir etre tronque
                Send(n, "STP", PROTO, st.guideId, st.guideName or "", tostring(st.index), tostring(st.duo),
                     tostring(level), className or "", classFile or "", st.ids, st.fps, st.text)
            end
        end
    end
end

---------------------------------------------------------------------------
-- Affichage : une ligne par membre
---------------------------------------------------------------------------
local frame

local function MemberPositionInMyGuide(ps)
    local guide = CurrentGuide()
    if not guide or not ps or ps.guideId ~= GuideId(guide) then return nil end
    if ps.ids and ps.ids ~= "" then
        local byId = {}
        for i, step in ipairs(guide.steps) do
            if step.stepId then byId[tostring(step.stepId)] = byId[tostring(step.stepId)] or i end
        end
        for id in ps.ids:gmatch("[^,]+") do
            if byId[id] then return byId[id], "id" end
        end
    end
    if ps.fps and ps.fps ~= "" then
        local target = ps.index or 0
        for fp in ps.fps:gmatch("[^;]+") do
            local best, bestDist
            for i, step in ipairs(guide.steps) do
                if StepFingerprint(step) == fp then
                    local d = math.abs(i - target)
                    if not bestDist or d < bestDist then best, bestDist = i, d end
                end
            end
            if best then return best, "fp" end
            target = target + 1
        end
    end
    if not ps.duo or ps.duo <= 0 then return nil end
    for i, step in ipairs(guide.steps) do
        local d = tonumber(step.duo)
        if d and d >= ps.duo then return i, "duo" end
    end
    return #guide.steps, "duo"
end

local ROW_H = 24

local function MakeRow(i)
    local tmpl = _G.BackdropTemplateMixin and "BackdropTemplate" or nil
    local row = CreateFrame("Button", nil, frame, tmpl)
    row:SetSize(120, ROW_H)
    row:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, -(i - 1) * (ROW_H + 2))
    row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    row:RegisterForDrag("LeftButton")
    row:SetScript("OnDragStart", function() frame:StartMoving() end)
    row:SetScript("OnDragStop", function()
        frame:StopMovingOrSizing()
        local point, _, relPoint, x, y = frame:GetPoint()
        DB().pos = {point, relPoint, x, y}
    end)
    if row.SetBackdrop then
        row:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8X8", edgeFile = "Interface\\Buttons\\WHITE8X8", edgeSize = 1})
        row:SetBackdropColor(0, 0, 0, 0.6)
        row:SetBackdropBorderColor(0, 0, 0, 0.9)
    end
    row.label = row:CreateFontString(nil, "OVERLAY")
    row.label:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
    row.label:SetPoint("CENTER")
    -- clic droit : me placer sur son etape ; Alt + clic : l'inviter dans le groupe de jeu
    row:SetScript("OnClick", function(self, button)
        if not self.member then return end
        if IsAltKeyDown() then duo:InviteMember(self.member) return end
        if button ~= "RightButton" then return end
        local pos = MemberPositionInMyGuide(duo.states[MemberKey(self.member)])
        if pos and addon.SetStep then addon.SetStep(pos) end
    end)
    row:SetScript("OnEnter", function(self)
        if not self.member then return end
        local ps = duo.states[MemberKey(self.member)]
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
        GameTooltip:AddLine(Short(self.member))
        if ps and ps.text and ps.text ~= "" then GameTooltip:AddLine(ps.text, 1, 1, 1, true) end
        GameTooltip:AddLine(L["Right-click: go to their step"], 0.6, 0.6, 0.6)
        GameTooltip:AddLine(L["Alt-click: invite them to your party"], 0.6, 0.6, 0.6)
        GameTooltip:Show()
    end)
    row:SetScript("OnLeave", function() GameTooltip:Hide() end)
    return row
end

local function CreateFrame_()
    if frame then return frame end
    frame = CreateFrame("Frame", "RXPDuoFrame", UIParent)
    frame:SetSize(120, ROW_H)
    frame:SetFrameStrata("MEDIUM")
    frame:SetClampedToScreen(true)
    frame:SetMovable(true)
    frame.rows = {}

    -- bouton "Layer" : changer de layer en groupe (LayerSwap)
    local lb = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    lb:SetSize(96, 22)
    lb:SetText(L["Layer"])
    lb:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    lb:SetScript("OnClick", function(_, button)
        local ph = duo.layer.phase
        if button == "RightButton" then duo:LayerCancel()
        elseif ph == "done" or ph == "joined" then duo:Reinvite()
        elseif ph == "asking" or ph == "regroup" then duo:LayerCancel()
        else duo:LayerSwap() end
    end)
    lb:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
        GameTooltip:AddLine(L["Change layer as a group"])
        GameTooltip:AddLine(L["1st click: you leave the party and LayerSwap looks for a host on another layer (the RXP header pulses)."], 1, 1, 1, true)
        GameTooltip:AddLine(L["When a host invites you, the button becomes Invite group. One click: everyone gets a \"Join?\" window; yes = they leave their party and join you."], 1, 1, 1, true)
        GameTooltip:AddLine(L["During the search, or right-click: cancel (invites nobody)."], 0.6, 0.6, 0.6)
        GameTooltip:Show()
    end)
    lb:SetScript("OnLeave", function() GameTooltip:Hide() end)
    frame.layerBtn = lb

    local pos = DB().pos
    if pos then
        frame:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
    elseif addon.RXPFrame then
        frame:SetPoint("TOPLEFT", addon.RXPFrame, "BOTTOMLEFT", 0, -4)
    else
        frame:SetPoint("TOP", UIParent, "TOP", 0, -150)
    end
    return frame
end

local GREEN, RED, GREY = "|cff40ff40", "|cffff4040", "|cff999999"

local function MemberText(name)
    local k = MemberKey(name)
    local ps = duo.states[k]
    local guide = CurrentGuide()
    local short = Short(name)
    if duo.online[k] == false then return fmt("%s : %s%s|r", short, GREY, L["offline"]) end
    if not ps or not guide or ps.guideId == "" then return fmt("%s : %s—|r", short, GREY) end
    if ps.guideId ~= GuideId(guide) then return fmt("%s : %s%s|r", short, RED, L["other guide"]) end
    local pos = MemberPositionInMyGuide(ps)
    if not pos then return fmt("%s : %s%d|r", short, GREY, ps.index or 0) end
    local diff = pos - CurrentIndex()
    if diff == 0 then return fmt("%s : %s%d|r", short, GREEN, pos) end
    return fmt("%s : %s%d|r %s(%+d)|r", short, RED, pos, GREY, diff)
end

function duo:Refresh()
    local db = DB()
    local list = db.members
    if #list == 0 or db.hidden then
        if frame then frame:Hide() end
        return
    end
    local f = CreateFrame_()
    f:Show()
    local width = 80
    for i, name in ipairs(list) do
        local row = f.rows[i] or MakeRow(i)
        f.rows[i] = row
        row.member = name
        row.label:SetText(MemberText(name))
        width = math.max(width, row.label:GetStringWidth() + 16)
        row:Show()
    end
    for i = #list + 1, #f.rows do f.rows[i]:Hide(); f.rows[i].member = nil end
    for i = 1, #list do f.rows[i]:SetWidth(width) end
    f:SetSize(width, #list * (ROW_H + 2) - 2)

    -- bouton Layer, a droite de la premiere ligne ; son texte suit l'etape du changement
    local lb, phase = f.layerBtn, self.layer and self.layer.phase
    if lb then
        lb:ClearAllPoints()
        lb:SetPoint("LEFT", f.rows[1], "RIGHT", 4, 0)
        local labels = { leaving = "|cff40ff40" .. L["Search"] .. "|r", ready = "|cff40ff40" .. L["Search"] .. "|r",
                         joined = "|cff40ff40" .. L["Invite group"] .. "|r", done = "|cff40ff40" .. L["Invite group"] .. "|r",
                         regroup = L["Invited..."] }
        local text = labels[phase] or L["Layer"]
        if phase == "asking" then
            local left = math.max(0, math.ceil((self.layer.at or 0) + self.layer.askTimeout - GetTime()))
            text = fmt(L["Host %ds"], left)
        end
        lb:SetText(text)
    end
end

---------------------------------------------------------------------------
-- Membres : ajout, retrait, roster partage
---------------------------------------------------------------------------
local function AddMember(name, quiet)
    name = Short(name)
    if not name or Same(name, MyName()) or IsMember(name) then return false end
    local db = DB()
    if #db.members >= MAX_OTHERS then
        Print("group full (5 players): %s not added.", name)
        return false
    end
    table.insert(db.members, name)
    db.pending[MemberKey(name)] = nil
    db.hidden = nil
    duo.online[MemberKey(name)] = true
    if not quiet then Print("|cffffffff%s|r joined the group.", name) end
    return true
end

local function DropMember(name)
    local db = DB()
    for i = #db.members, 1, -1 do
        if Same(db.members[i], name) then table.remove(db.members, i) end
    end
    local k = MemberKey(name)
    duo.states[k], duo.online[k], duo.lastTry[k] = nil, nil, nil
end

-- la liste complete (moi + membres) envoyee a tous : chacun ajoute ceux qu'il n'a pas encore
local function SendRoster()
    local names = { MyName() }
    for _, n in ipairs(Members()) do table.insert(names, n) end
    SendAll("ROS", PROTO, table.concat(names, ","))
end

function duo:Invite(name)
    name = name and name:gsub("^%s+", ""):gsub("%s+$", "")
    if not name or name == "" then
        Print("enter a name: /rxpgroup add Name")
        return
    end
    if Same(name, MyName()) then
        Print("you can't invite yourself.")
        return
    end
    if IsMember(name) then
        Print("%s is already in the group.", Short(name))
        return
    end
    if #Members() >= MAX_OTHERS then
        Print("group full (5 players).")
        return
    end
    local db = DB()
    db.pending[MemberKey(name)] = true
    Send(name, "INV", PROTO)
    Print("request sent to |cffffffff%s|r. They need the same version of RXPGuides.", name)
    C_Timer.After(15, function()
        if DB().pending[MemberKey(name)] then
            Print("no answer from %s (offline, wrong name, or no modified addon).", name)
        end
    end)
end

-- retirer un membre (il nous retire aussi) ; sans nom : quitter le groupe
function duo:Remove(name, silent)
    local db = DB()
    if name and name ~= "" then
        if not IsMember(name) then Print("%s is not in the group.", name) return end
        Send(name, "BYE", PROTO)
        DropMember(name)
        Print("%s removed from the group.", Short(name))
        self:Refresh()
        return
    end
    if #db.members > 0 then
        SendAll("BYE", PROTO)
        if not silent then Print("you left the group.") end
    end
    wipe(db.members)
    wipe(db.pending)
    wipe(self.states); wipe(self.online); wipe(self.lastTry)
    self:Refresh()
end

-- Fenetres de dialogue maison : on ne touche pas a StaticPopupDialogs / StaticPopup_Show
-- (ecrire dans ces tables de Blizzard "contamine" l'interface sur ce client : Echap, barres, etc.)
local dialog

local function GetDialog()
    if dialog then return dialog end
    local tmpl = _G.BackdropTemplateMixin and "BackdropTemplate" or nil
    dialog = CreateFrame("Frame", "RXPDuoDialog", UIParent, tmpl)
    dialog:SetSize(300, 120)
    dialog:SetPoint("TOP", UIParent, "TOP", 0, -180)
    dialog:SetFrameStrata("DIALOG")
    dialog:SetClampedToScreen(true)
    dialog:EnableMouse(true)
    dialog:SetMovable(true)
    dialog:RegisterForDrag("LeftButton")
    dialog:SetScript("OnDragStart", dialog.StartMoving)
    dialog:SetScript("OnDragStop", dialog.StopMovingOrSizing)
    if dialog.SetBackdrop then
        dialog:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8X8", edgeFile = "Interface\\Buttons\\WHITE8X8", edgeSize = 1})
        dialog:SetBackdropColor(0.05, 0.05, 0.05, 0.92)
        dialog:SetBackdropBorderColor(0, 0, 0, 1)
    end

    dialog.text = dialog:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    dialog.text:SetPoint("TOPLEFT", 12, -12)
    dialog.text:SetPoint("TOPRIGHT", -12, -12)
    dialog.text:SetJustifyH("CENTER")

    dialog.input = CreateFrame("EditBox", nil, dialog, "InputBoxTemplate")
    dialog.input:SetSize(200, 22)
    dialog.input:SetPoint("TOP", dialog.text, "BOTTOM", 0, -10)
    dialog.input:SetAutoFocus(false)
    dialog.input:SetScript("OnEnterPressed", function() dialog.yes:Click() end)
    dialog.input:SetScript("OnEscapePressed", function() dialog.no:Click() end)

    dialog.yes = CreateFrame("Button", nil, dialog, "UIPanelButtonTemplate")
    dialog.yes:SetSize(100, 22)
    dialog.yes:SetPoint("BOTTOMRIGHT", dialog, "BOTTOM", -6, 10)

    dialog.no = CreateFrame("Button", nil, dialog, "UIPanelButtonTemplate")
    dialog.no:SetSize(100, 22)
    dialog.no:SetPoint("BOTTOMLEFT", dialog, "BOTTOM", 6, 10)

    dialog:Hide()
    return dialog
end

-- opts : text, yes, no, input (bool), onYes(text), onNo(), timeout (s)
local function ShowDialog(opts)
    local d = GetDialog()
    d.token = (d.token or 0) + 1
    local token = d.token
    d.text:SetText(opts.text)
    d.yes:SetText(opts.yes or "OK")
    d.no:SetText(opts.no or "Annuler")
    if opts.input then
        d.input:Show(); d.input:SetText(""); d.input:SetFocus()
        d:SetHeight(d.text:GetStringHeight() + 82)
    else
        d.input:Hide(); d.input:ClearFocus()
        d:SetHeight(d.text:GetStringHeight() + 56)
    end
    d.yes:SetScript("OnClick", function()
        local txt = d.input:GetText()
        d.input:ClearFocus(); d:Hide()
        if opts.onYes then opts.onYes(txt) end
    end)
    d.no:SetScript("OnClick", function()
        d.input:ClearFocus(); d:Hide()
        if opts.onNo then opts.onNo() end
    end)
    d:Show()
    if opts.timeout then
        C_Timer.After(opts.timeout, function()
            if d.token == token and d:IsShown() then d:Hide() end
        end)
    end
end

duo.ShowDialog = ShowDialog

local function ShowInvite(sender)
    ShowDialog({
        text = TITLE .. "\n\n" .. fmt(L["%s invites you to follow the same guide as their group.\nAccept?"], sender),
        yes = L["Accept"], no = L["Decline"], timeout = 60,
        onYes = function()
            if #Members() >= MAX_OTHERS and not IsMember(sender) then
                Print("your group is full (5 players): leave it first (/rxpgroup leave).")
                Send(sender, "DEC", PROTO)
                return
            end
            Send(sender, "ACC", PROTO)
            AddMember(sender)
            duo:SendStep(true)
            duo:Refresh()
        end,
        onNo = function() Send(sender, "DEC", PROTO) end,
    })
end

local function ShowAdd()
    ShowDialog({
        text = TITLE .. "\n\n" .. L["Your friend's character name:"],
        yes = L["Invite"], no = L["Cancel"], input = true,
        onYes = function(txt) duo:Invite(txt) end,
    })
end

function duo:MenuEntry()
    local n = #Members()
    if n >= MAX_OTHERS then
        return { text = L["Group: leave the group"], notCheckable = 1, func = function() duo:Remove() end }
    end
    return {
        text = n > 0 and fmt(L["Group (%d/5): invite a friend"], n + 1) or L["Group: invite a friend"],
        notCheckable = 1,
        func = function() ShowAdd() end
    }
end

---------------------------------------------------------------------------
-- Reception
---------------------------------------------------------------------------
local function Split(msg)
    local t = {}
    for field in (msg .. "\t"):gmatch("([^\t]*)\t") do table.insert(t, field) end
    return t
end

function duo:OnMessage(msg, sender)
    if not sender or Same(sender, MyName()) then return end
    local f = Split(msg)
    local kind = f[1]
    local db = DB()
    local k = MemberKey(sender)

    if kind == "INV" then
        if IsMember(sender) then
            Send(sender, "ACC", PROTO)
            self:SendStep(true)
            return
        end
        ShowInvite(Short(sender))
    elseif kind == "ACC" then
        if db.pending[k] then
            AddMember(sender)
            SendRoster()               -- les autres membres le recoivent, lui recoit les autres
            self:SendStep(true)
            self:Refresh()
        elseif IsMember(sender) then
            self.online[k] = true
            self:SendStep(true)
        end
    elseif kind == "DEC" then
        if db.pending[k] then
            db.pending[k] = nil
            Print("%s declined the request.", Short(sender))
        end
    elseif kind == "ROS" then
        -- liste du groupe envoyee par un membre : j'ajoute ceux que je n'ai pas
        if not IsMember(sender) then return end
        local added = false
        for n in (f[3] or ""):gmatch("[^,]+") do
            if not Same(n, MyName()) and AddMember(n) then added = true end
        end
        if added then self:SendStep(true); self:Refresh() end
    elseif kind == "BYE" then
        if IsMember(sender) then
            Print("%s left the group.", Short(sender))
            DropMember(sender)
            self:Refresh()
        end
    elseif kind == "HI" then
        if IsMember(sender) then
            self.online[k] = true
            self:SendStep(true)
            self:Refresh()
        end
    elseif kind == "GRP" or kind == "LSW" then
        -- un membre invite le groupe (apres son changement de layer) : je demande
        if not IsMember(sender) then return end
        local who = Short(sender)
        if duo.layer.InMyParty(sender) then return end
        ShowDialog({
            text = TITLE .. "\n\n" .. fmt(IsInGroup() and L["%s invites you to join them (you will leave your current party).\nJoin?"]
                                            or L["%s invites you to join them.\nJoin?"], who),
            yes = L["Join"], no = L["No"], timeout = 60,
            onYes = function()
                duo.layer.follow, duo.layer.followAt = sender, GetTime()
                if IsInGroup() and not duo.layer.InMyParty(sender) then duo.layer.Leave() end
                Send(sender, "GOK", PROTO)            -- il m'invite, j'accepte tout de suite
            end,
        })
    elseif kind == "GOK" then
        -- un membre a dit oui : je l'invite (un instant, le temps qu'il quitte son groupe)
        if IsMember(sender) then
            C_Timer.After(1.2, function()
                if not duo.layer.InMyParty(sender) then duo.layer.Invite(sender) end
            end)
        end
    elseif handlers[kind] then
        if IsMember(sender) then pcall(handlers[kind], f, Short(sender)) end
    elseif kind == "STP" then
        if not IsMember(sender) then return end
        local wasOffline = self.online[k] ~= true
        self.online[k] = true
        self.states[k] = {
            guideId = f[3] or "",
            guideName = f[4] or "",
            index = tonumber(f[5]) or 0,
            duo = tonumber(f[6]) or 0,
            level = f[7],
            className = f[8],
            classFile = f[9],
            ids = f[10] or "",
            fps = (f[2] == "3") and (f[11] or "") or "",
            text = (f[2] == "3") and (f[12] or "") or (f[11] or ""),
        }
        if wasOffline then self:SendStep(true) end
        self:Refresh()
    end
end

---------------------------------------------------------------------------
-- Changer de layer en groupe (avec l'addon LayerSwap)
-- Un joueur change de layer en rejoignant le groupe d'un hote LayerSwap sur un autre layer ; dans un groupe, les
-- membres suivent le layer du chef. Donc : je quitte le groupe de jeu, LayerSwap me fait changer de layer, puis je
-- clique sur Regrouper : mes amis quittent leur groupe de jeu et acceptent mon invitation, et me rejoignent.
-- LayerSwap refuse de demander tant qu'on est en groupe, et sa recherche (/who) doit partir d'un vrai clic :
--   clic 1 : je quitte le groupe ; clic 2 : /ls swap ; l'invitation de l'hote est acceptee pendant cette recherche.
--   Rien d'automatique ensuite : bouton Regrouper.
---------------------------------------------------------------------------
local LS = { phase = nil }      -- phase : leaving, ready, asking, joined, done, regroup (chez celui qui change)
duo.layer = LS
local LS_ASK_TIMEOUT, LS_JOINED_TIMEOUT, LS_READY_TIMEOUT, LS_FOLLOW_TTL, LS_DONE_TTL = 60, 40, 120, 30, 600
LS.askTimeout = LS_ASK_TIMEOUT

local function SameName(a, b) return Same(a, b) end

local function LayerSwapLoaded() return _G.SlashCmdList and _G.SlashCmdList["LAYERSWAP"] ~= nil end
local function LeaveGroup()
    local f = (_G.C_PartyInfo and _G.C_PartyInfo.LeaveParty) or _G.LeaveParty
    if f then pcall(f) end
end
local function InviteName(name)
    local f = (_G.C_PartyInfo and _G.C_PartyInfo.InviteUnit) or _G.InviteUnit
    if f then return pcall(f, name) end
end
-- ferme la fenetre d'invitation du jeu (acceptee par l'addon)
local function HideInvitePopup()
    local hide = _G.StaticPopup_Hide
    if hide then
        pcall(hide, "PARTY_INVITE")
        pcall(hide, "PARTY_INVITE_XREALM")
    end
    local lfg = _G.LFGInvitePopup
    if lfg and lfg.IsShown and lfg:IsShown() then pcall(lfg.Hide, lfg) end
end
local function AcceptInvite()
    local f = (_G.C_PartyInfo and _G.C_PartyInfo.AcceptInvite) or _G.AcceptGroup
    local ok = f and pcall(f)
    -- la fenetre peut s'ouvrir juste apres l'evenement : on la ferme tout de suite et un instant plus tard
    HideInvitePopup()
    C_Timer.After(0, HideInvitePopup)
    C_Timer.After(0.3, HideInvitePopup)
    return ok
end
local function InMyParty(name)
    if not name or not IsInGroup() then return false end
    for i = 1, 4 do
        local u = "party" .. i
        if UnitExists(u) and Same(UnitFull(u), name) then return true end
    end
    return false
end
local function OnlineMembers()
    local res = {}
    for _, n in ipairs(Members()) do
        if duo.online[MemberKey(n)] ~= false then table.insert(res, n) end
    end
    return res
end
local function AnyMemberInParty()
    for _, n in ipairs(Members()) do if InMyParty(n) then return true end end
    return false
end
local function AllMembersInParty()
    for _, n in ipairs(OnlineMembers()) do if not InMyParty(n) then return false end end
    return true
end
LS.InMyParty, LS.Leave, LS.Invite = InMyParty, LeaveGroup, InviteName

-- bandeau de RXP qui clignote pendant la recherche d'un hote, avec une barre qui se vide
local pulse
local function Pulse(on)
    local host = addon.RXPFrame and addon.RXPFrame.GuideName
    if not host then return end
    if not pulse then
        pulse = CreateFrame("Frame", nil, host)
        pulse:SetAllPoints(host)
        pulse:SetFrameLevel(host:GetFrameLevel() + 5)
        -- fond opaque (couleur de fond du theme RXP si dispo) : cache le nom du guide pendant la recherche
        pulse.base = pulse:CreateTexture(nil, "ARTWORK")
        pulse.base:SetPoint("LEFT", pulse, "LEFT", 42, 0)
        pulse.base:SetPoint("RIGHT", pulse, "RIGHT", -6, 0)
        pulse.base:SetHeight(18)
        local bg = addon.colors and addon.colors.background
        if type(bg) == "table" and bg[1] then
            pulse.base:SetColorTexture(bg[1], bg[2], bg[3], 0.97)
        else
            pulse.base:SetColorTexture(0.06, 0.07, 0.09, 0.97)
        end
        pulse.glow = pulse:CreateTexture(nil, "ARTWORK", nil, 2)
        pulse.glow:SetAllPoints(pulse.base)
        pulse.glow:SetColorTexture(0.25, 0.9, 0.45, 0.22)
        pulse.bar = pulse:CreateTexture(nil, "OVERLAY", nil, 2)
        pulse.bar:SetPoint("BOTTOMLEFT", pulse.base, "BOTTOMLEFT", 0, 0)
        pulse.bar:SetHeight(2)
        pulse.bar:SetColorTexture(0.35, 1, 0.55, 1)
        pulse.text = pulse:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
        pulse.text:SetPoint("CENTER", pulse.base, "CENTER", 0, 1)
        pulse.text:SetTextColor(1, 1, 1)
        pulse.text:SetShadowOffset(1, -1)
        local ag = pulse.glow:CreateAnimationGroup()
        ag:SetLooping("BOUNCE")
        local a = ag:CreateAnimation("Alpha")
        a:SetFromAlpha(0.25); a:SetToAlpha(1); a:SetDuration(0.9)
        pulse.anim = ag
        pulse:Hide()
    end
    if on then
        local left = math.max(0, (LS.at or 0) + LS.askTimeout - GetTime())
        local h = host:GetHeight() or 24
        pulse.base:SetHeight(math.max(14, math.min(22, h - 10)))
        pulse.text:SetText(fmt(L["Searching for a layer  ·  %d s"], math.ceil(left)))
        pulse.bar:SetWidth(math.max(1, ((pulse.base:GetWidth() or 100)) * left / LS.askTimeout))
        if not pulse:IsShown() then pulse:Show(); pulse.anim:Play() end
    elseif pulse:IsShown() then
        pulse.anim:Stop(); pulse:Hide()
    end
end

local function LSSet(phase)
    LS.phase, LS.at = phase, GetTime()
    if phase ~= "joined" then LS.pendingRegroup = nil end
    Pulse(phase == "asking")
    duo:Refresh()
end

-- fin d'une etape (reussie ou non) : RIEN d'automatique, le bouton devient "Regrouper"
local function LSDone(why)
    LSSet("done")
    if why then Print(why) end
end

-- clic sur "Regrouper" : quitter le groupe ou personne du groupe RXP n'est (celui de l'hote), puis inviter tout le monde
local function LSRegroup()
    local list = OnlineMembers()
    if #list == 0 then return end
    if LS.phase == "joined" then
        -- encore dans le groupe de l'hote : le quitter maintenant annulerait le changement de layer
        LS.pendingRegroup = true
        Print("waiting for the layer change to finish, then inviting the group.")
        return
    end
    if AllMembersInParty() then
        LSSet(nil)
        Print("the whole group is already with you.")
        return
    end
    LSSet("regroup")
    if IsInGroup() and not AnyMemberInParty() then LeaveGroup() end     -- le groupe de l'hote
    for _, n in ipairs(list) do
        if not InMyParty(n) then Send(n, "GRP", PROTO) end    -- chez eux : "X t'invite, grouper ?"
    end
    Print("invitation sent to the group: everyone gets a window to accept.")
    C_Timer.After(60, function() if LS.phase == "regroup" then LSSet(nil) end end)
end

-- Alt + clic sur une ligne : inviter ce membre seulement
function duo:InviteMember(name)
    if InMyParty(name) then Print("%s is already in your party.", Short(name)) return end
    Send(name, "GRP", PROTO)
    Print("invitation sent to %s.", Short(name))
end

function duo:LayerSwap()
    if not LayerSwapLoaded() then
        Print("the LayerSwap addon is required (and your friends need this RXP version).")
        return
    end
    if LS.phase == "asking" or LS.phase == "joined" or LS.phase == "regroup" then
        Print("layer change already in progress.")
        return
    end
    -- en groupe : on quitte ; si le jeu nous sort du groupe tout de suite, la recherche part sur CE clic,
    -- sinon (sortie pas encore faite) elle partira au clic suivant (LayerSwap refuse en groupe, et sa
    -- recherche doit partir d'un vrai clic)
    if IsInGroup() then
        LeaveGroup()
        if IsInGroup() then
            LSSet("leaving")
            Print("leaving the party... click |cff40ff40Search|r again once it's done.")
            return
        end
    end
    LSSet("asking")
    local ok, err = pcall(_G.SlashCmdList["LAYERSWAP"], "swap")
    if not ok then
        LSDone(fmt(L["LayerSwap could not ask (%s). Click |cff40ff40Invite group|r to invite the group again."], tostring(err)))
    end
end

function duo:Reinvite()
    if LS.phase == "asking" then pcall(_G.SlashCmdList["LAYERSWAP"], "stop") end
    LSRegroup()
end

-- annuler : on arrete la recherche, sans inviter personne
function duo:LayerCancel()
    if not LS.phase then return end
    if LS.phase == "asking" or LS.phase == "joined" then pcall(_G.SlashCmdList["LAYERSWAP"], "stop") end
    LSSet(nil)
    Print("layer change cancelled. Use |cff40ff40Invite group|r (after a change) or Alt-click a friend to invite them.")
end

local lsEvents = CreateFrame("Frame")
for _, ev in ipairs({ "PARTY_INVITE_REQUEST", "GROUP_JOINED", "GROUP_LEFT", "GROUP_ROSTER_UPDATE" }) do
    lsEvents:RegisterEvent(ev)
end
lsEvents:SetScript("OnEvent", function(_, event, a1)
    local now = GetTime()
    if event == "PARTY_INVITE_REQUEST" then
        local inviter = type(a1) == "string" and a1 or nil
        -- un membre me regroupe apres son changement de layer (il vient de me prevenir) : j'accepte
        if LS.follow and inviter and SameName(inviter, LS.follow) and now - LS.followAt < LS_FOLLOW_TTL then
            AcceptInvite()
            LS.follow = nil
            Print("accepting %s's invitation: joining them on their layer.", Short(inviter))
            return
        end
        -- l'hote LayerSwap qui repond a ma demande : j'accepte
        if LS.phase == "asking" and inviter and not IsMember(inviter) then
            AcceptInvite()
            LS.host = inviter
            LSSet("joined")
            Print("host %s: invitation accepted, layer change in progress. Then: |cff40ff40Invite group|r.", Short(inviter))
        end
    elseif event == "GROUP_JOINED" then
        if LS.phase == "asking" then LSSet("joined") end
    elseif event == "GROUP_LEFT" then
        if LS.phase == "leaving" then
            LSSet("ready")
        elseif LS.phase == "joined" then
            -- LayerSwap quitte le groupe de l'hote une fois le changement de layer confirme
            local want = LS.pendingRegroup
            LSDone(want and "layer changed: inviting the group." or "layer changed. Click |cff40ff40Invite group|r to bring the group together.")
            if want then LSRegroup() end
        end
    elseif event == "GROUP_ROSTER_UPDATE" then
        if LS.phase == "regroup" and AllMembersInParty() then
            LSSet(nil)
            Print("group reunited on the new layer.")
        end
    end
end)

-- delais : personne ne repond, ou LayerSwap ne quitte pas le groupe de l'hote
C_Timer.NewTicker(1, function()
    if not LS.phase then return end
    if LS.phase == "asking" then duo:Refresh(); Pulse(true) end
    local age = GetTime() - (LS.at or 0)
    if LS.phase == "asking" and age > LS_ASK_TIMEOUT then
        pcall(_G.SlashCmdList["LAYERSWAP"], "stop")
        LSDone("no host answered. Try again (Layer button), or |cff40ff40Invite group|r to invite the group again.")
    elseif LS.phase == "joined" and age > LS_JOINED_TIMEOUT then
        LSDone("the host's party was not left. |cff40ff40Invite group|r leaves it and invites the group again.")
    elseif (LS.phase == "ready" or LS.phase == "leaving") and age > LS_READY_TIMEOUT then
        LSSet(nil)       -- pas de second clic : on oublie, sans inviter personne
    elseif LS.phase == "done" and age > LS_DONE_TTL then
        LSSet(nil)
    end
end)

---------------------------------------------------------------------------
-- Masque l'erreur "joueur introuvable" quand un membre est hors ligne
---------------------------------------------------------------------------
local function OfflineFilter(_, _, msg)
    if not _G.ERR_CHAT_PLAYER_NOT_FOUND_S or type(msg) ~= "string" then return false end
    for _, n in ipairs(Members()) do
        if msg == fmt(_G.ERR_CHAT_PLAYER_NOT_FOUND_S, n) or msg == fmt(_G.ERR_CHAT_PLAYER_NOT_FOUND_S, Short(n)) then
            local k = MemberKey(n)
            if duo.online[k] ~= false then
                duo.online[k] = false
                duo:Refresh()
            end
            return true
        end
    end
    for k in pairs(DB().pending) do
        if strlower(msg) == strlower(fmt(_G.ERR_CHAT_PLAYER_NOT_FOUND_S, k)) then
            Print("%s is not online (or the name is misspelled).", k)
            DB().pending[k] = nil
            return true
        end
    end
    return false
end

---------------------------------------------------------------------------
-- Init
---------------------------------------------------------------------------
local events = CreateFrame("Frame")
events:RegisterEvent("PLAYER_LOGIN")
if duo.RegisterComm then
    duo:RegisterComm(PREFIX, function(prefix, msg, _, sender)
        if prefix == PREFIX then duo:OnMessage(msg, sender) end
    end)
else
    events:RegisterEvent("CHAT_MSG_ADDON")
end
events:SetScript("OnEvent", function(_, event, ...)
    if event == "CHAT_MSG_ADDON" then
        local prefix, msg, _, sender = ...
        if prefix == PREFIX then duo:OnMessage(msg, sender) end
    elseif event == "PLAYER_LOGIN" then
        if duo.RegisterComm then
            -- prefixe deja enregistre par AceComm
        elseif _G.C_ChatInfo and _G.C_ChatInfo.RegisterAddonMessagePrefix then
            _G.C_ChatInfo.RegisterAddonMessagePrefix(PREFIX)
        elseif _G.RegisterAddonMessagePrefix then
            _G.RegisterAddonMessagePrefix(PREFIX)
        end
        local addFilter = _G.ChatFrame_AddMessageEventFilter or
                              (_G.ChatFrameUtil and _G.ChatFrameUtil.AddMessageEventFilter)
        if addFilter then pcall(addFilter, "CHAT_MSG_SYSTEM", OfflineFilter) end

        C_Timer.After(6, function()
            if #Members() > 0 then
                SendAll("HI", PROTO)
                duo:SendStep(true)
            end
            duo:Refresh()
        end)
        C_Timer.NewTicker(1.5, function()
            if #Members() == 0 then return end
            duo:SendStep(false)
            duo:Refresh()
        end)
    end
end)

local function Slash(input)
    input = input or ""
    local cmd, rest = input:match("^%s*(%S*)%s*(.-)%s*$")
    cmd = strlower(cmd or "")
    local db = DB()
    if cmd == "ajouter" or cmd == "add" or cmd == "inviter" then
        if rest == "" then ShowAdd() else duo:Invite(rest) end
    elseif cmd == "retirer" or cmd == "remove" or cmd == "kick" then
        if rest == "" then Print("enter a name: /rxpgroup remove Name (or /rxpgroup leave)") else duo:Remove(rest) end
    elseif cmd == "quitter" or cmd == "leave" or cmd == "stop" then
        duo:Remove()
    elseif cmd == "layer" or cmd == "swap" then
        if rest == "stop" or rest == "annuler" then duo:LayerCancel() else duo:LayerSwap() end
    elseif cmd == "regrouper" or cmd == "regroup" then
        duo:Reinvite()
    elseif cmd == "cacher" or cmd == "hide" then
        db.hidden = true
        duo:Refresh()
    elseif cmd == "montrer" or cmd == "show" then
        db.hidden = nil
        duo:Refresh()
    elseif cmd == "debug" then
        local guide = CurrentGuide()
        Print("me: guide=%s step=%s", guide and GuideId(guide) or L["none"], tostring(CurrentIndex()))
        local st = MyState()
        if st then Print("my ids=%s", st.ids); Print("my fingerprints=%s", st.fps) end
        for _, n in ipairs(Members()) do
            local ps = duo.states[MemberKey(n)]
            if ps then
                local pos, how = MemberPositionInMyGuide(ps)
                Print("%s: guide=%s step=%s, in my guide %s (via %s)", n, ps.guideId, tostring(ps.index), tostring(pos), tostring(how))
            else
                Print("%s: no data received", n)
            end
        end
    elseif cmd == "reset" then
        db.pos = nil
        if frame then
            frame:ClearAllPoints()
            if addon.RXPFrame then
                frame:SetPoint("TOPLEFT", addon.RXPFrame, "BOTTOMLEFT", 0, -4)
            else
                frame:SetPoint("TOP", UIParent, "TOP", 0, -150)
            end
        end
    else
        if #db.members > 0 then
            local parts = {}
            for _, n in ipairs(db.members) do
                local k = MemberKey(n)
                parts[#parts + 1] = n .. " (" .. (duo.online[k] == false and L["offline"] or (duo.states[k] and L["online"] or L["waiting"])) .. ")"
            end
            Print("group (%d/5): %s.", #db.members + 1, table.concat(parts, ", "))
        else
            Print("no group. /rxpgroup add Name to invite a friend.")
        end
        Print("commands: /rxpgroup add Name · remove Name · leave · layer · regroup · hide · show · reset")
    end
end

_G.SLASH_RXPDUO1 = "/groupe"
_G.SLASH_RXPDUO2 = "/rxpgroupe"
_G.SLASH_RXPDUO3 = "/duo"
_G.SLASH_RXPDUO4 = "/rxpgroup"
_G.SlashCmdList["RXPDUO"] = Slash
