if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Das Eisklammtal
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Dungeonführer (A)\1-5 Das Eisklammtal
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Zwerge/Gnome);11-12 Leerwandler-Quest;12-14 Loch Modan (Zwerg/Gnom);11-13 Loch Modan (Jäger)
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Dungeonführer (A)\5-11 Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance !Hunter
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Zwerge/Gnome)
#version 1
#beta
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Zwerg/Gnom)

step
#include RestedXP Forever Dungeonführer (A)\11-12 Elwynn (Zwerge/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance !Hunter
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Zwerg/Gnom)
#next 13-15 Westfall
#defaultfor Gnome/Dwarf

step
#include RestedXP Forever Dungeonführer (A)\12-14 Loch Modan (Zwerge/Gnome)@LochStart-LochEnd

--Staying Ironforge if 15. Going Stormwind to Westfall if 14 or below.
step
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor 5175 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_von ihm falls verfügbar|r
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
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Stormwind City
    .xp >15,1
step
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf, während ihr auf die Tiefenbahn nach Sturmwind wartet, falls nötig|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
    .zone Stormwind City >> Nehmt die Tiefenbahn nach Sturmwind
    .xp >15,1
step
    #completewith Fly2WF
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Zahnrad|r
    .vendor 5519 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_von ihm falls verfügbar|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .xp >15,1
step
    #optional
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Akzeptiert die Quest Ein bescheidener Anfang
    .target Baros Alexston
    .xp <15,1
    .zoneskip Stormwind City,1
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft bis zu 2|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr, wenn ihr es euch leisten könnt oder etwas Besseres aus dem Auktionshaus|r
    .collect 2027,1 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp >15,1
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft bis zu 2|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
    .xp >15,1
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Legt den|r |T135343:0|t[Krummsäbel] an
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #ah
    #sticky
    #label Wand1
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft einen|r |T135144:0|t[Großer Magiezauberstab] |cRXP_BUY_wenn ihr es euch leisten könnt|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_Legt den|r |T135144:0|t[den Großen Magiezauberstab] an
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_Legt den|r |T135144:0|t[den Großen Magiezauberstab] an
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Kauft einen|r |T135468:0|t[Glimmender Zauberstab] |cRXP_WARN_von ihr|r
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
    +|cRXP_WARN_Legt den|r |T135468:0|t[Glimmender Zauberstab] an
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
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Jäger)
#next 13-15 Westfall
#defaultfor Dwarf

step
#include RestedXP Forever Dungeonführer (A)\11-13 Loch Modan (Jäger)@NormalRouteStart-NormalRouteEnd
]])