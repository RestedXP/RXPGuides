if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance NightElf
#name 11-16 Costa Oscura/Loch Modan
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#next 17-18 Salón de Señores Feudales

step
    #include RestedXP Guía Forever (A)\14-16 Costa Oscura@WashedA-IFExit
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Brebefuego|r
    >>|cRXP_WARN_Si tienes un Mago en tu grupo, establecerás tu Piedra de hogar en Villa del Lago en su lugar|r
    .goto Ironforge,18.10,51.60
    .home >> Establece tu Piedra de hogar en Forjaz
    .target Innkeeper Firebrew
step
    #completewith next
    .zone Dun Morogh >> Viaja a Dun Morogh
step
    .goto Dun Morogh,59.9,49.5,30,0
    .goto Dun Morogh,61.2,47.2,15,0
    .goto Dun Morogh,62.1,47.3,20 >>Sube corriendo por la rampa hacia |cRXP_ENEMY_Vagash|r
step
    #completewith next
    +"Kitea" a |cRXP_ENEMY_Vagash|r hacia |cRXP_FRIENDLY_Rudra Semperámbar|r
    >>|cRXP_WARN_Intenta evitar acercarte a él o lanzará|r |T135848:16|t[Rugido glacial] |cRXP_WARN_lo que te aturdirá durante 3 segundos|r
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .goto Dun Morogh,63.1,49.8
    .target Rudra Amberstill
    .accept 314 >>Acepta la misión La protección del rebaño
step
    >>"Kitea" a |cRXP_ENEMY_Vagash|r hacia el |cRXP_FRIENDLY_Montaraz de Dun Morogh|r
    >>|cRXP_WARN_Asegúrate de causarle al menos 50% de daño|r
    .goto Dun Morogh,62.8,54.6,10,0
    .mob Vagash
    .target Dun Morogh Mountaineer
    .complete 314, 1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .goto Dun Morogh, 63.1, 49.8
    .target Rudra Amberstill
    .turnin 314 >>Entrega la misión La protección del rebaño
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    .accept 96392 >> Acepta la misión Vigía de Farsen
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Habla con |cRXP_FRIENDLY_Earthseer Farsen|r para ver su previsión
    >>|cRXP_WARN_Puedes cancelar la Vista lejana cuando se completa el objetivo|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Presiona ESC para cancelar la Vista lejana|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Puedes cancelar la Vista lejana cuando se completa el objetivo|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Presiona ESC para cancelar la Vista lejana|r
    .turnin 96392 >> Entrega la misión Vigía de Farsen
    --.accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Mata |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener el |T237385:0|t[|cRXP_LOOT_Mapa de Hierro Negro|r]
    .use 274268 >>|cRXP_WARN_Usa el|r |T237385:0|t[|cRXP_LOOT_Mapa de Hierro Negro|r] |cRXP_WARN_para iniciar la misión|r
    -->>|cRXP_WARN_You can skip killing |cRXP_ENEMY_Dark Iron Spies|r for the other quest because they are low level once you find the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    --.complete 96390,1 -- Dark Iron Spy slain 10/10
    --.disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Acepta la misión Mapa subterráneo
    .mob Dark Iron Spy
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96391 >> Entrega la misión Mapa subterráneo
    .accept 96393 >> Acepta la misión Old Ironforge Incursion
    .target Earthseer Farsen
step
    #optional
    .isQuestComplete 96390
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Entrega la misión Nip 'Em in the Compa
    .target Earthseer Farsen
step
    #include RestedXP Guía Forever (A)\14-16 Costa Oscura@LochEnter-LochEnd
step << NightElf Druid
    #completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
	.goto Moonglade,44.2,45.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva|r
	.fly Teldrassil >>Vuela a la Aldea Rut'theran
	.target Silva
step << Druid
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid
	.goto Darnassus,35.375,8.405
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
	.accept 26 >>Acepta la misión Una lección que aprender
	.trainer >> Aprende tus hechizos de clase
	.target Mathrengyl Bearwalker
step << Druid
    #season 0
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r
    .turnin 26 >> Entrega la misión Una lección que aprender
    .accept 29 >> Acepta la misión La prueba del lago
    .target Dendrite Starblaze
step << Druid
    #season 0
    .goto Moonglade,52.6,51.6
    >>Nada al Lago Elune'ara
    >>Abre el |cRXP_PICK_Adorno contenedor|r. Despójalo para obtener un |T134125:0|t[Adorno de altar]
    >>|cRXP_WARN_Puede aparecer en diferentes ubicaciones bajo el agua|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #season 0
    #completewith next
    .cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    #season 0
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Usa el|r |T134125:0|t[Adorno de altar] |cRXP_WARN_en el árbol del Santuario de Remulos|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    #season 0
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Entrega la misión La prueba del lago
    .accept 272 >> Acepta la misión La prueba del león marino
    .target Tajarri
step << NightElf
    .hs >>Usa tu Piedra de hogar para ir a Forjaz
    .zoneskip Ironforge
step << NightElf Priest/NightElf Druid
    #ah
    #label OilWandFood
    #completewith AHCheck
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|cRXP_WARN_Compra lo siguiente si te lo puedes permitir:|r
    >>|T134711:0|t[Aceite de zahorí menor] |cRXP_WARN_y|r |T133906:0|t[Sabiola ahumada]
    >>|cRXP_WARN_Comprueba también si hay mejoras de|r |T132317:0|t[Varita] |cRXP_WARN_de alto DPS que puedas usar ahora o pronto|r << Priest
    >>|cRXP_WARN_Te proporcionarán un gran aumento de DPS en los niveles iniciales. Si no quieres o no puedes hacer esto, omite este paso|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << NightElf Hunter
    .goto 1455/0,-1266.100,-5006.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belia Tronagranito|r
    .trainer >> Aprende tus hechizos de clase
    .target Regnus Thundergranite
step << NightElf Priest
    .goto 1455/0,-897.200,-4607.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Sumo sacerdote Rohan|r  
    .trainer >> Aprende tus hechizos de clase
    .target High Priest Rohan
step << NightElf Rogue
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Aprende tus hechizos de clase
    .target Fenthwick
step << NightElf Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
step << NightElf
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Pico Tormenta|r
    .turnin 301 >> Entrega la misión Informe a Forjaz
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
#name 13-15 Páramos de Poniente 
#displayname 14-15 Páramos de Poniente << Gnome/Dwarf !Hunter
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#next 15-17 Costa Oscura

step
    #optional
    .maxlevel 14,endOfTheGuide

step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en la ciudad de Ventormenta
    .target Innkeeper Allison
    .bindlocation 16509
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregar las misiones más rápido en Páramos de Poniente pronto:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133972:0|t[Carne fibrosa de buitre]
    >>|T133884:0|t[Ojo de múrloc]
    >>|T135997:0|t[Morro de dentrosangre]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Hígado de Dentosangre]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .turnin 6261 >> Entrega la misión Dungar Tragolargo
    .accept 6285 >> Acepta la misión Regresa junto a Lewis
    .target Dungar Longdrink

step << !Skyborne
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente << !NightElf
    .fp Stormwind >> Consigue la Ruta de Vuelo de Ventormenta << NightElf
    .target Dungar Longdrink
step
    #completewith SaldeanVendor
    #optional
    .goto 1429/0,875.96,-9814.400
    .zone Westfall >> Viaja a Páramos de Poniente
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r
    .accept 64 >> Acepta la misión La reliquia olvidada
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verna Cejade|r
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 151 >> Acepta la misión La pobre y vieja Blanchy
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >> Viaja a la Finca de Saldean
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
    .accept 9 >> Acepta la misión Campos de la muerte
    .accept 109 >>Acepta la misión Habla con Gryan Mantorrecio << !Human
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .target Salma Saldean
    .accept 38 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 22 >> Acepta la misión Pastel de hígado de dentosangre
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Lewis|r
    .target Quartermaster Lewis
    .goto 1436/0,1021.67,-10500.63
    .turnin 6285 >> Entrega la misión Regresa junto a Lewis
step << !Human
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 12 >> Acepta la misión La Milicia Popular
step << skip
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Danuvin|r
    .accept 102 >> Acepta la misión En patrulla por los Páramos de Poniente
step << Human
    #requires Lewis
    .goto 1436/0,1126.67,-10636.670
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Acepta la misión Pañuelos rojos de cuero
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Acepta la misión Pañuelos rojos de cuero
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Heather|r
    .vendor >>|cRXP_BUY_Compra comida/agua si es necesario|r
	.target Innkeeper Heather
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alba Lunaclara::253092|r
    .target Alba Fairmoon::253092
    .accept 92742 >>Acepta la misión Pruebas en los pozos
    .accept 92744 >>Acepta la misión Branquias de múrloc
step
    #optional
    .abandon 102 >> Abandona la misión En patrulla por los Páramos de Poniente
    >>|cRXP_WARN_No completarás esta misión en esta guía|r
step
	#completewith MurlocEyeGills
    >>Abre los |cRXP_PICK_Sacos de avena|r del suelo. Despójalos para obtener el |cRXP_LOOT_Puñado de avena|r
    >>|cRXP_WARN_Generalmente puedes encontrarlos cerca de las vallas de las granjas o de los edificios|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
    >>Mata |cRXP_ENEMY_Dentosangre jóvenes|r y |cRXP_ENEMY_Desgarradores jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Carne de buitre|r, |cRXP_LOOT_Morros|r e |cRXP_LOOT_Hígados|r
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
    >>Mata |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |T133694:0|t|cRXP_LOOT_Pañuelos rojos de cuero|r
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
    .goto 1436/0,1602.67,-10629.67,75 >> Viaja a la Hacienda de Alexston
    >>|cRXP_WARN_Ve completando los otros objetivos de misión mientras te diriges hacia allí|r
step << skip -- quests drop rate is beyond dreadful. over 50 kills to complete
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozwin Piñón de Hierro::253395|r en el granero
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acepta la misión Cosechar a los cosechadores
step
    #sticky
    #completewith bennytime
    >>Mata |cRXP_ENEMY_Vigilantes de la cosecha|r ubicados en cualquiera de los campos mientras corres cerca de ellos
    >>Despójalos para obtener su |cRXP_LOOT_Okra|r y sus |cRXP_LOOT_Frascos de aceite|r
    .mob Harvest Watcher
    .complete 9,1 --Havest Watcher slain (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>Abre el |cRXP_PICK_Cofre de Alexston|r. Despójalo para obtener |cRXP_LOOT_Una sencilla brújula|r
    >>|cRXP_WARN_Evita a los mobs frente al edificio quemado. Despoja esto desde atrás, junto a la chimenea. Usa la chimenea para evadir los hechizos de |cRXP_ENEMY_Pillagers|r si es necesario|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    #completewith bennytime
    >>Mata |cRXP_ENEMY_Dentosangre jóvenes|r y |cRXP_ENEMY_Desgarradores jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Carne de buitre|r, |cRXP_LOOT_Morros|r e |cRXP_LOOT_Hígados|r
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
    >>Mata |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |T133694:0|t|cRXP_LOOT_Pañuelos rojos de cuero|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1266.67,-9927.33,75 >> Viaja a la Finca de Jansen, |cRXP_WARN_trabaja en los otros objetivos de misión mientras te mueves hacia allí|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>Abre el |cRXP_PICK_Guardarropa de Cejade|r. Despoja el |cRXP_LOOT_Reloj de bolsillo de Cejade|r
    >>|cRXP_WARN_Puedes despojar el |cRXP_PICK_Guardarropa de Cejade|r desde fuera si orientas bien la cámara|r
	>>|cRXP_WARN_Cuidado con |cRXP_ENEMY_Benny Blaanco|r. Pega fuerte|r
    .complete 64,1 --Furlbrow's Pocket Watch
step << skip
    #completewith next
    >>Mata |cRXP_ENEMY_Gnolls Zarparrío|r y |cRXP_ENEMY_Exploradores Zarparrío|r. Despójalos para obtener sus |T134297:0|t|cRXP_LOOT_Garras gnoll|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Usa el|r |T236996:0|t[Kit de muestra de agua de pozo] |cRXP_WARN_en el pozo de la Finca de Jansen|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step
    #label MurlocEyeGills
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Mata a los |cRXP_ENEMY_Asaltantes múrloc|r y a los |cRXP_ENEMY_Correcostas múrloc|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r y |cRXP_LOOT_Branquias|r
    >>|cRXP_WARN_Si no tienes muchos |cRXP_LOOT_Gills|r para cuando hayas terminado |cRXP_LOOT_Ojos|r, omite este paso|r
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
    >>Mata |cRXP_ENEMY_Gnolls Zarparrío|r y |cRXP_ENEMY_Exploradores Zarparrío|r. Despójalos para obtener sus |T134297:0|t|cRXP_LOOT_Garras gnoll|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Abre los |cRXP_PICK_Sacos de avena|r del suelo. Despójalos para obtener el |cRXP_LOOT_Puñado de avena|r
	>>|cRXP_WARN_Generalmente puedes encontrarlos cerca de las vallas de las granjas o de los edificios|r
	.complete 151,1 --Handful of Oats (8)
step << Human Warlock
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .turnin 64 >> Entrega la misión La reliquia olvidada
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Entrega la misión La pobre y vieja Blanchy
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
    .isOnQuest 184
step
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .turnin 64 >> Entrega la misión La reliquia olvidada
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Entrega la misión La pobre y vieja Blanchy
    .target +Verna Furlbrow
    .goto 1436/0,919.47,-9853.13
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
    .vendor >> |cRXP_BUY_Vende la basura|r
    >>|cRXP_WARN_NO vendas|r |T133884:0|t[Ojo de múrloc], |T135997:0|t[Morros de dentosangre], |T134341:0|t[Hígados de Dentosangre] |cRXP_WARN_o|r |T133972:0|t[Carne fibrosa de buitre]
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Entrega la misión Campos de la muerte
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Entrega la misión Pastel de hígado de dentosangre
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozwin Piñón de Hierro::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acepta la misión Cosechar a los cosechadores
    .turnin 92909 >>Entrega la misión Cosechar a los cosechadores
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Entrega la misión Pastel de hígado de dentosangre
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
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
    >>Mata a los |cRXP_ENEMY_Vigías de la cosecha|r. Despójalos para obtener su |cRXP_LOOT_Okra|r y sus |cRXP_LOOT_Frascos de aceite|r
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
    >>Mata a los |cRXP_ENEMY_Vigías de la cosecha|r. Despójalos para obtener sus |cRXP_LOOT_Frascos de aceite|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
    .collect 814,5,103,1 --Flask of Oil (5)
step
    #optional
    .isQuestComplete 9
    .subzoneskip 107,1 -- forces early turnin if already at same farm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Entrega la misión Campos de la muerte
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozwin Piñón de Hierro::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acepta la misión Cosechar a los cosechadores
    .turnin 92909 >>Entrega la misión Cosechar a los cosechadores
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
    >>Mata |cRXP_ENEMY_Dentosangre jóvenes|r y |cRXP_ENEMY_Desgarradores jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Carne de buitre|r, |cRXP_LOOT_Morros|r e |cRXP_LOOT_Hígados|r
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Entrega la misión Campos de la muerte
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
    .turnin 22 >> Entrega la misión Pastel de hígado de dentosangre
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozwin Piñón de Hierro::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acepta la misión Cosechar a los cosechadores
    .turnin 92909 >>Entrega la misión Cosechar a los cosechadores
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |T133694:0|t|cRXP_LOOT_Pañuelos rojos de cuero|r
    >>|cRXP_WARN_Es un área de reaparición dinámica, lo que significa que si matas a suficientes enemigos, seguirán reapareciendo|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Usa el|r |T236996:0|t[Kit de muestra de agua de pozo] |cRXP_WARN_en el pozo de la Granja de Molsen|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    .isOnQuest 153
    .goto 1436/0,1324.200,-10490.400
    >>Mata |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |T133694:0|t|cRXP_LOOT_Pañuelos rojos de cuero|r
    >>|cRXP_WARN_Es un área de reaparición dinámica, lo que significa que si matas a suficientes enemigos, seguirán reapareciendo|r
    >>|cRXP_WARN_Si aún estás muy rezagado con los |T133694:0|t|cRXP_LOOT_Pañuelos de cuero rojo|r y has matado a todos los |cRXP_ENEMY_Defias|r requeridos, abandona la misión|r [Pañuelos rojos de cuero]
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
    >>Mata |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |T133694:0|t|cRXP_LOOT_Pañuelos rojos de cuero|r
    >>|cRXP_WARN_Es un área de reaparición dinámica, lo que significa que si matas a suficientes enemigos, seguirán reapareciendo|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >> Entrega la misión La Milicia Popular
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Acepta la misión La hermandad de los Defias
step
    #optional
    .isQuestComplete 102
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Danuvin|r
	.target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .turnin 102 >> Entrega la misión En patrulla por los Páramos de Poniente
step
    .isQuestComplete 153
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >> Entrega la misión Pañuelos rojos de cuero
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alba Lunaclara::253092|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Entrega la misión Pruebas en los pozos
    .turnin 92744 >>Entrega la misión Branquias de múrloc
    .isQuestComplete 92744
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alba Lunaclara::253092|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Entrega la misión Pruebas en los pozos
step
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

step << Human Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Cómprale una|r |T135343:0|t[Cimitarra] |cRXP_BUY_o algo mejor de la Casa de Subastas y equípalo en tu mano izquierda|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Human Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a esta vendedora|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .train 1758,1
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Cómprale un|r |T134335:0|t[Adorno lustroso] |cRXP_BUY_y tres|r |T134324:0|t[Reptadores nocturnos] |cRXP_BUY_. Esto es para una misión de 900xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r dentro
    >>|cRXP_WARN_Si acabas de aprender habilidades antes, omite este paso|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Entrega la misión Principios humildes
    .target Baros Alexston
    .isQuestComplete 399
step << NightElf Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theridran|r
    .trainer >>Aprende tus hechizos de clase
	.target Theridran
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .train 6222,1
    .target Ursula Deline
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .train 2137,1
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith train19742 << Paladin
    #completewith next << Priest
    .goto 1453/0,809.52,-8579.22,20 >> Viaja a la Catedral de Ventormenta
step << Human Paladin
    .isOnQuest 1780
    .goto 1453/0,845.800,-8545.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Entrega la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Paladin
    #label train19742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Aprende tus hechizos de clase
    .train 19742,1
    .target Arthur the Faithful
step
    #optional
    #sticky
    .abandon 153 >> Abandona la misión Pañuelos rojos de cuero si no la terminaste
step
    #optional
    #sticky
    .abandon 92744 >> Abandona la misión Múrloc Gills si no la terminaste
step
    #optional
    #label endOfTheGuide

step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en la ciudad de Ventormenta
    .target Innkeeper Allison
    .bindlocation 16509
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Tu|r |T133971:0|t[Cocina] |cRXP_WARN_debe estar en 10 para la entrega en Costa Oscura para|r |T133972:0|t[Strider Carne]
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
step
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Acepta la misión Philmor's Favor
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Acepta la misión Hora de la pesca
    .turnin 95065 >>Entrega la misión Fishin' Tiempo
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Mientras esperas al Bote en el muelle:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en tu Libro de Profesiones)|r
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
    >>|cRXP_WARN_Mientras esperas al Bote en el muelle:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en tu Libro de Profesiones)|r
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
    >>|cRXP_WARN_Mientras esperas al Bote en el muelle:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en tu Libro de Profesiones)|r
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
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los siguientes objetos:|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
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
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
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
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Costa Oscura si es necesario|r
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Toma el barco hacia Costa Oscura
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !NightElf
#name 15-17 Costa Oscura
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#next 17-18 Salón de Señores Feudales

step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .accept 963 >> Acepta la misión Un amor eterno
    .target Cerellean Whiteclaw
step
    #optional
    #completewith next
    .goto 1439/1,525.800,6414.800,8 >> Sube por las rampa hacia |cRXP_FRIENDLY_Maniveo Zumbang|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maniveo Zumbang|r arriba
    .accept 983 >> Acepta la misión La caja mecánica 827
    .target Wizbang Cranktoggle
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >> Acepta la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2118 >> Acepta la misión Tierras apestadas
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acepta la misión La extensión de la amenaza
    .target Terenthis
step
    .goto 1439/1,503.100,6402.100
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 98025 >>Acepta la misión SE BUSCA: Jai'vhanel
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Acepta la misión La familia y la caña de pescar
    .turnin 1141 >> Entrega la misión La familia y la caña de pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fp Auberdine >> Consigue la ruta de vuelo de Auberdine
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
    >>|cRXP_WARN_Envía tu mascota a atacar al |cRXP_ENEMY_Oso Cardo|r. Una vez que tu mascota sea aturdida por el |cRXP_ENEMY_Oso Cardo|r, abandona tu mascota y empieza a domesticarla|r
    .train 16828 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Oso cardo|r para domesticarlo|r
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
    >>Mata |cRXP_ENEMY_Reptadores de marea pigmeo|r y |cRXP_ENEMY_Reptadores de arrecife jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    >>|cRXP_WARN_Puede que necesites entrar al agua para encontrarlos|r
    >>|cRXP_WARN_Aunque algunas de estas misiones sean grises, complétalas igual, ya que forman parte de una cadena|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Abre la |cRXP_PICK_Criatura marina varada|r. Despójala para obtener los |cRXP_LOOT_Huesos de criatura marina|r
    .complete 3524,1 --Sea Creature Bones (1)



step << Druid
    #ah
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Sube tu|r |T136065:0|t[Herboristería] |cRXP_WARN_al 15 para poder recolectar|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante en pronto. Puedes desaprenderla después|r
    >>|cRXP_WARN_Si prefieres comprar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_de la Casa de Subastas después, omite este paso|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Sube tu|r |T136065:0|t[Herboristería] |cRXP_WARN_al 15 para poder recopilar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith CliffspringEnd
    #requires GatheringQ
    >>Recoge 5 |T134187:0|t[Raíz de tierra] mediante |T136065:0|t[Herboristería] |cRXP_WARN_y raramente en los|cRXP_PICK_ Cofres maltrechos|r para una misión de clase futura|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1



step
    #completewith next
    >>|cRXP_WARN_Usa|r |T134335:0|t[Esperanza de Tharnariun] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso cardo rabioso|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the|r |cRXP_ENEMY_Bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO |cRXP_ENEMY_BEAR|r NEARBY==|r
    >>|cRXP_WARN_¡Puedes desperdiciar la trampa y hacer que la misión sea imposible de completar! Si eso te sucede, tienes que volver a quien te dio la misión y pedirle otra trampa|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto 1439/1,393.72,5993.24
    >>Corre hacia el borde del Campamento Fúrbolg
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
    >>|cRXP_WARN_Usa|r |T134335:0|t[Esperanza de Tharnariun] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso cardo rabioso|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO BEAR NEARBY==|r
    >>|cRXP_WARN_¡Puedes desperdiciar la trampa y hacer que la misión sea imposible de completar! Si eso te sucede, tienes que volver a quien te dio la misión y pedirle otra trampa|r
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
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r del suelo
    .turnin 983 >> Entrega la misión La caja mecánica 827
    .accept 1001 >> Acepta la misión La caja mecánica 411
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Entrega la misión Varado
    .accept 4681 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Viaja hacia |cRXP_FRIENDLY_Cerellean Zarpablanca|r en el muelle
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .accept 963 >> Acepta la misión Un amor eterno
    .target Cerellean Whiteclaw
step
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Viaja al final del muelle, luego salta al agua
step
    #optional
    #completewith washed1
    .goto 1439/1,741.52,6570.95,0
    .goto 1439/1,915.10,6333.84,0
    .goto 1439/1,778.20,6231.66,0
    >>Mata a los |cRXP_ENEMY_Trilladores de Costa Oscura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos de trillador|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>Abre la |cRXP_PICK_Tortuga marina esquelética|r. Despójala para obtener los |cRXP_LOOT_Restos de tortuga marina|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Entrega la misión Varado
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >> Acepta la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2118 >> Entrega la misión Tierras apestadas
    .accept 2138 >> Acepta la misión La limpieza de la infección
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Entrega la misión La extensión de la amenaza
    .accept 985 >> Acepta la misión La extensión de la amenaza
    .accept 4761 >> Acepta la misión Thundris Tejevientos
    .target Terenthis
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step
    #optional
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #optional
    #completewith next
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r dentro
    .vendor 4182 >> |cRXP_BUY_Compra tantas|r |T133634:0|t[Faltriqueras marrón pequeñas] |cRXP_BUY_o|r |T133634:0|t[Carteras de cuero marrón] |cRXP_BUY_como necesites|r
    >>|cRXP_BUY_Cómprale|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_o|r |T132384:0|t[Perdigones pesados] |cRXP_BUY_hasta que tu carcaj/bolsa de proyectiles esté llena|r << Hunter
    .target Dalmond
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
    .accept 954 >> Acepta la misión Bashal'Aran
    .accept 958 >> Acepta la misión Las herramientas de los Altonato << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
    .accept 954 >> Acepta la misión Bashal'Aran
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
step
    #completewith MistVeil
    .goto 1439/1,620.35,6768.76,0
    .goto 1439/1,602.66,6924.21,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    >>Mata a los |cRXP_ENEMY_Trilladores de Costa Oscura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos de trillador|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
    .isOnQuest 982
step
    #optional
    #completewith next
    +|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==¡TEN CUIDADO CON LA BARRA DE RESPIRACIÓN!|==|r
    >>|cRXP_WARN_Nada bajo el agua hacia el exterior de la parte trasera del barco|r
    >>|cRXP_WARN_En la ubicación de la flecha, presiona tu atajo de teclado "Interactuar con objetivo" para despojar el |cRXP_LOOT_Arcón del Amanecer de Plata|r del exterior del barco|r
    >>|cRXP_WARN_Si no quieres hacer esto, nada bajo el agua al piso inferior del barco y despoja el |cRXP_LOOT_Arcón del Amanecer de Plata|r dentro|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==¡TEN CUIDADO CON LA BARRA DE RESPIRACIÓN!|==|r
    >>|cRXP_WARN_Nada bajo el agua hacia el exterior de la parte trasera del barco|r
    >>|cRXP_WARN_En la ubicación de la flecha, presiona tu atajo de teclado "Interactuar con objetivo" para despojar el |cRXP_LOOT_Arcón del Halo de bruma|r del exterior del barco|r
    >>|cRXP_WARN_Si no quieres hacer esto, nada bajo el agua al piso inferior del barco y despoja el |cRXP_LOOT_Arcón del Halo de bruma|r dentro|r
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
    >>Mata a los |cRXP_ENEMY_Trilladores de Costa Oscura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos de trillador|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    .goto 1439,41.901,31.339
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4723 >> Acepta la misión Criatura marina varada
step
    .goto 1439,41.960,28.616
    >>Haz clic en la |cRXP_PICK_Caja mecánica 411|r del suelo
    .turnin 1001 >> Entrega la misión La caja mecánica 411
    .isQuestComplete 1001
step
    #optional
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >> Viaja hacia |cRXP_FRIENDLY_Asterion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Grells salvajes|r y a los |cRXP_ENEMY_Duendes vil|r por el camino|r
    .turnin 954 >> Entrega la misión Bashal'Aran
    .accept 955 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    #label Bashal1
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Grells salvajes|r y a los |cRXP_ENEMY_Duendes vil|r por el camino|r
    .turnin 954 >> Entrega la misión Bashal'Aran
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
    >>Mata a los |cRXP_ENEMY_Grells salvaje|r y a los |cRXP_ENEMY_Duendes vil|r. Despójalos para obtener sus |cRXP_LOOT_Pendientes grell|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Sátiros Deth'ryll|r por ahora|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Entrega la misión Bashal'Aran
    .accept 956 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #optional
    .abandon 955 >> Abandona la misión Bashal'Aran
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
    >>Mata |cRXP_ENEMY_Sátiros Deth'ryll|r. Despójalos para obtener el |cRXP_LOOT_Sello de piedra lunar antiguo|r
    >>|cRXP_WARN_Ten en cuenta que no tienen reapariciones dinámicas|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Entrega la misión Bashal'Aran
    .accept 957 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .accept 957 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step
    .goto 1439,47.314,48.676
    >>Viaja hasta el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
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
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener su |cRXP_LOOT_Colgante|r
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
    >>Mata a los |cRXP_ENEMY_Altonatos malditos|r, a los |cRXP_ENEMY_Altonatos en pena|r y a los |cRXP_ENEMY_Altonatos gemebunda|r. Despójalos para obtener sus |cRXP_LOOT_Reliquias|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .accept 953 >> Acepta la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
    .xp >17,1
step
    .goto 1439,42.652,63.145
    >>Haz clic en la |cRXP_PICK_La caída de Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>Haz clic en la |cRXP_PICK_Llama antigua|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #label TheLay
    .goto 1439/1,105.52,5770.100
    >>Haz clic en |cRXP_PICK_La instauración de Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    .isOnQuest 98025
    .waypoint 1439/1,-18.100,5779.800
    >>Mata a |cRXP_ENEMY_Jai'vhanel|r. Despójalo para obtener la |cRXP_LOOT_Pluma de Jai'vhanel|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .turnin 953 >> Entrega la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #optional
    #completewith FurbolgGrind
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto 1439,37.105,62.167
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4722 >> Acepta la misión Tortuga marina varada
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
    >>Mata |cRXP_ENEMY_Abrecaminos Bosque Negro|r y |cRXP_ENEMY_Soplavientos Bosque Negro|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #completewith TOTH
    .goto 1439,36.701,45.122
    .subzone 442 >> Regresa a Auberdine
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Entrega la misión Tortuga marina varada
    .turnin 4723 >> Entrega la misión Criatura marina varada
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Regresa a |cRXP_FRIENDLY_Cerellean Zarpablanca|r en el muelle
step
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .turnin 963 >> Entrega la misión Un amor eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    .isOnQuest 98025
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 98025 >>Entrega la misión SE BUSCA: Jai'vhanel
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de agua vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >> Entrega la misión La limpieza de la infección
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Entrega la misión La extensión de la amenaza
    .target Terenthis
step
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >> Sube las escaleras
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Elissa Brisa Estelar|r arriba
    .accept 965 >> Acepta la misión La Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .turnin 982 >> Entrega la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #optional
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 958 >> Entrega la misión Las herramientas de los Altonato
    .target Thundris Windweaver
    .isQuestComplete 958
step
    .goto 1439,47.314,48.676
    >>Haz clic en el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los 2 grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .turnin 4812 >> Entrega la misión Agua en cascada
    .accept 4813 >> Acepta la misión Los trozos del interior
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Entrega la misión Bashal'Aran
    .isOnQuest 957
    .target Asterion
step
    #optional
    #completewith CrabTurtle
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label CrabTurtle
    .goto 1439/1,47.88,7433.800
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4725 >> Acepta la misión Tortuga marina varada
step
    .goto 1439/1,-386.39,7219.830
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de ensayo vacío] |cRXP_WARN_en la base del Río Fonroca|r
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
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #optional
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Viaja a la Cueva del Río Fonroca
step << Druid
    .goto 1439/1,-660.18,6874.43
    >>|cRXP_WARN_Usa la|r |T134776:0|t[Muestra vacía de Salto de Fonroca] |cRXP_WARN_en el agua en la entrada de la Cueva del Río Fonroca|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
    .isOnQuest 6122
step
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Despoja los |cRXP_LOOT_Boletos rudos|r y una |cRXP_LOOT_Oronja verde|r del suelo
    >>|cRXP_WARN_Quédate en la sección superior. Si no hay una |cRXP_LOOT_Oronja verde|r al final del lado superior, baja y consigue uno de la sala del sur abajo|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jinetes de olas Escama Tormentosa|r lanzan|r |T135836:0|t[Aspersión] |cRXP_WARN_(Ataque a distancia instantáneo: Causa daño a los enemigos cercanos y los lanza hacia atrás) - asegúrate de no estar en una posición donde te puedan tirar del nivel superior de la cueva|r
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
    .deathskip >> Muere y reaparece en el cementerio de Auberdine
    .target Ángel de la Resurrección
step
    #optional
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >> Viaja a Auberdine
step
    #label CliffspringEnd
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4762 >> Entrega la misión El Río Fonroca
    .target Thundris Windweaver
step
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .itemcount 5469,5 -- strider meat (5)

step << Druid
    #optional
    .isOnQuest 6122
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .turnin 6122 >> Entrega la misión La fuente del envenenamiento
    .accept 6123 >> Acepta la misión Reunir los ingredientes del remedio
    .target Alanndarian Nightsong
step << Druid
    #optional
    .isQuestTurnedIn 6123
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 6123 >> Acepta la misión Reunir los ingredientes del remedio
    .target Alanndarian Nightsong
step << !Druid
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >> Entrega la misión La limpieza de la infección
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    >>|cRXP_WARN_Elige la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_ya que deberías intentar guardar una|r |T135641:0|t[Daga] |cRXP_WARN_para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r << Rogue
    .turnin 4813 >> Entrega la misión Los trozos del interior
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .turnin 947 >> Entrega la misión La Cueva de las Setas
    .accept 948 >> Acepta la misión Onus
    .target Barithras Moonshade
step
    .goto 1439/1,504.41,6402.39
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Entrega la misión Criatura marina varada
    .turnin 4725 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723

----Start of Druid Quest section----
step << Druid
    #completewith TotL
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Toma el barco hacia Darnassus
    .zoneskip Darnassus
step << Druid
    #optional
    #label DruidLesson
    #completewith TotL
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid
    .goto 1457/1,2563.98,10179.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .accept 26 >> Acepta la misión Una lección que aprender
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #completewith next
    .abandon 729 >> Abandona la misión El prospector despistado para aceptar la misión ¿Problemas en Costa Oscura?
step << Druid
    #optional
	#completewith TotL
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    .goto 1450/1,-2676.22,8019.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r
    .turnin 26 >> Entrega la misión Una lección que aprender
    .accept 29 >> Acepta la misión La prueba del lago
    .target Dendrite Starblaze
step << Druid
    .goto 1450/1,-2595.43,7697.24
    >>Nada al Lago Elune'ara
    >>Abre el |cRXP_PICK_Adorno contenedor|r. Despójalo para obtener un |T134125:0|t[Adorno de altar]
    >>|cRXP_WARN_Puede aparecer en diferentes ubicaciones bajo el agua|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #completewith next
    .cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    .goto 1450/1,-2212.85,7854.68
    >>|cRXP_WARN_Usa el|r |T134125:0|t[Adorno de altar] |cRXP_WARN_en el árbol del Santuario de Remulos|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    .goto 1450/1,-2224.18,7874.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Entrega la misión La prueba del lago
    .accept 272 >> Acepta la misión La prueba del león marino
    .target Tajarri
step
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    .zoneskip Stormwind City
    .zoneskip Darkshore
    .zoneskip Ironforge
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Entrega la misión Philmor's Favor
    .accept 97222 >>Acepta la misión Gatehouse Objetos
step
    .goto 1453/0,568.300,-8862.200
    .use 277198 >> |cRXP_WARN_Usa el|r |T132762:0|t[Cargamento de entrada] |cRXP_WARN_frente a la |cRXP_PICK_Entrada|r arriba|r
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step
    #label Gatehouse
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Entrega la misión Gatehouse Objetos  
step << Druid
    .goto 1453/0,1095.500,-8741.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theridran|r
    .trainer >>Aprende tus hechizos de clase
	.target Theridran
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Viaja a El Cordero Degollad y baja las escaleras
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Viaja a la Torre de los Magos
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaja a la Catedral de Ventormenta
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Entrena los hechizos de tu mascota
    .target Karrina Mekenda
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Ironforge
    .zoneskip Dun Morogh
step
    .zone Ironforge >> Toma el Tranvía a Forjaz
    .zoneskip Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 17-18 Salón de Señores Feudales
#next 18-19 Ruinas de Lordaeron
#displayname 16-17 Hall of Thanes << NightElf

step << Skyborne
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
step << !NightElf
    #completewith OII
    +|cRXP_WARN_Ahora completarás una misión previa para El Salón de Señores Feudales y luego harás la mazmorra|r
step << !NightElf
    #completewith OII
    .zone Dun Morogh >> Viaja a Dun Morogh
step << !NightElf
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    .accept 96392 >> Acepta la misión Vigía de Farsen
    .target Earthseer Farsen
step << !NightElf
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Habla con |cRXP_FRIENDLY_Earthseer Farsen|r para ver su previsión
    >>|cRXP_WARN_Puedes cancelar la Vista lejana cuando se completa el objetivo|r
    .target Earthseer Farsen
step << !NightElf
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Presiona ESC para cancelar la Vista lejana|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Puedes cancelar la Vista lejana cuando se completa el objetivo|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step << !NightElf
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Presiona ESC para cancelar la Vista lejana|r
    .turnin 96392 >> Entrega la misión Vigía de Farsen
    --.accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step << !NightElf
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Mata |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener el |T237385:0|t[|cRXP_LOOT_Mapa de Hierro Negro|r]
    .use 274268 >>|cRXP_WARN_Usa el|r |T237385:0|t[|cRXP_LOOT_Mapa de Hierro Negro|r] |cRXP_WARN_para iniciar la misión|r
    -->>|cRXP_WARN_You can skip killing |cRXP_ENEMY_Dark Iron Spies|r for the other quest because they are low level once you find the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    --.complete 96390,1 -- Dark Iron Spy slain 10/10
    --.disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Acepta la misión Mapa subterráneo
    .mob Dark Iron Spy
step << !NightElf
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96391 >> Entrega la misión Mapa subterráneo
    .accept 96393 >> Acepta la misión Old Ironforge Incursion
    .target Earthseer Farsen
step << !NightElf
    #optional
    .isQuestComplete 96390
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Entrega la misión Nip 'Em in the Compa
    .target Earthseer Farsen

step
    #completewith EnterHoT
    +|cRXP_WARN_Empieza a buscar un grupo para Salón de Señores Feudales|r
step
    #optional
    #label InIronforge
    #completewith EnterHoT
    .zone Ironforge >> Viaja a Forjaz
step
    #requires InIronforge
    #completewith EnterHoT
    .goto 1455/0,-1054.300,-4843.200,10,0
    .goto 1455/0,-1081.900,-4850.100,10,0
    .goto 1455/0,-1082.800,-4886.000,10,0
    .goto 1455/0,-1087.700,-4821.900,10,0
    .goto 1455/0,-1010.300,-4850.900,10 >> Viaja hacia abajo en Old Ironforge a través de la sala de |cRXP_FRIENDLY_King Magni|r
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Afadra Dunwall|r
    .accept 96394 >> Acepta la misión Los muertos sin descanso
    .target Afadra Dunwall
step
    #completewith EnterHoT
    .goto 1455/0,-996.100,-4821.200,10,0
    .goto 1455/0,-972.000,-4803.000,10,0
    .goto 1455/0,-988.900,-4854.400,10 >> |cRXP_WARN_Déjate caer en la rampa de abajo|r
step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thom Filch|r
    .accept 96403 >> Acepta la misión Important Heirlooms
    .target Thom Filch
step
    #label EnterHoT
    .enabledungeon HOT
    .goto 1455/0,-933.200,-4821.900
    .subzone 16919 >> Entra en el Hall of Thanes

step
    #completewith FaldrimAnvilmar
    >>Despoja las |cRXP_PICK_Reliquias de los enanos|r del suelo a lo largo de El Salón de Señores Feudales
    >>|cRXP_WARN_Puedes recoger muchas de estas al final de la mazmorra también|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    #completewith FaldrimAnvilmar
    >>Mata a las |cRXP_ENEMY_Enraged Apariciones|r y a las |cRXP_ENEMY_Almas atormentadas|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ghostly Asistente|r
    .accept 96395 >> Acepta la misión An Ancient Resentimiento
    .target Ghostly Attendant
step
    #label FaldrimAnvilmar
    >>Mata a |cRXP_ENEMY_Faldrim Anvilmar|r
    .complete 96395,1 -- Faldrim Anvilmar slain (1)
    .mob Faldrim Anvilmar
step
    #completewith next
    +|cRXP_WARN_Regresa junto al|r |cRXP_FRIENDLY_Ghostly Asistente|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ghostly Asistente|r
    .turnin 96395 >> Entrega la misión An Ancient Resentimiento
    .target Ghostly Attendant
step
    >>Mata a las |cRXP_ENEMY_Enraged Apariciones|r y a las |cRXP_ENEMY_Almas atormentadas|r
    >>|cRXP_WARN_Completa esto ahora porque quizás no tengas la oportunidad de terminarla después|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    #completewith ToU
    >>Despoja las |cRXP_PICK_Reliquias de los enanos|r del suelo a lo largo de El Salón de Señores Feudales
    >>|cRXP_WARN_Puedes recoger muchos de estos al final de la mazmorra también|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    >>Mata a |cRXP_ENEMY_Durgen Dirgehammer|r. Despójalo para obtener la |cRXP_LOOT_Cabeza de Durgen Martillo de Endecha|r
    .complete 96393,1 -- Durgen Dirgehammer's Head
    .mob Durgen Dirgehammer
step
    #label ToU
    >>Haz clic en el |cRXP_PICK_Tratado del entendimiento|r
    .accept 98423 >> Acepta la misión The Treaty of Understanding
step
    >>Despoja los |cRXP_PICK_Dwarven Heirlooms|r en el suelo a lo largo del Hall of Thanes
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    .zone Ironforge >> |cRXP_WARN_Sal del Salón de Señores Feudales. La forma más rápida es correr en línea recta por el pasillo desde la sala del jefe final|r
    .subzoneskip 16919,1

step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thom Filch|r
    .turnin 96403 >> Entrega la misión Important Heirlooms
    .target Thom Filch
step
    #completewith next
    .goto 1455/0,-1006.600,-4841.600,10,0
    .goto 1455/0,-969.700,-4841.500,10,0
    .goto 1455/0,-964.300,-4807.500,10,0
    .goto 1455/0,-993.500,-4817.600,10,0
    .goto 1455/0,-983.700,-4847.800,10,0
    .goto 1455/0,-1022.000,-4842.100,10,0
    .goto 1455/0,-994.000,-4843.100,10 >> Regresa a |cRXP_FRIENDLY_Afadra Dunwall|r subiendo la rampa
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Afadra Dunwall|r
    .turnin 96394 >> Entrega la misión Los muertos sin descanso
    .target Afadra Dunwall
step
    #completewith next
    .goto 1455/0,-1030.200,-4831.000,10,0
    .goto 1455/0,-1090.900,-4830.400,10,0
    .goto 1455/0,-1079.600,-4884.100,10,0
    .goto 1455/0,-1058.000,-4842.500,10 >> Sube la rampa hacia |cRXP_FRIENDLY_Rey Magni Barbabronce|r
step
    .goto 1455/0,-1022.600,-4865.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rey Magni Barbabronce|r
    .turnin 96393 >> Entrega la misión Old Ironforge Incursion
    .turnin 98423 >> Entrega la misión The Treaty of Understanding
    .target King Magni Bronzebeard

step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eldrun Rompetormentas::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Aprende tus hechizos de clase
step << Priest/Paladin/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toldren Acerhondo|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r << Mage
    .goto 1455/0,-928.48,-4614.620 << Mage
    .goto 1455/0,-912.88,-4625.99 << Priest
    .goto 1455/0,-896.55,-4601.68 << Paladin
    .trainer >> Aprende tus hechizos de clase
    .target Toldren Deepiron << Priest
    .target Brandur Ironhammer << Paladin
    .target Dink << Mage
step << Warlock/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto 1455/0,-1117.60,-4615.14,15,0 << Warlock
    .goto 1455/0,-1111.62,-4599.09 << Warlock
    .goto 1455/0,-1120.72,-4650.120 << Rogue
    .trainer >> Aprende tus hechizos de clase
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
step << Warlock
    .goto 1455/0,-1134.20,-4610.39,15,0
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .vendor >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorio de sacrificio (Rank 1)]
    .target Jubahl Corpseseeker
    .train 20381,1
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regnus Tronagranito|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r << Warrior
    .goto 1455/0,-1266.02,-5006.570 << Hunter
    .goto 1455/0,-1234.65,-5035.67 << Warrior
    .trainer >> Aprende tus hechizos de clase
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 18-19 Ruinas de Lordaeron
#next 19-20 Minas de la Muerte
#displayname 17-18 Ruinas de Lordaeron << NightElf

step
    #completewith EnterRoL
    +|cRXP_WARN_Ahora entrarás a Ruins of Lordaeron|r
    >>|cRXP_WARN_Todas las misiones se aceptan dentro de la mazmorra|r
step
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Si no tienes la ruta de vuelo hacia Los Humedales, omite este paso|r
    .fly Wetlands >> Vuela a Los Humedales
    .target Gryth Thurden
    .zoneskip Ironforge,1

step
    .goto 1426/0,-826.400,-5027.100,30,0
    .goto 1426/0,-721.900,-5078.900,30,0
    .goto 1426/0,-426.500,-5181.000,70,0
    .goto 1426/0,-230.400,-5154.600,80,0
    .goto 1426/0,-65.000,-5115.000,100 >> |cRXP_WARN_Salir de Ironforge. Viaja a Dun Morogh -> ubicación de deathskip de Los Humedales|r
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
    .subzone 207 >>|cRXP_WARN_Sube la montaña, luego baja pasando el patrón dentado hasta que tu zona cambie a Los Humedales|r
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1415/0,254.0285,-4708.3416,-1
    .goto 1437/0,-874.700,-3341.400,-1
    >>|cRXP_WARN_Salta de la montaña hacia el norte o noroeste|r
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r de la Bahía de Baradin
    .target Ángel de la Resurrección
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1437/0,-839.800,-3657.900
    .subzone 150 >> Nada hacia el Puerto de Menethil
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-782.000,-3793.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-581.800,-3722.400
    .zone Hillsbrad Foothills >> Toma el barco hacia Costasur
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Consigue la ruta de vuelo de Costasur
    .target Darla Harris
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1424/0,-136.700,-535.800,125 >> |cRXP_WARN_NOTE: Podrías encontrar |cRXP_ENEMY_Lions|r y |cRXP_ENEMY_Osos|r de nivel superior en el camino a Hillsbrad Fields|r
    >>|cRXP_WARN_Ten cuidado con jugadores de la Horda si estás en un servidor PvP|r
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
    .goto 1458/0,170.700,1804.700,20 >>Viaja a las Ruinas de Lordaeron en Entrañas. Entra en la mazmorra
    >>|cRXP_WARN_Ten cuidado con |cRXP_ENEMY_Lions|r, |cRXP_ENEMY_Osos|r, |cRXP_ENEMY_Arañas|r o |cRXP_ENEMY_Murlocs|r mientras avanzas|r
    >>|cRXP_WARN_En cuanto entres a Entrañas se te activará automáticamente el JcJ (PVP), pudiendo ser atacado por la|r |cRXP_ENEMY_Horda|r
    .link https://www.youtube.com/watch?v=jxmG6_JPFMc >> |cRXP_WARN_Haz clic aquí para ver una guía en video sobre cómo entrar a la mazmorra Ruins of Lordaeon|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Truman|r
    .accept 95250 >> Acepta la misión Abominable Creatures
    .target Captain Truman
step
    #sticky
    #label BaronHead
    >>Mata |cRXP_ENEMY_El barón|r. Despójalo para obtener la |cRXP_LOOT_Cabeza del Barón|r
    .complete 95250,1 -- Head of the Baron (1)
    .mob The Baron
step
    >>Despoja todos los enemigos para obtener la |T133328:0|t[|cRXP_LOOT_Insignia ensangrentada|r]
    .use 268535 >> |cRXP_WARN_Usa la|r |T133328:0|t[|cRXP_LOOT_Insignia ensangrentada|r] |cRXP_WARN_para iniciar la misión|r
    .collect 268535,1,95195,1 -- Bloodied Insignia (1)  
    .accept 95195 >> Acepta la misión Ensangrentado Insignia
step
    #sticky
    #label BloodiedInsignia
    >>Despoja todos los enemigos para obtener sus |cRXP_LOOT_Insignias ensangrentadas|r
    .complete 95195,1 -- Bloodied Insignia (10)
step
    #sticky
    #label CrestofLordaeron
    >>Despoja el |T4504543:0|t[|cRXP_LOOT_Blasón de Lordaeron|r] del suelo o colgado en una pared
    >>|cRXP_WARN_Mantente atento a esto. Puede aparecer en muchas ubicaciones diferentes y puede ser difícil de ver|r
    .use 268579 >> |cRXP_WARN_Usa el|r |T4504543:0|t[|cRXP_LOOT_Blasón de Lordaeron|r] |cRXP_WARN_para iniciar la misión|r
    .collect 268579,1,95189,1 -- Crest of Lordaeron (1)
    .accept 95189 >> Acepta la misión Crest of Lordaeron
step
    #sticky
    #label CrumpledPaper
    >>Haz clic en el |cRXP_PICK_Crumpled Papel|r en el suelo cerca de |cRXP_ENEMY_Rath'mael|r
    >>|cRXP_WARN_Puedes hacer esto después de haberlo matado|r
    .accept 92415 >> Acepta la misión Recuerdo That I Love You
step
    #requires BaronHead
step
    #requires BloodiedInsignia
step
    #requires CrestofLordaeron
step
    #requires CrumpledPaper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Truman|r
    >>|cRXP_FRIENDLY_Capitán Truman|r |cRXP_WARN_está de vuelta al inicio de la mazmorra|r
    .turnin 95250 >> Entrega la misión Abominable Creatures
    .target Captain Truman
step
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    .zoneskip Stormwind City
    .bindlocation 1519,1 --HS in SW
step
    #optional
    .hs >> Usa tu Piedra de hogar para ir a Forjaz
    .zoneskip Ironforge
    .zoneskip Stormwind City
    .bindlocation 1537,1 --HS in IF
step 
    #optional
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Toma el tranvía a Ventormenta
    .zoneskip Ironforge,1
step
    #optional
    #completewith next
    .zone Stormwind City >>Dirígete a Ventormenta
step
    .isOnQuest 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora de huérfanos Ruiseñor|r
    .turnin 92415 >> Entrega la misión Recuerdo That I Love You
    .accept 95161 >> Acepta la misión Recuerdo That I Love You
    .target Orphan Matron Nightingale
step
    #optional
    .isQuestTurnedIn 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora de huérfanos Ruiseñor|r
    .accept 95161 >> Acepta la misión Recuerdo That I Love You
    .target Orphan Matron Nightingale
step
    .goto 1453/0,634.700,-8390.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .accept 2040 >> Acepta la misión Asalto subterráneo
    .target Shoni the Shilent
step
    .goto 1453/0,501.200,-8468.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .target Wilder Thistlenettle
step
    #completewith next
    .goto 1453/0,437.600,-8524.5000,20,0
    .goto 1453/0,408.100,-8478.500,15,0
    .goto 1453/0,502.900,-8358.800,15 >> Viaja a la Biblioteca de Ventormenta
step
    .isOnQuest 95189
    .goto 1453/0,531.000,-8322.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Dena Kennedy|r
    >>|cRXP_WARN_Ella camina un poco en la Galería Real|r
    .turnin 95189 >> Entrega la misión Crest of Lordaeron
    .target Lady Dena Kennedy
step
    .isOnQuest 95195
    .goto 1453/0,521.000,-8954.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 95195 >> Entrega la misión Ensangrentado Insignia
    .target General Marcus Jonathan
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .xp <20,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
    .xp <20,1
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r dentro
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
    .xp <20,1
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theridran|r
    .trainer >> Aprende tus hechizos de clase
	.target Theridran
    .xp <20,1
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
    .xp <20,1
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
    .xp <20,1
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .xp <20,1
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
    .xp <20,1
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 19-20 Minas de la Muerte
#displayname 18-20 Minas de la Muerte/Redridge << NightElf
#next 20-21 Costa Oscura/Vallefresno

step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en la ciudad de Ventormenta
    .target Innkeeper Allison
    .bindlocation 16509
step
    #completewith TDB1
    #label FlyWestfall
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    >>|cRXP_WARN_Si no tienes la ruta de vuelo de Páramos de Poniente, omite este paso|r << !Human !Gnome !Dwarf
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
step
    #optional
    #requires FlyWestfall
    #completewith TDB1
    .zone Westfall >> Viaja a Páramos de Poniente
step
    #label TDB1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Acepta la misión La hermandad de los Defias
step
    #completewith RRDB
    .goto 1453/0,490.03,-8835.82,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r u |cRXP_FRIENDLY_Thor|r
    >>|cRXP_WARN_Si no tienes ya la ruta de vuelo hacia Montañas Crestagrana, omite este paso|r << !Human !Gnome !Dwarf
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
    .zoneskip Elwynn Forest
step
    .isQuestAvailable 132
    .goto 1433/0,-1906.400,-9606.800
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .goto 1433/0,-2268.32,-9279.12
    .accept 125 >> Acepta la misión Las herramientas perdidas
    .target Foreman Oslow
step
    #label RRDB
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r en la planta de arriba
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .accept 132 >> Acepta la misión La hermandad de los Defias
	.target Wiley the Black
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto 1433/0,-2207.10,-9351.52
    .accept 3741 >> Acepta la misión El collar de Hilary
step
    >>|cRXP_WARN_Salta al Lago|r
    >>Abre el |cRXP_PICK_Barro centelleante|r. Despójalo para obtener el |cRXP_LOOT_Collar de Hilary|r
    >>|cRXP_WARN_Tiene múltiples ubicaciones de aparición en el Lago|r
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
    >>Abre el |cRXP_PICK_Cofre sumergido|r. Despójalo para obtener la |cRXP_LOOT_Caja de herramientas de Olento|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .goto 1433/0,-2268.32,-9279.12
    .turnin 125 >> Entrega la misión Las herramientas perdidas
    .target Foreman Oslow
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Entrega la misión El collar de Hilary
step
    #completewith next
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 132 >> Entrega la misión La hermandad de los Defias
    .accept 135 >> Acepta la misión La hermandad de los Defias
step
    #completewith SWDB
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step
    #optional
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step
    #label SWDB
    .goto 1453/0,362.28,-8815.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .turnin 135 >> Entrega la misión La hermandad de los Defias
    .accept 141 >> Acepta la misión La hermandad de los Defias
    .target Master Mathias Shaw
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
    .xp <20,1
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente en breve:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T132794:0|t[Frasco de aceite]
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step
    #completewith EnterDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .goto 1453/0,490.03,-8835.82
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
step
    .goto 1436/0,1045.29,-10508.78
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 141 >> Entrega la misión La hermandad de los Defias
    .accept 142 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step << Druid
    .goto Westfall,52.8,53.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Heather|r
    .target Innkeeper Heather
    .home >> Establece tu Piedra de hogar en Páramos de Poniente
step
    #optional
    #completewith next
    .goto 1436/0,1459.17,-11024.47,55 >> Viaja a Arroyo de la Luna
step
    .goto 1436/0,1459.17,-11024.47
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mata al |cRXP_ENEMY_Mensajero Defias|r. Despójalo para obtener |cRXP_LOOT_Un mensaje misterioso|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Mensajero Defias|r aparece en Arroyo de la Luna. Camina por el camino al norte de Arroyo de la Luna, hacia la Mina de la Costa del Oro y la Mina de Jango. Si no lo ves por el camino, espéralo a que aparezca en Arroyo de la Luna|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 142 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
    .goto 1436/0,1067.87,-10508.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Traidor de los Defias|r
    >>|cRXP_WARN_Es posible que debas esperar a que |cRXP_FRIENDLY_El Traidor de los Defias|r aparezca si no está ahí|r
    .accept 155 >> Acepta la misión La hermandad de los Defias
    .target The Defias Traitor
step
    .goto 1436/0,1527.07,-11073.23
    >>Escolta a |cRXP_FRIENDLY_El Traidor de los Defias|r a las Minas de la Muerte
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 155 >> Entrega la misión La hermandad de los Defias
    .accept 166 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
    .goto 1436/0,1033.22,-10504.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .accept 214 >> Acepta la misión Pañuelos rojos de seda
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
    >>|cRXP_WARN_Grindea a los |cRXP_ENEMY_Gnolls|r al sur de Colina Centinela mientras reúnes un grupo para Minas de la Muerte|r
    .subzone 20 >>Una vez que tu grupo esté reunido, viaja a Arroyo de la Luna
step
    .goto 1436/0,1527.42,-11072.77
    .subzone 1581 >> Entra a la Ladronera de los Defias con tu grupo
step
    #completewith EnterDM
    >>Mata a los |cRXP_ENEMY_Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    >>|cRXP_WARN_También puedes completar esto dentro de Minas de la Muerte|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_NOTA: Esta misión NO otorga experiencia extra como otras misiones de mazmorra, y lleva bastante más tiempo completarla. Considera omitir esta misión si tu grupo está de acuerdo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata al |cRXP_ENEMY_Supervisor Cardortiga|r. Despójalo para obtener su |cRXP_LOOT_Distintivo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_NOTA: Esta misión NO otorga XP adicional similar a otras misiones de mazmorra, y tarda significativamente más tiempo en completarse. Considera omitir esta misión si tu grupo está de acuerdo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
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
    .subzone 1581,2 >> Entra a la Mazmorra Las Minas de la Muerte
step
    #completewith DMend
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    .complete 214,1 -- Red Silk Bandana (10)
step
    >>Mata a |cRXP_ENEMY_Sneed|r. Despójalo para obtener la |cRXP_LOOT_Dentrituradora goblin|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
    #label DMend
    >>Mata a |cRXP_ENEMY_Edwin VanCleef|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r y |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r]
    >>|cRXP_WARN_Usa |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r] para iniciar la misión|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Acepta la misión La carta sin enviar
    .use 2874 -- An Unsent Letter
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Viaja al Faro de Poniente
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .accept 103 >> Acepta la misión Guardián de la Llama
    .turnin 103 >> Entrega la misión Guardián de la Llama
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .target Captain Grayson
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mata a |cRXP_ENEMY_Viejo Ojosombrío|r. Despójalo para obtener su |cRXP_LOOT_Escama|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .turnin 104 >> Entrega la misión La amenaza costera
    .target Captain Grayson
    .isQuestComplete 104
step << Druid
    .goto 1436/0,1707.2116,-10583.0227
    >>Haz clic en los |cRXP_PICK_Restos quemados|r en el suelo
    .accept 79008 >> Acepta la misión ... Y la nota que encontraste
step << Druid
    #completewith next
    .goto Westfall,17.928,33.099,50 >> Nada hacia mar adentro
step << Druid
    .goto Westfall,17.928,33.099
    >>Abre el |cRXP_PICK_Arcón extraño|r. Despójalo para obtener el |cRXP_LOOT_Medio colgante de Resistencia acuática|r
    .collect 15882,1,272,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    #completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step << Druid
    .goto 1450/1,-2212.25,7854.28
    .use 15883 >>|cRXP_WARN_Usa el|r |T133443:0|t[Medio colgante de Agilidad acuática] |cRXP_WARN_para combinarlo con el|r |T133442:0|t[Medio colgante de Resistencia acuática] |cRXP_WARN_en el Santuario de Remulos|r
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    >>|cRXP_WARN_Esto te ahorrará tiempo al no tener que volver corriendo|r
step << Druid
    .goto 1450/1,-2678.74,8020.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r
    .turnin 272 >> Entrega la misión La prueba del león marino
    .accept 5061 >> Acepta la misión Forma acuática
    .target Dendrite Starblaze
step << Druid
    .hs >> Usa la Piedra de Hoguera para ir a Colina del Centinela
step << !Druid
    .goto 1436/0,1707.2116,-10583.0227
    >>Haz clic en los |cRXP_PICK_Restos quemados|r en el suelo
    .accept 79008 >> Acepta la misión ... Y la nota que encontraste
step
    #completewith RSB
    .goto 1436/0,1045.12,-10508.80,100 >> Viaja a Colina del Centinela
step
    .isQuestComplete 166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 166 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
step
    #label RSB
    .isQuestComplete 214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .turnin 214 >> Entrega la misión Pañuelos rojos de seda
    .goto 1436/0,1033.22,-10504.83
    .target Scout Riell

step
   .maxlevel 19,Level20Check

step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Thor
step
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
step
    .goto 1433/0,-2237.93,-9443.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .accept 246 >> Acepta la misión Evaluar la amenaza
    .accept 98407 >>Acepta la misión Muestra de fuerza
    .target Deputy Feldon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .goto 1433/0,-2298.06,-9284.04
    .accept 20 >> Acepta la misión La amenaza de los Roca Negra
    .accept 98387 >>Acepta la misión Blackrock Blockade
    .target Marshal Marris
step
    .group
    .goto 1433/0,-2208.600,-9243.500
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 95999 >>Acepta la misión SE BUSCA: Incinerador Gar'im
step
    #loop
    .goto 1433/0,-1913.800,-9490.601,50,0
    .goto 1433/0,-2211.01,-9773.870,45,0
    .goto 1433/0,-2276.79,-9759.11,45,0
    .goto 1433/0,-2508.20,-9620.68,45,0
    .goto 1433/0,-2246.61,-9764.90,45,0
	>>Mata a los |cRXP_ENEMY_Bastardos de Crestagrana|r y a los |cRXP_ENEMY_Furtivos de Crestagrana|r
    >>Mata a los |cRXP_ENEMY_Redridge Thrashers|r. Despójalos para obtener sus |cRXP_LOOT_Spiked Collars|r
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
    >>Mata a |cRXP_ENEMY_Incinerador Gar'im|r dentro de la cueva. Despójalo para obtener el |cRXP_LOOT_Broken Bastón of Incinerador Gar'im|r
    >>|cRXP_WARN_Omite este paso si no puedes encontrar un grupo para él|r
    .complete 95999,1 -- Broken Staff of Incinerator Gar'im (1)
    .mob Incinerator Gar'im
step
    #completewith next
    >>Despoja los |cRXP_PICK_Grain Sacks|r y los |cRXP_PICK_Meat Haunches|r del suelo para obtener los |cRXP_LOOT_Suministros robados|r
    >>Despoja los |cRXP_PICK_Weapon Racks|r y las |cRXP_PICK_Stolen Armas|r del suelo
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #label orcs
    #loop
    >>Mata a los |cRXP_ENEMY_Brutos Roca Negra|r y a los |cRXP_ENEMY_Avanzados Roca Negras|r. Despójalos para obtener sus |cRXP_LOOT_Hachas|r
	>>|cRXP_WARN_Ten cuidado, los |cRXP_ENEMY_Avanzados Roca Negra|r lanzarán |T132149:0|t[Red] sobre ti|r
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
    >>Despoja los |cRXP_PICK_Grain Sacks|r y los |cRXP_PICK_Meat Haunches|r del suelo para obtener los |cRXP_LOOT_Suministros robados|r
    >>Despoja los |cRXP_PICK_Weapon Racks|r y las |cRXP_PICK_Stolen Armas|r del suelo
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #requires IncineratorGarim
step << Shaman -- most likely not on this quest yet
    #optional
    .isOnQuest 94499
    .goto 1433/0,-3121.100,-9485.000
    .use 265747 >> |cRXP_WARN_Usa la|r |T132829:0|t[Unfilled Rojo Bota de agua] |cRXP_WARN_en Stonewatch Falls|r
    .complete 94499,1 --|1/1 Full Red Waterskin
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.93,-9443.60
    .turnin 246 >> Entrega la misión Evaluar la amenaza
    .turnin 98407 >>Entrega la misión Muestra de fuerza
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
	.target Marshal Marris
    .goto 1433/0,-2298.06,-9284.04
    .turnin 20 >> Entrega la misión La amenaza de los Roca Negra
    .turnin 98387 >>Entrega la misión Blackrock Blockade
step
    .isQuestComplete 95999
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >>Entrega la misión WANTED: Incinerador Gar'im
step
    #optional
    .xp 20 >> Mata enemigos hasta el nivel 20

step
    #label Level20Check

step << !Druid !Rogue
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #optional
    #completewith DarkshoreBoat
    .goto 1433/0,-2234.900,-9435.300,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r o |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << Rogue
    .isNotOnQuest 2360
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .train 1785,1
    .xp <20,1
    .xp >22,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
step << Rogue
    #completewith RoguePoison
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .goto 1453/0,490.03,-8835.82
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto 1431/0,404.03,-11014.47,60,0
    .goto 1431/0,432.11,-10878.75,50,0
    .goto 1431/0,551.72,-10688.13
    >>Mata |cRXP_ENEMY_Telarácnidas venenosa pigmeas|r y |cRXP_ENEMY_Telarácnidas venenosas|r. Despójalas para obtener una |cRXP_LOOT_Glándula de veneno pequeña|r y sus |cRXP_LOOT_Patas pegajosas de araña|r
    >>|cRXP_WARN_Necesitas una|cRXP_LOOT_ Glándula de veneno pequeña|r para hacer un|r |T134437:0|t[Contraveneno] |cRXP_WARN_más tarde para quitar el perjuicio|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Guarda las |cRXP_LOOT_Patas pegajosas de araña|r para más tarde|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladín|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_o|r |T626006:0|t|cFF0070DDChamán|r |cRXP_WARN_amigo, puedes omitir este paso y pedirle que lo quite por ti|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTA ATENCIÓN A LA SIGUIENTE SECCIÓN==|r
    >>|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
    >>|cRXP_WARN_Además, se recomienda activar las placas de nombre enemigas (tecla predeterminada: V) ya que te permite ver a los enemigos detrás de algunas esquinas dentro de la torre|r
step << Rogue
    .goto 1436/0,619.17,-11035.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .turnin 2360 >> Entrega la misión Mathias y los Defias
    .accept 2359 >> Acepta la misión La torre de Klaven
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
    >>|T133644:0|t[Robar] al |cRXP_ENEMY_Zángano Defias deforme|r. Despójalo para obtener la |cRXP_LOOT_Llave de la torre Defias|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_El |cRXP_ENEMY_Zángano Defias deforme|r aparece en la entrada de la torre, luego patrulla alrededor del exterior de ella|r
    >>|cRXP_WARN_Ten cuidado ya que él hace MUCHO daño. Si tu|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe, usa rápidamente|r |T132307:0|t[Sprint] |cRXP_WARN_y huye|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_para esta misión si no tienes una|r |T135641:0|t[Daga] |cRXP_WARN_equipada|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Viaja hasta el 2.º piso de la torre. Mientras estés en|r |T132320:0|t[Sigilo] |cRXP_WARN_y los |cRXP_ENEMY_Avizores de torre Defias|r no estén cerca de ti, Salta en la silla, luego en la lámpara, luego en el estante encima del punto de la ruta|r
    >>|cRXP_WARN_Manualmente desactiva el|r |T132320:0|t[Sigilo]|cRXP_WARN_, luego presiona tu tecla "Interactuar con el objetivo" para abrir el |cRXP_PICK_Cofre de Bosque del Ocaso|r. Despójalo para obtener el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_NOTA: Tu|r |T132320:0|t[Sigilo] |cRXP_WARN_dejará de funcionar temporalmente después de despojar el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_Prepárate para correr si no matas los |cRXP_ENEMY_Avizores de torre Defias|r en el 2.º piso. Lo más probable es que te generen amenaza permanente (aunque no te atacarán) cuando estés encima de la estantería, ya que es un punto de evasión|r
    >>|cRXP_WARN_Si tienes una|r |T135641:0|t[Daga] |cRXP_WARN_en tu inventario o equipada, puedes lanzar|r |T132282:0|t[Emboscada] |cRXP_WARN_en los |cRXP_ENEMY_Guardias de torre Defias|r y |cRXP_ENEMY_Avizores de torre Defias|r de dentro para matarlos instantáneamente. Prepárate para correr después de matar al primer |cRXP_ENEMY_Avizor de torre Defias|r y recuerda que puedes ser golpeado desde arriba. Esto es más lento, pero MUCHO más seguro|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Zángano Defias deforme|r y los |cRXP_ENEMY_Zánganos Defias|r pueden estar en la entrada de la torre si tienes que salir corriendo de ella|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Lanza |T136225:0|t[Forma de piedra] para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .aura -9991
step << Rogue
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
    .zoneskip Stormwind City
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Viaja hacia |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBALa hermandad de los Defias|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_o|r |T626006:0|t|cFF0070DDChamán|r |cRXP_WARN_amigo, pídele que elimine el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en tu lugar|r
    .skill firstaid,80 >> |cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_al 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladín|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_o|r |T626006:0|t|cFF0070DDChamán|r |cRXP_WARN_amigo, pídele que elimine el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por ti en su lugar|r
    .train 7934 >> |cRXP_WARN_Aprende|r |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .train 1785,1
    .xp <20,1
    .xp >22,1
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
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
    .goto 1453/0,323.43,-8817.83,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto 1453/0,362.28,-8815.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    >>|cRXP_WARN_Recuerda volver a equipar tu arma principal si cambiaste a una|r |T135641:0|t[Daga] |cRXP_WARN_antes|r << Rogue
    .turnin 2359 >> Entrega la misión La torre de Klaven
    .target Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step
    .isQuestComplete 167
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .turnin 167 >> Entrega la misión Oh, hermano...
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step
    .isQuestComplete 168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .turnin 168 >> Entrega la misión Recolección de recuerdos
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Entrena los hechizos de tu mascota
    .target Karrina Mekenda
step
    .isQuestComplete 2040
    .goto 1453/0,634.800,-8390.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .turnin 2040 >> Entrega la misión Asalto subterráneo
    .target Shoni the Shilent
step << Shaman
    #completewith ShamTrain
    .goto 1453/0,558.96,-8382.54,25,0
    .goto 1453/0,520.64,-8351.460
    .zone Ironforge >> Entra en el Tranvía Subterráneo. Toma el tranvía a Forjaz
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eldrun Rompetormentas::258098|r
    .target Eldrun Stormbreaker::258098
    .accept 94494 >>Acepta la misión La llamada del agua
    .trainer >> Aprende tus hechizos de clase
    .train 2645,1 -- ghost wolf
step << Shaman
    #label ShamTrain
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eldrun Rompetormentas::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Aprende tus hechizos de clase
    .train 408342,1 -- fire nova r2
    .xp <22,1
step << Shaman
    .goto 1455/0,-1330.28,-4843.6,5,0
    .zone Stormwind City >> Entra en el Tranvía Subterráneo. Toma el tranvía a Ventormenta
    .zoneskip Darkshore
    .zoneskip Ashenvale
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >>Entrega la misión La carta sin enviar
    .accept 389 >>Acepta la misión Bazil Thredd
    .target Baros Alexston
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1716 >> Acepta la misión Devoradora de almas
    .target Gakin the Darkbinder
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step
    .goto 1453/0,1093.3,-8779.020
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .target Argos Nightwhisper
step << !Druid
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Costa Oscura si es necesario|r
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !Druid
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Toma el barco hacia Costa Oscura
step
    #optional
    .abandon 95999 >>Abandona la misión WANTED: Incinerador Gar'im
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 20-21 Costa Oscura/Vallefresno
#next RestedXP Forever Guía de Mazmorras (A)\21-23 Vallefresno/Sierra Espolón

step << Druid
    #completewith catspirit1
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Vuela a Darnassus
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
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid
    #label catspirit1
    .goto 1457/1,2564.600,10179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso::4217|r
    .target Mathrengyl Bearwalker::4217
    .accept 98393 >>Acepta la misión El Gran espíritu felino
step << Druid
    #completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.900,8020.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar::11802|r
    .target Dendrite Starblaze::11802
    .turnin 98393 >>Entrega la misión El Gran espíritu felino
    .accept 98341 >>Acepta la misión El gran espíritu felino del viento << Skyborne
    .accept 98394 >>Acepta la misión El Gran espíritu felino << !Skyborne
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran espíritu felino|r
    .turnin 98394 >>Entrega la misión El Gran espíritu felino
    .accept 98396 >>Acepta la misión El Gran espíritu felino
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2352.700,7375.600,10,0
    .goto 1450/1,-2394.300,7361.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Avatar de Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98341 >>Entrega la misión El gran espíritu felino del viento
    .accept 98404 >>Acepta la misión El gran espíritu felino del viento
step << Druid
    #completewith next
    .goto 1450/1,-3046.700,7534.400
    --aura 1309054?
    .subzone 2363 >> Dirígete al Túmulo de Tempestira
step << Druid
    >>Ve al fondo de la cueva, cruza el puente, busca una estatua de gato dentro de un hueco y haz clic en el pequeño orbe junto a la estatua
    >>Despoja la |cRXP_LOOT_Reliquia de la garra|r
    .goto 1450/1,-3117.400,7455.300
    .complete 98404,2 << Skyborne --|1/1 Relic of the Claw
    .complete 98396,2 << !Skyborne --|1/1 Relic of the Claw
step << Druid
    >>Haz clic en el pequeño orbe junto a la estatua de gato
    >>Despoja la |cRXP_LOOT_Reliquia de la sombra silenciosa|r
    .goto 1450/1,-3099.200,7485.700
    .complete 98404,3  << Skyborne --|1/1 Relic of the Silent Shadow
    .complete 98396,3  << !Skyborne --|1/1 Relic of the Silent Shadow
step << Druid
    >>Haz clic en el pequeño orbe junto a la estatua de gato
    >>Despoja la |cRXP_LOOT_Reliquia del colmillo|r
    .goto 1450/1,-3054.100,7476.800
    .complete 98404,1  << Skyborne --|1/1 Relic of the Fang
    .complete 98396,1  << !Skyborne --|1/1 Relic of the Fang
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gran espíritu felino|r
    .turnin 98396 >>Entrega la misión El Gran espíritu felino
    .accept 98731 >>Acepta la misión Bendiciones del Gran espíritu felino
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2395.400,7361.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Avatar de Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98404 >>Entrega la misión El gran espíritu felino del viento
    .accept 98738 >>Acepta la misión Bendiciones del gran espíritu felino del viento
step << Druid
    .goto 1450/1,-2678.200,8021.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTeletranspórtate a Claro de la Luna y habla con |cRXP_FRIENDLY_Dendrita Rafagaestelar::11802|r
    .target Dendrite Starblaze::11802
    .usespell 18960
    .turnin 98738 >>Entrega la misión Bendiciones del gran espíritu felino del viento << Skyborne
    .accept 98397 >>Acepta la misión A Darnassus --<< Alliance
    --.accept 98362 >>Accept To Thunder Bluff << Horde
step << Druid
    #completewith catspirit2
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Vuela a Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Vuela a Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #label catspirit2
    .goto 1457/1,2564.400,10179.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso::4217|r
    .target Mathrengyl Bearwalker::4217
    .turnin 98397 >>Entrega la misión A Darnassus
step << Druid
    .goto 1457/1,2626.51,9946.11
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darkshore
step << Druid
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
    .zoneskip Darkshore
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
step
    #optional
    .isOnQuest 4763
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Usa el|r |T133748:0|t[Cuenco de purificación vacío] |cRXP_WARN_en el pozo lunar de Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
step
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .accept 4763 >> Acepta la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    .isOnQuest 3765
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 3765 >> Entrega la misión Lejana corrupción
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .accept 1275 >> Acepta la misión Investigaciones acerca de la corrupción
    .target Gershala Nightwhisper
step
    .isQuestTurnedIn 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Elissa Brisa Estelar|r arriba
    .accept 965 >> Acepta la misión La Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .isOnQuest 4763
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Usa el|r |T133748:0|t[Cuenco de purificación vacío] |cRXP_WARN_en el pozo lunar de Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
step
    .isOnQuest 4763
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-376.56,6807.62
    >>Abre las |cRXP_PICK_Provisiones de grano de los Bosque Negro|r. Despójalas para obtener |T134059:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .isOnQuest 2139
    .goto 1439/1,-503.63,6732.95,45,0
    .goto 1439/1,-430.27,6662.65
    >>Mata a la |cRXP_ENEMY_Madre del cubil|r
    >>|cRXP_WARN_Ten cuidado, ya que los |cRXP_ENEMY_Cachorros cardo|r pueden lanzar|r |T132152:0|t[Devastar]|cRXP_WARN_, un ataque cuerpo a cuerpo instantáneo que te aturde durante 2 segundos|r
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
    >>Abre las |cRXP_PICK_Provisiones de nueces de los Bosque Negro|r. Despójalo para obtener la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
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
    >>Abre las |cRXP_PICK_Provisiones de fruta de los Bosque Negro|r. Despójalas para obtener la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
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
    .cast 16072 >> |cRXP_WARN_Usa el|r |T134712:0|t[Cuenco de purificación lleno] |cRXP_WARN_en la |cRXP_PICK_Fogata|r para invocar a|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corrupción de los Bosque Negro RP
    .use 12347
step
    .isOnQuest 4763
    #requires Blackwood3
    #label Xabraxxis
    .goto 1439/1,-489.22,6875.30
    >>Mata a |cRXP_ENEMY_Xabraxxis|r. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que cae en el suelo. Despójala para obtener el |cRXP_LOOT_Dije de corrupción|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Despoja los |cRXP_LOOT_Boletos rudos|r y una |cRXP_LOOT_Oronja verde|r del suelo
    >>|cRXP_WARN_Quédate en la sección superior. Si no hay una |cRXP_LOOT_Oronja verde|r al final del lado superior, baja y consigue uno de la sala del sur abajo|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jinetes de olas Escama Tormentosa|r lanzan|r |T135836:0|t[Aspersión] |cRXP_WARN_(Ataque a distancia instantáneo: Causa daño a los enemigos cercanos y los lanza hacia atrás) - asegúrate de no estar en una posición donde te puedan tirar del nivel superior de la cueva|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 965 >> Entrega la misión La Torre de Althalaxx
    .accept 966 >> Acepta la misión La Torre de Althalaxx
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
    >>Mata |cRXP_ENEMY_Fanáticas de la Facción Oscura|r. Despójalas para obtener sus |cRXP_LOOT_Papiros desgastados|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 966 >> Entrega la misión La Torre de Althalaxx
    .accept 967 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Acepta la misión La búsqueda de Gyromast
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439/1,-732.88,7596.24,0
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad|cRXP_ENEMY_ |T132152:0|t[Vapulear] |rde los|r Reptadores de arrecife enfurecidos|cRXP_WARN_. Sus golpes cuerpo a cuerpo pueden infligirte 200 p. de daño al instante|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,-656.25,7801.04
    >>Mata |cRXP_ENEMY_Oráculos Brumagris|r y |cRXP_ENEMY_Cazamareas Brumagris|r. Despójalos para obtener la |cRXP_LOOT_Mitad de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    >>Ten cuidado con |cRXP_ENEMY_Cazamareas Brumagris|r pueden lanzar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] mientras luchan cuerpo a cuerpo dejando un daño en el tiempo que inflige 13 p. de daño cada 3 s durante 30 s
    >>|cRXP_WARN_Puedes cortar la línea de visión (LoS) de las|cRXP_ENEMY_  |T136048:0|t[Descargas de relámpagos] |rde los|r Oráculos Niebla Gris|cRXP_WARN_ usando el barco hundido para evitar recibir su daño|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    .goto 1439/1,-699.48,7591.87,45,0
    .goto 1439/1,-579.61,7505.41,45,0
    .goto 1439/1,-421.10,7372.67,45,0
    .goto 1439/1,-767.60,7805.84
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad|cRXP_ENEMY_ |T132152:0|t[Vapulear] |rde los|r Reptadores de arrecife enfurecidos|cRXP_WARN_. Sus golpes cuerpo a cuerpo pueden infligirte 200 p. de daño al instante|r
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
    >>Mata |cRXP_ENEMY_Zancudos del bosque gigantes|r. Despójalos para obtener la |cRXP_LOOT_Parte superior de la llave de Gelkak|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step << Warrior/Paladin/Rogue/Shaman
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Empieza a buscar grupo para La venganza de Gyromast/|r|cRXP_ENEMY_El Trillomajareitor 4100|r << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Entrega la misión La búsqueda de Gyromast
    .accept 2078 >> Acepta la misión La venganza de Gyromast
    .target Gelkak Gyromast
    .solo
step
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Empieza a buscar grupo para La venganza de Gyromast/|r|cRXP_ENEMY_El Trillomajareitor 4100|r << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Entrega la misión La búsqueda de Gyromast
    .accept 2078 >> Acepta la misión La venganza de Gyromast
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >> Habla con |cRXP_FRIENDLY_El Trillomajareitor 4100|r para empezar la escolta
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_Esta misión es MUY difícil|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
step
    .goto 1439,56.654,13.484
    #optional
    >>Escolta al |cRXP_FRIENDLY_El Trillomajareitor 4100|r hasta |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Mata a |cRXP_ENEMY_El Trillomajareitor 4100|r cuando se vuelva hostil
    >>|cRXP_WARN_Esta misión es MUY difícil|r
    *Solo usa ataques a distancia mientras huyes de él, evita estar en rango de cuerpo a cuerpo << Druid
    >>|cRXP_WARN_Intenta hacer esta misión si puedes ya que te ahorrarás tiempo después porque ofrece|r |T134797:0|t[Elixires de Respiración acuática] |cRXP_WARN_para misiones submarinas después|r << !Druid !Warlock !Shaman
    >>|cRXP_WARN_Usa|r |T136100:0|t[Raíces enredadoras] |cRXP_WARN_en él cuando se vuelva hostil, luego crea distancia y "kitea" usando hechizos de lanzamiento instantáneo|r << Druid
    >>|cRXP_WARN_Si no puedes matar a |cRXP_ENEMY_El Trillomajareitor 4100|r, omite este paso|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Haz clic aquí para una guía en video|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
--XX DRUID: Test if you can root
step
    #optional << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Entrega la misión La venganza de Gyromast
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    .isQuestTurnedIn 4681
    .goto 1439,53.113,18.099
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4727 >> Acepta la misión Tortuga marina varada
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Nada hacia mar adentro|r
    >>Abre el |cRXP_PICK_Arcón extraño|r. Despójalo para obtener el |cRXP_LOOT_Medio colgante de Agilidad acuática|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    #sticky
    #optional
    .destroy 7442 >> Borra la |T134459:0|t[Llave de Gyromast] de tu inventario, ya que ya no la necesitas
step
    #completewith ReturnAuberdine
    .subzone 442 >> Regresa a Auberdine
step
    .isQuestComplete 2139
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2139 >> Entrega la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4763 >> Entrega la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .turnin 947 >> Entrega la misión La Cueva de las Setas
    .accept 948 >> Acepta la misión Onus
    .target Barithras Moonshade
step
    .goto 1439/1,504.41,6402.39
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step
    #label ReturnAuberdine
    .isOnQuest 4727
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,35.968,70.807
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4728 >> Acepta la misión Criatura marina varada
    .isQuestTurnedIn 4681
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto 1439/1,541.75,4991.52
    >>|cRXP_WARN_Asegúrate de verificar si |cRXP_ENEMY_Viscoso|r ya está en el agua (si alguien ha fallado previamente el encuentro o dejó al |cRXP_ENEMY_Cazador Brumagris|r en la oleada con la que aparece vivo)|r
    >>Mata a los |cRXP_ENEMY_Guerreros Brumagris|r y a los |cRXP_ENEMY_Cazadores Brumagris|r en el campamento
    >>|cRXP_WARN_Muévete a la Fogata en el centro del campamento para iniciar el encuentro con |cRXP_ENEMY_Viscoso|r:|r
    >>|cRXP_WARN_3 oleadas aparecerán del agua, cada una después de matar la oleada anterior: Oleada 1 tiene 3 nivel 12-13 |cRXP_ENEMY_Correcostas Brumagris|r, Oleada 2 tiene 2 nivel 15-16 |cRXP_ENEMY_Guerreros Brumagris|r, y Oleada 3 tiene un nivel 19 |cRXP_ENEMY_Viscoso|r y un nivel 16-17 |cRXP_ENEMY_Cazador Brumagris|r. Puedes moverte lejos de la Fogata para evitar atraer la siguiente oleada|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 948 >> Entrega la misión Onus
    .accept 944 >> Acepta la misión La Espada del Maestro
    .target Onu
step
    #label MasterG
    .goto 1439/1,417.30,4575.82,100 >> Viaja a La Espada del Maestro
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith FunandGames
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto 1439/1,390.700,4542.700
    >>Descubre La Espada del Maestro
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    .cast 5809 >> |cRXP_WARN_Usa la|r |T134715:0|t[Ampolla de adivinación] |cRXP_WARN_y colócala en el suelo|r
    .use 5251
step
    .goto 1439/1,417.30,4575.82
    >>|cRXP_WARN_Haz clic en el |cRXP_PICK_Cuenco de visión|r del suelo|r
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
    .use 5251
step
    #label FunandGames
    .goto 1439,38.537,86.050
    >>Haz clic en el |cRXP_PICK_Libro del Crepúsculo|r en el pedestal del norte
    .turnin 949 >> Entrega la misión El campamento del Martillo Crepuscular
    .accept 950 >> Acepta la misión Regresa junto a Onus
    .accept 98042 >>Acepta la misión Es pura diversión y juegos hasta que...
step
    #completewith TheryluneEnd
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |cRXP_LOOT_Ojo incomparable|r y el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therylune|r. Esto iniciará una escolta
    >>|cRXP_WARN_Omite este paso si ella no está allí|r
    .accept 945 >> Acepta la misión La fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Acompaña a |cRXP_FRIENDLY_Therylune|r fuera de La Espada del Maestro|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #loop
    .goto 1439/1,376.800,4608.600,40,0
    .goto 1439/1,453.100,4580.200,40,0
    .goto 1439/1,409.4366,4521.0151,40,0
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |cRXP_LOOT_Ojo incomparable|r y el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    #optional
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >> Elimina la |T134715:0|t[Ampolla de adivinación] de tu inventario, ya que ya no se necesita
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    >>|cRXP_WARN_Puede que tengas que esperar a que reaparezca o a que otros terminen la escolta|r
    .turnin 729 >> Entrega la misión El prospector despistado
    .target Prospector Remtravel
step
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r. Esto iniciará una escolta
    .accept 731,1 >> Acepta la misión El prospector despistado
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Acompaña al |cRXP_FRIENDLY_Prospector Tripirrem|r por la Excavación|r
    .complete 731,1
    .isOnQuest 731
step
    .isQuestTurnedIn 4681
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step
    .isQuestTurnedIn 4681
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4731 >> Acepta la misión Tortuga marina varada
step
    .isQuestTurnedIn 4681
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4732 >> Acepta la misión Tortuga marina varada
step
    .isQuestTurnedIn 4681
    .goto 1439,31.251,87.419
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4733 >> Acepta la misión Criatura marina varada
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
    .timer 11,Regresa junto a Onus RP
    .target Onu
step
    #optional
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
step
    #optional
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r para empezar la escolta
    >>|cRXP_WARN_Omite este paso si no está allí. Puede tomar hasta 25 minutos para que reaparezca|r
    >>|cRXP_WARN_Esta es una misión cronometrada. Tienes que escoltarlo a su bolsa en 20 minutos|r
    .accept 5321 >> Acepta la misión El despertar
    .target Kerlonian Evershade
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r para empezar la escolta
    >>|cRXP_WARN_Omite este paso si no está allí. Puede tomar hasta 25 minutos para que reaparezca|r
    >>|cRXP_WARN_Esta es una misión cronometrada. Tienes que escoltarlo a su bolsa en 20 minutos|r
    .accept 5321 >> Acepta la misión El despertar
    .target Kerlonian Evershade
    .itemcount 13536,<1 --Horn of Awakening
step
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .itemcount 13536,<1 --Horn of Awakening
step
    #label Kerlonian
    .goto 1439/1,206.400,4402.500
    >>|cRXP_WARN_Escolta a |cRXP_FRIENDLY_Kerlonian|r a su bolsa |cRXP_WARN_en Costa Oscura|r|r
    .use 13536 >> |cRXP_WARN_Usa el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r] siempre que |cRXP_FRIENDLY_Kerlonian|r se adormezca|r
    >>|cRXP_WARN_Evita correr por la carretera principal lo más posible. Los enemigos aparecerán sólo si estás en el camino|r
    .complete 5321,2
    .isOnQuest 5321
step
    #completewith tower
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto 1440/1,-12.70,4150.17
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Liladris Rioluna|r
	.target Liladris Moonriver
    .goto 1440/1,128.01,3305.31
    .turnin 5321 >> Entrega la misión El despertar
    .isQuestComplete 5321
step
    #label tower
    .goto 1440/1,189.71,3185.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
    .accept 970 >> Acepta la misión La Torre de Althalaxx
    .target Delgren the Purifier
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Acepta la misión Cabello de Bathran
    .xp <20,1
step
    .goto 1440/1,-102.08,3492.890
    >>Mata a los |cRXP_ENEMY_Cultores de la Facción Oscura|r y a los |cRXP_ENEMY_Adeptos de la Facción Oscura|r. Despójalos para obtener la |cRXP_LOOT_Gema de alma resplandeciente|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto 1440/1,-102.08,3492.890
    .xp 20-1650 >>Sigue matando a los |cRXP_ENEMY_miembros de la Facción Oscura|r hasta que tengas suficiente experiencia para alcanzar el nivel 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    >>|cRXP_WARN_Asegúrate de tener|r |T134916:0|t[Buscar hierbas] |cRXP_WARN_activado para verlas en el minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,<1,1
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,1,1
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
    .isQuestComplete 1010
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
    .isQuestTurnedIn 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Entrega la misión La Torre de Althalaxx
    .accept 973 >> Acepta la misión La Torre de Althalaxx
step
    #optional
    .goto 1440/1,-138.99,3806.92
    .xp 20 >> Mata enemigos hasta subir al nivel 20
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .accept 1010 >> Acepta la misión Cabello de Bathran
    .target Orendil Broadleaf
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    >>|cRXP_WARN_Asegúrate de tener|r |T134916:0|t[Buscar hierbas] |cRXP_WARN_activado para verlas en el minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
step
    #optional
    #completewith TZS
    .subzone 415 >> Viaja a Astranaar
step
    #label AshenvaleEnd
    .goto 1440/1,-283.73,2827.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Consigue la Ruta de Vuelo de Astranaar
	.target Daelyshia
step
    #label TZS
    .goto 1440/1,-299.30,2796.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
    .accept 1008 >> Acepta la misión La Ensenada de Zoram
    .target Shindrell Swiftfire
step
    .goto 1440/1,-311.99,2759.11
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Thenysil|r
    .accept 1070 >> Acepta la misión Estar de guardia en Espolón
    .target Sentinel Thenysil
step
    .goto 1440/1,-362.16,2785.640
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >> Acepta la misión Viaje a Cima del Espolón
    .target Faldreas Goeth'Shael
step
    .goto 1440/1,-411.18,2767.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .accept 991 >> Acepta la misión La limpieza de Raene
    .accept 1054 >> Acepta la misión Matanza selectiva
    .target Raene Wolfrunner
step
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Kimlya|r
    .home >> Establece tu Piedra de hogar en Astranaar
    .target Innkeeper Kimlya
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Entrega la misión Cura de Orendil
    .timer 24,Cura de Orendil RP
    .accept 1033 >> Acepta la misión Lágrima de Elune
]])