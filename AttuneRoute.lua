-- AttuneRoute.lua : runtime "adaptive route" for the attunement guides.
--
-- Step tags (registered in addon.functions, parsed like any RXP tag):
--   .bestroute          fastest way from the player's position to the step's main target
--                       (first objective .goto with a radius, else the step's last .goto):
--                       walking (+ safe corridor waypoints), known flights, hearthstone, boats /
--                       zeppelins / tram (addon.travel) and death skips (AttuneRouteData.lua).
--                       Shows ONE extra line in the step text and drives the arrow leg by leg.
--   .combat             no-op marker: "this step has a fight" (used by the death-skip look-ahead).
--   .safepath <id>      replaces the step's arrow with the safe waypoints of corridor <id>
--                       (ids = "<from key>-<to key>" of danger.json, see AttuneRouteData.lua).
-- Quest-state helper (only for guides of the group "Attunement guides"): a step whose quest
-- objectives (accept / turnin / complete / collect) are all done is no longer blocked by its
-- .goto objectives (they are ticked), so a guide loaded mid-way skips what is already done.
--
-- Everything is protected (pcall); on missing data the step simply shows nothing extra.
-- No Blizzard global / table is written.

local _, addon = ...

local AR = {}
addon.attuneRoute = AR

local L = addon.groupL or setmetatable({}, { __index = function(_, k) return k end })

local _G = _G
local fmt = string.format
local sqrt, floor, max, min = math.sqrt, math.floor, math.max, math.min
local INF = 1e7

local CFG = {
    tick = 0.5,           -- leg progress check (s)
    questTick = 1.0,      -- quest-state helper (s)
    recompute = 5,        -- min seconds between two full computations
    periodic = 30,        -- full recompute even without moving
    moveRecompute = 60,   -- yards moved since the last computation -> recompute (throttled)
    slowCpuMs = 30,       -- a computation slower than this -> intervals x3
    offPlan = 250,        -- yards away from the planned segment -> recompute
    minSaveTravel = 15,   -- a travel route must beat walking straight by this (s)
    minSaveDeath = 30,    -- a death skip must beat the best normal route by this (s)
    switchGain = 20,      -- periodic recompute only replaces a route that is this much slower (s)
    release = 10,         -- release spirit (s)
    spiritHealer = 30,    -- talk to the spirit healer (s)
    sickness = 600,       -- Resurrection Sickness (s): no combat before it ends
    stepTime = 60,        -- look-ahead: time per non-combat step (s)
    lookaheadSteps = 30,
    spotRange = 2500,     -- only death spots this close (same continent) are evaluated
    nearTarget = 40,      -- closer than this to the target: nothing to plan
    wpRadius = 25,        -- safe waypoint reached
    boardRadius = 35,     -- at the dock / flight master
    arriveRadius = 200,   -- flight landed near the destination
    dockArrive = 300,     -- boat / zeppelin / tram arrival
    hearthRadius = 300,   -- hearth arrival
    corridorNear = 200,   -- walk start must be this close to a corridor polyline
    corridorEnd = 400,    -- walk end must be this close to the corridor end
    corridorMinLen = 100, -- ignore corridor remainders shorter than this
    cacheTTL = 120,       -- travel time cache (s)
}
AR.config = CFG

local RES_SICKNESS = 15007
local CONT = { [0] = 1415, [1] = 1414 }
local GOTO_TAGS = { ["goto"] = true, groundgoto = true, flygoto = true }
local QUEST_TAGS = {
    accept = true, turnin = true, complete = true, collect = true,
    acceptmultiple = true, turninmultiple = true,
}
local COMBAT_TAGS = { combat = true, complete = true, mob = true }
local ATTUNE_GROUP = "Attunement guides"

---------------------------------------------------------------------------
-- Player-facing strings (English keys, translated below)
---------------------------------------------------------------------------
local LEAD, FOLLOW = 1, 2
local KEYS = {
    hearth = { "Hearth to %s", "hearth to %s" },
    fly = { "Fly to %s", "fly to %s" },
    boat = { "Take the boat to %s", "take the boat to %s" },
    zeppelin = { "Take the zeppelin to %s", "take the zeppelin to %s" },
    tram = { "Take the Deeprun Tram to %s", "take the Deeprun Tram to %s" },
    fp = { "Get the %s flight path", "get the %s flight path" },
}
local DIE_KEYS = {
    lava = { "Die in the lava (%s), respawn at %s", "die in the lava (%s), respawn at %s" },
    fall = { "Jump off the ledge (%s), respawn at %s", "jump off the ledge (%s), respawn at %s" },
    mobs = { "Let %s kill you (%s), respawn at %s", "let %s kill you (%s), respawn at %s" },
    drown = { "Drown (%s), respawn at %s", "drown (%s), respawn at %s" },
}
local S_RELEASE = "Release your spirit"
local S_HEALER = "Talk to the Spirit Healer (%s)"
local S_SAFE = "Ride: follow the arrow (safe path)"
local S_SAFE_TITLE = "Safe path (%d/%d)"
-- Travel.lua's own texts (used to read the destination back from a travel entry)
local TRAVEL_KEYS = {
    boat = "Take the boat to %s", zeppelin = "Take the zeppelin to %s",
    tram = "Take the Deeprun Tram to %s", hearth = "Hearth to %s",
}

---------------------------------------------------------------------------
-- Small helpers
---------------------------------------------------------------------------
local function HBD()
    return _G.LibStub and _G.LibStub("HereBeDragons-2.0", true)
end

local function Now()
    return _G.GetTime and _G.GetTime() or 0
end

local function Clock()
    return _G.debugprofilestop and _G.debugprofilestop() or nil
end

local function InCombat()
    if _G.InCombatLockdown and _G.InCombatLockdown() then return true end
    return (_G.UnitAffectingCombat and _G.UnitAffectingCombat("player")) and true or false
end

local function IsDead()
    return (_G.UnitIsDeadOrGhost and _G.UnitIsDeadOrGhost("player")) and true or false
end

local function IsGhost()
    return (_G.UnitIsGhost and _G.UnitIsGhost("player")) and true or false
end

local function OnTaxi()
    return (_G.UnitOnTaxi and _G.UnitOnTaxi("player")) and true or false
end

local function Faction()
    return _G.UnitFactionGroup and _G.UnitFactionGroup("player")
end

-- RXP's own locale (NPC names such as "Spirit Healer" must match the client language)
local function RXPL(s)
    local f = addon.locale and addon.locale.Get
    if type(f) == "function" then
        local ok, r = pcall(f, s)
        if ok and type(r) == "string" then return r end
    end
    return s
end

local function PlayerPt()
    local x, y, inst
    local t = addon.travel
    if t and t.PlayerPos then
        x, y, inst = t.PlayerPos()
    else
        local hbd = HBD()
        if hbd then
            local ok
            ok, x, y, inst = pcall(hbd.GetPlayerWorldPosition, hbd)
            if not ok then x = nil end
        end
    end
    if x and y and inst then return { wx = x, wy = y, inst = inst } end
    return nil
end

local function Dist(a, b)
    if not (a and b and a.wx and b.wx) or a.inst ~= b.inst then return INF end
    local dx, dy = a.wx - b.wx, a.wy - b.wy
    return sqrt(dx * dx + dy * dy)
end

-- distance from p to segment [a, b] + position t (0..1) along it
local function SegDist(p, a, b)
    if not (p and a and b) or p.inst ~= a.inst or p.inst ~= b.inst then return INF, 0 end
    local dx, dy = b.wx - a.wx, b.wy - a.wy
    local l2 = dx * dx + dy * dy
    local t = 0
    if l2 > 0 then
        t = ((p.wx - a.wx) * dx + (p.wy - a.wy) * dy) / l2
        if t < 0 then t = 0 elseif t > 1 then t = 1 end
    end
    local qx, qy = a.wx + t * dx - p.wx, a.wy + t * dy - p.wy
    return sqrt(qx * qx + qy * qy), t
end

local function KnownSpell(id)
    local f = _G.IsPlayerSpell or _G.IsSpellKnown
    if not f then return false end
    local ok, r = pcall(f, id)
    return ok and r and true or false
end

local function Speed()
    local c = (addon.travel and addon.travel.config) or {}
    if KnownSpell(33391) or KnownSpell(34090) or KnownSpell(34091) or KnownSpell(90265) then
        return c.mount100 or 14
    elseif KnownSpell(33388) or (_G.UnitLevel and (_G.UnitLevel("player") or 1) >= 40) then
        return c.mount60 or 11.2
    end
    return c.walk or 7
end

local function WalkTime(a, b)
    local d = Dist(a, b)
    if d >= INF then return INF end
    local c = (addon.travel and addon.travel.config) or {}
    return d * (c.detour or 1.25) / Speed()
end

-- zone coordinates (percent) of a world point, on uiMap or on its continent map
local function ZoneXY(pt, uiMap)
    local hbd = HBD()
    if not (hbd and pt and pt.wx) then return nil end
    local function try(m)
        if not m then return nil end
        local ok, x, y = pcall(hbd.GetZoneCoordinatesFromWorld, hbd, pt.wx, pt.wy, m)
        if ok and x and y then return m, x * 100, y * 100 end
        return nil
    end
    local m, x, y = try(uiMap)
    if m then return m, x, y end
    return try(CONT[pt.inst])
end

local function ShortName(s)
    s = tostring(s or "")
    local short = s:match("^%s*([^,]+)") or s
    short = short:gsub("%s+$", "")
    return short
end

local function Escape(s)
    return (s:gsub("([%^%$%(%)%.%[%]%*%+%-%?%%])", "%%%1"))
end

-- read %s back from a localized text built with fmt(L[key], value)
local function Extract(text, key)
    if type(text) ~= "string" then return nil end
    local loc = L[key] or key
    local p = Escape(loc):gsub("%%%%s", "(.+)")
    return text:match("^" .. p .. "$")
end

local function LineArg(entry, tag)
    for _, l in ipairs(entry.lines or {}) do
        local v = tostring(l):match("^%s*%." .. tag .. "%s+(.-)%s*>>")
        if v and v ~= "" then return v end
    end
    return nil
end

local function ZoneName(id)
    local cm = _G.C_Map
    if id and cm and cm.GetMapInfo then
        local ok, info = pcall(cm.GetMapInfo, tonumber(id))
        if ok and type(info) == "table" and info.name then return info.name end
    end
    return nil
end

local function BindName()
    local b = _G.GetBindLocation and _G.GetBindLocation()
    if type(b) == "string" and b ~= "" then return b end
    return nil
end

---------------------------------------------------------------------------
-- Travel times (addon.travel)
---------------------------------------------------------------------------
local function TimeFromPlayer(pt)
    local t = addon.travel
    if not (t and t.WorldTimeFromPlayer and pt and pt.wx) then return nil end
    local ok, r = pcall(t.WorldTimeFromPlayer, pt.wx, pt.wy, pt.inst)
    if ok and type(r) == "number" then return r end
    return nil
end

-- Runs fn with the player position temporarily seen at src (Travel.lua only routes from
-- the player). Only the HereBeDragons library table is touched, synchronously, and restored.
local function WithPlayerAt(src, fn, ...)
    local hbd = HBD()
    if not (hbd and src and src.wx) then return nil end
    local orig = rawget(hbd, "GetPlayerWorldPosition")
    local sx, sy, si = src.wx, src.wy, src.inst
    hbd.GetPlayerWorldPosition = function() return sx, sy, si end
    local ok, a, b = pcall(fn, ...)
    hbd.GetPlayerWorldPosition = orig
    if ok then return a, b end
    return nil
end

local timeCache, timeCacheN = {}, 0
local function PtKey(a)
    return fmt("%d:%d:%d", floor(a.wx / 10 + 0.5), floor(a.wy / 10 + 0.5), a.inst or -1)
end

-- hearthstone usable now? (part of the cache key: Travel.lua uses it when ready)
local function HearthReady()
    local start, duration
    local cc = _G.C_Container
    if cc and cc.GetItemCooldown then
        local ok, s, d = pcall(cc.GetItemCooldown, 6948)
        if ok then start, duration = s, d end
    elseif _G.GetItemCooldown then
        local ok, s, d = pcall(_G.GetItemCooldown, 6948)
        if ok then start, duration = s, d end
    end
    if start and duration and start > 0 and duration > 0 and start + duration - Now() > 0 then
        return false
    end
    return true
end

-- best time from any point a to b (flights, hearth, boats), cached
local function TimeBetween(a, b)
    if not (a and b and a.wx and b.wx) then return nil end
    local k = PtKey(a) .. ">" .. PtKey(b) .. (HearthReady() and "h" or "")
        .. (_G.GetBindLocation and tostring(_G.GetBindLocation()) or "")
    local now = Now()
    local c = timeCache[k]
    if c and now - c.at < CFG.cacheTTL then return c.t or nil end
    local t = WithPlayerAt(a, TimeFromPlayer, b)
    if timeCacheN > 300 then timeCache, timeCacheN = {}, 0 end
    if not c then timeCacheN = timeCacheN + 1 end
    timeCache[k] = { t = t or false, at = now }
    return t
end
AR.TimeBetween = TimeBetween

-- travel.Plan to one point from the player: travel entries + total cost (s)
local function PlanTo(target)
    local t = addon.travel
    if not (t and t.Plan and target) then return nil end
    local m, x, y = ZoneXY(target, target.uiMap)
    if not m then return nil end
    local saved = t.last
    t.last = nil
    local ok, out = pcall(t.Plan, { { id = "attuneroute", uiMap = m, x = x, y = y, duration = 0 } })
    local last = t.last
    t.last = saved
    if not ok or type(out) ~= "table" or type(last) ~= "table" then return nil end
    local entries = {}
    for _, e in ipairs(out) do
        if type(e) == "table" and e.travel then entries[#entries + 1] = e end
    end
    return entries, tonumber(last.cost)
end

---------------------------------------------------------------------------
-- Data (AttuneRouteData.lua)
---------------------------------------------------------------------------
local function Data()
    return addon.attuneRouteData
end

local function CorridorFor(id, fac)
    local d = Data()
    local byFac = d and d.corridors and d.corridors[id]
    if type(byFac) ~= "table" then return nil end
    local c = byFac[fac or Faction() or ""]
    if not c then
        for _, v in pairs(byFac) do c = v break end
    end
    if type(c) ~= "table" or type(c.wps) ~= "table" then return nil end
    if not c.pts then
        local pts = {}
        for i, w in ipairs(c.wps) do
            pts[i] = { wx = w[1], wy = w[2], uiMap = w[3], inst = c.inst }
        end
        c.pts = pts
    end
    return c
end
AR.CorridorFor = CorridorFor

function AR.CorridorIds()
    local ids = {}
    local d = Data()
    for id in pairs(d and d.corridors or {}) do ids[#ids + 1] = id end
    table.sort(ids)
    return ids
end

-- closest point of a polyline: distance + index of the next waypoint after it
local function Project(p, pts)
    local n = #pts
    if n == 1 then return Dist(p, pts[1]), 1 end
    local best, k = INF, 1
    for i = 1, n - 1 do
        local d, t = SegDist(p, pts[i], pts[i + 1])
        if d < best then
            best = d
            k = (t >= 0.98) and (i + 2) or (i + 1)
        end
    end
    return best, k
end

-- safe corridor waypoints to follow when walking from a to b (nil if none applies)
local function CorridorWalk(a, b)
    local d = Data()
    local fac = Faction()
    if not (d and d.corridors and fac and a and b) then return nil end
    local bestScore, bestRest, bestId
    local dAB = Dist(a, b)
    for id, byFac in pairs(d.corridors) do
        local c = byFac[fac]
        if c and (c.exposures or 0) > (c.safeExposures or 0) and c.inst == a.inst and c.inst == b.inst then
            CorridorFor(id, fac)
            local pts = c.pts
            for dir = 1, 2 do
                local list = pts
                if dir == 2 then
                    list = {}
                    for i = #pts, 1, -1 do list[#list + 1] = pts[i] end
                end
                local dA, k = Project(a, list)
                local dB = Dist(b, list[#list])
                if dA <= CFG.corridorNear and dB <= CFG.corridorEnd and dB < dAB and k <= #list
                    and Dist(a, list[#list]) >= CFG.corridorMinLen then
                    local score = dA + dB
                    if not bestScore or score < bestScore then
                        local rest = {}
                        for j = k, #list do rest[#rest + 1] = list[j] end
                        bestScore, bestRest, bestId = score, rest, id
                    end
                end
            end
        end
    end
    return bestRest, bestId
end
AR.CorridorWalk = CorridorWalk

---------------------------------------------------------------------------
-- Legs
---------------------------------------------------------------------------
-- leg = { kind, pt (arrow point), to (end of the leg), name, ... }
local function AddWalk(legs, a, b)
    if not (a and b) then return end
    local rest = CorridorWalk(a, b)
    if rest then
        for i, w in ipairs(rest) do
            legs[#legs + 1] = { kind = "safe", pt = w, n = i, total = #rest }
        end
    end
end

local function EntryName(e)
    local k = e.kind
    if k == "fly" then
        return ShortName(LineArg(e, "fly") or "?")
    elseif k == "fp" then
        return ShortName(LineArg(e, "fp") or "?")
    elseif k == "hearth" then
        return BindName() or Extract(e.text, TRAVEL_KEYS.hearth) or "?"
    else
        local n = Extract(e.text, TRAVEL_KEYS[k] or TRAVEL_KEYS.boat)
        if n then return n end
        for _, l in ipairs(e.lines or {}) do
            local z = tostring(l):match("^%s*%.zone%s+(%d+)")
            if z then return ZoneName(z) or "?" end
        end
        return "?"
    end
end

local function BuildLegs(start, entries, target)
    local legs = {}
    local cur = start
    for _, e in ipairs(entries or {}) do
        local k = e.kind
        if k == "hearth" then
            if e.to then
                legs[#legs + 1] = { kind = "hearth", pt = e.to, to = e.to, name = EntryName(e) }
                cur = e.to
            end
        else
            local board = e.board or e.to
            if board then
                AddWalk(legs, cur, board)
                local leg = { kind = k, pt = board, to = e.to or board, name = EntryName(e), fpId = e.fpId }
                if k == "fly" then leg.flyName = LineArg(e, "fly") end
                legs[#legs + 1] = leg
                cur = e.to or board
            end
        end
    end
    AddWalk(legs, cur, target)
    return legs
end

local function SafeLegs(rest)
    local legs = {}
    for i, w in ipairs(rest) do legs[#legs + 1] = { kind = "safe", pt = w, n = i, total = #rest } end
    return legs
end

---------------------------------------------------------------------------
-- Step analysis
---------------------------------------------------------------------------
local function ElementPt(e)
    if not (e and e.wx and e.wy) then return nil end
    local inst = e.instance
    if inst == nil and e.zone and e.x and e.y then
        local hbd = HBD()
        if hbd then
            local ok, _, _, i = pcall(hbd.GetWorldCoordinatesFromZone, hbd, e.x / 100, e.y / 100, e.zone)
            if ok then inst = i end
        end
    end
    if inst == nil then return nil end
    return { wx = e.wx, wy = e.wy, inst = inst, uiMap = e.zone, radius = e.radius }
end

-- main target: first objective .goto with a radius, else the last .goto
local function StepTarget(step)
    if not (step and step.elements) then return nil end
    local first, last
    for _, e in ipairs(step.elements) do
        if GOTO_TAGS[e.tag] and e.wx and e.wy then
            last = e
            if not first and e.radius and e.radius > 0 and not e.textOnly then first = e end
        end
    end
    return ElementPt(first or last)
end
AR.StepTarget = StepTarget

local function IsCombatStep(step)
    for _, e in ipairs(step.elements or {}) do
        if COMBAT_TAGS[e.tag] then
            if not (e.tag == "complete" and e.flags and e.flags % 2 == 1) then return true end
        end
    end
    return false
end
AR.IsCombatStep = IsCombatStep

local function StepApplies(step)
    local logic = addon.stepLogic
    if logic and logic.HardcoreCheck then
        local ok, r = pcall(logic.HardcoreCheck, step)
        if ok and r == false then return false end
    end
    return true
end

-- seconds from arriving at the current step's target to the next expected fight
-- (INF = none within the look-ahead horizon)
local function Lookahead(st)
    local step = st.step
    if IsCombatStep(step) then return 0 end
    local guide = addon.currentGuide
    local steps = guide and guide.steps
    if not (steps and step.index) then return 0 end
    local skip = _G.RXPCData and _G.RXPCData.stepSkip
    local t, prev, n = 0, st.target, 0
    for i = step.index + 1, #steps do
        local s = steps[i]
        if s and not s.completed and not (type(skip) == "table" and skip[i]) and StepApplies(s) then
            n = n + 1
            if n > CFG.lookaheadSteps then return INF end
            local pt = StepTarget(s)
            if pt then
                if prev then
                    local tt = TimeBetween(prev, pt)
                    if not tt then tt = WalkTime(prev, pt) end
                    if tt >= INF then tt = 0 end -- unknown: be conservative
                    t = t + tt
                end
                prev = pt
            end
            if IsCombatStep(s) then return t end
            t = t + CFG.stepTime
            if t >= CFG.sickness then return t end
        end
    end
    -- end of the guide: the next guide may start with a fight (dungeon) -> conservative
    if guide.next and guide.next ~= "" then return t end
    return INF
end
AR.Lookahead = Lookahead

---------------------------------------------------------------------------
-- Death skips
---------------------------------------------------------------------------
local function IsHardcore()
    local p = addon.settings and addon.settings.profile
    if p and p.hardcore then return true end
    if addon.currentGuide and addon.currentGuide.hardcore then return true end
    local gr = _G.C_GameRules
    if gr and gr.IsHardcoreActive then
        local ok, r = pcall(gr.IsHardcoreActive)
        if ok and r then return true end
    end
    return false
end
AR.IsHardcore = IsHardcore

local function HasResSickness()
    if AR.lastSpiritRes and Now() - AR.lastSpiritRes < CFG.sickness then return true end
    local ua = _G.C_UnitAuras
    if ua and ua.GetPlayerAuraBySpellID then
        local ok, a = pcall(ua.GetPlayerAuraBySpellID, RES_SICKNESS)
        if ok and a then return true end
    end
    return false
end

local function DeathForbidden()
    if IsHardcore() then return "hardcore" end
    if IsDead() then return "dead" end
    if HasResSickness() then return "sickness" end
    return nil
end

local function DeathOption(st, p, target, bestCost, info)
    local why = DeathForbidden()
    if why then info.death = why return nil end
    local d = Data()
    local list = d and d.deathSpots and d.deathSpots[Faction() or ""]
    if type(list) ~= "table" then return nil end
    local chosen, chosenEff, chosenCost, chosenWait
    info.spots = {}
    for _, s in ipairs(list) do
        if s.inst == p.inst and s.gy and Dist(p, s) <= CFG.spotRange then
            local tS = (Dist(p, s) <= 30) and 0 or TimeFromPlayer(s)
            local tG = tS and TimeBetween(s.gy, target)
            local rec = { id = s.id, tS = tS, tG = tG }
            info.spots[#info.spots + 1] = rec
            if tS and tG then
                local cost = tS + (s.ttd or 15) + CFG.release + CFG.spiritHealer + tG
                rec.cost = cost
                if cost + CFG.minSaveDeath <= bestCost then
                    if not st.tc then st.tc = Lookahead(st) end
                    local wait = max(0, CFG.sickness - (tG + st.tc))
                    rec.wait = wait
                    local eff = cost + wait
                    if eff + CFG.minSaveDeath <= bestCost and (not chosenEff or eff < chosenEff) then
                        chosen, chosenEff, chosenCost, chosenWait = s, eff, cost, wait
                    end
                end
            end
        end
    end
    info.tc = st.tc
    if not chosen then return nil end
    local entries = (Dist(p, chosen) > 30) and PlanTo(chosen) or nil
    local legs = BuildLegs(p, entries, chosen)
    local gyName = chosen.gy.name or "?"
    legs[#legs + 1] = { kind = "die", pt = chosen, spot = chosen }
    legs[#legs + 1] = { kind = "release", pt = chosen, spot = chosen }
    legs[#legs + 1] = { kind = "res", pt = chosen.gy, to = chosen.gy, name = gyName, spot = chosen }
    return { kind = "death", cost = chosenEff, legs = legs, spot = chosen, rawCost = chosenCost, wait = chosenWait }
end

---------------------------------------------------------------------------
-- Route computation
---------------------------------------------------------------------------
local function ComputeRoute(st, p)
    local target = st.target
    local info = { at = Now(), step = st.step.index }
    AR.last = info
    if Dist(p, target) <= max(target.radius or 0, CFG.nearTarget) then
        info.kind = "here"
        return { kind = "here", cost = 0 }
    end
    local walk = WalkTime(p, target)
    info.walk = walk
    local entries, planCost = PlanTo(target)
    info.plan = planCost
    local best = { kind = "walk", cost = walk }
    local travelLike = false
    for _, e in ipairs(entries or {}) do
        if e.kind ~= "fp" then travelLike = true end
    end
    if travelLike and planCost and planCost + CFG.minSaveTravel < walk then
        best = { kind = "travel", cost = planCost, legs = BuildLegs(p, entries, target) }
    elseif planCost and planCost < best.cost then
        best.cost = planCost
    end
    local dopt = DeathOption(st, p, target, best.cost, info)
    if dopt then best = dopt end
    if best.kind == "walk" then
        local rest, id = CorridorWalk(p, target)
        if rest then
            best.kind = "safe"
            best.legs = SafeLegs(rest)
            best.corridor = id
        end
    end
    info.kind, info.cost = best.kind, best.cost
    return best
end

---------------------------------------------------------------------------
-- Text, arrow, targets
---------------------------------------------------------------------------
local function LegText(leg, form)
    local k = leg.kind
    local keys = KEYS[k]
    if keys then return fmt(L[keys[form]], leg.name or "?") end
    if k == "die" then
        local s = leg.spot
        local m = DIE_KEYS[s.method] or DIE_KEYS.fall
        if s.method == "mobs" then
            return fmt(L[m[form]], s.killer or "?", s.label or "?", s.gy.name or "?")
        end
        return fmt(L[m[form]], s.label or "?", s.gy.name or "?")
    elseif k == "release" then
        return L[S_RELEASE]
    elseif k == "res" then
        return fmt(L[S_HEALER], leg.name or "?")
    end
    return nil
end

local function Summary(st)
    local legs = st.legs
    if not legs then return nil end
    local parts, hasSafe = {}, false
    for j = st.i, #legs do
        local leg = legs[j]
        local k = leg.kind
        if k == "safe" then
            hasSafe = true
        elseif k == "release" or k == "res" then
            if #parts == 0 then parts[1] = LegText(leg, LEAD) end
            break
        else
            parts[#parts + 1] = LegText(leg, #parts == 0 and LEAD or FOLLOW)
            if k == "die" or #parts >= 3 then break end
        end
    end
    if #parts == 0 then
        return hasSafe and L[S_SAFE] or nil
    end
    return table.concat(parts, ", ")
end

local function LegTitle(leg)
    if leg.kind == "safe" then return fmt(L[S_SAFE_TITLE], leg.n or 1, leg.total or 1) end
    return LegText(leg, LEAD)
end

local ICONS = {
    fly = "fly", boat = "fly", zeppelin = "fly", tram = "fly", fp = "fp", hearth = "hs",
    die = "deathskip", release = "deathskip", res = "deathskip", safe = "goto",
}

local function SetPoint(el, pt)
    if not pt then return false end
    if el.wx == pt.wx and el.wy == pt.wy and el.instance == pt.inst and el.zone then return false end
    local m, x, y = ZoneXY(pt, pt.uiMap)
    el.wx, el.wy, el.instance = pt.wx, pt.wy, pt.inst
    el.zone = m or CONT[pt.inst] or el.zone
    el.x, el.y = x or 50, y or 50
    return true
end

local function HideOthers(st, on)
    if on then
        if st.hidden then return false end
        st.hidden = {}
        for _, e in ipairs(st.step.elements or {}) do
            if e ~= st.el and e.arrow and not e.hidden and not e.attuneRoute then
                e.hidden = true
                st.hidden[#st.hidden + 1] = e
            end
        end
        return true
    end
    if not st.hidden then return false end
    for _, e in ipairs(st.hidden) do e.hidden = nil end
    st.hidden = nil
    return true
end

local function SetIgnoreCorpse(st, on)
    local step = st.step
    if on and not st.ignoreSet then
        st.prevIgnore = step.ignorecorpse
        step.ignorecorpse = true
        st.ignoreSet = true
    elseif not on and st.ignoreSet then
        step.ignorecorpse = st.prevIgnore
        st.prevIgnore, st.ignoreSet = nil, nil
    end
end

local function UpdateMapNow()
    if addon.UpdateMap then pcall(addon.UpdateMap, true) end
end

local function UpdateText(el)
    if addon.UpdateStepText then pcall(addon.UpdateStepText, el.frame or el) end
end

local function UpdateTargets()
    if InCombat() then return end
    AR.targetsDirty = nil
    local tg = addon.targeting
    if tg and tg.UpdateUnitList then pcall(tg.UpdateUnitList, tg) end
end

-- "Name::npcId" of the flight master at the boarding node of a fly / fp leg
-- (addon.travel.flightMasters, TravelFlightMasters.lua); node found by id or by position
local function FlightMasterTarget(leg)
    local fm = addon.travel and addon.travel.flightMasters
    if type(fm) ~= "table" then return nil end
    if leg.fmNode == nil then
        local node = leg.kind == "fp" and leg.fpId or nil
        if not node and leg.pt and type(addon.taxiPos) == "table" then
            local best = 60
            local nodes = addon.taxiPos[leg.pt.inst]
            for id, t in pairs(type(nodes) == "table" and nodes or {}) do
                if type(t) == "table" and t.wx and t.wy then
                    -- taxiPos is in UnitPosition order (inverse of HBD)
                    local d = Dist(leg.pt, { wx = t.wy, wy = t.wx, inst = leg.pt.inst })
                    if d < best then best, node = d, id end
                end
            end
        end
        leg.fmNode = node or false
    end
    local m = leg.fmNode and fm[leg.fmNode]
    if type(m) ~= "table" or not m.name then return nil end
    return m.id and (m.name .. "::" .. m.id) or m.name
end

local function Refresh(st)
    local el = st.el
    local leg = st.legs and st.legs[st.i]
    local text
    if st.mode == "route" then text = Summary(st) end
    local active = leg and (st.mode == "safepath" or text ~= nil)
    local mapDirty = false
    if active then
        local pt = (leg.kind == "hearth" and leg.to) or leg.pt
        if SetPoint(el, pt) then mapDirty = true end
        if not el.arrow then el.arrow = true; mapDirty = true end
        el.title = LegTitle(leg)
        if HideOthers(st, true) then mapDirty = true end
        if st.mode == "route" then el.icon = addon.icons and addon.icons[ICONS[leg.kind] or "goto"] or nil end
    else
        if el.arrow then el.arrow = nil; mapDirty = true end
        if HideOthers(st, false) then mapDirty = true end
        el.title = nil
    end
    local ghostLeg = active and (leg.kind == "release" or leg.kind == "res")
    SetIgnoreCorpse(st, ghostLeg)
    local want
    if active and leg.kind == "res" then
        want = RXPL("Spirit Healer")
    elseif active and (leg.kind == "fly" or leg.kind == "fp") then
        want = FlightMasterTarget(leg)
    end
    if want ~= st.targetKey then
        st.targetKey = want
        el.targets = want and { want } or nil
        AR.targetsDirty = true
    end
    if st.mode == "route" and text ~= el.text then
        el.text = text
        UpdateText(el)
    end
    if mapDirty then UpdateMapNow() end
    if AR.targetsDirty then UpdateTargets() end
end

---------------------------------------------------------------------------
-- State per route element
---------------------------------------------------------------------------
local states = {}
AR.states = states

local function Cleanup(st)
    local el = st.el
    HideOthers(st, false)
    SetIgnoreCorpse(st, false)
    el.arrow = nil
    el.title = nil
    if st.mode == "route" then el.text = nil end
    if el.targets then el.targets = nil; AR.targetsDirty = true end
end

local function Register(el)
    local st = states[el]
    if not st then
        st = {
            el = el, step = el.step, guide = addon.currentGuide,
            mode = el.safepath and "safepath" or "route", dirty = "first", i = 1,
        }
        states[el] = st
    end
    return st
end

local function Apply(st, route, p, now)
    st.legs = route and route.legs or nil
    st.i = 1
    st.start = p
    st.cost = route and route.cost or nil
    st.kind = route and route.kind or nil
    st.appliedAt = now
    st.onTaxi = nil
    Refresh(st)
end

local function Signature(legs, from)
    if not legs then return "" end
    local t = {}
    for j = from or 1, #legs do
        local l = legs[j]
        if l.kind ~= "safe" then
            t[#t + 1] = fmt("%s@%d,%d", l.kind, floor((l.pt.wx or 0) / 50), floor((l.pt.wy or 0) / 50))
        end
    end
    return table.concat(t, "/")
end

local function Compute(st, p, reason, now)
    local t0 = Clock()
    local ok, route = pcall(ComputeRoute, st, p)
    if not ok then AR.lastError = route; route = nil end
    local t1 = t0 and Clock()
    st.cpuMs = (t0 and t1) and (t1 - t0) or nil
    st.computedAt, st.computedPos, st.dirty = now, p, nil
    if AR.last then AR.last.reason, AR.last.cpuMs = reason, st.cpuMs end
    if reason == "periodic" and st.legs and st.legs[st.i] then
        if not route then return end
        if Signature(route.legs, 1) == Signature(st.legs, st.i) then return end
        local remaining = (st.cost or INF) - (now - (st.appliedAt or now))
        if (route.cost or INF) > remaining - CFG.switchGain then return end
    end
    Apply(st, route, p, now)
end

local function Advance(st, n)
    st.i = st.i + (n or 1)
    st.changed = true
end

local function Progress(st, p, now)
    local legs = st.legs
    local leg = legs and legs[st.i]
    if not leg then return end
    local k = leg.kind
    if k == "die" and IsDead() then
        Advance(st)
        leg = legs[st.i]; k = leg and leg.kind
    end
    if k == "release" then
        if IsGhost() then
            Advance(st)
            leg = legs[st.i]; k = leg and leg.kind
        elseif not IsDead() then -- resurrected on the spot (another player, soulstone...)
            st.i = #legs + 1
            st.changed = true
            st.dirty = "res"
            return
        end
    end
    if k == "res" then
        if not IsDead() then
            AR.lastSpiritRes = now
            Advance(st)
            st.dirty = "res"
        end
        return
    end
    if not leg or IsDead() or not p then return end
    if k == "safe" then
        for j = st.i, min(#legs, st.i + 3) do
            local lj = legs[j]
            if lj.kind ~= "safe" then break end
            if Dist(p, lj.pt) <= CFG.wpRadius then Advance(st, j - st.i + 1) break end
        end
    elseif k == "fly" then
        if OnTaxi() then
            st.onTaxi = true
        elseif st.onTaxi then
            st.onTaxi = nil
            Advance(st)
            st.dirty = "landing"
        elseif leg.to and Dist(p, leg.to) <= CFG.arriveRadius then
            Advance(st)
        end
    elseif k == "boat" or k == "zeppelin" or k == "tram" then
        if leg.to and Dist(p, leg.to) <= CFG.dockArrive then
            Advance(st)
            st.dirty = "landing"
        elseif Dist(p, leg.pt) <= CFG.boardRadius then
            leg.boarded = true
        end
    elseif k == "hearth" then
        if leg.to and Dist(p, leg.to) <= CFG.hearthRadius then
            Advance(st)
            st.dirty = "landing"
        end
    elseif k == "fp" then
        local known = _G.RXPCData and _G.RXPCData.flightPaths
        if (leg.fpId and type(known) == "table" and known[leg.fpId]) or Dist(p, leg.pt) <= 10 then
            Advance(st)
        end
    end
    -- off the plan?
    leg = legs[st.i]
    if leg and not st.dirty and not OnTaxi() and not leg.boarded and leg.kind ~= "hearth" then
        local prev = legs[st.i - 1]
        local a = prev and (prev.to or prev.pt) or st.start
        if a and a.inst == p.inst and leg.pt.inst == p.inst then
            if SegDist(p, a, leg.pt) > CFG.offPlan then st.dirty = "offplan" end
        elseif leg.pt.inst ~= p.inst and not (prev and prev.boarded) then
            st.dirty = "offplan"
        end
    end
end

local function UpdateRoute(st, now)
    if not st.target then
        st.target = StepTarget(st.step)
        if not st.target then return end
    end
    local dead = IsDead()
    local p = PlayerPt()
    if st.legs then Progress(st, p, now) end
    if st.changed then st.changed = nil; Refresh(st) end
    local taxi = OnTaxi()
    if st.wasOnTaxi and not taxi then st.dirty = st.dirty or "landing" end
    st.wasOnTaxi = taxi
    if dead or taxi or not p or InCombat() then return end
    local leg = st.legs and st.legs[st.i]
    if leg and (leg.kind == "release" or leg.kind == "res") then return end
    if leg and leg.boarded then return end
    local slow = (st.cpuMs or 0) > CFG.slowCpuMs and 3 or 1
    local since = now - (st.computedAt or -1e9)
    local reason = st.dirty
    if reason then
        local strong = reason ~= "periodic"
        if since >= (strong and 1 or CFG.recompute * slow) then Compute(st, p, reason, now) end
    elseif since >= CFG.recompute * slow
        and (Dist(p, st.computedPos) > CFG.moveRecompute or since >= CFG.periodic * slow) then
        Compute(st, p, "periodic", now)
    end
end

local function UpdateSafepath(st, now)
    if IsDead() then return end
    local p = PlayerPt()
    if not p then return end
    if not st.legs then
        local c = CorridorFor(st.el.corridor)
        if not c then return end
        local pts = c.pts
        local d, k = Project(p, pts)
        if d > 300 then k = 1 end
        local legs = {}
        for j = k, #pts do legs[#legs + 1] = { kind = "safe", pt = pts[j], n = j, total = #pts } end
        st.legs, st.i, st.start, st.dirty = legs, 1, p, nil
        Refresh(st)
        return
    end
    local legs = st.legs
    for j = st.i, min(#legs, st.i + 3) do
        if Dist(p, legs[j].pt) <= CFG.wpRadius then Advance(st, j - st.i + 1) break end
    end
    if st.dirty then st.legs = nil end -- zone change / resurrection: project again
    if st.changed then st.changed = nil; Refresh(st) end
end

---------------------------------------------------------------------------
-- Quest-state helper (Attunement guides only)
---------------------------------------------------------------------------
local function IsAttuneGuide(g)
    g = g or addon.currentGuide
    local grp = g and g.group
    if type(grp) ~= "string" then return false end
    grp = grp:gsub("^[%*%+]", "")
    return grp == ATTUNE_GROUP
end
AR.IsAttuneGuide = IsAttuneGuide

local function QuestAdapt()
    if not IsAttuneGuide() then return end
    local f = addon.RXPFrame
    local active = f and f.activeSteps
    if type(active) ~= "table" then return end
    for _, step in pairs(active) do
        if type(step) == "table" and step.elements and step.active and not step.completed then
            local nQuest, blocked, gotos = 0, false, nil
            for _, e in ipairs(step.elements) do
                if not e.textOnly then
                    local done = e.completed or e.skip
                    if QUEST_TAGS[e.tag] then
                        nQuest = nQuest + 1
                        if not done then blocked = true end
                    elseif GOTO_TAGS[e.tag] then
                        if not done then gotos = gotos or {}; gotos[#gotos + 1] = e end
                    elseif not done then
                        blocked = true
                    end
                end
            end
            if nQuest > 0 and not blocked and gotos then
                for _, e in ipairs(gotos) do
                    if addon.SetElementComplete then pcall(addon.SetElementComplete, e.frame or e, true) end
                end
            end
        end
    end
end
AR.QuestAdapt = QuestAdapt

---------------------------------------------------------------------------
-- Driver
---------------------------------------------------------------------------
local function Tick()
    local now = Now()
    local cur = addon.currentGuide
    for el, st in pairs(states) do
        if not (el.step and el.step.active) or st.guide ~= cur then
            Cleanup(st)
            states[el] = nil
        elseif st.mode == "safepath" then
            UpdateSafepath(st, now)
        else
            UpdateRoute(st, now)
        end
    end
    if AR.targetsDirty then UpdateTargets() end
end
AR._Tick = Tick

local function StepHasTag(step, tag)
    for _, e in ipairs(step.elements or {}) do
        if e.tag == tag then return true end
    end
    return false
end

local function ConfirmSpiritHealer()
    local pim = _G.C_PlayerInteractionManager
    local E = _G.Enum and _G.Enum.PlayerInteractionType
    if pim and E and E.SpiritHealer and pim.ConfirmationInteraction then
        local function go()
            pcall(pim.ConfirmationInteraction, E.SpiritHealer)
            if pim.ClearInteraction then pcall(pim.ClearInteraction, E.SpiritHealer) end
        end
        if _G.C_Timer and _G.C_Timer.After then _G.C_Timer.After(0, go) else go() end
    elseif _G.AcceptXPLoss then
        pcall(_G.AcceptXPLoss)
    end
end

local function OnEvent(event, arg1)
    for el, st in pairs(states) do
        if el.step and el.step.active then
            local leg = st.legs and st.legs[st.i]
            if event == "ZONE_CHANGED_NEW_AREA" or event == "PLAYER_ENTERING_WORLD" then
                st.dirty = "zone"
            elseif event == "PLAYER_ALIVE" or event == "PLAYER_UNGHOST" then
                if not (leg and (leg.kind == "release" or leg.kind == "res")) then st.dirty = "res" end
            elseif leg and leg.kind == "fly" and (event == "GOSSIP_SHOW" or event == "TAXIMAP_OPENED")
                and leg.flyName and not StepHasTag(st.step, "fly") and addon.functions.fly then
                -- reuse RXP's .fly automation (taxi gossip + node choice), never its completion
                st.flyProxy = st.flyProxy or {}
                local px = st.flyProxy
                if px.leg ~= leg then
                    px.leg = leg
                    local loc = tostring(leg.flyName):upper():gsub("([%^%$%(%)%.%[%]%*%+%?%%])", "%%%1")
                    px.frame = { element = { tag = "fly", step = st.step, location = loc } }
                end
                pcall(addon.functions.fly, px.frame, event)
            elseif leg and leg.kind == "res" and IsGhost() and not StepHasTag(st.step, "deathskip") then
                local E = _G.Enum and _G.Enum.PlayerInteractionType
                if event == "GOSSIP_SHOW"
                    or (event == "PLAYER_INTERACTION_MANAGER_FRAME_SHOW" and E and arg1 == E.Gossip) then
                    if addon.SelectGossipType then pcall(addon.SelectGossipType, "healer") end
                elseif event == "CONFIRM_XP_LOSS"
                    or (event == "PLAYER_INTERACTION_MANAGER_FRAME_SHOW" and E and arg1 == E.SpiritHealer) then
                    ConfirmSpiritHealer()
                end
            end
        end
    end
end
AR._OnEvent = OnEvent

local driver = _G.CreateFrame and _G.CreateFrame("Frame")
if driver then
    local acc, qacc = 0, 0
    driver:SetScript("OnUpdate", function(_, elapsed)
        acc = acc + (elapsed or 0)
        qacc = qacc + (elapsed or 0)
        if acc >= CFG.tick then
            acc = 0
            if next(states) then
                local ok, err = pcall(Tick)
                if not ok then AR.lastError = err end
            end
        end
        if qacc >= CFG.questTick then
            qacc = 0
            local ok, err = pcall(QuestAdapt)
            if not ok then AR.lastError = err end
        end
    end)
    for _, ev in ipairs({
        "ZONE_CHANGED_NEW_AREA", "PLAYER_ENTERING_WORLD", "PLAYER_ALIVE", "PLAYER_UNGHOST",
        "GOSSIP_SHOW", "TAXIMAP_OPENED", "PLAYER_INTERACTION_MANAGER_FRAME_SHOW", "CONFIRM_XP_LOSS",
    }) do
        pcall(driver.RegisterEvent, driver, ev)
    end
    driver:SetScript("OnEvent", function(_, event, arg1)
        if not next(states) then return end
        local ok, err = pcall(OnEvent, event, arg1)
        if not ok then AR.lastError = err end
    end)
end

---------------------------------------------------------------------------
-- Step tags
---------------------------------------------------------------------------
local functions = addon.functions

local function RuntimeElement(self)
    if type(self) ~= "table" then return nil end
    local el = self.element
    if type(el) ~= "table" then el = self.tag and self or nil end
    return el
end

-- .bestroute
function functions.bestroute(self, ...)
    if type(self) == "string" then
        return { textOnly = true, hidePin = true, attuneRoute = true }
    end
    local el = RuntimeElement(self)
    if el and el.step and el.step.active then Register(el) end
end

-- .combat (marker only)
if not functions.combat then
    function functions.combat(self, ...)
        if type(self) == "string" then return { textOnly = true, combatMarker = true } end
    end
end

-- .safepath <corridorId>
function functions.safepath(self, text, id)
    if type(self) == "string" then
        id = id and id:gsub("^%s+", ""):gsub("%s+$", "")
        local d = Data()
        if not (id and d and d.corridors and d.corridors[id]) then
            if addon.error then
                pcall(addon.error, "Unknown .safepath corridor (" .. tostring(id) .. ")\n" .. self)
            end
        end
        return { textOnly = true, hidePin = true, attuneRoute = true, safepath = true,
                 corridor = id, text = (text and text ~= "") and text or nil }
    end
    local el = RuntimeElement(self)
    if el and el.step and el.step.active then Register(el) end
end

---------------------------------------------------------------------------
-- Debug helper: /dump RXPGuides... is not available; use addon.attuneRoute.Explain()
---------------------------------------------------------------------------
function AR.Explain()
    local i = AR.last
    if not i then return "no computation yet" end
    local s = fmt("step %s reason %s kind %s cost %s walk %s plan %s tc %s death %s cpu %s",
        tostring(i.step), tostring(i.reason), tostring(i.kind), tostring(i.cost and floor(i.cost)),
        tostring(i.walk and floor(i.walk)), tostring(i.plan and floor(i.plan)),
        tostring(i.tc), tostring(i.death), tostring(i.cpuMs))
    for _, r in ipairs(i.spots or {}) do
        s = s .. fmt("\n  %s tS %s tG %s cost %s wait %s", r.id, tostring(r.tS and floor(r.tS)),
            tostring(r.tG and floor(r.tG)), tostring(r.cost and floor(r.cost)), tostring(r.wait and floor(r.wait)))
    end
    return s
end

---------------------------------------------------------------------------
-- Translations (same placeholders as the English key)
---------------------------------------------------------------------------
if addon.AddGroupTranslations then
    pcall(addon.AddGroupTranslations, {
        frFR = {
            ["Hearth to %s"] = "Pierre de foyer vers %s",
            ["hearth to %s"] = "pierre de foyer vers %s",
            ["Fly to %s"] = "Vole vers %s",
            ["fly to %s"] = "vole vers %s",
            ["Take the boat to %s"] = "Prends le bateau pour %s",
            ["take the boat to %s"] = "prends le bateau pour %s",
            ["Take the zeppelin to %s"] = "Prends le zeppelin pour %s",
            ["take the zeppelin to %s"] = "prends le zeppelin pour %s",
            ["Take the Deeprun Tram to %s"] = "Prends le tram des profondeurs pour %s",
            ["take the Deeprun Tram to %s"] = "prends le tram des profondeurs pour %s",
            ["Get the %s flight path"] = "Prends le point de vol de %s",
            ["get the %s flight path"] = "prends le point de vol de %s",
            ["Die in the lava (%s), respawn at %s"] = "Meurs dans la lave (%s), réapparais à %s",
            ["die in the lava (%s), respawn at %s"] = "meurs dans la lave (%s), réapparais à %s",
            ["Jump off the ledge (%s), respawn at %s"] = "Saute de la corniche (%s), réapparais à %s",
            ["jump off the ledge (%s), respawn at %s"] = "saute de la corniche (%s), réapparais à %s",
            ["Let %s kill you (%s), respawn at %s"] = "Laisse %s te tuer (%s), réapparais à %s",
            ["let %s kill you (%s), respawn at %s"] = "laisse %s te tuer (%s), réapparais à %s",
            ["Drown (%s), respawn at %s"] = "Noie-toi (%s), réapparais à %s",
            ["drown (%s), respawn at %s"] = "noie-toi (%s), réapparais à %s",
            ["Release your spirit"] = "Libère ton esprit",
            ["Talk to the Spirit Healer (%s)"] = "Parle au gardien des âmes (%s)",
            ["Ride: follow the arrow (safe path)"] = "À cheval : suis la flèche (chemin sûr)",
            ["Safe path (%d/%d)"] = "Chemin sûr (%d/%d)",
        },
        deDE = {
            ["Hearth to %s"] = "Ruhestein nach %s",
            ["hearth to %s"] = "Ruhestein nach %s",
            ["Fly to %s"] = "Fliege nach %s",
            ["fly to %s"] = "fliege nach %s",
            ["Take the boat to %s"] = "Nimm das Schiff nach %s",
            ["take the boat to %s"] = "nimm das Schiff nach %s",
            ["Take the zeppelin to %s"] = "Nimm den Zeppelin nach %s",
            ["take the zeppelin to %s"] = "nimm den Zeppelin nach %s",
            ["Take the Deeprun Tram to %s"] = "Nimm die Tiefenbahn nach %s",
            ["take the Deeprun Tram to %s"] = "nimm die Tiefenbahn nach %s",
            ["Get the %s flight path"] = "Hol dir den Flugpunkt %s",
            ["get the %s flight path"] = "hol dir den Flugpunkt %s",
            ["Die in the lava (%s), respawn at %s"] = "Stirb in der Lava (%s), Wiederbelebung bei %s",
            ["die in the lava (%s), respawn at %s"] = "stirb in der Lava (%s), Wiederbelebung bei %s",
            ["Jump off the ledge (%s), respawn at %s"] = "Spring von der Klippe (%s), Wiederbelebung bei %s",
            ["jump off the ledge (%s), respawn at %s"] = "spring von der Klippe (%s), Wiederbelebung bei %s",
            ["Let %s kill you (%s), respawn at %s"] = "Lass dich von %s töten (%s), Wiederbelebung bei %s",
            ["let %s kill you (%s), respawn at %s"] = "lass dich von %s töten (%s), Wiederbelebung bei %s",
            ["Drown (%s), respawn at %s"] = "Ertrinke (%s), Wiederbelebung bei %s",
            ["drown (%s), respawn at %s"] = "ertrinke (%s), Wiederbelebung bei %s",
            ["Release your spirit"] = "Lass deinen Geist frei",
            ["Talk to the Spirit Healer (%s)"] = "Sprich mit dem Geistheiler (%s)",
            ["Ride: follow the arrow (safe path)"] = "Reite: folge dem Pfeil (sicherer Weg)",
            ["Safe path (%d/%d)"] = "Sicherer Weg (%d/%d)",
        },
        esES = {
            ["Hearth to %s"] = "Piedra de hogar a %s",
            ["hearth to %s"] = "piedra de hogar a %s",
            ["Fly to %s"] = "Vuela a %s",
            ["fly to %s"] = "vuela a %s",
            ["Take the boat to %s"] = "Toma el barco a %s",
            ["take the boat to %s"] = "toma el barco a %s",
            ["Take the zeppelin to %s"] = "Toma el zepelín a %s",
            ["take the zeppelin to %s"] = "toma el zepelín a %s",
            ["Take the Deeprun Tram to %s"] = "Toma el Tranvía Subterráneo a %s",
            ["take the Deeprun Tram to %s"] = "toma el Tranvía Subterráneo a %s",
            ["Get the %s flight path"] = "Consigue la ruta de vuelo de %s",
            ["get the %s flight path"] = "consigue la ruta de vuelo de %s",
            ["Die in the lava (%s), respawn at %s"] = "Muere en la lava (%s), reaparece en %s",
            ["die in the lava (%s), respawn at %s"] = "muere en la lava (%s), reaparece en %s",
            ["Jump off the ledge (%s), respawn at %s"] = "Salta del precipicio (%s), reaparece en %s",
            ["jump off the ledge (%s), respawn at %s"] = "salta del precipicio (%s), reaparece en %s",
            ["Let %s kill you (%s), respawn at %s"] = "Deja que %s te mate (%s), reaparece en %s",
            ["let %s kill you (%s), respawn at %s"] = "deja que %s te mate (%s), reaparece en %s",
            ["Drown (%s), respawn at %s"] = "Ahógate (%s), reaparece en %s",
            ["drown (%s), respawn at %s"] = "ahógate (%s), reaparece en %s",
            ["Release your spirit"] = "Libera tu espíritu",
            ["Talk to the Spirit Healer (%s)"] = "Habla con el ángel de la resurrección (%s)",
            ["Ride: follow the arrow (safe path)"] = "Monta: sigue la flecha (camino seguro)",
            ["Safe path (%d/%d)"] = "Camino seguro (%d/%d)",
        },
        itIT = {
            ["Hearth to %s"] = "Pietra del Ritorno a %s",
            ["hearth to %s"] = "pietra del ritorno a %s",
            ["Fly to %s"] = "Vola a %s",
            ["fly to %s"] = "vola a %s",
            ["Take the boat to %s"] = "Prendi la nave per %s",
            ["take the boat to %s"] = "prendi la nave per %s",
            ["Take the zeppelin to %s"] = "Prendi lo zeppelin per %s",
            ["take the zeppelin to %s"] = "prendi lo zeppelin per %s",
            ["Take the Deeprun Tram to %s"] = "Prendi la Tranvia degli Abissi per %s",
            ["take the Deeprun Tram to %s"] = "prendi la Tranvia degli Abissi per %s",
            ["Get the %s flight path"] = "Prendi il punto di volo di %s",
            ["get the %s flight path"] = "prendi il punto di volo di %s",
            ["Die in the lava (%s), respawn at %s"] = "Muori nella lava (%s), risorgi a %s",
            ["die in the lava (%s), respawn at %s"] = "muori nella lava (%s), risorgi a %s",
            ["Jump off the ledge (%s), respawn at %s"] = "Salta dalla scogliera (%s), risorgi a %s",
            ["jump off the ledge (%s), respawn at %s"] = "salta dalla scogliera (%s), risorgi a %s",
            ["Let %s kill you (%s), respawn at %s"] = "Fatti uccidere da %s (%s), risorgi a %s",
            ["let %s kill you (%s), respawn at %s"] = "fatti uccidere da %s (%s), risorgi a %s",
            ["Drown (%s), respawn at %s"] = "Annega (%s), risorgi a %s",
            ["drown (%s), respawn at %s"] = "annega (%s), risorgi a %s",
            ["Release your spirit"] = "Libera lo spirito",
            ["Talk to the Spirit Healer (%s)"] = "Parla con il Guaritore Spirituale (%s)",
            ["Ride: follow the arrow (safe path)"] = "Cavalca: segui la freccia (percorso sicuro)",
            ["Safe path (%d/%d)"] = "Percorso sicuro (%d/%d)",
        },
        ptBR = {
            ["Hearth to %s"] = "Pedra de Regresso para %s",
            ["hearth to %s"] = "pedra de regresso para %s",
            ["Fly to %s"] = "Voe para %s",
            ["fly to %s"] = "voe para %s",
            ["Take the boat to %s"] = "Pegue o barco para %s",
            ["take the boat to %s"] = "pegue o barco para %s",
            ["Take the zeppelin to %s"] = "Pegue o zepelim para %s",
            ["take the zeppelin to %s"] = "pegue o zepelim para %s",
            ["Take the Deeprun Tram to %s"] = "Pegue o Metrô Correfundo para %s",
            ["take the Deeprun Tram to %s"] = "pegue o Metrô Correfundo para %s",
            ["Get the %s flight path"] = "Pegue o ponto de voo de %s",
            ["get the %s flight path"] = "pegue o ponto de voo de %s",
            ["Die in the lava (%s), respawn at %s"] = "Morra na lava (%s), renasça em %s",
            ["die in the lava (%s), respawn at %s"] = "morra na lava (%s), renasça em %s",
            ["Jump off the ledge (%s), respawn at %s"] = "Pule do penhasco (%s), renasça em %s",
            ["jump off the ledge (%s), respawn at %s"] = "pule do penhasco (%s), renasça em %s",
            ["Let %s kill you (%s), respawn at %s"] = "Deixe %s matar você (%s), renasça em %s",
            ["let %s kill you (%s), respawn at %s"] = "deixe %s matar você (%s), renasça em %s",
            ["Drown (%s), respawn at %s"] = "Afogue-se (%s), renasça em %s",
            ["drown (%s), respawn at %s"] = "afogue-se (%s), renasça em %s",
            ["Release your spirit"] = "Libere o espírito",
            ["Talk to the Spirit Healer (%s)"] = "Fale com o Curandeiro Espiritual (%s)",
            ["Ride: follow the arrow (safe path)"] = "Monte: siga a seta (caminho seguro)",
            ["Safe path (%d/%d)"] = "Caminho seguro (%d/%d)",
        },
        ruRU = {
            ["Hearth to %s"] = "Камень возвращения: %s",
            ["hearth to %s"] = "камень возвращения: %s",
            ["Fly to %s"] = "Полёт: %s",
            ["fly to %s"] = "полёт: %s",
            ["Take the boat to %s"] = "Корабль: %s",
            ["take the boat to %s"] = "корабль: %s",
            ["Take the zeppelin to %s"] = "Дирижабль: %s",
            ["take the zeppelin to %s"] = "дирижабль: %s",
            ["Take the Deeprun Tram to %s"] = "Подземный поезд: %s",
            ["take the Deeprun Tram to %s"] = "подземный поезд: %s",
            ["Get the %s flight path"] = "Узнайте точку полёта: %s",
            ["get the %s flight path"] = "узнайте точку полёта: %s",
            ["Die in the lava (%s), respawn at %s"] = "Умрите в лаве (%s), воскрешение: %s",
            ["die in the lava (%s), respawn at %s"] = "умрите в лаве (%s), воскрешение: %s",
            ["Jump off the ledge (%s), respawn at %s"] = "Спрыгните с обрыва (%s), воскрешение: %s",
            ["jump off the ledge (%s), respawn at %s"] = "спрыгните с обрыва (%s), воскрешение: %s",
            ["Let %s kill you (%s), respawn at %s"] = "Дайте %s убить вас (%s), воскрешение: %s",
            ["let %s kill you (%s), respawn at %s"] = "дайте %s убить вас (%s), воскрешение: %s",
            ["Drown (%s), respawn at %s"] = "Утоните (%s), воскрешение: %s",
            ["drown (%s), respawn at %s"] = "утоните (%s), воскрешение: %s",
            ["Release your spirit"] = "Освободите дух",
            ["Talk to the Spirit Healer (%s)"] = "Поговорите с целителем душ (%s)",
            ["Ride: follow the arrow (safe path)"] = "Езжайте за стрелкой (безопасный путь)",
            ["Safe path (%d/%d)"] = "Безопасный путь (%d/%d)",
        },
        koKR = {
            ["Hearth to %s"] = "귀환석: %s",
            ["hearth to %s"] = "귀환석: %s",
            ["Fly to %s"] = "비행: %s",
            ["fly to %s"] = "비행: %s",
            ["Take the boat to %s"] = "배: %s",
            ["take the boat to %s"] = "배: %s",
            ["Take the zeppelin to %s"] = "비행선: %s",
            ["take the zeppelin to %s"] = "비행선: %s",
            ["Take the Deeprun Tram to %s"] = "깊은굴 지하철: %s",
            ["take the Deeprun Tram to %s"] = "깊은굴 지하철: %s",
            ["Get the %s flight path"] = "비행 경로 획득: %s",
            ["get the %s flight path"] = "비행 경로 획득: %s",
            ["Die in the lava (%s), respawn at %s"] = "용암에서 사망 (%s), 부활: %s",
            ["die in the lava (%s), respawn at %s"] = "용암에서 사망 (%s), 부활: %s",
            ["Jump off the ledge (%s), respawn at %s"] = "절벽에서 뛰어내리기 (%s), 부활: %s",
            ["jump off the ledge (%s), respawn at %s"] = "절벽에서 뛰어내리기 (%s), 부활: %s",
            ["Let %s kill you (%s), respawn at %s"] = "%s에게 사망 (%s), 부활: %s",
            ["let %s kill you (%s), respawn at %s"] = "%s에게 사망 (%s), 부활: %s",
            ["Drown (%s), respawn at %s"] = "익사 (%s), 부활: %s",
            ["drown (%s), respawn at %s"] = "익사 (%s), 부활: %s",
            ["Release your spirit"] = "영혼 해방",
            ["Talk to the Spirit Healer (%s)"] = "영혼의 치유사와 대화 (%s)",
            ["Ride: follow the arrow (safe path)"] = "이동: 화살표를 따라가세요 (안전한 길)",
            ["Safe path (%d/%d)"] = "안전한 길 (%d/%d)",
        },
        zhCN = {
            ["Hearth to %s"] = "炉石回到%s",
            ["hearth to %s"] = "炉石回到%s",
            ["Fly to %s"] = "飞往%s",
            ["fly to %s"] = "飞往%s",
            ["Take the boat to %s"] = "乘船前往%s",
            ["take the boat to %s"] = "乘船前往%s",
            ["Take the zeppelin to %s"] = "乘飞艇前往%s",
            ["take the zeppelin to %s"] = "乘飞艇前往%s",
            ["Take the Deeprun Tram to %s"] = "乘矿道地铁前往%s",
            ["take the Deeprun Tram to %s"] = "乘矿道地铁前往%s",
            ["Get the %s flight path"] = "获取%s飞行点",
            ["get the %s flight path"] = "获取%s飞行点",
            ["Die in the lava (%s), respawn at %s"] = "跳进岩浆死亡(%s)，在%s复活",
            ["die in the lava (%s), respawn at %s"] = "跳进岩浆死亡(%s)，在%s复活",
            ["Jump off the ledge (%s), respawn at %s"] = "跳下悬崖(%s)，在%s复活",
            ["jump off the ledge (%s), respawn at %s"] = "跳下悬崖(%s)，在%s复活",
            ["Let %s kill you (%s), respawn at %s"] = "让%s杀死你(%s)，在%s复活",
            ["let %s kill you (%s), respawn at %s"] = "让%s杀死你(%s)，在%s复活",
            ["Drown (%s), respawn at %s"] = "溺水死亡(%s)，在%s复活",
            ["drown (%s), respawn at %s"] = "溺水死亡(%s)，在%s复活",
            ["Release your spirit"] = "释放灵魂",
            ["Talk to the Spirit Healer (%s)"] = "与灵魂医者交谈(%s)",
            ["Ride: follow the arrow (safe path)"] = "骑行：跟随箭头(安全路线)",
            ["Safe path (%d/%d)"] = "安全路线(%d/%d)",
        },
        zhTW = {
            ["Hearth to %s"] = "爐石回到%s",
            ["hearth to %s"] = "爐石回到%s",
            ["Fly to %s"] = "飛往%s",
            ["fly to %s"] = "飛往%s",
            ["Take the boat to %s"] = "搭船前往%s",
            ["take the boat to %s"] = "搭船前往%s",
            ["Take the zeppelin to %s"] = "搭飛艇前往%s",
            ["take the zeppelin to %s"] = "搭飛艇前往%s",
            ["Take the Deeprun Tram to %s"] = "搭礦道地鐵前往%s",
            ["take the Deeprun Tram to %s"] = "搭礦道地鐵前往%s",
            ["Get the %s flight path"] = "取得%s飛行點",
            ["get the %s flight path"] = "取得%s飛行點",
            ["Die in the lava (%s), respawn at %s"] = "跳進岩漿死亡(%s)，在%s復活",
            ["die in the lava (%s), respawn at %s"] = "跳進岩漿死亡(%s)，在%s復活",
            ["Jump off the ledge (%s), respawn at %s"] = "跳下懸崖(%s)，在%s復活",
            ["jump off the ledge (%s), respawn at %s"] = "跳下懸崖(%s)，在%s復活",
            ["Let %s kill you (%s), respawn at %s"] = "讓%s殺死你(%s)，在%s復活",
            ["let %s kill you (%s), respawn at %s"] = "讓%s殺死你(%s)，在%s復活",
            ["Drown (%s), respawn at %s"] = "溺水死亡(%s)，在%s復活",
            ["drown (%s), respawn at %s"] = "溺水死亡(%s)，在%s復活",
            ["Release your spirit"] = "釋放靈魂",
            ["Talk to the Spirit Healer (%s)"] = "與靈魂醫者交談(%s)",
            ["Ride: follow the arrow (safe path)"] = "騎行：跟隨箭頭(安全路線)",
            ["Safe path (%d/%d)"] = "安全路線(%d/%d)",
        },
    })
end
