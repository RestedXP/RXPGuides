if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance NightElf
#name 11-16 Costa Negra/Loch Modan
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#next 17-18 Hall of Thanes

step
    #include RestedXP Forever Guia (A)\14-16 Costa Negra@WashedA-IFExit
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Aguardente|r
    >>|cRXP_WARN_Se você tiver um Mago no grupo, defina sua Pedra de Regresso para Lakeshire em vez disso|r
    .goto Ironforge,18.10,51.60
    .home >> Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
step
    #completewith next
    .zone Dun Morogh >> Vá para Dun Morogh
step
    .goto Dun Morogh,59.9,49.5,30,0
    .goto Dun Morogh,61.2,47.2,15,0
    .goto Dun Morogh,62.1,47.3,20 >>Suba a rampa para |cRXP_ENEMY_Ragash|r
step
    #completewith next
    +Puxe |cRXP_ENEMY_Ragash|r para |cRXP_FRIENDLY_Rudra Ambarmanso|r
    >>|cRXP_WARN_Tente evitar se aproximar dele ou ele conjurará|r |T135848:16|t[Rugido Glacial] |cRXP_WARN_que o atordoa por 3 segundos|r
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .goto Dun Morogh,63.1,49.8
    .target Rudra Amberstill
    .accept 314 >>Aceite Amarre Sua Cabra pois Ragash Está Solto
step
    >>Puxe |cRXP_ENEMY_Vagash|r para o |cRXP_FRIENDLY_Montanhista de Dun Morogh|r
    >>|cRXP_WARN_Certifique-se de causar pelo menos 50% de dano|r
    .goto Dun Morogh,62.8,54.6,10,0
    .mob Vagash
    .target Dun Morogh Mountaineer
    .complete 314, 1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .goto Dun Morogh, 63.1, 49.8
    .target Rudra Amberstill
    .turnin 314 >>Entregue Amarre Sua Cabra pois Ragash Está Solto
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .accept 96392 >> Aceite A Vigília de Farsen
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Fale com |cRXP_FRIENDLY_Earthseer Farsen|r para ver sua visão distante
    >>|cRXP_WARN_Você pode cancelar a Visão Distante uma vez que o objetivo seja concluído|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Pressione ESCAPE para cancelar a Visão Distante|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Você pode cancelar a Visão Distante uma vez que o objetivo seja concluído|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Pressione ESCAPE para cancelar a Visão Distante|r
    .turnin 96392 >> Entregue A Vigília de Farsen
    --.accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Mate os |cRXP_ENEMY_Dark Ferro Spies|r. Saque-os para obter o |T237385:0|t[|cRXP_LOOT_Dark Ferro Mapa|r]
    .use 274268 >>|cRXP_WARN_Use o|r |T237385:0|t[|cRXP_LOOT_Dark Ferro Mapa|r] |cRXP_WARN_para iniciar a missão|r
    -->>|cRXP_WARN_You can skip killing |cRXP_ENEMY_Dark Iron Spies|r for the other quest because they are low level once you find the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    --.complete 96390,1 -- Dark Iron Spy slain 10/10
    --.disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Aceite Mapa Subterrâneo
    .mob Dark Iron Spy
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96391 >> Entregue Mapa Subterrâneo
    .accept 96393 >> Aceite Incursão em Old Ironforge
    .target Earthseer Farsen
step
    #optional
    .isQuestComplete 96390
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Entregue Corte o Mal pela Raiz
    .target Earthseer Farsen
step
    #include RestedXP Forever Guia (A)\14-16 Costa Negra@LochEnter-LochEnd
step << NightElf Druid
    #completewith next
	.cast 18960 >> Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
	.goto Moonglade,44.2,45.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silva|r
	.fly Teldrassil >>Voe para Rutheran Village
	.target Silva
step << Druid
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Entre no portal roxo para Darnassus
step << Druid
	.goto Darnassus,35.375,8.405
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
	.accept 26 >>Aceite Uma lição a aprender
	.trainer >> Treine suas magias de classe
	.target Mathrengyl Bearwalker
step << Druid
    #season 0
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 26 >> Entregar Uma Lição a Aprender
    .accept 29 >> Aceitar Prova do Lago
    .target Dendrite Starblaze
step << Druid
    #season 0
    .goto Moonglade,52.6,51.6
    >>Nade para dentro de Lake Elune'Ara
    >>Abra o |cRXP_PICK_Bauble Recipiente|r. Pegue um |T134125:0|t[Adorno de Altar]
    >>|cRXP_WARN_Pode aparecer em diferentes locais debaixo d'água|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #season 0
    #completewith next
    .cast 18960 >> Use Teleporte: Clareira da Lua
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    #season 0
    .goto Moonglade,36.026,41.374
    >>Use o [Adorno de Altar] no Santuário da árvore de Remulos.
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    #season 0
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeana|r
    .turnin 29 >> Entregar Prova do Lago
    .accept 272 >> Aceitar Prova do Leão Marinho
    .target Tajarri
step << NightElf
    .hs >>Use sua Pedra de Retorno para ir a Ironforge
    .zoneskip Ironforge
step << NightElf Priest/NightElf Druid
    #ah
    #label OilWandFood
    #completewith AHCheck
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|cRXP_WARN_Compre o seguinte se você puder pagar:|r
    >>|T134711:0|t[Óleo Menor de Teurgo] |cRXP_WARN_e|r |T133906:0|t[Sabichão Defumado]
    >>|cRXP_WARN_Também procure por melhorias de alto DPS|r |T132317:0|t[Varinha] |cRXP_WARN_que você pode usar agora/em breve|r << Priest
    >>|cRXP_WARN_Estes fornecerão um grande aumento de DPS nos primeiros níveis. Se você não quer ou não consegue fazer isso, pule este passo|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << NightElf Hunter
    .goto 1455/0,-1266.100,-5006.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bélia Granitrondo|r
    .trainer >> Treine suas magias de classe
    .target Regnus Thundergranite
step << NightElf Priest
    .goto 1455/0,-897.200,-4607.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sumo Sacerdote Rohan|r  
    .trainer >> Treine suas magias de classe
    .target High Priest Rohan
step << NightElf Rogue
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Treine suas magias de classe
    .target Fenthwick
step << NightElf Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .trainer >> Treine suas magias de classe
    .target Bilban Tosslespanner
step << NightElf
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Prospector Lançatroz|r
    .turnin 301 >> Entregue Apresente-se a Altaforja
    .target Prospector Stormpike










-- step
--     .goto 1453/0,673.58,-8867.76
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
--     .home >> Set your Hearthstone to Stormwind City
--     .target Innkeeper Allison
--     .bindlocation 16509
-- step
--     #ah
--     .goto 1453/0,660.28,-8814.55
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
--     >>|cRXP_BUY_Buy the following items for faster turn ins at Westfall shortly:|r
--     >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
--     >>|T133972:0|t[Stringy Vulture Meat]
--     >>|T133884:0|t[Murloc Eye]
--     >>|T135997:0|t[Goretusk Snout]
--     >>|T134185:0|t[Okra]
--     >>|T134341:0|t[Goretusk Liver]
--     >>|T4548890:0|t[Golem Isospring]
--     >>|T132995:0|t[Harvester Gyrostabilizer]
--     .collect 729,3,38,1 -- Stringy Vulture Meat (3)
--     .collect 730,3,38,1 -- Murloc Eye (3)
--     .collect 731,3,38,1 -- Goretusk Snout (3)
--     .collect 732,3,38,1 -- Okra (3)
--     .collect 723,8,22,1 -- Goretusk Liver (8)
--     .collect 255007,14,92909,1 -- Golem Isospring (14)
--     .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
--     .target Auctioneer Jaxon
-- step
--     .goto 1453/0,490.03,-8835.82
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
--     .fp Stormwind >> Get the Stormwind Flight Path
--     .target Dungar Longdrink
-- step
--     #completewith SaldeanVendor
--     #optional
--     .goto 1429/0,875.96,-9814.400
--     .zone Westfall >> Travel to Westfall
-- step
--     .goto 1436/0,918.42,-9851.50
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
--     .accept 64 >> Accept The Forgotten Heirloom
--     .target Farmer Furlbrow
-- step
--     .goto 1436/0,919.47,-9853.13
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
--     .accept 36 >> Accept Westfall Stew
--     .accept 151 >> Accept Poor Old Blanchy
--     .target Verna Furlbrow
-- step
--     #completewith SalmaS
--     .goto 1436/0,1055.27,-10128.70,65 >> Travel to Saldean's Farm
-- step
--     .goto 1436/0,1055.27,-10128.70
--     .target Farmer Saldean
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
--     .accept 109 >>Accept Report to Gryan Stoutmantle
-- step
--     #label SalmaS
--     .goto 1436/0,1042.67,-10111.670
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
--     .turnin 36 >> Turn in Westfall Stew
--     .target Salma Saldean
--     .accept 38 >> Accept Westfall Stew
-- step << Gnome/Dwarf/NightElf
--     #completewith next
--     .goto 1436/0,1045.12,-10508.80
--     .target Gryan Stoutmantle
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
--     .turnin 109 >> Turn in Report to Gryan Stoutmantle
--     .isOnQuest 109
-- step
--     .goto 1436/0,1045.12,-10508.80
--     .target Gryan Stoutmantle
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
--     .accept 12 >> Accept The People's Militia
-- step
--     .goto 1436/0,1041.97,-10511.13
--     .target Captain Danuvin
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
--     .accept 102 >> Accept Patrolling Westfall
-- step
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
--     .target Scout Galiaan
--     .goto 1436/0,1126.67,-10636.670
--     .accept 153 >> Accept Red Leather Bandanas
-- step
--     .goto 1436/0,1166.57,-10653.23
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Heather|r
--     .vendor >>|cRXP_BUY_Buy food/water if needed|r
-- 	.target Innkeeper Heather
-- step
--     .goto 1436/0,1179.800,-10635.601
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba Fairmoon::253092|r
--     .target Alba Fairmoon::253092
--     .accept 92742 >>Accept Testing the Wells
--     .accept 92744 >>Accept Murloc Gills
-- step
-- 	#completewith GnollPaws
--     >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
--     >>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
--     .complete 151,1 --Handful of Oats (8)
-- step
--     #completewith TravelCompass
--     >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
--     .collect 729,3,38,1 --Stringy Vulture Meat (3)
--     .mob +Young Fleshripper
--     .mob +Fleshripper
--     .collect 731,3,38,1 --Goretusk Snout (3)
--     .mob +Young Goretusk
--     .mob +Goretusk
-- step
--     #completewith TravelCompass
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
--     #label TravelCompass
--     .isOnQuest 399
--     .goto 1436/0,1602.67,-10629.67,75 >> Travel to the Alexston's Farmstead
--     >>|cRXP_WARN_Work on completing the other quest objectives as you move there|r
-- step
--     #sticky
--     #completewith bennytime
--     >>Kill |cRXP_ENEMY_Harvest Watchers|r located on any of the fields as you run by them
--     >>Loot them for their |cRXP_LOOT_Okra|r and |cRXP_LOOT_Flasks of Oil|r
--     .mob Harvest Watcher
--     .collect 732,3,38,1 --Okra (3)
--     .collect 814,5,103,1 --Flask of Oil (5)
-- step
--     .goto 1436/0,1748.27,-10672.13
--     >>Open |cRXP_PICK_Alexston's Chest|r. Loot it for |cRXP_LOOT_A Simple Compass|r
--     .complete 399,1 --A Simple Compass (1)
--     .isOnQuest 399
-- step
--     .goto 1436/0,1404.200,-10290.900
--     .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Molsen Farm well|r
--     .complete 92742,2 --|1/1 Molsen Farm Water Sample
-- step
--     #completewith bennytime
--     >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
--     .collect 729,3,38,1 --Stringy Vulture Meat (3)
--     .mob +Young Fleshripper
--     .mob +Fleshripper
--     .collect 731,3,38,1 --Goretusk Snout (3)
--     .mob +Young Goretusk
--     .mob +Goretusk
-- step
--     #completewith bennytime
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
--     .goto 1436/0,1266.67,-9927.33,75 >> Travel to the Jansen Stead, |cRXP_WARN_work on the other quest objectives as you move there|r
-- step
-- 	#label bennytime
--     .goto 1436/0,1289.77,-9849.63
--     >>Open |cRXP_PICK_Furlbrow's Wardrobe|r. Loot it for |cRXP_LOOT_Furlbrow's Pocket Watch|r
--     >>|cRXP_WARN_You can loot |cRXP_PICK_Furlbrow's Wardrobe|r from outside if you angle your camera correctly|r
-- 	>>|cRXP_WARN_Be aware of |cRXP_ENEMY_Benny Blanco|r. He hits hard|r
--     .complete 64,1 --Furlbrow's Pocket Watch
-- step
--     .goto 1436/0,1192.12,-9641.73,60,0
--     .goto 1436/0,1042.67,-9619.33,60,0
--     .goto 1436/0,1192.12,-9641.73,60,0
--     .goto 1436/0,1042.67,-9619.33,60,0
--     .goto 1436/0,1192.12,-9641.73
--     .goto 1436/0,1042.67,-9619.33,0
--     >>Kill |cRXP_ENEMY_Murloc Raiders|r and |cRXP_ENEMY_Murloc Coastrunners|r. Loot them for their |cRXP_LOOT_Eyes|r and |cRXP_LOOT_Gills|r
--     .collect 730,3,38,1 --Murloc Eye (3)
--     .complete 92744,1 -- Longshore Murloc Gills 7/7
--     .mob Murloc Raider
--     .mob Murloc Coastrunner
-- step
--     .goto 1436/0,1035.300,-9835.101
--     .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Jansen Stead well|r
--     .complete 92742,1 --|1/1 Jansen Stead Water Sample
-- step
--     .goto 1436/0,1004.87,-9716.87,60,0
--     .goto 1436/0,1013.62,-9861.53,60,0
--     .goto 1436/0,1192.12,-10175.13,60,0
--     .goto 1436/0,1019.57,-10204.30,60,0
--     .goto 1436/0,1013.62,-9861.53
--     >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
-- 	>>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
-- 	.complete 151,1 --Handful of Oats (8)
-- step
--     #label FurlbrowFarm
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
--     .turnin 64 >> Turn in The Forgotten Heirloom
--     .target +Farmer Furlbrow
--     .goto 1436/0,918.42,-9851.50
--     .turnin 151 >> Turn in Poor Old Blanchy
--     .target +Verna Furlbrow
--     .goto 1436/0,919.47,-9853.13
-- step
--     #completewith SaldeanVendor
-- 	.goto 1436/0,1055.27,-10128.70
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
--     .vendor >> |cRXP_BUY_Vendor trash|r
--     >>|cRXP_WARN_Do NOT sell|r |T133884:0|t[Murloc Eyes], |T135997:0|t[Goretusk Snouts], |T134341:0|t[Goretusk Livers] |cRXP_WARN_or|r |T133972:0|t[Stringy Vulture Meat]
-- 	.target Farmer Saldean
-- step
--     #optional
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
--     .goto 1436/0,1042.67,-10111.670
--     .turnin 38 >> Turn in Westfall Stew
--     .isQuestComplete 38
--     .target Salma Saldean
-- step
--     #optional
--     .goto 1436/0,1213.400,-10153.800
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
--     .target Ozwin Ironsprocket::253395
--     .accept 92909 >>Accept Harvesting the Harvesters
--     .turnin 92909 >>Turn in Harvesting the Harvesters
--     .itemcount 255007,14 -- Golem Isospring (14)
--     .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
-- step
--     #optional
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
--     .goto 1436/0,1042.67,-10111.670
--     .turnin 38 >> Turn in Westfall Stew
--     .isQuestComplete 38
--     .target Salma Saldean
-- step
--     .isQuestAvailable 38
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,80,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1460.22,-10224.83,60,0
--     .goto 1436/0,1238.67,-9907.73
--     >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Okra|r and |cRXP_LOOT_Flasks of Oil|r
--     .collect 732,3,38,1 --Okra (3)
--     .collect 814,5,103,1 --Flask of Oil (5)
-- step
--     .isQuestTurnedIn 38
--     #label HarvestW
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,80,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1460.22,-10224.83,60,0
--     .goto 1436/0,1238.67,-9907.73
--     >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Flasks of Oil|r
--     .collect 814,5,103,1 --Flask of Oil (5)
-- step
--     #optional
--     .goto 1436/0,1213.400,-10153.800
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
--     .target Ozwin Ironsprocket::253395
--     .accept 92909 >>Accept Harvesting the Harvesters
--     .turnin 92909 >>Turn in Harvesting the Harvesters
--     .itemcount 255007,14 -- Golem Isospring (14)
--     .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
-- step
--     .goto 1436/0,1179.52,-10382.57,75,0
--     .goto 1436/0,1138.22,-10474.97,75,0
--     .goto 1436/0,860.67,-10462.83,75,0
--     .goto 1436/0,904.07,-10038.87,75,0
--     .goto 1436/0,1104.62,-9848.000,75,0
--     .goto 1436/0,1298.52,-10028.13,75,0
--     .goto 1436/0,1340.52,-10401.93,75,0
--     .goto 1436/0,1111.97,-10342.20
--     >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
--     .collect 729,3,38,1 --Stringy Vulture Meat (3)
--     .mob +Young Fleshripper
--     .mob +Fleshripper
--     .collect 731,3,38,1 --Goretusk Snout (3)
--     .mob +Young Goretusk
--     .mob +Goretusk
--     .collect 723,8,22,1 --Goretusk Liver (8)
--     .mob +Young Goretusk
--     .mob +Goretusk
-- step
--     #label SaldeanVendor
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
-- 	.target Salma Saldean
--     .goto 1436/0,1042.67,-10111.670
--     .turnin 38 >> Turn in Westfall Stew
-- step
--     #optional
--     .goto 1436/0,1213.400,-10153.800
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
--     .target Ozwin Ironsprocket::253395
--     .accept 92909 >>Accept Harvesting the Harvesters
--     .turnin 92909 >>Turn in Harvesting the Harvesters
--     .itemcount 255007,14 -- Golem Isospring (14)
--     .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
-- step
--     #completewith next
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     >>|cRXP_WARN_It is a dynamic respawn area meaning if you kill enough they will keep respawning|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
--     .goto 1436/0,1324.200,-10490.400
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     >>|cRXP_WARN_It is a dynamic respawn area meaning if you kill enough they will keep respawning|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
-- 	.target Gryan Stoutmantle
--     .goto 1436/0,1045.12,-10508.80
--     .turnin 12 >> Turn in The People's Militia
-- step
-- 	.xp <14,1
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
-- 	.target Gryan Stoutmantle
--     .goto 1436/0,1045.12,-10508.80
--     .accept 65 >> Accept The Defias Brotherhood
-- step
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
-- 	.target Scout Galiaan
--     .goto 1436/0,1126.67,-10636.670
--     .turnin 153 >> Turn in Red Leather Bandanas
-- step
--     .goto 1436/0,1179.800,-10635.601
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba Fairmoon::253092|r
--     .target Alba Fairmoon::253092
--     .turnin 92742 >>Turn in Testing the Wells
--     .turnin 92744 >>Turn in Murloc Gills
-- step
--     .hs >> Hearth to Stormwind
--     .bindlocation 16509,1
--     .cooldown item,6948,>2,1
--     .zoneskip Stormwind City
--     .zoneskip Darkshore
-- step
--     #completewith DeeprunEnter
--     .goto 1436/0,1037.42,-10628.27
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
--     .fly Stormwind >> Fly to Stormwind
--     .target Thor
--     .zoneskip Stormwind City
--     .zoneskip Darkshore

-- step << Rogue
--     #ah
--     .goto 1453/0,609.63,-8787.71
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
--     .vendor 1287 >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from her or something better from the Auction House and equip it your off-hand|r
--     .money <0.3815
--     .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
--     .target Marda Weller
-- step << Rogue
--     #ssf
--     .goto 1453/0,609.63,-8787.71
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
--     .vendor 1287 >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from her|r
--     .money <0.3815
--     .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
--     .target Marda Weller
-- step << Rogue
--     .goto 1453/0,377.47,-8752.39
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
--     .train 1758,1
--     .trainer >> Train your class spells
--     .target Osborne the Night Man
--     .xp <16,1
-- step << Warrior
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
--     .goto 1453/0,358.25,-8728.28,15,0
--     .goto 1453/0,302.6,-8685.53,15,0
-- 	.goto 1453/0,323.3,-8689.29
--     .train 1160,1
--     .trainer >> Train your class spells
--     .target Wu Shen
--     .target Ilsa Corbin
--     .xp <16,1
-- step << Hunter
--     .goto 1453/0,552.78,-8415.71
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r inside
--     .trainer >> Train your class spells
--     .target Einris Brightspear
--     .xp <16,1
-- step << Druid
--     .goto 1453/0,1347.6192,-8591.2168
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theridran|r
--     .trainer >>Train your class spells
-- 	.target Theridran
--     .xp <16,1
-- step
--     .goto 1453/0,719.67,-8550.30
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
--     .turnin 399 >> Turn in Humble Beginnings
--     .target Baros Alexston
--     .isQuestComplete 399
-- step << Priest
--     #optional
--     #completewith next
--     .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral
-- step << Priest
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
--     .goto 1453/0,862.89,-8519.61
--     .trainer >> Train your class spells
--     .train 8122,1
--     .target Brother Joshua
--     .xp <16,1
-- step
--     #optional
--     #label endOfTheGuide
-- step
--     #label DeeprunEnter
--     #completewith next
--     .goto 1453/0,562.300,-8385.300,20,0
--     .goto 1453/0,522.000,-8352.101
--     .subzone 2257 >>Enter the Deeprun Tram
--     .zoneskip Ironforge
--     .zoneskip Loch Modan
--     .zoneskip Dun Morogh
-- step
--     .zone Ironforge >> Take the tram to Ironforge
--     .zoneskip Loch Modan
--     .zoneskip Dun Morogh


]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !NightElf
#name 13-15 Cerro Oeste 
#displayname 14-15 Cerro Oeste << Gnome/Dwarf !Hunter
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#next 15-17 Costa Negra

step
    #optional
    .maxlevel 14,endOfTheGuide

step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >> Defina sua Pedra de Retorno em Ventobravo
    .target Innkeeper Allison
    .bindlocation 16509
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre os seguintes itens para entregas mais rápidas em Cerro Oeste em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133972:0|t[Stringy Vulture Carne]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusco Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusco Liver]
    -->>|T4548890:0|t[Golem Isospring]
    -->>|T132995:0|t[Harvester Gyrostabilizer]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    --.collect 255007,14,92909,1 -- Golem Isospring (14)
    --.collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
    .target Auctioneer Jaxon

step << Human
    .goto 1453/0,489.99,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .turnin 6261 >> Entregue Dungar Tragolongo
    .accept 6285 >> Aceite Retornar a Lewis
    .target Dungar Longdrink

step << !Skyborne
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >> Voe para Cerro Oeste << !NightElf
    .fp Stormwind >> Aprenda o Ponto de Voo de Ventabela << NightElf
    .target Dungar Longdrink
step
    #completewith SaldeanVendor
    #optional
    .goto 1429/0,875.96,-9814.400
    .zone Westfall >> Viaje até Cerro Oeste
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r
    .accept 64 >> Aceite A Herança Esquecida
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vera Taturana|r
    .accept 36 >> Aceite Ensopado de Cerro Oeste
    .accept 151 >> Aceite Pobre Velha Brancurinha
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >> Vá para a Fazenda Saldean
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .accept 9 >> Aceite Os Campos da Morte
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte << !Human
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .turnin 36 >> Entregue Cozido de Costa Negra
    .target Salma Saldean
    .accept 38 >> Aceite Ensopado de Cerro Oeste
    .accept 22 >> Aceite Empadão de Fígado de Goretusco
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    .target Quartermaster Lewis
    .goto 1436/0,1021.67,-10500.63
    .turnin 6285 >> Entregue Volte para Lewis
step << !Human
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 109 >> Entregue Miguel Mantoforte
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 12 >> Aceite A Milícia do Povo
step << skip
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Danuvin|r
    .accept 102 >> Aceite Patrulhando Cerro Oeste
step << Human
    #requires Lewis
    .goto 1436/0,1126.67,-10636.670
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Aceite Bandanas de Couro Vermelho
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Aceite Bandanas de Couro Vermelho
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Érica|r
    .vendor >>|cRXP_BUY_Compre comida/água se necessário|r
	.target Innkeeper Heather
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alba Fairmoon::253092|r
    .target Alba Fairmoon::253092
    .accept 92742 >>Aceite Testando os Poços
    .accept 92744 >>Aceite Brânquias de Murloc
step
    #optional
    .abandon 102 >> Abandone Patrulhando Cerro Oeste
    >>|cRXP_WARN_Você não vai completar esta missão neste guia|r
step
	#completewith MurlocEyeGills
    >>Abra o |cRXP_PICK_Saco de Aveia|r no chão. Saque-os para obter o |cRXP_LOOT_Handful of Oats|r
    >>|cRXP_WARN_Você normalmente pode encontrá-los perto de cercas de fazenda ou edifícios|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
    >>Mate os |cRXP_ENEMY_Young Goretusks|r e os |cRXP_ENEMY_Young Fleshrippers|r. Saqueie-os para obter a |cRXP_LOOT_Vulture Carne|r, os |cRXP_LOOT_Snouts|r e os |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith TravelCompass
    >>Mate os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os para conseguir suas |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #label TravelCompass
    .isOnQuest 399
    .goto 1436/0,1602.67,-10629.67,75 >> Vá para Alexston's Farmstead
    >>|cRXP_WARN_Complete os outros objetivos de missão conforme vai para lá|r
step << skip -- quests drop rate is beyond dreadful. over 50 kills to complete
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r no celeiro
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Aceite Colhendo os Colhedores
step
    #sticky
    #completewith bennytime
    >>Mate os |cRXP_ENEMY_Harvest Watchers|r localizados em qualquer um dos campos conforme você passa por eles
    >>Saque-os para obter seus |cRXP_LOOT_Okra|r e |cRXP_LOOT_Flasks of Oil|r
    .mob Harvest Watcher
    .complete 9,1 --Havest Watcher slain (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>Abra o |cRXP_PICK_Alexston's Baú|r. Saqueie-o para obter o |cRXP_LOOT_A Simple Compass|r
    >>|cRXP_WARN_Evasão dos inimigos em frente ao edifício queimado. Saque-o da parte de trás, ao lado da chaminé. Usar a chaminé para se ocultar dos feitiços de |cRXP_ENEMY_Pillagers|r se necessário|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    #completewith bennytime
    >>Mate os |cRXP_ENEMY_Jovens Goretusks|r e os |cRXP_ENEMY_Jovens Fleshrippers|r. Saqueie-os para obter |cRXP_LOOT_Vulture Carne|r, |cRXP_LOOT_Snouts|r e |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith bennytime
    >>Mate os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os para conseguir suas |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1266.67,-9927.33,75 >> Vá para Jansen Stead, |cRXP_WARN_trabalhe em completar os outros objetivos de missão conforme você se move para lá|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>Abra o |cRXP_PICK_Furlbrow's Wardrobe|r. Saqueie-o para obter o |cRXP_LOOT_Furlbrow's Pocket Vigiar|r
    >>|cRXP_WARN_Você pode saquear o |cRXP_PICK_Furlbrow's Wardrobe|r de fora se você posicionar sua câmera corretamente|r
	>>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Benny Blanco|r. Ele ataca com força|r
    .complete 64,1 --Furlbrow's Pocket Watch
step << skip
    #completewith next
    >>Mate os |cRXP_ENEMY_Riverpaw Gnolls|r e os |cRXP_ENEMY_Riverpaw Batedores|r. Saqueie-os para obter seus |T134297:0|t|cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Use o|r |T236996:0|t[Well Amostra de Água Kit] |cRXP_WARN_no poço de Jansen Stead|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step
    #label MurlocEyeGills
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Mate os |cRXP_ENEMY_Murloc Raiders|r e os |cRXP_ENEMY_Murloc Coastrunners|r. Saque-os para obter seus |cRXP_LOOT_Olhos|r e |cRXP_LOOT_Gills|r
    >>|cRXP_WARN_Se você não tiver muitas |cRXP_LOOT_Gills|r quando terminar |cRXP_LOOT_Olhos|r, pule este passo|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step << skip
    #label GnollPaws
    .goto 1436/0,1042.67,-9715.0,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1412.62,-9720.83,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1412.62,-9720.83
    .goto 1436/0,1517.97,-9743.000,0
    .goto 1436/0,1184.07,-9745.80,0
    .goto 1436/0,1028.32,-9710.330,0
    >>Mate os |cRXP_ENEMY_Riverpaw Gnolls|r e os |cRXP_ENEMY_Riverpaw Batedores|r. Saqueie-os para obter seus |T134297:0|t|cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Abra o |cRXP_PICK_Saco de Aveia|r no chão. Saque-os para obter o |cRXP_LOOT_Handful of Oats|r
	>>|cRXP_WARN_Você normalmente pode encontrá-los perto de cercas de fazenda ou edifícios|r
	.complete 151,1 --Handful of Oats (8)
step << Human Warlock
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .turnin 64 >> Entregue A Herança Esquecida
    .turnin 184 >> Entregue Escritura do Furlbrow
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Entregue Pobre Velha Brancurinha
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
    .isOnQuest 184
step
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .turnin 64 >> Entregue A Herança Esquecida
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Entregue Pobre Velha Brancurinha
    .target +Verna Furlbrow
    .goto 1436/0,919.47,-9853.13
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .vendor >> |cRXP_BUY_Lixo de venda|r
    >>|cRXP_WARN_NÃO venda|r |T133884:0|t[Murloc Olhos], |T135997:0|t[Goretusco Snouts], |T134341:0|t[Goretusco Livers] |cRXP_WARN_ou|r |T133972:0|t[Stringy Vulture Carne]
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Entregue Campos de Matança
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Vá para Empadão de Fígado de Goretusco
    .turnin 38 >> Entregue Cozido de Costa Negra
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Aceite Colhendo os Colhedores
    .turnin 92909 >>Entregue Colhendo os Colhedores
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Vá para Empadão de Fígado de Goretusco
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Entregue Cozido de Costa Negra
    .isQuestComplete 38
    .target Salma Saldean
step
    .isQuestAvailable 38
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Mate os |cRXP_ENEMY_Vigias da Colheita|r. Saqueie-os para obter |cRXP_LOOT_Okra|r e |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .isQuestTurnedIn 38
    #label HarvestW
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Mate os |cRXP_ENEMY_Vigias da Colheita|r. Saqueie-os para obter |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
    .collect 814,5,103,1 --Flask of Oil (5)
step
    #optional
    .isQuestComplete 9
    .subzoneskip 107,1 -- forces early turnin if already at same farm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Entregue Campos de Matança
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Aceite Colhendo os Colhedores
    .turnin 92909 >>Entregue Colhendo os Colhedores
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    .goto 1436/0,1179.52,-10382.57,75,0
    .goto 1436/0,1138.22,-10474.97,75,0
    .goto 1436/0,860.67,-10462.83,75,0
    .goto 1436/0,904.07,-10038.87,75,0
    .goto 1436/0,1104.62,-9848.000,75,0
    .goto 1436/0,1298.52,-10028.13,75,0
    .goto 1436/0,1340.52,-10401.93,75,0
    .goto 1436/0,1111.97,-10342.20
    >>Mate os |cRXP_ENEMY_Jovens Goretusks|r e os |cRXP_ENEMY_Jovens Fleshrippers|r. Saqueie-os para obter |cRXP_LOOT_Vulture Carne|r, |cRXP_LOOT_Snouts|r e |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Entregue Campos de Matança
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Entregue Ensopado de Cerro Oeste
    .turnin 22 >> Vá para Empadão de Fígado de Goretusco
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Aceite Colhendo os Colhedores
    .turnin 92909 >>Entregue Colhendo os Colhedores
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Defias Trapeiros|r e os |cRXP_ENEMY_Defias Contrabandistas|r. Saqueie-os para obter |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_É uma área de ressurgimento dinâmico, significando que se você matar o suficiente, continuarão ressurgindo|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Use o|r |T236996:0|t[Well Amostra de Água Kit] |cRXP_WARN_no poço Molsen Farm|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    .isOnQuest 153
    .goto 1436/0,1324.200,-10490.400
    >>Mate os |cRXP_ENEMY_Defias Trapeiros|r e os |cRXP_ENEMY_Defias Contrabandistas|r. Saqueie-os para obter |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_É uma área de ressurgimento dinâmico, significando que se você matar o suficiente, continuarão ressurgindo|r
    >>|cRXP_WARN_Se você ainda está muito para trás em |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r e matou todos os |cRXP_ENEMY_Defias|r necessários, abandone a missão|r [Vermelho Couro Bandanas]
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #optional
    .goto 1436/0,1324.200,-10490.400
    >>Mate os |cRXP_ENEMY_Defias Trapeiros|r e os |cRXP_ENEMY_Defias Contrabandistas|r. Saqueie-os para obter |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_É uma área de ressurgimento dinâmico, significando que se você matar o suficiente, continuarão ressurgindo|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >> Entregue The People's Militia
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Aceitar A Irmandade Défias
step
    #optional
    .isQuestComplete 102
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Danuvin|r
	.target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .turnin 102 >> Entregue Patrulhando Cerro Oeste
step
    .isQuestComplete 153
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Galiaan|r
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >> Entregue Bandanas de Couro Vermelho
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alba Fairmoon::253092|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Entregue Testando os Poços
    .turnin 92744 >>Entregue Brânquias de Murloc
    .isQuestComplete 92744
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alba Fairmoon::253092|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Entregue Testando os Poços
step
    .hs >> Use sua Pedra de Retorno para ir a Ventobravo
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Voe para Ventobravo
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

step << Human Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    .vendor 1287 >>|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dela ou algo melhor do Leilão e equipe-a em sua mão não-dominante|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marcia Weller
step << Human Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    .vendor 1287 >>|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dela|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marcia Weller
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .train 1758,1
    .trainer >> Treine suas magias de classe
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >> Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Catarina Gurjão|r
    >>|cRXP_BUY_Compre um|r |T134335:0|t[MIçanga Brilhosa] |cRXP_BUY_e três|r |T134324:0|t[Reptantes] |cRXP_BUY_dela. Isto é para uma missão de 900xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    >>|cRXP_WARN_Se você já treinou antes, pule este passo|r
    .trainer >> Treine suas magias de classe
    .target Einris Brightspear
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .turnin 399 >> Entregue Começos Humildes
    .target Baros Alexston
    .isQuestComplete 399
step << NightElf Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Theridran|r
    .trainer >>Treine suas magias de classe
	.target Theridran
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Treine suas magias de classe
    .train 6222,1
    .target Ursula Deline
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Vá para Mago Torre
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .train 2137,1
    .trainer >> Treine suas magias de classe
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith train19742 << Paladin
    #completewith next << Priest
    .goto 1453/0,809.52,-8579.22,20 >> Viaje até a Catedral de Ventobravo
step << Human Paladin
    .isOnQuest 1780
    .goto 1453/0,845.800,-8545.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 1780 >>Entregue Tomo de Divindade
    .target Duthorian Rall
step << Paladin
    #label train19742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Treine suas magias de classe
    .train 19742,1
    .target Arthur the Faithful
step
    #optional
    #sticky
    .abandon 153 >> Abandone Vermelho Couro Bandanas se você não terminou
step
    #optional
    #sticky
    .abandon 92744 >> Abandone Murloc Gills se você não terminou
step
    #optional
    #label endOfTheGuide

step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >> Defina sua Pedra de Retorno em Ventobravo
    .target Innkeeper Allison
    .bindlocation 16509
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Nacos de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Acém de Lobo]|r |cRXP_BUY_para aumentar sua habilidade de|r |T133971:0|t[Culinária] |cRXP_BUY_mais tarde|r
    >>|cRXP_WARN_Sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade deve ser 10 para entregar em Costa Negra para|r |T133972:0|t[Strider Carne]
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens seguintes para entrega mais rápida em Costa Negra em breve:|r
    >>|T133972:0|t[Carne de Moa]
    >>|T133912:0|t[Garoupa da Costa Negra]
    >>|T133970:0|t|cRXP_LOOT_[Nacos de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Acém de Lobo]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,<1,1 -- step only displays if skill is 1 or higher
step
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens seguintes para entrega mais rápida em Costa Negra em breve:|r
    >>|T133912:0|t[Garoupa da Costa Negra]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
step
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Aceite O Simpatia de Philmor
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilbert Cinza::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Aceite Fishin' Tempo
    .turnin 95065 >>Entregue Fishin' Tempo
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Enquanto espera o barco no cais:|r
    .cast 818 >>|cRXP_WARN_Crie uma|r |T135805:0|t[Fogo para Cozinhar] |cRXP_WARN_(no seu Livro de Profissão)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Enquanto espera o barco no cais:|r
    .cast 818 >>|cRXP_WARN_Crie uma|r |T135805:0|t[Fogo para Cozinhar] |cRXP_WARN_(no seu Livro de Profissão)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Enquanto espera o barco no cais:|r
    .cast 818 >>|cRXP_WARN_Crie uma|r |T135805:0|t[Fogo para Cozinhar] |cRXP_WARN_(no seu Livro de Profissão)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os seguintes itens
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Carne Fibrosa de Lobo]|r em [Carne de Lobo Chamuscada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Carne Fibrosa de Lobo]|r em [Carne de Lobo Chamuscada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Aumente sua habilidade de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Costa Negra, se necessário|r
    .zone Darkshore >> Pegue o barco para Costa Negra
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Pegue o barco para Costa Negra
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !NightElf
#name 15-17 Costa Negra
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#next 17-18 Hall of Thanes

step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .accept 963 >> Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #optional
    #completewith next
    .goto 1439/1,525.800,6414.800,8 >> Suba a rampa em direção a |cRXP_FRIENDLY_Xafetim Manigiro|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r no andar de cima
    .accept 983 >> Aceite Caixazorra 827
    .target Wizbang Cranktoggle
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >> Aceite Cave Mushrooms
    .target Barithras Moonshade
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >> Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2118 >> Aceite Terras Pestilentas
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Aceite Uma grande ameaça?
    .target Terenthis
step
    .goto 1439/1,503.100,6402.100
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 98025 >>Aceite WANTED: Jai'vhanel
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Aceite Vara de canoeiro, prefere pescar
    .turnin 1141 >> Entregue Vara de canoeiro, prefere pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fp Auberdine >> Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto 1439/1,272.54,5255.27,0
    .goto 1439/1,271.23,4902.88,0
    .goto 1439/1,438.91,5131.69,0
    .goto 1439/1,272.54,5255.27,40,0
    .goto 1439/1,271.23,4902.88,40,0
    .goto 1439/1,438.91,5131.69,40,0
    >>|cRXP_WARN_Mande seu ajudante atacar um |cRXP_ENEMY_Ursocardo|r Assim que seu ajudante for atordoado pelo |cRXP_ENEMY_Ursocardo|r abandone seu ajudante e comece a domá-lo|r
    .train 16828 >>|cRXP_WARN_Use|r |T132164:0|t[Domar Fera] |cRXP_WARN_em um |cRXP_ENEMY_Ursocardo|r para domesticá-lo|r
    .target Thistle Bear
    .train 17255,1 --skips if they also already know bite r2
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    >>Talvez seja necessário entrar na água para encontrá-los
    >>|cRXP_WARN_Mesmo que alguns desses estejam cinza, ainda assim complete a missão pois ela faz parte de uma série|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Abra o |cRXP_PICK_Criatura Marinha Encalhada|r. Saqueie para obter |cRXP_LOOT_Ossos de Criaturas Marinhas|r
    .complete 3524,1 --Sea Creature Bones (1)



step << Druid
    #ah
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Aumente seu Nível de|r |T136065:0|t[Herborismo] |cRXP_WARN_para 15 para poder coletar|r |T134187:0|t[Earthroot] |cRXP_WARN_para uma missão de classe importante em breve. Você pode desaprender depois|r
    >>|cRXP_WARN_Se você preferir comprar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_da Casa de Leilões depois, pule este passo|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Aumente seu|r |T136065:0|t[Herborismo] |cRXP_WARN_para 15 para conseguir coletar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_para uma missão de classe importante em breve. Você pode desaprendê-lo depois|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith CliffspringEnd
    #requires GatheringQ
    >>Coletar 5 |T134187:0|t[Earthroot] via |T136065:0|t[Herborismo] |cRXP_WARN_e raramente|cRXP_PICK_ Battered Chests|r para uma missão de classe futura|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1



step
    #completewith next
    >>|cRXP_WARN_Usar|r |T134335:0|t[Tharnariun's Esperança] |cRXP_WARN_em um|r |cRXP_ENEMY_Raiva Ursocardo|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the|r |cRXP_ENEMY_Bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO |cRXP_ENEMY_BEAR|r NEARBY==|r
    >>Você pode desperdiçar a armadilha e tornar a missão impossível de concluir Se isso acontecer com você, será necessário retornar ao NPC que dá a missão e pedir outra armadilha
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto 1439/1,393.72,5993.24
    >>Corra em direção à borda do acampamento dos Furbolgs
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Usar|r |T134335:0|t[Tharnariun's Esperança] |cRXP_WARN_em um|r |cRXP_ENEMY_Raiva Ursocardo|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO BEAR NEARBY==|r
    >>Você pode desperdiçar a armadilha e tornar a missão impossível de concluir Se isso acontecer com você, será necessário retornar ao NPC que dá a missão e pedir outra armadilha
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    #label invisThistle
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .turnin 983 >> Entregue Caixazorra 827
    .accept 1001 >> Aceite Buzzbox 411
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Entregue Deixa a água me levar
    .accept 4681 >> Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Viaje para |cRXP_FRIENDLY_Cerellean Garralva|r no cais
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .accept 963 >> Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Viaje até o final da doca, depois pule na água
step
    #optional
    #completewith washed1
    .goto 1439/1,741.52,6570.95,0
    .goto 1439/1,915.10,6333.84,0
    .goto 1439/1,778.20,6231.66,0
    >>Mate os |cRXP_ENEMY_Darkshore Threshers|r. Saqueie-os para obter os |cRXP_LOOT_Thresher Olhos|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>Abra a |cRXP_PICK_Tartaruga Marinha Descarnada|r. Saqueie para obter |cRXP_LOOT_Carcaça de Tartaruga Marinha|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >> Aceite Cave Mushrooms
    .target Barithras Moonshade
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >> Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2118 >> Entregue Terras Pestilentas
    .accept 2138 >> Aceite Purificação dos infectados
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Entregue Uma grande ameaça?
    .accept 985 >> Aceite Uma grande ameaça?
    .accept 4761 >> Aceite Trovejius Tecevento
    .target Terenthis
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .accept 982 >> Aceite Deep Oceano, Vast Sea
    .target Gorbold Steelhand
step
    #optional
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >> Aceite Vida Fácil de Moa
    .turnin 2178 >> Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #optional
    #completewith next
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalmond|r dentro
    .vendor 4182 >> |cRXP_BUY_Compre o máximo de|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_ou|r |T133634:0|t[Bolsa de Couro Marrom] |cRXP_BUY_conforme você precisar|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Sharp Flechas] |cRXP_BUY_ou|r |T132384:0|t[Heavy Shots] |cRXP_BUY_dele até que sua Aljava/Bolsa de Munição esteja cheia|r << Hunter
    .target Dalmond
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >> Entregue Trovejius Tecevento
    .accept 4762 >> Aceite Rio Fontescarpa
    .accept 954 >> Aceite Bashal'Aran
    .accept 958 >> Aceite Ferramentas dos Altaneiros << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >> Entregue Trovejius Tecevento
    .accept 4762 >> Aceite Rio Fontescarpa
    .accept 954 >> Aceite Bashal'Aran
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >> Entregue Trovejius Tecevento
    .accept 4762 >> Aceite Rio Fontescarpa
step
    #completewith MistVeil
    .goto 1439/1,620.35,6768.76,0
    .goto 1439/1,602.66,6924.21,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    >>Mate os |cRXP_ENEMY_Darkshore Threshers|r. Saqueie-os para obter os |cRXP_LOOT_Thresher Olhos|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
    .isOnQuest 982
step
    #optional
    #completewith next
    +Pressione Escape, depois vá em -> Opções -> Controles
    >>Marque "Ativar Tecla de Interação" e vincule a opção "Interagir com o Alvo" a uma tecla
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>==FIQUE ATENTO AO SEU MEDIDOR DE FÔLEGO==
    >>Nade debaixo d’água até a parte externa da traseira do barco
    >>|cRXP_WARN_Na localização da seta, pressione sua tecla de "Interagir com o Alvo" para saquear o|cRXP_LOOT_ Cofre da Aurora Prateada|r pelo lado de fora do barco|r
    >>|cRXP_WARN_Se você não quiser fazer isso, nade debaixo d’água até o piso inferior do barco e saque o|cRXP_LOOT_ Cofre da Aurora Prateada|r por dentro|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>==FIQUE ATENTO AO SEU MEDIDOR DE FÔLEGO==
    >>Nade debaixo d’água até a parte externa da traseira do barco
    >>|cRXP_WARN_Na localização da seta, pressione sua tecla de "Interagir com o Alvo" para saquear o|cRXP_LOOT_ Cofre do Véu da Névoa|r pelo lado de fora do barco|r
    >>|cRXP_WARN_Se você não quiser fazer isso, nade debaixo d’água até o piso inferior do barco e saque o|cRXP_LOOT_ Cofre do Véu da Névoa|r por dentro|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #loop
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,310.53,7077.48,55,0
    .goto 1439/1,404.85,7099.75,55,0
    .goto 1439/1,537.82,7023.33,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    >>Mate os |cRXP_ENEMY_Darkshore Threshers|r. Saqueie-os para obter os |cRXP_LOOT_Thresher Olhos|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    .goto 1439,41.901,31.339
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4723 >> Aceite Criatura Marinha Encalhada
step
    .goto 1439,41.960,28.616
    >>Clique em |cRXP_PICK_Buzzbox 411|r no chão
    .turnin 1001 >> Entregue Buzzbox 411
    .isQuestComplete 1001
step
    #optional
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >> Viaje para |cRXP_FRIENDLY_Astérion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r no caminho|r
    .turnin 954 >> Entregue Bashal'Aran
    .accept 955 >> Aceite Bashal'Aran
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    #label Bashal1
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r no caminho|r
    .turnin 954 >> Entregue Bashal'Aran
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Mate |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r. Saqueie-os para obter |cRXP_LOOT_Brinco de Capeta|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Sátiro Deth'ryll|r por enquanto|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >> Entregue Bashal'Aran
    .accept 956 >> Aceite Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .accept 956 >> Aceite Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #optional
    .abandon 955 >> Abandone Bashal'Aran
step
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Mate |cRXP_ENEMY_Sátiro Deth'ryll|r. Saqueie-os para obter |cRXP_LOOT_Selo Antigo de Pedra-da-lua|r
    >>|cRXP_WARN_Tenha cuidado pois eles não têm respawns dinâmicos|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >> Entregue Bashal'Aran
    .accept 957 >> Aceite Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .accept 957 >> Aceite Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step
    .goto 1439,47.314,48.676
    >>Viaje até o |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Tenha cuidado com os dois grupos de 2 |cRXP_ENEMY_Luniscantes Enraivecidos|r a oeste do |cRXP_PICK_Cristal Vermelho Misterioso|r pois os pares mais próximos uns dos outros estão vinculados entre si|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step
    #sticky
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    -->>|cRXP_WARN_You may want to group with others nearby if you can't find her. Ask in General Chat (/1) to group with anyone else that is also looking for her|r
    -->>|cRXP_WARN_If you can't find her and want to try again later at the cost of potentially grinding more mobs soon, skip this step|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Mate |cRXP_ENEMY_Altaneira Amaldiçoada|r, |cRXP_ENEMY_Altaneira Ululante|r e |cRXP_ENEMY_Altaneiro Contorcido|r. Saqueie-os para obter |cRXP_LOOT_Relíquias|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .accept 953 >> Aceite A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
    .xp >17,1
step
    .goto 1439,42.652,63.145
    >>Clique em |cRXP_PICK_A Queda de Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>Clique na |cRXP_PICK_Chama Antiga|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #label TheLay
    .goto 1439/1,105.52,5770.100
    >>Clique em |cRXP_PICK_A Fundação de Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    .isOnQuest 98025
    .waypoint 1439/1,-18.100,5779.800
    >>Mate o |cRXP_ENEMY_Jai'vhanel|r. Saque deles pelo |cRXP_LOOT_Feather of Jai'vhanel|r
    .complete 98025,1 --|1/1 Feather of Jai'vhanel
    .mob Jai'vhanel
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    .isQuestComplete 953
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .turnin 953 >> Entregue A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
    #optional
    #completewith FurbolgGrind
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto 1439,37.105,62.167
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4722 >> Aceite Tartaruga Marinha Encalhada
step
    #loop
    #label FurbolgGrind
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Mate |cRXP_ENEMY_Desbravador Bosquenero|r e |cRXP_ENEMY_Xamã Bosquenero|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #completewith TOTH
    .goto 1439,36.701,45.122
    .subzone 442 >> Vá para Auberdine
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Entregue Tartaruga Marinha Encalhada
    .turnin 4723 >> Entregue a Criatura Marinha Encalhada
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Entregue |cRXP_FRIENDLY_Cerellean Garralva|r no cais
step
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .turnin 963 >> Entregue Amor Eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    .isOnQuest 98025
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 98025 >>Entregue WANTED: Jai'vhanel
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >> Entregue O Cristal Vermelho
    .accept 4812 >> Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,37.767,44.001
    >>Use o [Tubo de Água Vazio] no poço lunar de Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >> Entregue Purificação dos infectados
    .accept 2139 >> Aceite Tharnariun's Esperança
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2139 >> Aceite Tharnariun's Esperança
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Entregue Uma grande ameaça?
    .target Terenthis
step
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >> Suba as escadas
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Elissa Brisastral|r acima
    .accept 965 >> Aceite A Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .turnin 982 >> Entregue Deep Oceano, Vast Sea
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #optional
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >> Aceite Vida Fácil de Moa
    .turnin 2178 >> Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 958 >> Entregue Ferramentas dos Altaneiros
    .target Thundris Windweaver
    .isQuestComplete 958
step
    .goto 1439,47.314,48.676
    >>Clique no |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Cuidado com os 2 grupos de 2|cRXP_ENEMY_ Raging Moonkins|r a oeste da|cRXP_PICK_ Mysterious Vermelho Cristal|r pois as duplas mais próximas uma da outra estão acorrentadas juntas|r
    .turnin 4812 >> Entregue Como cascatas
    .accept 4813 >> Aceite Fragmentos incrustados
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >> Entregue Bashal'Aran
    .isOnQuest 957
    .target Asterion
step
    #optional
    #completewith CrabTurtle
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label CrabTurtle
    .goto 1439/1,47.88,7433.800
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4725 >> Aceite Tartaruga Marinha Encalhada
step
    .goto 1439/1,-386.39,7219.830
    >>Use o [Tubo de Amostragem Vazio] na base do Rio Fontescarpa
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #optional
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Vá para a Cliffspring Rio Cave
step << Druid
    .goto 1439/1,-660.18,6874.43
    >>Use o [Amostrador Vazio das Cataratas do Rio Penhasco] na água na entrada da Caverna do Rio Penhasco
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
    .isOnQuest 6122
step
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Pegue os |cRXP_LOOT_Scaber Stalks|r e um |cRXP_LOOT_Death Cap|r no chão
    >>|cRXP_WARN_Permaneça na seção superior. Se não houver um|cRXP_LOOT_ Cogumelo-da-morte|r no final do lado superior, desça e pegue um na sala ao sul abaixo|r
    >>|cRXP_WARN_Tenha cuidado com os|cRXP_ENEMY_Cavalga-onda Skamatrom|r |rao conjurarem|cRXP_WARN_|r[Jato Aquático] (Alcance Instantâneo: causa dano em área nos inimigos próximos e os empurra para trás) certifique-se de não estar em uma posição para ser derrubado do nível superior da caverna
    .complete 947,1 --Scaber Stalk (5)
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49
    .complete 947,2 --Death Cap (1)
    .goto 1439/1,-685.72,6746.49
step
    .deathskip >> Morra e reapareza no cemitério de Auberdine
    .target Anjo da Cura
step
    #optional
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >> Viaje para Auberdine
step
    #label CliffspringEnd
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4762 >> Entregue Rio Fontescarpa
    .target Thundris Windweaver
step
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >> Aceite Vida Fácil de Moa
    .turnin 2178 >> Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .itemcount 5469,5 -- strider meat (5)

step << Druid
    #optional
    .isOnQuest 6122
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .turnin 6122 >> Entregue The Principal Source
    .accept 6123 >> Aceite Colhendo the Curar
    .target Alanndarian Nightsong
step << Druid
    #optional
    .isQuestTurnedIn 6123
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 6123 >> Aceite Colhendo the Curar
    .target Alanndarian Nightsong
step << !Druid
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >> Entregue Purificação dos infectados
    .accept 2139 >> Aceite Tharnariun's Esperança
    .target Tharnariun Treetender
step
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    >>|cRXP_WARN_Escolha a|r |T135641:0|t[Adaga de Madeira Curva] |cRXP_WARN_pois você deve tentar salvar um|r |T135641:0|t[Dagger] |cRXP_WARN_para seu|r |T132290:0|t[Venenos] |cRXP_WARN_missão depois|r << Rogue
    .turnin 4813 >> Entregue Fragmentos incrustados
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .turnin 947 >> Entregue Cogumelos da Caverna
    .accept 948 >> Aceite Onu
    .target Barithras Moonshade
step
    .goto 1439/1,504.41,6402.39
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 4740 >> Aceite PROCURADO: Lodofundo!
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Entregue a Criatura Marinha Encalhada
    .turnin 4725 >> Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723

----Start of Druid Quest section----
step << Druid
    #completewith TotL
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Pegue o barco para Darnassus
    .zoneskip Darnassus
step << Druid
    #optional
    #label DruidLesson
    #completewith TotL
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Entre no portal roxo para Darnassus
step << Druid
    .goto 1457/1,2563.98,10179.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .accept 26 >> Aceite Uma lição a aprender
    .trainer >> Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #completewith next
    .abandon 729 >> Abandone The Absent Minded Prospector para aceitar Trouble In Costa Negra?
step << Druid
    #optional
	#completewith TotL
	.cast 18960 >> Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    .goto 1450/1,-2676.22,8019.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 26 >> Entregar Uma Lição a Aprender
    .accept 29 >> Aceitar Prova do Lago
    .target Dendrite Starblaze
step << Druid
    .goto 1450/1,-2595.43,7697.24
    >>Nade para Lake Elune'Ara
    >>Abra o |cRXP_PICK_Bauble Recipiente|r. Pegue um |T134125:0|t[Adorno de Altar] dele
    >>|cRXP_WARN_Pode aparecer em diferentes locais subaquáticos|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #completewith next
    .cast 18960 >> Use Teleporte: Clareira da Lua
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    .goto 1450/1,-2212.85,7854.68
    >>Use o [Adorno de Altar] no Santuário da árvore de Remulos.
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    .goto 1450/1,-2224.18,7874.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeana|r
    .turnin 29 >> Entregar Prova do Lago
    .accept 272 >> Aceitar Prova do Leão Marinho
    .target Tajarri
step
    .hs >> Use sua Pedra de Retorno para ir a Ventobravo
    .zoneskip Stormwind City
    .zoneskip Darkshore
    .zoneskip Ironforge
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Entregue Philmor's Simpatia
    .accept 97222 >>Aceite Gatehouse Mercadorias
step
    .goto 1453/0,568.300,-8862.200
    .use 277198 >> |cRXP_WARN_Use o|r |T132762:0|t[Gatehouse Carregamento] |cRXP_WARN_em frente à |cRXP_PICK_Gatehouse Porta|r no andar de cima|r
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step
    #label Gatehouse
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Entregue Gatehouse Mercadorias  
step << Druid
    .goto 1453/0,1095.500,-8741.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Theridran|r
    .trainer >>Treine suas magias de classe
	.target Theridran
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Vá para The Slaughtered Lamb e desça
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Treine suas magias de classe
    .target Ursula Deline
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Vá para Mago Torre
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Treine suas magias de classe
    .target Elsharin
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaje até a Catedral de Ventobravo
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Treine suas magias de classe
    .target Arthur the Faithful
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Treine suas magias de classe
    .target Brother Joshua
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >> Treine suas magias de classe
    .target Einris Brightspear
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Treine as magias do seu mascote
    .target Karrina Mekenda
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >> Treine suas magias de classe
    .target Osborne the Night Man
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Ironforge
    .zoneskip Dun Morogh
step
    .zone Ironforge >> Pegue o bonde para Ironforge
    .zoneskip Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 17-18 Hall of Thanes
#next 18-19 Ruins of Lordaeron
#displayname 16-17 Hall of Thanes << NightElf

step << Skyborne
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >> Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step << !NightElf
    #completewith OII
    +|cRXP_WARN_Agora você vai completar uma pré-missão para Hall of Thanes, depois entre na masmorra|r
step << !NightElf
    #completewith OII
    .zone Dun Morogh >> Vá para Dun Morogh
step << !NightElf
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .accept 96392 >> Aceite A Vigília de Farsen
    .target Earthseer Farsen
step << !NightElf
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Fale com |cRXP_FRIENDLY_Earthseer Farsen|r para ver sua visão distante
    >>|cRXP_WARN_Você pode cancelar a Visão Distante uma vez que o objetivo seja concluído|r
    .target Earthseer Farsen
step << !NightElf
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Pressione ESCAPE para cancelar a Visão Distante|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Você pode cancelar a Visão Distante uma vez que o objetivo seja concluído|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step << !NightElf
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Pressione ESCAPE para cancelar a Visão Distante|r
    .turnin 96392 >> Entregue A Vigília de Farsen
    --.accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step << !NightElf
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Mate os |cRXP_ENEMY_Dark Ferro Spies|r. Saque-os para obter o |T237385:0|t[|cRXP_LOOT_Dark Ferro Mapa|r]
    .use 274268 >>|cRXP_WARN_Use o|r |T237385:0|t[|cRXP_LOOT_Dark Ferro Mapa|r] |cRXP_WARN_para iniciar a missão|r
    -->>|cRXP_WARN_You can skip killing |cRXP_ENEMY_Dark Iron Spies|r for the other quest because they are low level once you find the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    --.complete 96390,1 -- Dark Iron Spy slain 10/10
    --.disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Aceite Mapa Subterrâneo
    .mob Dark Iron Spy
step << !NightElf
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96391 >> Entregue Mapa Subterrâneo
    .accept 96393 >> Aceite Incursão em Old Ironforge
    .target Earthseer Farsen
step << !NightElf
    #optional
    .isQuestComplete 96390
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Entregue Corte o Mal pela Raiz
    .target Earthseer Farsen

step
    #completewith EnterHoT
    +|cRXP_WARN_Comece procurando um grupo para o Hall of Thanes|r
step
    #optional
    #label InIronforge
    #completewith EnterHoT
    .zone Ironforge >> Viaje para Ironforge
step
    #requires InIronforge
    #completewith EnterHoT
    .goto 1455/0,-1054.300,-4843.200,10,0
    .goto 1455/0,-1081.900,-4850.100,10,0
    .goto 1455/0,-1082.800,-4886.000,10,0
    .goto 1455/0,-1087.700,-4821.900,10,0
    .goto 1455/0,-1010.300,-4850.900,10 >> Desça até Old Ironforge pela sala do |cRXP_FRIENDLY_King Magni's|r
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Afadra Dunwall|r
    .accept 96394 >> Aceite Os Mortos Inquietos
    .target Afadra Dunwall
step
    #completewith EnterHoT
    .goto 1455/0,-996.100,-4821.200,10,0
    .goto 1455/0,-972.000,-4803.000,10,0
    .goto 1455/0,-988.900,-4854.400,10 >> |cRXP_WARN_Caia na rampa abaixo|r
step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thom Filch|r
    .accept 96403 >> Aceite Important Heirlooms
    .target Thom Filch
step
    #label EnterHoT
    .enabledungeon HOT
    .goto 1455/0,-933.200,-4821.900
    .subzone 16919 >> Entre no Hall of Thanes

step
    #completewith FaldrimAnvilmar
    >>Saque as |cRXP_PICK_Relíquias Enânicas|r no chão através do Hall of Thanes
    >>|cRXP_WARN_Você pode coletar muitas destas no final da masmorra também|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    #completewith FaldrimAnvilmar
    >>Mate as |cRXP_ENEMY_Aparições Enraivecidas|r e as |cRXP_ENEMY_Almas Atormentadas|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Atendente Fantasmagórico|r
    .accept 96395 >> Aceite Uma Rixa Antiga
    .target Ghostly Attendant
step
    #label FaldrimAnvilmar
    >>Mate |cRXP_ENEMY_Faldrim Anvilmar|r
    .complete 96395,1 -- Faldrim Anvilmar slain (1)
    .mob Faldrim Anvilmar
step
    #completewith next
    +|cRXP_WARN_Retorne ao|r |cRXP_FRIENDLY_Atendente Fantasmagórico|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Atendente Fantasmagórico|r
    .turnin 96395 >> Entregue Uma Rixa Antiga
    .target Ghostly Attendant
step
    >>Mate as |cRXP_ENEMY_Aparições Enraivecidas|r e as |cRXP_ENEMY_Almas Atormentadas|r
    >>|cRXP_WARN_Conclua isto agora pois você pode não ter a chance de terminar depois|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    #completewith ToU
    >>Saque as |cRXP_PICK_Relíquias Enânicas|r no chão através do Hall of Thanes
    >>|cRXP_WARN_Você pode coletar muitas destas no final da masmorra também|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    >>Mate |cRXP_ENEMY_Durgen Dirgehammer|r. Saque-o para o |cRXP_LOOT_Cabeça de Durgen Dirgehammer|r
    .complete 96393,1 -- Durgen Dirgehammer's Head
    .mob Durgen Dirgehammer
step
    #label ToU
    >>Clique em |cRXP_PICK_Tratado de Entendimento|r
    .accept 98423 >> Aceite The Treaty of Understanding
step
    >>Saque as |cRXP_PICK_Relíquias Enânicas|r no chão através do Hall of Thanes
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    .zone Ironforge >> |cRXP_WARN_Saia do Hall of Thanes. A forma mais rápida é correr direto descendo o corredor da sala do chefe final|r
    .subzoneskip 16919,1

step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thom Filch|r
    .turnin 96403 >> Entregue Important Heirlooms
    .target Thom Filch
step
    #completewith next
    .goto 1455/0,-1006.600,-4841.600,10,0
    .goto 1455/0,-969.700,-4841.500,10,0
    .goto 1455/0,-964.300,-4807.500,10,0
    .goto 1455/0,-993.500,-4817.600,10,0
    .goto 1455/0,-983.700,-4847.800,10,0
    .goto 1455/0,-1022.000,-4842.100,10,0
    .goto 1455/0,-994.000,-4843.100,10 >> Volte para |cRXP_FRIENDLY_Afadra Dunwall|r subindo a rampa
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Afadra Dunwall|r
    .turnin 96394 >> Entregue Os Mortos Inquietos
    .target Afadra Dunwall
step
    #completewith next
    .goto 1455/0,-1030.200,-4831.000,10,0
    .goto 1455/0,-1090.900,-4830.400,10,0
    .goto 1455/0,-1079.600,-4884.100,10,0
    .goto 1455/0,-1058.000,-4842.500,10 >> Vá para cima pela rampa em direção a |cRXP_FRIENDLY_King Magni Barbabronze|r
step
    .goto 1455/0,-1022.600,-4865.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Magni Barbabronze|r
    .turnin 96393 >> Entregue Old Ironforge Incursion
    .turnin 98423 >> Entregue The Treaty of Understanding
    .target King Magni Bronzebeard

step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eldrun Rompe-procelas::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Treine suas magias de classe
step << Priest/Paladin/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r << Mage
    .goto 1455/0,-928.48,-4614.620 << Mage
    .goto 1455/0,-912.88,-4625.99 << Priest
    .goto 1455/0,-896.55,-4601.68 << Paladin
    .trainer >> Treine suas magias de classe
    .target Toldren Deepiron << Priest
    .target Brandur Ironhammer << Paladin
    .target Dink << Mage
step << Warlock/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto 1455/0,-1117.60,-4615.14,15,0 << Warlock
    .goto 1455/0,-1111.62,-4599.09 << Warlock
    .goto 1455/0,-1120.72,-4650.120 << Rogue
    .trainer >> Treine suas magias de classe
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
step << Warlock
    .goto 1455/0,-1134.20,-4610.39,15,0
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor >> |cRXP_BUY_Compre|r |T133738:0|t[Grimório de Sacrificar (Rank 1)]
    .target Jubahl Corpseseeker
    .train 20381,1
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regnus Granitrondo|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r << Warrior
    .goto 1455/0,-1266.02,-5006.570 << Hunter
    .goto 1455/0,-1234.65,-5035.67 << Warrior
    .trainer >> Treine suas magias de classe
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 18-19 Ruins of Lordaeron
#next 19-20 Minas Mortas
#displayname 17-18 Ruins of Lordaeron << NightElf

step
    #completewith EnterRoL
    +|cRXP_WARN_Você executará Ruins of Lordaeron|r
    >>|cRXP_WARN_Todas as missões são recebidas dentro da masmorra|r
step
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    >>|cRXP_WARN_Se você não tem a rota de voo do Pantanal, pule este passo|r
    .fly Wetlands >> Voe para Pantanal
    .target Gryth Thurden
    .zoneskip Ironforge,1

step
    .goto 1426/0,-826.400,-5027.100,30,0
    .goto 1426/0,-721.900,-5078.900,30,0
    .goto 1426/0,-426.500,-5181.000,70,0
    .goto 1426/0,-230.400,-5154.600,80,0
    .goto 1426/0,-65.000,-5115.000,100 >> |cRXP_WARN_Sair de Ironforge. Viaje para Dun Morogh -> localização deathskip de Pantanal|r
    .zoneskip Wetlands
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    .goto 1415,44.910,52.030
    .subzone 207 >>|cRXP_WARN_Escale a montanha, depois desça ultrapassando o padrão irregular até sua zona mudar para Pantanal|r
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1415/0,254.0285,-4708.3416,-1
    .goto 1437/0,-874.700,-3341.400,-1
    >>|cRXP_WARN_Salto da montanha em direção ao norte ou noroeste|r
    .deathskip >> Morra e reviva na Baía Baradin |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1437/0,-839.800,-3657.900
    .subzone 150 >> Nade até Menethil Harbor
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-782.000,-3793.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >> Pegue a rota de voo de Pantanal
    .target Shellei Brondir
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-581.800,-3722.400
    .zone Hillsbrad Foothills >> Pegue o barco para Southshore
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .fp Southshore >> Aprenda a rota de voo para Southshore
    .target Darla Harris
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1424/0,-136.700,-535.800,125 >> |cRXP_WARN_NOTA: Você pode encontrar |cRXP_ENEMY_Lions|r e |cRXP_ENEMY_Ursos|r no caminho para Hillsbrad Fields|r
    >>|cRXP_WARN_Cuidado com jogadores da Horda se você estiver em um servidor PVP|r
    .zoneskip 1424,1 
step
    #label EnterRoL
    .enabledungeon ROL
    .goto 1424/0,-47.400,-249.400,100,0
    .goto 1416/0,68.400,-46.200,130,0
    .goto 1416/0,45.300,257.100,150,0
    .goto 1416/0,-54.700,812.600,100,0
    .goto 1420/0,7.600,1530.500,70,0
    .goto 1420/0,-21.800,1668.600,20,0
    .goto 1420/0,-56.600,1692.000,10,0
    .goto 1420/0,-55.200,1779.600,15,0
    .goto 1420/0,6.300,1791.500,25,0
    .goto 1420/0,4.300,1847.500,10,0
    .goto 1458/0,238.400,1872.200,20,0
    .goto 1458/0,170.700,1804.700,20 >>Viaje para Ruins of Lordaeron em Undercity. Entre na masmorra
    >>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Lions|r, |cRXP_ENEMY_Ursos|r, |cRXP_ENEMY_Aranhas|r ou |cRXP_ENEMY_Murlocs|r de nível alto conforme você corre|r
    >>|cRXP_WARN_Assim que entrar em Undercity você será automaticamente marcado para PvP, tornando-se atacável por|r |cRXP_ENEMY_Horda|r
    .link https://www.youtube.com/watch?v=jxmG6_JPFMc >> |cRXP_WARN_Clique aqui para um guia em vídeo sobre como entrar nas Ruins of Lordaeron|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Truman|r
    .accept 95250 >> Aceite Abominable Creatures
    .target Captain Truman
step
    #sticky
    #label BaronHead
    >>Abate |cRXP_ENEMY_O Barão|r. Saque-o para a |cRXP_LOOT_Cabeça|r do Barão
    .complete 95250,1 -- Head of the Baron (1)
    .mob The Baron
step
    >>Saqueie todos os inimigos para obter a |T133328:0|t[|cRXP_LOOT_Insígnia Ensanguentada|r]
    .use 268535 >> |cRXP_WARN_Use a|r |T133328:0|t[|cRXP_LOOT_Insígnia Ensanguentada|r] |cRXP_WARN_para iniciar a missão|r
    .collect 268535,1,95195,1 -- Bloodied Insignia (1)  
    .accept 95195 >> Aceite Insígnia Ensanguentada
step
    #sticky
    #label BloodiedInsignia
    >>Saqueie todos os inimigos para obter as |cRXP_LOOT_Insígnias Ensanguentadas|r
    .complete 95195,1 -- Bloodied Insignia (10)
step
    #sticky
    #label CrestofLordaeron
    >>Saque o |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] no chão ou pendurado em uma parede
    >>|cRXP_WARN_Fique atento a isto. Pode aparecer em vários locais diferentes e ser difícil de ver|r
    .use 268579 >> |cRXP_WARN_Use o|r |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] |cRXP_WARN_para iniciar a missão|r
    .collect 268579,1,95189,1 -- Crest of Lordaeron (1)
    .accept 95189 >> Aceite Crest of Lordaeron
step
    #sticky
    #label CrumpledPaper
    >>Clique o |cRXP_PICK_Papel Amassado|r no chão perto de |cRXP_ENEMY_Rath'mael|r
    >>|cRXP_WARN_Você pode fazer isto depois de matá-lo|r
    .accept 92415 >> Aceite Lembrar That I Love You
step
    #requires BaronHead
step
    #requires BloodiedInsignia
step
    #requires CrestofLordaeron
step
    #requires CrumpledPaper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Truman|r
    >>|cRXP_FRIENDLY_Capitão Truman|r |cRXP_WARN_está de volta no início da masmorra|r
    .turnin 95250 >> Entregue Abominable Creatures
    .target Captain Truman
step
    .hs >> Use sua Pedra de Retorno para ir a Ventobravo
    .zoneskip Stormwind City
    .bindlocation 1519,1 --HS in SW
step
    #optional
    .hs >> Use sua Pedra de Retorno para ir a Ironforge
    .zoneskip Ironforge
    .zoneskip Stormwind City
    .bindlocation 1537,1 --HS in IF
step 
    #optional
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Pegue o bonde para Ventobravo
    .zoneskip Ironforge,1
step
    #optional
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
step
    .isOnQuest 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .turnin 92415 >> Entregue Lembrar That I Love You
    .accept 95161 >> Aceite Lembrar That I Love You
    .target Orphan Matron Nightingale
step
    #optional
    .isQuestTurnedIn 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .accept 95161 >> Aceite Lembrar That I Love You
    .target Orphan Matron Nightingale
step
    .goto 1453/0,634.700,-8390.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .accept 2040 >> Aceite Ataque Subterrâneo
    .target Shoni the Shilent
step
    .goto 1453/0,501.200,-8468.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r
    .accept 167 >> Aceite Oh, Irmão...
    .accept 168 >> Aceite Coletando Memórias
    .target Wilder Thistlenettle
step
    #completewith next
    .goto 1453/0,437.600,-8524.5000,20,0
    .goto 1453/0,408.100,-8478.500,15,0
    .goto 1453/0,502.900,-8358.800,15 >> Vá para a Biblioteca de Ventobravo
step
    .isOnQuest 95189
    .goto 1453/0,531.000,-8322.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lady Dina Cápita|r
    >>|cRXP_WARN_Ela anda ligeiramente na Galeria Real|r
    .turnin 95189 >> Entregue Crest of Lordaeron
    .target Lady Dena Kennedy
step
    .isOnQuest 95195
    .goto 1453/0,521.000,-8954.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Marcus Jonas|r
    .turnin 95195 >> Entregue Insígnia Ensanguentada
    .target General Marcus Jonathan
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >> Treine suas magias de classe
    .target Osborne the Night Man
    .xp <20,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
    .xp <20,1
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >> Treine suas magias de classe
    .target Einris Brightspear
    .xp <20,1
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Theridran|r
    .trainer >> Treine suas magias de classe
	.target Theridran
    .xp <20,1
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Treine suas magias de classe
    .target Ursula Deline
    .xp <20,1
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Vá para a Torre do Mago
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Treine suas magias de classe
    .target Elsharin
    .xp <20,1
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaje até a Catedral de Ventobravo
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Treine suas magias de classe
    .target Arthur the Faithful
    .xp <20,1
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Treine suas magias de classe
    .target Brother Joshua
    .xp <20,1
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 19-20 Minas Mortas
#displayname 18-20 Minas Mortas/Redridge << NightElf
#next 20-21 Costa Negra/Vale Gris

step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >> Defina sua Pedra de Retorno em Ventobravo
    .target Innkeeper Allison
    .bindlocation 16509
step
    #completewith TDB1
    #label FlyWestfall
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    >>|cRXP_WARN_Se você não tem a rota de voo para Cerro Oeste, pule este passo|r << !Human !Gnome !Dwarf
    .fly Westfall >> Voe para Cerro Oeste
    .target Dungar Longdrink
step
    #optional
    #requires FlyWestfall
    #completewith TDB1
    .zone Westfall >> Viaje até Cerro Oeste
step
    #label TDB1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Aceitar A Irmandade Défias
step
    #completewith RRDB
    .goto 1453/0,490.03,-8835.82,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r ou |cRXP_FRIENDLY_Thor|r
    >>|cRXP_WARN_Se você não tiver a rota de voo de Montanhas Cristarrubra, pule este passo|r << !Human !Gnome !Dwarf
    .fly Redridge >> Voe para Montanhas Cristarrubra
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
    .zoneskip Elwynn Forest
step
    .isQuestAvailable 132
    .goto 1433/0,-1906.400,-9606.800
    .zone Redridge Mountains >> Viaje para as Montanhas Cristarrubra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .goto 1433/0,-2268.32,-9279.12
    .accept 125 >> Aceite As Ferramentas Perdidas
    .target Foreman Oslow
step
    #label RRDB
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiley, o Negro|r no andar de cima
    .turnin 65 >> Entregue A Irmandade Défias
    .accept 132 >> Aceitar A Irmandade Défias
	.target Wiley the Black
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto 1433/0,-2207.10,-9351.52
    .accept 3741 >> Aceite Nida's Colar
step
    >>|cRXP_WARN_Pule no lago|r
    >>Abra a |cRXP_PICK_Glinting Mud|r. Saqueie-a para |cRXP_LOOT_Hilary's Colar|r
    >>|cRXP_WARN_Tem múltiplos locais de aparecimento no lago|r
    .goto 1433/0,-2174.32,-9386.56,0
    .goto 1433/0,-2147.41,-9308.08,0
    .goto 1433/0,-2090.96,-9373.82,0
    .goto 1433/0,-1986.76,-9324.30,0
    .goto 1433/0,-2246.40,-9359.92,0
    .goto 1433/0,-2309.57,-9376.28,0
    .goto 1433/0,-2397.70,-9363.97,0
    .goto 1433/0,-1986.76,-9324.30,70,0
    .goto 1433/0,-2397.70,-9363.97,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    >>Abra o |cRXP_PICK_Sunken Baú|r. Saque-o para obter |cRXP_LOOT_Oslow's Caixa de Ferramentas|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .goto 1433/0,-2268.32,-9279.12
    .turnin 125 >> Entregue As Ferramentas Perdidas
    .target Foreman Oslow
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nida|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Entregue Nida's Colar
step
    #completewith next
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Westfall >> Voe para Cerro Oeste
    .target Ariena Stormfeather
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 132 >> Entregue A Irmandade Défias
    .accept 135 >> Aceitar A Irmandade Défias
step
    #completewith SWDB
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Voe para Ventobravo
    .target Thor
step
    #optional
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
step
    #label SWDB
    .goto 1453/0,362.28,-8815.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .turnin 135 >> Entregue A Irmandade Défias
    .accept 141 >> Aceitar A Irmandade Défias
    .target Master Mathias Shaw
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .accept 2360 >> Aceite Mathias e os Défias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
    .xp <20,1
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre os seguintes itens para entregas mais rápidas em Cerro Oeste em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T132794:0|t[Frasco de Óleo]
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step
    #completewith EnterDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .goto 1453/0,490.03,-8835.82
    .fly Westfall >> Voe para Cerro Oeste
    .target Dungar Longdrink
step
    .goto 1436/0,1045.29,-10508.78
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 141 >> Entregue A Irmandade Défias
    .accept 142 >> Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
step << Druid
    .goto Westfall,52.8,53.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Érica|r
    .target Innkeeper Heather
    .home >> Defina sua Pedra de Regresso em Cerro Oeste
step
    #optional
    #completewith next
    .goto 1436/0,1459.17,-11024.47,55 >> Vá para Moonbrook
step
    .goto 1436/0,1459.17,-11024.47
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mate o |cRXP_ENEMY_Mensageiro Défias|r. Saqueie-o para obter a |cRXP_LOOT_Mensagem Misteriosa|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Mensageiro Défias|r aparece em Arroio da Lua. Ele caminha pela estrada ao norte de Arroio da Lua, até a Mina de Costa Dourada e a Mina de Jangolode. Se você não o vir pela estrada, espere-o aparecer em Arroio da Lua|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 142 >> Entregue A Irmandade Défias
    .target Gryan Stoutmantle
step
    .goto 1436/0,1067.87,-10508.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Traidor Défias|r
    >>|cRXP_WARN_Você pode precisar esperar pelo |cRXP_FRIENDLY_Traidor Défias|r aparecer se ele não estiver lá|r
    .accept 155 >> Aceitar A Irmandade Défias
    .target The Defias Traitor
step
    .goto 1436/0,1527.07,-11073.23
    >>Escolte o |cRXP_FRIENDLY_Traidor Défias|r para Minas Mortas
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 155 >> Entregue A Irmandade Défias
    .accept 166 >> Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
step
    .goto 1436/0,1033.22,-10504.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Riel|r no topo da torre
    .accept 214 >> Aceite Bandanas de Seda Vermelha
    .target Scout Riell
step
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Faça grind em |cRXP_ENEMY_Gnolls|r ao sul da Colina do Sentinela enquanto reúne um grupo para as Minas Mortas|r
    .subzone 20 >>Quando seu grupo estiver formado, viaje até Arroio da Lua
step
    .goto 1436/0,1527.42,-11072.77
    .subzone 1581 >> Entre no Esconderijo Défias com seu grupo
step
    #completewith EnterDM
    >>Mate os |cRXP_ENEMY_Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    >>Você também pode completar isso dentro das Minas Mortas
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    #completewith next
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>|cRXP_WARN_NOTA: Esta missão NÃO dá XP bônus similar a outras missões de masmorra, e leva significativamente mais tempo para completar. Considere pular esta missão se seu grupo concordar|r
    >>Isto é concluído FORA da Masmorra
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mate |cRXP_ENEMY_Encarregado Espinhofolha|r. Saqueie-o para obter |cRXP_LOOT_Distintivo|r
    >>Isto é concluído FORA da Masmorra
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>|cRXP_WARN_NOTA: Esta missão NÃO dá XP bônus similar a outras missões de masmorra, e leva significativamente mais tempo para completar. Considere pular esta missão se seu grupo concordar|r
    >>Isto é concluído FORA da Masmorra
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    #label EnterDM
    .enabledungeon DM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Entre na Masmorra das Minas Mortas
step
    #completewith DMend
    >>Abata os |cRXP_ENEMY_Defias|r dentro de Minas Mortas. Saqueie-os para |cRXP_LOOT_Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
step
    >>Mate |cRXP_ENEMY_Sneed|r. Saqueie-o para obter |cRXP_LOOT_Engrenotreco Gnomo|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
    #label DMend
    >>Mate |cRXP_ENEMY_Edwin VanCleef|r. Saqueie-o para obter |cRXP_LOOT_Cabeça|r e |T133471:0|t[|cRXP_LOOT_Uma Carta Não Enviada|r]
    >>|cRXP_WARN_Use [|cRXP_LOOT_Carta Não Enviada|r] para iniciar a missão|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Aceite A Carta Não Enviada
    .use 2874 -- An Unsent Letter
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Vá ao Farol de Cerro Oeste
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >> Aceite O mar não está para peixe
    .accept 103 >> Aceite A chama não pode apagar
    .turnin 103 >> Entregue A chama não pode apagar
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >> Aceite O mar não está para peixe
    .target Captain Grayson
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mate |cRXP_ENEMY_Velho Olho-turvo|r. Pegue sua |cRXP_LOOT_Escama|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 104 >> Entregue O mar não está para peixe
    .target Captain Grayson
    .isQuestComplete 104
step << Druid
    .goto 1436/0,1707.2116,-10583.0227
    >>Clique em |cRXP_PICK_Burned-Saída Remains|r no chão
    .accept 79008 >> Aceite ...e aquele bilhete que você encontrou
step << Druid
    #completewith next
    .goto Westfall,17.928,33.099,50 >> Nade mar adentro
step << Druid
    .goto Westfall,17.928,33.099
    >>Abra o |cRXP_PICK_Caixa-forte Estranha|r. Saqueie-o para obter o |cRXP_LOOT_Meio-pingente da Resistência Aquática|r
    .collect 15882,1,272,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    #completewith next
	.cast 18960 >> Lance Teleporte: Clareira da Lua
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Treine suas magias de classe
    .target Loganaar
step << Druid
    .goto 1450/1,-2212.25,7854.28
    .use 15883 >>|cRXP_WARN_Use o|r |T133443:0|t[Meio-pingente da Agilidade Aquática] |cRXP_WARN_para combiná-lo com o|r |T133442:0|t[Meio-pingente da Resistência Aquática] |cRXP_WARN_no Santuário de Remulos|r
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >> Lance Teleporte: Clareira da Lua
    >>|cRXP_WARN_Isso economizará seu tempo, evitando que você precise voltar correndo|r
step << Druid
    .goto 1450/1,-2678.74,8020.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 272 >> Entregue Julgamento do Leão-marinho
    .accept 5061 >> Aceite Forma aquática
    .target Dendrite Starblaze
step << Druid
    .hs >> Use sua Pedra de Retorno para Colina do Sentinela
step << !Druid
    .goto 1436/0,1707.2116,-10583.0227
    >>Clique em |cRXP_PICK_Burned-Saída Remains|r no chão
    .accept 79008 >> Aceite ...e aquele bilhete que você encontrou
step
    #completewith RSB
    .goto 1436/0,1045.12,-10508.80,100 >> Viaje até a Colina da Sentinela
step
    .isQuestComplete 166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 166 >> Entregue A Irmandade Défias
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
step
    #label RSB
    .isQuestComplete 214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedora Riell|r no topo da torre
    .turnin 214 >> Entregue Bandanas de Seda Vermelha
    .goto 1436/0,1033.22,-10504.83
    .target Scout Riell

step
   .maxlevel 19,Level20Check

step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Voe para Montanhas Cristarrubra
    .target Thor
step
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
    .accept 244 >> Aceite Encroaching Gnolls
    .target Guard Parker
step
    .goto 1433/0,-2237.93,-9443.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >> Entregue Encroaching Gnolls
    .accept 246 >> Aceite Assessing the Ameaça
    .accept 98407 >>Aceite Demonstração de Força
    .target Deputy Feldon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
    .goto 1433/0,-2298.06,-9284.04
    .accept 20 >> Aceite Ameaça dos Rochas Negras
    .accept 98387 >>Aceite Blackrock Blockade
    .target Marshal Marris
step
    .group
    .goto 1433/0,-2208.600,-9243.500
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 95999 >>Aceite WANTED: Incinerador Gar'im
step
    #loop
    .goto 1433/0,-1913.800,-9490.601,50,0
    .goto 1433/0,-2211.01,-9773.870,45,0
    .goto 1433/0,-2276.79,-9759.11,45,0
    .goto 1433/0,-2508.20,-9620.68,45,0
    .goto 1433/0,-2246.61,-9764.90,45,0
	>>Abata os |cRXP_ENEMY_Redridge Mongrels|r e os |cRXP_ENEMY_Redridge Poachers|r
    >>Abata os |cRXP_ENEMY_Redridge Thrashers|r. Saqueie-os para obter |cRXP_LOOT_Spiked Collars|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
    .complete 98407,1 --Spiked Collar (5)
	.mob +Redridge Thrasher
step
    .group 4
    .isOnQuest 95999
    #sticky
    #label IncineratorGarim
    .waypoint 1433/0,-3261.400,-9824.700
    >>Abata o |cRXP_ENEMY_Incinerador Gar'im|r dentro da caverna. Saqueie-o para obter |cRXP_LOOT_Broken Cajado of Incinerador Gar'im|r
    >>|cRXP_WARN_Pule este passo se você não conseguir encontrar um grupo para ele|r
    .complete 95999,1 -- Broken Staff of Incinerator Gar'im (1)
    .mob Incinerator Gar'im
step
    #completewith next
    >>Pegue os |cRXP_PICK_Grain Sacks|r e os |cRXP_PICK_Meat Haunches|r no chão para obter |cRXP_LOOT_Suprimentos Roubados|r
    >>Pegue os |cRXP_PICK_Weapon Racks|r e os |cRXP_PICK_Stolen Armas|r do chão
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #label orcs
    #loop
    >>Mate |cRXP_ENEMY_Brutos Rocha Negra|r e |cRXP_ENEMY_Vanguardeiros Rocha Negra|r. Saqueie-os em busca de seus |cRXP_LOOT_Machados|r
	>>|cRXP_WARN_Cuidado com o |cRXP_ENEMY_Blackrock Outrunners|r que lançará |T132149:0|t[Rede] em você|r
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #loop
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    >>Pegue os |cRXP_PICK_Grain Sacks|r e os |cRXP_PICK_Meat Haunches|r no chão para obter |cRXP_LOOT_Suprimentos Roubados|r
    >>Pegue os |cRXP_PICK_Weapon Racks|r e os |cRXP_PICK_Stolen Armas|r do chão
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #requires IncineratorGarim
step << Shaman -- most likely not on this quest yet
    #optional
    .isOnQuest 94499
    .goto 1433/0,-3121.100,-9485.000
    .use 265747 >> |cRXP_WARN_Use o|r |T132829:0|t[Unfilled Vermelho Odre] |cRXP_WARN_em Stonewatch Falls|r
    .complete 94499,1 --|1/1 Full Red Waterskin
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
	.target Deputy Feldon
    .goto 1433/0,-2237.93,-9443.60
    .turnin 246 >> Entregue Assessing the Ameaça
    .turnin 98407 >>Entregue Demonstração de Força
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
	.target Marshal Marris
    .goto 1433/0,-2298.06,-9284.04
    .turnin 20 >> Entregue Ameaça dos Rochas Negras
    .turnin 98387 >>Entregue Blackrock Blockade
step
    .isQuestComplete 95999
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >>Entregue WANTED: Incinerador Gar'im
step
    #optional
    .xp 20 >> Suba até o nível 20

step
    #label Level20Check

step << !Druid !Rogue
    .hs >> Use sua Pedra de Retorno para ir a Ventobravo
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #optional
    #completewith DarkshoreBoat
    .goto 1433/0,-2234.900,-9435.300,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r ou |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Voe para Ventobravo
    .target Ariena Stormfeather
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << Rogue
    .isNotOnQuest 2360
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >> Treine suas magias de classe
    .target Osborne the Night Man
    .train 1785,1
    .xp <20,1
    .xp >22,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .accept 2360 >> Aceite Mathias e os Défias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
step << Rogue
    #completewith RoguePoison
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .goto 1453/0,490.03,-8835.82
    .fly Westfall >> Voe para Cerro Oeste
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto 1431/0,404.03,-11014.47,60,0
    .goto 1431/0,432.11,-10878.75,50,0
    .goto 1431/0,551.72,-10688.13
    >>Mate os |cRXP_ENEMY_Pygmy Venenom Teia Aranhas|r e os |cRXP_ENEMY_Venom Teia Aranhas|r. Saqueie-os para obter um |cRXP_LOOT_Small Venenom Sac|r e suas |cRXP_LOOT_Gooey Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa de um |cRXP_LOOT_Pequeno Venenom Sac|r para criar uma|r |T134437:0|t[Antipeçonha] |cRXP_WARN_depois para remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_debuff depois|r
    >>|cRXP_WARN_Guarde as |cRXP_LOOT_Gooey Pernas de Aranha|r para depois|r
    >>|cRXP_WARN_Se você tem um|r |T626003:0|t|cFFF48CBAThe Defias Brotherhood|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_ou|r |T626006:0|t|cFF0070DDXamã|r |cRXP_WARN_amigo, você pode pular este passo e pedir-lhes para remover isto por você|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTE ATENÇÃO NA PRÓXIMA SEÇÃO==|r
    >>Pressione Escape, depois vá em -> Opções -> Controles
    >>Marque "Ativar Tecla de Interação" e vincule a opção "Interagir com o Alvo" a uma tecla
    >>|cRXP_WARN_Além disso, recomenda-se ativar as Placas de Nome de Inimigos (Tecla Padrão: V) para ver inimigos atrás de alguns cantos da torre|r
step << Rogue
    .goto 1436/0,619.17,-11035.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Agente Marta Hari|r
    >>Você DEVE fazer esta missão para [Venenos]
    .turnin 2360 >> Entregue Mathias e os Défias
    .accept 2359 >> Aceite A Torre de Klaven
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto 1436/0,514.52,-11114.77,0
    .goto 1436/0,531.32,-11166.80,0
    .goto 1436/0,581.37,-11104.97,0
    .goto 1436/0,514.52,-11114.77,30,0
    .goto 1436/0,531.32,-11166.80,30,0
    .goto 1436/0,581.37,-11104.97,30,0
    >>|T133644:0|t[Bater de Carteira] o |cRXP_ENEMY_Drone Défias Malformado|r. Saqueie-o para obter a |cRXP_LOOT_Chave da Torre Défias|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_O |cRXP_ENEMY_Drone Défias Malformado|r surge na entrada da torre, depois patrulha ao redor da parte externa|r
    >>Tome cuidado, pois ele causa MUITO dano. Se sua [Furtividade] quebrar, use rapidamente [Disparada] e fuja
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Clique AQUI para o guia em vídeo
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +Equipe a [Adaga de Madeira Curva] para esta missão, caso você ainda não tenha uma [Adaga] equipada
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>Suba até o 2º andar mais alto da torre. Enquanto estiver em [Furtividade] |cRXP_WARN_ e as |cRXP_ENEMY_Sentinelas da Torre Défias|r não estiverem perto de você, pule na cadeira, depois na lâmpada, então na estante de livros no topo do local do ponto de referência |r
    >>Saia manualmente de [Furtividade]|cRXP_WARN_, depois pressione sua tecla de atalho "Interagir com Alvo" para abrir o |cRXP_PICK_Baú da Floresta do Crepúsculo|r. Saqueie-o para obter |cRXP_LOOT_Diário de Filipe Pinel|r |r
    >>OBS.: Sua [Furtividade] vai parar de funcionar temporariamente após saquear |cRXP_LOOT_Diário de Filipe Pinel|r
    >>|cRXP_WARN_Esteja preparado para correr se você não matar as |cRXP_ENEMY_Sentinelas da Torre Défias|r no 2º andar. Elas provavelmente vão te manter em aggro permanente (mas sem te atacar) quando você estiver em cima da estante pois é um ponto de evade|r
    >>Se você tiver uma [Adaga] na bolsa ou equipada, você pode usar [Emboscada] |cRXP_WARN_nos |cRXP_ENEMY_Patrulheiros da Torre Défias|r e nas |cRXP_ENEMY_Sentinelas da Torre Défias|r lá dentro para matá-los instantaneamente. Esteja pronto para correr depois de matar a primeira |cRXP_ENEMY_Sentinela da Torre Défias|r e lembre-se você pode levar golpes vindos de cima. É mais lento, mas MUITO mais seguro|r
    >>|cRXP_WARN_Tome cuidado, pois |cRXP_ENEMY_Parasita Défias Mal Formado|r e |cRXP_ENEMY_Parasita Défias|r podem ficar na entrada da torre, caso você precise sair correndo dela|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Clique AQUI para o guia em vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Conjure [Forma de Pedra] para remover o debuff [Toque de Zanzil]
    .aura -9991
step << Rogue
    .hs >> Use sua Pedra de Retorno para ir a Ventobravo
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Voe para Ventobravo
    .target Thor
    .zoneskip Stormwind City
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Vá em direção à |cRXP_FRIENDLY_Suzi Lira|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tem um|r |T626003:0|t|cFFF48CBAThe Defias Brotherhood|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_ou|r |T626006:0|t|cFF0070DDXamã|r |cRXP_WARN_amigo, peça-lhes para remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_para você em vez disso|r
    .skill firstaid,80 >> |cRXP_WARN_Eleve seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_até 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tem um|r |T626003:0|t|cFFF48CBAThe Defias Brotherhood|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_ou|r |T626006:0|t|cFF0070DDXamã|r |cRXP_WARN_amigo, peça-lhes para remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_para você em vez disso|r
    .train 7934 >> |cRXP_WARN_treine|r |T134437:0|t[Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >> Treine suas magias de classe
    .target Osborne the Night Man
    .train 1785,1
    .xp <20,1
    .xp >22,1
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >> Treine suas magias de classe
    .target Osborne the Night Man
    .train 1759,1
    .xp <22,1
    .xp >24,1
step << Rogue
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto 1453/0,362.28,-8815.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    >>|cRXP_WARN_Lembre-se de reequipar sua arma principal se você trocou para um|r |T135641:0|t[Dagger] |cRXP_WARN_antes|r << Rogue
    .turnin 2359 >> Entregue A Torre de Klaven
    .target Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step
    .isQuestComplete 167
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r
    .turnin 167 >> Entregue Oh, Irmão...
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step
    .isQuestComplete 168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r
    .turnin 168 >> Entregue Coletando Memórias
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >> Treine suas magias de classe
    .target Einris Brightspear
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Treine as magias do seu mascote
    .target Karrina Mekenda
step
    .isQuestComplete 2040
    .goto 1453/0,634.800,-8390.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .turnin 2040 >> Entregue Ataque Subterrâneo
    .target Shoni the Shilent
step << Shaman
    #completewith ShamTrain
    .goto 1453/0,558.96,-8382.54,25,0
    .goto 1453/0,520.64,-8351.460
    .zone Ironforge >> Entre no Deeprun Tram. Pegue o metrô para Ironforge
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eldrun Rompe-procelas::258098|r
    .target Eldrun Stormbreaker::258098
    .accept 94494 >>Aceite Clamor da água
    .trainer >> Treine suas magias de classe
    .train 2645,1 -- ghost wolf
step << Shaman
    #label ShamTrain
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eldrun Rompe-procelas::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Treine suas magias de classe
    .train 408342,1 -- fire nova r2
    .xp <22,1
step << Shaman
    .goto 1455/0,-1330.28,-4843.6,5,0
    .zone Stormwind City >> Entre no Deeprun Tram. Pegue o tram para Ventobravo
    .zoneskip Darkshore
    .zoneskip Ashenvale
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .turnin 373 >>Entregue A Carta Não Enviada
    .accept 389 >>Aceite Basílio Taborda
    .target Baros Alexston
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1716 >> Aceite Devorador de Almas
    .target Gakin the Darkbinder
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Vá para Mago Torre
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Treine suas magias de classe
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaje até a Catedral de Ventobravo
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Treine suas magias de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Treine suas magias de classe
    .target Brother Joshua
step
    .goto 1453/0,1093.3,-8779.020
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Argos Umbrurmúrio|r
    .accept 3765 >> Aceite A Corrupção no Exterior
    .target Argos Nightwhisper
step << !Druid
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Aumente sua habilidade de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Costa Negra, se necessário|r
    .zone Darkshore >> Pegue o barco para Costa Negra
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !Druid
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Pegue o barco para Costa Negra
step
    #optional
    .abandon 95999 >>Abandone Procurado: Incinerador Gar'im
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 20-21 Costa Negra/Vale Gris
#next RestedXP Guia de Masmorra Eterna (A)\21-23 Vale Gris/Stonetalon

step << Druid
    #completewith catspirit1
	.cast 18960 >> Lance Teleporte: Clareira da Lua
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Voe para Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << NightElf !Druid
    #hidewindow
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Entre no portal roxo para Darnassus
step << Druid
    #label catspirit1
    .goto 1457/1,2564.600,10179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Bearwalker::4217|r
    .target Mathrengyl Bearwalker::4217
    .accept 98393 >>Aceite O Espírito do Grande Felino
step << Druid
    #completewith next
	.cast 18960 >> Lance Teleporte: Clareira da Lua
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.900,8020.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Starblaze::11802|r
    .target Dendrite Starblaze::11802
    .turnin 98393 >>Entregue O Espírito do Grande Felino
    .accept 98341 >>Aceite O Espírito do Grande Felino Etéreo << Skyborne
    .accept 98394 >>Aceite O Espírito do Grande Felino << !Skyborne
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espírito do Grande Felino|r
    .turnin 98394 >>Entregue O Espírito do Grande Felino
    .accept 98396 >>Aceite O Espírito do Grande Felino
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2352.700,7375.600,10,0
    .goto 1450/1,-2394.300,7361.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98341 >>Entregue O Espírito do Grande Felino Etéreo
    .accept 98404 >>Aceite O Espírito do Grande Felino Etéreo
step << Druid
    #completewith next
    .goto 1450/1,-3046.700,7534.400
    --aura 1309054?
    .subzone 2363 >> Vá para Tempestofúria Barrow Dens
step << Druid
    >>Vá fundo na caverna, caminhe pela ponte, procure uma estátua de gato em um nicho e clique no pequeno orbe ao lado da estátua
    >>Saqueie |cRXP_LOOT_Relic of the Garra|r
    .goto 1450/1,-3117.400,7455.300
    .complete 98404,2 << Skyborne --|1/1 Relic of the Claw
    .complete 98396,2 << !Skyborne --|1/1 Relic of the Claw
step << Druid
    >>Clique no pequeno orbe ao lado da estátua de gato
    >>Saqueie |cRXP_LOOT_Relic of the Silent Sombra|r
    .goto 1450/1,-3099.200,7485.700
    .complete 98404,3  << Skyborne --|1/1 Relic of the Silent Shadow
    .complete 98396,3  << !Skyborne --|1/1 Relic of the Silent Shadow
step << Druid
    >>Clique no pequeno orbe ao lado da estátua de gato
    >>Saqueie |cRXP_LOOT_Relic of the Dentada|r
    .goto 1450/1,-3054.100,7476.800
    .complete 98404,1  << Skyborne --|1/1 Relic of the Fang
    .complete 98396,1  << !Skyborne --|1/1 Relic of the Fang
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espírito do Grande Felino|r
    .turnin 98396 >>Entregue O Espírito do Grande Felino
    .accept 98731 >>Aceite Bênçãos do Espírito do Grande Felino
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2395.400,7361.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98404 >>Entregue O Espírito do Grande Felino Etéreo
    .accept 98738 >>Aceite Bênçãos do Espírito do Grande Felino Etéreo
step << Druid
    .goto 1450/1,-2678.200,8021.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTeleporte para a Clareira da Lua e fale com |cRXP_FRIENDLY_Dendrite Starblaze::11802|r
    .target Dendrite Starblaze::11802
    .usespell 18960
    .turnin 98738 >>Entregue Bênçãos do Espírito do Grande Felino Etéreo << Skyborne
    .accept 98397 >>Aceite Para Darnassus --<< Alliance
    --.accept 98362 >>Accept To Thunder Bluff << Horde
step << Druid
    #completewith catspirit2
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Voe para Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Voe para Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #label catspirit2
    .goto 1457/1,2564.400,10179.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus::4217|r
    .target Mathrengyl Bearwalker::4217
    .turnin 98397 >>Entregue em Darnassus
step << Druid
    .goto 1457/1,2626.51,9946.11
    .zone Teldrassil >> Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darkshore
step << Druid
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Voe para Costa Negra
    .target Vesprystus
    .zoneskip Darkshore
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >> Aceite Cave Mushrooms
    .target Barithras Moonshade
step
    #optional
    .isOnQuest 4763
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Use a|r |T133748:0|t[Tigela de Purificação Vazia] |cRXP_WARN_no poço lunar de Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
step
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .accept 4763 >> Aceite O Blackwood Corrompido
    .target Thundris Windweaver
step
    .isOnQuest 3765
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 3765 >> Entregue A Corrupção no Estrangeiro
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .accept 1275 >> Aceite Pesquisando a Corrupção
    .target Gershala Nightwhisper
step
    .isQuestTurnedIn 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2139 >> Aceite A Esperança de Tharnariun
    .target Tharnariun Treetender
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Elissa Brisastral|r acima
    .accept 965 >> Aceite A Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .isOnQuest 4763
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Use a|r |T133748:0|t[Tigela de Purificação Vazia] |cRXP_WARN_no poço lunar de Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
step
    .isOnQuest 4763
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-376.56,6807.62
    >>Abra o |cRXP_PICK_Depósito de Grão Bosquenero|r. Pegue a |T134059:0|t|cRXP_LOOT_[Amostra de Grão Bosquenero]|r
    >>|cRXP_WARN_Saqueando isto criará 2 |cRXP_ENEMY_Furbolgs Bosquenero|r que irão atacar e correr em sua direção. Esteja pronto para lutar contra eles ou resetá-los|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .isOnQuest 2139
    .goto 1439/1,-503.63,6732.95,45,0
    .goto 1439/1,-430.27,6662.65
    >>Mate |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Tenha cuidado porque os |cRXP_ENEMY_Thistle Cubs|r podem lançar|r |T132152:0|t[Assolar]|cRXP_WARN_, um ataque corpo a corpo instantâneo que o paralisa por 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    .isOnQuest 4763
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-453.20,6870.500
    >>Abra o |cRXP_PICK_Depósito de Castanhas Bosquenero|r. Pegue a |T133944:0|t|cRXP_LOOT_[Amostra de Castanha Bosquenero]|r
    >>|cRXP_WARN_Saqueando isto criará 2 |cRXP_ENEMY_Furbolgs Bosquenero|r que irão atacar e correr em sua direção. Esteja pronto para lutar contra eles ou resetá-los|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .isOnQuest 4763
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-520.66,6874.43
    >>Abra o |cRXP_PICK_Depósito de Frutas Bosquenero|r. Pegue a |T134013:0|t|cRXP_LOOT_[Amostra de Fruta Bosquenero]|r
    >>|cRXP_WARN_Saqueando isto criará 2 |cRXP_ENEMY_Furbolgs Bosquenero|r que irão atacar e correr em sua direção. Esteja pronto para lutar contra eles ou resetá-los|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .isOnQuest 4763
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30
    .cast 16072 >> |cRXP_WARN_Use a|r |T134712:0|t[Tigela de Purificação Cheia] |cRXP_WARN_na |cRXP_PICK_Fogueira|r para invocar|r |cRXP_ENEMY_Zabraxxis|r
    .timer 17,O RP Corrompido Bosquenero
    .use 12347
step
    .isOnQuest 4763
    #requires Blackwood3
    #label Xabraxxis
    .goto 1439/1,-489.22,6875.30
    >>Mate o|cRXP_ENEMY_ Xabraxxis|r. Abra a|cRXP_PICK_ Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|cRXP_LOOT_ Talismã da Corrupção|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Pegue os |cRXP_LOOT_Scaber Stalks|r e um |cRXP_LOOT_Death Cap|r no chão
    >>|cRXP_WARN_Permaneça na seção superior. Se não houver um|cRXP_LOOT_ Cogumelo-da-morte|r no final do lado superior, desça e pegue um na sala ao sul abaixo|r
    >>|cRXP_WARN_Tenha cuidado com os|cRXP_ENEMY_Cavalga-onda Skamatrom|r |rao conjurarem|cRXP_WARN_|r[Jato Aquático] (Alcance Instantâneo: causa dano em área nos inimigos próximos e os empurra para trás) certifique-se de não estar em uma posição para ser derrubado do nível superior da caverna
    .complete 947,1 --Scaber Stalk (5)
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49
    .complete 947,2 --Death Cap (1)
    .goto 1439/1,-685.72,6746.49
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 965 >> Entregue A Torre de Althalaxx
    .accept 966 >> Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Mate os |cRXP_ENEMY_Dark Strand Fanatics|r e saqueie seus |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 966 >> Entregue A Torre de Althalaxx
    .accept 967 >> Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .accept 2098 >> Aceite Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439/1,-732.88,7596.24,0
    >>Mate os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie a |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento à habilidade|cRXP_ENEMY_Rastejadores do Recife Enfurecidos|r'|r |cRXP_WARN_[Açoitar] . Você pode receber 200 de dano instantaneamente de seus ataques corpo a corpo
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,-656.25,7801.04
    >>Mate os |cRXP_ENEMY_Greymist Oracles|r e os |cRXP_ENEMY_Greymist Tidehunters|r. Saqueie a |cRXP_LOOT_Middle of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento aos|cRXP_ENEMY_Oráculos Névoa Cinzenta|r'|r [Raio] e ao dano que eles também curam com|cRXP_WARN_ |r[Onda de Cura]|r
    >>Tenha cuidado pois |cRXP_ENEMY_Greymist Tidehunters|r podem lançar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] em combate corpo a corpo, deixando um dano contínuo de 13 a cada 3 segundos por 30 segundos
    >>|cRXP_WARN_Você pode usar LoS (Linha de Visão) nos|r|cRXP_ENEMY_Oráculos Névoa Cinzenta|r'|r[Raio] ao redor do navio afundado para evitar receber dano
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    .goto 1439/1,-699.48,7591.87,45,0
    .goto 1439/1,-579.61,7505.41,45,0
    .goto 1439/1,-421.10,7372.67,45,0
    .goto 1439/1,-767.60,7805.84
    >>Mate os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie a |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento à habilidade|cRXP_ENEMY_Rastejadores do Recife Enfurecidos|r'|r |cRXP_WARN_[Açoitar] . Você pode receber 200 de dano instantaneamente de seus ataques corpo a corpo
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto 1439/1,-941.83,7756.06,55,0
    .goto 1439/1,-1080.03,7922.87,50,0
    .goto 1439/1,-1087.24,7780.51,50,0
    .goto 1439/1,-1069.55,7661.74,50,0
    .goto 1439/1,-1080.03,7922.870
    >>Mate os |cRXP_ENEMY_Giant Foreststriders|r. Saque a |cRXP_LOOT_Top of Gelkak's Chave|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step << Warrior/Paladin/Rogue/Shaman
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gelkak Giramastro|r
    >>|cRXP_WARN_Comece procurando um grupo para Gyromast's Revanche/|r|cRXP_ENEMY_The Threshwackonator 4100|r << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Entregue Gyromast's Retrieval
    .accept 2078 >> Aceite Gyromast's Revanche
    .target Gelkak Gyromast
    .solo
step
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gelkak Giramastro|r
    >>|cRXP_WARN_Comece procurando um grupo para Gyromast's Revanche/|r|cRXP_ENEMY_The Threshwackonator 4100|r << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Entregue Gyromast's Retrieval
    .accept 2078 >> Aceite Gyromast's Revanche
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >> Fale com o|cRXP_FRIENDLY_ Mangual-eliminator Pro Giramastro 4100|r para iniciar a escolta
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_Esta missão é MUITO difícil|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
step
    .goto 1439,56.654,13.484
    #optional
    >>Escolte |cRXP_FRIENDLY_Mangual-eliminator Pro Giramastro 4100|r até |cRXP_FRIENDLY_Gelkak Giramastro|r
    >>Mate |cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r assim que se torna hostil
    >>|cRXP_WARN_Esta missão é MUITO difícil|r
    *Use apenas ataques à distância enquanto corre dele, evite estar no alcance corpo a corpo << Druid
    >>|cRXP_WARN_Tente fazer esta missão se puder, pois economizará tempo depois porque ela recompensa|r |T134797:0|t[Elixires de Respiração Aquática] |cRXP_WARN_para missões subaquáticas depois|r << !Druid !Warlock !Shaman
    >>|cRXP_WARN_Usar|r |T136100:0|t[Raízes Enredantes] |cRXP_WARN_nele quando ele se torna hostil, depois crie distância e mantenha distância usando feitiços de lançamento instantâneo|r << Druid
    >>|cRXP_WARN_Se você não conseguir matar o |cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r, pule este passo|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Clique aqui para um guia em vídeo|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
--XX DRUID: Test if you can root
step
    #optional << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .turnin 2078 >> Entregue A Vingança de Giramastro
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    .isQuestTurnedIn 4681
    .goto 1439,53.113,18.099
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4727 >> Aceite Tartaruga Marinha Encalhada
step << Druid
    .goto Darkshore,48.87,11.32
    >>Nade para fora na água
    >>Abra a |cRXP_PICK_Estranha Caixa-Forte|r. Saque-a para obter o |cRXP_LOOT_Meio-pingente da Agilidade Aquática|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    #sticky
    #optional
    .destroy 7442 >> Remova |T134459:0|t[Gyromast's Chave] da mochila, pois não é mais necessária
step
    #completewith ReturnAuberdine
    .subzone 442 >> Vá para Auberdine
step
    .isQuestComplete 2139
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2139 >> Entregue A Esperança de Tharnariun
    .target Tharnariun Treetender
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4763 >> Entregue Os Corrompidos de Bosque Negro
    .target Thundris Windweaver
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .turnin 947 >> Entregue Cogumelos da Caverna
    .accept 948 >> Aceite Onu
    .target Barithras Moonshade
step
    .goto 1439/1,504.41,6402.39
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 4740 >> Aceite PROCURADO: Lodofundo!
step
    #label ReturnAuberdine
    .isOnQuest 4727
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,35.968,70.807
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4728 >> Aceite Criatura Marinha Encalhada
    .isQuestTurnedIn 4681
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto 1439/1,541.75,4991.52
    >>|cRXP_WARN_Certifique-se de verificar se o|cRXP_ENEMY_ Lodofundo|r já está ativo na água (se alguém já falhou no encontro anteriormente ou deixou o|cRXP_ENEMY_ Caçador Brumagris|r na onda em que ele surge vivo)|r
    >>Mate os |cRXP_ENEMY_Greymist Warriors|r e os |cRXP_ENEMY_Greymist Hunters|r no acampamento
    >>|cRXP_WARN_Mova-se até a Fogueira no centro do acampamento para iniciar o encontro com o|cRXP_ENEMY_ |rLodofundo|r
    >>|cRXP_WARN_3 ondas surgirão da água, cada uma matando a onda anterior: Onda 1 tem 3|cRXP_ENEMY_ Patrulheiros Brumagris|r nível 12-13, Onda 2 tem 2|cRXP_ENEMY_ Guerreiros Brumagris|r nível 15-16, e a Onda 3 tem 1|cRXP_ENEMY_ Lodofundo|r e 1|cRXP_ENEMY_ Caçador Brumagris|r nível 16-17. Você pode se afastar da Fogueira para evitar agredir a próxima onda|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Entregue Onu
    .accept 944 >> Aceite A Alveola do Mestre
    .target Onu
step
    #label MasterG
    .goto 1439/1,417.30,4575.82,100 >> Vá para A Alveola do Mestre
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith FunandGames
    >>Mate Discípulos do Crepúsculo|cRXP_ENEMY_ e|r Capangas do Crepúsculo|cRXP_ENEMY_. Saque-os para obter o|r [|cRXP_LOOT_Livro: Os Poderes Inferiores|r]
    *|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Capangas do Crepúsculo|r podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Discípulos do Crepúsculo|r lançam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma cura de 3 segundos|r |T135915:0|t[Cura]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto 1439/1,390.700,4542.700
    >>Descubra a Clareira do Mestre
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    .cast 5809 >> Use o [Frasco de Vidência] e coloque-o no chão
    .use 5251
step
    .goto 1439/1,417.30,4575.82
    >>|cRXP_WARN_Clique na|cRXP_PICK_ Tigela de Vidência|r no chão|r
    .turnin 944 >> Entregue A Alveola do Mestre
    .accept 949 >> Aceite O Acampamento do Crepúsculo
    .use 5251
step
    #label FunandGames
    .goto 1439,38.537,86.050
    >>Clique no |cRXP_PICK_Tomo do Crepúsculo|r no pedestal ao norte
    .turnin 949 >> Entregue O Acampamento do Crepúsculo
    .accept 950 >> Aceite Retornar a Onu
    .accept 98042 >>Aceite Só É Divertido Até...
step
    #completewith TheryluneEnd
    >>Mate os |cRXP_ENEMY_Discípulos do Crepúsculo|r e os |cRXP_ENEMY_Capangas do Crepúsculo|r. Saque-os para obter o |cRXP_LOOT_Olho Sem Igual|r e o |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Capangas do Crepúsculo|r podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Discípulos do Crepúsculo|r lançam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma cura de 3 segundos|r |T135915:0|t[Cura]
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a|cRXP_FRIENDLY_ Therylune|r. Isso iniciará uma escolta
    >>|cRXP_WARN_Pule este passo se ela não estiver lá|r
    .accept 945 >> Aceite A Fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Escolte a|cRXP_FRIENDLY_ Therylune|r para fora da Clareira do Mestre|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #loop
    .goto 1439/1,376.800,4608.600,40,0
    .goto 1439/1,453.100,4580.200,40,0
    .goto 1439/1,409.4366,4521.0151,40,0
    >>Mate os |cRXP_ENEMY_Discípulos do Crepúsculo|r e os |cRXP_ENEMY_Capangas do Crepúsculo|r. Saque-os para obter o |cRXP_LOOT_Olho Sem Igual|r e o |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Capangas do Crepúsculo|r podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Discípulos do Crepúsculo|r lançam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma cura de 3 segundos|r |T135915:0|t[Cura]
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    #optional
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >> Remova |T134715:0|t[Frasco de Vidência] da mochila, pois não é mais necessário
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Prospector Trilheiro|r
    >>|cRXP_WARN_Você pode ter que esperar que ele reapareça ou que outros terminem a escolta|r
    .turnin 729 >> Entregue O Prospector Distraído
    .target Prospector Remtravel
step
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Prospector Trilheiro|r. Isso iniciará uma escolta
    .accept 731,1 >> Aceite O Prospector Distraído
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Escolte o|cRXP_FRIENDLY_ Prospector Trilheiro|r pela Escavação|r
    .complete 731,1
    .isOnQuest 731
step
    .isQuestTurnedIn 4681
    .goto 1439,32.644,80.711
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4730 >> Aceite Criatura Marinha Encalhada
step
    .isQuestTurnedIn 4681
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Raio] |cRXP_WARN_dano, eles também podem curar com|r |T136052:0|t[Onda Curativa]|r
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4731 >> Aceite Tartaruga Marinha Encalhada
step
    .isQuestTurnedIn 4681
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Raio] |cRXP_WARN_dano, eles também podem curar com|r |T136052:0|t[Onda Curativa]|r
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4732 >> Aceite Tartaruga Marinha Encalhada
step
    .isQuestTurnedIn 4681
    .goto 1439,31.251,87.419
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4733 >> Aceite Criatura Marinha Encalhada
    >>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Raio] |cRXP_WARN_dano, eles também podem curar com|r |T136052:0|t[Onda Curativa]|r
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Entregue Retornar a Onu
    .timer 11,Volte para Onu (RP)
    .target Onu
step
    #optional
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .accept 968 >> Aceite Os Poderes de Baixo
    .use 5352
    .itemcount 5352,1
step
    #optional
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r para iniciar a escolta
    >>|cRXP_WARN_Pule este passo se ele não estiver lá. Pode levar até 25 minutos para ele reaparecer|r
    >>|cRXP_WARN_Esta é uma missão com tempo limite, você deve escoltá-lo ao seu destino em 20 minutos|r
    .accept 5321 >> Aceite A Adormecida Despertou
    .target Kerlonian Evershade
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Abra |cRXP_PICK_Baú de Kerlonian|r. Pegue-o para o |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r para iniciar a escolta
    >>|cRXP_WARN_Pule este passo se ele não estiver lá. Pode levar até 25 minutos para ele ressurgir|r
    >>|cRXP_WARN_Esta é uma missão cronometrada, você tem que escoltá-lo até a mochila dele em 20 minutos|r
    .accept 5321 >> Aceite A Adormecida Despertou
    .target Kerlonian Evershade
    .itemcount 13536,<1 --Horn of Awakening
step
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Abra |cRXP_PICK_Baú de Kerlonian|r. Pegue-o para o |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .itemcount 13536,<1 --Horn of Awakening
step
    #label Kerlonian
    .goto 1439/1,206.400,4402.500
    >>|cRXP_WARN_Escorte |cRXP_FRIENDLY_Kerlonian|r até a mochila dele em Costa Negra|r
    .use 13536 >> |cRXP_WARN_Use a|r |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r] |cRXP_WARN_sempre que |cRXP_FRIENDLY_Kerlonian|r adormecer, ao lado dele|r
    >>|cRXP_WARN_Evasão: não corra na estrada principal tanto quanto possível. Inimigos só aparecerão se você estiver na estrada|r
    .complete 5321,2
    .isOnQuest 5321
step
    #completewith tower
    .zone Ashenvale >> Viaje para o sul até Vale Gris
    .goto 1440/1,-12.70,4150.17
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Liladris Luneflúvia|r
	.target Liladris Moonriver
    .goto 1440/1,128.01,3305.31
    .turnin 5321 >> Entregue A Adormecida Despertou
    .isQuestComplete 5321
step
    #label tower
    .goto 1440/1,189.71,3185.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 967 >> Entregue A Torre de Althalaxx
    .accept 970 >> Aceite A Torre de Althalaxx
    .target Delgren the Purifier
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Aceite Cabelo-de-bathran
    .xp <20,1
step
    .goto 1440/1,-102.08,3492.890
    >>Mate os |cRXP_ENEMY_Dark Strand Cultists|r e os |cRXP_ENEMY_Dark Strand Adepts|r. Saqueie-os para obter a |cRXP_LOOT_Glowing Gema Anímica|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto 1440/1,-102.08,3492.890
    .xp 20-1650 >>Continue matando |cRXP_ENEMY_inimigos da Escuridão Strand|r até você ter XP suficiente para atingir o nível 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abra os |cRXP_PICK_Feixes de Plantar|r no chão. Saque-os pelos |cRXP_LOOT_Cabelos de Bathran|r
    >>Eles parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Eles podem ser difíceis de ver
    >>|cRXP_WARN_Certifique-se de ter|r |T134916:0|t[Localizar Plantas] |cRXP_WARN_ativado para vê-los no minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,<1,1
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abra os |cRXP_PICK_Feixes de Plantar|r no chão. Saque-os pelos |cRXP_LOOT_Cabelos de Bathran|r
    >>Eles parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Eles podem ser difíceis de ver
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,1,1
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .turnin 1010 >> Entregue Cabelo-de-bathran
    .accept 1020 >> Aceite A Cura de Orendil
    .target Orendil Broadleaf
    .isQuestComplete 1010
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .accept 1020 >> Aceite A Cura de Orendil
    .target Orendil Broadleaf
    .isQuestTurnedIn 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Entregue A Torre de Althalaxx
    .accept 973 >> Aceite A Torre de Althalaxx
step
    #optional
    .goto 1440/1,-138.99,3806.92
    .xp 20 >> Suba até o nível 20
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .accept 1010 >> Aceite Cabelo-de-bathran
    .target Orendil Broadleaf
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abra os |cRXP_PICK_Feixes de Plantar|r no chão. Saque-os pelos |cRXP_LOOT_Cabelos de Bathran|r
    >>Eles parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Eles podem ser difíceis de ver
    >>|cRXP_WARN_Certifique-se de ter|r |T134916:0|t[Localizar Plantas] |cRXP_WARN_ativado para vê-los no minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abra os |cRXP_PICK_Feixes de Plantar|r no chão. Saque-os pelos |cRXP_LOOT_Cabelos de Bathran|r
    >>Eles parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Eles podem ser difíceis de ver
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .turnin 1010 >> Entregue Cabelo-de-bathran
    .accept 1020 >> Aceite A Cura de Orendil
    .target Orendil Broadleaf
step
    #optional
    #completewith TZS
    .subzone 415 >> Vá para Astranaar
step
    #label AshenvaleEnd
    .goto 1440/1,-283.73,2827.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Aprenda a rota de voo de Astranaar
	.target Daelyshia
step
    #label TZS
    .goto 1440/1,-299.30,2796.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shindrell Fogofugaz|r
    .accept 1008 >> Aceite A Zoram Strand
    .target Shindrell Swiftfire
step
    .goto 1440/1,-311.99,2759.11
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Tenysil|r
    .accept 1070 >> Aceite a missão “Em Guarda” na Cordilheira das Torres de Pedra
    .target Sentinel Thenysil
step
    .goto 1440/1,-362.16,2785.640
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >> Aceite Jornada ao Pico Petrel
    .target Faldreas Goeth'Shael
step
    .goto 1440/1,-411.18,2767.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .accept 991 >> Aceite A Purificação de Raene
    .accept 1054 >> Aceite Expurgo a Ameaça
    .target Raene Wolfrunner
step
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Kimlya|r
    .home >> Defina sua Pedra de Regresso para Astranaar
    .target Innkeeper Kimlya
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Entregue A Cura de Orendil
    .timer 24,RP da Cura de Orendil
    .accept 1033 >> Aceite A Lágrima de Eluna
]])