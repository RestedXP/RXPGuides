local addonName, addon = ...
local L = addon.locale.Get
local fmt = string.format

local themes = {}
local UnitName = addon.GetUnitName
addon.themes = themes

themes['RXP Blue'] = {
    background = {12 / 255, 12 / 255, 27 / 255, 1},
    bottomFrameBG = {18 / 255, 18 / 255, 40 / 255, 1},
    bottomFrameHighlight = {54 / 255, 62 / 255, 109 / 255, 1},
    displayName = L("RXP Blue"),
    mapPins = {206 / 210, 123 / 210, 1, 1},
    tooltip = "|cFFCE7BFF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/",
    headerTexture = "rxp-banner",
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

-- Built-in themes must provide all properties
themes['RXP Red'] = {
    background = {19 / 255, 0 / 255, 0 / 255, 1},
    bottomFrameBG = {31 / 255, 0 / 255, 0 / 255, 1},
    bottomFrameHighlight = {81 / 255, 0 / 255, 0 / 255, 1},
    displayName = L("RXP Red"),
    mapPins = {0.9, 0.1, 0.1, 1},
    tooltip = "|c0000C1FF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/Hardcore/",
    headerTexture = "rxp-banner",
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
    displayName = L("RXP Gold"),
    mapPins = {0.95, 0.15, 0.15, 1},
    tooltip = "|c0000C1FF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/GoldAssistant/",
    headerTexture = "rxp-banner",
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
    displayName = L("DarkMode"),
    mapPins = {classColor.r, classColor.g, classColor.b, 1},
    tooltip = "|c" .. classColor.colorStr,
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/DarkMode/",
    headerTexture = "rxp-banner",
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
    displayName = L("RXP Green"),
    mapPins = {0 / 255, 203 / 255, 66 / 255, 1},
    tooltip = "|cFFCE7BFF", -- AARRGGBB
    texturePath = "Interface/AddOns/" .. addonName .. "/Textures/Green/",
    headerTexture = "rxp-banner",
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

addon.customThemeBase = CopyTable(themes['RXP Blue'])
addon.customThemeBase.name = "Custom"
addon.customThemeBase.displayName = _G.CUSTOM
addon.customThemeBase.applicable = true
addon.customThemeBase.author = UnitName("player") or L "Unknown"
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
    local guideTheme = addon.currentGuide and addon.currentGuide.theme

    if addon.v2:IsGuideWindowEnabled() then
        if guideTheme and addon.v2.themes[guideTheme] then
            return addon.v2.themes[guideTheme]
        elseif RXPCData.GA and addon.v2.themes['RXP Gold'] then
            return addon.v2.themes['RXP Gold']
        elseif addon.settings.profile.hardcore and addon.v2.themes['RXP Red'] then
            return addon.v2.themes['RXP Red']
        end
        return addon.v2.themes['RXP Blue V2']
    end

    if guideTheme and themes[addon.currentGuide.theme] then
        return themes[addon.currentGuide.theme]
    elseif RXPCData.GA then
        return themes['RXP Gold']
    elseif addon.settings.profile.hardcore then
        return themes['RXP Red']
    end

    return themes['RXP Blue']
end

function addon:UsesDefaultTheme()
    local profile = self.settings and self.settings.profile
    local theme = profile and profile.activeTheme

    return theme == 'Default' or theme == 'RXP Blue' or theme == 'RXP Blue V2'
end

function addon:LoadActiveTheme()
    local applicableTheme = addon.settings.profile.activeTheme
    local v2Enabled = addon.v2:IsGuideWindowEnabled()
    local useDefaultTheme = self:UsesDefaultTheme()

    if applicableTheme == 'Default' then
        applicableTheme = 'RXP Blue'

        addon.settings.profile.activeTheme = applicableTheme
    end

    if v2Enabled then
        if applicableTheme == 'RXP Blue' then
            applicableTheme = 'RXP Blue V2'

            addon.settings.profile.activeTheme = applicableTheme
        end
    elseif addon.v2.themes[applicableTheme] and themes[addon.v2.themes[applicableTheme].name] then
        applicableTheme = addon.v2.themes[applicableTheme].name
        addon.settings.profile.activeTheme = applicableTheme
    end

    local defaultTheme = GetDefaultTheme()
    local fallbackTheme = themes[defaultTheme.name] or defaultTheme
    local selectedTheme = v2Enabled and addon.v2.themes[applicableTheme]
    local newTheme = useDefaultTheme and fallbackTheme or
                         themes[selectedTheme and selectedTheme.name or applicableTheme] or fallbackTheme

    -- Reset theme to default if selected goes away

    if not (newTheme and themeApplies(selectedTheme or newTheme)) then newTheme = fallbackTheme end

    addon.activeTheme = newTheme

    local RXPFrame = addon.RXPFrame

    if newTheme.bgTextures then
        for name, frame in pairs(RXPFrame.backdrop) do
            frame.bgFile = newTheme.bgTextures[name] or RXPFrame.defaultBackground[name]
        end
    end

    RXPFrame.backdrop.edge.edgeFile = addon.GetV1Texture("rxp-borders") or RXPFrame.defaultEdges.edge
    RXPFrame.backdrop.guideName.edgeFile = addon.GetV1Texture("rxp-borders") or RXPFrame.defaultEdges.guideName
    RXPFrame.backdrop.bottom.edgeFile = nil

    if newTheme.edges then
        local frame
        for name, texture in pairs(newTheme.edges) do
            frame = RXPFrame.backdrop[name]
            frame.edgeFile = texture
        end
    end

    -- TOOD fix legacy calls
    addon.colors = addon.activeTheme

    addon.font = addon.activeTheme.font

    return addon.activeTheme
end

function addon:ReloadTheme()
    if not self.settings.profile.enableThemeLiveReload then return end

    self.RenderFrame('themeReload')
    self.v2:ConvertThemes()
    self.SetupArrow()

    if self.v2:IsGuideWindowEnabled() then
        self.v2:UpdateGuideWindow()
        self.v2:GetGuideWindow():UpdateTheme({})
        self.v2:UpdateActiveStepTheme()

        if self.activeItemFrame then self.activeItemFrame:UpdateVisuals() end

        if self.targeting and self.targeting.activeTargetFrame then
            self.targeting.activeTargetFrame:UpdateVisuals()
        end
    end
end

function addon:GetThemeOptions()
    local themeOptions = {}
    local selectedThemes = addon.v2:IsGuideWindowEnabled() and addon.v2.themes or themes

    for k, t in pairs(selectedThemes) do
        if themeApplies(t.applicable) then
            if k == 'Custom' then
                themeOptions[k] = t.displayName
            else
                themeOptions[k] = fmt("%s by %s", t.displayName, t.author)
            end
        end
    end

    return themeOptions
end

function addon:RegisterTheme(theme)
    if not theme then return end

    if not theme['name'] or not theme['author'] then
        self.comms.PrettyPrint(L "Theme missing name or author")
        return
    end

    for k, _ in pairs(themes['RXP Blue']) do
        if not theme[k] and k ~= 'name' and k ~= 'author' then
            self.comms.PrettyDebug("%s theme missing %s using default", theme.name, k)

            theme[k] = themes['RXP Blue'][k]
        end
    end

    if not themeApplies(theme.applicable) then
        self.comms.PrettyPrint(L "%s does not apply to current mode, importing anyway", theme.name)
    end

    themes[theme.name] = theme

    if self.v2:IsGuideWindowEnabled() then self.v2:ConvertThemes() end
end

function addon.GetV1Texture(name)
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

addon.v2 = addon.v2 or {}
addon.v2.themes = {}

addon.v2.themes['RXP Blue V2'] = {
    author = "RestedXP",
    displayName = "RXP Blue V2",
    name = 'RXP Blue',
    version = 2,
    applicable = function() return addon.v2:IsGuideWindowEnabled() end,
    font = _G.GameFontNormal:GetFont(),
    mapPins = {26 / 255, 28 / 255, 48 / 255, 0.95}, -- #1A1C30F2
    headerTexture = {
        path = "Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-header-texture",
        texCoords = {0, 1, 0, 63 / 64}
    },
    guideWindow = {
        logo = "Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-icon-logo",
        settingsIcon = "Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-icon-cog",
        guideSelectIcon = "Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-icon-scroll"
    },
    auctionHouse = {
        upgradeRatioColor = "|cffffff00",
        upgradeEPColor = "|cffff00ff",
        upgradeIcon = "Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-reward-upgrade",
        valueIcon = "Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-reward-gold",
        legacyUpgradeIcon = "Interface/AddOns/" .. addonName .. "/Textures/rxp_logo-64",
        legacyValueIcon = "Interface/GossipFrame/VendorGossipIcon.blp"
    },
    navigationArrow = "Interface/AddOns/" .. addonName .. "/Textures/v2/rxp_navigation_arrow-1",

    backgroundColors = {
        common = {26 / 255, 28 / 255, 48 / 255, 0.95}, -- #1A1C30F2
        guideName = {26 / 255, 28 / 255, 48 / 255, 1}, -- #1A1C30FF
        guideWindow = {7 / 255, 8 / 255, 19 / 255, 0.95}, -- #070813F2
        scrollbar = {1 / 255, 1 / 255, 11 / 255, 1}, -- #01010BFF
        inactivePartyTab = {32 / 255, 33 / 255, 49 / 255, 1}, -- #202131FF
        activeStepCheckbox = {5 / 255, 7 / 255, 19 / 255, 1}, -- #050713FF
        activeStepCheckboxChecked = {17 / 255, 132 / 255, 1, 1} -- #118401FF
    },

    borderColors = {
        common = {55 / 255, 62 / 255, 109 / 255, 1}, -- #373E6DFF
        commonEdge = {184 / 255, 190 / 255, 215 / 255, 1}, -- #B8BED7FF
        inactivePartyTab = {62 / 255, 66 / 255, 102 / 255, 1}, -- #3E4266FF
        activeStepCheckboxChecked = {17 / 255, 132 / 255, 1, 1} -- #118401FF
    },

    edge = {
        edgeFile = "Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-borders-v2",
        edgeSize = 1,
        texCoords = {
            top = {0, 0.25, 0, 1},
            bottom = {0.25, 0.5, 0, 1},
            left = {0.5, 0.75, 0, 1},
            right = {0.75, 1, 0, 1}
        }
    },

    textColor = {
        common = {210 / 255, 210 / 255, 220 / 255, 1}, -- #D2D2DCFF
        title = {24 / 255, 210 / 255, 255 / 255, 1}, -- #18D2FFFF
        inactivePartyTab = {0.62, 0.62, 0.72, 1} -- #9E9EB8FF
    }
}

function addon.v2:ConvertThemes()
    local convertedBorderColors = {"common", "commonEdge", "inactivePartyTab", "activeStepCheckboxChecked"}
    local convertedTextColors = {"common", "title", "inactivePartyTab"}

    local baseTheme = self.themes['RXP Blue V2']
    local converted, edgeColor, backgroundColors, borderColors, textColor, sourceVersion, existingTheme

    for name, source in pairs(addon.themes) do
        sourceVersion = source.version or 1
        existingTheme = self.themes[name]

        if not (existingTheme and existingTheme.version and sourceVersion < existingTheme.version) then
            if name ~= 'RXP Blue' then
                converted = CopyTable(baseTheme)
                converted.backgroundColors = CopyTable(baseTheme.backgroundColors)
                converted.borderColors = CopyTable(baseTheme.borderColors)
                converted.edge = CopyTable(baseTheme.edge)
                converted.textColor = CopyTable(baseTheme.textColor)
                edgeColor = CopyTable(source.bottomFrameHighlight)
                backgroundColors = converted.backgroundColors
                borderColors = converted.borderColors
                textColor = converted.textColor

                converted.font = source.font
                converted.displayName = source.displayName
                converted.author = source.author
                converted.name = name
                converted.version = sourceVersion
                converted.headerTexture = {path = source.texturePath .. source.headerTexture, texCoords = {0, 1, 0, 1}}
                converted.guideWindow = {
                    logo = source.texturePath .. "rxp_logo-64",
                    settingsIcon = source.texturePath .. "rxp_cog-32",
                    guideSelectIcon = "Interface/AddOns/" .. addonName .. "/Textures/v2/rxp-minimap-icon"
                }
                converted.navigationArrow = source.texturePath .. "rxp_navigation_arrow-1"
                converted.edge.edgeFile = source.bgTextures and source.bgTextures.edge or "Interface/BUTTONS/WHITE8X8"
                converted.applicable = source.applicable

                backgroundColors.common = CopyTable(source.background)
                backgroundColors.inactivePartyTab = CopyTable(source.background)
                backgroundColors.activeStepCheckbox = CopyTable(source.background)
                backgroundColors.activeStepCheckboxChecked = CopyTable(source.mapPins)
                for _, key in ipairs(convertedBorderColors) do borderColors[key] = edgeColor end
                for _, key in ipairs(convertedTextColors) do textColor[key] = CopyTable(source.textColor) end
                converted.mapPins = CopyTable(backgroundColors.common)

                self.themes[name] = converted
            end
        end
    end
end

function addon.v2:GetTheme()
    local profile = addon.settings and addon.settings.profile
    local name = profile and profile.activeTheme

    self.activeTheme = addon:UsesDefaultTheme() and GetDefaultTheme() or self.themes[name] or GetDefaultTheme()

    return self.activeTheme
end

function addon.v2:GetAuctionHouseTheme()
    local theme = self:GetTheme()

    return theme.auctionHouse or self.themes['RXP Blue V2'].auctionHouse
end
