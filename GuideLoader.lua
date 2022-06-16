RXP_.guides = {}
RXP_.guideList = {}

local DEBUG = false

local _, race = UnitRace("player")
local _, class = UnitClass("player")
local faction = UnitFactionGroup("player")
local _, battleTag = BNGetInfo()
local fmt = string.format

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
                if entry == "Undead" then entry = "Scourge" end
                v = v and
                        ((uppercase == class or uppercase == RXP_.version or
                            entry == race or entry == faction or playerLevel >=
                            level) == state)
            end
            isMatch = isMatch or v
        end
        return isMatch
    end
    return true
end

RXP_.applies = applies
RXP_.farmGuides = 0
local RXPG = RXPGuides
local version = strlower(RXP_.version)
local suffix = 1

-- File guides and string-imports need different load order support
local fileGuides = {}

RXP_.affix = function(smin, smax)
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
        setmetatable(parent, RXP_.functions)
        setmetatable(group, parent)
    else
        setmetatable(group, RXP_.functions)
    end
end

-- Load guide into addon options
function RXPG.LoadGuide(guide)
    -- Not applicable (e.g. wrong faction), rely on upstream functions to report parsing errors
    if not guide then return false end

    local loadedGuide
    for _, checkGuide in ipairs(RXP_.guides) do
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

    if not RXP_.guideList[guide.group] then
        RXP_.guideList[guide.group] = {}
        RXP_.guideList[guide.group].names_ = {}
    end

    local list = RXP_.guideList[guide.group]

    if loadedGuide then -- guide exists, but new version
        for i, checkGuide in ipairs(RXP_.guides) do
            if guide.key == checkGuide.key then
                RXP_.guides[i] = checkGuide
                break
            end
        end
    else -- guide doesn't exist, so insert
        table.insert(RXP_.guides, guide)

        if list[guide.name] then
            suffix = suffix + 1
            guide.name = guide.name .. tostring(suffix)
        end

        table.insert(list.names_, guide.name)

        list[guide.name] = #RXP_.guides

        if guide.group:sub(1, 1) ~= "*" and guide.defaultFor and
            not RXP_.defaultGuide then RXP_.defaultGuide = guide end
    end

    return true
end

-- Don't cache registered guide, aka Guide-N.lua
-- They are part of the base bundle, so caching is a waste of RAM
function RXPG.RegisterGuide(groupOrText, text, defaultFor)
    if RXPG.db then -- Shouldn't ever happen, but immediately load guide if db initialized
        local guide = RXPG.ParseGuide(groupOrText, text, defaultFor)
        RXPG.LoadGuide(guide)
    else
        table.insert(fileGuides, {
            groupOrText = groupOrText,
            text = text,
            defaultFor = defaultFor
        })
    end
end

-- Parse and cache one-time guide, aka Import.lua or base64
function RXPG.ImportGuide(groupOrText, text, defaultFor)
    if RXPG.db then -- Addon loaded already, import coming from user string
        local importedGuide = RXPG.ParseGuide(groupOrText, text, defaultFor)
        RXPG.LoadGuide(importedGuide)
    else -- Addon not loaded, add to queue
        table.insert(fileGuides, {
            groupOrText = groupOrText,
            text = text,
            defaultFor = defaultFor,
            cache = true
        })
    end
end

function RXPG.LoadFileGuides()
    if not RXPG.db then
        error('Initialization error, db not set')
        return
    end

    for _, guideData in pairs(fileGuides) do
        local guide = RXPG.ParseGuide(guideData.groupOrText, guideData.text,
                                      guideData.defaultFor)

        if RXPG.LoadGuide(guide) and guideData.cache then
            -- Cache if guide successfully loads and is imported not default
            RXPG.db.profile.guides[RXPG.EncodeGuideKey(guide)] = guideData
        end
    end

    fileGuides = nil
end

function RXPG.BuildGuideKey(guide)
    return string.format("%s/%s/%s", guide.group, guide.subgroup or '',
                         guide.name)
end

function RXPG.EncodeGuideKey(guide)
    -- TODO encode with battleTag https://github.com/RestedXP/RXPGuides-dev/issues/5
    return string.format("%s:%s", battleTag, guide.key)
end

function RXPG.DecodeGuideKey(guide)
    -- TODO decode with battleTag https://github.com/RestedXP/RXPGuides-dev/issues/5
    return guide.key:gsub(battleTag .. ":", '')
end

function RXPG.LoadCachedGuides()
    if not RXPG.db then
        error('Initialization error, db not set')
        return
    end

    local guide
    for key, guideData in pairs(RXPG.db.profile.guides) do
        guide = RXPG.ParseGuide(guideData.groupOrText, guideData.text,
                                guideData.defaultFor)
        if guide and key ~= RXPG.DecodeGuideKey(guide) then
            RXPG.LoadGuide(guide)
        else
            if DEBUG then
                print(fmt('Unable to decode cached guide (%s), removed', key))
            end
            RXPG.db.profile.guides[key] = nil
        end
    end
end

function RXPG.ParseGuide(groupOrText, text, defaultFor)
    if not groupOrText then return end

    local playerLevel = UnitLevel("player")
    local parentGroup

    if not (groupOrText and text) then
        text = groupOrText
        groupOrText = text:match("^%s*#group%s+(.-)%s*%c") or
                          text:match("%c%s*#group%s+(.-)%s*%c")
        if groupOrText then
            groupOrText = groupOrText:gsub("%s*%-%-.*$", "")
        else
            print("Error parsing guide: Invalid guide group",
                  text:match("#name%s+.-%s*%c"))
            return
        end
    end

    local guide = {}

    if groupOrText:sub(1, 1) == "+" then
        RXP_.farmGuides = RXP_.farmGuides + 1
        guide.farm = true
    end
    RXP_.guide = guide

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
                return RXP_.error("Error parsing guide " ..
                                      RXP_.currentGuideName ..
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
        line = line:gsub("%-%-.*", "")
        line = line:gsub("^%s+", "")
        line = line:gsub("%s+$", "")
        -- print(line)
        if line:sub(1, 4) == "step" then
            if not RXP_.currentGuideName then
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
                RXP_.step = step
                lastElement = nil
            end
        elseif not skip then
            if currentStep > 0 then
                if currentStep > 1 or
                    (version == "tbc" and not (guide.classic or guide.wotlk)) or
                    guide[version] then
                    parseLine(line)
                else
                    RXP_.guide = nil
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
                        RXP_.guide = nil
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
                                RXP_.currentGuideName = value
                            end
                        end
                    end)
                end
            end
        end
    end
    -- print(guide)
    RXP_.step = nil
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
    guide.name = guide.name:gsub("^(%d)-(%d%d?)", RXP_.affix)
    if guide.next then
        guide.next = guide.next:gsub("^(%d)-(%d%d?)", RXP_.affix)
    end

    guide.key = RXPG.BuildGuideKey(guide)
    if not guide.version then guide.version = '0' end

    RXP_.guide = nil

    return guide
end

-- parser
