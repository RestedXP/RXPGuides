local _, addon = ...

if addon.gameVersion > 40000 then return end

local strtrim, fmt = strtrim, string.format

local L = addon.locale.Get

addon.talents = addon:NewModule("Talents", "AceEvent-3.0")
addon.talents.functions = {}
addon.talents.guides = {}
addon.talents.maxLevel = GetMaxPlayerLevel()

function addon.talents:Setup() self:RegisterEvent("PLAYER_TALENT_UPDATE") end

function addon.talents.RegisterGuide(text)
    local guide = addon.talents:ParseGuide(text)

    if guide then addon.talents.guides[guide.key] = guide end
end

function addon.talents:ParseGuide(text)
    if not text then return end

    local guide = {steps = {}}

    local step = {}
    local linenumber = 0
    local currentStep = 0

    -- Loop over each line in guide
    for line in string.gmatch(text, "[^\n\r]+") do
        line = line:gsub("^%s+", "")
        line = line:gsub("%s+$", "")
        linenumber = linenumber + 1

        if line:sub(1, 5) == "level" then
            currentStep = currentStep + 1
            step = guide.steps[currentStep]
            print("New level step, now", currentStep)
        elseif currentStep > 0 then -- Parse metadata tags first

            -- Parse function calls
            line:gsub("^%.(%S+)%s*(.*)", function(tag, args)
                local t = {}
                args = args:gsub("%s*,%s*", ",")
                for arg in string.gmatch(args, "[^,]+") do
                    table.insert(t, arg)
                end

                print("Processing tag", tag)
                if self.functions[tag] then
                    local element = self.functions[tag](text, unpack(t))
                    -- (linetext, text, unpack(tag))
                else
                    addon.error(L("Error parsing guide") .. " " ..
                                    (guide.name or 'Unknown') ..
                                    ": Invalid function call (." .. tag .. ")\n" ..
                                    line)
                end
            end)
        elseif line ~= "" then
            -- Parse metadata tags
            line:gsub("^#(%S+)%s*(.*)", function(tag, value)
                print("Parsing tag at", linenumber, tag, value)
                -- Set metadata without overwriting
                if tag and tag ~= "" and not guide[tag] then
                    guide[tag] = value
                end
            end)

        end
    end

    -- Ensure guide tags exist with good defaults
    if not guide.name then
        addon.comms.PrettyPrint("%s: Missing #%s", L("Error parsing guide"),
                                "name")
        return
    end

    guide.displayname = guide.displayname or guide.name
    guide.class = guide.class or addon.player.class
    guide.minLevel = guide.minLevel or 10
    guide.maxLevel = guide.maxLevel or addon.talents.maxLevel
    guide.description = guide.description or
                            fmt("%s - %s", guide.class, guide.name)
    guide.key = guide.key or fmt("%s - %s", guide.class, guide.name)
    -- #guide.next

    _G.RXPD = guide
end

function addon.talents.functions.retrain()
    -- TODO parse level >/< tags
    -- Direct to retrain but don't automate
    -- If denied, don't prompt and just disable all predictions
end

function addon.talents.functions.talent(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id = ...

        local ids = {}
        if type(id) == "table" then
            ids = id
        else
            tinsert(ids, id)
        end

        return element
    end

    for talentID in ipairs(self.element.id) do
        -- TODO Check if already learned
        -- success = LearnTalent(talentID)
        print("Would check if", talentID, "is trained")
    end

end

function addon.talents:PLAYER_TALENT_UPDATE() end
