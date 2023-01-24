local addonName, addon = ...

local fmt = string.format

local themes = {}
addon.themes = themes

themes['Default'] = {
    background = {12 / 255, 12 / 255, 27 / 255, 1},
    bottomFrameBG = {18 / 255, 18 / 255, 40 / 255, 1},
    bottomFrameHighlight = {54 / 255, 62 / 255, 109 / 255, 1},
    mapPins = {206 / 210, 123 / 210, 1, 1},
    tooltip = "|cFFCE7BFF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/",
    font = _G.GameFontNormal:GetFont(),
    textColor = {1, 1, 1},
    applicable = function() return not RXPCData.GA end,
    author = "RestedXP"
}

-- Built-in themes must provide all properties
themes['Hardcore'] = {
    background = {19 / 255, 0 / 255, 0 / 255, 1},
    bottomFrameBG = {31 / 255, 0 / 255, 0 / 255, 1},
    bottomFrameHighlight = {81 / 255, 0 / 255, 0 / 255, 1},
    mapPins = {0.9, 0.1, 0.1, 1},
    tooltip = "|c0000C1FF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/Hardcore/",
    font = _G.GameFontNormal:GetFont(),
    textColor = {1, 1, 1},
    applicable = function() return addon.settings.db.profile.hardcore end,
    author = "RestedXP"
}

themes['GoldAssistant'] = {
    background = {32 / 255, 18 / 255, 0 / 255, 1},
    bottomFrameBG = {48 / 255, 27 / 255, 0 / 255, 1},
    bottomFrameHighlight = {125 / 255, 71 / 255, 0 / 255, 1},
    mapPins = {0.95, 0.15, 0.15, 1},
    tooltip = "|c0000C1FF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/GoldAssistant/",
    font = _G.GameFontNormal:GetFont(),
    textColor = {1, 1, 1},
    applicable = function() return RXPCData.GA == true end,
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
    author = "Bypass"
}

addon.customThemeBase = {
    name = "Custom",
    background = themes['Default'].background,
    bottomFrameBG = themes['Default'].bottomFrameBG,
    bottomFrameHighlight = themes['Default'].bottomFrameHighlight,
    mapPins = themes['Default'].mapPins,
    tooltip = themes['Default'].tooltip,
    texturePath = themes['Default'].texturePath,
    font = themes['Default'].font,
    textColor = themes['Default'].textColor,
    applicable = true,
    author = _G.UnitName("player")
}

local function themeApplies(applicable)
    if applicable == nil then
        return true
    elseif type(applicable) == "boolean" then
        return applicable
    elseif type(applicable) == "function" then
        return applicable()
    end
end

function addon:LoadActiveTheme()
    local applicableTheme = addon.settings.db.profile.activeTheme
    if addon.settings.db.profile.hardcore then
        applicableTheme = "Hardcore"
    elseif RXPCData.GA then
        applicableTheme = "GoldAssistant"
        -- else unchanged
    end

    local newTheme = themes[applicableTheme]

    -- Reset theme to default if selected goes away
    if not newTheme then
        addon.comms.PrettyPrint(
            "%s theme no longer loaded, resetting to default", applicableTheme)
        addon.settings.db.profile.activeTheme = "Default"
        newTheme = themes["Default"]
    end

    if not themeApplies(newTheme.applicable) then return end

    addon.activeTheme = newTheme

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
            if self.settings.db.profile.debug then
                self.comms.PrettyPrint("%s theme missing %s using default",
                                       theme.name, k)
            end

            theme[k] = themes.Default[k]
        end
    end

    if not themeApplies(theme.applicable) then
        self.comms.PrettyPrint(
            "%s does not apply to current mode, importing anyway", theme.name)
    end

    themes[theme.name] = theme
end

function addon.GetTexture(name)
    -- Avoid nil concatenation
    if not name or not (addon.activeTheme and addon.activeTheme.texturePath) then
        return
    end

    -- Exclude banner from hiding custom theme colors
    if addon.activeTheme.name == "Custom" and name == 'rxp-banner' then
        return
    end

    -- Validate for non-built-in textures?
    -- https://www.wowinterface.com/forums/showpost.php?p=337605&postcount=8
    return fmt("%s%s", addon.activeTheme.texturePath, name)
end

function addon:ImportCustomThemes()
    -- Register empty custom theme
    self:RegisterTheme(addon.settings.db.profile.customTheme)

    if not _G.RXPGuides_Themes then return end

    -- TODO use loop to strip array?
    for _, theme in pairs(_G.RXPGuides_Themes) do self:RegisterTheme(theme) end

    wipe(_G.RXPGuides_Themes)
end
