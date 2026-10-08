if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 13-15 Cerro Oeste
#version 1
#group Sobrevivência Guia (A)
#subgroup RXP Sobrevivência Guia 1-20
#defaultfor Human/Gnome/Dwarf/NightElf
#next 15-18 Costa Negra

step
    #sticky
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >>Viaje até Cerro Oeste
step
    .goto Westfall,59.95,19.35
    .target Farmer Furlbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r
    .accept 64 >>Aceite A Herança Esquecida
    .accept 109 >>Aceite Entregar para Miguel Mantoforte
step
    .goto Westfall,59.92,19.42
    .target Verna Furlbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vera Taturana|r
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .accept 151 >>Aceite A Pobre Velhinha Brancurinha
step
    #completewith SalmaS
    .goto Westfall,56.04,31.23,65 >>Vá para a Fazenda de Saldean
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .accept 9 >>Aceite Os Campos da Morte
step
    #label SalmaS
    .goto Westfall,56.40,30.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .turnin 36 >>Entregue Ensopado de Cerro Oeste
    .target Salma Saldean
    .accept 38 >>Aceite Ensopado de Cerro Oeste
    .accept 22 >>Aceite Empadão de Fígado de Goretusco
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >>Entregue para Lewis
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 109 >>Entregue Relatório para Gryan Mantoforte
    .isOnQuest 109
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 12 >>Aceite A Milícia do Povo
step
    #era
    .goto Westfall,56.42,47.62
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Danuvin|r
    .accept 102 >>Aceite Patrulhando Cerro Oeste
step << Human
    #requires Lewis
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .accept 153 >>Aceite Vermelho Couro Bandanas
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >>Aceite Vermelho Couro Bandanas
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Érica|r
	>>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .vendor >>|T133918:0|t[Pargo-da-lama Bocalonga] |cRXP_WARN_é muito barato|r
	.target Innkeeper Heather
step
	#completewith bennytime
    >>Abra o |cRXP_PICK_Saco de Aveia|r no chão. Saque-os para o |cRXP_LOOT_Handful of Oats|r
    >>|cRXP_WARN_Você pode geralmente encontrá-los perto de cerca de fazenda ou construções|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith HarvestW
    >>Mate os |cRXP_ENEMY_Young Goretusks|r e os |cRXP_ENEMY_Young Fleshrippers|r. Saqueie-os para obter a |cRXP_LOOT_Vulture Carne|r, o |cRXP_LOOT_Snouts|r e o |cRXP_LOOT_Livers|r
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
    >>Mate os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os para obter |cRXP_LOOT_Red Couro Bandanas|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>Abra o |cRXP_PICK_Furlbrow's Wardrobe|r. Saqueie-o para obter o |cRXP_LOOT_Furlbrow's Pocket Vigiar|r
    >>|cRXP_WARN_Você pode pegar |cRXP_PICK_Furlbrow's Wardrobe|r de fora se inclinar a câmera corretamente|r
	>>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Benny Blanco|r. Ele bate forte|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
	#completewith next
    >>Abra o |cRXP_PICK_Saco de Aveia|r no chão. Saque-os para o |cRXP_LOOT_Handful of Oats|r
	>>|cRXP_WARN_Você pode geralmente encontrá-los perto de cerca de fazenda ou construções|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    >>Mate os |cRXP_ENEMY_Riverpaw Gnolls|r e os |cRXP_ENEMY_Riverpaw Batedores|r. Saqueie-os para obter |cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40
    >>Mate os |cRXP_ENEMY_Murloc Raiders|r e os |cRXP_ENEMY_Murloc Coastrunners|r. Saque-os para seus |cRXP_LOOT_Olhos|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >>Abra o |cRXP_PICK_Saco de Aveia|r no chão. Saque-os para o |cRXP_LOOT_Handful of Oats|r
	>>|cRXP_WARN_Você pode geralmente encontrá-los perto de cerca de fazenda ou construções|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .turnin 64 >>Entregue A Herança Esquecida
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >>Entregue Poor Velha Brancurinha
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    #som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .turnin 64 >>Entregue A Herança Esquecida
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >>Entregue Poor Velha Brancurinha
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .goto Westfall,56.40,30.50
    .turnin 22 >>Entregue Empadão de Fígado de Goretusco
    .isQuestComplete 22
    .target Salma Saldean
step
    #completewith next
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .vendor
    >>|cRXP_WARN_NÃO venda |T133884:0|t[Murloc Olhos], |T135997:0|t[Goretusco Snouts], |T134341:0|t[Goretusco Livers] ou |T133972:0|t[Stringy Vulture Carne]|r
	.target Farmer Saldean
step
    #label HarvestW
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>Mate os |cRXP_ENEMY_Harvest Watchers|r. Saqueie-os para obter |cRXP_LOOT_Frasco de Óleo|r e |cRXP_LOOT_Okra|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1
    .mob Harvest Watcher
step
    .goto Westfall,52.49,42.11,75,0
    .goto Westfall,53.67,46.07,75,0
    .goto Westfall,61.60,45.55,75,0
    .goto Westfall,60.36,27.38,75,0
    .goto Westfall,54.63,19.20,75,0
    .goto Westfall,49.09,26.92,75,0
    .goto Westfall,47.89,42.94,75,0
    .goto Westfall,54.42,40.38
    >>Mate os |cRXP_ENEMY_Young Goretusks|r e os |cRXP_ENEMY_Young Fleshrippers|r. Saqueie-os para obter a |cRXP_LOOT_Vulture Carne|r, o |cRXP_LOOT_Snouts|r e o |cRXP_LOOT_Livers|r
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
    .goto Westfall,56.04,31.23
    .turnin 9 >>Entregue The Matando Fields
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >>Entregue Ensopado de Cerro Oeste
    .turnin 22 >>Entregue Empadão de Fígado de Goretusco
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >>Entregue The People's Militia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >>Aceitar A Irmandade Défias
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Danuvin|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >>Entregue Patrulhando Cerro Oeste
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >>Entregue Vermelho Couro Bandanas
step << Druid
    .goto Westfall,32.6,22.6,30,0
    .goto Westfall,38.8,18.2,30,0
    .goto Westfall,41.0,12.0,30,0
    .goto Westfall,47.6,9.0,30,0
    .goto Westfall,51.8,9.4,30,0
    .goto Westfall,32.6,22.6
    .goto Westfall,38.8,18.2,0
    .goto Westfall,41.0,12.0,0
    .goto Westfall,47.6,9.0,0
    .goto Westfall,51.8,9.4,0
    .xp 16 >>Mate Caranguejos em Cerro Oeste até o nível 16
step << Dwarf !Paladin/Gnome
    #label end
    .hs >>Vá para Thelsamar
step << Dwarf !Paladin/Gnome
    #hardcore
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
step << Human/Dwarf Paladin
    #label end
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >>Voe para Altaforja
    .target Thor
step << !NightElf
    .goto Ironforge,55.093,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nissa Pederneira|r
    >>Melhore |T135966:0|t[Primeiros Socorros]
    .train 3274 >>Entrene Socorrista Profissional
    .target Nissa Firestone
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r
    .train 2567 >>Treine Arremesso
    .target Bixi Wobblebonk
step << Dwarf Paladin
    .goto Ironforge,24.55,4.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beldruk Cenhomal|r
    .trainer >>Treine suas magias de classe
    .target Beldruk Doombrow
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >>Suba em direção a |cRXP_FRIENDLY_Muiredon|r
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muiredon Beloforja|r
    .turnin 1784 >>Entregue Tomo de Divindade
    .accept 1785 >>Aceite Tomo de Divindade
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r
    .turnin 1785 >>Entregue Tomo de Divindade
    .target Tiza Battleforge
step
    .goto Ironforge,39.553,57.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .turnin 291 >>Entregue Os Relatórios
    .target Senator Barin Redstone
    .isOnQuest 291
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>Compre os seguintes itens para entrega instantânea em Costa Negra em breve. Pule este passo se você não desejar comprar nenhum
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Ironforge,1
step << !NightElf
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Saia de Altaforja
step << !NightElf
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>Vá para o local de skip Dun Morogh → Pantanal
step << !NightElf
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>|cRXP_WARN_Vigie o guia de vídeo como referência para como fazer o skip primeiro!|r
    >>|cRXP_WARN_Faça o Deathless Dun Morogh -> Os Pântanos skip|r
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Crocomoluscos do Pantanal|r e os |cRXP_ENEMY_Murlocs|r ao atravessar a água|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .goto Wetlands,12.1,60.3,80 >>Vá para Menethil Harbor
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << !NightElf
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nélio Allen|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Nélio Allen|r não tiver uma|r
	.target Neal Allen
    .bronzetube
step << !NightElf
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Samor Festivus|r no andar de cima
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item com estoque limitado. Pule este passo se |cRXP_FRIENDLY_Samor Festivus|r não tiver nenhum|r
    .target Samor Festivus
step << !NightElf
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
step << Hunter !NightElf
	.goto Wetlands,11.334,59.554
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Murndan Derth|r
    >>|cRXP_WARN_Compre um|r |T135612:0|t[Bacamarte de Calibre Largo]
    >>Pule este passo se você não puder pagá-lo
	.collect 3023,1 -- Large Bore Blunderbuss
    .target Murndan Derth
step << !NightElf
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devin Tremulaurora|r
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Devin Tremulaurora|r não tiver nenhuma|r
    .target Dewin Shimmerdawn
step << !NightElf
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>Vá para o cais do Porto de Menethil. Espere o barco para Costa Negra
step << !NightElf
    .zone Darkshore >>Pegue o barco para Costa Negra
    >>|cRXP_WARN_Suba|r seu |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_enquanto espera o barco para Costa Negra|r
    >>|T133971:0|t|cRXP_WARN_Suba|r seu |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você colheu anteriormente até o nível 10 idealmente|r
step << NightElf !Druid
    .goto Westfall,56.556,52.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Westfall >>Aprenda a rota de voo para Cerro Oeste
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step << Druid
	#completewith next
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip 1
    .fly Teldrassil >>Voe para Vila de Rut’theran
    .target Silva Fil'naveth
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .accept 6121 >>Aceite Lessons Anew
    .accept 26 >>Aceite A Lesson to Learn
    .trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 6121 >>Entregar Lições Renovadas
    .accept 6122 >>Aceitar A Fonte Principal
    .turnin 26 >>Entregar Uma Lição a Aprender
    .accept 29 >>Aceitar Prova do Lago
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.6,51.6
    >>Nade para Lake Elune'Ara
    >>Abra o |cRXP_PICK_Recipiente de Adornos|r. Saque-o para um |T134125:0|t[Adorno de Altar]
    >>|cRXP_WARN_Pode aparecer em diferentes locais debaixo d'água|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #completewith next
    .cast 18960 >>Use Teleporte: Clareira da Lua
    >>|cRXP_WARN_Será mais rápido dessa forma, então você não precisa nadar por mais tempo|r
step << Druid
    .goto Moonglade,36.026,41.374
    .use 15877 >>Use o [Adorno de Altar] no Santuário da árvore de Remulos.
    .complete 29,1 --Complete the Trial of the Lake.
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeana|r
    .turnin 29 >>Entregar Prova do Lago
    .target Tajarri
    .accept 272 >>Aceitar Prova do Leão Marinho
step << NightElf Priest
    .goto StormwindClassic,38.550,26.853
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .trainer >>Treine suas magias de classe
    .target Brother Joshua
step << NightElf Warrior
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    .vendor >>|cRXP_BUY_Compre|r |T133046:0|[Martelo de Rocha] |cRXP_BUY_se você puder pagá-lo|r
    .target Gunther Weller
step << NightElf Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    .vendor >>|cRXP_BUY_Compre|r |T133052:0|[Martelo] |cRXP_BUY_se você puder pagá-lo|r
    .target Gunther Weller
step << NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.130,57.704
    .train 201 >>Treine Espadas de Uma Mão
step << NightElf Hunter
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frederico Fornalha|r
    >>|cRXP_BUY_Compre um|r |T135490:0|t[Arco Reforçado]
    >>|cRXP_BUY_Abasteça-se de|r |T132382:0|t[Sharp Flechas]
    .collect 3026,1
    .target Frederico Fornalha
step << NightElf
    .goto StormwindClassic,43.065,26.156
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>Aumente Seus |T135966:0|t[Primeiros Socorros]
    .train 3274 >>Entrene Socorrista Profissional
    .target Shaina Fuller
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step << NightElf Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step << NightElf Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
step << NightElf
    .hs >>Use a Pedra de Regresso para Auberdine
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 15-18 Costa Negra
#version 1
#group Sobrevivência Guia (A)
#subgroup RXP Sobrevivência Guia 1-20
--#defaultfor !NightElf
#next 18-19 Loch Modan

step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .accept 3524 >>Aceite Deixa a água me levar
step << !NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
	.target Caylais Moonfeather
    .goto Darkshore,36.336,45.574
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
step << !NightElf
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaussiy|r
    .home >>Defina sua Pedra de Regresso para Auberdine
    .target Innkeeper Shaussiy
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >>Viaje escada acima em direção a |cRXP_FRIENDLY_Xafetim Manigiro|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2118 >>Aceite Terras Pestilentas
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Aceite Uma grande ameaça?
    .target Terenthis
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >>Aceite Vara de canoeiro, prefere pescar
    .turnin 1141 >>Entregue Vara de canoeiro, prefere pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >>Mate os |cRXP_ENEMY_Pygmy Tide Crawlers|r e os |cRXP_ENEMY_Young Reef Crawlers|r. Saqueie-os pelas suas |cRXP_LOOT_Pernas|r
    >>Talvez seja necessário entrar na água para encontrá-los
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>Pegue o |cRXP_PICK_Beached Sea Criatura|r pelos |cRXP_LOOT_Sea Criatura Ossos|r
    .complete 3524,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >>Descubra o Acampamento Furbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Esperança] |cRXP_WARN_em um|r |cRXP_ENEMY_Ursocardo Raivoso|r
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >>Mate os |cRXP_ENEMY_Pygmy Tide Crawlers|r e os |cRXP_ENEMY_Young Reef Crawlers|r. Saqueie-os pelas suas |cRXP_LOOT_Pernas|r
    >>Talvez seja necessário entrar na água para encontrá-los
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .turnin 983 >>Entregue Caixazorra 827
step
#map Darkshore
	#era/som
	.goto Felwood,19.13,21.39
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .accept 1001 >>Aceite Buzzbox 411
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    .turnin 3524 >>Entregue Deixa a água me levar
    .accept 4681 >>Aceite Deixa a água me levar
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >>Caminhe para |cRXP_FRIENDLY_Cerellean Garralva|r no cais
step
#map Darkshore
    .goto Felwood,18.10,18.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .accept 963 >>Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >>Caminhe até o final do cais, depois pule na água
step
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Abate |cRXP_ENEMY_Darkshore Threshers|r. Saqueie-os pelos seus |cRXP_LOOT_Olhos|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Saqueie a |cRXP_PICK_Skeletal Tartaruga Marinha|r para a |cRXP_LOOT_Carcaça de Tartaruga Marinha|r
    .complete 4681,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >>Aceite Cave Mushrooms
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .accept 4811 >>Aceite O Cristal Vermelho
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2118 >>Entregue Terras Pestilentas
    .accept 2138 >>Aceite Purificação dos infectados
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 984 >>Entregue Uma grande ameaça?
    .accept 985 >>Aceite Uma grande ameaça?
    .accept 4761 >>Aceite Trovejius Tecevento
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
    .accept 958 >>Aceite Ferramentas dos Altaneiros
    .accept 954 >>Aceite Bashal'Aran
step
	#era/som
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    >>Abate |cRXP_ENEMY_Darkshore Threshers|r. Saqueie-os pelos seus |cRXP_LOOT_Olhos|r
    .complete 1001,1
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,38.95,29.36,30 >>Nade para o navio naufragado Prateado Dawning
step
#map Darkshore
    .goto Darkshore,38.95,29.36,10,0
    .goto Felwood,20.94,1.49
    >>|cRXP_WARN_Entre no navio naufragado Prateado Dawning pelo casco quebrado no fundo. Tenha certeza de que você tem uma barra de respiração completa antes de mergulhar e entrar|r
    >>Pegue a |cRXP_LOOT_Silver Dawning's Caixa-forte|r no chão
    .complete 982,1
step
    #completewith next
    .goto Darkshore,40.30,27.56,30 >>Nade para o navio naufragado Bruma Véu
step
    #label MistVeil
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.63,27.45
    >>|cRXP_WARN_Entre no navio naufragado Bruma Véu pelo casco quebrado no fundo. Tenha certeza de que você tem uma barra de respiração completa antes de mergulhar e entrar|r
    >>Pegue a |cRXP_LOOT_Mist Véu's Caixa-forte|r no chão
    .complete 982,2
step
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83
    >>Abate os |cRXP_ENEMY_Darkshore Threshers|r. Saqueie-os para obter seus |cRXP_LOOT_Olhos|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
	#era/som
    .goto Felwood,25.19,1.29
    >>Clique no |cRXP_PICK_Buzzbox 411|r no chão
    .turnin 1001 >>Vire para Buzzbox 411
    .accept 1002 >>Aceite NO TRANSLATION FOUND TO THIS ELEMENT
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4723 >>Aceite Beached Sea Criatura - Missão
step << Druid
    #completewith cure1
    >>Colete 5 |T134187:0|t[Earthroot] durante as missões
    .collect 2449,5,6123,1
step
    #completewith Ameth
    >>Abate |cRXP_ENEMY_Florestruzes|r e |cRXP_ENEMY_Florestruz Filhotes|r. Saque-os pela sua |cRXP_LOOT_Carne Florestruz|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #era/som
    #completewith Ameth
    >>Abate |cRXP_ENEMY_Espreitalunas|r e |cRXP_ENEMY_Espreitaluna Nanico|r. Saque-os pelas suas |cRXP_LOOT_Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith bears1
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,44.18,20.60
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4725 >>Aceite Tartaruga Marinha Encalhada
step
    .goto Darkshore,50.81,25.50
    .use 12350 >>Use o [Tubo de Amostragem Vazio] na base do **Rio Fontescarpa**
    .complete 4762,1
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,60 >>Viaje para Bashal'Aran
step
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r no caminho|r
    .turnin 954 >>Entregue Bashal'Aran
    .accept 955 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>Abate os |cRXP_ENEMY_Wild Grells|r e os |cRXP_ENEMY_Vile Sprites|r. Saque-os para obter seus |cRXP_LOOT_Earrings|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >>Entregue Bashal'Aran
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>Abate o |cRXP_ENEMY_Sátiro Deth'ryll|r. Saque-os para obter o |cRXP_LOOT_Moonstone Seal|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
    .accept 957 >>Aceite Bashal'Aran
    .target Asterion
step << !NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Abate |cRXP_ENEMY_Luniscante|r. Saque-os pelos seus |T132832:0|t[|cRXP_LOOT_Pequenos Ovos|r]
    >>|cRXP_WARN_Você subirá|r |T133971:0|t[Culinária]|cRXP_WARN_ para 10 mais tarde usando|r |T132832:0|t[|cRXP_LOOT_Pequenos Ovos|r]
    .collect 6889,10,2178,1,0x21,cooking -- Small Egg
    >>Pegue |cRXP_PICK_O Cristal Vermelho|r
    .complete 4811,1
step << NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Vá para |cRXP_PICK_O Cristal Vermelho|r
    .complete 4811,1
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Abate |cRXP_ENEMY_Luniscante|r. Saque-os pelos seus |T132832:0|t[|cRXP_LOOT_Pequenos Ovos|r]
    .collect 6889,10,2178,1,0x20,cooking -- Small Egg
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    #completewith next
    .goto Darkshore,40.30,59.70,70 >>Viaje para o sul até a |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r em Ameth'Aran
step
    #label Ameth
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >>Aceite A queda de Ameth’Aran
step
    #completewith TheLay
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    >>|cRXP_ENEMY_Anaya Correalba|r |cRXP_WARN_patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #completewith TheLay
    >>Mate |cRXP_ENEMY_Altaneira Amaldiçoada|r, |cRXP_ENEMY_Altaneira Ululante|r e |cRXP_ENEMY_Altaneiro Contorcido|r. Saqueie-os para obter |cRXP_LOOT_Relíquias|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >>Clique em |cRXP_PICK_A Queda de Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Clique na |cRXP_PICK_Chama Antiga|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Clique em |cRXP_PICK_A Fundação de Ameth'Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
    #completewith next
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    >>|cRXP_ENEMY_Anaya Correalba|r |cRXP_WARN_patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Mate |cRXP_ENEMY_Altaneira Amaldiçoada|r, |cRXP_ENEMY_Altaneira Ululante|r e |cRXP_ENEMY_Altaneiro Contorcido|r. Saqueie-os para obter |cRXP_LOOT_Relíquias|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    >>|cRXP_ENEMY_Anaya Correalba|r |cRXP_WARN_patrulha Ameth'Aran. Ela tem um tempo de respawn longo; se não estiver disponível agora, você pode pular este passo|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
step
    #era/som
    #completewith ReturnAuber
    >>Abate |cRXP_ENEMY_Espreitalunas|r e |cRXP_ENEMY_Espreitaluna Nanico|r. Saque-os pelas suas |cRXP_LOOT_Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith BearComplete
    >>Abate os |cRXP_ENEMY_Foreststriders|r e os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os para obter suas |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #completewith Beached4728
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    >>Mate |cRXP_ENEMY_Desbravador Bosquenero|r e |cRXP_ENEMY_Xamã Bosquenero|r
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    .complete 985,1 -- Blackwood Pathfinder
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker
    .mob +Blackwood Windtalker
step
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 16 >>Suba até o nível 16

step
#map Darkshore
    .goto Felwood,19.64,39.52
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
step
#map Darkshore
    #label Beached4728
    .goto Felwood,18.41,49.43
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4728 >>Aceite Beached Sea Criatura - Missão
step
    #label BearComplete
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Abate |cRXP_ENEMY_Florestruzes|r e |cRXP_ENEMY_Florestruz Filhotes|r. Saque-os pela sua |cRXP_LOOT_Carne Florestruz|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
#map Darkshore
    #label ReturnAuber
    #completewith ManyBeached
    .goto Felwood,18.50,19.87,100 >>Viaje para Auberdine
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .accept 1138 >>Aceite Fruit of the Sea
step
#map Darkshore
    #label ManyBeached
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4723 >>Entregue a Criatura Marinha Encalhada
    .turnin 4728 >>Entregue a Criatura Marinha Encalhada
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4725 >>Entregue Tartaruga Marinha Encalhada
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >>Caminhe para |cRXP_FRIENDLY_Cerellean Garralva|r no cais
step
#map Darkshore
	.isQuestComplete 963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
	.target Cerellean Whiteclaw
    .goto Felwood,18.10,18.48
    .turnin 963 >>Entregue Amor Eterno
step << !NightElf !Mage !Paladin !Warlock
    .goto Darkshore,33.17,40.17,40,0
    .goto Darkshore,33.17,40.17,0
    .zone Teldrassil >>Pegue o barco para Darnassus
    .zoneskip Darnassus
step << !NightElf !Mage !Paladin !Warlock
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .trainer >>Treine suas magias de classe
    .target Jocaste
step << !NightElf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jandria|r
    .goto Darnassus,37.901,82.742
    .trainer >>Treine suas magias de classe
    .target Jandria
step << !NightElf Warrior
    .goto Darnassus,58.945,35.336
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darnath Lâmina Cantante|r
    .trainer >>Treine suas magias de classe
    .target Darnath Bladesinger
step << !NightElf Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r dentro da casa-árvore
    .trainer >>Treine suas magias de classe
    .target Syurna
step << !NightElf Hunter/!NightElf Warrior
    #sticky
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >>Treine Arcos
    .train 227 >>Treine Cajados
    .target Ilyenia Moonfire
step << !NightElf !Mage !Paladin !Warlock
    .goto Darnassus,30.7,41.3,15 >>Pegue o portal roxo de volta para Rut'theran
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << !NightElf !Mage !Paladin !Warlock
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
step
    #completewith next
    .goto Darkshore,38.109,41.170,5,0
    .goto Darkshore,37.512,41.674
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    +Compre |T134059:0|t[Temperos Suaves]
    >>|cRXP_WARN_Use the|r |T134059:0|t[Temperos Suaves] |cRXP_WARN_and your|r |T132832:0|t[Pequenos Ovos] |cRXP_WARN_para fazer Ovos Assados com Ervas. Faça isso até que sua Culinária tenha atingido o nível 10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    #completewith ezstrider
    +|cRXP_WARN_Use sua|r |T133971:0|t[Culinária] |cRXP_WARN_profissão para fazer Herb Baked Eggs. Faça isso até que sua|r |T133971:0|t[Culinária] |cRXP_WARN_atinja o nível 10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .turnin 982 >>Vá para o Oceano Profundo, no Mar Vasto
step
    #label ezstrider
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 958 >>Entregue Ferramentas dos Altaneiros
    .turnin 4762 >>Entregue Rio Fontescarpa
    .accept 4763 >>Aceite Os Corrompidos Bosquenero
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
step
#sticky
#label tube1
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Use o|r |T134865:0|t[Vazio Água Tube] |cRXP_WARN_no Objetos de WotLK|r
    .complete 4812,1
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Use a|r |T133748:0|t[Vazio Purificação Tigela] |cRXP_WARN_no Objetos de WotLK|r
    .collect 12347,1,4763,1
step
#requires tube1
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2138 >>Entregue Purificação dos infectados
    .accept 2139 >>Aceite Esperança de Tharnariun
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 985 >>Entregue Uma grande ameaça?
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .accept 986 >>Aceite Um Mestre Perdido
    .group
step
#map Darkshore
    .goto Darkshore,39.26,43.04,5,0
    .goto Felwood,21.86,18.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Elissa Brisastral|r nas escadas
    .accept 965 >>Aceite A Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step
    #era/som
    #completewith CliffCave
    >>Abate os |cRXP_ENEMY_Moonstalkers|r e os |cRXP_ENEMY_Espreitaluna Nanico|r. Saque-os para obter as suas |cRXP_LOOT_Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
    #completewith next
    .goto Felwood,31.29,24.14,15 >>Viaje para o The Vermelho Cristal novamente
step
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Clique em |cRXP_PICK_The Vermelho Cristal|r
    .turnin 4812 >>Entregue Como cascatas
    .accept 4813 >>Aceite Fragmentos incrustados
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,70 >>Viaje para |cRXP_FRIENDLY_Astérion|r em Bashal'Aran
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
	.target Asterion
    .goto Felwood,27.70,10.03
    .turnin 957 >>Entregue Bashal'Aran
step << Paladin
    .goto Darkshore,50.74,34.68
	>>Abate os |cRXP_ENEMY_Guerreiros Blackwood|r e os |cRXP_ENEMY_Totêmicos Blackwood|r. Saqueie-os pelos seus |T132889:0|t[Linho]
    >>|cRXP_WARN_Você precisa guardar 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_missão de classe depois|r
	.collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
.group
    .goto Darkshore,50.66,34.94
    >>Abra o |cRXP_PICK_Blackwood Grão Stores|r. Saqueie-o para obter o |cRXP_LOOT_Amostra de Grão Bosquenero|r
    >>|cRXP_WARN_Saqueando isso vai gerar 2 |cRXP_ENEMY_Blackwood Furbolgs|r que vão atacar você. Esteja pronto para lutar contra eles ou ressetá-los|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
.group
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Abate a |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Thistle Cubs|r podem lançar|r |T132152:0|t[Assolar]|cRXP_WARN_, um ataque corpo-a-corpo instantâneo que o paralisa por 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step
.group
    .goto Darkshore,51.83,33.50
    >>Abra o |cRXP_PICK_Blackwood Nut Stores|r. Saque-o para obter a |cRXP_LOOT_Amostra de Castanha Bosquenero|r
    >>|cRXP_WARN_Saqueando isso vai gerar 2 |cRXP_ENEMY_Blackwood Furbolgs|r que vão atacar você. Esteja pronto para lutar contra eles ou ressetá-los|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
.group
    #label Fruit
    .goto Darkshore,52.86,33.41
    >>Abra o |cRXP_PICK_Blackwood Fruit Stores|r. Saqueie-o para obter o |cRXP_LOOT_Amostra de Fruta Bosquenero|r
    >>|cRXP_WARN_Saqueando isso vai gerar 2 |cRXP_ENEMY_Blackwood Furbolgs|r que vão atacar você. Esteja pronto para lutar contra eles ou ressetá-los|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
.group
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >>|cRXP_WARN_Use o|r |T134712:0|t[Cheio Purificação Tigela] |cRXP_WARN_no |cRXP_PICK_Bonfire|r para invocar|r |cRXP_ENEMY_Zabraxxis|r
    .timer 17,O RP Corrompido Bosquenero
    .use 12347
step
.group
    .goto Darkshore,52.38,33.39
    >>Mate o|cRXP_ENEMY_ Xabraxxis|r. Abra a|cRXP_PICK_ Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|cRXP_LOOT_ Talismã da Corrupção|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
.group << !Druid
#map Darkshore
    #label CliffCave
    #completewith next
    .goto Darkshore,54.99,32.04,30,0
    .goto Darkshore,54.99,33.41,15 >>Vá para a Caverna do Rio Cliffspring
step << Druid
    >>Use o [Amostrador Vazio das Cataratas do Rio Penhasco] na água na entrada da Caverna do Rio Penhasco
    .goto Darkshore,54.99,33.41
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
.group
    .goto Darkshore,55.66,34.89
    >>Saque os |cRXP_LOOT_Scaber Stalks|r e os |cRXP_LOOT_Morte Cap|r no chão
    >>|cRXP_WARN_Fique na seção superior. Se o |cRXP_LOOT_Morte Cap|r não está no final do lado superior, desça e pegue um de baixo|r
    >>|cRXP_WARN_Não vire as costas para o centro! O |cRXP_ENEMY_Escamarraio Acenar Rider's|r pode te derrubar!|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
.group
    .isQuestComplete 947
    .goto Darkshore,54.81,32.92,30 >>Saia da Caverna de Cliffspring Rio
step
    #completewith next
    >>Mate |cRXP_ENEMY_Espreitalunas|r e |cRXP_ENEMY_Espreitaluna Nanico|r. Saque-os para suas |cRXP_LOOT_Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 965 >>Entregue A Torre de Althalaxx
    .accept 966 >>Aceite A Torre de Althalaxx
step << !Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Abate os |cRXP_ENEMY_Escuridão Strand Fanatics|r. Saque-os para obter suas |cRXP_LOOT_Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Abate os |cRXP_ENEMY_Escuridão Strand Fanatics|r. Saque-os para obter suas |cRXP_LOOT_Parchments|r e |T132889:0|t[Linho]
    >>|cRXP_WARN_Você precisa guardar 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua|r |T626003:0|t|cFFF48CBAThe Defias Brotherhood|r |cRXP_WARN_missão de classe mais tarde|r
    .complete 966,1 --Worn Parchment (4)
    .collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Dark Strand Fanatic
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 966 >>Entregue A Torre de Althalaxx
    .accept 967 >>Aceite A Torre de Althalaxx
step
.group 3
#map Darkshore
    #completewith next
    .goto Winterspring,6.37,16.66,50 >>Vá para Bruma's Edge
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .accept 2098 >>Aceite Gyromast's Retrieval
    .target Gelkak Gyromast
step
.group 3
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Mate os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saque-os para obter o |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Tenha cuidado com a habilidade |T132152:0|t[Surra] dos |cRXP_ENEMY_Enraivecedora Reef Crawlers|r. Você pode levar 200 de dano instantaneamente de seus ataques corpo a corpo|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
    .goto Darkshore,54.93,12.19
    >>Abate os |cRXP_ENEMY_Brumagris Oracles|r e os |cRXP_ENEMY_Caçamaré Brumagris|r. Saque-os para obter o |cRXP_LOOT_Middle of Gelkak's Chave|r
    >>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Brumagris Oracles|r |T136048:0|t[Raio] dano, eles também podem curar com |T136052:0|t[Onda Curativa]|r
    >>Cuidado, pois os |cRXP_ENEMY_Greymist Tidehunters|r podem lançar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] durante o combate corpo-a-corpo, deixando um dano contínuo que causa 13 de dano a cada 3 segundos durante 30 segundos
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
.group 3
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Mate os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saque-os para obter o |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Tenha cuidado com |cRXP_ENEMY_Enraivecedora Reef Crawlers|r |T132152:0|t[Surra] habilidade. Você pode receber 200 de dano instantaneamente de seus ataques corpo-a-corpo|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Mate os |cRXP_ENEMY_Giant Foreststriders|r. Saque-os para obter o |cRXP_LOOT_Top of Gelkak's Chave|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
.group
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Abate os |cRXP_ENEMY_Espreitaluna Sires|r e os |cRXP_ENEMY_Espreitaluna Matriarchs|r. Saque-os para obter seus |cRXP_LOOT_Pelts|r e |cRXP_LOOT_Presas|r
    >>|cRXP_WARN_Fique atento às|cRXP_ENEMY_ Matriarcas Espreitaluna|r. Elas sempre atacam junto com um|cRXP_ENEMY_ Filhote de Espreitaluna|r ao seu lado|r
    >>|cRXP_ENEMY_Moonstalker Sires|r podem usar |T132090:0|t[Explorar Fraqueza], um ataque de costas causando de 20 a 40 de dano se você virar as costas para eles
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
    .isOnQuest 986,1002
step
.group 3
#map Darkshore
    #requires foreststriders
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .turnin 2098 >>Entregue Gyromast's Retrieval
    .accept 2078 >>Aceite Gyromast's Revanche
    .target Gelkak Gyromast
step
.group 3
#map Darkshore
    .goto Winterspring,5.59,21.09,10,0
    .goto Winterspring,6.37,16.66
    >>Fale com o|cRXP_FRIENDLY_ Mangual-eliminator Pro Giramastro 4100|r para iniciar a escolta
    >>Escolte |cRXP_FRIENDLY_Mangual-eliminator Pro Giramastro 4100|r até |cRXP_FRIENDLY_Gelkak Giramastro|r
    >>Mate o |cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r quando ele ficar hostil
    >>|cRXP_WARN_Esta missão é MUITO difícil|r
    .skipgossip
    .complete 2078,1
    .link https://youtu.be/1WRRmKYBr9s >>https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Clique aqui para um guia em vídeo|r
    .mob The Threshwackonator 4100
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    .target Gelkak Gyromast
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .turnin 2078 >>Entregue Gyromast's Revanche
    .isQuestComplete 2078
step
.group
    #sticky
    .destroy 7442 >>Remova a Chave de Giramastro da mochila
step
#map Darkshore
    .goto Winterspring,3.10,20.90
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4727 >>Aceite Tartaruga Marinha Encalhada
step << Druid
    .goto Darkshore,48.87,11.32
    >>Nade para fora na água
    >>Abra a |cRXP_PICK_Strange Caixa-forte|r. Saque-a para obter o |cRXP_LOOT_Meio-pingente da Agilidade Aquática|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Encrusted Tide Crawlers|r e os |cRXP_ENEMY_Reef Crawlers|r. Saque-os para obter seus |cRXP_LOOT_Caranguejo Chunks|r
    >>|cRXP_WARN_Se os |cRXP_ENEMY_Encrusted Tide Crawlers|r são muito fortes, foque apenas|r |cRXP_ENEMY_Reef Crawlers|r
    >>Tenha cuidado pois Caranguejos de Recife|cRXP_ENEMY_ podem lançar |T132155:0|t[Rasgar Músculos]|r um ataque instantâneo causando 30-55 de dano
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
#map Darkshore
    .goto Winterspring,1.42,26.89
    >>Clique em |cRXP_PICK_Buzzbox 323|r no chão
    .turnin 1002 >>Entregue no NO TRANSLATION FOUND TO THIS ELEMENT
    .accept 1003 >>Aceite Buzzbox 525
step
    .goto Darkshore,51.50,22.26,50,0
    .goto Darkshore,49.66,21.39
    >>Mate |cRXP_ENEMY_Encrusted Tide Crawlers|r e |cRXP_ENEMY_Reef Crawlers|r. Saque-os para suas |cRXP_LOOT_Caranguejo Chunks|r
    >>|cRXP_WARN_Se os |cRXP_ENEMY_Encrusted Tide Crawlers|r forem muito fortes, foque apenas em|r |cRXP_ENEMY_Reef Crawlers|r
    >>Tenha cuidado pois Caranguejos de Recife|cRXP_ENEMY_ podem lançar |T132155:0|t[Rasgar Músculos]|r um ataque instantâneo causando 30-55 de dano
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,50.74,34.68
	.xp 18-2750 >>Farme até ficar 2750 xp atrás do nível 18
    >>Mate os |cRXP_ENEMY_Blackwood Warriors|r e os |cRXP_ENEMY_Blackwood Totemics|r.
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
    #completewith NorthDarkshore
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >>Viaje para Auberdine
    .cooldown item,6948,<0
step
    #completewith next
    .hs >>Use a Pedra de Regresso para Auberdine
    .cooldown item,6948,>0,1
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4727 >>Entregue Tartaruga Marinha Encalhada
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .turnin 1138 >>Entregue Frutos do mar
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >>Entregue Cogumelos da Caverna
    .accept 948 >>Aceite Onu
step
#map Darkshore
    #label NorthDarkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Darkshore,37.70,43.39
    .turnin 4813 >>Entregue Fragmentos incrustados
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >>Entregue A Esperança de Tharnariun
step
.group
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 986 >>Entregue Um Mestre Perdido
    .accept 993 >>Aceite Um Mestre Perdido
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >>Entregue Os Corrompidos Blackwood
step << Druid
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .turnin 6122 >>Entregue The Principal Source
    .target Alanndarian Nightsong
    .accept 6123 >>Aceite Colhendo a Cura
step << Druid
#label cure1
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Mate |cRXP_ENEMY_Luniscante|r. Saque-os para obter seus |T132832:0|t[|cRXP_LOOT_Pequeno Ovos|r]
    >>Você precisará de 50 de culinária para uma missão mais tarde
    .collect 6889,40,90,1,0x21,cooking
    >>Saque |cRXP_LOOT_Fungos Lunares|r no chão por toda as cavernas
    .complete 6123,2
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Abate os |cRXP_ENEMY_Luniscante|r. Saqueie-os para obter seus |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    >>Você vai precisar de 50 de culinária para uma missão mais tarde
    .collect 6889,40,90,1,0x20,cooking
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step << Druid
    >>Termine de coletar 5 |T134187:0|t[Earthroot]
    >>Você pode coletá-los ao longo das montanhas ao leste
    .collect 2449,5,6123,1
step << Druid
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .turnin 6123 >>Entregue Colhendo a Cura
    .accept 6124 >>Aceite Curando os Doentes
    .target Alanndarian Nightsong
step << Druid
    .goto Darkshore,41.0,79.6
    >>|cRXP_WARN_Cabeça para o sul enquanto usa o|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_em|r |cRXP_ENEMY_Sickly Cervo|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .unitscan Sickly Deer
step << Druid
	#completewith next
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.2,30.4
    >>Vá para Vale da Lua
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 6124 >>Entregue Curando os Enfermos
    .accept 6125 >>Aceite Poder over Veneno
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
step << Druid
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip 1
    .fly Teldrassil >>Voe para Vila de Rut’theran
    .target Silva Fil'naveth
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r nos degraus acima
    .turnin 6125 >>Entregue Poder sobre Veneno
step << Druid
    .goto Darnassus,30.7,41.3 >>Pegue o portal roxo de volta para Rut'theran
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
step
    #completewith next
    .goto 1439,32.432,43.744,15 >>Vá para o Cais de Auberdine. Espere o barco de Menethil Harbor
step
    .goto Darkshore,32.44,43.71
    >>|cRXP_WARN_Aumente o nível de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_enquanto espera pelo barco para o Porto de Menethil|r
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 20-21 Costa Negra/Vale Gris
#version 1
#group Sobrevivência Guia (A)
#subgroup RXP Sobrevivência Guia 1-20
#next 21-23 Serra do Espinhaço/Vale Gris

step << Druid
	#completewith next
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
	>>Vá para Vale da Lua
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
step
    #completewith TheryluneE
    .hs >>Use a Pedra de Regresso para Auberdine
    .zoneskip Darkshore
    .zoneskip Ashenvale
step
    .goto Darkshore,37.21,44.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClique em |cRXP_FRIENDLY_The Wanted Poster|r
    .accept 4740 >>Aceite Procurado: Lodofundo!
step
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >>Aceite Cave Mushrooms
step
    .goto Darkshore,37.44,41.83
    .target Archaeologist Hollee
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .accept 4763 >>Aceite Os Corrompidos Bosquenero
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Use o|r |T133748:0|t[Vazio Purificação Tigela] |cRXP_WARN_nos Objetos de WotLK|r
    .collect 12347,1,4763,1
step
    .goto Darkshore,38.326,43.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 3765 >>Entregue A Corrupção no Estrangeiro
    .target Gershala Nightwhisper
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .accept 2139 >>Aceite Esperança de Tharnariun
step
    .goto Darkshore,50.66,34.94
    >>Abra o |cRXP_PICK_Blackwood Grão Stores|r. Saqueie-o para obter o |cRXP_LOOT_Amostra de Grão Bosquenero|r
    >>|cRXP_WARN_Saqueando isso vai gerar 2 |cRXP_ENEMY_Blackwood Furbolgs|r que vão atacar você. Esteja pronto para lutar contra eles ou ressetá-los|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Abate a |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Thistle Cubs|r podem lançar|r |T132152:0|t[Assolar]|cRXP_WARN_, um ataque corpo-a-corpo instantâneo que o paralisa por 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step
    .goto Darkshore,51.83,33.50
    >>Abra o |cRXP_PICK_Blackwood Nut Stores|r. Saque-o para obter o |cRXP_LOOT_Amostra de Castanha Bosquenero|r
    >>|cRXP_WARN_Saqueando isso vai gerar 2 |cRXP_ENEMY_Blackwood Furbolgs|r que vão atacar você. Esteja pronto para lutar contra eles ou ressetá-los|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
    #label Fruit
    .goto Darkshore,52.86,33.41
    >>Abra o |cRXP_PICK_Blackwood Fruit Stores|r. Saqueie-o para obter o |cRXP_LOOT_Amostra de Fruta Bosquenero|r
    >>|cRXP_WARN_Saqueando isso vai gerar 2 |cRXP_ENEMY_Blackwood Furbolgs|r que vão atacar você. Esteja pronto para lutar contra eles ou ressetá-los|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >>|cRXP_WARN_Use o|r |T134712:0|t[Cheio Purificação Tigela] |cRXP_WARN_no |cRXP_PICK_Bonfire|r para invocar|r |cRXP_ENEMY_Zabraxxis|r
    .timer 17,O RP Corrompido Bosquenero
    .use 12347
step
    .goto Darkshore,52.38,33.39
    >>Mate o|cRXP_ENEMY_ Xabraxxis|r. Abra a|cRXP_PICK_ Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|cRXP_LOOT_ Talismã da Corrupção|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto Darkshore,55.66,34.89
    >>Saque os |cRXP_LOOT_Scaber Stalks|r e os |cRXP_LOOT_Morte Cap|r no chão
    >>|cRXP_WARN_Fique na seção superior. Se o |cRXP_LOOT_Morte Cap|r não estiver no final do lado superior, desça e pegue um de baixo|r
    >>|cRXP_WARN_Não dê as costas para o centro! |cRXP_ENEMY_Escamarraio Acenar Rider's|r conseguem empurrá-lo para trás!|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
--TODO: Add logout skip video
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >>Entregue Os Corrompidos Blackwood
step
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >>Entregue Cogumelos da Caverna
    .accept 948 >>Aceite Onu
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >>Entregue A Esperança de Tharnariun
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .accept 986 >>Aceite Um Mestre Perdido
step
    #completewith moonstalkers
    >>Abate os |cRXP_ENEMY_Espreitaluna Sires|r e os |cRXP_ENEMY_Espreitaluna Matriarchs|r. Saque-os para seus |cRXP_LOOT_Pelts|r e suas |cRXP_LOOT_Presas|r
    >>|cRXP_WARN_Fique atento às|cRXP_ENEMY_ Matriarcas Espreitaluna|r. Elas sempre atacam junto com um|cRXP_ENEMY_ Filhote de Espreitaluna|r ao seu lado|r
    >>|cRXP_ENEMY_Moonstalker Sires|r podem usar |T132090:0|t[Explorar Fraqueza], um ataque de costas causando de 20 a 40 de dano se você virar as costas para eles
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
	#era/som
    #completewith Murkdeep
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Mate os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Scalps|r
    >>Tenha cuidado pois eles lançam |T132152:0|t[Assolar], um ataque instantâneo causando 20-40 de dano e |cRXP_WARN_arremessando você para baixo por 2s|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
#map Darkshore
    #completewith OnuGrove
    .goto Felwood,27.00,55.59,80 >>Viaje para o Bosque dos Antigos
step
#map Darkshore
    #label OnuGrove
    .goto Felwood,27.00,55.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 952 >>Entregue no Bosque dos Anciões << NightElf
    .turnin 948 >>Entregue em Onu
    .accept 944 >>Aceite A Foice do Mestre
    .target Onu
step
    #completewith next
    #label MasterG
    .goto Darkshore,38.54,86.05,60 >>Voe para The Master's Glaive
step
#label moonstalkers
    .goto Darkshore,38.54,86.05
    >>Descubra a Clareira do Mestre
    >>|cRXP_ENEMY_Crepúsculo Thugs|r |cRXP_WARN_podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Crepúsculo Disciples|r |cRXP_WARN_lançam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma de 3 segundos|r |T135915:0|t[Cura]
    .complete 944,1
step
    #completewith next
    .cast 5809 >>Use o [Frasco de Vidência] e coloque-o no chão
    .use 5251
step
    .goto Darkshore,38.54,86.05
    .use 5251 >>Clique em |cRXP_PICK_Vidência Tigela|r
    .turnin 944 >>Volte a The Master's Glaive
    .accept 949 >>Aceite O Acampamento do Crepúsculo
    >>|cRXP_ENEMY_Crepúsculo Thugs|r |cRXP_WARN_podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Crepúsculo Disciples|r |cRXP_WARN_lançam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma de 3 segundos|r |T135915:0|t[Cura]
step
    .goto Ashenvale,22.24,2.52
    >>Clique no |cRXP_PICK_Crepúsculo Tomo|r
    .turnin 949 >>Entregue O Acampamento do Crepúsculo
    .accept 950 >>Aceite Retorno a Onu
    >>|cRXP_ENEMY_Crepúsculo Thugs|r |cRXP_WARN_podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Crepúsculo Disciples|r |cRXP_WARN_lançam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma de 3 segundos|r |T135915:0|t[Cura]
step
    .goto Ashenvale,22.36,3.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a|cRXP_FRIENDLY_ Therylune|r. Isso iniciará uma escolta
    >>|cRXP_WARN_Pule este passo se ela não estiver lá|r
    >>|cRXP_ENEMY_Crepúsculo Thugs|r |cRXP_WARN_podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Crepúsculo Disciples|r |cRXP_WARN_lançam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma de 3 segundos|r |T135915:0|t[Cura]
    .accept 945 >>Aceite A Fuga de Therylune
    .target Therylune
step
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escolte a|cRXP_FRIENDLY_ Therylune|r para fora da Clareira do Mestre|r
    >>|cRXP_ENEMY_Crepúsculo Thugs|r |cRXP_WARN_podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Crepúsculo Disciples|r |cRXP_WARN_usam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma de 3 segundos|r |T135915:0|t[Cura]
    .complete 945,1 -- Escort Therylune
    .isOnQuest 945
step
    .destroy 5251 >>Destrua o |T134715:0|t[Frasco de Vidência]. Você não precisa mais dele
step
    .goto Darkshore,39.3,91.8,60,0
    .goto Darkshore,37.38,91.87,100,0
    .goto Darkshore,38.96,80.07,100,0
    .goto Darkshore,43.82,82.08,100,0
    .goto Darkshore,38.96,80.07,0
	.goto Darkshore,39.3,91.8
    >>Mate os |cRXP_ENEMY_Espreitaluna Sires|r e os |cRXP_ENEMY_Espreitaluna Matriarchs|r. Saque-os para conseguir seus |cRXP_LOOT_Pelts|r e |cRXP_LOOT_Presas|r
    >>|cRXP_WARN_Fique atento às|cRXP_ENEMY_ Matriarcas Espreitaluna|r. Elas sempre atacam junto com um|cRXP_ENEMY_ Filhote de Espreitaluna|r ao seu lado|r
    >>|cRXP_ENEMY_Moonstalker Sires|r podem usar |T132090:0|t[Explorar Fraqueza], um ataque de costas causando de 20 a 40 de dano se você virar as costas para eles
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
#map Darkshore
    #sticky
    #label prospector
    .goto Felwood,18.08,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    .turnin 729 >>Entregue The Absent Minded Prospector
    .target Prospector Remtravel
step
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    >>Isso iniciará uma escolta
    .accept 731,1 >>Aceite O Prospector Distraído
    >>|cRXP_WARN_Esta missão é MUITO difícil. Pule este passo se você não conseguir encontrar um grupo ou fazer solo|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >>https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Escolte o|cRXP_FRIENDLY_ Prospector Trilheiro|r pela Escavação|r
    >>|cRXP_WARN_Esta missão é MUITO difícil. Pule este passo se você não conseguir encontrar um grupo ou fazer solo|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >>https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .complete 731,1
    .isOnQuest 731
step
    .goto Ashenvale,13.97,4.10
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4733 >>Aceite Beached Sea Criatura - Missão
    >>|cRXP_WARN_Esta missão pode ser MUITO difícil. Enfrente os |cRXP_ENEMY_Murlocs|r um de cada vez, caso contrário você pode atacar vários ao mesmo tempo|r
    .link https://youtu.be/lfQM3Q-Ag5A >>https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Clique aqui para um guia em vídeo|r
step
    .goto Ashenvale,13.93,2.01
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step
#map Darkshore
    .goto Felwood,13.47,64.01
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step
#map Darkshore
    .goto Felwood,14.62,60.72
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4730 >>Aceite Beached Sea Criatura - Missão
step
    #label Murkdeep
    .goto Darkshore,36.64,76.53
    >>Abate os |cRXP_ENEMY_Guerreiros Brumagris|r e os |cRXP_ENEMY_Caçadores Brumagris|r no acampamento
    >>|cRXP_WARN_Vá para a Fogueira no centro do acampamento para invocar|r o |cRXP_ENEMY_Lodofundo|r
    >>Abate o |cRXP_ENEMY_Lodofundo|r. Ele entrará correndo da água
    .complete 4740,1
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
	#era/som
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    #optional
    >>Mate os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Scalps|r
    >>Tenha cuidado pois eles lançam |T132152:0|t[Assolar], um ataque instantâneo causando 20-40 de dano e |cRXP_WARN_arremessando você para baixo por 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #era/som
    .goto Darkshore,41.389,80.565
    >>Clique no |cRXP_PICK_Buzzbox 525|r no chão
    .turnin 1003 >>Vá a Buzzbox 525
    .isOnQuest 1003
step
.group
    #completewith next
    .goto Darkshore,45.00,85.30,30 >>Vá em direção a |cRXP_FRIENDLY_Volcor|r na Caverna
step
.group
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >>Entregue Um Mestre Perdido
    .accept 995 >>Aceite Fuga Através da Furtividade
    .timer 20,Fuga Através da Furtividade RP
    .target Volcor
    .isQuestTurnedIn 986
step
.group
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 995,1
    .isQuestTurnedIn 986
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 951 >>Entregue Relíquias de Mathystra
    .isQuestComplete 951
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Retorno a Onu
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r para iniciar a escolta
    >>|cRXP_WARN_Pule este passo se ele não estiver lá. Pode levar até 25 minutos para ele reaparecer|r
	.target Kerlonian Evershade
    .accept 5321 >>Aceite O Adormecido Despertou
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Abra o |cRXP_PICK_Baú de Kerlonian|r. Saqueie-o para obter |T134229:0|t[|cRXP_LOOT_Chifre do Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
step
    #completewith tower
    .zone Ashenvale >>Viaje para o sul até Vale Gris
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escolte |cRXP_FRIENDLY_Kerlonian|r até o Posto da Maestra em Vale Gris|r
    .use 13536 >>|cRXP_WARN_Use o|r |T134229:0|t[|cRXP_LOOT_Chifre do Despertar|r] |cRXP_WARN_quando |cRXP_FRIENDLY_Kerlonian|r adormece perto dele|r
    >>|cRXP_WARN_Evite correr na estrada principal o máximo possível. Inimigos só aparecerão se você estiver na estrada|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Liladris Luneflúvia|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >>Entregue O Adormecido Despertou
    .isQuestComplete 5321
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>Entregue A Torre de Althalaxx
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .accept 970 >>Aceite A Torre de Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>Aceite Cabelo-de-Bathran
    .xp <20,1
step
    #era/som
    .goto Ashenvale,31.25,30.70
    >>Mate os |cRXP_ENEMY_Dark Strand Cultists|r, os |cRXP_ENEMY_Dark Strand Adepts|r, os |cRXP_ENEMY_Dark Strand Enforcers|r e os |cRXP_ENEMY_Dark Strand Excavators|r. Saque-os para o |cRXP_LOOT_Glowing Gema Anímica|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abra os |cRXP_PICK_Feixes de Plantar|r no chão. Saque-os para obter os |cRXP_LOOT_Cabelos de Bathran|r
    >>|cRXP_WARN_Parecem pequenos sacos marrom. Eles podem ser difíceis de ver|r
    .complete 1010,1
    .isOnQuest 1010
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >>Entregue A Torre de Althalaxx
    .accept 973 >>Aceite A Torre de Althalaxx
step
    .goto Ashenvale,31.89,22.53
    .xp 20 >>Suba até o nível 20
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>Aceite Cabelo-de-Bathran
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abra os |cRXP_PICK_Feixes de Plantar|r no chão. Saque-os para obter os |cRXP_LOOT_Cabelos de Bathran|r
    >>|cRXP_WARN_Parecem pequenos sacos marrom. Eles podem ser difíceis de ver|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >>Entregue Cabelo-de-Bathran
    .accept 1020 >>Aceite A Cura de Orendil
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >>Entregue A Torre de Althalaxx
    .accept 973 >>Aceite A Torre de Althalaxx
step
    #completewith next
    .goto Ashenvale,25.49,39.59,25,0
    .goto Ashenvale,25.98,41.72,25,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.40,48.00
    .subzone 415 >>Vá para Astranaar
step
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>>Aprenda a rota de voo para Astranaar
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shindrell Fogofugaz|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .accept 1008 >>Aceite The Zoram Strand
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a Sentinela Tenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >>Aceite Em Guarda nas Montanhas Cristarrubra
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >>Aceite Jornada ao Pico das Montanhas Cristarrubra
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >>Aceite A Purificação de Raene
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Kimlya|r
    .home >>Defina sua Pedra de Regresso para Astranaar
    .target Innkeeper Kimlya
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1020 >>Entregue A Cura de Orendil
step
.dungeon WC
    #completewith TravelRatchet
    .goto Ashenvale,20.31,42.33,0
    .zone The Barrens >>Mate |cRXP_ENEMY_Murlocs Cuspe-Sal|r enquanto procura um grupo para as Cavernas Uivantes. A localização deles está marcada no seu mapa
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >>Viaje até Vila Catraca, nos Sertões. Siga a seta para evitar as |cRXP_ENEMY_Guardas dos Sertões|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >>Aprenda a rota de voo para Ponto de Ancoragem
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_o Operador de Grua Mafuá|r
    .accept 959 >>Aceite Encrencas nas docas
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >>Viaje para as Cavernas do Lamento. Suba a montanha e depois desça na caverna escondida acima da entrada das Cavernas do Lamento. Siga a seta para chegar até|cRXP_FRIENDLY_ Nalpak|r e |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >>Aceite Pelegos anormais
    .target +Nalpak
    .goto 1414,51.912,55.422 -- Nalpak
    .accept 1487 >>Aceite Erradicação de Anormais
    .goto 1414,51.918,55.444 -- Ebru
    .target +Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    >>Isso pode ser concluído DENTRO e FORA das Cavernas do Lamento
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85
    >>Mate |cRXP_ENEMY_Maluc Insano|r. Saqueie-o para obter o |cRXP_LOOT_Xerez de 99 Anos|r
    >>|cRXP_ENEMY_Maluc Insano|r pode surgir em alguns locais
    >>Esta missão é concluída FORA da Caverna Ululante
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414,52.37,55.20
    +Entre nas Cavernas do Lamento
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Mate |cRXP_ENEMY_Lorde Cobrahn|r, |cRXP_ENEMY_Lorde Pythas|r, |cRXP_ENEMY_Lorde Serpentis|r e |cRXP_ENEMY_Lady Anacondra|r, depois fale com o |cRXP_FRIENDLY_Discípulo de Naralex|r no início da instância para iniciar a escolta
    >>Acompanhe o |cRXP_FRIENDLY_Muyoh <Discípulo de Naralex>|r pela Caverna Ululante e complete o ritual de despertar
    >>Mate |cRXP_ENEMY_Mutanus, o Devorador|r. Saqueie-o para obter o |T135229:0|t[|cRXP_LOOT_Estilhaço Chamejante|r]
    >>Use o [|cRXP_WARN_Fragmento Brilhante|cRXP_LOOT_] |rpara iniciar a missão|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >>Aceite A lasca faiscante
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    >>Isso pode ser concluído DENTRO e FORA das Cavernas do Lamento
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >>Viaje para Vila Catraca. Em breve, você entregará as missões acima relacionadas às Cavernas Ululantes
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_o Operador de Grua Mafuá|r
    .turnin 959 >>Entregue Encrencas nas Docas
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >>Suba a montanha íngreme acima das Cavernas do Lamento. Siga a seta
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Falla Vento Sábio|r
    .turnin 6981 >>Entregue A lasca faiscante
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >>Desça na caverna escondida acima da entrada das Cavernas do Lamento. Siga a seta para chegar até |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >>Entregue Pelegos anormais
    .goto 1414,51.912,55.422 -- Nalpak
    .target +Nalpak
    .turnin 1487 >>Entregue Erradicação de Anormais
    .goto 1414,51.918,55.444 -- Ebru
    .target +Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >>Entregue Erradicação de Anormais
    .goto 1414,51.918,55.444 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >>Entregue Pelegos anormais
    .goto 1414,51.912,55.422 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >>Use a Pedra de Regresso para Astranaar
]])
