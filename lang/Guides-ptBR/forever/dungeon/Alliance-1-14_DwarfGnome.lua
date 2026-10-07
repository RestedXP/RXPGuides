if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Coldridge Valley
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Guide (A)\1-5 Coldridge Valley
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Anão/Gnomo);11-12 Missão do Andarilho do Vazio;12-14 Loch Modan (Anão/Gnomo);11-13 Loch Modan (Caçador)
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Guide (A)\5-11 Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance !Hunter
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Anão/Gnomo)
#version 1
#beta
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Anão/Gnomo)

step
#include RestedXP Forever Guide (A)\11-12 Elwynn (Dwarf/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance !Hunter
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Anão/Gnomo)
#next 13-15 Cerro Oeste
#defaultfor Gnome/Dwarf

step
#include RestedXP Forever Guide (A)\12-14 Loch Modan (Dwarf/Gnome)@LochStart-LochEnd

--Staying Ironforge if 15. Going Stormwind to Westfall if 14 or below.
step
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor 5175 >>|cRXP_BUY_Compre uma|r |T133024:0|t[Tubo de Bronze] |cRXP_BUY_dela se estiver disponível|r
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
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Stormwind City
    .xp >15,1
step
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_Aumente o nível de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o Tram para a Cidade de Ventobravo, se necessário|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar em nível 80 para uma missão do nível 24|r << Rogue !Dwarf
    .zone Stormwind City >>Pegue o Deeprun Tram até a Cidade de Ventobravo
    .xp >15,1
step
    #completewith Fly2WF
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >>|cRXP_BUY_Compre uma|r |T133024:0|t[Tubo de Bronze] |cRXP_BUY_dela se estiver disponível|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .xp >15,1
step
    #optional
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .accept 399 >>Aceite Humildes Começos
    .target Baros Alexston
    .xp <15,1
    .zoneskip Stormwind City,1
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Cimidarras] |cRXP_BUY_dela se você puder pagar ou algo melhor da Casa de Leilões|r
    .collect 2027,1 --Scimitar
    .target Marcia Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp >15,1
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Cimidarras] |cRXP_BUY_dela se você puder pagar|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marcia Weller
    .xp >15,1
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #ah
    #sticky
    #label Wand1
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_se puder pagar|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_Equipe a|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_Equipe a|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r
    >>|cRXP_WARN_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_dela|r
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
    +|cRXP_WARN_Equipe a|r |T135468:0|t[Varinha Fumegante]
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
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Caçador)
#next 13-15 Cerro Oeste
#defaultfor Dwarf

step
#include RestedXP Forever Guide (A)\11-13 Loch Modan (Hunter)@NormalRouteStart-NormalRouteEnd
]])