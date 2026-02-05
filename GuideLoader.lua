local addonName, addon = ...
addon.guides = {}
addon.guideList = {}
addon.guideIds = {}

local class = addon.player.class
local race = addon.player.race

local locale = GetLocale()
local fmt, tremove, tinsert = string.format, tremove, table.insert
local strchar = string.char
local strbyte = string.byte
local bitand = bit.band
local bitxor = bit.bxor
local LibDeflate = LibStub("LibDeflate")
local RXPGuides = addon.RXPGuides

local game = strlower(addon.game)
--local suffix = 1
-- Alias addon.locale.Get
local L = addon.locale.Get

-- File guides and string-imports need different load order support
local embeddedGuides = {}

addon.minGuideVersion = 0
addon.maxGuideVersion = 0
local aCache = {}

local function applies(textEntry,customClass,func)
    if textEntry then
        --if not(textEntry:match("Alliance") or textEntry:match("Horde")) then return true end
        local function parse(text,customClass)
            local isMatch = false
            text = text:gsub("(!?)%(%s*(.-)%s*%)",function(op,m)
                if parse(m,customClass) ~= (op == "!") then
                    return class
                else
                    return "NULL"
                end
            end)
            local faction = addon.player.faction
            local playerLevel = UnitLevel("player") or 1
            for str in string.gmatch(text, "[^/]+") do
                local v = true
                for entry in string.gmatch(str, "!?[%w%d]+") do
                    local state = false
                    local gendercheck
                    if entry:sub(1, 1) == "!" then
                        entry = entry:sub(2, -1)
                        state = true
                    end
                    local level = tonumber(entry) or 0xfff
                    local uppercase = strupper(entry)
                    if entry == "Undead" then
                        entry = "Scourge"
                    elseif uppercase == "DK" then
                        uppercase = "DEATHKNIGHT"
                    elseif uppercase == "MALE" and UnitSex("player") == 2 or
                        uppercase == "FEMALE" and UnitSex("player") == 3 then
                        gendercheck = true
                    elseif uppercase == "SOD" and addon.player.season == 2 then
                        entry = faction
                    elseif uppercase == "DF" then
                        entry = "RETAIL"
                    elseif faction == "Neutral" and not customClass and (entry == "Alliance" or entry == "Horde") then
                        entry = faction
                    elseif entry == "Haranir" then
                        entry = "Harronir"
                    end
                    local customCheck = func and func(entry, uppercase)
                    v = (not(gendercheck or uppercase == class or entry == race or
                             entry == faction or playerLevel >= level or uppercase == addon.game or entry == customClass or entry == locale or customCheck) ==
                             state)
                    if not v then
                        break
                    end
                end
                if v then
                    isMatch = true
                    break
                end
            end
            --print(isMatch and "TRUE" or "FALSE",'-',text)
            return isMatch
        end
        local match
        if not aCache[textEntry] then
            match = parse(textEntry,customClass)
            aCache[textEntry] = match
            return match
        else
            return aCache[textEntry]
        end
    end
    return true
end

addon.applies = applies
addon.farmGuides = 0

addon.affix = function(smin, smax)
    if smax:len() == 1 then smax = "0" .. smax end
    return "0" .. smin .. "-" .. smax
end

function addon.RegisterGroup(guideGroup, parentGroup)
    if not RXPGuides[guideGroup] then RXPGuides[guideGroup] = {} end
    local group = RXPGuides[guideGroup]
    if parentGroup then
        if not RXPGuides[parentGroup] then RXPGuides[parentGroup] = {} end
        local parent = RXPGuides[parentGroup]
        parent.__index = parent
        setmetatable(parent, addon.functions)
        setmetatable(group, parent)
    else
        setmetatable(group, addon.functions)
    end
end

-- Load guide into addon options
function addon.AddGuide(guide)
    -- Not applicable (e.g. wrong faction), rely on upstream functions to report parsing errors
    if not guide then return false end
    addon.GroupOverride(guide)
    local loadedGuide
    for _, checkGuide in ipairs(addon.guides) do
        if guide.key == checkGuide.key then
            loadedGuide = checkGuide
            break
        end
    end

    if loadedGuide and addon.settings.profile.debug then
        local debugText
        if guide.version == loadedGuide.version then
            debugText = fmt('Overwriting (%s) v%d', guide.key, guide.version)
        elseif guide.version > loadedGuide.version then
            debugText = fmt(
                            'Newer guide for (%s) already exists (%s) >= checkGuide (%d)',
                            guide.key, guide.version, loadedGuide.version)
        else
            debugText = fmt('Loading new version for (%s) v%d', guide.key,
                            guide.version)
        end

        addon.settings:UpdateImportStatusHistory(debugText)
    end
    local group = guide.group
    if guide.lowPrio then
        group = guide.lowPrio
    end
    local index = fmt("%s||%s",guide.group,guide.name)
    addon.RegisterGroup(group,guide.group ~= group and guide.group)

    if not addon.guideList[group] then
        addon.guideList[group] = {}
        addon.guideList[group].names_ = {}
    end
    --print(group,guide.group ~= group and guide.group)
    addon.guideList[group].weight_ = tonumber(guide.groupweight) or addon.guideList[group].weight_

    local list = addon.guideList[group]

    if guide.guideId then
        addon.guideIds[guide.guideId] = index
    end

    if loadedGuide then -- guide exists, but new version
        for i, checkGuide in ipairs(addon.guides) do
            if guide.key == checkGuide.key then
                addon.guides[i] = checkGuide
                break
            end
        end
    else -- guide doesn't exist, so insert
        if not addon.guides[index] then
            tinsert(list.names_, guide.name)
        end
        addon.guides[index] = guide

        list[guide.name] = index
        --TODO: remove this part
        if not guide.lowPrio and guide.defaultFor and
            not addon.defaultGuide then addon.defaultGuide = guide end
    end
    return true
end

function addon.RemoveGuide(guideKey)
    if not guideKey then return false end

    local loadedGuide
    for _, checkGuide in ipairs(addon.guides) do
        if guideKey == checkGuide.key then
            loadedGuide = checkGuide
            break
        end
    end

    if not loadedGuide then
        addon.comms.PrettyDebug('Guide not found (%s)', guideKey)

        return
    end

    if addon.currentGuide and addon.currentGuide.key == guideKey then
        addon:LoadGuide(addon.emptyGuide)
    end

    local list = addon.guideList[loadedGuide.group]

    for i, name in ipairs(list.names_) do
        if loadedGuide.name == name then
            tremove(list.names_, i)
            break
        end
    end

    for name, _ in pairs(list) do
        if type(name) ~= "table" then
            if loadedGuide.name == name then
                list[name] = nil
                list.sorted_ = false
                break
            end
        end
    end

    -- Doesn't actually remove from addon.guides
    for i, checkGuide in pairs(addon.guides) do
        if loadedGuide.key == checkGuide.key then
            -- soft delete, hard delete messes up sorting
            addon.guides[i] = addon.emptyGuide
            break
        end
    end

    if next(list.names_) == nil then addon.guideList[loadedGuide.group] = nil end

    addon:ScheduleTask(addon.RXPFrame.GenerateMenuTable)

    return true
end

function addon.DeserializeTable(tbl)
    local t = {}
    for k, v in pairs(tbl) do
        if type(v) == "number" then v = strchar(v) end
        tinsert(t, v)
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
            if not n then
                addon.comms.PrettyDebug('Failed to ReadCacheData') -- TODO locale
                return false, L('Failed to ReadCacheData')
            end
            for k = 0, 255 do S[k] = n[k] end

            i, j, str = 0, 0, addon.read(str)

            for k = 0, #str - 1 do
                i = bitand(i + 1, 0xff)
                j = bitand(j + S[i], 0xff)
                S[i], S[j] = S[j], S[i]
                tinsert(buffer, strchar(
                                 bitxor(strbyte(str, k + 1),
                                        S[bitand((S[i] + S[j]), 0xff)])))
            end

            str = LibDeflate:DecompressZlib(table.concat(buffer))

            if str then return h1 % 4294967296 == addon.A32(str), str end

            return false,
                       L'Account mismatch, import string does not apply to current account' -- TODO locale
        end
    else
        return addon.A32(str)
    end
end

local ncache = 0
function addon.CacheGuide(key, guide, enabledFor, guideVersion, metadata)
    ncache = ncache + 1
    local profileKey = key .. "|" .. ncache
    if type(guide) == "table" then
        guide.groupOrContent = LibDeflate:CompressDeflate(guide.groupOrContent)
        guide.key = key
        addon.db.profile.guides[profileKey] = guide
    else
        guide = guide:gsub("%s-[\r\n]+%s*", "\n")
        guide = guide:gsub("[\t ][\t ]+", " ")
        guide = guide:gsub("%-%-[^\n]*", "")
        guide = "--" .. addon.ReadCacheData("string") .. "\n" .. guide
        guide = LibDeflate:CompressDeflate(guide)
        --print(profileKey:gsub("|","||"))
        addon.db.profile.guides[profileKey] = addon.BuildCacheObject(guide, enabledFor,
                                                             guideVersion, metadata, key)
    end
end

-- Parse and cache one-time guide
function addon.ImportGuide(guide, text, defaultFor, cache)
    if addon.db then -- Addon loaded already
        local importedGuide, errorMsg, metadata = addon.ParseGuide(guide)
        if errorMsg ~= "#0" and importedGuide and
            ((errorMsg and not cache) or addon.AddGuide(importedGuide)) then
            -- print(errorMsg,importedGuide.name)
            importedGuide.key = importedGuide.key or addon.BuildGuideKey(importedGuide)
            --print(importedGuide.key,importedGuide.enabledFor)
            importedGuide.imported = true
            addon.CacheGuide(importedGuide.key, guide, importedGuide.enabledFor,
                             importedGuide.version, metadata)
        end
        return importedGuide
    else -- Addon not loaded, add to queue
        tinsert(embeddedGuides, {
            groupOrContent = guide,
            text = text,
            defaultFor = defaultFor,
            cache = true
        })
    end
end

function addon.RegisterGuide(groupOrContent, text, defaultFor)
    if not groupOrContent then
        return error(L'Error: Guide has no contents')
    elseif addon.addonLoaded then
        local importedGuide, errorMsg = addon.ParseGuide(groupOrContent, text,
                                                        defaultFor)

        return not errorMsg and addon.AddGuide(importedGuide)
    else
        tinsert(embeddedGuides, {
            groupOrContent = groupOrContent,
            text = text,
            defaultFor = defaultFor
        })
    end
end

function addon.BuildCacheObject(groupOrContent, enabledFor, guideVersion, metadata, key)
    return {
        groupOrContent = groupOrContent,
        cache = true,
        enabledFor = enabledFor,
        version = guideVersion,
        metadata = metadata,
        key = key,
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
        local base = select(2, _G[addon.DeserializeTable(addon.base)]())
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
        cachedData.number = cachedData.number - math.floor(addon.version / 1e2)
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

local importBuffer = {}
addon.importBufferSize = 0
local showConfigFrame = false
local importIndex = 0
local guideContent,guideLength,guideId
function addon.ImportString(str, workerFrame, showFrame)
    showConfigFrame = showFrame
    importIndex = 0
    local errorMsg
    str = str:gsub("^%D+", "")
    str = str:gsub("%D+$", "")
    local nGuides = str:match("^(%d+)|")
    local validHash = str:match("|(%d+):")
    local base = str:match("|(%d+)$")
    if not nGuides or not base or not validHash then
        addon.settings:UpdateImportStatusHistory(
                                                     L"Incomplete or invalid encoded string")
        return false, L("Incomplete or invalid encoded string")
    end

    if tonumber(base) < addon.version then
        addon.settings:UpdateImportStatusHistory(
            L"Incompatible guide game %d version vs %d", tonumber(base),
            addon.version)
        return false, fmt(L"Incompatible guide, for %d version vs %d",
                          tonumber(base), addon.version)
    end

    for hash, mode, content in str:gmatch("(%-?%d+)(%D)([A-Za-z0-9%+%/%=]+)%%") do
        local validData, dataOrError = CheckDataIntegrity(content,
                                                          tonumber(hash),
                                                          strbyte(mode))
        if validData and dataOrError then
            for v in dataOrError:gmatch("[^%z]+") do
                tinsert(importBuffer, v)
            end
        else
            errorMsg = (dataOrError or L'Failed integrity check') .. '\n' ..
                           L("Total guides loaded: %d/%s") -- TODO locale
            break
        end
    end

    addon.importBufferSize = #importBuffer

    if addon.importBufferSize > 0 then
        if workerFrame then
            workerFrame:SetScript("OnUpdate", addon.ProcessInputBuffer)
        else
            while addon.ProcessInputBuffer() do end
        end
    end

    if not errorMsg then return true end

    return false, errorMsg:format(addon.importBufferSize, nGuides)
end

function addon.ProcessInputBuffer(workerFrame)
    local parseGuide

    if #importBuffer > 0 then
        parseGuide = tremove(importBuffer)
        parseGuide = RXPGuides.ImportGuide(parseGuide)
        if importIndex == 0 and showConfigFrame then
            addon.settings.OpenSettings('Import')
        end
        importIndex = importIndex + 1
        if type(parseGuide) == "table" and parseGuide.name then
            addon.settings:UpdateImportStatusHistory(
                L("Loading Guides") .. "... (%d/%d)",
                addon.importBufferSize - #importBuffer, addon.importBufferSize)
        end
        return true
    elseif workerFrame then
        showConfigFrame = false
        importIndex = 0
        workerFrame:SetScript("OnUpdate", nil)
        if guideContent or guideLength or guideId then
            addon.db.profile.guideContent = guideContent
            addon.db.profile.guideLength = guideLength
            addon.db.profile.guideId = guideId
            guideContent,guideLength,guideId = nil,nil,nil
        end
    end

    if addon.importBufferSize > 0 then
        addon.settings:UpdateImportStatusHistory(L("Guides Loaded Successfully"))
        addon.importBufferSize = 0
    end

    addon:ScheduleTask(addon.RXPFrame.GenerateMenuTable)

    return false
end

local embeddedGuidesLoaded
function addon.LoadEmbeddedGuides()
    if not addon.db then
        error('Initialization error, db not set')
        return
    end
    if embeddedGuidesLoaded then
        return
    else
        embeddedGuidesLoaded = true
    end
    --A1 = GetTimePreciseSec()
    if RXPCData.guideDisabled[0] ~= #embeddedGuides then
        RXPCData.guideDisabled = {[0] = #embeddedGuides}
    end
    for n, guideData in ipairs(embeddedGuides) do
        if guideData.cache then
            addon.ImportGuide(guideData.groupOrContent, guideData.text,
                              guideData.defaultFor, true)
        else
            local guide, errorMsg, metadata, length, key, group, name
            local enabled = true
            if RXPCData.guideDisabled[n] then
                enabled = false
            elseif not guideData.text then
                length = guideData.groupOrContent:len()
                local index = guideData.groupOrContent:find("[\r\n]%s*step")
                local header = index and guideData.groupOrContent:sub(1,index)
                if header then
                    local subgroup, enabledFor
                    enabled = false
                    for line in header:gmatch("[^\r\n]+") do
                        if subgroup and name and group and enabledFor and enabled then
                            break
                        end
                        line = line:gsub("%-%-.*$","")
                        line = line:gsub("^%s*(#.+)%s*<<%s*(.+)", function(l,t)
                            if not applies(t) then
                                return ""
                            else
                                return l
                            end
                        end)
                        if not enabled then
                            local u = strupper(line)
                            if u:find("#" .. addon.game) or
                                (addon.game == "RETAIL" and u:find("#DF")) then
                                enabled = true
                            end
                        end
                        enabledFor = enabledFor or line:match("^%s*<<%s*(.-)%s*$")
                        group = group or line:match("^%s*#group%s+(.-)%s*$")
                        subgroup = subgroup or line:match("^%s*#subgroup%s+(.-)%s*$")
                        name = name or line:match("^%s*#name%s+(.-)%s*$")
                    end
                    enabled = enabled and (not enabledFor or applies(enabledFor))

                    if enabled then
                        key = addon.BuildGuideKey(group,"",name)
                        guide = key and RXPCData.guideMetaData[key]
                    else
                        RXPCData.guideDisabled[n] = length
                    end
                end
                --print('g-ok',guide and guide.length)
            end

            if guide and guide.length == length then
                --print('w',guide.key)
                if (guide.defaultFor and not applies(guide.defaultFor)) then
                    guide.lowPrio = "*" .. group
                    --print(group)
                else
                    guide.lowPrio = nil
                end
                errorMsg = not (not guide.enabledFor or applies(guide.enabledFor))
                --print(guide,errorMsg,guide.enabledFor)
                addon.guideCache[guide.key] = function(self)
                    local tbl = addon.ParseGuide(guideData.groupOrContent,guideData.text)
                    if RXPCData and RXPCData.guideMetaData then
                        RXPCData.guideMetaData[guide.key] = metadata
                    end
                    if addon.player.faction == "Neutral" and tbl then
                        tbl.parse = self
                    end
                    return tbl
                end
            elseif enabled then
                guide, errorMsg, metadata =
                    addon.ParseGuide(guideData.groupOrContent,
                                    guideData.text,
                                    guideData.defaultFor, true, group, key)
                    --print('n2',guide and guide.key)
                enabled = not errorMsg
                if key and metadata then
                    local cleanup = {}
                    for guideKey,data in pairs(RXPCData.guideMetaData) do
                        if data.key == guide.key then
                            tinsert(cleanup,guideKey)
                        end
                    end
                    for _,guideKey in pairs(cleanup) do
                        RXPCData.guideMetaData[guideKey] = nil
                    end
                    RXPCData.guideMetaData[key] = metadata
                end
            end
            if enabled then
                if name and group and addon.guides[group .. "||" .. name] then
                    addon.error("Error trying to load a guide already parsed: " .. group .. "/" .. name)
                end
                addon.AddGuide(guide)
            end
        end
    end

    if addon.addonLoaded then
        embeddedGuides = nil
    else
        embeddedGuides = {}
    end

    --A1 = GetTimePreciseSec() - A1
    addon.RXPFrame.GenerateMenuTable()
end

function addon.BuildGuideKey(arg1,arg2,arg3)
    if type(arg1) == "table" then
        return fmt("%s|%s|%s", arg1.group, arg1.subgroup or '',
                         arg1.name)
    elseif arg1 and arg3 then
        return fmt("%s|%s|%s", arg1, arg2 or '',
                         arg3)
    end
end

function addon.LoadCachedGuides()
    if not addon.db then
        error('Initialization error, db not set')
        return
    end
    local string  = addon.string or RXPString
    if string then
        local header = string:sub(1,30)
        local n,id,content = header:match("^(%d+)|(%-?%d+):(.*)")
        n = tonumber(n)
        id = tonumber(id)
        if n and n ~= addon.db.profile.guideLength or id and id ~= addon.db.profile.guideId or content and content ~= addon.db.profile.guideContent then
            guideId = id
            guideLength = n
            guideContent = content

            local isValid = addon.ImportString(string,addon.RXPFrame,true)
            if isValid then
                addon.RXPFrame:Show()
                addon.db.profile.guides = {}
            end
            --print(addon.string:len())
            return
        end
    end

    for key, guideData in pairs(addon.db.profile.guides) do
        if guideData.key then
            key = guideData.key
        else
            key = key:match("^[^|]+|[^|]-|[^|]+") or key
        end
        local guide, errorMsg, metadata
        local enabled = not guideData.enabledFor or
                            applies(guideData.enabledFor)
        if addon.release ~= RXPData.release then
            guideData.metadata = nil
        end
        if enabled then
            if guideData.metadata and
                    guideData.metadata.length == addon.ReadCacheData("string") then
                local data = guideData
                addon.guideCache[key] = function(self)
                    local g = LibDeflate:DecompressDeflate(data.groupOrContent)
                    local tbl = addon.ParseGuide(g)
                    if RXPCData and RXPCData.guideMetaData then
                        RXPCData.guideMetaData[guide.key] = metadata
                    end
                    if addon.player.faction == "Neutral" and tbl then
                        tbl.parse = self
                    end
                    tbl.imported = true
                    return tbl
                end
                guide = guideData.metadata
                local groupName = guide.group:gsub("^%*","")
                if (guide.defaultFor and not applies(guide.defaultFor)) then
                    guide.lowPrio = "*" .. groupName
                else
                    guide.lowPrio = nil
                end
            else
                guide = LibDeflate:DecompressDeflate(guideData.groupOrContent)
                if guide:find("^--" .. addon.ReadCacheData("string")) then
                    guide, errorMsg, metadata = addon.ParseGuide(guide)
                    if metadata then
                        guideData.metadata = metadata
                    end
                else
                    guide = nil
                end
            end
            if not errorMsg and guide then
                guide.imported = true
                addon.AddGuide(guide)
            else
                addon.comms.PrettyDebug(L('Unable to decode cached guide (%s), removed'), key)
                addon.db.profile.guides[key] = nil
            end
        end
    end
end

function addon.LoadAllGuides()
    for _,guide in pairs(addon.guides) do
        if not guide.steps then
            addon:FetchGuide(guide)
        end
    end
end

local function parseLine(linetext,step,parsingLogic)
    if not parsingLogic then
        parsingLogic = addon.functions
    end
    addon.step = step
    if addon.lastObjective and addon.lastObjective.step ~= step then
        addon.lastObjective = nil
    end
    if addon.lastElement and addon.lastElement.step ~= step then
        addon.lastElement = nil
    end

    local line = linetext
    local classtag
    line = line:gsub("%s*<<%s*(.+)", function(t)
        classtag = t
        return ""
    end)
    if classtag and not applies(classtag) then return end

    if step then
        local steptag, assignment, value = line:match("^#(%S+)%s*(=?)%s*(.*)")
        if steptag and steptag ~= "" then
            if not step[steptag] then
                if assignment == "=" then
                    step[steptag] = parsingLogic[value]
                else
                    step[steptag] = value
                end
            end
            return
        end
    end

    local element
    local text
    line = line:gsub("%s*>>%s*(.*)", function(t)
        if t ~= "" then text = t end
        return ""
    end)

    line:gsub("^%.(%S+)%s*(.*)", function(tag, args)
        local t = {}

        if addon.separators[tag] then
            addon.separators[tag](t,args)
        else
            args = args:gsub("%s*,%s*", ",")
            for arg in string.gmatch(args, "[^,]+") do
                tinsert(t, arg)
            end
        end
        -- print(tag,args,type(guide))
        if parsingLogic[tag] then
            element = parsingLogic[tag](linetext, text, unpack(t))
            if not element then return end
            element.tag = tag
            element.step = step
            if element.parent then
                element.parent = addon.lastObjective
            end
        else
            local ltext
            if #linetext > 150 then
                ltext = linetext:sub(1,150)
            else
                ltext = linetext
            end
            return addon.error(L("Error parsing guide") .. " " ..
                                   addon.currentGuideName ..
                                   ": Invalid function call (." .. tag ..
                                   ")\n" .. ltext)
        end
    end)

    if text and not element then
        element = {text = text, textOnly = true, step = step}
    elseif line:sub(1, 1) == "+" then
        element = {text = line:sub(2, -1), step = step}
        addon.lastObjective = element
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
    if element and (element.text and not element.textOnly or element.dynamicText) then
        addon.lastObjective = element
    end

    --[[if RXPData.localeTable and element and element.text then
        RXPData.localeTable[element.text] = ""
    end]]
    if not step then
        if element then
            element.parent = nil
        --[[else
            addon.error(L("Error parsing ") .. addon.currentGuideName .. ':'
                 .. linetext)
        ]]
        end
    elseif step.elements and element then
        tinsert(step.elements, element)
        addon.lastElement = element
    end
    return element
end
addon.ParseLine = parseLine

function addon.ParseGuide(groupOrContent, text, defaultFor, isEmbedded, group, key)

    addon.lastObjective = nil
    if not groupOrContent then return end

    local playerLevel = UnitLevel("player")
    local parentGroup
    local length
    if isEmbedded then
        length = groupOrContent:len()
    else
        length = groupOrContent:match("^%-%-(%d+)")
    end
    if not (groupOrContent and text) then
        local currentGroup = group
        if type(length) ~= "string" then
            text = groupOrContent:gsub("%-%-[^\r\n]*[\r\n]+", "\n")
        else
            text = groupOrContent
        end
        if not group then
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
        end
        if currentGroup then
            groupOrContent = currentGroup
        else
            groupOrContent = text:match("^%s*#group%s+(.-)%s*[\r\n]") or
                                 text:match("[\r\n]%s*#group%s+(.-)%s*[\r\n]")
            if not groupOrContent then
                addon.comms.PrettyPrint("\n%s: Invalid guide group %s",
                                        text:match("#name%s+.-%s*[\r\n]") or "", L("Error parsing guide") or "")
                return
            end
        end
    else
        text = text:gsub("%-%-[^\r\n]*[\r\n]", "\n")
    end

    local guide = {}
    if groupOrContent:sub(1, 1) == "+" then
        addon.farmGuides = addon.farmGuides + 1
        guide.farm = true
    end
    addon.guide = guide

    guide.group = groupOrContent
    addon.currentGuideGroup = groupOrContent

    local currentStep = 0
    guide.steps = {}

    local parsingLogic
    local step
    local skip
    local skipGuide
    local linenumber = 0
    local game = strlower(addon.game)

    for line in string.gmatch(text, "[^\n\r]+") do
        linenumber = linenumber + 1
        line = line:gsub("^%s+", "")
        line = line:gsub("%s+$", "")
        -- print(line)
        if line:sub(1, 4) == "step" then
            if not addon.currentGuideName then
                error(L("Error parsing guide") .. ": " .. L("Guide has no name") .. "\n" .. text)
            end
            if currentStep == 0 then
                if guide.df then guide.retail = true end
                if ((not guide[game] and
                    (guide.classic or guide.tbc or guide.wotlk or guide.df or guide.retail or guide.cata)) or not guide.name or not guide.group) then
                    -- print(game,guide[game],guide.name)
                    skipGuide = "#0"
                end
            end
            if skipGuide then
                guide.version = tonumber(guide.version) or 0
                addon.minGuideVersion = math.min(guide.version,addon.minGuideVersion)
                addon.maxGuideVersion = math.max(guide.version,addon.maxGuideVersion)
                addon.guide = false
                addon.lastObjective = nil
                guide.key = guide.key or key
                return guide, skipGuide
            elseif currentStep == 0 then
                guide.key = guide.key or key or addon.BuildGuideKey(guide)
                guide.guideId = addon.A32(guide.key)
                addon.RegisterGroup(guide.group)
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
                step.stepId = linenumber + guide.guideId
                --step.index = currentStep
                addon.step = step
                --addon.lastObjective = nil
                parsingLogic = addon.functions
            end
        elseif not skip then
            if currentStep > 0 then
                parseLine(line,step,parsingLogic)
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
                                local func = addon.functions[value]
                                guide[tag] = func and func() or value
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
    guide.group = guide.group or groupOrContent
    groupOrContent = addon.GroupOverride(guide) or groupOrContent

    if addon.game == "TBC" and guide.classic and not groupOrContent:find("TBC") and groupOrContent:sub(1,1) ~= "+" then
        if guide.subgroup then
            local range = guide.subgroup:match("( %d+%-%d+)$")
            if range then
                guide.subgroup = L"Classic"..range
            end
        end
        if groupOrContent:sub(1,8) == "RestedXP" then
            groupOrContent = "C-"..groupOrContent
            guide.group = groupOrContent
        end
        defaultFor = "!tbc"
    end
    if defaultFor then
        local boost58
        if defaultFor == "58Boost" then
            if playerLevel >= 60 or playerLevel < 58 then
                parentGroup = groupOrContent
                guide.lowPrio = "*" .. groupOrContent
            end
            boost58 = true
        elseif not applies(defaultFor) then
            parentGroup = groupOrContent
            guide.lowPrio = "*" .. groupOrContent
        end
        addon.RegisterGroup(groupOrContent, parentGroup)
        guide.boost58 = boost58
        --guide.lowPrio = groupOrContent
    end

    guide.displayname = addon.settings.ReplaceColors(guide.displayname or guide.name)
    guide.name = guide.name:gsub("^(%d)-(%d%d?)", addon.affix)

    guide.key = addon.BuildGuideKey(guide)
    guide.version = tonumber(guide.version) or 0
    addon.minGuideVersion = math.min(guide.version,addon.minGuideVersion)
    addon.maxGuideVersion = math.max(guide.version,addon.maxGuideVersion)

    addon.guide = false
    addon.lastObjective = nil
    -- print(guide.name,"\n",guide.enabledFor)

    local metadata = {length = length}

    for k,v in pairs(guide) do
        if not (type(v) == "table" or type(v) == "function") then
            metadata[k] = v
        end
    end
    metadata.lowPrio = nil
    metadata.defaultFor = defaultFor
    return guide,nil,metadata
end


function addon.GroupOverride(guide,arg2)
    local function SwapGroup(grp,subgrp)
        local prefix = ""
        if grp:sub(1,1) == "*" then
            prefix = "*"
        end
        --local group,subgroup
        local swap
        if addon.game == "CLASSIC" or guide.classic then
            local faction = grp:match("RestedXP ([AH][lo][lr][id][ea]%w*)")
            if faction == "Alliance" then
                subgrp = subgrp or grp:gsub("RestedXP Alliance", "RXP Speedrun Guide")
                grp = prefix .. "RestedXP Speedrun Guide (A)"
                swap = true
                --print('\n',grp,subgrp,faction,type(guide) == "table" and guide.name,'\n')
            elseif faction == "Horde" then
                subgrp = subgrp or grp:gsub("RestedXP Horde", "RXP Speedrun Guide")
                grp = prefix .. "RestedXP Speedrun Guide (H)"
                swap = true
                --print(group,guide.subgroup,faction,guide.group,guide.name)
            end
        elseif addon.game == "TBC" then
            if not guide.classic then
                local range = subgrp and subgrp:match("^RestedXP Survival.-( %d+%-%d+)$")
                if range then
                    subgrp = "TBC Survival Guide"..range
                    swap = true
                else
                    range = subgrp and subgrp:match("^RestedXP [AH][lo][lr][id][ea]%w*( %d+%-%d+)")
                    if range then
                        subgrp = "TBC Speedrun Guide"..range
                        swap = true
                    end
                end
                local SG = grp:match("^RestedXP Survival Guide(.*)")
                if SG then
                    swap = true
                    grp = "RXP TBC Survival Guide"..SG
                end
            end
        else
            if grp:match("RXP MoP 1%-80") then
                return grp:gsub("RXP MoP 1%-80","RXP MoP 1-60"),subgrp
            end
        end
        return grp,subgrp,swap
    end

    if type(guide) == "table" then
        if guide.group then
        --if true then  return end
            local group,swap
            group, guide.subgroup,swap = SwapGroup(guide.group,guide.subgroup)
            guide.group = group
            if swap then
                guide.next = guide.next and guide.next:gsub("[^;]-\\","")
            end
            --print(group,'//',guide.subgroup)
            return group
        end
    elseif type(guide) == "string" then
        --print(guide,arg2)
        return SwapGroup(guide,arg2)
    else
        return guide
    end
end

if not _G.RXPGuides.RegisterGuide then
    _G.RXPGuides.RegisterGuide = addon.RegisterGuide
end

if not _G.RXPGuides.ImportGuide then _G.RXPGuides.ImportGuide =
    addon.ImportGuide end
