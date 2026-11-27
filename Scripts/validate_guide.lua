--[[
Offline checker for RXPGuides guide files.

Usage (from the repository root):
    lua Scripts/validate_guide.lua [--game forever] Guides/forever/SomeGuide.lua [...]

It loads each guide file with a stub RXPGuides.RegisterGuide, then reads the guide
text with the same line rules GuideLoader.ParseGuide uses, and reports:

  errors   - step commands (.foo) that are not defined as addon.functions.foo,
             .goto/.zone map names missing from DB/<game>/db.lua (addon.mapId) and
             map.lua's aliases, and zone coordinates outside 0-100
  warnings - #completewith labels that do not exist, turn-ins whose quest is not
             accepted in the same guide (fine when an earlier guide accepts it), and
             lines the parser would silently ignore

It does not run the guide, so it cannot tell whether coordinates or NPC/object names
are right in the game world. Exit code is 1 if any errors were found.
]]

local root = (arg[0]:match("^(.*)[/\\]Scripts[/\\][^/\\]+$") or ".")
local game = "forever"
local files = {}
local i = 1
while i <= #arg do
    if arg[i] == "--game" then
        game = arg[i + 1]; i = i + 2
    else
        files[#files + 1] = arg[i]; i = i + 1
    end
end
if #files == 0 then
    print("usage: lua Scripts/validate_guide.lua [--game forever] <guide.lua> [...]")
    os.exit(2)
end

local function readFile(path)
    local f = assert(io.open(path, "rb"), "cannot open " .. path)
    local s = f:read("a")
    f:close()
    return s
end

-- Map names known to this game version
local mapId = {}
do
    local block = readFile(root .. "/DB/" .. game .. "/db.lua"):match("addon%.mapId%s*=%s*(%b{})")
    assert(block, "no addon.mapId table in DB/" .. game .. "/db.lua")
    for k in block:gmatch('%["([^"]+)"%]%s*=') do mapId[k] = true end
end

-- Map name aliases that GetMapInfo resolves itself (e.g. StormwindClassic)
for alias in readFile(root .. "/map.lua"):gmatch('zone%s*==%s*"([^"]+)"') do mapId[alias] = true end

-- Step commands (addon.functions.*) defined in the addon's top-level Lua files
local commands = {}
local sources = {"functions.lua"}
for line in readFile(root .. "/RXPGuides.toc"):gmatch("[^\r\n]+") do
    if line:match("^[%w_]+%.lua$") and line ~= "functions.lua" then sources[#sources + 1] = line end
end
for _, src in ipairs(sources) do
    local ok, content = pcall(readFile, root .. "/" .. src)
    if ok then
        for line in content:gmatch("[^\r\n]+") do
            local n = line:match("^%s*function addon%.functions%.([%w_]+)")
                or line:match("^%s*addon%.functions%.([%w_]+)%s*=")
                or line:match('^%s*addon%.functions%["([%w_]+)"%]%s*=')
            if n then commands[n] = true end
        end
    end
end

-- Minimal WoW globals so guide files that check faction/locale before registering can load
local stubs = {
    UnitFactionGroup = function() return nil end,
    GetLocale = function() return "enUS" end,
    UnitClass = function() return nil, nil end,
    UnitRace = function() return nil, nil end,
    RXP = {enabledLocale = {}},
}

local errors, warnings = 0, 0
local function report(kind, file, line, msg)
    if kind == "error" then errors = errors + 1 else warnings = warnings + 1 end
    print(("%s:%d: %s: %s"):format(file, line, kind, msg))
end

local function checkGuide(file, text)
    -- Report file line numbers: find where the guide text starts in the file
    -- (Lua turns CRLF into LF inside long strings, so match against LF-only source)
    local source = readFile(file):gsub("\r\n", "\n")
    local start = source:find(text, 1, true)
    local offset = 0
    if start then
        for _ in source:sub(1, start - 1):gmatch("\n") do offset = offset + 1 end
    end
    -- ParseGuide strips "--" comments before reading lines (the line break stays)
    text = text:gsub("%-%-[^\r\n]*([\r\n])", "%1")
    local lineNo, steps = offset, 0
    local labels, completewith, accepted, turnedIn = {}, {}, {}, {}
    local name
    for raw in text:gmatch("([^\n]*)\n?") do
        lineNo = lineNo + 1
        local line = raw:gsub("\r", ""):gsub("^%s+", ""):gsub("%s+$", "")
        local code = line:gsub("%s*<<.*$", "")
        if line == "" then
            -- blank
        elseif line:sub(1, 4) == "step" then
            steps = steps + 1
        elseif steps == 0 then
            name = name or code:match("^#name%s+(.+)")
        else
            local tag, value = code:match("^#(%S+)%s*(.*)")
            if tag then
                if tag == "label" then
                    labels[value] = true
                elseif tag == "completewith" and value ~= "next" and value ~= "" then
                    completewith[#completewith + 1] = {value, lineNo}
                end
            else
                local body = code:gsub("%s*>>.*$", "")
                local cmd, args = body:match("^%.(%S+)%s*(.*)")
                if cmd then
                    if not commands[cmd] then
                        report("error", file, lineNo, "unknown command ." .. cmd)
                    elseif cmd == "goto" or cmd == "zone" then
                        local zone = cmd == "goto" and args:match("^([^,]+)") or args
                        zone = zone and zone:gsub("%s+$", "")
                        local worldCoords = zone and zone:match("^%d+/%d+$")
                        if zone and not (worldCoords or tonumber(zone) or mapId[zone]) then
                            report("error", file, lineNo, "unknown map name '" .. zone .. "' for " .. game)
                        end
                        if cmd == "goto" and not worldCoords then
                            local x, y = args:match("^[^,]+,%s*([%d.]+)%s*,%s*([%d.]+)")
                            x, y = tonumber(x), tonumber(y)
                            if not (x and y and x >= 0 and x <= 100 and y >= 0 and y <= 100) then
                                report("error", file, lineNo, "bad coordinates in .goto " .. args)
                            end
                        end
                    elseif cmd == "accept" or cmd == "turnin" then
                        local q = tonumber(args:match("^(%d+)"))
                        if q then
                            (cmd == "accept" and accepted or turnedIn)[q] = (cmd == "accept" and accepted or turnedIn)[q] or lineNo
                        end
                    end
                elseif not (code:match("^[+*]") or line:match("^>>") or code == "") then
                    report("warning", file, lineNo, "line is ignored by the parser: " .. line:sub(1, 60))
                end
            end
        end
    end
    for _, c in ipairs(completewith) do
        if not labels[c[1]] then
            report("warning", file, c[2], "#completewith label '" .. c[1] .. "' does not exist (the step stays open)")
        end
    end
    for q, l in pairs(turnedIn) do
        if not accepted[q] then
            report("warning", file, l, "turn-in of quest " .. q .. " is not accepted in this guide")
        end
    end
    print(("%s: '%s', %d steps"):format(file, tostring(name), steps))
end

for _, file in ipairs(files) do
    local guides = {}
    local env = setmetatable({
        RXPGuides = {RegisterGuide = function(a, b) guides[#guides + 1] = b or a end},
    }, {__index = function(_, k) if stubs[k] ~= nil then return stubs[k] end return _G[k] end})
    local chunk, err = loadfile(file, "t", env)
    if not chunk then
        report("error", file, 0, err)
    else
        local ok, runErr = pcall(chunk, "RXPGuides", {})
        if not ok then report("error", file, 0, "file failed to load: " .. tostring(runErr)) end
        for _, text in ipairs(guides) do checkGuide(file, text) end
    end
end

print(("%d error(s), %d warning(s)"):format(errors, warnings))
os.exit(errors == 0 and 0 or 1)
