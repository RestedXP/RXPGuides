local _, addon = ...

addon.guides = {}
addon.guideList = {}

local DEBUG = false

local _, race = UnitRace("player")
local _, class = UnitClass("player")
local faction = UnitFactionGroup("player")
local fmt = string.format
local strchar = string.char
local strbyte = string.byte
local bitand = bit.band
local bitxor = bit.bxor
local LibDeflate = LibStub("LibDeflate")

local RXPG = addon.RXPG
local game = strlower(addon.game)
local suffix = 1
-- Alias addon.locale.Get
local L = addon.locale.Get

-- File guides and string-imports need different load order support
local embeddedGuides = {}

local function applies(text)
    if text then
        local isMatch
        for str in string.gmatch(text, "[^/]+") do
            local v = true
            for entry in string.gmatch(str, "!?[%w%d]+") do
                local level = tonumber(entry) or 0xfff
                local playerLevel = UnitLevel("player") or 1
                local state = true
                if entry:sub(1, 1) == "!" then
                    entry = entry:sub(2, -1)
                    state = false
                end
                local uppercase = strupper(entry)
                if entry == "Undead" then
                    entry = "Scourge"
                elseif uppercase == "DK" then
                    uppercase = "DEATHKNIGHT"
                end
                v = v and
                        ((uppercase == class or uppercase == addon.game or
                            entry == race or entry == faction or playerLevel >=
                            level) == state)
            end
            isMatch = isMatch or v
        end
        return isMatch
    end
    return true
end

addon.applies = applies
addon.farmGuides = 0

addon.affix = function(smin, smax)
    if smax:len() == 1 then smax = "0" .. smax end
    return "0" .. smin .. "-" .. smax
end

function RXPG.RegisterGroup(guideGroup, parentGroup)
    if not RXPG[guideGroup] then RXPG[guideGroup] = {} end
    local group = RXPG[guideGroup]
    if parentGroup then
        if not RXPG[parentGroup] then RXPG[parentGroup] = {} end
        local parent = RXPG[parentGroup]
        parent.__index = parent
        setmetatable(parent, addon.functions)
        setmetatable(group, parent)
    else
        setmetatable(group, addon.functions)
    end
end

-- Load guide into addon options
function RXPG.AddGuide(guide)
    -- Not applicable (e.g. wrong faction), rely on upstream functions to report parsing errors
    if not guide then return false end

    local loadedGuide
    for _, checkGuide in ipairs(addon.guides) do
        if guide.key == checkGuide.key then
            loadedGuide = checkGuide
            break
        end
    end

    if loadedGuide then
        if guide.version == loadedGuide.version then
            return false
        elseif guide.version > loadedGuide.version then
            if DEBUG then
                print(fmt(
                          'Newer guide for (%s) already exists (%s) >= checkGuide (%d)',
                          guide.key, guide.version, loadedGuide.version))
            end
            return false
        end
    end

    RXPG.RegisterGroup(guide.group)

    if not addon.guideList[guide.group] then
        addon.guideList[guide.group] = {}
        addon.guideList[guide.group].names_ = {}
    end

    local list = addon.guideList[guide.group]

    if loadedGuide then -- guide exists, but new version
        for i, checkGuide in ipairs(addon.guides) do
            if guide.key == checkGuide.key then
                addon.guides[i] = checkGuide
                break
            end
        end
    else -- guide doesn't exist, so insert
        table.insert(addon.guides, guide)

        if list[guide.name] then
            suffix = suffix + 1
            guide.name = guide.name .. tostring(suffix)
        end

        table.insert(list.names_, guide.name)

        list[guide.name] = #addon.guides

        if guide.group:sub(1, 1) ~= "*" and guide.defaultFor and
            not addon.defaultGuide then addon.defaultGuide = guide end
    end

    return true
end

local function Serialize(tbl)
    local t = {}
    for k,v in pairs(tbl) do
        if type(v) == "number" then
            v = strchar(v)
        end
        table.insert(t,v)
    end
    return table.concat(t)
end

local function CheckDataIntegrity(str, h1, mode)
    if h1 then
        if mode == 58 then
            local S = {};
            local i, j
            local buffer = {}

            local n = addon.ReadCacheData("buffer")
            for i = 0, 255 do S[i] = n[i] end

            i, j, str = 0, 0, addon.read(str)

            for k = 0, #str - 1 do
                i = bitand(i + 1, 0xff)
                j = bitand(j + S[i], 0xff)
                S[i], S[j] = S[j], S[i]
                table.insert(buffer, strchar(
                                 bitxor(strbyte(str, k + 1),
                                        S[bitand((S[i] + S[j]), 0xff)])))
            end

            str = LibDeflate:DecompressZlib(table.concat(buffer))
            return str and h1 % 4294967296 == addon.A32(str), str
        end
    else
        return addon.A32(str)
    end
end

function addon.CacheGuide(key, guide, enabledFor, guideVersion)
    if type(guide) == "table" then
        guide.groupOrContent = LibDeflate:CompressDeflate(guide.groupOrContent)
        addon.db.profile.guides[key] = guide
    else
        guide = guide:gsub("%s-[\r\n]+%s*", "\n")
        guide = guide:gsub("[\t ][\t ]+", " ")
        guide = guide:gsub("%-%-[^\n]*", "")
        guide = "--" .. addon.ReadCacheData("string") .. "\n" .. guide
        guide = LibDeflate:CompressDeflate(guide)
        addon.db.profile.guides[key] = RXPG.BuildCacheObject(guide, enabledFor,
                                                             guideVersion)
    end
end

-- Parse and cache one-time guide
function addon.ImportGuide(guide,text,defaultFor,cache)
    if addon.db then -- Addon loaded already
        local importedGuide, errorMsg = RXPG.ParseGuide(guide)
        if errorMsg ~= "#0" and importedGuide and ((errorMsg and not cache) or RXPG.AddGuide(importedGuide)) then
            -- print(errorMsg,importedGuide.name)
            importedGuide.imported = true
            addon.CacheGuide(importedGuide.key, guide, importedGuide.enabledFor,
                            importedGuide.version)
        end
        return importedGuide
    else -- Addon not loaded, add to queue
        table.insert(embeddedGuides, {
            groupOrContent = guide,
            text = text,
            defaultFor = defaultFor,
            cache = true
        })
    end
end

function addon.RegisterGuide(groupOrContent, text, defaultFor)
    if addon.db then
        local importedGuide, errorMsg = RXPG.ParseGuide(groupOrContent, text,
                                                        defaultFor)

        return not errorMsg and RXPG.AddGuide(importedGuide)
    else
        table.insert(embeddedGuides, {
            groupOrContent = groupOrContent,
            text = text,
            defaultFor = defaultFor
        })
    end
end

function RXPG.BuildCacheObject(groupOrContent, enabledFor, guideVersion)
    return {
        groupOrContent = groupOrContent,
        cache = true,
        enabledFor = enabledFor,
        version = guideVersion
    }
end

function addon.A32(tbl)
    local readfunc, offset
    if type(tbl) == "table" then
        readfunc = unpack
        offset = -1
    elseif type(tbl) == "string" then
        readfunc = strbyte
        offset = 0
    else
        return
    end

    local length = #tbl

    local i = 1
    local a = 1
    local b = 0
    while i <= length - 15 do
        local x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,
              x16 = readfunc(tbl, i + offset, i + 15 + offset)
        b = (b + 16 * a + 16 * x1 + 15 * x2 + 14 * x3 + 13 * x4 + 12 * x5 + 11 *
                x6 + 10 * x7 + 9 * x8 + 8 * x9 + 7 * x10 + 6 * x11 + 5 * x12 + 4 *
                x13 + 3 * x14 + 2 * x15 + x16) % 65521
        a = (a + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 +
                x13 + x14 + x15 + x16) % 65521
        i = i + 16
    end
    while (i <= length) do
        local x = readfunc(tbl, i + offset, i + offset)
        a = (a + x) % 65521
        b = (b + a) % 65521
        i = i + 1
    end
    return bitand((b * 65536 + a), 0xffffffff)

end

local cachedData = {}
function addon.ReadCacheData(mode)
    if not cachedData.base then
        local base = select(2,_G[Serialize(addon.base)]())
        if not base then
            cachedData.base = RXPData.cache
        else
            base = base:lower()
            local k = #base
            if k > 16 then
                base = base:sub(k - 15, -1)
                k = 16
            end
            k = 16 - k

            local buffer = {}
            for i = 0, 15 do
                local j = bitand(i - k, 0xf)
                buffer[i] = strbyte(base, j + 1) or 0
            end
            for i = 0, 15 do
                buffer[bitand(-i, 0xf)] = bitxor(bitxor(
                                                     bitxor(buffer[bitand(15 - i,
                                                                          0xf)],
                                                            buffer[bitand(
                                                                13 - i, 0xf)]),
                                                     buffer[bitand(12 - i, 0xf)]),
                                                 buffer[bitand(10 - i, 0xf)])
            end
            RXPData.cache = buffer
            cachedData.base = buffer
        end
    end

    if not cachedData.base then
        return
    elseif not cachedData.number then
        cachedData.number = addon.A32(cachedData.base)
        cachedData.number = cachedData.number - math.floor(addon.version/1e2)
        cachedData.string = tostring(cachedData.number)
    end

    if not cachedData.buffer and mode == "buffer" then
        local buffer = {};
        local j = 0
        local base = cachedData.base

        for i = 0, 255 do buffer[i] = i end

        for i = 0, 255 do
            j = bitand(j + buffer[i] + base[bitand(i, 0xf)], 0xff)
            buffer[i], buffer[j] = buffer[j], buffer[i]
        end
        cachedData.buffer = buffer
    end

    return mode and cachedData[mode] or cachedData.base
end

local buffer = {}
addon.bufferSize = 0
function RXPG.ImportString(str, frame)
    addon.bufferSize = 0
    local errorMsg
    local nGuides = str:match("^(%d+)|")
    local base = str:match("|(%d+)$")
    if tonumber(base) < addon.version then
        return
    end
    for hash, mode, content in str:gmatch("(%-?%d+)(%D)([%w%+%/%=]+)") do
        if DEBUG then print('g:', hash) end
        local validData, data = CheckDataIntegrity(content, tonumber(hash),
                                                   strbyte(mode))
        if validData then
            for v in data:gmatch("[^%z]+") do
                table.insert(buffer, v)
                addon.bufferSize = addon.bufferSize + 1
            end
        else
            errorMsg = L("Error parsing guides\nTotal guides loaded: %d/%s")
            break
        end
    end
    if addon.bufferSize > 0 then
        addon.parsing = true
        if frame then
            frame:SetScript("OnUpdate", RXPG.ProcessBuffer)
        else
            for n = 1, addon.bufferSize do RXPG.ProcessBuffer() end
        end
        if errorMsg then
            return false, errorMsg:format(addon.bufferSize, nGuides)
        else
            return true
        end
    else
        return false, L("Error: Unable to parse guides")
    end
end

function RXPG.ProcessBuffer(frame)
    local size = #buffer
    if size > 0 then
        local parseGuide = RXPGuides.ImportGuide(buffer[size])
        table.remove(buffer, size)
        if type(parseGuide) == "table" and parseGuide.name then
            local progress = addon.bufferSize - size + 1
            addon.RXPG.LoadText:SetText(format(L("Loading Guides") .. "... (%d/%d)",
                             progress,addon.bufferSize))
        end
        return true
    elseif frame then
        frame:SetScript("OnUpdate", nil)
    end
    if addon.bufferSize > 0 then
        addon.RXPG.LoadText:SetText(L("Guides Loaded Successfully"))
        addon.bufferSize = 0
    end
    addon.parsing = false
    addon.RXPFrame.GenerateMenuTable()
end

function RXPG.LoadEmbeddedGuides()
    if not addon.db then
        error('Initialization error, db not set')
        return
    end

    for _, guideData in pairs(embeddedGuides) do
        if guideData.cache then
            addon.ImportGuide(guideData.groupOrContent,
                              guideData.text,
                              guideData.defaultFor,
                              true)
        else
            local guide, errorMsg = RXPG.ParseGuide(guideData.groupOrContent,
                                                    guideData.text,
                                                    guideData.defaultFor)

            if not errorMsg then RXPG.AddGuide(guide) end
        end
    end

    embeddedGuides = nil
end

function RXPG.BuildGuideKey(guide)
    return string.format("%s|%s|%s", guide.group, guide.subgroup or '', guide.name)
end

function RXPG.LoadCachedGuides()
    if not addon.db then
        error('Initialization error, db not set')
        return
    end

    for key, guideData in pairs(addon.db.profile.guides) do
        local guide, errorMsg
        local enabled = not guideData.enabledFor or applies(guideData.enabledFor)
        if enabled then
            guide = LibDeflate:DecompressDeflate(guideData.groupOrContent)
            if guide:match("^--" .. addon.ReadCacheData("string")) then
                guide, errorMsg = RXPG.ParseGuide(guide)
            else
                guide = nil
            end
            if not errorMsg and guide then
                guide.imported = true
                RXPG.AddGuide(guide)
            else
                if DEBUG then
                    print(fmt(L('Unable to decode cached guide (%s), removed'), key))
                end
                addon.db.profile.guides[key] = nil
            end
        end
    end
end

function RXPG.ParseGuide(groupOrContent, text, defaultFor)

    if not groupOrContent then return end

    local playerLevel = UnitLevel("player")
    local parentGroup

    if not (groupOrContent and text) then
        local currentGroup
        text = groupOrContent:gsub("%-%-[^\r\n]*[\r\n]+", "\n")
        text = text:gsub(
                   "(#group[ \t]*)([^\r\n]-)[ \t]*<<[ \t]*([^\r\n]-)[ \t]*[\r\n]+",
                   function(prefix, group, t)
                if not applies(t) then
                    return "\n"
                else
                    currentGroup = group
                    return prefix .. group .. "\n"
                end
            end)

        if currentGroup then
            groupOrContent = currentGroup
        else
            groupOrContent = text:match("^%s*#group%s+(.-)%s*[\r\n]") or
                                 text:match("[\r\n]%s*#group%s+(.-)%s*[\r\n]")
            if not groupOrContent then
                print("\n" .. L("Error parsing guide") .. ": Invalid guide group",
                      text:match("#name%s+.-%s*[\r\n]"))
                return
            end
        end
    else
        text = text:gsub("%-%-.-[\r\n]", "\n")
    end

    local guide = {}
    if groupOrContent:sub(1, 1) == "+" then
        addon.farmGuides = addon.farmGuides + 1
        guide.farm = true
    end
    addon.guide = guide

    guide.group = groupOrContent
    addon.currentGuideGroup = groupOrContent
    RXPG.RegisterGroup(guide.group)

    guide.unitscan = {}
    local currentStep = 0
    guide.steps = {}

    local lastElement
    local step
    local skip
    local skipGuide
    local linenumber = 0

    local function parseLine(linetext)
        local line = linetext
        local classtag
        line = line:gsub("%s*<<%s*(.+)", function(t)
            classtag = t
            return ""
        end)
        if classtag and not applies(classtag) then return end

        local steptag, assignment, value = line:match("^#(%S+)%s*(=?)%s*(.*)")
        if steptag and steptag ~= "" then
            if not step[steptag] then
                if assignment == "=" then
                    step[steptag] = RXPG[guide.group][value]
                else
                    step[steptag] = value
                end
            end
            return
        end

        local element
        local text
        line = line:gsub("%s*>>%s*(.*)", function(t)
            if t ~= "" then text = t end
            return ""
        end)

        line:gsub("^%.(%S+)%s*(.*)", function(tag, args)
            local t = {}

            if tag == "link" then
                local link = args:gsub("%s+$", "")
                table.insert(t, link)
            else
                args = args:gsub("%s*,%s*", ",")
                for arg in string.gmatch(args, "[^,]+") do
                    table.insert(t, arg)
                end
            end
            -- print(tag,args,type(guide))
            if RXPG[guide.group][tag] then
                element = RXPG[guide.group][tag](linetext, text, unpack(t))
                if not element then return end
                element.tag = tag
                element.step = step
                if element.parent then
                    element.parent = lastElement
                end
            else
                return addon.error(L("Error parsing guide") .. " " ..
                                       addon.currentGuideName ..
                                       ": Invalid function call (." .. tag ..
                                       ")\n" .. linetext)
            end
        end)

        if text and not element then
            element = {text = text, textOnly = true, step = step}
        elseif line:sub(1, 1) == "+" then
            element = {text = line:sub(2, -1), step = step}
            lastElement = element
        elseif line:sub(1, 1) == "*" then
            element = {
                text = line:sub(2, -1):gsub("\\n", "\n"),
                step = step,
                hideTooltip = true,
                textOnly = true
            }
            -- else
            -- error('Error parsing guide at line '..linenumber..'/ '..guide.name)
        end
        if element and (text and not element.textOnly or element.dynamicText) then
            lastElement = element
        end

        table.insert(step.elements, element)
    end

    for line in string.gmatch(text, "[^\n\r]+") do
        linenumber = linenumber + 1
        line = line:gsub("^%s+", "")
        line = line:gsub("%s+$", "")
        -- print(line)
        if line:sub(1, 4) == "step" then
            if not addon.currentGuideName then
                error(L("Error parsing guide") .. ": " .. L("Guide has no name"))
            end
            guide.key = guide.key or RXPG.BuildGuideKey(guide)
            if currentStep == 0 and (not guide[game] and (guide.classic or guide.tbc or guide.wotlk or guide.mainline)) then
                --print(game,guide[game],guide.name)
                skipGuide = "#0"
            end
            if skipGuide then
                guide.version = tonumber(guide.version) or 0
                addon.guide = false
                return guide, skipGuide
            end
            local classtag = line:match("<<%s*(.+)")
            if classtag and not applies(classtag) then
                skip = true
            else
                skip = false
                if step and step.elements and #step.elements == 0 then
                    step.hidewindow = true
                end
                currentStep = currentStep + 1
                guide.steps[currentStep] = {}
                guide.steps[currentStep].elements = {}
                step = guide.steps[currentStep]
                step.index = currentStep
                addon.step = step
                lastElement = nil
            end
        elseif not skip then
            if currentStep > 0 then
                parseLine(line)
            else
                -- print(line)
                line = line:gsub("(.-)%s*<<%s*(.+)", function(code, tag)
                    local isValid = applies(tag)
                    if #code == 0 then
                        skipGuide = not isValid and tag
                        guide.enabledFor = guide.enabledFor or tag
                        -- print("$"..code.."$",tag,#code)
                    elseif not isValid then
                        return ""
                    end
                    return code
                end)

                if line ~= "" then
                    line:gsub("^#(%S+)%s*(=?)%s*(.*)",
                              function(tag, assignment, value)
                        -- print(tag,string.len(tag))
                        if tag and tag ~= "" and not guide[tag] then
                            if assignment == "=" then
                                guide[tag] = RXPG[guide.group][value]
                            else
                                guide[tag] = value
                            end
                            if tag == "name" then
                                addon.currentGuideName = value
                            end
                        end
                    end)
                end
            end
        end
    end
    -- print(guide)
    addon.step = false
    if not guide.name then error(L('Guide has no name')) end

    defaultFor = guide.defaultfor or defaultFor
    if defaultFor then
        local boost58
        if defaultFor == "58Boost" then
            if playerLevel >= 60 or playerLevel < 58 then
                parentGroup = groupOrContent
                groupOrContent = "*" .. groupOrContent
            end
            boost58 = true
        elseif not applies(defaultFor) then
            parentGroup = groupOrContent
            groupOrContent = "*" .. groupOrContent
        end
        RXPG.RegisterGroup(groupOrContent, parentGroup)
        guide.boost58 = boost58
        guide.group = groupOrContent
    end

    guide.displayName = guide.name
    guide.name = guide.name:gsub("^(%d)-(%d%d?)", addon.affix)
    if guide.next then
        guide.next = guide.next:gsub("^(%d)-(%d%d?)", addon.affix)
    end

    guide.key = RXPG.BuildGuideKey(guide)
    guide.version = tonumber(guide.version) or 0

    addon.guide = false
    -- print(guide.name,"\n",guide.enabledFor)
    return guide
end

if not _G.RXPGuides then _G.RXPGuides = {} end

if not _G.RXPGuides.RegisterGuide then
    _G.RXPGuides.RegisterGuide = addon.RegisterGuide
end

if not _G.RXPGuides.ImportGuide then _G.RXPGuides.ImportGuide =
    addon.ImportGuide end
