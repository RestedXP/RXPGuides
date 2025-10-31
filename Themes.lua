local addonName, addon = ...

local fmt = string.format

local themes = {}
addon.themes = themes

themes['RXP Blue'] = {
    background = {12 / 255, 12 / 255, 27 / 255, 1},
    bottomFrameBG = {18 / 255, 18 / 255, 40 / 255, 1},
    bottomFrameHighlight = {54 / 255, 62 / 255, 109 / 255, 1},
    mapPins = {206 / 210, 123 / 210, 1, 1},
    tooltip = "|cFFCE7BFF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/",
    font = _G.GameFontNormal:GetFont(),
    textColor = {1, 1, 1},
    applicable = function() return not RXPCData.GA end,
    author = "RestedXP",
    bgTextures = {edge = "Interface/BUTTONS/WHITE8X8", bottom = "Interface/BUTTONS/WHITE8X8"},
    edges = {
        edge = "Interface/AddOns/" .. addonName .. "/Textures/rxp-borders",
        guideName = "Interface/AddOns/" .. addonName .. "/Textures/rxp-borders"
    }
}

themes['Default'] = themes['RXP Blue']

-- Built-in themes must provide all properties
themes['RXP Red'] = {
    background = {19 / 255, 0 / 255, 0 / 255, 1},
    bottomFrameBG = {31 / 255, 0 / 255, 0 / 255, 1},
    bottomFrameHighlight = {81 / 255, 0 / 255, 0 / 255, 1},
    mapPins = {0.9, 0.1, 0.1, 1},
    tooltip = "|c0000C1FF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/Hardcore/",
    font = _G.GameFontNormal:GetFont(),
    textColor = {1, 1, 1},
    -- applicable = function() return addon.settings.profile.hardcore end,
    -- applicable = true,
    applicable = function() return not RXPCData.GA end,
    author = "RestedXP",
    bgTextures = {edge = "Interface/BUTTONS/WHITE8X8", bottom = "Interface/BUTTONS/WHITE8X8"},
    edges = {
        edge = "Interface/AddOns/" .. addonName .. "/Textures/Hardcore/rxp-borders",
        guideName = "Interface/AddOns/" .. addonName .. "/Textures/Hardcore/rxp-borders"
    }
}

themes['RXP Gold'] = {
    background = {32 / 255, 18 / 255, 0 / 255, 1},
    bottomFrameBG = {48 / 255, 27 / 255, 0 / 255, 1},
    bottomFrameHighlight = {125 / 255, 71 / 255, 0 / 255, 1},
    mapPins = {0.95, 0.15, 0.15, 1},
    tooltip = "|c0000C1FF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/GoldAssistant/",
    font = _G.GameFontNormal:GetFont(),
    textColor = {1, 1, 1},
    applicable = function() return RXPCData.GA == true end,
    -- applicable = true,
    author = "RestedXP"
}

local classColor = _G.RAID_CLASS_COLORS[select(2, UnitClass("player"))]
themes['DarkMode'] = {
    background = {14 / 255, 14 / 255, 14 / 255, 255 / 255},
    bottomFrameBG = {19 / 255, 19 / 255, 19 / 255, 255 / 255},
    bottomFrameHighlight = {classColor.r, classColor.g, classColor.b, 128 / 255},
    mapPins = {classColor.r, classColor.g, classColor.b, 1},
    tooltip = "|c" .. classColor.colorStr,
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/DarkMode/",
    font = _G.GameFontNormal:GetFont(),
    textColor = {1, 1, 1},
    applicable = function() return not RXPCData.GA end,
    -- applicable = true,
    author = "Bypass"
}

themes['RXP Green'] = {
    background = {6 / 255, 23 / 255, 12 / 255, 1},
    bottomFrameBG = {9 / 255, 34 / 255, 17 / 255, 1},
    bottomFrameHighlight = {4 / 255, 113 / 255, 65 / 255, 1},
    mapPins = {0 / 255, 203 / 255, 66 / 255, 1},
    tooltip = "|cFFCE7BFF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/Green/",
    font = _G.GameFontNormal:GetFont(),
    textColor = {1, 1, 1},
    applicable = function() return not RXPCData.GA end,
    author = "RestedXP",
    bgTextures = {edge = "Interface/BUTTONS/WHITE8X8", bottom = "Interface/BUTTONS/WHITE8X8"},
    edges = {
        edge = "Interface/AddOns/" .. addonName .. "/Textures/Green/rxp-borders",
        guideName = "Interface/AddOns/" .. addonName .. "/Textures/Green/rxp-borders"
    }
}

addon.customThemeBase = CopyTable(themes.Default)
addon.customThemeBase.name = "Custom"
addon.customThemeBase.applicable = true
addon.customThemeBase.author = _G.UnitName("player")
addon.customThemeBase.bgTextures.guideName = "Interface/BUTTONS/WHITE8X8"

addon.guideTextColors = {}

-- TODO move into themes
addon.guideTextColors.default = {
    ["RXP_FRIENDLY_"] = "FF00FF25",
    ["RXP_ENEMY_"] = "FFFF5722",
    ["RXP_LOOT_"] = "FF00BCD4",
    ["RXP_WARN_"] = "FFFCDC00",
    ["RXP_PICK_"] = "FFDB2EEF",
    ["RXP_BUY_"] = "FF0E8312"
}

local function themeApplies(applicable, isTable)
    if applicable == nil then
        return true
    elseif type(applicable) == "boolean" then
        return applicable
    elseif type(applicable) == "function" then
        return applicable()
    elseif type(applicable) == "table" and not isTable then
        return themeApplies(applicable.applicable, true)
    end
end

local function GetDefaultTheme()

    if addon.currentGuide and addon.currentGuide.theme and themes[addon.currentGuide.theme] then
        return themes[addon.currentGuide.theme]
    elseif RXPCData.GA then
        return themes["RXP Gold"]
    elseif addon.settings.profile.hardcore then
        return themes["RXP Red"]
    else
        return themes["Default"]
    end
end

function addon:LoadActiveTheme()
    local applicableTheme = addon.settings.profile.activeTheme
    local newTheme
    if applicableTheme == "Default" then
        newTheme = GetDefaultTheme()
    else
        newTheme = themes[applicableTheme]
    end

    -- Reset theme to default if selected goes away

    if not (newTheme and themeApplies(newTheme)) then newTheme = GetDefaultTheme() end

    addon.activeTheme = newTheme

    local RXPFrame = addon.RXPFrame

    if newTheme.bgTextures then
        for name, frame in pairs(RXPFrame.backdrop) do
            local texture = newTheme.bgTextures[name] or RXPFrame.defaultBackground[name]
            frame.bgFile = texture
        end
    end

    RXPFrame.backdrop.edge.edgeFile = addon.GetTexture("rxp-borders") or RXPFrame.defaultEdges.edge
    RXPFrame.backdrop.guideName.edgeFile = addon.GetTexture("rxp-borders") or RXPFrame.defaultEdges.guideName
    RXPFrame.backdrop.bottom.edgeFile = nil

    if newTheme.edges then
        for name, texture in pairs(newTheme.edges) do
            local frame = RXPFrame.backdrop[name]
            frame.edgeFile = texture
        end
    end

    -- TOOD fix legacy calls
    addon.colors = addon.activeTheme

    addon.font = addon.activeTheme.font

    return addon.activeTheme
end

function addon:GetThemeOptions()
    local themeOptions = {}

    for k, t in pairs(themes) do
        if themeApplies(t.applicable) then
            if k == 'Custom' then
                themeOptions[k] = 'Custom'
            elseif k == "Default" then
                themeOptions[""] = "Default"
            else
                themeOptions[k] = fmt("%s by %s", k, t.author)
            end
        end
    end

    return themeOptions
end

function addon:RegisterTheme(theme)
    if not theme then return end

    if not theme['name'] or not theme['author'] then
        self.comms.PrettyPrint("Theme missing name or author")
        return
    end

    for k, _ in pairs(themes.Default) do
        if not theme[k] and k ~= 'name' and k ~= 'author' then
            self.comms.PrettyDebug("%s theme missing %s using default", theme.name, k)

            theme[k] = themes.Default[k]
        end
    end

    if not themeApplies(theme.applicable) then
        self.comms.PrettyPrint("%s does not apply to current mode, importing anyway", theme.name)
    end

    themes[theme.name] = theme
end

function addon.GetTexture(name)
    -- Avoid nil concatenation
    if not name or not (addon.activeTheme and addon.activeTheme.texturePath) then return end

    -- Exclude banner from hiding custom theme colors
    if addon.activeTheme.name == "Custom" and name == 'rxp-banner' then return end

    -- Validate for non-built-in textures?
    -- https://www.wowinterface.com/forums/showpost.php?p=337605&postcount=8
    return fmt("%s%s", addon.activeTheme.texturePath, name)
end

function addon:ImportCustomThemes()
    -- Register empty custom theme
    self:RegisterTheme(addon.settings.profile.customTheme)

    if not _G.RXPGuides_Themes then return end

    -- TODO use loop to strip array?
    for _, theme in pairs(_G.RXPGuides_Themes) do self:RegisterTheme(theme) end

    wipe(_G.RXPGuides_Themes)
end
