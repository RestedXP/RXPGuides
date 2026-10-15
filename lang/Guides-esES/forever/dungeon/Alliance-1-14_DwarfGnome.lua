if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Valle de Crestanevada
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step
#include RestedXP Guía Forever (A)\1-5 Valle de Crestanevada
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Enano/Gnomo);11-12 Misión del Abisario;12-14 Loch Modan (Enano/Gnomo);11-13 Loch Modan (Cazador)
#defaultfor Dwarf/Gnome

step
#include RestedXP Guía Forever (A)\5-11 Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance !Hunter
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Enano/Gnomo)
#version 1
#beta
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Enano/Gnomo)

step
#include RestedXP Guía Forever (A)\11-12 Elwynn (Enano/Gnomo)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance !Hunter
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Enano/Gnomo)
#next 13-15 Páramos de Poniente
#defaultfor Gnome/Dwarf

step
#include RestedXP Guía Forever (A)\12-14 Loch Modan (Enano/Gnomo)@LochStart-LochEnd

--Staying Ironforge if 15. Going Stormwind to Westfall if 14 or below.
step
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor 5175 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
    .subzoneskip 2257
    .xp >15,1
step
    #optional
    #completewith WestfallTramEnd
    #label Deeprun
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Stormwind City
    .xp >15,1
step
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_Sube de nivel tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el Tranvía a la Ciudad de Ventormenta si es necesario|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
    .zone Stormwind City >> Toma el Tranvía Subterráneo hacia la Ciudad de Ventormenta
    .xp >15,1
step
    #completewith Fly2WF
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor 5519 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .xp >15,1
step
    #optional
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Acepta la misión Principios humildes
    .target Baros Alexston
    .xp <15,1
    .zoneskip Stormwind City,1
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Cómprale hasta 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si puedes permitírtelo o compra algo mejor de la Casa de Subastas|r
    .collect 2027,1 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp >15,1
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Cómprale hasta 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
    .xp >15,1
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #ah
    #sticky
    #label Wand1
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_si puedes permitírtelo|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_Equipa la|r |T135144:0|t[Varita mágica superior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_Equipa la|r |T135144:0|t[Varita mágica superior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Compra una|r |T135468:0|t[Varita humeante] |cRXP_WARN_a esta vendedora|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .money <0.3340
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
--XX If you didn't buy a Greater Magic when you had the chance (1x only)
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_Equipa la|r |T135468:0|t[Varita humeante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .xp >15,1
step
    #label Fly2WF
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance Hunter
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Cazador)
#next 13-15 Páramos de Poniente
#defaultfor Dwarf

step
#include RestedXP Guía Forever (A)\11-13 Loch Modan (Cazador)@NormalRouteStart-NormalRouteEnd
]])