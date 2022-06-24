local addonName, addon = ...

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
local base64 = LibStub("LibBase64-1.0")

local RXPG = addon.RXPG
local version = strlower(addon.version)
local suffix = 1

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
                        ((uppercase == class or uppercase == addon.version or
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
        if tonumber(guide.version) == tonumber(loadedGuide.version) then
            return false
        elseif tonumber(guide.version) > tonumber(loadedGuide.version) then
            if DEBUG then
                print(fmt(
                          'Newer guide for (%s) already exists (%s) >= checkGuide (%s)',
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

local function CheckDataIntegrity(str, h1)
    local h2 = LibDeflate:Adler32(str) % 4294967296
    if h1 then
        return h1 % 4294967296 == h2
    else
        return h2
    end
end

-- Don't cache registered guide, aka Guide-N.lua
-- They are part of the base bundle, so caching is a waste of RAM
function addon.RegisterGuide(groupOrText, text, defaultFor)
    if addon.db then -- Only used when user-imported RegisterGuide string pasted
        local importedGuide = RXPG.ParseGuide(groupOrText, text, defaultFor)

        if RXPG.AddGuide(importedGuide) then
            importedGuide.imported = true
            addon.db.profile.guides[importedGuide.key] =
                RXPG.BuildCacheObject(groupOrText, text, defaultFor)
        end
    else
        table.insert(embeddedGuides, {
            groupOrText = groupOrText,
            text = text,
            defaultFor = defaultFor
        })
    end
end

-- Parse and cache one-time guide, aka Import.lua or base64
function addon.ImportGuide(groupOrText, text, defaultFor)
    if addon.db then -- Addon loaded already, import coming from user string
        local importedGuide = RXPG.ParseGuide(groupOrText, text, defaultFor)

        if RXPG.AddGuide(importedGuide) then
            importedGuide.imported = true
            local guide = LibDeflate:CompressDeflate(groupOrText)
            addon.db.profile.guides[importedGuide.key] =
                RXPG.BuildCacheObject(guide)
        end
        return importedGuide
    else -- Addon not loaded, add to queue
        table.insert(embeddedGuides,
                     RXPG.BuildCacheObject(groupOrText, text, defaultFor))
    end
end

function RXPG.BuildCacheObject(groupOrText, text, defaultFor)
    return {
        groupOrText = groupOrText,
        text = text,
        defaultFor = defaultFor,
        cache = true
    }
end

local cachedData = {}
local function ReadCacheData(mode)
    if not cachedData.base then
        cachedData.base = select(2, BNGetInfo())
        k = #cachedData.base
        if k > 16 then
            cachedData.base = cachedData.base:sub(k - 15, -1)
        elseif k < 16 then
            cachedData.base = cachedData.base .. strchar(42):rep(16 - k)
        end
    end
    if not cachedData.number then
        cachedData.number = CheckDataIntegrity(cachedData.base)
        cachedData.string = tostring(cachedData.number)
    end

    return cachedData[mode] or cachedData.base
end

local function ReadString(input, hash)

    input = base64:decode(input)
    if CheckDataIntegrity(input, hash) then return input end

    local S = {};
    local i, j = 0, 0
    local output = {}
    local n = ReadCacheData()

    for i = 0, 255 do S[i] = i end

    for i = 0, 255 do
        j = bitand(j + S[i] + strbyte(n, bitand(i, 0xf) + 1), 0xff)
        S[i], S[j] = S[j], S[i]
    end

    i, j = 0, 0

    for k = 0, #input - 1 do
        i = bitand(i + 1, 0xff)
        j = bitand(j + S[i], 0xff)
        S[i], S[j] = S[j], S[i]
        table.insert(output, strchar(
                         bitxor(strbyte(input, k + 1),
                                S[bitand((S[i] + S[j]), 0xff)])))
    end

    local guide = table.concat(output)
    guide = LibDeflate:DecompressZlib(guide)
    if guide and CheckDataIntegrity(guide, hash) then return guide end
    return false, "Error loading guide ID " .. hash
end

local importedGuides = {}
local nImportedGuides = 0
function RXPG.ImportString(str)
    nImportedGuides = 0
    for hash, text in string.gmatch(str, "(%-?%d+):([%w%+%/%=]+)") do
        if DEBUG then
            print('g:', hash)
        end
        local guide, errorMsg = ReadString(text, tonumber(hash))
        if guide then
            table.insert(importedGuides, guide)
            nImportedGuides = nImportedGuides + 1
        else
            print(errorMsg)
        end
    end

    -- Provisory solution, lots of data to be processed in a single frame
    -- maybe stagger the guide loading and load only 1 per frame
    for n = 1, nImportedGuides do RXPG.ProcessImportedGuides() end
    return nImportedGuides > 0
end

function RXPG.ProcessImportedGuides()
    if #importedGuides > 0 then
        local guide = RXPGuides.ImportGuide(importedGuides[1])
        if guide then
            print("Guide Loaded Successfully: " .. guide.name)
        end
        table.remove(importedGuides, 1)
        return true
    else
        nImportedGuides = 0
    end
end

function RXPG.LoadEmbeddedGuides()
    if not addon.db then
        error('Initialization error, db not set')
        return
    end

    for _, guideData in pairs(embeddedGuides) do
        local guide = RXPG.ParseGuide(guideData.groupOrText, guideData.text,
                                      guideData.defaultFor)

        if RXPG.AddGuide(guide) and guideData.cache then
            -- Cache if guide successfully loads and is imported not default
            addon.db.profile.guides[guide.key] = guideData
        end
    end

    embeddedGuides = nil
end

function RXPG.BuildGuideKey(guide)
    return string.format("%s|%s|%s|%s", ReadCacheData("string"), guide.group,
                         guide.subgroup or '', guide.name)
end

function RXPG.LoadCachedGuides()
    if not addon.db then
        error('Initialization error, db not set')
        return
    end

    for key, guideData in pairs(addon.db.profile.guides) do
        local guide

        if key:match("^(%-?%d+)|") == ReadCacheData("string") then
            guide = LibDeflate:DecompressDeflate(guideData.groupOrText)
            guide = RXPG.ParseGuide(guide)
        end
        if guide then
            guide.imported = true
            RXPG.AddGuide(guide)
        else
            if DEBUG then
                print(fmt('Unable to decode cached guide (%s), removed', key))
            end
            addon.db.profile.guides[key] = nil
        end
    end
end

function RXPG.ParseGuide(groupOrText, text, defaultFor)
    -- TODO decode guide contents
    if not groupOrText then return end

    local playerLevel = UnitLevel("player")
    local parentGroup

    if not (groupOrText and text) then
        local currentGroup
        text = groupOrText:gsub("%-%-.-[\r\n]", "\n")
        text = text:gsub("(#group%s*)(.-)%s*<<%s*(.-)%s*[\r\n]", function(prefix,group,t)
            if not applies(t) then
                return "\n"
            else
                currentGroup = group
                return prefix .. group .. "\n"
            end
        end)

        if currentGroup then
            groupOrText = currentGroup
        else
            groupOrText = text:match("^%s*#group%s+(.-)%s*%c") or
                            text:match("%c%s*#group%s+(.-)%s*%c")
            if not groupOrText then
                print("Error parsing guide: Invalid guide group",
                    text:match("#name%s+.-%s*%c"))
                return
            end
         end
    else
        text = text:gsub("%-%-.-[\r\n]", "\n")
    end

    local guide = {}

    if groupOrText:sub(1, 1) == "+" then
        addon.farmGuides = addon.farmGuides + 1
        guide.farm = true
    end
    addon.guide = guide

    guide.group = groupOrText

    RXPG.RegisterGroup(guide.group)

    guide.unitscan = {}
    local currentStep = 0
    guide.steps = {}

    local lastElement
    local step
    local skip
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
                return addon.error("Error parsing guide " ..
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
                error("Error parsing guide: Guide has no name")
            end
            local classtag = line:match("<<%s*(.+)")
            if classtag and not applies(classtag) then
                skip = true
            else
                skip = false
                if step and step.elements and #step.elements == 0 then
                    step.hideStep = true
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
                if currentStep > 1 or
                    (version == "tbc" and not (guide.classic or guide.wotlk)) or
                    guide[version] then
                    parseLine(line)
                else
                    addon.guide = nil
                    return
                end
            elseif currentStep == 0 then
                local classtag
                line = line:gsub("(.*)<<%s*(.+)", function(code, tag)
                    code = code:gsub("%s+$", "")
                    classtag = tag
                    return code
                end)
                if classtag and not applies(classtag) then
                    if line == "" then
                        addon.guide = nil
                        return
                    elseif line == "step" then
                        skip = true
                    end
                else
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
    addon.step = nil
    if not guide.name then error('Guide has no name') end

    defaultFor = guide.defaultfor or defaultFor
    if defaultFor then
        local boost58
        if defaultFor == "58Boost" then
            if playerLevel >= 60 or playerLevel < 58 then
                parentGroup = groupOrText
                groupOrText = "*" .. groupOrText
            end
            boost58 = true
        elseif not applies(defaultFor) then
            parentGroup = groupOrText
            groupOrText = "*" .. groupOrText
        end
        RXPG.RegisterGroup(groupOrText, parentGroup)
        guide.boost58 = boost58
        guide.group = groupOrText
    end

    guide.displayName = guide.name
    guide.name = guide.name:gsub("^(%d)-(%d%d?)", addon.affix)
    if guide.next then
        guide.next = guide.next:gsub("^(%d)-(%d%d?)", addon.affix)
    end

    guide.key = RXPG.BuildGuideKey(guide)
    if not guide.version then guide.version = '0' end

    addon.guide = nil

    return guide
end

-- Workaround global namespace pollution and external guide files
-- Also workaround private repo name difference
if not _G["RXPGuides"] then _G["RXPGuides"] = {} end

if not _G["RXPGuides"].RegisterGuide then
    _G["RXPGuides"].RegisterGuide = addon.RegisterGuide
end

if not _G["RXPGuides"].ImportGuide then
    _G["RXPGuides"].ImportGuide = addon.ImportGuide
end
