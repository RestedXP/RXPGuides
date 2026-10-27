if GetLocale() ~= "frFR" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-9 Île de Zéphras
#displayname 1-9 Éolide << Alliance
#displayname 1-9 Éolide << Horde
#group Guide de donjon Forever RestedXP (A) << Alliance
#group Guide de donjon Forever RestedXP (H) << Horde
#subgroup Guide de donjon 1-20 << Alliance
#subgroup Guide de donjon 1-22 << Horde
#defaultfor Skyborne
#next 9-13 Île de Zéphras

step << Horde
    .enabledungeon RFC
    #include RestedXP Forever Guide (H)\1-9 Zephras Isle
step << Alliance
    #include RestedXP Forever Guide (A)\1-9 Zephras Isle
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#name 9-13 Île de Zéphras
#displayname 9-13 Éolide << Alliance
#displayname 9-12 Éolide << Horde
#group Guide de donjon Forever RestedXP (A) << Alliance
#group Guide de donjon Forever RestedXP (H) << Horde
#subgroup Guide de donjon 1-20 << Alliance
#subgroup Guide de donjon 1-22 << Horde
#defaultfor Skyborne
#next 13-15 Marche de l’Ouest << Alliance
#next 12-14 Forêt des Pins argentés << Horde !Hunter
#next 12-16 Les Tarides << Horde Hunter

step << Horde
    .enabledungeon RFC
    #include RestedXP Forever Guide (H)\9-13 Zephras Isle
step << Alliance
    #include RestedXP Forever Guide (A)\9-13 Zephras Isle
]])

