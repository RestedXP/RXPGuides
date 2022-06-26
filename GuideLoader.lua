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
local b64 = LibStub("LibBase64-1.0")

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

addon.read = function(arg1,arg2)
    local pass, returnValue = pcall(b64.decode,arg1,arg2)
    if pass then
        return returnValue
    elseif DEBUG then
        print(returnValue)
    end
    return ''
end

addon.write = function(arg1,arg2)
    local pass, returnValue = pcall(b64.encode,arg1,arg2)
    if pass then
        return returnValue
    elseif DEBUG then
        print(returnValue)
    end
end

local function CheckDataIntegrity(str, h1)
    if h1 then
        local S = {};
        local i, j = 0, 0
        local buffer = {}
        local n = addon.ReadCacheData()

        for i = 0, 255 do S[i] = i end

        for i = 0, 255 do
            j = bitand(j + S[i] + strbyte(n, bitand(i, 0xf) + 1), 0xff)
            S[i], S[j] = S[j], S[i]
        end

        i, j, str = 0, 0, addon:read(str)

        for k = 0, #str - 1 do
            i = bitand(i + 1, 0xff)
            j = bitand(j + S[i], 0xff)
            S[i], S[j] = S[j], S[i]
            table.insert(buffer, strchar(
                             bitxor(strbyte(str, k + 1),
                                    S[bitand((S[i] + S[j]), 0xff)])))
        end

        str = LibDeflate:DecompressZlib(table.concat(buffer))
        return str and h1 % 4294967296 == LibDeflate:Adler32(str),str
    else
        return LibDeflate:Adler32(str)
    end
end

-- Don't cache registered guide, aka Guide-N.lua
-- They are part of the base bundle, so caching is a waste of RAM
function addon.RegisterGuide(groupOrContent, text, defaultFor)
    if addon.db then -- Only used when user-imported RegisterGuide string pasted
        local importedGuide,errorMsg = RXPG.ParseGuide(groupOrContent, text, defaultFor)

        return not errorMsg and RXPG.AddGuide(importedGuide)
    else
        table.insert(embeddedGuides, {
            groupOrContent = groupOrContent,
            text = text,
            defaultFor = defaultFor
        })
    end
end

function addon.CacheGuide(key,guide,enabledFor,guideVersion)
    if type(guide) == "table" then
        guide.groupOrContent = LibDeflate:CompressDeflate(guide.groupOrContent)
        addon.db.profile.guides[key] = guide
    else
        guide = guide:gsub("%s-[\r\n]+%s*","\n")
        guide = guide:gsub("[\t ]+"," ")
        guide = guide:gsub("%-%-[^\n]*","")
        guide = LibDeflate:CompressDeflate(guide)
        addon.db.profile.guides[key] =
            RXPG.BuildCacheObject(guide,enabledFor,guideVersion)
    end
end

-- Parse and cache one-time guide
function addon.ImportGuide(guide)
    if addon.db then -- Addon loaded already
        local importedGuide,errorMsg = RXPG.ParseGuide(guide)
        if errorMsg or RXPG.AddGuide(importedGuide) then
            --print(errorMsg,importedGuide.name)
            importedGuide.imported = true
            addon.CacheGuide(importedGuide.key,guide,
                              importedGuide.enabledFor,importedGuide.version)
        end
        return importedGuide
    else -- Addon not loaded, add to queue
        table.insert(embeddedGuides,
                     RXPG.BuildCacheObject(guide))
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

local cachedData = {}
function addon.ReadCacheData(mode)
    if not cachedData.base then
        cachedData.base = select(2, BNGetInfo()) or addon:read(RXPData.cache)
        local k = #cachedData.base
        if k > 16 then
            cachedData.base = cachedData.base:sub(k - 15, -1)
        elseif k < 16 then
            cachedData.base = cachedData.base .. strchar(42):rep(16 - k)
        end
    end
    if not cachedData.number then
        cachedData.number = LibDeflate:Adler32(cachedData.base)
        cachedData.string = tostring(cachedData.number)
    end

    return cachedData[mode] or cachedData.base
end

local buffer = {}
local bufferSize = 0
function RXPG.ImportString(str)
    bufferSize = 0
    for hash, content in string.gmatch(str, "(%-?%d+):([%w%+%/%=]+)") do
        if DEBUG then
            print('g:', hash)
        end
        local validData, data = CheckDataIntegrity(content, tonumber(hash))
        if validData then
            table.insert(buffer, data)
            bufferSize = bufferSize + 1
        else
            print("Error loading guide ID " .. hash)
        end
    end

    for n = 1, bufferSize do RXPG.ProcessBuffer() end
    RXPFrame.GenerateMenuTable()
    return bufferSize > 0
end

function RXPG.ProcessBuffer()
    if #buffer > 0 then
        local parseGuide = RXPGuides.ImportGuide(buffer[1])
        table.remove(buffer, 1)
        if type(parseGuide) == "function" then
            return parseGuide()
        end
        return true
    else
        bufferSize = 0
    end
end

function RXPG.LoadEmbeddedGuides()
    if not addon.db then
        error('Initialization error, db not set')
        return
    end

    for _, guideData in pairs(embeddedGuides) do
        local guide,errorMsg = RXPG.ParseGuide(guideData.groupOrContent, guideData.text,
                                      guideData.defaultFor)

        if not errorMsg and RXPG.AddGuide(guide) and guideData.cache then
            -- Cache if guide successfully loads and is imported not default
            --addon.CacheGuide(guide.key,guideData,guide.enabledFor,guide.version)
        end
    end

    embeddedGuides = nil
end

function RXPG.BuildGuideKey(guide)
    return string.format("%s|%s|%s|%s", addon.ReadCacheData("string"), guide.group,
                         guide.subgroup or '', guide.name)
end

function RXPG.LoadCachedGuides()
    if not addon.db then
        error('Initialization error, db not set')
        return
    end

    for key, guideData in pairs(addon.db.profile.guides) do
        local guide,errorMsg
        local enabledFor = guideData.enabledFor
        if (not enabledFor or applies(enabledFor)) and
                         key:match("^(%-?%d+)|") == addon.ReadCacheData("string") then
            guide = LibDeflate:DecompressDeflate(guideData.groupOrContent)
            guide,errorMsg = RXPG.ParseGuide(guide)
        end
        if not errorMsg and guide then
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

function RXPG.ParseGuide(groupOrContent, text, defaultFor)
    -- TODO decode guide contents
    if not groupOrContent then return end

    local playerLevel = UnitLevel("player")
    local parentGroup

    if not (groupOrContent and text) then
        local currentGroup
        text = groupOrContent:gsub("%-%-[^\r\n]*[\r\n]+", "\n")
        text = text:gsub("(#group[ \t]*)([^\r\n]-)[ \t]*<<[ \t]*([^\r\n]-)[ \t]*[\r\n]+", function(prefix,group,t)
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
                print("\nError parsing guide: Invalid guide group",
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
            if skipGuide then
                guide.key = RXPG.BuildGuideKey(guide)
                guide.version = tonumber(guide.version) or 0
                addon.guide = false
                return guide,skipGuide
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
                    addon.guide = false
                    return nil,version
                end
            elseif currentStep == 0 then
                --print(line)
                line = line:gsub("(.-)%s*<<%s*(.+)", function(code, tag)
                    local isValid = applies(tag)
                    if #code == 0 then
                        skipGuide = not isValid and tag
                        guide.enabledFor = guide.enabledFor or tag
                        --print("$"..code.."$",tag,#code)
                    else
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
    if not guide.name then error('Guide has no name') end

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
    --print(guide.name,"\n",guide.enabledFor)
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
