local addonName, addon = ...

local fmt = string.format

local themes = {}

themes['Default'] = {
    background = {12 / 255, 12 / 255, 27 / 255, 1},
    bottomFrameBG = {18 / 255, 18 / 255, 40 / 255, 1},
    bottomFrameHighlight = {54 / 255, 62 / 255, 109 / 255, 1},
    mapPins = {206 / 210, 123 / 210, 1, 1},
    tooltip = "|cFFCE7BFF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/",
    font = _G.GameFontNormal:GetFont(),
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
    applicable = function() return not RXPCData.GA end,
    author = "Bypass"
}

function addon:LoadActiveTheme()
    local applicableTheme = addon.settings.db.profile.activeTheme
    if addon.settings.db.profile.hardcore then
        applicableTheme = "Hardcore"
    elseif RXPCData.GA then
        applicableTheme = "GoldAssistant"
        -- else unchanged
    end

    local newTheme = themes[applicableTheme]

    -- Reset theme to default is selected goes away
    if not newTheme then
        addon.settings.db.profile.activeTheme = "Default"
        newTheme = themes[applicableTheme]
    end

    if not newTheme.applicable() then return end

    addon.activeTheme = themes[applicableTheme]

    -- TOOD fix legacy calls
    addon.colors = addon.activeTheme

    addon.font = addon.activeTheme.font

    return addon.activeTheme
end

function addon:GetThemeOptions()
    local themeOptions = {}

    for k, t in pairs(themes) do
        if t.applicable() then
            themeOptions[k] = fmt("%s by %s", k, t.author)
        end
    end

    return themeOptions
end

function addon.RegisterTheme(theme)
    if not theme['name'] or not not theme['author'] then
        addon.comms.PrettyPrint("Theme missing name or author")
        return
    end

    for k, _ in pairs(themes.Default) do
        if not theme[k] and k ~= 'name' and k ~= 'author' then
            if addon.settings.db.profile.debug then
                addon.comms.PrettyPrint("Theme missing %s using default", k)
            end

            theme[k] = themes.Default[k]
        end
    end

    if not theme.applicable() then
        addon.comms.PrettyPrint(
            "Theme does not apply to current mode, importing anyway")
    end

    addon.themes[theme.name] = theme
end

function addon.GetTexture(name)
    -- Validate for non-built-in textures?
    -- https://www.wowinterface.com/forums/showpost.php?p=337605&postcount=8
    return fmt("%s%s", addon.activeTheme.texturePath, name)
end

if not _G.RXPGuides then _G.RXPGuides = {} end

if not _G.RXPGuides.RegisterTheme then
    _G.RXPGuides.RegisterTheme = addon.RegisterTheme
end
