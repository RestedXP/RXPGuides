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
    applicable = function() return not RXPCData.GA end
}

themes['Hardcore'] = {
    background = {19 / 255, 0 / 255, 0 / 255, 1},
    bottomFrameBG = {31 / 255, 0 / 255, 0 / 255, 1},
    bottomFrameHighlight = {81 / 255, 0 / 255, 0 / 255, 1},
    mapPins = {0.9, 0.1, 0.1, 1},
    tooltip = "|c0000C1FF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/Hardcore/",
    applicable = function() return addon.settings.db.profile.hardcore end
}

themes['GoldAssistant'] = {
    background = {32 / 255, 18 / 255, 0 / 255, 1},
    bottomFrameBG = {48 / 255, 27 / 255, 0 / 255, 1},
    bottomFrameHighlight = {125 / 255, 71 / 255, 0 / 255, 1},
    mapPins = {0.95, 0.15, 0.15, 1},
    tooltip = "|c0000C1FF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/GoldAssistant/",
    applicable = function() return RXPCData.GA == true end
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

    if not newTheme.applicable() then return end

    print("LoadActiveTheme", applicableTheme)
    addon.activeTheme = themes[applicableTheme]

    -- TOOD fix legacy calls
    addon.colors = addon.activeTheme

    addon.font = addon.activeTheme.font

    -- addon.texturePath = addon.activeTheme.texturePath

    return addon.activeTheme
end

function addon:GetThemeOptions()
    local themeOptions = {}

    for k, t in pairs(themes) do
        if t.applicable() then themeOptions[k] = k end
    end

    return themeOptions
end

function addon.RegisterTheme(theme)
    for k, _ in pairs(themes.Default) do
        if not theme[k] and k ~= 'name' then
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
    return fmt("%s%s", addon.activeTheme.texturePath, name)
end

if not _G.RXPGuides then _G.RXPGuides = {} end

if not _G.RXPGuides.RegisterTheme then
    _G.RXPGuides.RegisterTheme = addon.RegisterTheme
end
