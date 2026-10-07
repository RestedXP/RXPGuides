if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
<< NightElf
#name 11-15 Costa Negra/Cerro Oeste 
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#next 15-16 Hall of Thanes

step
    #include RestedXP Forever Guide (A)\14-16 Darkshore@WashedA-Gatehouse
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >>Defina sua Pedra de Retorno em Cidade de Ventobravo
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
    >>|T4548890:0|t[Golem Isospring]
    >>|T132995:0|t[Harvester Gyrostabilizer]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 255007,14,92909,1 -- Golem Isospring (14)
    .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
    .target Auctioneer Jaxon
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda o Ponto de Voo de Ventabela
    .target Dungar Longdrink
step
    #completewith SaldeanVendor
    #optional
    .goto 1429/0,875.96,-9814.400
    .zone Westfall >>Viaje até Cerro Oeste
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Taturana|r
    .accept 64 >>Aceite A Herança Esquecida
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vera Taturana|r
    .accept 36 >>Aceite Cozido de Costa Negra
    .accept 151 >>Aceite Pobre e Velha Blanchy
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >>Vá para a Fazenda do Saldanha
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .turnin 36 >>Entregue Cozido de Costa Negra
    .target Salma Saldean
    .accept 38 >>Aceite Cozido de Costa Negra
step << Gnome/Dwarf/NightElf
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 109 >>Entregue Reportar-se a Gryan Pontudo
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 12 >>Aceite The People's Militia
step
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Danuvin|r
    .accept 102 >>Aceite Patrulhando Costa Negra
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >>Aceite Vermelho Couro Bandanas
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Érica|r
    .vendor >>|cRXP_BUY_Compre comida/água se necessário|r
	.target Innkeeper Heather
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alba Fairmoon::253092|r
    .target Alba Fairmoon::253092
    .accept 92742 >>Aceite Testando the Wells
    .accept 92744 >>Aceite Murloc Gills
step
	#completewith GnollPaws
    >>Abra o |cRXP_PICK_Saco de Aveia|r no chão. Saque-os para o |cRXP_LOOT_Handful of Oats|r
    >>|cRXP_WARN_Você geralmente os encontra perto de cercas de fazenda ou edifícios|r
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
    .goto 1436/0,1602.67,-10629.67,75 >>Vá para Alexston's Farmstead
    >>|cRXP_WARN_Trabalhe em completar os outros objetivos de missão enquanto se move para lá|r
step
    #sticky
    #completewith bennytime
    >>Mate os |cRXP_ENEMY_Harvest Watchers|r localizados em qualquer um dos campos enquanto passa por eles
    >>Saque-os para obter seus |cRXP_LOOT_Okra|r e |cRXP_LOOT_Flasks of Oil|r
    .mob Harvest Watcher
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>Abra |cRXP_PICK_Alexston's Baú|r. Pegue o |cRXP_LOOT_A Simple Compass|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Use o|r |T236996:0|t[Well Amostra de Água Kit] |cRXP_WARN_no poço Molsen Farm|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    #completewith bennytime
    >>Mate os |cRXP_ENEMY_Young Goretusks|r e os |cRXP_ENEMY_Young Fleshrippers|r. Saqueie-os para obter a |cRXP_LOOT_Vulture Carne|r, os |cRXP_LOOT_Snouts|r e os |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
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
    .goto 1436/0,1266.67,-9927.33,75 >>Vá para Jansen Stead, |cRXP_WARN_trabalhe em completar os outros objetivos de missão enquanto se move para lá|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>Abra |cRXP_PICK_Furlbrow's Wardrobe|r. Pegue o |cRXP_LOOT_Furlbrow's Pocket Vigiar|r
    >>|cRXP_WARN_Você consegue saquear o |cRXP_PICK_Furlbrow's Wardrobe|r de fora se ajustar a câmera corretamente|r
	>>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Benny Blanco|r. Ele acerta forte|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Mate os |cRXP_ENEMY_Murloc Raiders|r e os |cRXP_ENEMY_Murloc Coastrunners|r. Saque-os para obter seus |cRXP_LOOT_Olhos|r e |cRXP_LOOT_Gills|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Use o|r |T236996:0|t[Well Amostra de Água Kit] |cRXP_WARN_no poço Jansen Stead|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Abra o |cRXP_PICK_Saco de Aveia|r no chão. Saque-os para o |cRXP_LOOT_Handful of Oats|r
	>>|cRXP_WARN_Você geralmente os encontra perto de cercas de fazenda ou edifícios|r
	.complete 151,1 --Handful of Oats (8)
step
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .turnin 64 >>Entregue A Herança Esquecida
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >>Entregue Pobre Velha Brancurinha
    .target +Verna Furlbrow
    .goto 1436/0,919.47,-9853.13
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .vendor >>|cRXP_BUY_Lixo de venda|r
    >>|cRXP_WARN_NÃO venda|r |T133884:0|t[Murloc Olhos], |T135997:0|t[Goretusco Snouts], |T134341:0|t[Goretusco Livers] |cRXP_WARN_ou|r |T133972:0|t[Stringy Vulture Carne]
	.target Farmer Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >>Entregue Ensopado de Cerro Oeste
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
    .turnin 38 >>Entregue Ensopado de Cerro Oeste
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
    .collect 814,5,103,1 --Flask of Oil (5)
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
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >>Entregue Ensopado de Cerro Oeste
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
    .goto 1436/0,1324.200,-10490.400
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >>Entregue The People's Militia
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >>Aceitar A Irmandade Défias
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Galiaan|r
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >>Entregue Bandanas de Couro Vermelho
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alba Fairmoon::253092|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Entregue Testando os Poços
    .turnin 92744 >>Entregue Brânquias de Murloc
step
    .hs >>Use sua Pedra de Retorno para ir a Ventobravo
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    .vendor 1287 >>|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dela ou algo melhor do Leilão e equipe-a em sua mão não-dominante|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marcia Weller
step << Rogue
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
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .xp <16,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
    .xp <16,1
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
    .xp <16,1
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Theridran|r
    .trainer >>Treine suas magias de classe
	.target Theridran
    .xp <16,1
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .turnin 399 >>Entregue Começos Humildes
    .target Baros Alexston
    .isQuestComplete 399
step << Priest
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >>Viaje até a Catedral de Ventobravo
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >>Treine suas magias de classe
    .train 8122,1
    .target Brother Joshua
    .xp <16,1
step
    #optional
    #label endOfTheGuide
step
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step
    .zone Ironforge >>Pegue o bonde para Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh


]])



RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#name 13-15 Cerro Oeste 
#displayname 14-15 Cerro Oeste << Gnome/Dwarf !Hunter
#displayname 13-15 Cerro Oeste << Hunter
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#next 15-16 Salão dos Thanes

step
    #optional
    .maxlevel 14,endOfTheGuide
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >>Defina sua Pedra de Retorno em Cidade de Ventobravo
    .target Innkeeper Allison
    .bindlocation 16509
step
    #label NEWestfallStart --hidden step for #include

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
    >>|T4548890:0|t[Golem Isospring]
    >>|T132995:0|t[Harvester Gyrostabilizer]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 255007,14,92909,1 -- Golem Isospring (14)
    .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
    .target Auctioneer Jaxon

step << Human
    .goto 1453/0,489.99,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .turnin 6261 >>Entregue Dungar Tragolongo
    .accept 6285 >>Aceite Retornar a Lewis
    .target Dungar Longdrink

step << !Skyborne
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >>Voe para Cerro Oeste << !NightElf
    .fp Stormwind >>Aprenda o Ponto de Voo de Ventabela << NightElf
    .target Dungar Longdrink
step
    #completewith SaldeanVendor
    #optional
    .goto 1429/0,875.96,-9814.400
    .zone Westfall >>Viaje até Cerro Oeste
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r
    .accept 64 >>Aceite A Herança Esquecida
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vera Taturana|r
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .accept 151 >>Aceite Pobre Velha Brancurinha
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >>Vá para a Fazenda Saldean
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .accept 9 >>Aceite Os Campos da Morte
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte << NightElf
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .turnin 36 >>Entregue Ensopado de Cerro Oeste
    .target Salma Saldean
    .accept 38 >>Aceite Ensopado de Cerro Oeste
    .accept 22 >>Aceite Empadão de Fígado de Goretusco
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    .target Quartermaster Lewis
    .goto 1436/0,1021.67,-10500.63
    .turnin 6285 >>Entregue Volte para Lewis
step << Gnome/Dwarf/NightElf
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 109 >>Entregue Miguel Mantoforte
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 12 >>Aceite A Milícia do Povo
step
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Danuvin|r
    .accept 102 >>Aceite Patrulhando Cerro Oeste
step << Human
    #requires Lewis
    .goto 1436/0,1126.67,-10636.670
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .accept 153 >>Aceite Bandanas de Couro Vermelho
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >>Aceite Bandanas de Couro Vermelho
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
	#completewith GnollPaws
    >>Abra o |cRXP_PICK_Saco de Aveia|r no chão. Saque-os para obter o |cRXP_LOOT_Handful of Oats|r
    >>|cRXP_WARN_Você normalmente pode encontrá-los perto de cercas de fazenda ou edifícios|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
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
    #completewith TravelCompass
    >>Mate os |cRXP_ENEMY_Defias Trapeiros|r e os |cRXP_ENEMY_Defias Contrabandistas|r. Saqueie-os para obter |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
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
    .goto 1436/0,1602.67,-10629.67,75 >>Vá para Alexston's Farmstead
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
    >>Mate os |cRXP_ENEMY_Defias Trapeiros|r e os |cRXP_ENEMY_Defias Contrabandistas|r. Saqueie-os para obter |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1266.67,-9927.33,75 >>Vá para Jansen Stead, |cRXP_WARN_trabalhe em completar os outros objetivos de missão conforme você se move para lá|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>Abra o |cRXP_PICK_Furlbrow's Wardrobe|r. Saqueie-o para obter o |cRXP_LOOT_Furlbrow's Pocket Vigiar|r
    >>|cRXP_WARN_Você pode saquear o |cRXP_PICK_Furlbrow's Wardrobe|r de fora se você posicionar sua câmera corretamente|r
	>>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Benny Blanco|r. Ele ataca com força|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
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
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Mate os |cRXP_ENEMY_Murloc Raiders|r e os |cRXP_ENEMY_Murloc Coastrunners|r. Saque-os para obter seus |cRXP_LOOT_Olhos|r e |cRXP_LOOT_Gills|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
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
    .turnin 64 >>Entregue A Herança Esquecida
    .turnin 184 >>Entregue Escritura do Furlbrow
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >>Entregue Pobre Velha Brancurinha
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
    .isOnQuest 184
step
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .turnin 64 >>Entregue A Herança Esquecida
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >>Entregue Pobre Velha Brancurinha
    .target +Verna Furlbrow
    .goto 1436/0,919.47,-9853.13
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .vendor >>|cRXP_BUY_Lixo de venda|r
    >>|cRXP_WARN_NÃO venda|r |T133884:0|t[Murloc Olhos], |T135997:0|t[Goretusco Snouts], |T134341:0|t[Goretusco Livers] |cRXP_WARN_ou|r |T133972:0|t[Stringy Vulture Carne]
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >>Entregue Campos de Matança
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >>Vá para Empadão de Fígado de Goretusco
    .turnin 38 >>Entregue Cozido de Costa Negra
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
    .turnin 22 >>Vá para Empadão de Fígado de Goretusco
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >>Entregue Cozido de Costa Negra
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
    .collect 814,5,103,1 --Flask of Oil (5)
step
    #optional
    .isQuestComplete 9
    .subzoneskip 107,1 -- forces early turnin if already at same farm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >>Entregue Campos de Matança
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >>Entregue Campos de Matança
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >>Entregue Cozido de Costa Negra
    .turnin 22 >>Vá para Empadão de Fígado de Goretusco
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
    >>Mate os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os para conseguir suas |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
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
    .goto 1436/0,1324.200,-10490.400
    >>Mate os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os para conseguir suas |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_É uma área de ressurgimento dinâmico, significando que se você matar o suficiente, continuarão ressurgindo|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >>Entregue The People's Militia
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >>Aceitar A Irmandade Défias
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Danuvin|r
	.target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .turnin 102 >>Entregue Patrulhando Cerro Oeste
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Galiaan|r
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >>Entregue Bandanas de Couro Vermelho
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alba Fairmoon::253092|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Entregue Testando os Poços
    .turnin 92744 >>Entregue Brânquias de Murloc
step
    .hs >>Use sua Pedra de Retorno para ir a Ventobravo
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
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
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    >>|cRXP_WARN_Se você já treinou antes, pule este passo|r
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .turnin 399 >>Entregue Começos Humildes
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
    .goto 1453/0,1015.33,-8978.9,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .train 6222,1
    .target Ursula Deline
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >>Vá para a Torre dos Magos
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .train 2137,1
    .trainer >>Treine suas magias de classe
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >>Viaje até a Catedral de Ventobravo
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >>Treine suas magias de classe
    .train 19742,1
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >>Treine suas magias de classe
    .train 8122,1
    .target Brother Joshua
step
    #label NEWestfallEnd --hidden step for #include
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Catarina Gurjão|r
    >>|cRXP_BUY_Compre um|r |T134335:0|t[MIçanga Brilhosa] |cRXP_BUY_e três|r |T134324:0|t[Reptantes] |cRXP_BUY_dela. Isto é para uma missão de 900xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilbert Cinza::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Aceite Fishin' Tempo
    .turnin 95065 >>Entregue Fishin' Tempo
step
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Aceite O Simpatia de Philmor
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Entregue Philmor's Simpatia
    .accept 97222 >>Aceite Gatehouse Mercadorias
step
    .goto 1453/0,568.300,-8862.200
    .use 277198 >>|cRXP_WARN_Use o|r |T132762:0|t[Gatehouse Carregamento] |cRXP_WARN_em frente à |cRXP_PICK_Gatehouse Porta|r no andar de cima|r
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Entregue Gatehouse Mercadorias
step
    #optional
    #label endOfTheGuide
step
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step
    .zone Ironforge >>Pegue o bonde para Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 15-16 Hall of Thanes
#next 16-18 Ruins of Lordaeron

step << NightElf
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step
    #completewith OII
    +|cRXP_WARN_Agora você vai completar uma pré-missão para Hall of Thanes, depois entre na masmorra|r
step
    #completewith OII
    .zone Dun Morogh >>Vá para Dun Morogh
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .accept 96392 >>Aceite Vigiar de Farsen
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >>Fale com |cRXP_FRIENDLY_Earthseer Farsen|r para ver sua visão distante
    >>|cRXP_WARN_Você pode cancelar a Visão Distante quando o objetivo for concluído|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >>|cRXP_WARN_Pressione ESCAPE para cancelar a Visão Distante|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Você pode cancelar a Visão Distante quando o objetivo for concluído|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Pressione ESCAPE para cancelar a Visão Distante|r
    .turnin 96392 >>Entregue A Vigília de Farsen
    .accept 96390 >>Aceite Nip 'Em in the Migo
    .target Earthseer Farsen
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Mate os |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os para obter o |T237385:0|t[|cRXP_LOOT_Dark Ferro Mapa|r]
    .use 274268 >>|cRXP_WARN_Use o|r |T237385:0|t[|cRXP_LOOT_Dark Ferro Mapa|r] |cRXP_WARN_para iniciar a missão|r
    >>|cRXP_WARN_Você pode pular de matar os |cRXP_ENEMY_Dark Ferro Spies|r para a outra missão, pois eles são de nível baixo assim que você encontrar o|r |T237385:0|t[|cRXP_LOOT_Dark Ferro Mapa|r]
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >>Aceite Mapa Subterrâneo
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96391 >>Entregue Mapa Subterrâneo
    .accept 96393 >>Aceite Old Ironforge Incursion
    .target Earthseer Farsen
step
    #optional
    .isQuestComplete 96390
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >>Entregue Nip 'Em in the Migo
    .target Earthseer Farsen

step
    #completewith EnterHoT
    +|cRXP_WARN_Comece procurando um grupo para o Hall of Thanes|r
step
    #optional
    #label InIronforge
    #completewith EnterHoT
    .zone Ironforge >>Viaje para Ironforge
step
    #requires InIronforge
    #completewith EnterHoT
    .goto 1455/0,-1054.300,-4843.200,10,0
    .goto 1455/0,-1081.900,-4850.100,10,0
    .goto 1455/0,-1082.800,-4886.000,10,0
    .goto 1455/0,-1087.700,-4821.900,10,0
    .goto 1455/0,-1010.300,-4850.900,10 >>Desça até Old Ironforge pela sala do |cRXP_FRIENDLY_King Magni's|r
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Afadra Dunwall|r
    .accept 96394 >>Aceite Os Mortos Inquietos
    .target Afadra Dunwall
step
    #completewith EnterHoT
    .goto 1455/0,-996.100,-4821.200,10,0
    .goto 1455/0,-972.000,-4803.000,10,0
    .goto 1455/0,-988.900,-4854.400,10 >>|cRXP_WARN_Caia na rampa abaixo|r
step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thom Filch|r
    .accept 96403 >>Aceite Important Heirlooms
    .target Thom Filch
step
    #label EnterHoT
    .goto 1455/0,-933.200,-4821.900
    .subzone 16919 >>Entre no Hall of Thanes

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
    .accept 96395 >>Aceite Uma Rixa Antiga
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
    .turnin 96395 >>Entregue Uma Rixa Antiga
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
    .accept 98423 >>Aceite The Treaty of Understanding
step
    >>Saque as |cRXP_PICK_Relíquias Enânicas|r no chão através do Hall of Thanes
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    .zone Ironforge >>|cRXP_WARN_Saia do Hall of Thanes. A forma mais rápida é correr direto descendo o corredor da sala do chefe final|r
    .subzoneskip 16919,1

step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thom Filch|r
    .turnin 96403 >>Entregue Important Heirlooms
    .target Thom Filch
step
    #completewith next
    .goto 1455/0,-1006.600,-4841.600,10,0
    .goto 1455/0,-969.700,-4841.500,10,0
    .goto 1455/0,-964.300,-4807.500,10,0
    .goto 1455/0,-993.500,-4817.600,10,0
    .goto 1455/0,-983.700,-4847.800,10,0
    .goto 1455/0,-1022.000,-4842.100,10,0
    .goto 1455/0,-994.000,-4843.100,10 >>Volte para |cRXP_FRIENDLY_Afadra Dunwall|r subindo a rampa
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Afadra Dunwall|r
    .turnin 96394 >>Entregue Os Mortos Inquietos
    .target Afadra Dunwall
step
    #completewith next
    .goto 1455/0,-1030.200,-4831.000,10,0
    .goto 1455/0,-1090.900,-4830.400,10,0
    .goto 1455/0,-1079.600,-4884.100,10,0
    .goto 1455/0,-1058.000,-4842.500,10 >>Vá para cima pela rampa em direção a |cRXP_FRIENDLY_King Magni Barbabronze|r
step
    .goto 1455/0,-1022.600,-4865.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Magni Barbabronze|r
    .turnin 96393 >>Entregue Old Ironforge Incursion
    .turnin 98423 >>Entregue The Treaty of Understanding
    .target King Magni Bronzebeard

step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eldrun Rompe-procelas::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >>Treine suas magias de classe
step << Priest/Paladin/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r << Mage
    .goto 1455/0,-928.48,-4614.620 << Mage
    .goto 1455/0,-912.88,-4625.99 << Priest
    .goto 1455/0,-896.55,-4601.68 << Paladin
    .trainer >>Treine suas magias de classe
    .target Toldren Deepiron << Priest
    .target Brandur Ironhammer << Paladin
    .target Dink << Mage
step << Warlock/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto 1455/0,-1117.60,-4615.14,15,0 << Warlock
    .goto 1455/0,-1111.62,-4599.09 << Warlock
    .goto 1455/0,-1120.72,-4650.120 << Rogue
    .trainer >>Treine suas magias de classe
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
step << Warlock
    .goto 1455/0,-1134.20,-4610.39,15,0
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor >>|cRXP_BUY_Compre|r |T133738:0|t[Grimório de Sacrificar (Rank 1)]
    .target Jubahl Corpseseeker
    .train 20381,1
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regnus Granitrondo|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r << Warrior
    .goto 1455/0,-1266.02,-5006.570 << Hunter
    .goto 1455/0,-1234.65,-5035.67 << Warrior
    .trainer >>Treine suas magias de classe
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
]])


RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
#beta
<< Alliance
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 16-18 Ruins of Lordaeron
#next 18-20 Minas Mortas

step
    #completewith EnterRoL
    +|cRXP_WARN_Você executará Ruins of Lordaeron|r
    >>|cRXP_WARN_Todas as missões são recebidas dentro da masmorra|r
step
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    >>|cRXP_WARN_Se você não tem a rota de voo do Pantanal, pule este passo|r
    .fly Wetlands >>Voe para Pantanal
    .target Gryth Thurden
    .zoneskip Ironforge,1

step
    .goto 1426/0,-826.400,-5027.100,30,0
    .goto 1426/0,-721.900,-5078.900,30,0
    .goto 1426/0,-426.500,-5181.000,70,0
    .goto 1426/0,-230.400,-5154.600,80,0
    .goto 1426/0,-65.000,-5115.000,100 >>|cRXP_WARN_Sair de Ironforge. Viaje para Dun Morogh -> localização deathskip de Pantanal|r
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
    .deathskip >>Morra e reviva na Baía Baradin |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1437/0,-839.800,-3657.900
    .subzone 150 >>Nade até Menethil Harbor
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-782.000,-3793.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-581.800,-3722.400
    .zone Hillsbrad Foothills >>Pegue o barco para Southshore
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .fp Southshore >>Aprenda a rota de voo de Southshore
    .target Darla Harris
    .subzoneskip 16611 -- ruins of lordaeron
step
    #label EnterRoL
    .goto 1424/0,-272.000,-381.800,100,0
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
    .goto 1458/0,170.700,1804.700
    .subzone 16611 >>Viaje para Ruins of Lordaeron em Undercity. Entre na masmorra
    >>|cRXP_WARN_Tenha cuidado com os |cRXP_ENEMY_Gatos|r, os |cRXP_ENEMY_Ursos|r, as |cRXP_ENEMY_Aranhas|r ou os |cRXP_ENEMY_Murlocs|r enquanto corre|r
    >>|cRXP_WARN_Assim que entrar em Undercity você será automaticamente marcado para PvP, tornando-se atacável por|r |cRXP_ENEMY_Horda|r

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Truman|r
    .accept 95250 >>Aceite Abominable Creatures
    .target Captain Truman
step
    #sticky
    #label BaronHead
    >>Abate |cRXP_ENEMY_O Barão|r. Saque-o para a |cRXP_LOOT_Cabeça|r do Barão
    .complete 95250,1 -- Head of the Baron (1)
    .mob The Baron
step
    >>Saqueie todos os inimigos para obter a |T133328:0|t[|cRXP_LOOT_Insígnia Ensanguentada|r]
    .use 268535 >>|cRXP_WARN_Use a|r |T133328:0|t[|cRXP_LOOT_Insígnia Ensanguentada|r] |cRXP_WARN_para iniciar a missão|r
    .collect 268535,1,95195,1 -- Bloodied Insignia (1)  
    .accept 95195 >>Aceite Insígnia Ensanguentada
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
    .use 268579 >>|cRXP_WARN_Use o|r |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] |cRXP_WARN_para iniciar a missão|r
    .collect 268579,1,95189,1 -- Crest of Lordaeron (1)
    .accept 95189 >>Aceite Crest of Lordaeron
step
    #sticky
    #label CrumpledPaper
    >>Clique o |cRXP_PICK_Papel Amassado|r no chão perto de |cRXP_ENEMY_Rath'mael|r
    >>|cRXP_WARN_Você pode fazer isto depois de matá-lo|r
    .accept 92415 >>Aceite Lembrar That I Love You
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
    .turnin 95250 >>Entregue Abominable Creatures
    .target Captain Truman

step
    .hs >>Use sua Pedra de Retorno para ir a Ventobravo
    >>|cRXP_WARN_Se sua Pedra de Retorno não foi definida em Ventobravo, dirija-se para lá|r
    .zoneskip Stormwind City
step
    .isOnQuest 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .turnin 92415 >>Entregue Lembrar That I Love You
    .accept 95161 >>Aceite Lembrar That I Love You
    .target Orphan Matron Nightingale
step
    #optional
    .isQuestTurnedIn 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .accept 95161 >>Aceite Lembrar That I Love You
    .target Orphan Matron Nightingale
step
    .goto 1453/0,634.700,-8390.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .accept 2040 >>Aceite Ataque Subterrâneo
    .target Shoni the Shilent
step
    .goto 1453/0,501.200,-8468.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r
    .accept 167 >>Aceite Oh, Irmão...
    .accept 168 >>Aceite Coletando Memórias
    .target Wilder Thistlenettle
step
    #completewith next
    .goto 1453/0,437.600,-8524.5000,20,0
    .goto 1453/0,408.100,-8478.500,15,0
    .goto 1453/0,502.900,-8358.800,15 >>Vá para a Biblioteca de Ventobravo
step
    .isOnQuest 95189
    .goto 1453/0,531.000,-8322.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lady Dina Cápita|r
    >>|cRXP_WARN_Ela anda ligeiramente na Galeria Real|r
    .turnin 95189 >>Entregue Crest of Lordaeron
    .target Lady Dena Kennedy
step
    .isOnQuest 95195
    .goto 1453/0,521.000,-8954.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Marcus Jonas|r
    .turnin 95195 >>Entregue Insígnia Ensanguentada
    .target General Marcus Jonathan
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Theridran|r
    .trainer >>Treine suas magias de classe
	.target Theridran
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >>Vá para a Torre dos Magos
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >>Viaje até a Catedral de Ventobravo
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >>Treine suas magias de classe
    .target Brother Joshua
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 18-20 Minas Mortas
#next 20-20 Redridge

step
    #completewith next
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Dungar Longdrink
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >>Aceitar A Irmandade Défias
step
    #completewith RRDB
    .goto 1453/0,490.03,-8835.82,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r ou |cRXP_FRIENDLY_Thor|r
    >>|cRXP_WARN_Se você não tiver a rota de voo de Montanhas Cristarrubra, pule este passo|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
    .zoneskip Elwynn Forest
step
    #completewith RRDB
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step
    #label RRDB
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiley, o Negro|r no andar de cima
    .turnin 65 >>Entregue A Irmandade Défias
    .accept 132 >>Aceitar A Irmandade Défias
	.target Wiley the Black
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto 1433/0,-2207.10,-9351.52
    .accept 3741 >>Aceite Nida's Colar
    .zoneskip 1433,1
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
    .zoneskip 1433,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nida|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >>Entregue Nida's Colar
    .zoneskip 1433,1
step
    #completewith next
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Ariena Stormfeather
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 132 >>Entregue A Irmandade Défias
    .accept 135 >>Aceitar A Irmandade Défias
step
    #completewith SWDB
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step
    #optional
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
step
    #label SWDB
    .goto 1453/0,362.28,-8815.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .turnin 135 >>Entregue A Irmandade Défias
    .accept 141 >>Aceitar A Irmandade Défias
    .target Master Mathias Shaw
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .goto 1453/0,490.03,-8835.82
    .fly Westfall >>Voe para Cerro Oeste
    .target Dungar Longdrink
step
    .goto 1436/0,1045.29,-10508.78
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 141 >>Entregue A Irmandade Défias
    .accept 142 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
step
    #optional
    #completewith next
    .goto 1436/0,1459.17,-11024.47,55 >>Vá para Moonbrook
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
    .turnin 142 >>Entregue A Irmandade Défias
    .target Gryan Stoutmantle
step
    .goto 1436/0,1067.87,-10508.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Traidor Défias|r
    >>|cRXP_WARN_Você pode precisar esperar pelo |cRXP_FRIENDLY_Traidor Défias|r aparecer se ele não estiver lá|r
    .accept 155 >>Aceitar A Irmandade Défias
    .target The Defias Traitor
step
    .goto 1436/0,1527.07,-11073.23
    >>Escolte o |cRXP_FRIENDLY_Traidor Défias|r para Minas Mortas
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 155 >>Entregue A Irmandade Défias
    .accept 166 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
step
    .goto 1436/0,1033.22,-10504.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Riel|r no topo da torre
    .accept 214 >>Aceite Bandanas de Seda Vermelha
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
    .subzone 1581 >>Entre no Esconderijo Défias com seu grupo
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
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >>Entre na Masmorra das Minas Mortas
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
    .accept 373 >>Aceite A Carta Não Enviada
    .use 2874 -- An Unsent Letter
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >>Vá para o Farol de Cerro Oeste
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >>Aceite O Mar Não Está para Peixe
    .accept 103 >>Aceite Keeper of the Chamas
    .turnin 103 >>Entregue Keeper of the Chamas
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >>Aceite O Mar Não Está para Peixe
    .target Captain Grayson
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Abata o |cRXP_ENEMY_Velho Olho-turvo|r. Saqueie-o para a |cRXP_LOOT_Escama|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 104 >>Entregue O Mar Não Está para Peixe
    .target Captain Grayson
    .isQuestComplete 104
step
    .goto 1436/0,1707.2116,-10583.0227
    >>Clique em |cRXP_PICK_Restos Queimados|r no chão
    .accept 79008 >>Aceite ...e aquele bilhete que você encontrou
step
    #completewith next
    .goto 1436/0,1045.12,-10508.80,100 >>Viaje até a Colina da Sentinela
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r e com a |cRXP_FRIENDLY_Batedora Riell|r no topo da Torre
    .turnin 166 >>Entregue A Irmandade Défias
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 214 >>Entregue Bandanas de Seda Vermelha
    .goto 1436/0,1033.22,-10504.83
    .target +Scout Riell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 166 >>Entregue A Irmandade Défias
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
step
    .isQuestComplete 214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedora Riell|r no topo da torre
    .turnin 214 >>Entregue Bandanas de Seda Vermelha
    .goto 1436/0,1033.22,-10504.83
    .target Scout Riell

--Shaman water totem quest start
step << Shaman
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >>Voe para Altaforja
    .target Thor
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eldrun Rompe-procelas::258098|r
    .target Eldrun Stormbreaker::258098
    .accept 94494 >>Aceite Chamado da Água
    .trainer >>Treine suas magias de classe
step << Shaman
    #completewith CallofWater
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Loch Modan >>Voe para Loch Modan
    .target Gryth Thurden
step << Shaman
	.isOnQuest 94494
    .goto 1432/0,-3146.000,-4837.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Norric Lochthane::258043|r
    .target Norric Lochthane::258043
    .turnin 94494 >>Entregue Clamor da água
	.accept 94495 >>Aceite Chamado da Água
step << Shaman
	#label CallofWater
    .goto 1432/0,-3146.000,-4837.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Norric Lochthane::258043|r
    .target Norric Lochthane::258043
    .accept 94495 >>Aceite Chamado da Água
step << Shaman
	#optional
	.isOnQuest 468
    .goto 1432/0,-2695.500,-4678.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mountaineer Rockgar::1342|r
    .target Mountaineer Rockgar::1342
    .turnin 468 >>Entregue Report to Montanhista Rockgar
step << Shaman
    #completewith WaterTotem1
    #label DunAlgaz1
    .goto 1432/0,-2697.700,-4645.500,15,0
    .goto 1437/0,-2653.800,-4448.100,15,0
    .goto 1437/0,-2480.200,-4421.800,15,0
    .goto 1437/0,-2464.200,-4280.900,15,0
    .goto 1437/0,-2419.800,-4092.100,15,0
    .goto 1437/0,-2629.900,-4086.400,15 >>Vá através de Dun Algaz para Pantanal
step << Shaman
    #completewith WaterTotem1
    #requires DunAlgaz1
    .goto 1437/0,-3085.500,-4196.100,10,0
    .goto 1437/0,-3103.100,-4212.600,12,0
    .goto 1437/0,-3098.200,-4242.600,7 >>Suba a rampa em direção a |cRXP_FRIENDLY_Hervdana Saegrund::258203|r dentro da caverna
step << Shaman
    #label WaterTotem1
    .goto 1437/0,-3109.300,-4257.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hervdana Saegrund::258203|r
    .target Hervdana Saegrund::258203
    .turnin 94495 >>Entregue Clamor da água
    .accept 94497 >>Aceite Chamado da Água  
step << Shaman
    .goto 1437/0,-3069.100,-4210.100
    .use 265732 >>|cRXP_WARN_Use a|r |T132825:0|t[Unfilled Brown Odre] |cRXP_WARN_na base da cachoeira|r
    .complete 94497,1 --|1/1 Full Brown Waterskin
step << Shaman
    #completewith next
    .goto 1437/0,-3085.500,-4196.100,10,0
    .goto 1437/0,-3103.100,-4212.600,12,0
    .goto 1437/0,-3098.200,-4242.600,7 >>Suba de volta a rampa em direção a |cRXP_FRIENDLY_Hervdana Saegrund::258203|r dentro da caverna
step << Shaman
    .goto 1437/0,-3109.300,-4257.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hervdana Saegrund::258203|r
    .target Hervdana Saegrund::258203
    .turnin 94497 >>Entregue Clamor da água
    .accept 94499 >>Aceite Call of Água - Missão

--sham can hs to sw
--everyone else can fly sw turn in / train 20 spells

]])