if GetLocale() ~= "ptBR" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-9 Zephras Isle
#displayname 1-9 Skyborne << Alliance
#displayname 1-9 Skyborne << Horde
#group RestedXP Guia de Masmorra Eterna (A) << Alliance
#group RestedXP Forever — Guia de Masmorra Eterna (H) << Horde
#subgroup Guia da Masmorra 1-20 << Alliance
#subgroup Masmorra Guia 1-22 << Horde
#defaultfor Skyborne
#next 9-13 Zephras Isle

step << Horde
    .enabledungeon RFC
    #include RestedXP Forever Guide (H)\1-9 Zephras Isle
step << Alliance
    #include RestedXP Forever Guide (A)\1-9 Zephras Isle
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#name 9-13 Zephras Isle
#displayname 9-13 Skyborne << Alliance
#displayname 9-12 Skyborne << Horde
#group RestedXP Guia de Masmorra Eterna (A) << Alliance
#group RestedXP Forever — Guia de Masmorra Eterna (H) << Horde
#subgroup Guia da Masmorra 1-20 << Alliance
#subgroup Masmorra Guia 1-22 << Horde
#defaultfor Skyborne
#next 13-15 Cerro Oeste << Alliance
#next 12-14 Floresta de Pinhaprata << Horde !Hunter
#next 12-16 Terras Devastadas << Horde Hunter

step << Horde
    .enabledungeon RFC
    #include RestedXP Forever Guide (H)\9-13 Zephras Isle
step << Alliance
    #include RestedXP Forever Guide (A)\9-13 Zephras Isle
]])

