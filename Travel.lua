-- Travel.lua : ordonnancement de taches + trajet optimal (marche, vols connus,
-- pierre de foyer, bateaux / zeppelins / tram) pour les guides generes (Prereq.lua).
--
-- API (+ prise des points de vol inconnus croises en route, kind="fp") :
--   addon.travel.Plan(tasks) -> liste ordonnee de taches (tables d'origine) et
--       d'entrees de voyage { travel=true, lines={...}, text="..." }
--   addon.travel.TimeTo(uiMap, x, y) -> secondes estimees depuis le joueur (ou nil)
--
-- Coordonnees "monde" = convention HereBeDragons-2.0 (x, y, instance), soit
-- x = 2e valeur de UnitPosition, y = 1re valeur. Les guides Forever utilisent ce
-- format dans ".goto <uiMap>/<instance>,x,y".
-- Tout est protege : en cas de donnees manquantes on rend les taches telles quelles.

local _, addon = ...

local travel = addon.travel or {} -- TravelFlightMasters.lua peut deja l avoir cree
addon.travel = travel

local _G = _G
local fmt = string.format
local sqrt = math.sqrt
local INF = 1e7 -- "infranchissable" (reste fini pour les additions)

---------------------------------------------------------------------------
-- Reglages (secondes, yards/s)
---------------------------------------------------------------------------
local CFG = {
    walk = 7.0,          -- a pied
    mount60 = 11.2,      -- monture 60 %
    mount100 = 14.0,     -- monture 100 %
    detour = 1.25,       -- la marche n'est jamais en ligne droite
    flyOverhead = 20,    -- parler au maitre de vol + atterrissage
    flySpeed = 30,       -- secours si pas de temps dans FPDB
    flyDetour = 1.2,
    hearth = 25,         -- incantation 10 s + chargement
    boat = 170,          -- attente moyenne + traversee
    zeppelin = 170,
    tram = 90,
    taskTime = 30,       -- duree par defaut d'une tache (pour le CD du foyer)
    budgetMs = 150,      -- temps CPU max pour l'optimisation
    fpRadius = 150,      -- point de vol inconnu a moins de X yd du trajet a pied : on le prend
    fpPickup = 10,       -- temps pour parler au maitre de vol
    fpMaxRoutable = 3,   -- nb max de vols appris en route reutilises par le routage
}
travel.config = CFG

---------------------------------------------------------------------------
-- Donnees statiques
---------------------------------------------------------------------------
-- Transports. Points en "uiMap/instance,x,y" (repris des guides Forever quand
-- possible). zone = carte d'arrivee (pour ".zone"), name = texte affiche.
local TRANSPORTS = {
    { kind = "boat", faction = "Alliance",
      a = { g = "1437/0,-599.46,-3895.60", zone = 1437, name = "Menethil Harbor" },
      b = { g = "1445/1,-4726.65,-4003.83", zone = 1445, name = "Theramore" } },
    { kind = "boat", faction = "Alliance",
      a = { g = "1437/0,-581.80,-3722.40", zone = 1437, name = "Menethil Harbor" },
      b = { g = "1439/1,816.85,6424.66", zone = 1439, name = "Darkshore" } },
    -- Forever : bateau Menethil <-> Southshore (et Southshore -> Darkshore via Menethil)
    { kind = "boat", faction = "Alliance",
      a = { g = "1437/0,-581.80,-3722.40", zone = 1437, name = "Menethil Harbor" },
      b = { g = "1424/0,-551.60,-1087.00", zone = 1424, name = "Southshore" } },
    -- Forever : bateau port de Stormwind <-> Auberdine
    { kind = "boat", faction = "Alliance",
      a = { g = "1453/0,1330.10,-8645.40", zone = 1453, name = "Stormwind City" },
      b = { g = "1439/1,929.10,6543.60", zone = 1439, name = "Darkshore" } },
    -- quai de Rut'theran approximatif (position du maitre de vol)
    { kind = "boat", faction = "Alliance",
      a = { g = "1439/1,769.16,6577.50", zone = 1439, name = "Darkshore" },
      b = { g = "1438/1,841.04,8643.59", zone = 1438, name = "Rut'theran Village" } },
    { kind = "boat",
      a = { g = "1413/1,-3836.07,-999.47", zone = 1413, name = "Ratchet" },
      b = { g = "1434/0,574.47,-14278.55", zone = 1434, name = "Booty Bay" } },
    { kind = "zeppelin", faction = "Horde",
      a = { g = "1411/1,-4648.55,1321.88", zone = 1411, name = "Durotar" },
      b = { g = "1420/0,299.04,2069.46", zone = 1420, name = "Tirisfal Glades" } },
    { kind = "zeppelin", faction = "Horde",
      a = { g = "1411/1,-4648.55,1321.88", zone = 1411, name = "Durotar" },
      b = { g = "1434/0,167.99,-12396.50", zone = 1434, name = "Grom'gol Base Camp" } },
    { kind = "zeppelin", faction = "Horde",
      a = { g = "1420/0,236.70,2056.70", zone = 1420, name = "Tirisfal Glades" },
      b = { g = "1434/0,167.99,-12396.50", zone = 1434, name = "Grom'gol Base Camp" } },
    { kind = "tram", faction = "Alliance",
      a = { g = "1453/0,520.64,-8351.46", zone = 1453, name = "Stormwind City" },
      b = { g = "1455/0,-1319.29,-4839.80", zone = 1455, name = "Ironforge" } },
}

local KIND_TEXT = { boat = "boat", zeppelin = "zeppelin", tram = "Deeprun Tram" }

-- Auberges : nom renvoye par GetBindLocation() (en minuscules) -> position.
-- Chaine = coordonnees monde des etapes ".home" des guides Forever ;
-- table = {uiMap, x%, y%} approximatif.
local INNS = {
    ["stormwind city"] = "1453/0,673.58,-8867.76",
    ["ironforge"] = "1455/0,-856.69,-4841.49",
    ["orgrimmar"] = "1454/1,-4439.41,1633.87",
    ["thunder bluff"] = "1456/1,38.32,-1300.48",
    ["undercity"] = "1458/0,223.31,1634.96",
    ["darnassus"] = "1457/1,2224.79,10127.90",
    ["theramore isle"] = "1445/1,-4470.82,-3616.14",
    ["southshore"] = "1424/0,-570.77,-857.11",
    ["tarren mill"] = "1424/0,-941.97,-5.76",
    ["nijel's point"] = "1443/1,1253.72,255.60",
    ["shadowprey village"] = "1443/1,3150.29,-1592.80",
    ["everlook"] = "1452/1,-4673.08,6695.05",
    ["camp mojache"] = "1444/1,242.37,-4460.01",
    ["feathermoon stronghold"] = "1444/1,3289.53,-4381.61",
    ["freewind post"] = "1441/1,-2460.41,-5477.33",
    ["auberdine"] = "1439/1,515.55,6406.32",
    ["menethil harbor"] = "1437/0,-831.66,-3827.85",
    ["booty bay"] = "1434/0,495.34,-14457.65",
    ["grom'gol base camp"] = "1434/0,211.38,-12434.36",
    ["thelsamar"] = "1432/0,-2973.90,-5377.93",
    ["light's hope chapel"] = "1423/0,-5345.06,2300.89",
    ["splintertree post"] = "1440/1,-2567.33,2342.07",
    ["astranaar"] = "1440/1,-433.09,2781.02",
    ["camp taurajo"] = "1413/1,-1995.86,-2376.39",
    ["crossroads"] = "1413/1,-2645.40,-406.94",
    ["ratchet"] = "1413/1,-3664.82,-1050.14",
    ["gadgetzan"] = "1446/1,-3841.94,-7158.86",
    ["darkshire"] = "1431/0,-1161.16,-10515.87",
    ["kharanos"] = "1426/0,-531.23,-5601.59",
    ["dolanaar"] = "1438/1,982.65,9802.19",
    ["goldshire"] = "1429/0,16.20,-9462.65",
    ["hammerfall"] = "1417/0,-3524.91,-912.61",
    ["lakeshire"] = "1433/0,-2152.62,-9223.67",
    ["razor hill"] = "1411/1,-4686.09,340.52",
    ["brill"] = "1420/0,244.81,2269.19",
    ["bloodhoof village"] = "1412/1,-347.70,-2365.25",
    ["powderfuse port"] = "2548/0,-5711.60,-8212.50",
    ["farholde keep"] = "2548/0,-5026.90,-9187.40",
    -- approximatifs (zone %)
    ["shadowglen"] = { 1438, 58.6, 40.8 },
    ["sentinel hill"] = { 1436, 52.9, 53.6 },
    ["stonetalon peak"] = { 1442, 35.6, 5.8 },
    ["sun rock retreat"] = { 1442, 47.5, 62.1 },
    ["stonard"] = { 1435, 45.0, 56.6 },
    ["kargath"] = { 1418, 2.9, 47.6 },
    ["aerie peak"] = { 1425, 13.9, 41.6 },
    ["revantusk village"] = { 1425, 78.1, 81.4 },
    ["cenarion hold"] = { 1451, 51.9, 39.1 },
    ["nighthaven"] = { 1450, 44.2, 45.3 },
    ["brackenwall village"] = { 1445, 35.6, 31.1 },
    ["shen'dar village"] = { 2521, 43.02, 43.24 },
    ["valanaar"] = { 2521, 43.02, 43.24 },
}
local INN_ALIASES = {
    ["stormwind"] = "stormwind city", ["trade district"] = "stormwind city",
    ["the commons"] = "ironforge", ["valley of strength"] = "orgrimmar",
    ["lower rise"] = "thunder bluff", ["the trade quarter"] = "undercity",
    ["craftsmen's terrace"] = "darnassus", ["theramore"] = "theramore isle",
    ["the crossroads"] = "crossroads", ["grom'gol"] = "grom'gol base camp",
    ["light's hope"] = "light's hope chapel", ["feathermoon"] = "feathermoon stronghold",
}

local HEARTHSTONE = 6948
local CONTINENT_MAP = { [0] = 1415, [1] = 1414 }

---------------------------------------------------------------------------
-- Utilitaires
---------------------------------------------------------------------------
local function HBD()
    return _G.LibStub and _G.LibStub("HereBeDragons-2.0", true)
end

local function Clean(s)
    s = tostring(s or "?")
    s = s:gsub("[%[%]\r\n]", " "):gsub("|", "/"):gsub(">>", ">"):gsub("<<", "<")
    return s
end

-- "1437/0,-581.80,-3722.40" -> {wx, wy, inst, map}
local function ParseWorld(g)
    local map, inst, x, y = tostring(g):match("^(%d+)/(%d+),%s*([%-%d%.]+),%s*([%-%d%.]+)")
    if not map then return nil end
    return { wx = tonumber(x), wy = tonumber(y), inst = tonumber(inst), map = tonumber(map) }
end

-- zone % -> point monde (nil si HBD ne connait pas la carte)
local function ZonePoint(uiMap, x, y)
    local hbd = HBD()
    if not (hbd and uiMap and x and y) then return nil end
    local ok, wx, wy, inst = pcall(hbd.GetWorldCoordinatesFromZone, hbd, x / 100, y / 100, uiMap)
    if ok and wx and wy and inst then
        return { wx = wx, wy = wy, inst = inst, map = uiMap }
    end
    return nil
end

local function Dist(a, b)
    local dx, dy = a.wx - b.wx, a.wy - b.wy
    return sqrt(dx * dx + dy * dy)
end

local function IsKnownSpell(id)
    local f = _G.IsPlayerSpell or _G.IsSpellKnown
    if not f then return false end
    local ok, r = pcall(f, id)
    return ok and r and true or false
end

local function GroundSpeed()
    if IsKnownSpell(33391) or IsKnownSpell(34090) or IsKnownSpell(34091) or IsKnownSpell(90265) then
        return CFG.mount100
    elseif IsKnownSpell(33388) or (_G.UnitLevel and (_G.UnitLevel("player") or 1) >= 40) then
        return CFG.mount60
    end
    return CFG.walk
end

local function Faction()
    local f = _G.UnitFactionGroup and _G.UnitFactionGroup("player")
    return f
end

local function Now()
    return _G.GetTime and _G.GetTime() or 0
end

---------------------------------------------------------------------------
-- Pierre de foyer
---------------------------------------------------------------------------
local function InnPoint(bind)
    if not bind or bind == "" then return nil end
    local key = bind:lower()
    key = INN_ALIASES[key] or key
    local v = INNS[key]
    if not v then -- correspondance partielle ("Razor Hill Inn", etc.)
        for k, val in pairs(INNS) do
            if key:find(k, 1, true) or k:find(key, 1, true) then v = val break end
        end
    end
    if type(v) == "string" then return ParseWorld(v) end
    if type(v) == "table" then return ZonePoint(v[1], v[2], v[3]) end
    return nil
end

local function HearthInfo()
    local count
    if _G.C_Item and _G.C_Item.GetItemCount then
        local ok, c = pcall(_G.C_Item.GetItemCount, HEARTHSTONE)
        count = ok and c
    elseif _G.GetItemCount then
        local ok, c = pcall(_G.GetItemCount, HEARTHSTONE)
        count = ok and c
    end
    if not count or count < 1 then return nil end
    local bind = _G.GetBindLocation and _G.GetBindLocation()
    local point = InnPoint(bind)
    if not point then return nil end
    local start, duration
    if _G.C_Container and _G.C_Container.GetItemCooldown then
        local ok, s, d = pcall(_G.C_Container.GetItemCooldown, HEARTHSTONE)
        if ok then start, duration = s, d end
    elseif _G.GetItemCooldown then
        local ok, s, d = pcall(_G.GetItemCooldown, HEARTHSTONE)
        if ok then start, duration = s, d end
    end
    local readyIn = 0
    if start and duration and start > 0 and duration > 0 then
        readyIn = math.max(0, start + duration - Now())
    end
    return { point = point, name = Clean(bind), readyIn = readyIn }
end


---------------------------------------------------------------------------
-- Maitres de vol
---------------------------------------------------------------------------
-- Tous les maitres de vol de la faction du joueur (ou neutres) qui ont une
-- position dans taxiPos ; known = deja dans RXPCData.flightPaths.
local function AllFlights(faction)
    local all = {}
    local db = addon.FPDB and faction and addon.FPDB[faction]
    local pos = addon.taxiPos
    local known = _G.RXPCData and _G.RXPCData.flightPaths
    if type(known) ~= "table" then known = {} end
    if type(db) ~= "table" or type(pos) ~= "table" then return all end
    all.db = db
    local fbit = (faction == "Alliance" and 1) or (faction == "Horde" and 2) or 3
    local band = _G.bit and _G.bit.band

    -- cartes de chaque noeud (FPbyZone inverse) pour .goto/.zoneskip
    local nodeMaps = {}
    local byZone = addon.FPbyZone and addon.FPbyZone[faction]
    if type(byZone) == "table" then
        for map, id in pairs(byZone) do
            nodeMaps[id] = nodeMaps[id] or {}
            table.insert(nodeMaps[id], map)
        end
    end

    for inst, nodes in pairs(pos) do
        if type(nodes) == "table" then
            for id, t in pairs(nodes) do
                local okFlag = (not t.flag) or (not band) or band(t.flag, fbit) ~= 0
                if type(db[id]) == "table" and okFlag and t.wx and t.wy then
                    table.insert(all, {
                        fp = true, id = id, name = db[id].name or known[id],
                        known = known[id] and true or false,
                        wx = t.wy, wy = t.wx, inst = inst, -- taxiPos = UnitPosition (inverse)
                        maps = nodeMaps[id] or {},
                    })
                end
            end
        end
    end

    -- nom court non ambigu pour ".fly"/".fp" (RXP cherche une sous-chaine du nom FPDB)
    local upper = {}
    for id, d in pairs(db) do
        if type(d) == "table" and d.name then upper[id] = d.name:upper() end
    end
    for _, fp in ipairs(all) do
        local full = tostring(fp.name or "")
        local short = full:match("^([^,]+)") or full
        short = short:gsub("^%s+", ""):gsub("%s+$", "")
        local s = short:upper()
        local unique = s ~= ""
        for id, u in pairs(upper) do
            if id ~= fp.id and u:find(s, 1, true) then unique = false break end
        end
        fp.shortName = short ~= "" and short or full
        fp.flyName = unique and short or full
    end
    return all
end

-- Sous-ensemble utilisable (connus + "extra" = pris pendant le plan), avec la
-- matrice des temps de vol (plus courts chemins sur ces seuls noeuds).
-- Renvoie des copies : chaque graphe a ses propres indices.
local function FlightSubset(all, extra)
    local list = {}
    local db = all.db
    if not db then return list end
    for _, b in ipairs(all) do
        if b.known or (extra and extra[b.id]) then
            table.insert(list, {
                fp = true, base = b, id = b.id, name = b.name, wx = b.wx, wy = b.wy,
                inst = b.inst, maps = b.maps, flyName = b.flyName, shortName = b.shortName,
            })
        end
    end

    -- temps de vol direct (FPDB, dans un sens ou l'autre)
    local n = #list
    local ft = {}
    for i = 1, n do
        ft[i] = {}
        local a = list[i]
        local hasData = false
        for j = 1, n do
            if i == j then
                ft[i][j] = 0
            else
                local b = list[j]
                local t = (db[a.id] and db[a.id][b.id]) or (db[b.id] and db[b.id][a.id])
                if type(t) == "number" then
                    ft[i][j] = t
                    hasData = true
                else
                    ft[i][j] = INF
                end
            end
        end
        a.hasData = hasData
    end
    -- noeud sans donnees FPDB : estimation geometrique
    for i = 1, n do
        for j = 1, n do
            if i ~= j and ft[i][j] >= INF and list[i].inst == list[j].inst
                and (not list[i].hasData or not list[j].hasData) then
                ft[i][j] = Dist(list[i], list[j]) * CFG.flyDetour / CFG.flySpeed
            end
        end
    end
    -- Floyd-Warshall (le jeu enchaine les vols automatiquement via les noeuds connus)
    for k = 1, n do
        local fk = ft[k]
        for i = 1, n do
            local fi = ft[i]
            local fik = fi[k]
            if fik < INF then
                for j = 1, n do
                    local v = fik + fk[j]
                    if v < fi[j] then fi[j] = v end
                end
            end
        end
    end
    for i = 1, n do list[i].fpIndex = i end
    list.ft = ft
    return list
end

---------------------------------------------------------------------------
-- Graphe et Dijkstra
---------------------------------------------------------------------------
-- points : tableau (indices 1..n) de points monde ou false (tache sans position)
-- all : AllFlights(faction) ; extra : ids de vols consideres connus en plus
local function BuildGraph(points, all, extra)
    local faction = Faction()
    local G = { N = {}, speed = GroundSpeed(), faction = faction }
    local N = G.N
    local n = #points
    for i = 1, n do N[i] = points[i] or false end
    G.nPoints = n

    -- vols
    local fps = FlightSubset(all or AllFlights(faction), extra)
    G.fps = fps
    for _, fp in ipairs(fps) do
        N[#N + 1] = fp
        fp.node = #N
    end

    -- transports
    for _, r in ipairs(TRANSPORTS) do
        if not r.faction or r.faction == faction then
            local pa, pb = ParseWorld(r.a.g), ParseWorld(r.b.g)
            if pa and pb then
                pa.dock, pb.dock = r.a, r.b
                N[#N + 1] = pa; local ia = #N
                N[#N + 1] = pb; local ib = #N
                local t = CFG[r.kind] or CFG.boat
                pa.links = { { to = ib, time = t, route = r, from = r.a, dest = r.b } }
                pb.links = { { to = ia, time = t, route = r, from = r.b, dest = r.a } }
            end
        end
    end

    -- matrice de marche (meme continent seulement)
    local V = #N
    local W = {}
    local k = CFG.detour / G.speed
    for u = 1, V do
        local row = {}
        local pu = N[u]
        if pu then
            for v = 1, V do
                local pv = N[v]
                if v ~= u and pv and pv.inst == pu.inst then
                    row[v] = Dist(pu, pv) * k
                end
            end
        end
        W[u] = row
    end
    G.W = W
    G.k = k
    return G
end

-- plus courts chemins depuis un point monde quelconque
local function Dijkstra(G, src)
    local N, W, k = G.N, G.W, G.k
    local V = #N
    local dist, pred, mode, link, done = {}, {}, {}, {}, {}
    for v = 1, V do
        local p = N[v]
        if p and src and p.inst == src.inst then
            dist[v] = Dist(src, p) * k
            pred[v] = 0
            mode[v] = "walk"
        else
            dist[v] = INF
        end
    end
    local fps, ft = G.fps, G.fps.ft
    for _ = 1, V do
        local u, du = nil, INF
        for v = 1, V do
            if not done[v] and dist[v] < du then u, du = v, dist[v] end
        end
        if not u then break end
        done[u] = true
        local pu = N[u]
        -- marche
        for v, w in pairs(W[u]) do
            if not done[v] and du + w < dist[v] then
                dist[v], pred[v], mode[v], link[v] = du + w, u, "walk", nil
            end
        end
        -- vol
        if pu.fp and ft then
            local row = ft[pu.fpIndex]
            for j, fp in ipairs(fps) do
                local t = row[j]
                if t and t < INF and j ~= pu.fpIndex then
                    local v = fp.node
                    local nd = du + t + CFG.flyOverhead
                    if not done[v] and nd < dist[v] then
                        dist[v], pred[v], mode[v], link[v] = nd, u, "fly", nil
                    end
                end
            end
        end
        -- bateau / zeppelin / tram
        if pu.links then
            for _, l in ipairs(pu.links) do
                local v = l.to
                local nd = du + l.time
                if not done[v] and nd < dist[v] then
                    dist[v], pred[v], mode[v], link[v] = nd, u, "transport", l
                end
            end
        end
    end
    return { dist = dist, pred = pred, mode = mode, link = link }
end

---------------------------------------------------------------------------
-- Lignes de guide
---------------------------------------------------------------------------
-- zone d'un point monde via C_Map (si le noeud n'est pas dans FPbyZone)
local function ZoneOfWorld(p)
    local hbd, cmap = HBD(), _G.C_Map
    local cont = CONTINENT_MAP[p.inst]
    if not (hbd and cmap and cmap.GetMapInfoAtPosition and cont) then return nil end
    local ok, cx, cy = pcall(hbd.GetZoneCoordinatesFromWorld, hbd, p.wx, p.wy, cont)
    if not (ok and cx and cy) then return nil end
    local ok2, info = pcall(cmap.GetMapInfoAtPosition, cont, cx, cy)
    if ok2 and type(info) == "table" and info.mapID and info.mapID ~= cont then
        return info.mapID
    end
    return nil
end

local function NodeMaps(fp)
    if fp.maps and #fp.maps == 0 and not fp.mapsLooked then
        fp.mapsLooked = true
        local m = ZoneOfWorld(fp)
        if m then table.insert(fp.maps, m) end
    end
    return fp.maps
end

local function WorldGoto(p, maps)
    local hbd = HBD()
    local chosen
    if hbd and maps then
        for _, m in ipairs(maps) do
            local ok, zx, zy = pcall(hbd.GetZoneCoordinatesFromWorld, hbd, p.wx, p.wy, m)
            if ok and zx and zy then chosen = m break end
        end
    end
    chosen = chosen or p.map or CONTINENT_MAP[p.inst]
    if not chosen then return nil end
    return fmt("    .goto %d/%d,%.2f,%.2f", chosen, p.inst, p.wx, p.wy)
end

-- ligne ".target Nom::id" du maitre de vol (macro de ciblage RXP), nil si inconnu
local function TargetLine(nodeId)
    local fm = travel.flightMasters and travel.flightMasters[nodeId]
    if type(fm) ~= "table" or not fm.name then return nil end
    if fm.id then return fmt("    .target %s::%d", Clean(fm.name), fm.id) end
    return "    .target " .. Clean(fm.name)
end

local function FlyEntry(G, fromNode, toNode)
    local a, b = G.N[fromNode], G.N[toNode]
    NodeMaps(a)
    NodeMaps(b)
    local lines = {}
    local gl = WorldGoto(a, a.maps)
    if gl then table.insert(lines, gl) end
    local name = Clean(b.flyName or b.name)
    local from = Clean(a.shortName or a.flyName or a.name)
    local key = "Go to the %s flight master and fly to %s"
    local text = fmt((addon.groupL or {})[key] or key, from, name)
    table.insert(lines, fmt("    .fly %s >>%s", name, text))
    local tl = TargetLine(a.id)
    if tl then table.insert(lines, tl) end
    -- valide l'etape si on est deja arrive (zone differente du depart)
    if b.maps and #b.maps > 0 then
        local overlap = false
        for _, m1 in ipairs(a.maps or {}) do
            for _, m2 in ipairs(b.maps) do
                if m1 == m2 then overlap = true end
            end
        end
        if not overlap then
            local ids = {}
            for _, m in ipairs(b.maps) do ids[#ids + 1] = tostring(m) end
            table.insert(lines, "    .zoneskip " .. table.concat(ids, "/"))
        end
    end
    return { travel = true, kind = "fly", lines = lines, text = text }
end

local function TransportEntry(l)
    local kind = l.route.kind
    local key = ({ boat = "Take the boat to %s", zeppelin = "Take the zeppelin to %s", tram = "Take the Deeprun Tram to %s" })[kind] or "Take the boat to %s"
    local text = fmt((addon.groupL or {})[key] or key, Clean(l.dest.name))
    local lines = {
        "    .goto " .. l.from.g,
        fmt("    .zone %d >>%s", l.dest.zone, text),
    }
    return { travel = true, kind = kind, lines = lines, text = text }
end

local function HearthEntry(hs)
    local text = fmt((addon.groupL or {})["Hearth to %s"] or "Hearth to %s", hs.name)
    return {
        travel = true, kind = "hearth", text = text,
        lines = { fmt("    .hs >>%s", text), fmt("    .use %d", HEARTHSTONE) },
    }
end

-- prise d'un point de vol inconnu (RXP valide seul l'etape si deja connu)
local function FpEntry(b)
    NodeMaps(b)
    local lines = {}
    local gl = WorldGoto(b, b.maps)
    if gl then table.insert(lines, gl) end
    local text = fmt((addon.groupL or {})["Get the %s flight path (if you don't have it yet)"] or "Get the %s flight path (if you don't have it yet)", Clean(b.shortName or b.name))
    table.insert(lines, fmt("    .fp %s >>%s", Clean(b.flyName or b.name), text))
    local tl = TargetLine(b.id)
    if tl then table.insert(lines, tl) end
    return { travel = true, kind = "fp", lines = lines, text = text, fpId = b.id }
end

-- distance d'un point p au segment [a, b] (meme continent), sinon INF
local function SegDist(p, a, b)
    if not (a and b) or p.inst ~= a.inst or p.inst ~= b.inst then return INF, 0 end
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

-- aretes du plus court chemin src -> target (from = 0 : le point de depart)
local function PathEdges(res, target)
    local edges = {}
    if not res or res.dist[target] >= INF then return edges end
    local v, guard = target, 0
    while v and v ~= 0 and guard < 500 do
        guard = guard + 1
        local u = res.pred[v]
        if u == nil then break end
        table.insert(edges, 1, { from = u, to = v, mode = res.mode[v], link = res.link[v] })
        v = u
    end
    return edges
end

-- points de vol inconnus a moins de fpRadius d'une arete de marche
-- (tries dans l'ordre du trajet)
local function WalkPickups(G, srcPt, e, unknown)
    local a = (e.from == 0) and srcPt or G.N[e.from]
    local b = G.N[e.to]
    local found = {}
    for _, fp in ipairs(unknown) do
        local d, t = SegDist(fp, a, b)
        if d <= CFG.fpRadius then
            table.insert(found, { fp = fp, d = d, t = t })
        end
    end
    table.sort(found, function(x, y) return x.t < y.t end)
    return found
end

---------------------------------------------------------------------------
-- Ordonnancement
---------------------------------------------------------------------------
-- position publique {wx, wy, inst, uiMap}
local function PosOf(p, fallbackMap)
    if not p then return nil end
    local m = p.map or (p.maps and p.maps[1]) or fallbackMap or CONTINENT_MAP[p.inst]
    return { wx = p.wx, wy = p.wy, inst = p.inst, uiMap = m }
end

local function Clock()
    return _G.debugprofilestop and _G.debugprofilestop() or nil
end

local function Fallback(tasks)
    local out = {}
    for i, t in ipairs(tasks or {}) do out[i] = t end
    return out
end

local function DoPlan(tasks)
    local n = #tasks
    if n == 0 then return {} end
    local hbd = HBD()
    if not hbd then return Fallback(tasks) end
    local px, py, pinst = hbd:GetPlayerWorldPosition()
    if not (px and py and pinst) then return Fallback(tasks) end
    local start = { wx = px, wy = py, inst = pinst }

    -- positions des taches
    local points, loc = {}, {}
    for i, t in ipairs(tasks) do
        local p = t.uiMap and t.x and t.y and ZonePoint(t.uiMap, t.x, t.y)
        points[i] = p or false
        loc[i] = p and true or false
    end

    -- precedences
    local idx = {}
    for i, t in ipairs(tasks) do if t.id ~= nil then idx[t.id] = i end end
    local preds = {}
    for i, t in ipairs(tasks) do
        preds[i] = {}
        if type(t.after) == "table" then
            for _, a in ipairs(t.after) do
                local j = idx[a]
                if j and j ~= i then table.insert(preds[i], j) end
            end
        end
    end

    local hs = HearthInfo()
    local all = AllFlights(Faction())

    -- vols inconnus ; ceux proches des taches (ou des lignes droites entre
    -- elles) peuvent etre "appris" pendant le plan et servir ensuite.
    local unknown = {}
    for _, b in ipairs(all) do if not b.known then unknown[#unknown + 1] = b end end
    local cand = {}
    do
        local pts = { start }
        for i = 1, n do if loc[i] then pts[#pts + 1] = points[i] end end
        for _, fp in ipairs(unknown) do
            local best = INF
            for i = 1, #pts do
                for j = i, #pts do
                    local d = SegDist(fp, pts[i], pts[j])
                    if d < best then best = d end
                end
            end
            if best <= CFG.fpRadius then cand[#cand + 1] = { fp = fp, d = best } end
        end
        table.sort(cand, function(x, y) return x.d < y.d end)
    end
    local routable = {} -- ids pris en compte pour le routage (etats limites)
    local maxPick = (n > 25) and 1 or CFG.fpMaxRoutable
    for i = 1, math.min(#cand, maxPick) do routable[cand[i].fp.id] = true end

    -- etats = ensemble des vols appris en route ; graphe + Dijkstra paresseux
    local states = {}
    local function State(S)
        local ids = {}
        for id in pairs(S) do ids[#ids + 1] = id end
        table.sort(ids)
        local sig = table.concat(ids, ",")
        local st = states[sig]
        if not st then
            local copy = {}
            for _, id in ipairs(ids) do copy[id] = true end
            st = { S = copy, G = BuildGraph(points, all, copy), res = {}, legs = {} }
            states[sig] = st
        end
        return st
    end
    local function SrcPoint(s)
        if s == 0 then return start elseif s == "inn" then return hs.point end
        return points[s]
    end
    local function Res(st, s)
        local r = st.res[s]
        if not r then
            r = Dijkstra(st.G, SrcPoint(s))
            st.res[s] = r
        end
        return r
    end
    -- cout d'une jambe + vols inconnus croises (marche)
    local function Leg(st, s, t)
        local row = st.legs[s]
        if not row then row = {}; st.legs[s] = row end
        local L = row[t]
        if not L then
            if s == t then
                L = { cost = 0, near = {} }
            else
                local r = Res(st, s)
                L = { cost = math.min(r.dist[t], INF), near = {} }
                if L.cost < INF and #unknown > 0 then
                    for _, e in ipairs(PathEdges(r, t)) do
                        if e.mode == "walk" then
                            for _, f in ipairs(WalkPickups(st.G, SrcPoint(s), e, unknown)) do
                                table.insert(L.near, f)
                            end
                        end
                    end
                end
            end
            row[t] = L
        end
        return L
    end

    local function TaskTime(i)
        return tonumber(tasks[i].duration) or CFG.taskTime
    end

    -- simule un ordre : cout total, jambe du foyer choisie
    local function Eval(order)
        local S, picked = {}, {}
        local st = State(S)
        local cur, elapsed, total = 0, 0, 0
        local bestSav, bestK = 0, nil
        for k = 1, #order do
            local ti = order[k]
            local c = 0
            if loc[ti] then
                local L = Leg(st, cur, ti)
                c = L.cost
                if hs and elapsed >= hs.readyIn then
                    local sav = c - (CFG.hearth + Leg(st, "inn", ti).cost)
                    if sav > bestSav then bestSav, bestK = sav, k end
                end
                local changed = false
                for _, f in ipairs(L.near) do
                    local id = f.fp.id
                    if not picked[id] then
                        picked[id] = true
                        c = c + CFG.fpPickup + 2 * f.d * st.G.k
                        if routable[id] then S[id] = true; changed = true end
                    end
                end
                if changed then st = State(S) end
                cur = ti
            end
            local tt = TaskTime(ti)
            total = total + c + tt
            elapsed = elapsed + c + tt
        end
        return total - bestSav, bestK
    end

    local function Valid(order)
        local pos = {}
        for k, ti in ipairs(order) do pos[ti] = k end
        for k, ti in ipairs(order) do
            for _, p in ipairs(preds[ti]) do
                if pos[p] and pos[p] > k then return false end
            end
        end
        return true
    end

    -- glouton : plus proche tache disponible (en tenant compte des vols appris)
    local function Greedy()
        local order, placed, cur = {}, {}, 0
        local S = {}
        local st = State(S)
        for _ = 1, n do
            local best, bestC
            for i = 1, n do
                if not placed[i] then
                    local ok = true
                    for _, p in ipairs(preds[i]) do
                        if not placed[p] then ok = false break end
                    end
                    if ok then
                        local c = loc[i] and Leg(st, cur, i).cost or 0
                        if not bestC or c < bestC then best, bestC = i, c end
                    end
                end
            end
            if not best then -- cycle : premiere restante
                for i = 1, n do if not placed[i] then best = i break end end
            end
            placed[best] = true
            order[#order + 1] = best
            if loc[best] then
                local changed = false
                for _, f in ipairs(Leg(st, cur, best).near) do
                    if routable[f.fp.id] and not S[f.fp.id] then S[f.fp.id] = true; changed = true end
                end
                if changed then st = State(S) end
                cur = best
            end
        end
        return order
    end

    local t0 = Clock()
    local function OutOfTime()
        if not t0 then return false end
        local t = Clock()
        return t and (t - t0) > CFG.budgetMs
    end

    -- amelioration locale : or-opt (segments 1..3) + 2-opt, precedences respectees
    local function Improve(order)
        local best = Eval(order)
        local m = #order
        local passes = 0
        local improved = true
        while improved and passes < 30 and not OutOfTime() do
            improved = false
            passes = passes + 1
            -- or-opt
            for len = 1, math.min(3, m - 1) do
                for i = 1, m - len + 1 do
                    local seg, rest = {}, {}
                    for k = 1, m do
                        if k >= i and k < i + len then seg[#seg + 1] = order[k] else rest[#rest + 1] = order[k] end
                    end
                    for j = 0, #rest do
                        if j ~= i - 1 then
                            local c2 = {}
                            for k = 1, j do c2[#c2 + 1] = rest[k] end
                            for k = 1, len do c2[#c2 + 1] = seg[k] end
                            for k = j + 1, #rest do c2[#c2 + 1] = rest[k] end
                            if Valid(c2) then
                                local c = Eval(c2)
                                if c < best - 0.5 then
                                    order, best, improved = c2, c, true
                                    break
                                end
                            end
                        end
                    end
                    if improved or OutOfTime() then break end
                end
                if improved or OutOfTime() then break end
            end
            -- 2-opt
            if not improved and not OutOfTime() then
                for i = 1, m - 1 do
                    for j = i + 1, m do
                        local c2 = {}
                        for k = 1, i - 1 do c2[k] = order[k] end
                        for k = i, j do c2[k] = order[j - (k - i)] end
                        for k = j + 1, m do c2[k] = order[k] end
                        if Valid(c2) then
                            local c = Eval(c2)
                            if c < best - 0.5 then
                                order, best, improved = c2, c, true
                                break
                            end
                        end
                    end
                    if improved or OutOfTime() then break end
                end
            end
        end
        return order, best
    end

    local order, cost = Improve(Greedy())
    local given = {}
    for i = 1, n do given[i] = i end
    if Valid(given) and not OutOfTime() then
        local o2, c2 = Improve(given)
        if c2 < cost then order, cost = o2, c2 end
    end
    local _, hsK = Eval(order)

    -- construction du resultat (rejoue l'ordre avec les vols appris)
    -- Chaque entree de voyage porte : from (position attendue quand l'etape
    -- devient active = fin de l'entree precedente), to (fin de la jambe),
    -- board (maitre de vol / quai), target (tache visee), eta (s, de from a target).
    local out = {}
    local S, picked = {}, {}
    local st = State(S)
    local cur = 0
    local pickups = {}
    local startMap
    if _G.C_Map and _G.C_Map.GetBestMapForUnit then
        local okm, m = pcall(_G.C_Map.GetBestMapForUnit, "player")
        if okm then startMap = m end
    end
    local prevPt = PosOf(start, startMap)
    local function Tag(entry, toPt, boardPt, targetPt, eta)
        entry.from = prevPt
        entry.to = toPt
        entry.board = boardPt
        entry.target = targetPt
        entry.eta = math.max(0, math.min(eta or 0, INF))
        table.insert(out, entry)
        prevPt = toPt or prevPt
    end
    for k, ti in ipairs(order) do
        if loc[ti] then
            local src = cur
            local targetPt = PosOf(points[ti])
            local r
            if k == hsK and hs then
                r = Res(st, "inn")
                Tag(HearthEntry(hs), PosOf(hs.point), nil, targetPt, CFG.hearth + r.dist[ti])
                src = "inn"
            else
                r = Res(st, src)
            end
            local total = r.dist[ti]
            local prevCum = 0
            local changed = false
            local G = st.G
            for _, e in ipairs(PathEdges(r, ti)) do
                if e.mode == "walk" then
                    local a = (e.from == 0) and SrcPoint(src) or G.N[e.from]
                    local cumA = (e.from == 0) and 0 or r.dist[e.from]
                    for _, f in ipairs(WalkPickups(G, SrcPoint(src), e, unknown)) do
                        local id = f.fp.id
                        if not picked[id] then
                            picked[id] = true
                            NodeMaps(f.fp)
                            local fpPt = PosOf(f.fp)
                            Tag(FpEntry(f.fp), fpPt, fpPt, targetPt, total - prevCum)
                            prevCum = cumA + Dist(a, f.fp) * G.k
                            pickups[#pickups + 1] = f.fp.shortName
                            if routable[id] then S[id] = true; changed = true end
                        end
                    end
                elseif e.mode == "fly" then
                    local na, nb = G.N[e.from], G.N[e.to]
                    NodeMaps(na); NodeMaps(nb)
                    Tag(FlyEntry(G, e.from, e.to), PosOf(nb), PosOf(na), targetPt, total - prevCum)
                    prevCum = r.dist[e.to]
                elseif e.mode == "transport" and e.link then
                    Tag(TransportEntry(e.link), PosOf(G.N[e.to]), PosOf(G.N[e.from]), targetPt, total - prevCum)
                    prevCum = r.dist[e.to]
                end
            end
            if changed then st = State(S) end
            cur = ti
            prevPt = targetPt
        end
        table.insert(out, tasks[ti])
    end
    travel.last = { cost = cost, hearthLeg = hsK, tasks = n, pickups = pickups }
    return out
end

function travel.Plan(tasks)
    if type(tasks) ~= "table" then return {} end
    local ok, out = pcall(DoPlan, tasks)
    if ok and type(out) == "table" then return out end
    travel.lastError = out
    return Fallback(tasks)
end

-- position du joueur (coordonnees monde HBD) : wx, wy, inst
function travel.PlayerPos()
    local ok, x, y, inst = pcall(function()
        local hbd = HBD()
        if not hbd then return nil end
        return hbd:GetPlayerWorldPosition()
    end)
    if ok and x and y and inst then return x, y, inst end
    return nil
end

-- meilleur temps estime du joueur a un point monde (vols connus, foyer, transports)
local function TimeFromPlayer(p)
    local px, py, pinst = travel.PlayerPos()
    if not (px and p and p.wx and p.wy and p.inst) then return nil end
    local G = BuildGraph({ p }, AllFlights(Faction()))
    local best = Dijkstra(G, { wx = px, wy = py, inst = pinst }).dist[1]
    local hs = HearthInfo()
    if hs and hs.readyIn <= 0 then
        local viaHs = CFG.hearth + Dijkstra(G, hs.point).dist[1]
        if viaHs < best then best = viaHs end
    end
    if best >= INF then return nil end
    return best
end

function travel.WorldTimeFromPlayer(wx, wy, inst)
    local ok, t = pcall(TimeFromPlayer, { wx = tonumber(wx), wy = tonumber(wy), inst = tonumber(inst) })
    if ok then return t end
    return nil
end

function travel.TimeTo(uiMap, x, y)
    local ok, t = pcall(function()
        return TimeFromPlayer(ZonePoint(uiMap, x, y))
    end)
    if ok then return t end
    return nil
end
