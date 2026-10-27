if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-9 Isla de Zephras
#displayname 1-9 Cielonato << Alliance
#displayname 1-9 Cielonato << Horde
#group RestedXP Forever Guía de Mazmorras (A) << Alliance
#group RestedXP Forever Guía de Mazmorras (H) << Horde
#subgroup Guía de mazmorras 1-20 << Alliance
#subgroup Guía de mazmorras 1-22 << Horde
#defaultfor Skyborne
#next 9-13 Isla de Zephras

step << Horde
    .enabledungeon RFC
    #include RestedXP Forever Guía (H)\1-9 Isla de Zephras
step << Alliance
    #include RestedXP Forever Guía (H)\1-9 Isla de Zephras
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#name 9-13 Isla de Zephras
#displayname 9-13 Cielonato << Alliance
#displayname 9-12 Cielonato << Horde
#group RestedXP Forever Guía de Mazmorras (A) << Alliance
#group RestedXP Forever Guía de Mazmorras (H) << Horde
#subgroup Guía de mazmorras 1-20 << Alliance
#subgroup Guía de mazmorras 1-22 << Horde
#defaultfor Skyborne
#next 13-15 Páramos de Poniente << Alliance
#next 12-14 Bosque de Argénteos << Horde !Hunter
#next 12-16 Los Baldíos << Horde Hunter

step << Horde
    .enabledungeon RFC
    #include RestedXP Forever Guía (H)\9-13 Isla de Zephras
step << Alliance
    #include RestedXP Forever Guía (A)\9-13 Isla de Zephras
]])

