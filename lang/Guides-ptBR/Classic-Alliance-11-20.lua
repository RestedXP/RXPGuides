if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

----Start of <1.5x Westfall----
----Night Elves and Hunters stay in Darkshore and Grind----

RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#name 13-15 Cerro Oeste
#displayname 14-15 Cerro Oeste << Dwarf/Gnome
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#next 14-16 Costa Negra
#defaultfor !NightElf !Hunter

step
    #sticky
    #optional
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >>Viaje até Cerro Oeste
step
    .goto Westfall,59.95,19.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r
    .accept 64 >>Aceite A Herança Esquecida
    .target Farmer Furlbrow
step
    .goto Westfall,59.92,19.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vera Taturana|r
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .accept 151 >>Aceite A Pobre Velhinha Brancurinha
    .target Verna Furlbrow
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
step << Gnome/Dwarf
    #completewith next
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
    #xprate <1.2
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
    >>|cRXP_BUY_Compre comida/água se necessário|r
    .vendor >>|T133918:0|t[Pargo-da-lama Bocalonga] |cRXP_WARN_é muito barato|r
	.target Innkeeper Heather
step
	#completewith GnollPaws
    >>Abra o |cRXP_PICK_Saco de Aveia|r no chão. Saqueie-o para obter o |cRXP_LOOT_Handful of Oats|r
    >>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
    >>Mate os |cRXP_ENEMY_Young Goretusks|r e os |cRXP_ENEMY_Young Fleshrippers|r. Saque-os para seus |cRXP_LOOT_Vulture Carne|r, |cRXP_LOOT_Snouts|r e |cRXP_LOOT_Livers|r
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
    >>Mate os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os para obter a |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
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
    .goto Westfall,40.4,52.7,75 >>Vá para Alexston's Farmstead, |cRXP_WARN_trabalhe nos outros objetivos de missão enquanto se move|r
step
    #sticky
    #completewith bennytime
    >>Mate os |cRXP_ENEMY_Harvest Watchers|r nos campos conforme passa
    >>Saque-os para seus |cRXP_LOOT_Okra|r e |cRXP_LOOT_Flasks of Oil|r
    .mob Harvest Watcher
    .complete 9,1 --Havest Watcher slain (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto Westfall,36.24,54.52
    >>Abra o |cRXP_PICK_Baú de Alexston|r. Saqueie-o pelo |cRXP_LOOT_A Simple Compass|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    #completewith bennytime
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
    #completewith bennytime
    >>Mate os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saque-os para seus |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto Westfall,50.0,22.6,75 >>Vá para Jansen Stead, |cRXP_WARN_trabalhe nos outros objetivos de missão enquanto se move|r
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>Abra o |cRXP_PICK_Furlbrow's Wardrobe|r. Saqueie-o para obter o |cRXP_LOOT_Furlbrow's Pocket Vigiar|r
    >>|cRXP_WARN_Você pode pegar |cRXP_PICK_Furlbrow's Wardrobe|r de fora se inclinar a câmera corretamente|r
	>>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Benny Blanco|r. Ele bate forte|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    #xprate <1.2
    #completewith next
    >>Mate os |cRXP_ENEMY_Riverpaw Gnolls|r e os |cRXP_ENEMY_Riverpaw Batedores|r. Saqueie-os para obter as |T134297:0|t|cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36
    .goto Westfall,56.40,9.40,0
    >>|cRXP_WARN_Viagem para a costa, mate Gnolls no caminho|r para |T134297:0|t[|cRXP_LOOT_Gnoll Paws|r] se necessário
    >>Mate os |cRXP_ENEMY_Murloc Raiders|r e os |cRXP_ENEMY_Murloc Coastrunners|r. Saque-os para seus |cRXP_LOOT_Olhos|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    #xprate <1.2
    #label GnollPaws
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    .goto Westfall,42.82,14.70,0
    .goto Westfall,52.36,14.82,0
    .goto Westfall,56.81,13.30,0
    >>Mate os |cRXP_ENEMY_Riverpaw Gnolls|r e os |cRXP_ENEMY_Riverpaw Batedores|r. Saque-os para seus |T134297:0|t|cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >>Abra o |cRXP_PICK_Saco de Aveia|r no chão. Saque-os para o |cRXP_LOOT_Handful of Oats|r
	>>|cRXP_WARN_Você pode geralmente encontrá-los perto de cerca de fazenda ou construções|r
	.complete 151,1 --Handful of Oats (8)
step << Human Warlock
    #xprate <1.2
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .turnin 64 >>Entregue A Herança Esquecida
    .turnin 184 >>Entregue Escritura do Taturana
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >>Entregue Poor Velha Brancurinha
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step << Human Warlock
    #xprate >1.1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .turnin 64 >>Entregue A Herança Esquecida
    .turnin 184 >>Entregue Escritura do Taturana
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >>Entregue Poor Velha Brancurinha
    .target +Verna Furlbrow
    .goto Westfall,59.92,19.42
    .isOnQuest 184
step
    #xprate <1.2
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .turnin 64 >>Entregue A Herança Esquecida
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >>Entregue Poor Velha Brancurinha
    .target +Verna Furlbrow
    .goto Westfall,59.92,19.42
step
    #xprate >1.1
    #optional << Human Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .turnin 64 >>Entregue A Herança Esquecida
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >>Entregue Poor Velha Brancurinha
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    #completewith SaldeanVendor
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .vendor >>|cRXP_BUY_Venda lixo|r
    >>|cRXP_WARN_NÃO venda|r |T133884:0|t[Murloc Olhos], |T135997:0|t[Goretusco Snouts], |T134341:0|t[Goretusco Livers] |cRXP_WARN_ou|r |T133972:0|t[Stringy Vulture Carne]
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >>Entregue The Matando Fields
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .goto Westfall,56.40,30.50
    .turnin 22 >>Entregue Empadão de Fígado de Goretusco
    .turnin 38 >>Entregue Ensopado de Cerro Oeste
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .goto Westfall,56.40,30.50
    .turnin 22 >>Entregue Empadão de Fígado de Goretusco
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .goto Westfall,56.40,30.50
    .turnin 38 >>Entregue Ensopado de Cerro Oeste
    .isQuestComplete 38
    .target Salma Saldean
  step
    .isQuestAvailable 38
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>Mate os |cRXP_ENEMY_Harvest Watchers|r. Saqueie-os para seus |cRXP_LOOT_Okra|r e |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
step
    .isQuestTurnedIn 38
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
    >>Mate os |cRXP_ENEMY_Harvest Watchers|r. Saqueie-os para seus |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
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
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >>Entregue Ensopado de Cerro Oeste
    .turnin 22 >>Entregue Empadão de Fígado de Goretusco
step
    .goto Westfall,50.0,45.4
    >>Complete as |cRXP_ENEMY_Defias|r missões na área marcada no seu mapa. |cRXP_WARN_É uma área de ressurgimento dinâmico; inimigos ressurgem continuamente|r
    >>Mate os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os para obter a |T133694:0|t|cRXP_LOOT_Red Couro Bandanas|r
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
    .goto Westfall,56.33,47.52
    .turnin 12 >>Entregue The People's Militia
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >>Aceitar A Irmandade Défias
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Danuvin|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >>Entregue Patrulhando Cerro Oeste
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    >>|cRXP_BUY_Compre um|r [Simple Wood] |cRXP_BUY_and a|r [Flint and Tinder] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Isto é utilizado para preparar|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em barcos ou bondes para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Quartermaster Lewis
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >>Entregue Vermelho Couro Bandanas
step << Gnome Rogue/Dwarf Rogue
    #completewith next
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
    .money <0.3815
step << Gnome Rogue/Dwarf Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    .vendor 1287 >>|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dela, ou algo melhor da Casa de Leilões, e equipe-a na sua mão secundária|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marcia Weller
step << Gnome Rogue/Dwarf Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    .vendor 1287 >>|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dela|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marcia Weller
step << Gnome Rogue/Dwarf Rogue
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T133972:0|t[Stringy Vulture Carne]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusco Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusco Liver]
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .isQuestComplete 399
step << Gnome Rogue/Dwarf Rogue
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .turnin 399 >>Entregue Humilde Beginnings
    .target Baros Alexston
    .zoneskip Stormwind City,1
    .isQuestComplete 399
step << Dwarf !Paladin/Gnome
    #label end
    #completewith DarkshoreBoat
    .hs >>Vá para Thelsamar
step << Dwarf !Paladin/Gnome
    #softcore
    #completewith DarkshoreBoat
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Wetlands >>Voe para Pantanal
    .target Thorgrum Borrelson
step << Dwarf !Paladin/Gnome
    #hardcore
    #completewith next
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
step << Human Mage/Human Rogue/Human Warrior/Human Warlock/Human Paladin/Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r << Human Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r << Human Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r << Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r << Human Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r << Human Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r << Human Warlock
    .goto Ironforge,51.1,8.7,15,0 << Human Warlock
    .goto Ironforge,50.343,5.657 << Human Warlock
    .goto Ironforge,65.905,88.405 << Human Warrior
    .goto Ironforge,51.495,15.330 << Human Rogue
    .goto Ironforge,25.207,10.756 << Human Priest
    .goto Ironforge,27.18,8.60 << Human Mage
    .goto Ironforge,23.141,6.149 << Human Paladin
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner << Human Warrior
    .target Fenthwick << Human Rogue
    .target Toldren Deepiron << Human Priest
    .target Dink << Human Mage
    .target Brandur Ironhammer << Human Paladin
    .target Briarthorn << Human Warlock
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r
    .train 2567 >>Treine Arremesso
    .target Bixi Wobblebonk
step << Human Rogue
    #ah
    .goto Ironforge,62.375,88.679
    .vendor >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    +|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dela ou verifique a Casa de Leilões por algo melhor ou mais barato|r
    .target Brenwyn Wintersteel
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Human Rogue
    #ssf
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    +|cRXP_BUY_Compre e equipe uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dela se puder arcar com o custo|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Human Rogue
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre um|r |T135425:0|t[Faca de Arremesso Afiada]
    .collect 3107,100 -- Keen Throwing Knife
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.30
step << Human Rogue
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135425:0|t[Faca de Arremesso Afiada]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.29
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
step << Dwarf Paladin
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Wetlands>>Voe para Pantanal
    .target Gryth Thurden
step
    #hardcore << !Human
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Saia de Altaforja
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>Vá para o local de skip Dun Morogh → Pantanal
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,20,0
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
step << Human
    #softcore
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >>Vá para Dun Morogh -> local de deathskip em Pantanal
step << Human
    #softcore
    .goto Dun Morogh,32.4,29.1,20 >>Siga pela montanha até o local de deathskip
step << Human
    #softcore
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >>Corra direto para fora da borda para o norte e caia. Morra e ressurja no |cRXP_FRIENDLY_Anjo da Cura|r
step << Human
    #softcore
    .goto Wetlands,12.7,46.7,80 >>Nade para Menethil Harbor
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nélio Allen|r
    .vendor 1448 >>|cRXP_WARN_Compre um|r |T133024:0|t[Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Nélio Allen|r não tiver uma|r
	.target Neal Allen
    .bronzetube
step << Human/Dwarf Paladin
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devin Tremulaurora|r
    .vendor 1453 >>|cRXP_WARN_Compre o máximo de|r |T134831:0|t[Cura Potions] |cRXP_WARN_que estão disponíveis|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Devin Tremulaurora|r não tiver nenhuma|r
    .target Dewin Shimmerdawn
step
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>Vá para o cais do barco de Auberdine
    .zoneskip Darkshore
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
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
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
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
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
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
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
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
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
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
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Aumente seu Nível de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Costa Negra se necessário|r
    .zone Darkshore >>Pegue o barco para Costa Negra
]])

----End of <1.5x Westfall----
----Start of Darkshore Part 1----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 14-16 Costa Negra
#displayname 11-16 Costa Negra << NightElf
#displayname 13-16 Costa Negra << Dwarf Hunter
#displayname 15-16 Costa Negra << !NightElf/!Dwarf Hunter
#next 16-19 Costa Negra


-- #displayname 11-16 Darkshore << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod

step
    #label start --hidden step for #include
step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << !NightElf
    #optional
    #completewith BigThreat
    .goto Darkshore,37.04,44.13,0
    >>Pule do barco quando estiver mais próximo de Auberdine
    .subzone 442 >>Nade para Auberdine
step
    #ah
    #optional
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea << !sod/Hunter/Druid
    .accept 1141 >>Aceite Vara de canoeiro, prefere pescar
    .turnin 1141 >>Entregue Vara de canoeiro, prefere pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >>Aceite Vara de canoeiro, prefere pescar
    .turnin 1141 >>Entregue Vara de canoeiro, prefere pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea
    .target Gubber Blump
    .xp <15,1
step << NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_dele. Venda toda a sua outra comida nível 5 ou abaixo|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .turnin 6342 >>Entregue Voo para Auberdine
    .accept 6343 >>Aceite Return to Nessa << Druid sod
    .target Laird
    .xp >15,1 << Warrior/Rogue/Paladin
    .isQuestAvailable 2118
step << NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >>Entregue Voo para Auberdine
    .target Laird
step << !NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_dele. Venda todos seus outros alimentos de nível 5 ou abaixo|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .xp >15,1 << Warrior/Rogue
    .target Laird
    .isQuestAvailable 2118
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaussiy|r no andar de baixo
    .home >>Defina sua Pedra de Regresso para Auberdine
    .target Innkeeper Shaussiy
step
    #optional
    #completewith next
    .goto 1439,36.826,44.150
    .goto 1439,36.688,43.952,8 >>Viaje escada acima em direção a |cRXP_FRIENDLY_Xafetim Manigiro|r
step
    #xprate <1.5
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r no andar de cima
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
step
    #xprate >1.49
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r no andar de cima
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
    .xp >15,1 --XX Skip if 15+
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >>Aceite Cave Mushrooms
    .target Barithras Moonshade
    .xp <12,1
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    #xprate >1.49
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >>Aceite Cave Mushrooms
    .target Barithras Moonshade
step
    #xprate >1.49
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2118 >>Aceite Terras Pestilentas
    .target Tharnariun Treetender
step
    #label BigThreat
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Aceite Uma grande ameaça?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaussiy|r no andar de baixo
    .home >>Defina sua Pedra de Regresso para Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
step << Dwarf Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto Darkshore,40.75,70.49,0
    .goto Darkshore,40.77,78.56,0
    .goto Darkshore,38.21,73.32,0
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40,0
    >>|cRXP_WARN_Mande seu ajudante atacar um |cRXP_ENEMY_Ursocardo|r Assim que seu ajudante for atordoado pelo |cRXP_ENEMY_Ursocardo|r abandone seu ajudante e comece a domá-lo|r
    .tame 2163 >>|cRXP_WARN_Use|r |T132164:0|t[Domar Fera] |cRXP_WARN_em um |cRXP_ENEMY_Ursocardo|r para domá-lo|r
    .target Thistle Bear
step
    #optional
    #completewith FirstWashed
    .goto 1439,43.509,33.207,0
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_em <30% de saúde|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
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
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Nível sua|r |T136065:0|t[Herborismo] |cRXP_WARN_para 15 para poder colher|r |T134187:0|t[Earthroot] |cRXP_WARN_para uma missão de classe importante em breve. Você pode desaprender isso depois|r
    >>|cRXP_WARN_Se você preferir comprar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_da Casa de Leilão mais tarde, pule esta etapa|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Nível seu|r |T136065:0|t[Herborismo] |cRXP_WARN_para 15 para conseguir coletar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_para uma missão de classe importante em breve. Você pode desaprender depois|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #season 0
    #completewith CliffspringEnd
    #requires GatheringQ
    >>Colete|cRXP_WARN_ 5 |T134187:0|t[Earthroot] via |T136065:0|t[Herborismo] e raramente |cRXP_PICK_Battered Chests|r para uma missão de classe futura|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
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
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Esperança] |cRXP_WARN_em um|r |cRXP_ENEMY_Rabid Ursocardo|r |cRXP_WARN_ .Pode ser usado de qualquer alcance desde que você tenha o urso como alvo|r
    >>==NÃO USE O ITEM DA MISSÃO SE NÃO HOUVER UM URSO POR PERTO==
    >>Você pode desperdiçar a armadilha e tornar a missão impossível de concluir Se isso acontecer com você, será necessário retornar ao NPC que dá a missão e pedir outra armadilha
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    #label FurlbogCamp
    .goto Darkshore,38.90,53.59
    >>Corra em direção à borda do acampamento dos Furbolgs
    .complete 984,1 -- Find a corrupt furbolg camp
step << NightElf
    #xprate <1.5
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 11+7300 >>Triture até 7300+/8800 XP
step
    #label invisThistle
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.5
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .turnin 983 >>Entregue Caixazorra 827
    .accept 1001 >>Aceite Buzzbox 411
step
    #xprate >1.49
    #optional << !NightElf/Hunter
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .turnin 983 >>Entregue Caixazorra 827
    .accept 1001 >>Aceite Buzzbox 411 << !sod
    .isQuestComplete 983
step << NightElf !Hunter
    #xprate >1.49
    #optional
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .accept 1001 >>Aceite Buzzbox 411
    .isQuestTurnedIn 983
--XX so NEs can catch up on xp from those that came via menethil
--XX Hunters skip this as they will get better xp/hr grinding furbolgs
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Entregue Deixa a água me levar
    .accept 4681 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>Caminhe para |cRXP_FRIENDLY_Cerellean Garralva|r no cais
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .accept 963 >>Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #season 0,1 << Rogue
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >>Viaje até o final da doca, depois pule na água
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Abate os |cRXP_ENEMY_Darkshore Threshers|r. Saqueie-os por seus |cRXP_LOOT_Thresher Olhos|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>Abra a |cRXP_PICK_Tartaruga Marinha Descarnada|r. Saqueie para obter |cRXP_LOOT_Carcaça de Tartaruga Marinha|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea
    .target Gubber Blump
    .xp <15,1
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.5
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >>Aceite Cave Mushrooms
    .target Barithras Moonshade
step
    #xprate <1.5
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2118 >>Entregue Terras Pestilentas
    .accept 2138 >>Aceite Purificação dos infectados
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
    .accept 985 >>Aceite Uma grande ameaça?
    .accept 4761 >>Aceite Trovejius Tecevento
    .target Terenthis
step << NightElf Warrior/NightElf Rogue
    #sticky
    #season 0
    #label DeepOceanStart
    .goto 1439,38.107,41.165,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
    .target Gorbold Steelhand
    .xp <13,1
step << NightElf Warrior/NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kordram Rochamalho|r e |cRXP_FRIENDLY_Delfrum Barbagulha|r
    .train 2575 >>Aprenda |T134708:0|t[Mineração]
    .target +Kurdram Stonehammer
    .goto Darkshore,38.249,41.008
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target +Delfrum Flintbeard
    .goto Darkshore,38.191,40.935
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135248:0|t [Pedras de Amolar Ásperas] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Warrior/Rogue
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto Darkshore,38.142,41.108
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elisa Manácero|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dela|r
    .target Elisa Steelhand
    .collect 2901,1 -- Mining Pick (1)
    .train 2575,3 --Mining Trained
step << NightElf Warrior/NightElf Rogue
    #optional
    #completewith Bashal1
    .cast 2580 >>|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << !NightElf/!Warrior !Rogue
    #xprate <1.5 --<< !NightElf/Hunter --XX Night Elves do it on 2x to catch up on xp EXCEPT Dwarf/NE Hunters (1x only)
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
    .target Gorbold Steelhand
    .xp <13,1
step
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << NightElf Rogue
    .goto 1439,37.575,40.348
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naram Garralonga|r
    .vendor 4183 >>|cRXP_BUY_Compre um|r |T135640:0|t[Jambiya] |cRXP_BUY_dele se você tiver recursos|r
    .collect 2207,1 -- Jambiya (1)
    .disablecheckbox
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.10
--  .money <0.2390
    .target Naram Longclaw
step
    #optional
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalmond|r dentro
    .vendor 4182 >>|cRXP_BUY_Compre quantas|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_ou|r |T133634:0|t[Bolsa de Couro Marrom] |cRXP_BUY_você precisar dele|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Sharp Flechas] |cRXP_BUY_ou|r |T132384:0|t[Heavy Shots] |cRXP_BUY_dele até sua Bolsa de Setas/Munição estar cheia|r << Hunter
    .target Dalmond
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
    .accept 954 >>Aceite Bashal'Aran
    .accept 958 >>Aceite Ferramentas dos Altaneiros << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
    .accept 954 >>Aceite Bashal'Aran
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa

----Start of NE >1.49x catchup (everyone 1x) Early boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    >>Abate os |cRXP_ENEMY_Darkshore Threshers|r. Saqueie-os por seus |cRXP_LOOT_Thresher Olhos|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    +Pressione Escape, depois vá em -> Opções -> Controles
    >>|cRXP_WARN_Verifique "Ativar a Tecla Interagir" e atribua a opção "Interagir com Alvo" a uma tecla|r
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>==FIQUE ATENTO AO SEU MEDIDOR DE FÔLEGO==
    >>Nade debaixo d’água até a parte externa da traseira do barco
    >>|cRXP_WARN_Na localização da seta, pressione sua tecla de "Interagir com o Alvo" para saquear o|cRXP_LOOT_ Cofre da Aurora Prateada|r pelo lado de fora do barco|r
    >>|cRXP_WARN_Se você não quiser fazer isso, nade debaixo d’água até o piso inferior do barco e saque o|cRXP_LOOT_ Cofre da Aurora Prateada|r por dentro|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5 --<< !NightElf/Hunter
    #loop
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    >>Abate os |cRXP_ENEMY_Darkshore Threshers|r. Saque-os para obter seus |cRXP_LOOT_Thresher Olhos|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4723 >>Aceite Beached Sea Criatura - Missão
    .isOnQuest 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4723 >>Aceite Beached Sea Criatura - Missão
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,41.960,28.616
    >>Clique no |cRXP_PICK_Buzzbox 411|r no chão
    .turnin 1001 >>Vire para Buzzbox 411
    .accept 1002 >>Aceite NO TRANSLATION FOUND TO THIS ELEMENT
    .isQuestComplete 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.960,28.616
    >>Clique em |cRXP_PICK_Buzzbox 411|r no chão
    .accept 1002 >>Aceite NO TRANSLATION FOUND TO THIS ELEMENT
    .isQuestTurnedIn 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AsterionTravel
    .goto 1439,44.190,33.697,0
    >>Mate os |cRXP_ENEMY_Moonstalker Nanico|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001


----End of NE >1.49x catchup (everyone 1x) Early boat section----


 step
    #optional
    #completewith AsterionTravel
    .goto 1439,43.509,33.207,0
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_em <30% de saúde|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #xprate <1.5
    #optional
    #label AsterionTravel
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >>Vá para |cRXP_FRIENDLY_Astérion|r
step
    #xprate >1.49
    #optional
    #label AsterionTravelSoD
    #completewith Bashal1
    .goto 1439,44.376,36.754,20,0
    .goto 1439,44.168,36.289,15 >>Vá em direção a |cRXP_FRIENDLY_Astérion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r no caminho|r
    .turnin 954 >>Entregue Bashal'Aran
    .accept 955 >>Aceite Bashal'Aran
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r no caminho|r
    .turnin 954 >>Entregue Bashal'Aran
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #label Bashal1
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .accept 955 >>Aceite Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 954
    .xp >16,1
--XX if you ding 16 from turnin, skip Bashal Aran qline
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
    .turnin 955 >>Entregue Bashal'Aran
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #completewith MeatFangEgg1
    #optional
    .abandon 955 >>Abandone Bashal'Aran
    .isQuestAvailable 955
step
    #xprate >1.59
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
    >>Eles não possuem reaparecimento dinâmico. Ignore esta etapa se não conseguir encontrar nenhum |cRXP_ENEMY_Sátiro Deth'ryll|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    #xprate <1.59
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
    >>|cRXP_WARN_Esteja ciente de que eles não têm reaparições dinâmicas|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
    .accept 957 >>Aceite Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .accept 957 >>Aceite Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step << NightElf/Dwarf Hunter
    #optional
    #xprate <1.5
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
    .xp 13 >>Triture até o nível 13
step
    #optional
    #label HCHunterEnd --hidden step for #include
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith AmethStart << !NightElf !Hunter !Druid !Warrior
    .goto 1439,43.509,33.207,0
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_em <30% de saúde|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith AmethStart << !NightElf !Hunter !Druid !Warrior
    >>Mate os |cRXP_ENEMY_Moonstalker Nanico|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
step
    #xprate <1.5
    #completewith RedCrystal
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>Isso será usado para evoluir sua [Culinária] até o nível 10 mais tarde
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #xprate <1.5
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>|cRXP_WARN_Isso será usado para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_para 50 depois|r
    >>|cRXP_WARN_Não se desvie para farmar isto agora. Apenas lembre-se de guardar os ovos e comece a pensar quantos aumentos você ainda precisa para alcançar 50 de culinária|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step
    #season 0
    #completewith LateTurtleStart
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>|cRXP_WARN_Isso será usado para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_para 50 depois|r
    >>|cRXP_WARN_Não se desvie para farmar isto agora. Apenas lembre-se de guardar os ovos e comece a pensar quantos aumentos você ainda precisa para alcançar 50 de culinária|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .subzoneskip 442 --Auberdine
    .subzoneskip 447 --Ameth'Aran
step
    #season 0
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Viaje até o |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Tenha cuidado com os dois grupos de 2 |cRXP_ENEMY_Luniscantes Enraivecidos|r a oeste do |cRXP_PICK_Cristal Vermelho Misterioso|r pois os pares mais próximos uns dos outros estão vinculados entre si|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid
    #optional
    #season 0
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >>Entre na caverna da |cRXP_PICK_Moonkin Pedra|r
step << Druid
    #optional
    #season 0
    #completewith Lunaclaw
    .goto Darkshore,43.50,45.97
    .cast 18974 >>|cRXP_WARN_Use o|r |T132857:0|t[Cenarion Poeira Lunar] |cRXP_WARN_no |cRXP_PICK_Moonkin Pedra|r dentro da caverna para invocar |cRXP_ENEMY_Lunagarra|r na entrada da caverna|r
    .timer 4,Corpo e Coração RP
    .use 15208
    .isOnQuest 6001
step << Druid
    #label Lunaclaw
    #season 0
    .goto Darkshore,43.09,45.55
    >>Abate o |cRXP_ENEMY_Lunagarra|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith Cascade
    #season 0
    .hs >>Use a Pedra de Regresso para Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label AuberdineTurnin2
    #completewith Cascade
    .goto 1439,37.703,43.393
    .subzone 442 >>Retorne para Auberdine
    .cooldown item,6948,<0,1 << !Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
    .xp >14,1 << Hunter/Druid
--XX If Night Elves, Hunters, or Druids are lower than level 14, do questline
step << Hunter/Druid/Warrior
    #season 0,1 << Druid
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_dele. Venda todos seus outros alimentos de nível 5 ou abaixo|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .target Laird
    .subzoneskip 442,1 --skip if you leave Auber
    .xp >15,1 << Warrior/Rogue
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid
    #optional
    #season 0
    .goto Darkshore,37.0,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_WARN_Compre até 40|r |T132815:0|t[Leite Gelado] |cRXP_WARN_dela. Venda toda a sua outra água de nível 5 ou inferior|r
    .collect 1179,35 --Ice Cold Milk (35)
    .target Allyndia
    .subzoneskip 442,1 --skip if you leave Auber
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.767,44.001
    >>Use o [Tubo de Água Vazio] no poço lunar de Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << NightElf Hunter
    #optional
    #season 0
    .goto Darkshore,37.4,40.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_WARN_Compre até 2000|r |T132382:0|t[Sharp Flechas] |cRXP_WARN_dele. Você precisará deles para uma seção de farm em breve|r
    .collect 2515,2000 --Sharp Arrow (2000)
    .target Dalmond
    .subzoneskip 442,1 --skip if you leave Auber
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_em <30% de saúde|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>Isso será usado para evoluir sua [Culinária] até o nível 10 mais tarde
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    #season 0
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>|cRXP_WARN_Isso será usado para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_para 50 depois|r
    >>|cRXP_WARN_Não se desvie para farmar isto agora. Apenas lembre-se de guardar os ovos e comece a pensar quantos aumentos você ainda precisa para alcançar 50 de culinária|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    >>Mate os |cRXP_ENEMY_Moonstalker Nanico|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>Clique no |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Tenha cuidado com os dois grupos de 2 |cRXP_ENEMY_Luniscantes Enraivecidos|r a oeste do |cRXP_PICK_Cristal Vermelho Misterioso|r pois os pares mais próximos uns dos outros estão vinculados entre si|r
    .turnin 4812 >>Entregue Como cascatas
    .accept 4813 >>Aceite Fragmentos incrustados
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>Isso será usado para evoluir sua [Culinária] até o nível 10 mais tarde
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    .hs >>Use a Pedra de Regresso para Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    .goto 1439,37.703,43.393
    .subzone 442 >>Retorne para Auberdine
    .cooldown item,6948,<0,1 << !Druid
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4813,3 >>Entregue Fragmentos incrustados
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Hunter/Druid/Warrior
    #completewith AmethStart
    +|cRXP_WARN_Equipe o|r |T135145:0|t[Cajado de Tordo do Carvalho]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .isQuestTurnedIn 4811


----Start of forced Level 14 Druid Turnin/train----


step << Druid
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    .accept 6343 >>Aceite Return to Nessa
    .target Laird
step << Druid
    #optional
    #xprate <1.5
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 13+9500 >>Triture até 9500+/11400 XP
step << Druid
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
    .target Caylais Moonfeather
step << Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Return to Nessa
    .target Nessa Shadowsong
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .turnin 6001 >>Entregue Corpo e Coração
    .accept 6121 >>Aceite Lessons Anew
    .trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .accept 6121 >>Aceite Lessons Anew
    .trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 6001
    .zoneskip Darnassus,1
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 6121 >>Entregar Lições Renovadas
    .accept 6122 >>Aceitar A Fonte Principal
    .target Dendrite Starblaze
step << Druid
    #season 0
    #optional
    #completewith AmethStart
    .hs >>Use a pedra do regresso para Costa Negra
    .zoneskip Darkshore

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step << Druid
    #season 0
    #optional
    #completewith AmethStart
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_em <30% de saúde|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----


step << NightElf/Hunter/Druid/Warrior
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith EarlyBlackwood
    #optional
    >>Mate os |cRXP_ENEMY_Moonstalker Nanico|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #loop
    #season 0
    #label EarlyBlackwood
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
    .isQuestTurnedIn 4811
step
    #optional
    #label HCHunterStart --hidden step for #include
step << NightElf/Hunter/Druid/Warrior
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #requires EarlyTreats3 << Druid --Season 2
    #completewith EarlyTurtleStart
    >>Mate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os pelas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .subzoneskip 447
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #completewith Anaya
    #requires EarlyTreats3 << Druid --Season 2
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #label EarlyTurtleStart
    #requires EarlyTreats3 << Druid --Season 2
    .goto 1439,37.105,62.167
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
    .isQuestTurnedIn 4811
step
    #optional
    #season 0
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .accept 953 >>Aceite A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AmethStart
    >>Mate os |cRXP_ENEMY_Moonstalker Nanico|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step
    #season 0
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>Isso será usado para evoluir sua [Culinária] até o nível 10 mais tarde
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #sticky
    #optional
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
    >>|cRXP_WARN_Cuidado que ela tem um tempo de aparecimento de 7-8 minutos e 4 pontos de aparecimento diferentes em Ameth'Aran|r
    >>|cRXP_WARN_Se você não conseguir encontrá-la e quiser tentar novamente mais tarde ao custo de possivelmente derrotar mais inimigos em breve, pule este passo|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    #sticky
    #optional
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
    >>|cRXP_WARN_Cuidado que ela tem um tempo de aparecimento de 7-8 minutos e 4 pontos de aparecimento diferentes em Ameth'Aran|r
    >>|cRXP_WARN_Você pode querer agrupar-se com outros por perto se não conseguir encontrá-la. Pergunte em Bate-papo Geral (/1) para agrupar-se com qualquer outra pessoa que também está procurando por ela|r
    >>|cRXP_WARN_Se você não conseguir encontrá-la e quiser tentar novamente mais tarde ao custo de potencialmente farmar mais inimigos em breve, pule este passo|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #season 0
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
    #season 0
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .accept 953 >>Aceite A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
    .xp >17,1
step
    #season 0
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
    #season 0
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Clique em |cRXP_PICK_A Fundação de Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.59
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
    #optional
    #label HCHunterEndTwo --hidden step for #include
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrind
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_com menos de 30% de vida|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith FurbolgGrind
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os por seus |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith FurbolgGrind
    #season 0
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
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
    #xprate <1.5
    #optional
    #loop
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
    >>Triturar |cRXP_ENEMY_Furlbogs|r no acampamento. |cRXP_WARN_Esta é uma área de reaparecimento forçado|r significando que o jogo forçará reaparecimentos se inimigos suficientes estiverem mortos. Isto a torna um |cRXP_WARN_local de levantamento de nível extremamente eficiente|r para o nível (ganho de XP por hora é comparável ao de fazer missões)
    >>|cRXP_WARN_Completar este levantamento de nível lhe permitirá fazer missões por toda a Costa Negra mais tarde sem ter que lutar contra inimigos de nível mais alto|r
    >>Tenha cuidado, pois os |cRXP_ENEMY_Blackwood Desbravadores|r |T132152:0|t[Surra] conseguem acertá-lo até 3 vezes ao mesmo tempo
    >>|cRXP_ENEMY_Blackwood Windtalkers|r lançam |T136022:0|t[Rajada de Vento], um atordoamento corpo-a-corpo, |cRXP_WARN_saia do alcance corpo-a-corpo quando estiverem lançando isso|r para evitar ser atordoado
    .xp 15+11875 >>Triture até 11875+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate <1.5
    #optional
    #loop
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
    >>Triturar |cRXP_ENEMY_Furlbogs|r no acampamento. |cRXP_WARN_Esta é uma área de reaparecimento forçado|r significando que o jogo forçará reaparecimentos se inimigos suficientes estiverem mortos. Isto a torna um |cRXP_WARN_local de levantamento de nível extremamente eficiente|r para o nível (ganho de XP por hora é comparável ao de fazer missões)
    >>|cRXP_WARN_Completar este farm permitirá que você faça missões em toda a Costa Negra mais tarde sem ter que lutar contra inimigos de nível mais alto|r
    >>Cuidado pois os |cRXP_ENEMY_Blackwood Desbravadores|r |T132152:0|t[Surra] e podem acertá-lo até 3 vezes ao mesmo tempo
    >>|cRXP_ENEMY_Blackwood Windtalkers|r lançam |T136022:0|t[Rajada de Vento], um atordoamento corpo-a-corpo, |cRXP_WARN_saia do alcance corpo-a-corpo quando estiverem lançando isso|r para evitar ser atordoado
    .xp 15+11000 >>Triture até 11000+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step
    #xprate 1.49-1.59
    #optional
    #loop
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
    >>Triturar |cRXP_ENEMY_Furlbogs|r no acampamento. |cRXP_WARN_Esta é uma área de reaparecimento forçado|r significando que o jogo forçará reaparecimentos se inimigos suficientes estiverem mortos. Isto a torna um |cRXP_WARN_local de levantamento de nível extremamente eficiente|r para o nível (ganho de XP por hora é comparável ao de fazer missões)
    >>|cRXP_WARN_Completar este levantamento de nível lhe permitirá fazer missões por toda a Costa Negra mais tarde sem ter que lutar contra inimigos de nível mais alto|r
    >>Cuidado pois os |cRXP_ENEMY_Blackwood Desbravadores|r |T132152:0|t[Surra] e podem acertá-lo até 3 vezes ao mesmo tempo
    >>|cRXP_ENEMY_Blackwood Windtalkers|r lançam |T136022:0|t[Rajada de Vento], um atordoamento corpo-a-corpo, |cRXP_WARN_saia do alcance corpo-a-corpo quando estiverem lançando isso|r para evitar ser atordoado
    .xp 15+600 >>Triture até 600+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate 1.49-1.59
    #optional
    #loop
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
    >>Triture |cRXP_ENEMY_Furlbogs|r no acampamento. |cRXP_WARN_Esta é uma área de reaparecimento em massa|r, o que significa que o jogo forçará reaparecimentos se inimigos suficientes estiverem mortos. Isso a torna um |cRXP_WARN_ponto de farm extremamente eficiente|r para o nível (xp/h é comparável ao de fazer missões)
    >>|cRXP_WARN_Completar este levantamento de nível lhe permitirá fazer missões por toda a Costa Negra mais tarde sem ter que lutar contra inimigos de nível mais alto|r
    >>Cuidado pois os |cRXP_ENEMY_Blackwood Desbravadores|r |T132152:0|t[Surra] e podem acertá-lo até 3 vezes ao mesmo tempo
    >>|cRXP_ENEMY_Blackwood Windtalkers|r lançam |T136022:0|t[Rajada de Vento], um atordoamento corpo-a-corpo, |cRXP_WARN_saia do alcance corpo-a-corpo quando estiverem lançando isso|r para evitar ser atordoado
    .xp 14+12210 >>Triture até 12210+/12900xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step
    #optional
    #completewith FurbolgGrindEnd
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_com menos de 30% de vida|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #optional
    #completewith FurbolgGrindEnd
    >>Mate os |cRXP_ENEMY_Moonstalker Nanico|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #label FurbolgGrindEnd
    #completewith TOTH
    #optional
    .goto 1439,36.701,45.122
    .subzone 442 >>Entregue em Auberdine
    .isOnQuest 4722
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4723 >>Entregue a Criatura Marinha Encalhada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #xprate >1.49
    #optional << NightElf !Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4723 >>Entregue a Criatura Marinha Encalhada << Warrior sod
    .target Gwennyth Bly'Leggonde
step
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea
    .target Gubber Blump
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>Devolva para |cRXP_FRIENDLY_Cerellean Garralva|r na doca
step
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    >>Talvez seja necessário aguardar o RP dele caso outra pessoa tenha acabado de entregar
    .turnin 963 >>Entregue Amor Eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #season 0
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4812 >>Entregue Como cascatas
    .target Sentinel Glynda Nal'Shea
    .isQuestComplete 4812
step
    #season 0
    .goto 1439,37.767,44.001
    >>Use o [Tubo de Água Vazio] no poço lunar de Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
    .accept 2139 >>Aceite Esperança de Tharnariun
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2139 >>Aceite Esperança de Tharnariun
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Entregue Uma grande ameaça?
    .accept 986 >>Aceite Um Mestre Perdido << !sod
    .target Terenthis
step
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >>Vá para cima
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sentinela Elissa Brisastral|r no andar de cima
    .accept 965 >>Aceite A Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step << !Hunter
    #optional
    #completewith Level10CookEnd
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .vendor 6301 >>|cRXP_BUY_Compre|r [Temperos Suaves] |cRXP_BUY_dele até que você tenha|r [Temperos Suaves] |cRXP_BUY_em quantidade igual ou maior que a de|r [Ovo Pequeno] |cRXP_BUY_que você possui atualmente|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
    .target Gorbold Steelhand
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .turnin 982 >>Vá para o Oceano Profundo, no Mar Vasto
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #label Level10CookEnd
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Viaje em direção à |cRXP_PICK_Fogueira|r no chão|r
    +Comece [Culinária] [Ovo Assado com Ervas]. Faça isso até que sua [Culinária] atinja pelo menos o nível 10
    >>Continue evoluindo sua [Culinária] até ficar sem [Ovo Pequeno] << !sod
    >>Há uma missão mais tarde na Floresta do Crepúsculo que exige que sua [Culinária] esteja em 50 ou mais. Você também pode cozinhar isso quando entrar no barco em breve << !sod
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !sod/Rogue
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros << !sod
    .turnin 4762 >>Entregue Rio Fontescarpa << sod
    .accept 4763 >>Aceite Os Corrompidos Bosquenero << sod
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


----Start of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    +Pressione Escape, depois vá em -> Opções -> Controles
    >>|cRXP_WARN_Verifique "Ativar a Tecla Interagir" e atribua a opção "Interagir com Alvo" a uma tecla|r
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>==FIQUE ATENTO AO SEU MEDIDOR DE FÔLEGO==
    >>Nade debaixo d’água até a parte externa da traseira do barco
    >>|cRXP_WARN_Na localização da seta, pressione sua tecla de "Interagir com o Alvo" para saquear o|cRXP_LOOT_ Cofre da Aurora Prateada|r pelo lado de fora do barco|r
    >>|cRXP_WARN_Se você não quiser fazer isso, nade debaixo d’água até o piso inferior do barco e saque o|cRXP_LOOT_ Cofre da Aurora Prateada|r por dentro|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4723 >>Aceite Beached Sea Criatura - Missão
    .isOnQuest 982


----End of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith BoatSeaCreature
    .goto 1439,44.190,33.697,0
    >>Mate os |cRXP_ENEMY_Moonstalker Nanico|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #season 0
    #optional
    #completewith BoatSeaCreature
    .goto 1439,43.509,33.207,0
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_com menos de 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #season 0
    #optional
    #completewith BoatSeaCreature
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>|cRXP_WARN_Isso será usado para aumentar seu|r |T133971:0|t[Culinária] |cRXP_WARN_para 50 mais tarde|r
    >>|cRXP_WARN_Não vá além do necessário para farmar isto agora. Apenas lembre-se de guardar os ovos e comece a pensar quantos pontos de habilidade você ainda precisa para atingir 50 em culinária|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .subzoneskip 446 --BashalAran
    .subzoneskip 452 --Mists Edge
--   .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 10-50
step
    #season 0
    .goto 1439,47.314,48.676
    >>Clique no |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Tenha cuidado com os 2 grupos de 2|cRXP_ENEMY_ Raging Moonkins|r a oeste de|cRXP_PICK_ Cristal Vermelho Misterioso|r pois os duos mais próximos um do outro estão ligados|r
    .turnin 4812 >>Entregue Como cascatas
    .accept 4813 >>Aceite Fragmentos incrustados
step
    #season 0 << !Warrior !Rogue
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >>Entregue Bashal'Aran
    .isOnQuest 957
    .target Asterion
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label BoatSeaCreature
    #season 0
    .goto 1439,41.901,31.339
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4723 >>Aceite Beached Sea Criatura - Missão
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Mate |cRXP_ENEMY_Filhote de Florestruz|r e |cRXP_ENEMY_Florestruz|r Saqueie-os para obter |cRXP_LOOT_Carne de Moa|r
    >>Tenha cuidado |cRXP_ENEMY_Filhote de Florestruz|r [Fugir] com menos de 30% de vida
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CrabTurtle
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os por seus |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #label CrabTurtle
    #season 0 << !Warrior !Rogue
    .goto Darkshore,44.18,20.60
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4725 >>Aceite Tartaruga Marinha Encalhada
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,55,0
    .goto 1439,45.468,20.336,55,0
    .goto 1439,47.356,20.559,55,0
    .goto 1439,48.013,21.409,55,0
    .goto 1439,48.612,20.745,55,0
    .goto 1439,49.680,22.468,55,0
    .goto 1439,49.313,24.271,55,0
    >>Mate |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Fine Caranguejo Chunks|r
    >>|cRXP_WARN_Considere pular alguns de nível 17|r |cRXP_ENEMY_Reef Crawlers|r |cRXP_WARN_se tiver sorte nos drops.|r |cRXP_WARN_Você não precisa completar esta missão agora|r
    >>Tenha cuidado, pois eles conseguem lançar |T132155:0|t[Rasgar Músculos], um ataque instantâneo causando 30-55 de dano
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,50.81,25.50
    #season 0 << !Warrior !Rogue
    >>Use o [Tubo de Amostragem Vazio] na base do **Rio Fontescarpa**
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.288,24.554,12 >>Suba a rampa em direção a |cRXP_PICK_Buzzbox 323|r
    .isQuestComplete 1002
step
    #optional
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Clique em |cRXP_PICK_Buzzbox 323|r no chão
    .turnin 1002 >>Entregue no NO TRANSLATION FOUND TO THIS ELEMENT
    .accept 1003 >>Aceite Buzzbox 525
    .isQuestComplete 1002
step
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Clique em |cRXP_PICK_Buzzbox 323|r no chão
    .accept 1003 >>Aceite Buzzbox 525
    .isQuestTurnedIn 1002


----Start of Hunter/Druid 1x early Althalaxx section (for money+xp)----


step << Hunter/Druid
	#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Hunter/Druid
	#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Mate os |cRXP_ENEMY_Foreststriders|r. Saqueie-os para obter |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Mate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os pelas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >>Vá para |cRXP_FRIENDLY_Balthule Umbrataque|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 965 >>Entregue A Torre de Althalaxx
    .accept 966 >>Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
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
    >>Mate os |cRXP_ENEMY_Dark Strand Fanatics|r. Saque-os para obter seus |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 966 >>Entregue A Torre de Althalaxx
    .accept 967 >>Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Mate os |cRXP_ENEMY_Foreststriders|r. Saqueie-os para obter |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider

----End of Hunter/Druid 1x and SoD Warrior early Althalaxx section (for money+xp)----

step
    #optional
    #completewith CliffCave
    #season 0 << !Warrior !Rogue
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CliffCave
    >>Mate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os pelas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #season 0 << !Warrior !Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Mate os |cRXP_ENEMY_Foreststriders|r. Saqueie-os para obter |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
    .itemcount 5469,3 --Strider Meat (3+)
----XX Start from West Side if 3+
step
    #season 0 << !Warrior !Rogue
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
    >>Mate os |cRXP_ENEMY_Foreststriders|r. Saqueie-os para obter |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step
    #optional
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Clique em |cRXP_PICK_Buzzbox 323|r no chão
    .turnin 1002 >>Entregue no NO TRANSLATION FOUND TO THIS ELEMENT
    .accept 1003 >>Aceite Buzzbox 525
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>Vá para a Caverna do Rio Cliffspring
step << Druid
    .goto Darkshore,54.99,33.41
    #season 0
    >>Use o [Amostrador Vazio das Cataratas do Rio Penhasco] na água na entrada da Caverna do Rio Penhasco
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    #label CaveMushrooms
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 0 << !Warrior !Rogue
    >>Pegue os |cRXP_LOOT_Scaber Stalks|r e o |cRXP_LOOT_Death Cap|r no chão
    >>|cRXP_WARN_Permaneça na seção superior. Se não houver um|cRXP_LOOT_ Cogumelo-da-morte|r no final do lado superior, desça e pegue um na sala ao sul abaixo|r
    >>|cRXP_WARN_Tenha cuidado com os|cRXP_ENEMY_Cavalga-onda Skamatrom|r |rao conjurarem|cRXP_WARN_|r[Jato Aquático] (Alcance Instantâneo: causa dano em área nos inimigos próximos e os empurra para trás) certifique-se de não estar em uma posição para ser derrubado do nível superior da caverna
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step << NightElf !Druid
    #softcore
    #optional
    #completewith CavetoAuber
    #season 0
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step << skip --logout skip
    #hardcore << NightElf !Druid
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    #season 0
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Salte no topo da rocha no andar superior dentro da caverna. Posicione seu personagem até parecer que está flutuando, depois execute um Logout Pular fazendo logout e entrando novamente|r
step
    #hardcore << NightElf !Druid
    #completewith CavetoAuber
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Cuidado pois eles|r |T132307:0|t[Fugir]|cRXP_WARN_ com <30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #hardcore << NightElf !Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #requires MushroomLS
    #completewith CavetoAuber
    >>Mate os |cRXP_ENEMY_Moonstalker Nanico|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #optional
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >>Viaje para Auberdine
step
    #label CliffspringEnd
    #season 0
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4762 >>Entregue Rio Fontescarpa
    .accept 4763 >>Aceite Os Corrompidos Bosquenero
    .target Thundris Windweaver
step
    .goto Darkshore,37.70,40.70
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .turnin 6122 >>Entregue The Principal Source << Druid
    .accept 6123 >>Aceite Colhendo a Cura << Druid
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .isQuestAvailable 2178 << Druid
step << Druid
    #optional
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .turnin 6122 >>Entregue A Fonte Principal
    .accept 6123 >>Aceite Reunindo o Remédio
    .target Alanndarian Nightsong
step << !NightElf
    #xprate <1.5
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
    .isQuestComplete 2138
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .turnin 982 >>Vá para o Oceano Profundo, no Mar Vasto
    .target Gorbold Steelhand
step << !NightElf
    #season 0
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
    .accept 2139 >>Aceite Esperança de Tharnariun
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2139 >>Aceite Esperança de Tharnariun
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto Darkshore,37.70,43.39
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    >>|cRXP_WARN_Escolha a|r |T135641:0|t[Adaga de Madeira Curva]|cRXP_WARN_ pois você deve tentar guardar uma|r |T135641:0|t[Adaga]|cRXP_WARN_ para sua|r |T132290:0|t[Venenos]|cRXP_WARN_ missão depois|r << Rogue
    .turnin 4813 >>Entregue Fragmentos incrustados
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.78,44.06
    #season 0
    >>|cRXP_WARN_Use a|r |T133748:0|t[Vazio Purificação Tigela] |cRXP_WARN_no poço lunar de Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step
    .goto 1439,37.322,43.640
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .turnin 947 >>Entregue Cogumelos da Caverna
    .accept 948 >>Aceite Onu
    .target Barithras Moonshade
step
    .goto Darkshore,37.21,44.22
    #season 0
    >>Clique em |cRXP_PICK_The Wanted Poster|r
    .accept 4740 >>Aceite Procurado: Lodofundo!
step << NightElf !Druid
    .goto 1439,36.767,44.285
    #season 0
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    .accept 6343 >>Aceite Return to Nessa
    .isQuestAvailable 6343
    .target Laird
step
    #optional
    .goto Darkshore,36.096,44.931
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
    .target Gubber Blump
    .isQuestComplete 1138
step
    #optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >>Entregue a Criatura Marinha Encalhada
    .turnin 4725 >>Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #optional
    #season 0
    #label End
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >>Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde


----Start of Druid Quest section----


step << Druid
    #optional
    #season 0
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
    .xp 16 >>Suba até o nível 16
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step << Druid
    #optional
    #season 0
    #completewith DruidLesson
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
    .target Caylais Moonfeather
step << Druid
    #optional
    #season 0
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Return to Nessa
    .target Nessa Shadowsong
step << Druid
    #optional
    #season 0
    #label DruidLesson
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .accept 26 >>Aceite A Lesson to Learn
    .trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #season 0
    #completewith next
    .abandon 729 >>Abandone The Absent Minded Prospector para aceitar Trouble In Costa Negra?
step << Druid
    .goto Teldrassil,23.70,64.51
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
    .accept 730 >>Aceite Trouble In Costa Negra?
    .target Chief Archaeologist Greywhisker
step << Druid
    #optional
	#completewith TotL
    #season 0
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 26 >>Entregar Uma Lição a Aprender
    .accept 29 >>Aceitar Prova do Lago
    .target Dendrite Starblaze
step << Druid
    #season 0
    .goto Moonglade,52.6,51.6
    >>Nade para Lake Elune'Ara
    >>Abra o |cRXP_PICK_Recipiente de Adornos|r. Saque-o para um |T134125:0|t[Adorno de Altar]
    >>|cRXP_WARN_Pode aparecer em diferentes locais debaixo d'água|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #season 0
    #completewith next
    .cast 18960 >>Use Teleporte: Clareira da Lua
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
    .turnin 29 >>Entregar Prova do Lago
    .accept 272 >>Aceitar Prova do Leão Marinho
    .target Tajarri
step << Druid
    #optional
    #season 0
    .hs >>Use a pedra do regresso para Costa Negra
    .zoneskip Darkshore


----End of Druid Quest section----


]])

----End of Darkshore Part 1----
----Start of Darkshore Part 2----
----Hunters stay in Darkshore/Ashenvale and Grind, 2x skips Redridge----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 16-19 Costa Negra
#next 19-20 Redridge;20-21 Costa Negra/Vale Gris << !Hunter
#next 19-21 Costa Negra/Vale Gris << Hunter

step << NightElf !Druid
    #optional
    #completewith PortalDarn
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
    .target Caylais Moonfeather
    .zoneskip Teldrassil
step << NightElf !Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Return to Nessa
    .target Nessa Shadowsong
step << NightElf !Druid
    #completewith next
    #season 0
    #label PortalDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << NightElf Warrior
    .goto Darnassus,58.72,34.92
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arias'ta Cantalâmina|r
    .trainer >>Treine suas magias de classe
    .target Arias'ta Bladesinger
step << NightElf Warrior
    .goto Darnassus,57.56,46.72
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .train 2567 >>Treine Arremesso
    .target Ilyenia Moonfire
step << NightElf Hunter
    #completewith start
    #season 0
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .trainer >>Treine suas magias de classe
    .target Jocaste
step << NightElf Hunter
    #completewith start
    #season 0
    #label RecruveReinforced
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Compre um|r |T135489:0|t[Arco Recurvo Pesado]|cRXP_WARN_ se você puder pagar. Se não, compre um|r |T135490:0|t[Arco Reforçado]
    >>|cRXP_WARN_Compre bastante|r |T132382:0|t[Flechas Afiadas]
    .collect 3027,1
    .target Landria
    .money <0.3812
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
step << Hunter
    #requires RecruveReinforced
    #season 0
    #completewith next
    +Equipe o [Arco Recurvo Pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Hunter
    #requires RecruveReinforced
    #season 0
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135490:0|t[Arco Reforçado]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.49
step << NightElf Rogue
    >>Entre no Enclave Cenariano
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .goto Darnassus,31.84,16.69,15,0
    .goto Darnassus,37.00,21.92
    .trainer >>Treine suas magias de classe
    .target Syurna
step << NightElf !Druid
    #optional
    #season 0
    #completewith next
    .abandon 729 >>Abandone The Absent Minded Prospector para aceitar Trouble In Costa Negra?
step << NightElf !Druid
    .goto Teldrassil,23.70,64.51
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
    .accept 730 >>Aceite Trouble In Costa Negra?
    .target Chief Archaeologist Greywhisker
step << NightElf Priest
    .goto Darnassus,37.90,82.74
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jandria|r
    .trainer >>Treine suas magias de classe
    .target Jandria
step << NightElf !Druid
    #label start
    #season 0
    .hs >>Use a Pedra de Regresso para Auberdine
step
    .goto Darkshore,37.21,44.22
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClique em |cRXP_FRIENDLY_The Wanted Poster|r
    .accept 4740 >>Aceite Procurado: Lodofundo!
step << NightElf
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 730 >>Entregue Trouble In Costa Negra?
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
    .isOnQuest 730
step << NightElf
    #optional
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    .goto 1439,37.394,40.128
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4762 >>Entregue Rio Fontescarpa
    .accept 4763 >>Aceite Os Corrompidos Bosquenero
    .target Thundris Windweaver
step
    .goto Darkshore,37.78,44.06
    #season 0
    .use 12346 >>Use a [Tigela de Purificação Vazia] no |cRXP_PICK_Poço Lunar de Auberdine|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #season 0
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
    >>|cRXP_WARN_Tenha cuidado: ela tem um tempo de reaparecimento de 7-8 minutos e 4 locais de aparecimento diferentes em Ameth'Aran|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    #season 0
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
    >>|cRXP_WARN_Tenha cuidado pois ela tem um tempo de reaparecimento de 7-8 minutos e 4 pontos de aparição diferentes em Ameth'Aran|r
    >>|cRXP_WARN_Você pode se agrupar com outros próximos se não conseguir encontrá-la. Peça em Bate-papo Geral (/1) para se agrupar com qualquer outro que também a procura|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CompleteFangs
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os por seus |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #season 0
    #loop
    .waypoint Darkshore,39.03,67.32,0
    .waypoint Darkshore,42.54,67.76,0
    .waypoint Darkshore,39.99,78.46,0
    .waypoint Darkshore,39.03,67.32,70,0
    .waypoint Darkshore,42.54,67.76,70,0
    .waypoint Darkshore,39.99,78.46,70,0
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r no sul de Costa Negra
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Druid
    #xprate <1.5
    #sticky
    #label earthroot
    >>Colete 5 |T134187:0|t[Raízes da Terra]|r durante as missões
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
step << Druid
    #xprate <1.5
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Saque |cRXP_LOOT_Fungos Lunares|r no chão por toda as cavernas
    .complete 6123,2
    .isOnQuest 6123
step
    #completewith OnuGrove
    #season 0
    .goto 1439,43.555,76.293,80 >>Viaje para o Bosque dos Antigos
step
    #label OnuGrove
    #season 0
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 952 >>Entregue no Bosque dos Anciões << NightElf
    .turnin 948 >>Entregue em Onu
    .accept 944 >>Aceite A Foice do Mestre
    .target Onu
step
    #completewith MasterG
    #season 0
    >>Mate os |cRXP_ENEMY_Espreitaluna Machos|r. Saque-os para suas |cRXP_LOOT_Peles|r
    >>Cuidado pois eles podem lançar |T132090:0|t[Explorar Fraqueza], um ataque pelas costas que causa 20-40 de dano, se virar as costas para eles
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .isOnQuest 986
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith MasterG
    #optional
    .goto Darkshore,38.60,80.50,0
    >>Mate os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Scalps|r
    >>Tenha cuidado pois eles lançam |T132152:0|t[Assolar], um ataque instantâneo causando 20-40 de dano e |cRXP_WARN_arremessando você para baixo por 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.390,80.563
    >>Clique no |cRXP_PICK_Buzzbox 525|r no chão
    .turnin 1003 >>Vá a Buzzbox 525
    .isQuestComplete 1003
step
    #label MasterG
    #season 0
    .goto Darkshore,38.54,86.05,100 >>Voe para The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    #season 0
    >>Mate Discípulos do Crepúsculo|cRXP_ENEMY_ e|r Capangas do Crepúsculo|cRXP_ENEMY_. Saque-os para obter o|r [|cRXP_LOOT_Livro: Os Poderes Inferiores|r]
    *|cRXP_WARN_Tome cuidado pois os |cRXP_ENEMY_Capangas Crepúsculo|r podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Tome cuidado pois os |cRXP_ENEMY_Discípulos Crepúsculo|r lançam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma |T135915:0|t[Cura] de 3 segundos|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #optional
    #season 0
    .goto 1439,38.537,86.050
    >>Descubra a Clareira do Mestre
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    #season 0
    .cast 5809 >>Use o [Frasco de Vidência] e coloque-o no chão
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>|cRXP_WARN_Clique na|cRXP_PICK_ Tigela de Vidência|r no chão|r
    .turnin 944 >>Volte a The Master's Glaive
    .accept 949 >>Aceite O Acampamento do Crepúsculo
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>Clique no |cRXP_PICK_Tomo Crepúsculo|r no pedestal norte
    .turnin 949 >>Entregue O Acampamento do Crepúsculo
    .accept 950 >>Aceite Retorno a Onu
step
    .goto 1439,38.660,87.305
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a|cRXP_FRIENDLY_ Therylune|r. Isso iniciará uma escolta
    >>|cRXP_WARN_Pule este passo se ela não estiver lá|r
    .accept 945 >>Aceite A Fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    #season 0
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escolte a|cRXP_FRIENDLY_ Therylune|r para fora da Clareira do Mestre|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #optional
    #season 0
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >>Exclua o |T134715:0|t[Frasco de Vidência] da mochila, pois não é mais necessário
step
    #optional
    #season 0
    #completewith TurtleSouth
    #completewith prospector << Hunter
    >>Abate |cRXP_ENEMY_Espreitaluna Sires|r. Saque-os para obter seus |cRXP_LOOT_Pelts|r
    >>Tenha cuidado pois eles podem lançar |T132090:0|t[Explorar Fraqueza] um ataque pelas costas causando 20-40 de dano se você virar as costas para eles
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .isOnQuest 986
    .unitscan Moonstalker Sire
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Mate os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Scalps|r
    >>Tenha cuidado pois eles lançam |T132152:0|t[Assolar], um ataque instantâneo causando 20-40 de dano e |cRXP_WARN_arremessando você para baixo por 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label LastBuzz
    .goto 1439,41.390,80.563
    >>Clique no |cRXP_PICK_Buzzbox 525|r no chão
    .turnin 1003 >>Vá a Buzzbox 525
    .isQuestComplete 1003
step
    .goto 1439,43.555,76.293
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Retorno a Onu
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .accept 951 >>Aceite Mathystra Relics
    .target Onu
step << Hunter
    #optional
    #season 0
    .goto Darkshore,38.54,86.05
    .xp 17 >>Farme até o nível 17
step << Hunter
    #sticky
    #season 0
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    >>|cRXP_WARN_Você pode ter que esperar que ele reapareça ou que outros terminem a escolta|r
    .turnin 729 >>Entregue The Absent Minded Prospector
    .target Prospector Remtravel
step << Hunter
    .goto Darkshore,35.72,83.69
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r. Isso iniciará uma escolta
    .accept 731,1 >>Aceite O Prospector Distraído
    >>|cRXP_WARN_Esta missão é MUITO difícil. Você pode pular este passo e voltar no nível 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >>https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .target Prospector Remtravel
step << Hunter
    #requires prospector
    #season 0
    >>|cRXP_WARN_Escolte o|cRXP_FRIENDLY_ Prospector Trilheiro|r pela Escavação|r
    >>|cRXP_WARN_Esta missão é MUITO difícil. Você pode pular esta etapa e voltar no nível 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >>https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .complete 731,1
    .isOnQuest 731
step << Hunter
    #xprate <1.5
    #season 0
    .goto 1439,31.251,87.419
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4733 >>Aceite Beached Sea Criatura - Missão
    >>|cRXP_WARN_Esta missão pode ser MUITO difícil. Enfrente os |cRXP_ENEMY_Murlocs|r um de cada vez, caso contrário você pode atacar vários ao mesmo tempo|r
    >>|cRXP_WARN_Tenha cuidado com |cRXP_ENEMY_Brumagris Oracles|r'|r |T136048:0|t[Raio] |cRXP_WARN_dano, eles também conseguem curar com|r |T136052:0|t[Onda Curativa]|r
    .link https://youtu.be/lfQM3Q-Ag5A >>https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Clique aqui para um guia em vídeo|r
step
    #completewith CompleteThistleBears
    #season 0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.03,72.19,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,35.03,72.19
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r e os |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter os |cRXP_LOOT_Fine Caranguejo Chunks|r
    >>Tenha cuidado pois Caranguejos de Recife|cRXP_ENEMY_ podem lançar |T132155:0|t[Rasgar Músculos]|r um ataque instantâneo causando 30-55 de dano
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << Hunter
	#xprate <1.5
    #season 0
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Tenha cuidado com |cRXP_ENEMY_Brumagris Oracles|r'|r |T136048:0|t[Raio] |cRXP_WARN_dano, eles também conseguem curar com|r |T136052:0|t[Onda Curativa]|r
    >>Cuidado, pois os |cRXP_ENEMY_Greymist Tidehunters|r podem lançar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] durante o combate corpo-a-corpo, deixando um dano contínuo que causa 13 de dano a cada 3 segundos durante 30 segundos
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step
    #label TurtleSouth
	#xprate <1.5
    #season 0
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Tenha cuidado com |cRXP_ENEMY_Brumagris Oráculos|r dano de |T136048:0|t[Raio]|r |cRXP_WARN_, eles também podem curar com|r |T136052:0|t[Onda Curativa]|r
    >>Cuidado, pois os |cRXP_ENEMY_Greymist Tidehunters|r podem lançar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] durante o combate corpo-a-corpo, deixando um dano contínuo que causa 13 de dano a cada 3 segundos durante 30 segundos
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step << !Hunter
	#xprate <1.5
    #season 0
    .goto 1439,32.644,80.711
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4730 >>Aceite Beached Sea Criatura - Missão
step << Hunter
	#xprate <1.5
    #season 0
    .goto 1439,32.644,80.711
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4730 >>Aceite Beached Sea Criatura - Missão
step << Druid
    #optional
    #season 0
    >>Conclua coletando o |T134187:0|t[Earthroot]|cRXP_WARN_ via |T136065:0|t[Herborismo]|r e raramente |cRXP_PICK_Battered Chests|r
    >>|cRXP_WARN_Se desistir e não conseguir encontrar o suficiente, pule esta etapa|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
    .skill herbalism,<15,1
--XX Add waypoints later
step
    #label Murk
    #season 0
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
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
    #label CompleteThistleBears
    #season 0
    .goto 1439,35.968,70.807
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4728 >>Aceite Beached Sea Criatura - Missão
step << Druid
    #label Southcrabs
    #season 0
    #requires earthroot
	#completewith FlyDarkshore
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    #requires earthroot
    #season 0
    .goto Moonglade,52.53,40.57
	>>Vá para Vale da Lua
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
    .xp <18,1
step << Druid
    #label FlyDarkshore
    #season 0
    .goto Moonglade,48.11,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sindray|r
    .fly Auberdine >>Voe para Costa Negra
    .target Sindrayl
    .zoneskip Darkshore
step << NightElf !Druid/Dwarf Hunter
    #label Southcrabs
    #season 0
    #completewith CleansingTharnariun
    .subzone 442 >>Viaje para Auberdine
step
    #optional
    #completewith next
    #season 0
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>Entregue |cRXP_FRIENDLY_Cerellean Garralva|r no cais
step
    #optional
    #season 0
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    >>Talvez seja necessário aguardar o RP dele caso outra pessoa tenha acabado de entregar
    .turnin 963 >>Entregue Amor Eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #optional
    #season 0
    #completewith CleansingTharnariun
    .abandon 963 >>Abandone For Love Eternal
step
    #xprate <1.5
    #season 0
    #label BeachedTurnins
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4728 >>Entregue a Criatura Marinha Encalhada
    .turnin 4730 >>Entregue a Criatura Marinha Encalhada
    .turnin 4731 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4732 >>Entregue Tartaruga Marinha Encalhada << Hunter
    .turnin 4733 >>Entregue a Criatura Marinha Encalhada << Hunter
    .target Gwennyth Bly'Leggonde
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
    .isQuestComplete 1138
    .target Gubber Blump
step
    .goto Darkshore,36.8,44.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r e |cRXP_FRIENDLY_Allyndia|r
    .vendor >>|cRXP_BUY_Comerciante e reabastecerse de Comida e Água|r
    .target Laird
    .target Allyndia
step
    .goto 1439,37.703,43.393
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4740 >>Entregue PROCURA-SE: Lodofundo!
    .target Sentinel Glynda Nal'Shea
step
    #label CleansingTharnariun
    #season 0
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
    .accept 2139 >>Aceite Esperança de Tharnariun
    .target Tharnariun Treetender
step << Hunter
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >>Entregue The Absent Minded Prospector
    .accept 741 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Hunter
    #optional
    #season 0
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 741 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
    .isQuestTurnedIn 731
step << Hunter
    #optional
    #season 0
    .goto Darkshore,37.4,40.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalmond|r
    .vendor >>|cRXP_BUY_Reabastecerse de Munição|r
    .target Dalmond
step << Druid
    #xprate <1.5
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .turnin 6123 >>Entregue Colhendo a Cura
    .accept 6124 >>Aceite Curando os Doentes
    .isQuestComplete 6123
step << Druid
    #xprate <1.5
    #optional
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 6124 >>Aceite A Cura dos Doentes
    .target Alanndarian Nightsong
    .isQuestTurnedIn 6123
step << Druid
    #optional
    #season 0
    #completewith Buzzbox323End
    .abandon 6123 >>Abandone Colhendo a Cura
step << Druid
    #xprate <1.5
    #optional
    #season 0
    #completewith Buzzbox323End
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    >>|cRXP_WARN_Usar|r em |T132801:0|t[Curative Animal Salve] |cRXP_WARN_em|r |cRXP_ENEMY_Sickly Cervo|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .isQuestAvailable 1138
step << Druid
    #xprate <1.5
    #season 0
    #sticky
    #label SicklyDeers
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .waypoint Darkshore,49.7,33.2,40,0
    .waypoint Darkshore,43.4,25.1,40,0
    .waypoint Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_Usar|r em |T132801:0|t[Curative Animal Salve] |cRXP_WARN_em|r |cRXP_ENEMY_Sickly Cervo|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
    .isQuestTurnedIn 1138
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Abra as |cRXP_PICK_Lojas de Grão Blackwood|r. Saqueie-a para obter a |T134059:0|t|cRXP_LOOT_[Amostra de Grão Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso fará aparecer 2 |cRXP_ENEMY_Blackwood Furbolgs|r que atacarão e correrão na sua direção. Esteja pronto para lutar contra eles ou reiniciá-los|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Abate a |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Thistle Cubs|r podem lançar|r |T132152:0|t[Assolar]|cRXP_WARN_, um ataque corpo-a-corpo instantâneo que o paralisa por 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>Abra as |cRXP_PICK_Blackwood Nut Stores|r. Saque-a para obter a |T133944:0|t|cRXP_LOOT_[Amostra de Castanha Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso fará aparecer 2 |cRXP_ENEMY_Blackwood Furbolgs|r que atacarão e correrão na sua direção. Esteja pronto para lutar contra eles ou reiniciá-los|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>Abra as |cRXP_PICK_Blackwood Fruit Stores|r. Saque-a para obter a |T134013:0|t|cRXP_LOOT_[Amostra de Fruta Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso fará aparecer 2 |cRXP_ENEMY_Blackwood Furbolgs|r que atacarão e correrão na sua direção. Esteja pronto para lutar contra eles ou reiniciá-los|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39
    .cast 16072 >>|cRXP_WARN_Use o|r |T134712:0|t[Cheio Purificação Tigela] |cRXP_WARN_no |cRXP_PICK_Bonfire|r para invocar|r |cRXP_ENEMY_Zabraxxis|r
    .timer 17,O RP Corrompido Bosquenero
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>Mate o|cRXP_ENEMY_ Xabraxxis|r. Abra a|cRXP_PICK_ Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|cRXP_LOOT_ Talismã da Corrupção|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << !Hunter
    #xprate <1.5
    #label CompleteFangs
    .goto Darkshore,52.6,33.6
    .xp 18 >>Farme até nível 18
step << Hunter
    #label CompleteFangs
    #season 0
    .goto Darkshore,52.6,33.6
    .xp 18.75 >>Farme até nível 18 + 75%
    >>Garanta que a recarga da Pedra de Retorno seja <10 min
    >>Pule este passo se a área estiver muito lotada
step
    #label LateStalkerFangs
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
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
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os por seus |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
--XX Can do later during Pelts but better if player gets more xp beforehand
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label Buzzbox323End
    #requires SicklyDeers << Druid --xprate <1.5
    .goto 1439,51.288,24.554
    >>Clique em |cRXP_PICK_Buzzbox 323|r no chão
    .turnin 1002 >>Entregue no NO TRANSLATION FOUND TO THIS ELEMENT
    .accept 1003 >>Aceite Buzzbox 525
step
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 965 >>Entregue A Torre de Althalaxx
    .accept 966 >>Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step
	#xprate >1.49 << Hunter/Druid
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
    >>Mate os |cRXP_ENEMY_Dark Strand Fanatics|r. Saque-os para obter seus |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    #xprate >1.59
    #loop
    #optional
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.743,25.915,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.231,26.508,50,0
    .xp 18+15000 >>Farme até 15000+/19400 xp
    .mob Dark Strand Fanatic
step
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 966 >>Entregue A Torre de Althalaxx
    .accept 967 >>Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #season 0
    .goto Darkshore,57.13,22.04,55,0
    .goto Darkshore,57.97,20.23,55,0
    .goto Darkshore,58.36,23.61,55,0
    .goto Darkshore,59.42,24.62,55,0
    .goto Darkshore,60.26,21.75
    >>Saque as |cRXP_LOOT_Mathystra Relics|r no chão
    .complete 951,1 -- Mathystra Relics (6)
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .accept 2098 >>Aceite Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Mate os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saque-os para obter o |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento à habilidade|cRXP_ENEMY_Rastejadores do Recife Enfurecidos|r'|r |cRXP_WARN_[Açoitar] . Você pode receber 200 de dano instantaneamente de seus ataques corpo a corpo
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Mate os |cRXP_ENEMY_Greymist Oracles|r e os |cRXP_ENEMY_Greymist Tidehunters|r. Saque-os para obter o |cRXP_LOOT_Middle of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento aos|cRXP_ENEMY_Oráculos Névoa Cinzenta|r'|r [Raio] e ao dano que eles também curam com|cRXP_WARN_ |r[Onda de Cura]|r
    >>Cuidado, pois os |cRXP_ENEMY_Greymist Tidehunters|r podem lançar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] durante o combate corpo-a-corpo, deixando um dano contínuo que causa 13 de dano a cada 3 segundos durante 30 segundos
    >>|cRXP_WARN_Você pode usar LoS (Linha de Visão) nos|r|cRXP_ENEMY_Oráculos Névoa Cinzenta|r'|r[Raio] ao redor do navio afundado para evitar receber dano
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Mate os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter o |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento à habilidade|cRXP_ENEMY_Rastejadores do Recife Enfurecidos|r'|r |cRXP_WARN_[Açoitar] . Você pode receber 200 de dano instantaneamente de seus ataques corpo a corpo
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
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
    #xprate <1.59
    #label NorthStalkerPelts
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Mate os |cRXP_ENEMY_Moonstalker Sires|r e os |cRXP_ENEMY_Moonstalker Matriarchs|r. Saque-os para obter seus |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Fique atento às|cRXP_ENEMY_ Matriarcas Espreitaluna|r. Elas sempre atacam junto com um|cRXP_ENEMY_ Filhote de Espreitaluna|r ao seu lado|r
    >>|cRXP_ENEMY_Moonstalker Sires|r podem usar |T132090:0|t[Explorar Fraqueza], um ataque de costas causando de 20 a 40 de dano se você virar as costas para eles
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step << Warrior/Paladin/Rogue
    #season 0
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gelkak Giramastro|r
    >>|cRXP_WARN_Início procurando por um grupo para Gyromast's Revanche/|r|cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r << Warrior/Paladin/Rogue
    .turnin 2098 >>Entregue Gyromast's Retrieval
    .accept 2078 >>Aceite Gyromast's Revanche
    .target Gelkak Gyromast
    .solo
step
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    >>|cRXP_WARN_Comece a procurar um grupo para Gyromast's Revanche/|r|cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r << Warrior/Paladin/Rogue
    .turnin 2098 >>Entregue Gyromast's Retrieval
    .accept 2078 >>Aceite Gyromast's Revanche
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >>Fale com o|cRXP_FRIENDLY_ Mangual-eliminator Pro Giramastro 4100|r para iniciar a escolta
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_Esta missão é MUITO difícil|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
step
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4727 >>Aceite Tartaruga Marinha Encalhada
step
    .goto 1439,56.654,13.484
    #optional
    >>Escolte |cRXP_FRIENDLY_Mangual-eliminator Pro Giramastro 4100|r até |cRXP_FRIENDLY_Gelkak Giramastro|r
    >>Mate o |cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r quando ele ficar hostil
    >>|cRXP_WARN_Esta missão é muito difícil|r
    *Use apenas ataques à distância enquanto foge dele, evite estar no alcance corpo a corpo << Druid
    >>|cRXP_WARN_Tente fazer esta missão se puder pois poupará seu tempo depois já que recompensa|r |T134797:0|t[Elixirs of Respiração Aquática] |cRXP_WARN_para missões subaquáticas depois|r << !Druid !Warlock
    >>|cRXP_WARN_Usar|r em |T136100:0|t[Raízes Enredantes] |cRXP_WARN_quando ele ficar hostil depois crie distância e use fuga com magias instantâneas|r << Druid
    >>|cRXP_WARN_Se você não conseguir matar o |cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r, pule este passo|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >>https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Clique aqui para um guia em vídeo|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
--XX DRUID: Test if you can root
step
    #optional << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .turnin 2078 >>Entregue Gyromast's Revanche
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    #optional
    #completewith BeachedCloak
    .abandon 2078 >>Abandone Gyromast's Revanche
step << Druid
    #xprate <1.5
    #optional
    #completewith DeerComplete
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter os |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #sticky
    #label DeleteGyromast
    #optional
    .destroy 7442 >>Apague |T134459:0|t[Gyromast's Chave] da mochila, pois não é mais necessário
step << !NightElf !Dwarf Hunter !Druid
    #completewith BeachedCloak
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >>Viaje para Auberdine
    .cooldown item,6948,<0
step << !NightElf !Dwarf Hunter !Druid
    #xprate <1.59
    #optional
    #completewith next
    .hs >>Use a Pedra de Regresso para Auberdine
    .cooldown item,6948,>0,1
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4727 >>Aceite Tartaruga Marinha Encalhada
step << Druid
    #xprate <1.5
    #label DeerComplete
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .goto Darkshore,49.7,33.2,40,0
    .goto Darkshore,43.4,25.1,40,0
    .goto Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_Usar|r em |T132801:0|t[Curative Animal Salve] |cRXP_WARN_em|r |cRXP_ENEMY_Sickly Cervo|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
step << Druid
    .goto Darkshore,48.87,11.32
    >>Nade para fora na água
    >>Abra a |cRXP_PICK_Strange Caixa-forte|r. Saque-a para obter o |cRXP_LOOT_Meio-pingente da Agilidade Aquática|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)


----Start of Darkshore 2x 20 Turnins & Druid Training----


step << Druid
    #xprate >1.59
    #optional
	#completewith next
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    .goto Moonglade,52.53,40.57
	>>Vá para Vale da Lua
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .hs >>Use a Pedra de Regresso para Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
    .xp <20,1
step
    #xprate >1.59
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4763 >>Entregue Os Corrompidos Blackwood
    .target Thundris Windweaver
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >>Apague a |T134059:0|t|cRXP_LOOT_[Amostra de Grão Bosquenero]|r na mochila, pois não é mais necessário
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >>Apague a |T133944:0|t|cRXP_LOOT_[Amostra de Castanha Bosquenero]|r na mochila, pois não é mais necessário
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >>Apague a |T134013:0|t|cRXP_LOOT_[Amostra de Fruta Bosquenero]|r na mochila, pois não é mais necessário
step
    #season 1
    #xprate >1.59
    #optional
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Compre uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_e uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Isto é para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_enquanto estiver no barco em breve|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .target Dalmond
step
    #season 1
    #xprate >1.59
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .vendor 6301 >>|cRXP_BUY_Compre|r [Temperos Suaves] |cRXP_BUY_dele até que você tenha|r [Temperos Suaves] |cRXP_BUY_em quantidade igual ou maior que a de|r [Ovo Pequeno] |cRXP_BUY_que você possui atualmente|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step
    #xprate >1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2139 >>Entregue A Esperança de Tharnariun
    .target Tharnariun Treetender
step
    #xprate >1.59
    #optional
    #label PeltEnd
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Entregue Um Mestre Perdido
    .target Terenthis
    .isQuestTurnedIn 986
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_Se você equipar o|r |T133762:0|t[Manto Encantado de Espreitaluna]|cRXP_WARN_, certifique-se de guardar seu manto atual para depois, pois o|r |T133762:0|t[Manto Encantado de Espreitaluna] |cRXP_WARN_será perdido ao entregá-lo|r
    .equip 15,5387 >>|cRXP_WARN_Equipe o|r |T133762:0|t[Manto Encantado de Espreitaluna] |cRXP_WARN_se for melhor que seu manto atual|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
    #xprate >1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
    .target Gubber Blump
    .isQuestComplete 1138
step
    #xprate >1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >>Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde

----End of Darkshore 2x 20 Turnins & Druid Training----
----Start of 2x Non-Deadmines Training/Class q section----



step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >>Viaje até o cais do barco do Porto de Menethil
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #label DarkshoreNoDMCook1
    #requires TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #requires DarkshoreNoDMCook1
    #completewith MenethilNoDMBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinheiro] |cRXP_WARN_os|r |T132832:0|t|cRXP_LOOT_[Pequeno Eggs]|r |cRXP_WARN_e|r |T134059:0|t[Temperos Suaves] |cRXP_WARN_into|r |T132834:0|t[Herb Baked Eggs]
    .usespell 2550
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .dungeon !DM
step << Warrior/Paladin
    #xprate >1.59
    #ah
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Evolua seus|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Menethil Harbor se necessário|r << Warrior/Paladin/Rogue
    >>|cRXP_WARN_Se você tem uma arma muito boa na sua mochila que você pode equipar em breve, pule este passo|r
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #ssf << Paladin/Warrior
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Evolua seus|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Menethil Harbor se necessário|r << Warrior/Paladin/Rogue
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin
    #ah
    #xprate >1.59
    #optional
    #label PalWarSkip20
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brak Durnad|r em Menethil Harbor
    .vendor 1441 >>|cRXP_BUY_Compre uma|r [Espada do Carrasco] |cRXP_BUY_com ele (se estiver disponível e você puder pagar)|r
    >>|cRXP_WARN_Se não houver um, não se preocupe pois você irá para o Leilão mais tarde|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << Warrior/Paladin
    #ssf
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brak Durnad|r dentro
    >>|cRXP_BUY_Compre uma|r [Espada do Carrasco] |cRXP_BUY_com ele (se estiver disponível e você puder pagar)|r
    >>|cRXP_BUY_Se não houver um, compre um|r |T135280:0|t[Falx Dácia] |cRXP_BUY_dela se conseguir pagar|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #optional
    +Equipe a [Espada do Carrasco]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #optional
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << !NightElf Warrior/Paladin/Mage/Warlock/!NightElf Rogue
    #xprate >1.59
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fly Ironforge >>Voe para Altaforja
    .target Shellei Brondir
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>Salte da ponta do píer e nade até o ponto de referência
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Use o recurso de auto-destravamento do personagem unstuck para pular para Altaforja. Você precisará deslogar no local, depois acessar o menu de ajuda em outro personagem (alternativamente, cole o link de destravamento abaixo no navegador), role até autoatendimento. Clique em destravar no seu personagem e mova-se. Se não conseguir se destravar, ignore esta etapa e nade ao longo das montanhas até Cerro Oeste
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Clique aqui para ver o vídeo de referência
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> Clique aqui para o link de desbloqueio
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM




----Start of NE Warrior and Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >>Se o site de destravamento não estiver disponível, nade até Cerro Oeste
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >>Corra pela praia e siga até a Colina da Sentinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>Corra para Ventobravo
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59 << !Hunter
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >>Treine Espadas de Uma Mão << Rogue
    .train 202 >>Treine Espadas de Duas Mãos << Warrior
    .target Woo Ping
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Ironforge
    .dungeon !DM




----End of NE Warrior Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r lá dentro
    .train 197 >>Treine Machados de Duas Mãos
    .train 199 >>Treine Maças de Duas Mãos
    .target Buliwyf Stonehand
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r embaixo
    >>|cRXP_BUY_Compre as|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #ah
    #optional << NightElf
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r embaixo
    >>|cRXP_BUY_Compre um|r |T135280:0|t[Falx Dácia] |cRXP_BUY_dela ou verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brenwyn Wintersteel
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional << NightElf
    #completewith DeeprunDM
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith next
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >>Caminhe para |cRXP_FRIENDLY_Bilban Lançachave|r
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional << NightElf
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step <<Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .accept 968 >>Aceite Os Poderes de Baixo
    .use 5352
    .itemcount 5352,1
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gerrig Agarrosso|r dentro
    .turnin 968 >>Entregue Os Poderes de Baixo
    .target Gerrig Bonegrip
    .isOnQuest 968
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>Vá para |cRXP_FRIENDLY_Ginny Longafruta|r dentro
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ginny Longafruta|r dentro
    >>|cRXP_BUY_Compre até 4|r |T134419:0|t[Runa de Teleporte] |cRXP_BUY_dela|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon !DM
step << Mage
    #xprate >1.59
    #label MilstaffNoDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milstaff Intempestivus|r
    .train 3562 >>Treine |T135763:0|t[Teleporte: Altaforja]
    .target Milstaff Stormeye
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine suas magias de classe
    .target Dink
    .dungeon !DM
step << Paladin
    #xprate >1.59
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .trainer >>Treine suas magias de classe
    .target Brandur Ironhammer
    .zoneskip Darkshore
    .dungeon !DM
step << skip --logout skip Mage
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Faça um Salto no topo do pilar acima de |cRXP_FRIENDLY_Bink|r, depois caminhe ligeiramente para leste dela para a posição da seta. Posicione seu personagem até parecer que está flutuando, depois realize um Logout Pular por deslogar e reconectar|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1455,53.164,7.037,10 >>Entre na casa de |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << skip --logout skip Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Caminhe para o topo da cama, depois salte para o topo da estante de livros. Execute um Pulo de Logout ao fazer logout e login novamente|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << skip --logout skip Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Faça um Salto no topo da Cabeça do Grifo. Realize um Logout Pular por deslogar e reconectar|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    #label DeeprunNoDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #completewith WepTrainNoDM << !Warrior
    >>|cRXP_WARN_Evolua seus|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto estiver no Tram|r
    >>|cRXP_WARN_Você precisará de seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_em nível 80+ para uma missão depois|r << Rogue !Dwarf
    .zone Stormwind City >>Pegue o Metrô Correfundo para Ventobravo
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Billibub Cogspinner
    .zoneskip Darkshore << Warrior/Paladin
    .bronzetube
    .train 201,1 << NightElf Rogue --1h swords not trained
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .turnin 1338 >>Entregue Ordens dos Lançatroz
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>Vá em direção a |cRXP_FRIENDLY_Wu Shen|r dentro do Centro de Comando
    .zoneskip Darkshore
    .zoneskip Ironforge
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r no andar de cima
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .zoneskip Darkshore
    .zoneskip Ironforge
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Treine|r |T132282:0|t[Emboscar] |cRXP_WARN_se tiver dinheiro extra e um|r |T135641:0|t[Dagger] |cRXP_WARN_equipado ou na mochila. Isso economizará tempo depois|r
    .train 8676 >>Treine |T132282:0|t[Emboscar]
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Certifique-se de treinar|r |T132320:0|t[Furtividade]|cRXP_WARN_,|r |T133644:0|t[Bater Carteira]|cRXP_WARN_, e|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_pois você precisará deles depois|r
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .dungeon !DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Certifique-se de treinar|r |T133644:0|t[Bater Carteira]|cRXP_WARN_e|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_pois você precisará deles depois|r
    >>|cRXP_WARN_TENHA MUITO CUIDADO com sua gestão de dinheiro nos próximos passos. Compre apenas feitiços essenciais. Você precisará ter dinheiro para o Desaparecer em breve e 75 de prata para obter uma runa depois de voltar para as Terras Úmidas|r
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .dungeon !DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>Certifique-se de treinar [Abrir Fechadura] pois você precisará disso mais tarde
    >>|cRXP_WARN_TENHA MUITO CUIDADO com seu gerenciamento de ouro nos próximos passos. Compre apenas magias essenciais. Você precisará de ouro para Vanish em breve e 75 de prata para obter uma runa após retornar para Wetlands|r
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >>Vá em direção a |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r dentro da SI:7, no andar superior
    .dungeon !DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .accept 2281 >>Aceite Encontro em Cristarrubra
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>Aceite Mathias e os Défias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon !DM
step << NightElf Rogue/Mage/Warlock
    #xprate >1.59 << !Hunter
    #season 1 << Rogue sod
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >>Treine Espadas de Uma Mão << Mage/Rogue/Warlock
    .train 1180 >>Treine Adagas << Mage
    .train 202 >>Treine Espadas de Duas Mãos << Warrior
    .target Woo Ping
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith NoDMStockadeEnd
    +Equipe a [Espada do Carrasco]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r no interior
    >>|cRXP_BUY_Compre uma|r |T135280:0|t[Falx Dácia] |cRXP_BUY_dela ou procure na Auction House por algo melhor ou mais barato|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marcia Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .zoneskip Stormwind City,1
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r dentro
    >>|cRXP_BUY_Compre uma|r |T135342:0|t[Cris] |cRXP_BUY_dela ou procure na Auction House por algo melhor ou mais barato|r
    >>|cRXP_WARN_Tenha muito cuidado com o gerenciamento do seu dinheiro nos próximos passos. Compre apenas uma adaga se você não tiver dinheiro. Você precisará de dinheiro para o Sumir em breve e 75 prata para obter uma runa depois de retornar aos Pântanos|r
    .collect 2209,2 --Kris (2)
    .target Marcia Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_WARN_Compre uma|r |T135342:0|t[Cris] |cRXP_BUY_dela se você puder pagar por isso|r
    >>|cRXP_WARN_TENHA MUITO CUIDADO com a gestão do seu dinheiro nos próximos passos. Compre apenas um punhal se você não tiver o dinheiro. Você precisará ter dinheiro para Vanish em breve e 75 prata para obter uma runa após retornar a Wetlands|r
    .collect 2209,1 --Kris (2)
    .target Marcia Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Equipe o|r |T135342:0|t[Cris]
    .use 2209
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .xp <21,1
    .dungeon !DM



----Start of 2x Non-Deadmines Rogue Class q section----



step << Rogue
    #xprate >1.59
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre o |T134437:0|t[Antipeçonha] para sua missão |T132290:0|t[Venenos] mais tarde, e o resto para entregas mais rápidas em Montanhas Cristarrubra em breve << !Dwarf
    >>Compre os itens a seguir para entregas mais rápidas em Montanhas Cristarrubra em breve << Dwarf
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T134437:0|t[Antipeçonha] << !Dwarf
    >>|T134172:0|t[Grande Goretusco Snout]
    >>|T134028:0|t[Carne de Condor Resistente]
    >>|T134321:0|t[Carne de Aranha Crocante]
    .collect 6452,1,2359,1 << !Dwarf --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para Ventobravo << !Human
    .fly Westfall >>Voe para Cerro Oeste << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela << !Human
    .fly Redridge >>Voe para Montanhas Cristarrubra << Human
    .target Thor
    .dungeon !DM
step << Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .isOnQuest 65
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teócrito|r no topo da Torre de Azora
    .accept 94 >>Aceite A Olho Vigilante
    .target Theocritus
    .dungeon !DM
    .xp <20,1
step << !Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre-cuca Breanna|r no interior
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiley, o Negro|r no andar de cima
    .turnin 65 >>Entregue A Irmandade Défias
    .accept 132 >>Aceitar A Irmandade Défias
	.target Wiley the Black
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Rendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >>Entregue Redridge Encontro Marcado
    .accept 2282 >>Aceite Moinho de Alther
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .accept 89 >>Aceite The Everstill Ponte
    .target Foreman Oslow
    .xp 21.4,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #sticky
    #completewith next
    .goto Redridge Mountains,39.6,33.2,0
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>Você pode matar alguns dos Gnolls enquanto vai para o Moinho do Alther. Você concluirá este objetivo no caminho de volta
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116,100 >>Dirija-se para o Moinho do Alther
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>Você DEVE fazer isso para a missão [Venenos] mais tarde
    >>|cRXP_WARN_Fique sobre o ponto de referência. Posicione a câmera e o cursor até conseguir clicar 3|cRXP_PICK_Baú de Exercício|r uma vez sem precisar mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abra as|cRXP_PICK_Baú de Exercício|r no chão em Moinho de Alter até sua habilidade de |r[Abrir Fechadura] chegar a 80|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Abra |cRXP_PICK_Cofre de Lucius|r. Saqueie-o para obter o |cRXP_LOOT_Símbolo de Ladroagem|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,39.6,33.2
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>Termine de matar os |cRXP_WARN_Gnolls|r para as peças da ponte
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .turnin 89 >>Entregue The Everstill Ponte
    .isQuestComplete 89
    .target Foreman Oslow
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >>Entregue Moinho de Alther
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >>Descartar o |T134328:0|t[Certificate of Thievery] da mochila, pois não é mais necessário
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 21+14325 >>Certifique-se de que você tem pelo menos 14k xp no nível 21 antes de deixar Redridge. Se você ainda não chegou lá, considere fazer a missão |cRXP_ENEMY_Colar de Nida|r de |cRXP_FRIENDLY_Shawn|r ou a missão |cRXP_ENEMY_As Ferramentas Perdidas|r do |cRXP_FRIENDLY_Encarregado Oslow|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra << !Human
    .fly Westfall >>Voe para Cerro Oeste
    .target Ariena Stormfeather
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 132 >>Entregue A Irmandade Défias
    .accept 135 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Mate os |cRXP_ENEMY_Pigmeu Venenom Teia Aranhas|r e os |cRXP_ENEMY_Venenom Teia Aranhas|r. Saque-os para um |cRXP_LOOT_Pequeno Venenom Sac|r e suas |cRXP_LOOT_Pegajosas Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa de um |cRXP_LOOT_Pequeno Venenom Sac|r para criar uma|r |T134437:0|t[Antipeçonha]|cRXP_WARN_ depois para remover o|r |T136230:0|t[Toque de Zanzil]|cRXP_WARN_ debilitação depois|r
    >>|cRXP_WARN_Guarde as |cRXP_LOOT_Pegajosas Pernas de Aranha|r para depois|r
    >>|cRXP_WARN_Se você tem um amigo|r |T626003:0|t|cFFF48CBAThe Defias Brotherhood|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_você pode pular este passo e pedir a eles para removê-lo para você depois|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTE ATENÇÃO NA SEÇÃO A SEGUIR==|r
    >>Pressione Escape, depois vá em -> Opções -> Controles
    >>|cRXP_WARN_Verifique "Ativar a Tecla Interagir" e atribua a opção "Interagir com Alvo" a uma tecla|r
    >>|cRXP_WARN_Além disso, é recomendado que você ative Placas de Nome de Inimigos (Tecla Padrão: V) pois permite que você veja inimigos atrás de alguns cantos dentro da torre|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Agente Marta Hari|r
    >>Você DEVE fazer esta missão para [Venenos]
    .turnin 2360 >>Entregue Mathias e os Défias
    .accept 2359 >>Aceite A Torre de Klaven
    .target Agent Kearnen
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>Use |T133644:0|t[Bater Carteira] no |cRXP_ENEMY_Malformed Parasita Défias|r. Saque-o para a |cRXP_LOOT_Defias Torre Chave|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_O |cRXP_ENEMY_Drone Défias Malformado|r surge na entrada da torre, depois patrulha ao redor da parte externa|r
    >>|cRXP_WARN_Tenha cuidado pois ele causa muito dano. Se sua|r |T132320:0|t[Furtividade]|cRXP_WARN_ quebra, rapidamente use|r |T132307:0|t[Disparada]|cRXP_WARN_ e corra para longe|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
    .mob Malformed Defias Drone
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +Equipe a [Adaga de Madeira Curva] para esta missão, caso você ainda não tenha uma [Adaga] equipada
    .use 15396
    .itemcount 15396,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Mortwake
    .goto 1436,70.421,74.031
    >>Suba até o 2º andar mais alto da torre. Enquanto estiver em [Furtividade] |cRXP_WARN_ e as |cRXP_ENEMY_Sentinelas da Torre Défias|r não estiverem perto de você, pule na cadeira, depois na lâmpada, então na estante de livros no topo do local do ponto de referência |r
    >>Saia manualmente de [Furtividade]|cRXP_WARN_, depois pressione sua tecla de atalho "Interagir com Alvo" para abrir o |cRXP_PICK_Baú da Floresta do Crepúsculo|r. Saqueie-o para obter |cRXP_LOOT_Diário de Filipe Pinel|r |r
    >>OBS.: Sua [Furtividade] vai parar de funcionar temporariamente após saquear |cRXP_LOOT_Diário de Filipe Pinel|r
    >>|cRXP_WARN_Esteja preparado para correr se você não matar as |cRXP_ENEMY_Sentinelas da Torre Défias|r no 2º andar. Elas provavelmente vão te manter em aggro permanente (mas sem te atacar) quando você estiver em cima da estante pois é um ponto de evade|r
    >>|cRXP_WARN_Se você tem um|r |T135641:0|t[Dagger]|cRXP_WARN_ na mochila ou equipado, você pode usar|r |T132282:0|t[Emboscar]|cRXP_WARN_ nos |cRXP_ENEMY_Defias Torre Patrollers|r e |cRXP_ENEMY_Defias Torre Sentries|r dentro para matá-los instantaneamente. Esteja preparado para correr depois que você matar o primeiro |cRXP_ENEMY_Defias Torre Sentinela|r e lembre-se que você pode ser atingido de cima. Isto é mais lento, mas MUITO mais seguro|r
    >>|cRXP_WARN_Tome cuidado, pois |cRXP_ENEMY_Parasita Défias Mal Formado|r e |cRXP_ENEMY_Parasita Défias|r podem ficar na entrada da torre, caso você precise sair correndo dela|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Conjure [Forma de Pedra] para remover o debuff [Toque de Zanzil]
    .aura -9991
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>Vá em direção à |cRXP_FRIENDLY_Suzi Lira|r
    .aura -9991
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .skill firstaid,80 >>|cRXP_WARN_Eleve seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_até 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .train 7934 >>|cRXP_WARN_treine|r |T134437:0|t[Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    >>|cRXP_WARN_Lembre-se de equipar novamente sua arma principal se você trocou para uma|r |T135641:0|t[Adaga] |cRXP_WARN_anteriormente|r << Rogue !sod
    .turnin 135 >>Entregue A Irmandade Défias
--  .accept 141 >> Accept The Defias Brotherhood
    .turnin 2359 >>Entregue A Torre de Klaven
    .target Master Mathias Shaw
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jasper Fel|r no andar térreo do prédio
    >>Compre reagentes para criar [|cRXP_FRIENDLY_Veneno Instantâneo|r] e [|cRXP_FRIENDLY_Sumir|r] com ele
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
    #xprate >1.59
    >>Abra seu livro de magias e encontre a habilidade |T136242:0|t[|cRXP_FRIENDLY_Venenos|r] na aba geral. Abra-a e crie 20 Venenos Instantâneos. |cRXP_WARN_Lembre-se de mantê-los aplicados em ambas as suas armas durante o combate|r
    .collect 6947,20 --Instant Poison (20)
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Tenha muito cuidado com o gerenciamento do seu dinheiro nos próximos passos. Compre apenas magias essenciais. Você precisará de 75 prata para obter uma runa depois de um par de missões nos Pântanos|r
    >>|cRXP_WARN_Aprenda|r |T132331:0|t[Sumir] e |T132320:0|t[Furtividade](nível 2). Você vai precisar destas para desbloquear |T236270:0|t[Mistura Mortífera] em breve
    .train 1856 >>Aprenda |T132331:0|t[Sumir]
    .train 1785 >>Aprenda |T132320:0|t[Furtividade] (nível 2)
    .target Osborne the Night Man
    .dungeon !DM


----End of 2x Non-Deadmines Rogue Class q section----


step << Warlock
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r no interior
    .vendor 1312 >>|cRXP_BUY_Compre uma|r |T135469:0|t[Varinha do Crepúsculo] |cRXP_BUY_dela se você puder pagar|r
    >>|cRXP_BUY_Alternativamente, Compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_da Auction House se for mais barato que 52s 47c|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r dentro
    >>|cRXP_BUY_Compre a|r |T135469:0|t[Varinha do Crepúsculo] |cRXP_BUY_dela|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Equipe a|r |T135469:0|t[Varinha do Crepúsculo]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Equipe o|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado. Desça as escadas
    .dungeon !DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2NoDM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Spackle Cardopomo|r
    .vendor >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório de Tormento (Nível 2)] |cRXP_BUY_dela|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon !DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1716 >>Aceite Devorador de Almas
    .target Gakin the Darkbinder
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2NoDMEnd
    #requires Torment2NoDM
    .train 20317 >>|cRXP_WARN_Use o|r |T133738:0|t[Grimório de Tormento (Nível 2)]
    .target Spackle Thornberry
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon !DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>Suba na Torre do Mago. Atravesse o Portal Verde
    .goto Stormwind City,39.681,79.538,15 >>Vá para |cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >>Treine [Teleporte: Ventobravo]
    .target Larimaine Purdue
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #season 1 >> Rogue
    #requires Torment2NoDMEnd << Warlock
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Argos Umbrurmúrio|r
    .accept 3765 >>Aceite A Corrupção no Exterior
    .zoneskip Ironforge << Warrior
    .zoneskip Darkshore << Warrior
    .target Argos Nightwhisper
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .hs >>Use sua Pedra de Retorno para Menethil Harbor. |cRXP_WARN_Use um hearthstone alternativo dos Stockades em vez disso se estiver em recarga|r
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_Entre no Stockade em Ventobravo|r
    >>|cRXP_WARN_Ao entrar:|r
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Clique aqui para copiar + colar esta macro no chat para voltar improvisadamente a Auberdine|r
    .zone Darkshore >>|cRXP_WARN_Se você não conseguir fazer isto, volte para Auberdine|r
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith NEWarRogNoDMIFPP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #label NEWarRogNoDMNoFP1
    #completewith NEWarRogNoDMIFPP
    >>|cRXP_WARN_Evolua seus|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto estiver no Tram|r
    .zone Ironforge >>Pegue o Deeprun Tram para Ironforge
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #requires NEWarRogNoDMNoFP1
    #label NEWarRogNoDMNoFP2
    #completewith NEWarRogNoDMIFPP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .bronzetube
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP2
    #label NEWarRogNoDMNoFP3
    #completewith NEWarRogNoDMIFPP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r lá dentro
    .train 197 >>Treine Machados de Duas Mãos
    .train 199 >>Treine Maças de Duas Mãos
    .target Buliwyf Stonehand
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP3
    #label NEWarRogNoDMNoFP4
    #completewith NEWarRogNoDMIFPP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r embaixo
    >>|cRXP_BUY_Compre a|r |T135427:0|t[Adaga de Arremesso Pesada] |cRXP_BUY_dela|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP4
    #label NEWarRogNoDMNoFP5
    #completewith NEWarRogNoDMIFPP
    +|cRXP_WARN_Equipe a|r |T135427:0|t[Adaga de Arremesso Pesada]
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #label NEWarRogNoDMIFPP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .accept 968 >>Aceite Os Poderes de Baixo
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gerrig Agarrosso|r dentro
    .turnin 968 >>Entregue Os Poderes de Baixo
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .isOnQuest 968
    .dungeon !DM



----End of 2x Non-Deadmines Training/Class q section----
----Start of 2x Non-Deadmines (Darnassus) training section----

step << Mage/Warlock/Rogue
    #xprate >1.59
    #label NoDMStockadeEnd
    #requires Torment2NoDMEnd << Warlock
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_Zone into the Stockade em Objetos de TBC|r
    >>|cRXP_WARN_Uma vez dentro:|r
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Click here to Copiar + Paste this macro into chat to ghetto hearth back to Auberdine|r
    .zone Darkshore >>|cRXP_WARN_Se você não conseguir fazer isto, volte para Auberdine|r
    .zoneskip Teldrassil << Warrior
    .zoneskip Darnassus << Warrior
    .zoneskip Ironforge
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Menethil >>Voe para Pantanal
    .zoneskip Ironforge,1
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    .zone Wetlands >>Vá para Menethil Harbor
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>Vá para o cais do barco de Auberdine
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Nível seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto aguarda o barco para Auberdine se necessário|r << Warrior/Paladin/Rogue
    .zone Darkshore >>Pegue o barco para Auberdine
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << !Druid
    #xprate >1.59
    #optional
    #completewith next
    .hs >>Use a Pedra de Regresso para Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
    .cooldown item,6948,>0,1
    .dungeon !DM << !Dwarf/!Hunter



----End of 2x no DM Return to Darkshore Steps----
----End of 2x Non-Deadmines (Darnassus) training section----




step << Dwarf Hunter
    #xprate <1.59
    #softcore
    #optional
    #completewith next
    .deathskip >>Triture até que seu HS cooldown seja <6 minutos. Morra e retorne no |cRXP_FRIENDLY_Anjo da Cura|r
step << Dwarf Hunter
    #xprate <1.59
    #hardcore
    #optional
    #completewith next
    +Triture até seu HS cooldown ser <9 minutos e corra de volta para Auberdine
step << !NightElf !Hunter
    #xprate <1.59
    #softcore
    #optional
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step << !NightElf
    #xprate <1.59
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4763 >>Entregue Os Corrompidos Blackwood
    .target Thundris Windweaver
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >>Exclua a |T134059:0|t|cRXP_LOOT_[Amostra de Grão Bosquenero]|r da mochila, pois não é mais necessário
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >>Remova o |T133944:0|t|cRXP_LOOT_[Amostra de Castanha Bosquenero]|r da mochila, pois não é mais necessário
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >>Remova o |T134013:0|t|cRXP_LOOT_[Amostra de Fruta Bosquenero]|r da mochila, pois não é mais necessário
step << !NightElf
    #xprate <1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2139 >>Entregue A Esperança de Tharnariun
    .target Tharnariun Treetender
step << !NightElf
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Entregue Um Mestre Perdido
    .accept 993 >>Aceite Um Mestre Perdido
    .target Terenthis
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_Se você equipar o|r |T133762:0|t[Manto Encantado de Espreitaluna]|cRXP_WARN_, certifique-se de guardar seu manto atual para depois, pois o|r |T133762:0|t[Manto Encantado de Espreitaluna] |cRXP_WARN_será perdido ao entregá-lo|r
    .equip 15,5387 >>|cRXP_WARN_Equipe o|r |T133762:0|t[Manto Encantado de Espreitaluna] |cRXP_WARN_se for melhor que seu manto atual|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step << Dwarf Hunter
    #xprate <1.59
    #label TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    .goto 1439,33.169,40.179,15 >>Vá para o cais do barco de Darnassus
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #label DarnDwarfHCook1
    #requires TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #requires DarnDwarfHCook1
    #completewith DarnDwarfHBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinheiro] |cRXP_WARN_os|r |T132832:0|t|cRXP_LOOT_[Pequeno Eggs]|r |cRXP_WARN_e|r |T134059:0|t[Temperos Suaves] |cRXP_WARN_into|r |T132834:0|t[Herb Baked Eggs]
    .usespell 2550
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Dwarf Hunter
    #xprate <1.59
    #label DarnDwarfHBoat
    .goto 1439,33.213,39.883
    .zone Teldrassil >>Pegue o barco para Darnassus
    .zoneskip Darnassus
step << Dwarf Hunter
    #xprate <1.59
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fp Teldrassil >>Aprenda a rota de voo para Teldrassil
    .target Vesprystus
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Dwarf Hunter
    #xprate <1.59
    #completewith next
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .trainer >>Treine suas magias de classe
    .target Jocaste
    .dungeon !DM
step << Dwarf Hunter
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >>Treine Arcos
    .train 227 >>Treine Cajados
    .target Ilyenia Moonfire
step << Dwarf Hunter
    #xprate <1.59
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Compre um|r |T135489:0|t[Arco Recurvo Pesado] |cRXP_BUY_e uma|r |T134410:0|t[Aljava Média] |cRXP_BUY_dela|r
    .collect 3027,1 -- Heavy Recurve Bow
    .collect 11362,1 -- Medium Quiver
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #xprate <1.59
    #completewith next
    +Equipe o [Arco Recurvo Pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Dwarf Hunter
    #xprate <1.59
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
    .turnin 741 >>Entregue The Absent Minded Prospector
    .accept 942 >>Aceite O Prospector Distraído
    .target Chief Archaeologist Greywhisker
    .isOnQuest 741
step << Dwarf Hunter
    #xprate <1.59
    #optional
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
    .accept 942 >>Aceite O Prospector Distraído
    .target Chief Archaeologist Greywhisker
    .isQuestTurnedIn 741
step << Druid
    #xprate <1.59
    #optional
	#completewith MoongladeTrain
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    #xprate <1.5
    .goto Moonglade,56.2,30.4
    >>Vá para Vale da Lua
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 6124 >>Entregue Curando os Enfermos
    .accept 6125 >>Aceite Poder over Veneno
    .target Dendrite Starblaze
    .isQuestTurnedIn 6123
step << Druid
    #xprate <1.59
    #label MoongladeTrain
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
step << NightElf/Dwarf Hunter
    #completewith BeachedCloak
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >>Viaje para Auberdine
    .cooldown item,6948,<0
step << NightElf/Dwarf Hunter
    #xprate <1.59
    #optional
    #completewith next
    .hs >>Use a Pedra de Regresso para Auberdine
    .cooldown item,6948,>0,1
step
    #xprate <1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >>Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
    .target Gubber Blump
    .isQuestComplete 1138
step << NightElf
    #xprate <1.59
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4763 >>Entregue Os Corrompidos Blackwood
    .target Thundris Windweaver
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12342 >>Remova o |T134059:0|t|cRXP_LOOT_[Amostra de Grão Bosquenero]|r da mochila, pois não é mais necessário
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12343 >>Exclua a |T133944:0|t|cRXP_LOOT_[Amostra de Castanha Bosquenero]|r da mochila, pois não é mais necessário
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12341 >>Exclua a |T134013:0|t|cRXP_LOOT_[Amostra de Fruta Bosquenero]|r da mochila, pois não é mais necessário
step << NightElf Hunter
    #xprate <1.59
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalmond|r
    .vendor >>Reúna |T132382:0|t[Sharp Flechas]
    .target Dalmond
step << NightElf
    #xprate <1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2139 >>Entregue A Esperança de Tharnariun
    .target Tharnariun Treetender
step << NightElf
    #xprate <1.59
    #label LostMasters
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Entregue Um Mestre Perdido
    .accept 993 >>Aceite Um Mestre Perdido
    .target Terenthis




----End of <1.59x Turnin section----




step << NightElf
    #optional
    >>|cRXP_WARN_Se você equipar o|r |T133762:0|t[Manto Encantado de Espreitaluna]|cRXP_WARN_, certifique-se de guardar seu manto atual para depois, pois o|r |T133762:0|t[Manto Encantado de Espreitaluna] |cRXP_WARN_será perdido ao entregá-lo|r
    .equip 15,5387 >>|cRXP_WARN_Equipe o|r |T133762:0|t[Manto Encantado de Espreitaluna] |cRXP_WARN_se for melhor que seu manto atual|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7

----Start of Hunter Deadmines/All 2x Deadmines Section----
step
    #xprate <1.59 << !Hunter
    #label TravelMenethilDMBoat
    #completewith MenethilDMBoat
    .goto 1439,32.432,43.744,15 >>Viaje até o cais do barco do Porto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #optional
    #label DarkshoreDMCook1
    #requires TravelMenethilDMBoat
    #completewith MenethilDMBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #optional
    #requires DarkshoreDMCook1
    #completewith DarnDMBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinheiro] |cRXP_WARN_os|r |T132832:0|t|cRXP_LOOT_[Pequeno Eggs]|r |cRXP_WARN_e|r |T134059:0|t[Temperos Suaves] |cRXP_WARN_into|r |T132834:0|t[Herb Baked Eggs]
    .usespell 2550
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #label DarnDMBoat
    .goto Darkshore,32.29,44.05
    >>Você agora começará a viajar para As Minas Mortas
    >>|cRXP_WARN_Evolua seus|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Menethil Harbor se necessário|r << Warrior/Paladin/Rogue
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << Paladin/Warrior
    #ah
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brak Durnad|r dentro
    .vendor 1441 >>|cRXP_BUY_Compre uma|r [Espada do Carrasco] |cRXP_BUY_com ele (se estiver disponível e você puder pagar)|r
    >>Alternativamente, você pode verificar em breve a Casa de Leilões por algo melhor ou mais barato
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior
    #ssf
    #optional
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brak Durnad|r dentro
    >>|cRXP_BUY_Compre uma|r [Espada do Carrasco] |cRXP_BUY_com ele (se estiver disponível e você puder pagar)|r
    >>|cRXP_BUY_Se não houver um, compre um|r |T135280:0|t[Falx Dácia] |cRXP_BUY_dele se puder pagar|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +Equipe a [Espada do Carrasco]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << !NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fly Ironforge >>Voe para Altaforja
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>Salte da ponta do píer e nade até o ponto de referência
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Use o recurso de auto-destravamento do personagem unstuck para pular para Altaforja. Você precisará deslogar no local, depois acessar o menu de ajuda em outro personagem (alternativamente, cole o link de destravamento abaixo no navegador), role até autoatendimento. Clique em destravar no seu personagem e mova-se. Se não conseguir se destravar, ignore esta etapa e nade ao longo das montanhas até Cerro Oeste
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Clique aqui para ver o vídeo de referência
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> Clique aqui para o link de desembaraço
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM




----Start of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative section----



step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >>Se o site de destravamento não estiver disponível, nade até Cerro Oeste
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >>Corra pela praia e siga até a Colina da Sentinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>Corra para Ventobravo
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>Vá em direção à |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r dentro da Catedral de Ventobravo
    .zoneskip Stormwind City,1
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r no interior
    .trainer >>Treine suas magias de classe
    .target High Priestess Laurena
    .zoneskip Stormwind City,1
    .dungeon DM
--XX Alt if NE priest cant website unstuck




----End of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative (and Alt NE Priest Training) section----





step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r lá dentro
    .train 197 >>Treine Machados de Duas Mãos << Warrior
    .train 199 >>Treine Maças de Duas Mãos << Warrior
    .train 266 >>Treine Armas de Fogo << Hunter
    .target Buliwyf Stonehand
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r embaixo
    >>|cRXP_BUY_Compre as|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .accept 968 >>Aceite Os Poderes de Baixo
    .use 5352
    .itemcount 5352,1
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gerrig Agarrosso|r dentro
    .turnin 968 >>Entregue Os Poderes de Baixo
    .target Gerrig Bonegrip
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isOnQuest 968
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>Vá até |cRXP_FRIENDLY_Ginny Longafruta|r lá dentro
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ginny Longafruta|r lá dentro
    >>|cRXP_BUY_Compre até 4|r |T134419:0|t[Runa de Teleporte] |cRXP_BUY_dela|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon DM
step << Mage
    #xprate >1.59
    #label MilstaffDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milstaff Intempestivus|r
    .train 3562 >>Treine [Teleporte: Altaforja]
    .target Milstaff Stormeye
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine suas magias de classe
    .target Dink
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional << NightElf
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r
    .trainer >>Treine suas magias de classe
    .target Toldren Deepiron
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip Mage/Priest
    #xprate >1.59
    #optional
    #requires MilstaffDM << Mage
    #completewith DeeprunDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salte no topo do pilar acima de |cRXP_FRIENDLY_Bink|r, depois caminhe ligeiramente para o leste dela até a posição de seta. Posicione seu personagem até parecer que está flutuando, depois realize um Logout Pular fazendo logout e retornando|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >>Treine suas magias de classe
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >>Entre na casa de |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor 6382 >>|cRXP_BUY_Compre|r [Grimórios] |cRXP_BUY_para seus mascotes, se desejar|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Caminhe para o topo da cama, depois salte para o topo da estante de livros. Execute um Pulo de Logout ao fazer logout e login novamente|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,53.164,7.037,10 >>Entre na casa de |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Caminhe para o topo da cama, depois salte para o topo da estante de livros. Execute um Pulo de Logout ao fazer logout e login novamente|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --NightElf Hunter/NightElf Warrior
    #xprate >1.59 << !Hunter
    #optional
    #completewith DeeprunDM
    .goto 1455,60.975,90.479
    .goto 1455,76.414,51.226,20 |cRXP_WARN_Walk onto the railing next to |cRXP_FRIENDLY_Buliwyf Stonehand|r on the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salte no topo da Cabeça do Grifo. Realize um Logout Pular fazendo logout e retornando|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    #label DeeprunDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    #completewith ShoniAccept
    >>|cRXP_WARN_Evolua seus|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto estiver no Tram|r
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_para ser 80+ para uma missão depois|r << Rogue !Dwarf
    .zone Stormwind City >>Pegue o Metrô Correfundo para Ventobravo
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniAccept
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .accept 2040 >>Aceite Ataque Subterrâneo
    .target Shoni the Shilent
    .dungeon DM
step << Human
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .turnin 1338 >>Entregue Ordens dos Lançatroz
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r
    .accept 167 >>Aceite Oh, Irmão...
    .accept +168 >>Aceite Coletando Memórias
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .dungeon DM
step << Hunter
--   #xprate >1.59
    #sticky
    #label DMPetTrain
    .goto 1453,61.576,15.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karrina Mekenda|r dentro
    .trainer 2879 >>Treine as magias do seu mascote
    .target Karrina Mekenda
    .dungeon DM
step << Hunter
--   #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer 5515 >>Treine suas magias de classe
    .target Einris Brightspear
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires DMPetTrain << Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r dentro
    .accept 167 >>Aceite Oh, Irmão...
    .accept 168 >>Aceite Coletando Memórias
    .target Wilder Thistlenettle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Treine|r |T132282:0|t[Emboscar] |cRXP_WARN_se você tiver dinheiro sobrando e um|r |T135641:0|t[Dagger] |cRXP_WARN_equipado ou na mochila. Isso economizará seu tempo depois|r
    .train 8676 >>Treine |T132282:0|t[Emboscar]
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Certifique-se de treinar|r |T132320:0|t[Furtividade]|cRXP_WARN_,|r |T133644:0|t[Bater Carteira]|cRXP_WARN_, e|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_pois você precisará deles depois|r
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .dungeon DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Certifique-se de treinar|r |T133644:0|t[Bater Carteira]|cRXP_WARN_e|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_pois você precisará deles depois|r
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .dungeon DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>Certifique-se de treinar [Abrir Fechadura] pois você precisará disso mais tarde
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >>Vá em direção a |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r dentro da SI:7, no andar superior
    .dungeon DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .accept 2281 >>Aceite Encontro em Cristarrubra
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>Aceite Mathias e os Défias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>Vá em direção a |cRXP_FRIENDLY_Wu Shen|r dentro do Centro de Comando
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r no andar de cima
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >>Treine Espadas de Uma Mão << Mage/Rogue/Warlock
    .train 1180 >>Treine Adagas << Mage/Druid/Priest
    .train 202 >>Treine Espadas de Duas Mãos << Warrior/Paladin/Hunter
    .target Woo Ping
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith WileyStart
    +Equipe a [Espada do Carrasco]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r dentro
    >>|cRXP_BUY_Compre uma|r [Espada Longa] |cRXP_BUY_com ela|r ou verifique a Casa de Leilões por algo melhor/mais barato
    .collect 923,1 --Longsword (1)
    .target Marcia Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_WARN_Compre uma|r |T135324:0|t[Espada Longa] |cRXP_BUY_dela se você conseguir pagar|r
    .collect 923,1 --Longsword (1)
    .target Marcia Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até |cRXP_FRIENDLY_Benedito Brião|r dentro da Catedral de Ventobravo
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duthorian Rall|r. Ele lhe dará o [|cRXP_LOOT_Tomo do Valor|r]
    .use 6776 >>Use o [|cRXP_WARN_Tomo do Valor|cRXP_LOOT_] |rpara iniciar a missão|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Aceite o Tomo da Bravura
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1649 >>Entregue O Tomo de Bravura
    .accept 1650 >>Aceite o Tomo da Bravura
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Argos Umbrurmúrio|r
    .accept 3765 >>Aceite A Corrupção no Exterior
    .target Argos Nightwhisper
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r dentro
    >>|cRXP_BUY_Compre um|r |T135280:0|t[Falx Dácia] |cRXP_BUY_dela ou procure algo melhor ou mais barato na Casa de Leilões|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marcia Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r dentro
    .vendor 1312 >>|cRXP_BUY_Compre um|r |T135469:0|t[Varinha do Crepúsculo] |cRXP_BUY_dela se você puder pagar|r
    >>|cRXP_BUY_Alternativamente, Compre um|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_da Casa de Leilões se for mais barato que 52s 47c|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r dentro
    >>|cRXP_BUY_Compre um|r |T135469:0|t[Varinha do Crepúsculo] |cRXP_BUY_dela|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equipe a|r |T135469:0|t[Varinha do Crepúsculo]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equipe o|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado. Desça as escadas
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Spackle Cardopomo|r
    .vendor >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Tormento (Rank 2)] |cRXP_BUY_dela|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1716 >>Aceite Devorador de Almas
    .target Gakin the Darkbinder
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DMEnd
    #requires Torment2DM
    .train 20317 >>|cRXP_WARN_Use o|r |T133738:0|t[Grimório of Tormento (Rank 2)]
    .target Spackle Thornberry
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>Suba a Torre do Mago. Passe pelo Portal Verde.
    .goto Stormwind City,39.681,79.538,15 >>Vá para |cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >>Treine [Teleporte: Ventobravo]
    .target Larimaine Purdue
    .dungeon DM
step << !Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Argos Umbrurmúrio|r
    .accept 3765 >>Aceite A Corrupção no Exterior
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
    #xprate >1.59
    .goto 1453,20.883,55.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sheldras Lunárvore|r
    .train 6756 >>Treine suas magias de classe
    .target Sheldras Moontree
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #optional
    #completewith next
    .goto 1453,50.929,57.781,10 >>Entre na Aljava Vazia dentro do anel do meio do Distrito Comercial
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ssf
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frederico Fornalha|r
    >>|cRXP_BUY_Compre um|r |T135489:0|t[Arco Recurvo Pesado] |cRXP_BUY_e uma|r |T134410:0|t[Aljava Média] |cRXP_BUY_dele|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ah
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frederico Fornalha|r
    >>|cRXP_BUY_Compre um|r |T135489:0|t[Arco Recurvo Pesado] |cRXP_BUY_e uma|r |T134410:0|t[Aljava Média] |cRXP_BUY_dele ou verifique a Casa de Leilões por algo melhor/mais barato|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step
    #xprate >1.59
    #ah
    #softcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre o |T134437:0|t[Antipeçonha] para sua missão |T132290:0|t[Venenos] mais tarde, e o resto para entregas mais rápidas em Montanhas Cristarrubra em breve << !Dwarf Rogue
    >>Compre os seguintes itens para entregas mais rápidas em Montanhas Cristarrubra e Cerro Oeste em breve << Paladin
    >>Compre os itens a seguir para entregas mais rápidas em Montanhas Cristarrubra em breve << !Paladin !Rogue/Dwarf Rogue
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T134437:0|t[Antipeçonha] << !Dwarf Rogue
    >>|T132794:0|t[Frasco de Óleo] << Paladin
    >>|T134172:0|t[Grande Goretusco Snout]
    >>|T134028:0|t[Carne de Condor Resistente]
    >>|T134321:0|t[Carne de Aranha Crocante]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 << Paladin -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre o |T134437:0|t[Antipeçonha] para sua missão |T132290:0|t[Venenos] depois, e o resto para entregas mais rápidas em Montanhas Cristarrubra e Cerro Oeste em breve << !Dwarf Rogue
    >>Compre os itens a seguir para entregas mais rápidas em Montanhas Cristarrubra e Cerro Oeste em breve << !Rogue/Dwarf Rogue
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T134437:0|t[Antipeçonha] << !Dwarf Rogue
    >>|T132794:0|t[Frasco de Óleo]
    >>|T134172:0|t[Grande Goretusco Snout]
    >>|T134028:0|t[Carne de Condor Resistente]
    >>|T134321:0|t[Carne de Aranha Crocante]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para Ventobravo << !Human
    .fly Westfall >>Voe para Cerro Oeste << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon DM
step << !Human
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #requires Torment2DMEnd << Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela << !Human
    .fly Redridge >>Voe para Montanhas Cristarrubra << Human/Warlock
    .target Thor
    .zoneskip Westfall,1
    .dungeon DM
step << Human
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .dungeon DM
    .isOnQuest 65
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teócrito|r no topo da Torre de Azora
    .accept 94 >>Aceite A Olho Vigilante
    .target Theocritus
    .dungeon DM
    .xp <20,1
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre-cuca Breanna|r dentro
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiley, o Negro|r no andar de cima
    .turnin 65 >>Entregue A Irmandade Défias
    .accept 132 >>Aceitar A Irmandade Défias
	.target Wiley the Black
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >>Entregue Redridge Encontro Marcado
    .accept 2282 >>Aceite Moinho de Alther
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>Você DEVE fazer isso para a missão [Venenos] mais tarde
    >>|cRXP_WARN_Fique sobre o ponto de referência. Posicione a câmera e o cursor até conseguir clicar 3|cRXP_PICK_Baú de Exercício|r uma vez sem precisar mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abra as|cRXP_PICK_Baú de Exercício|r no chão em Moinho de Alter até sua habilidade de |r[Abrir Fechadura] chegar a 80|r
    .dungeon DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Abra |cRXP_PICK_Cofre de Lucius|r. Saqueie-o para obter o |cRXP_LOOT_Símbolo de Ladroagem|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >>Entregue Moinho de Alther
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >>Descartar o |T134328:0|t[Certificate of Thievery] da mochila, pois não é mais necessário
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra << !Human !Warlock
    .fly Westfall >>Voe para Cerro Oeste
    .target Ariena Stormfeather
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 132 >>Entregue A Irmandade Défias
    .accept 135 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Mate os |cRXP_ENEMY_Pigmeu Venenom Teia Aranhas|r e os |cRXP_ENEMY_Venenom Teia Aranhas|r. Saque-os para um |cRXP_LOOT_Pequeno Venenom Sac|r e suas |cRXP_LOOT_Pegajosas Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa de um |cRXP_LOOT_Pequeno Venenom Sac|r para criar uma|r |T134437:0|t[Antipeçonha]|cRXP_WARN_ depois para remover o|r |T136230:0|t[Toque de Zanzil]|cRXP_WARN_ debilitação depois|r
    >>|cRXP_WARN_Guarde as |cRXP_LOOT_Pegajosas Pernas de Aranha|r para depois|r
    >>|cRXP_WARN_Se você tem um amigo|r |T626003:0|t|cFFF48CBAThe Defias Brotherhood|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_você pode pular este passo e pedir a eles para removê-lo para você depois|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTE ATENÇÃO NA SEÇÃO A SEGUIR==|r
    >>Pressione Escape, depois vá em -> Opções -> Controles
    >>|cRXP_WARN_Verifique "Ativar a Tecla Interagir" e atribua a opção "Interagir com Alvo" a uma tecla|r
    >>|cRXP_WARN_Além disso, é recomendado que você ative Placas de Nome de Inimigos (Tecla Padrão: V) pois permite que você veja inimigos atrás de alguns cantos dentro da torre|r
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Agente Marta Hari|r
    >>Você DEVE fazer esta missão para [Venenos]
    .turnin 2360 >>Entregue Mathias e os Défias
    .accept 2359 >>Aceite A Torre de Klaven
    .target Agent Kearnen
    .dungeon DM
step << Rogue
    #xprate >1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>Use |T133644:0|t[Bater Carteira] no |cRXP_ENEMY_Malformed Parasita Défias|r. Saque-o para a |cRXP_LOOT_Defias Torre Chave|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_O |cRXP_ENEMY_Drone Défias Malformado|r surge na entrada da torre, depois patrulha ao redor da parte externa|r
    >>|cRXP_WARN_Tenha cuidado pois ele causa muito dano. Se sua|r |T132320:0|t[Furtividade]|cRXP_WARN_ quebra, rapidamente use|r |T132307:0|t[Disparada]|cRXP_WARN_ e corra para longe|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
    .mob Malformed Defias Drone
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +Equipe a [Adaga de Madeira Curva] para esta missão, caso você ainda não tenha uma [Adaga] equipada
    .use 15396
    .itemcount 15396,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #label Mortwake
    .goto 1436,70.421,74.031
    >>Suba até o 2º andar mais alto da torre. Enquanto estiver em [Furtividade] |cRXP_WARN_ e as |cRXP_ENEMY_Sentinelas da Torre Défias|r não estiverem perto de você, pule na cadeira, depois na lâmpada, então na estante de livros no topo do local do ponto de referência |r
    >>Saia manualmente de [Furtividade]|cRXP_WARN_, depois pressione sua tecla de atalho "Interagir com Alvo" para abrir o |cRXP_PICK_Baú da Floresta do Crepúsculo|r. Saqueie-o para obter |cRXP_LOOT_Diário de Filipe Pinel|r |r
    >>OBS.: Sua [Furtividade] vai parar de funcionar temporariamente após saquear |cRXP_LOOT_Diário de Filipe Pinel|r
    >>|cRXP_WARN_Esteja preparado para correr se você não matar as |cRXP_ENEMY_Sentinelas da Torre Défias|r no 2º andar. Elas provavelmente vão te manter em aggro permanente (mas sem te atacar) quando você estiver em cima da estante pois é um ponto de evade|r
    >>|cRXP_WARN_Se você tem um|r |T135641:0|t[Dagger]|cRXP_WARN_ na mochila ou equipado, você pode usar|r |T132282:0|t[Emboscar]|cRXP_WARN_ nos |cRXP_ENEMY_Defias Torre Patrollers|r e |cRXP_ENEMY_Defias Torre Sentries|r dentro para matá-los instantaneamente. Esteja preparado para correr depois que você matar o primeiro |cRXP_ENEMY_Defias Torre Sentinela|r e lembre-se que você pode ser atingido de cima. Isto é mais lento, mas MUITO mais seguro|r
    >>|cRXP_WARN_Tome cuidado, pois |cRXP_ENEMY_Parasita Défias Mal Formado|r e |cRXP_ENEMY_Parasita Défias|r podem ficar na entrada da torre, caso você precise sair correndo dela|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Conjure [Forma de Pedra] para remover o debuff [Toque de Zanzil]
    .aura -9991
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>Vá em direção à |cRXP_FRIENDLY_Suzi Lira|r
    .aura -9991
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .skill firstaid,80 >>|cRXP_WARN_Eleve seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_até 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .train 7934 >>|cRXP_WARN_treine|r |T134437:0|t[Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    >>|cRXP_WARN_Lembre-se de equipar novamente sua arma principal se você trocou para uma|r |T135641:0|t[Adaga] |cRXP_WARN_anteriormente|r << Rogue
    .turnin 135 >>Entregue A Irmandade Défias
    .accept 141 >>Aceitar A Irmandade Défias
    .turnin 2359 >>Entregue A Torre de Klaven << Rogue
    .target Master Mathias Shaw
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith BandanaStart
    +Comece a reunir um grupo para as Minas Mortas
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Dungar Longdrink
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 141 >>Entregue A Irmandade Défias
    .accept 142 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,44.50,69.62,55 >>Viaje para Aldeia da Lua
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mate o |cRXP_ENEMY_Mensageiro Défias|r. Saqueie-o para obter a |cRXP_LOOT_Mensagem Misteriosa|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Mensageiro Défias|r aparece em Arroio da Lua. Ele caminha pela estrada ao norte de Arroio da Lua, até a Mina de Costa Dourada e a Mina de Jangolode. Se você não o vir pela estrada, espere-o aparecer em Arroio da Lua|r
    >>|cRXP_WARN_Ele tem um intervalo de reaparecimento de 4-5 minutos|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 142 >>Entregue A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Traidor Défias|r
    >>|cRXP_WARN_Você pode precisar esperar pelo |cRXP_FRIENDLY_Traidor Défias|r aparecer se ele não estiver lá|r
    >>|cRXP_WARN_Se você já montou uma equipe, certifique-se de que seu grupo também entregou a parte anterior primeiro antes de iniciar a escolta|r
    .accept 155 >>Aceitar A Irmandade Défias
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.56,71.71
    >>Escorte o |cRXP_FRIENDLY_Traidor Défias|r para Minas Mortas
    >>|cRXP_WARN_Fique sempre ao lado do |cRXP_FRIENDLY_Traidor Défias|r. Esteja pronto para enfrentar |cRXP_ENEMY_Pilhadores Défias|r e |cRXP_ENEMY_Saqueadores Défias|r ao chegar a Arroio da Lua|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 155 >>Entregue A Irmandade Défias
    .accept 166 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label BandanaStart
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Riel|r no topo da torre
    .accept 214 >>Aceite Bandanas de Seda Vermelha
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
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
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.55,71.69
    .subzone 1581 >>Entre no Esconderijo Défias com seu grupo
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith EnterDM
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith EnterDM
    >>Mate os |cRXP_ENEMY_Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    >>Você também pode completar isso dentro das Minas Mortas
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith next
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>Isto é concluído FORA da Masmorra
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mate |cRXP_ENEMY_Encarregado Espinhofolha|r. Saqueie-o para obter |cRXP_LOOT_Distintivo|r
    >>Isto é concluído FORA da Masmorra
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>Isto é concluído FORA da Masmorra
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >>Entre na Masmorra das Minas Mortas
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #optional
    #completewith VanCleef << !Paladin
    #completewith DeadminesBackdoor << Paladin
    >>Mate os |cRXP_ENEMY_Défias|r dentro de Minas Mortas. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore
    #optional
    #completewith DeadminesBackdoor
    >>Mate os |cRXP_ENEMY_Défias|r dentro de Minas Mortas. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>Mate |cRXP_ENEMY_Sneed|r. Saqueie-o para obter |cRXP_LOOT_Engrenotreco Gnomo|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith VanCleef
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label VanCleef
    >>Mate |cRXP_ENEMY_Edwin VanCleef|r. Saqueie-o para obter |cRXP_LOOT_Cabeça|r e |T133471:0|t[|cRXP_LOOT_Uma Carta Não Enviada|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #label DeadminesBackdoor
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    >>|cRXP_WARN_Pergunte ao seu grupo se eles podem ficar para ajudá-lo com a escolta de |cRXP_FRIENDLY_Dafne Calmafonte|r específica da Irmandade Defias em breve (se possível)|r << Paladin
    .subzone 920 >>Saia das Minas Mortas pela saída traseira a leste de |cRXP_ENEMY_Edwin VanCleef|r
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1436,39.444,85.755
    .goto 1436,40.010,86.514,20 >>Viaje para |cRXP_FRIENDLY_Dafne Calmafonte|r em seu campo
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dafne Calmafonte|r em seu campo para iniciar sua escolta
    >>|cRXP_WARN_Ela patrulha um pouco em seu campo|r
    >>|cRXP_WARN_Tenha cuidado pois isto pode ser ligeiramente difícil. Você enfrentará 3 ondas de 3, depois 4, depois 5 nível 17-18 |cRXP_ENEMY_Assaltante Defias|r
    .turnin 1650 >>Entregue O Tomo de Bravura
    .accept 1651,1 >>Aceite o Tomo da Bravura
    .link https://youtu.be/1-nnLcqIIlQ?si=kZi41eXT8ZQmSBY2&t=10 >>https://youtu.be/1-nnLcqIIlQ?si=kZi41eXT8ZQmSBY2&t=10 >> CLIQUE AQUI para um guia em vídeo
    .target Daphne Stilwell
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1436,41.311,88.506
    >>Proteja |cRXP_FRIENDLY_Dafne Calmafonte|r
    >>|cRXP_WARN_Se você ou |cRXP_FRIENDLY_Dafne Calmafonte|r morrerem, a missão falhará e você terá que tentar novamente|r
    >>|cRXP_WARN_Tenha cuidado pois isto pode ser um pouco difícil. Você enfrentará 3 ondas de 3, depois 4, depois 5 |cRXP_ENEMY_Assaltantes Defias|r nível 17-18
    .complete 1651,1 --Protect Daphne Stilwell (1)
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dafne Calmafonte|r
    >>|cRXP_WARN_Ela patrulha levemente por seu campo|r
    .turnin 1651 >>Entregue O Tomo de Bravura
    .accept 1652 >>Aceite o Tomo da Bravura
    .target Daphne Stilwell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #completewith next
    .goto Westfall,30.01,86.02,40 >>Viaje para o Farol de Cerro Oeste
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >>Aceite Ameaça Costeira
    .accept 103 >>Aceite Guardião da Chama
    .turnin 103 >>Entregue Guardião da Chama
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    #xprate >1.59
    #ssf
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >>Aceite Ameaça Costeira
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #ah
    #optional
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >>Aceite Ameaça Costeira
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mate o |cRXP_ENEMY_Velho Olho-turvo|r. Saque-o para obter sua |cRXP_LOOT_Escama|r
    >>|cRXP_ENEMY_Velho Olho-turvo|r |cRXP_WARN_patrulha acima e abaixo de Longshore. Se você não conseguir encontrá-lo, pule este passo|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 104 >>Entregue O Mar Não Está para Peixe
    .target Captain Grayson
    .isQuestComplete 104
    .dungeon DM
step
    #xprate >1.59
    #optional
    #hardcore << !Paladin
    #completewith DeadminesEnd
    .abandon 103 >>Abandone Guardião da Chama
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,42.55,71.69
    .subzone 1581 >>Entre no Defias Hideout sozinho
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1415,40.678,79.578
    >>Mate os |cRXP_ENEMY_Defias|r fora da Minas Mortas. Saqueie-os pelas |cRXP_LOOT_Red Silk Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step << !Paladin
    #xprate >1.59 << !Hunter
    >>Mate os |cRXP_ENEMY_Défias|r dentro de Minas Mortas. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    >>|cRXP_WARN_Se não há |cRXP_ENEMY_Defias|r dentro da Minas Mortas, mate-os do lado de fora|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #completewith DeadminesEnd
    .deathskip >>Morra e ressurja no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_Equipe o|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DeadminesEnd
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 166 >>Entregue A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Riel|r no topo da torre
    .turnin 214 >>Entregue Bandanas de Seda Vermelha
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #sticky
    #label LetterLater
    .abandon 373 >>Abandone The Unsent Carta. Você fará isso mais tarde
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Use |T135763:0|t[Teleporte: Ventobravo]
    .zoneskip Stormwind City
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .train 2138 >>Treine suas magias de classe
    .target Elsharin
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Mage
    #completewith ShoniEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .zoneskip Stormwind City
    .target Thor
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado. Desça as escadas
    .xp <22,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >>Treine suas magias de classe
    .target Ursula Deline
    .xp <22,1
    .dungeon DM
--XX Not adding one to check xp after turnins, waste of time to do that/take tram and train etc
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até |cRXP_FRIENDLY_Benedito Brião|r dentro da Catedral de Ventobravo
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1652 >>Entregue O Tomo de Bravura
    .accept 1653 >>Aceite O Teste da Retidão
    .target Duthorian Rall
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 19835 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>Vá em direção à |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r dentro da Catedral de Ventobravo
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r no interior
    .train 8103 >>Treine suas magias de classe
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    .train 1856 >>Treine suas magias de classe
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>Vá em direção a |cRXP_FRIENDLY_Wu Shen|r dentro do Centro de Comando
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r no andar de cima
    .train 6192 >>Treine suas magias de classe
    .target Wu Shen
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r dentro
    .turnin 167 >>Entregue Oh, Irmão...
    .turnin 168 >>Entregue Coletando Memórias
    .target Wilder Thistlenettle
    .dungeon DM
step << skip --Hunter - nothing good to train at 22
    #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .turnin 2040 >>Entregue Ataque Subterrâneo
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até |cRXP_FRIENDLY_Benedito Brião|r dentro da Catedral de Ventobravo
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1652 >>Entregue O Tomo de Bravura
    .accept 1653 >>Aceite O Teste de Retidão
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 19835 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>Vá em direção à |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r dentro da Catedral de Ventobravo
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r no interior
    .train 8103 >>Treine suas magias de classe
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    .train 1856 >>Treine suas magias de classe
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>Vá em direção a |cRXP_FRIENDLY_Wu Shen|r dentro do Centro de Comando
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r no andar de cima
    .train 6192 >>Treine suas magias de classe
    .target Wu Shen
    .xp <22,1
    .dungeon DM
--XX No way to check if the user has the ironforge FP, if they don't, send them to the trainer there instead
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Use |T135763:0|t[Teleporte: Ventobravo]
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r no topo da torre
    .train 2138 >>Treine suas magias de classe
    .target Elsharin
    .xp <22,1
    .dungeon DM
step << Druid
    #xprate >1.59
    #optional
    #completewith next
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
	>>Vá para Vale da Lua
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 8926 >>Treine suas magias de classe
    .target Loganaar
    .xp <22,1
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith NEIFFP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #label DeeprunDMNoFP1
    #completewith NEIFFP
    >>|cRXP_WARN_Evolua seus|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto estiver no Tram|r
    .zone Ironforge >>Pegue o Deeprun Tram para Ironforge
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #requires DeeprunDMNoFP1
    #label DeeprunDMNoFP2
    #completewith NEIFFP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .bronzetube
    .dungeon DM
step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #requires DeeprunDMNoFP2
    #label DeeprunDMNoFP3
    #completewith NEIFFP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r lá dentro
    .train 197 >>Treine Machados de Duas Mãos << Warrior
    .train 199 >>Treine Maças de Duas Mãos << Warrior
    .train 266 >>Treine Armas de Fogo << Hunter
    .target Buliwyf Stonehand
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP3
    #label DeeprunDMNoFP4
    #completewith NEIFFP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r embaixo
    >>|cRXP_BUY_Compre a|r |T135427:0|t[Adaga de Arremesso Pesada] |cRXP_BUY_dela|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP4
    #label DeeprunDMNoFP5
    #completewith NEIFFP
    +|cRXP_WARN_Equipe a|r |T135427:0|t[Adaga de Arremesso Pesada]
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #label NEIFFP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .accept 968 >>Aceite Os Poderes de Baixo
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gerrig Agarrosso|r dentro
    .turnin 968 >>Entregue Os Poderes de Baixo
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .isOnQuest 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires LetterLater
    #optional
    .hs >>Use a pedra do regresso para Costa Negra
    .zoneskip Darkshore
    .dungeon DM




----End of Hunter/All 2x Deadmines section----
----Start of <1.59x Redridge Transition----






step << !Hunter
--XX NightElf
    #xprate <1.59
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Compre uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_e uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Isto é para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_enquanto estiver no barco em breve|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1
    .target Dalmond
step << !Hunter
--XX NightElf
    #xprate <1.59
    #completewith next
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .vendor 6301 >>|cRXP_BUY_Compre|r [Temperos Suaves] |cRXP_BUY_dele até que você tenha|r [Temperos Suaves] |cRXP_BUY_em quantidade igual ou maior que a de|r [Ovo Pequeno] |cRXP_BUY_que você possui atualmente|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
--ZXCV
step << !Hunter
    #xprate <1.59
    #label TravelMenethilRRBoat
    #completewith MenethilRRBoat
    .goto 1439,32.432,43.744,15 >>Viaje até o cais do barco do Porto de Menethil
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
step << !Hunter
    #xprate <1.59
    #optional
    #label DarkshoreRRCook1
    #requires TravelMenethilRRBoat
    #completewith MenethilRRBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter
    #xprate <1.59
    #optional
    #requires DarkshoreRRCook1
    #completewith MenethilRRBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinheiro] |cRXP_WARN_os|r |T132832:0|t|cRXP_LOOT_[Pequeno Eggs]|r |cRXP_WARN_e|r |T134059:0|t[Temperos Suaves] |cRXP_WARN_into|r |T132834:0|t[Herb Baked Eggs]
    .usespell 2550
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #xprate <1.59
    #label MenethilRRBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Evolua seus|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Menethil Harbor se necessário|r << Rogue/Warrior/Paladin
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << !NightElf !Hunter
    #xprate <1.59
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nélio Allen|r
    .vendor >>|cRXP_WARN_Compre um|r |T133024:0|t[Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Nélio Allen|r não tiver uma|r
	.target Neal Allen
    .bronzetube
step << !NightElf !Hunter
    #xprate <1.59
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >>Voe para Altaforja
    .target Shellei Brondir



----Start of <1.59x Night Elf Wetlands->IF Transition----



step << !Hunter NightElf
    #xprate <1.59
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iago Halberque|r
    .accept 484 >>Aceite Crocolisco jovem é que dá pele boa
step << !Hunter NightElf
    #xprate <1.59
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
step << !Hunter NightElf
    #xprate <1.59
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nélio Allen|r
    .vendor >>|cRXP_WARN_Compre um|r |T133024:0|t[Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Nélio Allen|r não tiver uma|r
	.target Neal Allen
    .bronzetube
step << !Hunter NightElf !Warrior
    #xprate <1.59
    #completewith crocs
    >>Mate os |cRXP_ENEMY_Crocoliscos do Pantanal Jovem|r. Saqueie-os para obter |cRXP_LOOT_Pele de Crocolisco Jovem|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
    .xp <19,1--ignore if level 18 or below
step << !Hunter NightElf
    #xprate <1.59
    #completewith next
    .goto Wetlands,49.91,39.36,50 >>Viagem para o leste em direção a |cRXP_FRIENDLY_Einar Pegapétrea|r
step << !Hunter NightElf
    #xprate <1.59
    #label crocs
    .goto Wetlands,49.91,39.36
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einar Pegapétrea|r
    .accept 469 >>Aceite Entrega Diária
step << !Hunter NightElf !Warrior
    #xprate <1.59
    .goto Wetlands,53.2,41.3,55,0
    .goto Wetlands,58.5,50.8,55,0
    .goto Wetlands,62.1,61.4,55,0
    .goto Wetlands,64.0,72.2
    >>Mate os |cRXP_ENEMY_Crocoliscos do Pantanal Jovem|r. Saqueie-os para obter |cRXP_LOOT_Pele de Crocolisco Jovem|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
    .xp <19,1
step << skip --logout skip !Hunter NightElf
    #xprate 1.49-1.59
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Vá até a caverna na base da represa no leste do Pantanal
	.zone Loch Modan >>Desconecte-se em cima dos cogumelos no fundo da caverna.
    >>Quando você entrar novamente, isso irá teleportá-lo para Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >>https://www.youtube.com/watch?v=21CuGto26Mk >> CLIQUE AQUI para referência
step << !Hunter NightElf
    #xprate <1.5
    #completewith next
    .goto Wetlands,53.14,70.38,30,0
    .goto Wetlands,48.32,67.07,35,0
    .goto Wetlands,50.14,72.10,30,0
    .goto Loch Modan,25.4,10.6,30 >>Voe para Loch Modan
    .zone Loch Modan >>|cRXP_WARN_Fique na estrada principal para evitar inimigos|r
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Engenheiro-chefe Vedaçude VII|r
    .accept 250 >>Aceite A Ameaça Sombria que Paira
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,56.05,13.24
    >>Clique no |cRXP_PICK_Barril Suspeito|r
    .turnin 250 >>Entregue A Ameaça Sombria que Paira
    .accept 199 >>Aceite A Ameaça Sombria que Paira
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Engenheiro-chefe Vedaçude VII|r
    .turnin 199 >>Entregue A Ameaça Sombria que Paira
step << !Hunter NightElf
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << !Hunter NightElf
    #xprate <1.59
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
    .target Thorgrum Borrelson
step << !Hunter NightElf
    #xprate <1.59
    .goto Loch Modan,21.30,68.60,40,0
    .goto Loch Modan,19.11,62.11,25,0
    .goto Dun Morogh,86.04,51.05,20 >>Vá para Dun Morogh
    .zoneskip Ironforge
    .zoneskip Dun Morogh
step << !Hunter NightElf
    #xprate <1.59
    .goto Dun Morogh,55.13,34.91
    .zone Ironforge >>Viaje para Ironforge
step << skip --logout skip !Hunter NightElf
    #xprate <1.59
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    .zone Ironforge >>Dirija-se até a caverna trogg para o oeste e faça logout no topo da máquina de perfuração perto da entrada para fazer um logout skip, que o teletransportará para Ironforge
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >>https://www.youtube.com/watch?v=kbUSo62CfAM >> CLIQUE AQUI para referência
step << !Hunter NightElf
    #xprate <1.59
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden



----End of <1.59x Night Elf Wetlands->IF Transition----



step << skip --logout skip !Hunter
    #xprate <1.59
    #completewith next
    #optional
    .goto Ironforge,56.23,46.83,0
    .goto Ironforge,78.00,52.00,20 >>|cRXP_WARN_Perform a Logout skip pulando no topo de uma das cabeças do Gryphon, fazendo logout e depois log in novamente|r
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >>https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Clique aqui para um guia em vídeo|r
step << !Hunter
    #xprate <1.59
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor >>|cRXP_WARN_Compre um|r |T133024:0|t[Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Cortarroda Rodagiros|r não tiver um|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step << !Hunter
    #xprate <1.59
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >>Entre no Metrô Corredeira. Pegue o trem para Ventobravo
    >>|cRXP_WARN_Nível seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto espera o trem|r
    >>Você precisará de seu|cRXP_WARN_ |T135966:0|t[Primeiros Socorros] |rem 80 para uma missão no nível 24|cRXP_WARN_ << Rogue !Dwarf




----End of <1.59x Redridge Transition----




]])

----Start of <1.59x Redridge----
----2x and ALL Hunters stay in Darkshore/Ashen and grind----

RXPGuides.RegisterGuide([[
#xprate <1.59
#classic
#tbc
#season 0,1
#version 1
<< Alliance !Hunter
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 19-20 Redridge
#next 20-21 Costa Negra/Vale Gris

step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor >>|cRXP_WARN_Compre um|r |T133024:0|t[Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Bilubub Rodagiros|r não tiver um|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .accept 2040 >>Aceite Ataque Subterrâneo
    .target Shoni the Shilent
    .dungeon DM
step << !NightElf
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .turnin 1338 >>Entregue Ordens dos Lançatroz
    .target Furen Longbeard
    .isOnQuest 1338
step
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r
    .accept 167 >>Aceite Oh, Irmão...
    .accept 168 >>Aceite Coletando Memórias
    .target Wilder Thistlenettle
    .dungeon DM
step << !NightElf
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .turnin 399 >>Entregue Humilde Beginnings
    .target Baros Alexston
    .isQuestComplete 399
--XX Westfall 1x only
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>Vá para a Torre do Mago
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
step << Paladin/Priest !NightElf
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Paladin
    #label PalTrainer
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Priest !NightElf
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .trainer >>Treine suas magias de classe
    .target Brother Joshua
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r
    >>|cRXP_WARN_Compre um|r |T135139:0|t[Varinha Incandescente] |cRXP_WARN_se for uma melhoria|r
    >>|cRXP_WARN_É importante comprar uma varinha de dano não-sombrio. Você terá que lidar com inimigos resistentes a dano sombrio depois|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5210,1
    .target Ardwyn Cailen
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Certifique-se de treinar|r |T136058:0|t[Arrombamento] |cRXP_WARN_bem como você precisará para sua missão de classe Ladino em breve|r
    .trainer >>Treine suas magias de classe
    .train 1804 >>Treine [Abrir Fechadura]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>Entre na Sede SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Renzik "O Bicudo"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Renzik "O Bicudo"|r
    .accept 2281 >>Aceite Encontro em Cristarrubra
    .goto StormwindClassic,75.76,60.35
    .target Renzik "The Shiv"
step << Warrior !NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >>Treine Espadas de Uma Mão << Mage/Rogue/Warlock
    .train 1180 >>Treine Adagas << Mage/Druid
    .train 202 >>Treine Espadas de Duas Mãos << Warrior/Paladin
    .target Woo Ping
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Entregue Tomo de Divindade
    .target Stephanie Turner
    .accept 1644 >>Aceite Tomo de Divindade
    .turnin 1644 >>Entregue Tomo de Divindade
    >>|cRXP_WARN_Você precisará de 10 |T132889:0|t[Linho]|r
--  .accept 1780 >> Accept The Tome of Divinity
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre um|r |T135342:0|t[Cris] |cRXP_BUY_ou algo melhor da Casa de Leilões|r
    >>|cRXP_WARN_Equipe-o ao atingir o nível 19|r
    .collect 2209,1 --Kris
    .target Marcia Weller
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre um|r |T135342:0|t[Cris]
    >>|cRXP_WARN_Equipe-o quando chegar ao nível 19|r
    .collect 2209,1 --Kris
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marcia Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135342:0|t[Cris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.89
    .xp <19,1
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre o |T134437:0|t[Antipeçonha] para sua missão |T132290:0|t[Venenos] mais tarde, e o resto para entregas mais rápidas em Montanhas Cristarrubra em breve << !Dwarf Rogue
    >>Compre os itens a seguir para entregas mais rápidas em Montanhas Cristarrubra em breve << !Rogue/Dwarf Rogue
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T134437:0|t[Antipeçonha] << !Dwarf Rogue
    >>|T134172:0|t[Grande Goretusco Snout]
    >>|T134028:0|t[Carne de Condor Resistente]
    >>|T134321:0|t[Carne de Aranha Crocante]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon !DM
step << !Human !Warlock
    #completewith start
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .goto StormwindClassic,66.27,62.12
    .fp Stormwind >>Obtenha o Caminho Aéreo de Ventobravo
    .target Dungar Longdrink
step << NightElf
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >>Saia de Ventobravo
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Dungar Longdrink
    .zoneskip Westfall
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64,-1
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r ou |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Thor
    .target Dungar Longdrink
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >>Viaje até Cerro Oeste
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
    .target Thor
step << Gnome Warlock
#xprate >1.49
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Redridge >>Voe para Redridge
    .target Thor
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << NightElf Warrior/NightElf Priest
    #completewith next
    .goto Elwynn Forest,41.08,65.76,25 >>Viaje para Goldshire << Warrior
    .goto Elwynn Forest,43.17,65.70,15 >>Viaje para Goldshire << Priest
step << NightElf Warrior
    .goto Elwynn Forest,41.08,65.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
step << NightElf Priest
    >>Vá até a estalagem. Suba as escadas
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josetta|r
    .goto Elwynn Forest,43.17,65.70,12,0
    .goto Elwynn Forest,43.80,66.47,8,0
    .goto Elwynn Forest,43.28,65.72
    .trainer >>Treine suas magias de classe
    .target Priestess Josetta
step << !Human !Warlock
    #xprate >1.49 << !NightElf
    .xp <20,1
    >>Corra para a Torre de Azora
    .goto Elwynn Forest,65.20,69.80
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teócrito|r
    .accept 94 >>Aceite A Olho Vigilante
step << !NightElf
.dungeon !DM
    #xprate <1.5 << !Human
    #completewith next
    .goto StormwindClassic,66.27,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Dungar Longdrink
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    #completewith next
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Encroaching Gnolls
    .target Guard Parker
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >>Entregue Encroaching Gnolls
    .target Deputy Feldon
step << NightElf
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    .target Deputy Feldon
    .accept 246 >>Aceite Assessing the Ameaça
step
.dungeon DM
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiley, o Negro|r no andar de cima
    .turnin 65 >>Entregue A Irmandade Défias
    .accept 132 >>Aceitar A Irmandade Défias
	.target Wiley the Black
step
.dungeon DM
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
	.target Magistrate Solomon
    .accept 120 >>Aceite Mensageiro para Ventobravo
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >>Aceite The Price of Shoes
step
.dungeon DM
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Ariena Stormfeather
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 132 >>Entregue A Irmandade Défias
    .accept 135 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step
.dungeon DM
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .turnin 135 >>Entregue A Irmandade Défias
    .accept 141 >>Aceitar A Irmandade Défias
    .target Master Mathias Shaw
step
.dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Dungar Longdrink
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 141 >>Entregue A Irmandade Défias
    .accept 142 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,44.50,69.62,55 >>Viaje para Aldeia da Lua
step
.dungeon DM
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mate o |cRXP_ENEMY_Mensageiro Défias|r. Saqueie-o para obter a |cRXP_LOOT_Mensagem Misteriosa|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Mensageiro Défias|r aparece em Arroio da Lua. Ele caminha pela estrada ao norte de Arroio da Lua, até a Mina de Costa Dourada e a Mina de Jangolode. Se você não o vir pela estrada, espere-o aparecer em Arroio da Lua|r
    >>|cRXP_WARN_Ele tem um intervalo de reaparecimento de 4-5 minutos|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 142 >>Entregue A Irmandade Défias
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Traidor Défias|r
    >>|cRXP_WARN_Você pode precisar esperar pelo |cRXP_FRIENDLY_Traidor Défias|r aparecer se ele não estiver lá|r
    .accept 155 >>Aceitar A Irmandade Défias
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,42.56,71.71
    >>Escorte o |cRXP_FRIENDLY_Traidor Défias|r para Minas Mortas
    >>|cRXP_WARN_Fique ao lado de |cRXP_FRIENDLY_Traidor Défias|r o tempo todo! Esteja pronto para lutar contra |cRXP_ENEMY_The Defias|r ao chegar em Moonbrook|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 155 >>Entregue A Irmandade Défias
    .accept 166 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Riel|r no topo da torre
    .accept 214 >>Aceite Bandanas de Seda Vermelha
    .goto Westfall,56.67,47.35
    .target Scout Riell
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >>Agora você deve estar procurando um grupo para Minas Mortas
    >>Massacre Gnolls enquanto monta um grupo para Minas Mortas
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >>Voe para Minas Mortas
step
.dungeon DM
    #completewith EnterDM
    >>Mate os |cRXP_ENEMY_Defias|r. Saque-os para obter suas |cRXP_LOOT_Bandanas|r
    >>|cRXP_WARN_Você pode completar isto depois de entrar na Masmorra|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>Isto é concluído FORA da Masmorra
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mate |cRXP_ENEMY_Encarregado Espinhofolha|r. Saqueie-o para obter |cRXP_LOOT_Distintivo|r
    >>Isto é concluído FORA da Masmorra
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>Isto é concluído FORA da Masmorra
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >>Entre na Masmorra das Minas Mortas
step
.dungeon DM
    #completewith DMend
    >>Mate os |cRXP_ENEMY_Defias|r dentro de Minas Mortas. Saque-os para obter suas |cRXP_LOOT_Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Mate |cRXP_ENEMY_Sneed|r. Saqueie-o para obter |cRXP_LOOT_Engrenotreco Gnomo|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Mate |cRXP_ENEMY_Edwin VanCleef|r. Saqueie-o para obter |cRXP_LOOT_Cabeça|r e |T133471:0|t[|cRXP_LOOT_Uma Carta Não Enviada|r]
    >>|cRXP_WARN_Use [|cRXP_LOOT_Carta Não Enviada|r] para iniciar a missão|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >>Aceite A Carta Não Enviada
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >>Viaje até a Colina da Sentinela
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r e com a |cRXP_FRIENDLY_Batedora Riell|r no topo da Torre
    .turnin 166 >>Entregue A Irmandade Défias
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin -214 >>Entregue Bandanas de Seda Vermelha
    .target +Scout Riell
    .goto Westfall,56.67,47.35
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step
.dungeon DM
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_General Marcus Jonas|r
    .turnin 120 >>Entregue Mensageiro em Ventobravo
    .accept 121 >>Aceite Mensageiro para Ventobravo
    .target General Marcus Jonathan
step << Mage
.dungeon DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>Vá para a Torre do Mago
step << Mage
.dungeon DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >>Treine [Teleporte: Ventobravo]
	.xp <20,1
    .target Larimaine Purdue
step << Warlock
.dungeon DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
.dungeon DM
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
.dungeon DM
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1716 >>Aceite Devorador de Almas
    .target Gakin the Darkbinder
    .xp <20,1
step
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Argos Umbrurmúrio|r
    .accept 3765 >>Aceite A Corrupção no Exterior
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
.dungeon DM
    #season 2
    #completewith next
    +|cRXP_WARN_Você deve estar se preparando para mudar para|r |T132276:0|t[Feral] |cRXP_WARN_em vez de usar|r |T136096:0|t[Equilíbrio] |cRXP_WARN_habilidades quando você adquirir as runas para|r |T132135:0|t[Destroçar] |cRXP_WARN_e|r |T236167:0|t[Rugido Selvagem]
step << Druid
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sheldras Lunárvore|r
    .goto StormwindClassic,20.89,55.50
    .trainer >>Treine suas magias de classe
    .train 768 >>Aprenda |T132115:0|t[Forma de Felino]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duthorian Rall|r. Ele lhe dará o [|cRXP_LOOT_Tomo do Valor|r]
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Aceite o Tomo da Bravura
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1649 >>Entregue O Tomo de Bravura
    .accept 1650 >>Aceite o Tomo da Bravura
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Priest
.dungeon DM
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .trainer >>Treine suas magias de classe
    .target Brother Joshua
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .turnin 373 >>Entregue A Carta Não Enviada
    .accept 389 >>Aceite Basílio Taborda
    .target Baros Alexston
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Wilder Urtigão|r e a |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .turnin 167 >>Entregue Oh, Irmão...
    .turnin 168 >>Entregue Coletando Memórias
    .target +Wilder Thistlenettle
    .goto StormwindClassic,65.438,21.175
    .turnin 2040 >>Entregue Ataque Subterrâneo
    .target +Shoni the Shilent
    .goto StormwindClassic,55.510,12.504
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step << Rogue
.dungeon DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .accept 2360 >>Aceite Mathias e os Défias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
.dungeon DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_WARN_Compre uma|r |T135324:0|t[Espada Longa] |cRXP_WARN_e equipe-a aos 21|r
    >>|cRXP_WARN_Compre algo da Casa de Leilões se houver algo mais barato ou melhor|r
    .collect 923,1 --Longsword (1)
    .target Marcia Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_WARN_Compre uma|r |T135324:0|t[Espada Longa] |cRXP_WARN_e equipe-a no nível 21|r
    .collect 923,1 --Longsword (1)
    .target Marcia Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #optional
    #completewith next
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Compre uma|r |T135280:0|t[Falx Dácia] |cRXP_WARN_se tiver dinheiro suficiente. Equipe-a no nível 21|r
    >>|cRXP_WARN_Compre algo da Casa de Leilões se houver algo mais barato ou melhor|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Compre uma|r |T135280:0|t[Falx Dácia] |cRXP_WARN_se tiver dinheiro suficiente. Equipe-a no nível 21|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carcereiro-chefe Thelágua|r
    .turnin 389 >>Entregue Basílio Taborda
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target Warden Thelwater
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre o |T134437:0|t[Antipeçonha] para sua missão |T132290:0|t[Venenos] mais tarde, e o resto para entregas mais rápidas em Montanhas Cristarrubra em breve << !Dwarf Rogue
    >>Compre os itens a seguir para entregas mais rápidas em Montanhas Cristarrubra em breve << !Rogue/Dwarf Rogue
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T134437:0|t[Antipeçonha] << !Dwarf Rogue
    >>|T134172:0|t[Grande Goretusco Snout]
    >>|T134028:0|t[Carne de Condor Resistente]
    >>|T134321:0|t[Carne de Aranha Crocante]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
.dungeon DM
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >>Saia de Objetos de TBC. Vá para Goldshire
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,41.71,65.55
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
	.target Smith Argus
    .turnin 118 >>Entregue The Price of Shoes
    .accept 119 >>Aceite Devolver to Verner
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 118
    .goto Elwynn Forest,41.71,65.55
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
	.target Smith Argus
    .accept 119 >>Aceite Devolver to Verner
    .xp <20,1
step
.dungeon DM
    #completewith next
    .subzone 91 >>Viaje até a Torre de Azora. Suba a torre
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teócrito|r no topo
    .accept 94 >>Aceite A Olho Vigilante
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_FRIENDLY_Sol Estela Dalva|r
    .vendor >>|cRXP_FRIENDLY_Sol Estela Dalva|r |cRXP_BUY_tem itens de fornecimento limitado, como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminhos] |cRXP_BUY_e|r |T134850:0|t|T134830:0|t[Potions] |cRXP_BUY_que você deveria comprar se disponível|r << !Warrior !Rogue
    .vendor >>|cRXP_FRIENDLY_Sol Estela Dalva|r |cRXP_BUY_tem itens de fornecimento limitado, como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminhos] |cRXP_BUY_e|r |T134830:0|t[Potions] |cRXP_BUY_que você deveria comprar se disponível|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
.dungeon DM
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra

step
.dungeon DM
    #xprate <1.5
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Encroaching Gnolls
    .target Guard Parker
step
.dungeon DM
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >>Entregue Encroaching Gnolls
    .target Deputy Feldon


step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >>Aceite Ameaça Pedranegra
    .target Marshal Marris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >>Aceite As Ferramentas Perdidas
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >>Aceite The Price of Shoes
step
.dungeon DM
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >>Entregue Devolver a Verner
    .accept 124 >>Aceite A Baying of Gnolls
step
.dungeon DM
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >>Entregue Devolver a Verner
    .accept 124 >>Aceite A Baying of Gnolls
    .accept 122 >>Aceite Underbelly Escamoso
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_General Marcus Jonas|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >>Entregue Mensageiro em Ventobravo
    .accept 121 >>Aceite Mensageiro para Ventobravo
step
.dungeon !DM
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
	.target Magistrate Solomon
    .accept 120 >>Aceite Mensageiro para Ventobravo
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre de Doca Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >>Aceite O lago está para peixe
step
#xprate <1.5
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_anda ao redor dentro da Estalagem|r
	.target Darcy
    .accept 129 >>Aceite Um Almoço Grátis
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiley, o Negro|r lá em cima
	.target Wiley the Black
    .turnin 65 >>Entregue A Irmandade Défias
    .isOnQuest 65
step
#optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Mestre-cuca Breanna|r
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step << Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.85,46.32
    .accept 34 >>Aceite O Penetra
step << Warlock
    .goto Redridge Mountains,15.68,49.30
    >>Abata |cRXP_ENEMY_Ronquifuça|r. Saqueie-o pelo |cRXP_LOOT_Tusk|r
    >>|cRXP_WARN_Arraste o |cRXP_ENEMY_Ronquifuça|r de volta para Lakeshire para que os |cRXP_FRIENDLY_Guardas|r o ajudem a matar|r |cRXP_ENEMY_Ronquifuça|r
    >>|cRXP_WARN_esta missão é muito difícil. Você pode pular este passo e voltar depois|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .link https://youtu.be/6JE967OG3CU?t=1845 >>https://youtu.be/6JE967OG3CU?t=1845 >> |cRXP_WARN_clique aqui para um guia de vídeo|r
    .mob Bellygrub
step << Warlock
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Entregue O penetra
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >>Entregue Redridge Encontro Marcado
    .accept 2282 >>Aceite Moinho de Alther
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >>Aceite O Colar de Nida
step
    >>|cRXP_WARN_Salte para o lago|r
    >>Abra a |cRXP_PICK_Glinting Mud|r. Saque-a para |cRXP_LOOT_Colar de Nida|r
    >>|cRXP_WARN_Tem múltiplos locais de aparição no Lago|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step << Druid
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nida|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >>Entregue O Colar de Nida
step
    #softcore
    >>Abra o |cRXP_PICK_Sunken Baú|r. Pegue |cRXP_LOOT_Oslow's Caixa de Ferramentas|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #xprate <1.5
    #sticky
    #completewith orcs
    >>Mate os |cRXP_ENEMY_Great Goretusks|r. Saqueie-os por seus |cRXP_LOOT_Great Goretusco Snouts|r
    >>Mate os |cRXP_ENEMY_Tarantulas|r. Saqueie-os por seus |cRXP_LOOT_Crisp Aranha Carne|r
    >>Mate os |cRXP_ENEMY_Dire Condors|r. Saqueie-os para obter |cRXP_LOOT_Tough Condor Carne|r
    >>|cRXP_WARN_NÃO venda nenhum desses itens até que você entregue Gulache de Cristarrubra|r
    >>|cRXP_WARN_Salve qualquer|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você saqueie, bem como pode usá-los para subir|r |T133971:0|t[Culinária] |cRXP_WARN_até 50, o que é necessário para Floresta do Crepúsculo depois|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
    .mob Great Goretusk
    .mob Tarantula
    .mob Dire Condor
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >>Aceite Encroaching Gnolls
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >>Entregue Grátis Lunch
    .accept 130 >>Aceite Visit the Herbalist
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >>Entregue Encroaching Gnolls
    .accept 246 >>Aceite Assessing the Ameaça
step
    #xprate <1.5
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Mate os |cRXP_ENEMY_Tarantulas|r. Saqueie-os por seus |cRXP_LOOT_Crisp Aranha Carne|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #xprate <1.5
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18
	>>Mate os |cRXP_ENEMY_Malandros de Redridge|r e os |cRXP_ENEMY_Caçadores Furtivos de Redridge|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
step
    .goto Redridge Mountains,49.0,70.0
    >>Abata os |cRXP_ENEMY_Murloc Shorestrikers|r e os |cRXP_ENEMY_Murloc Minor Tidecallers|r. Saqueie-os pelos |cRXP_LOOT_Fins|r e pelos |cRXP_LOOT_Sunfish|r
	>>|cRXP_WARN_tenha cuidado, esta área é um hiperdesova, o que significa que os |cRXP_ENEMY_Murlocs|r reaparecem rapidamente|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>Mate os |cRXP_ENEMY_Dire Condors|r. Saqueie-os para obter |cRXP_LOOT_Tough Condor Carne|r
    >>|cRXP_WARN_pule este passo se você não está vendo nenhum|r |cRXP_ENEMY_Atroz Condores|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #label orcs
    >>Abata os |cRXP_ENEMY_Blackrock Grunts|r e os |cRXP_ENEMY_Blackrock Outrunners|r. Saqueie-os pelos |cRXP_LOOT_Machados|r
	>>|cRXP_WARN_tenha cuidado, os |cRXP_ENEMY_Blackrock Outrunners|r lançarão |T132149:0|t[Rede] em você|r
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>Mate os |cRXP_ENEMY_Dire Condors|r. Saqueie-os para obter |cRXP_LOOT_Tough Condor Carne|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #hardcore
    >>|cRXP_WARN_Salte para o lago|r
    >>Abra o |cRXP_PICK_Sunken Baú|r. Pegue |cRXP_LOOT_Oslow's Caixa de Ferramentas|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20-7687 >>Mate inimigos até estar 7687 xp longe do nível 20 << !Rogue
    .xp 20-10012 >>Mate inimigos até estar 10012 xp longe do nível 20 << Rogue
step << Rogue
    #completewith next
    .subzone 97 >>Viaje até Moinho de Alther
step << Rogue
    .goto 1433,51.846,45.116
    >>Você DEVE fazer isso para a missão [Venenos] mais tarde
    >>|cRXP_WARN_Fique sobre o ponto de referência. Posicione a câmera e o cursor até conseguir clicar 3|cRXP_PICK_Baú de Exercício|r uma vez sem precisar mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abra as|cRXP_PICK_Baú de Exercício|r no chão em Moinho de Alter até sua habilidade de |r[Abrir Fechadura] chegar a 80|r
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>Abra |cRXP_PICK_Cofre de Lucius|r. Saqueie-o para obter o |cRXP_LOOT_Símbolo de Ladroagem|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #completewith next
    .goto Redridge Mountains,33.50,48.97,150 >>Viaje para Lakeshire
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >>Entregue Ameaça Blackrock
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >>Entregue Perdida Ferramentas
    .accept 89 >>Aceite The Everstill Ponte
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre de Doca Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >>Entregue O lago está para peixe
    .accept 150 >>Aceite Caçadores de murlocs
    .turnin 150 >>Entregue Caçadores de Murlocs
    .xp <20,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre de Doca Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >>Entregue O lago está para peixe
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Mestre-cuca Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >>Entregue Visit the Herbalist
    .accept 131 >>Aceite Entregando Daffodils
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_anda ao redor dentro da Estalagem|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >>Entregue Entregando Daffodils
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >>Entregue Moinho de Alther
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nida|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >>Entregue O Colar de Nida
step << Rogue
    #optional
	#completewith InRR
	.destroy 7907 >>Destrua o |T134328:0|t[Certificate of Thievery]. Você não precisa dele
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >>Entregue Assessing the Ameaça
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20 >>Mate inimigos até alcançar nível 20
step << Rogue
.dungeon DM
    #softcore
    .isOnQuest 2360
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra << !Human
    .fly Westfall >>Voe para Cerro Oeste
    .target Ariena Stormfeather
step
.dungeon !DM << Rogue
    #completewith InRR
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
	.target Ariena Stormfeather
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra << !Human !Warlock
    .fly Stormwind >>Voe para Ventobravo
step << Rogue
.dungeon !DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_WARN_Compre uma|r |T135324:0|t[Espada Longa] |cRXP_WARN_e equipe-a no nível 21|r
    >>|cRXP_WARN_Compre algo da Casa de Leilões se houver algo mais barato ou melhor|r
    .collect 923,1 --Longsword (1)
    .target Marcia Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_WARN_Compre uma|r |T135324:0|t[Espada Longa] |cRXP_WARN_e equipe-a no nível 21|r
    .collect 923,1 --Longsword (1)
    .target Marcia Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #optional
    #completewith next
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon !DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Compre uma|r |T135280:0|t[Falx Dácia] |cRXP_WARN_se tiver dinheiro suficiente. Equipe-a no nível 21|r
    >>|cRXP_WARN_Compre algo do Auction House se houver algo mais barato/melhor|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Compre uma|r |T135280:0|t[Falx Dácia] |cRXP_WARN_se você tiver dinheiro suficiente. Equipe-a aos 21|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step << Warlock
.dungeon !DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
.dungeon !DM
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1716 >>Aceite Devorador de Almas
    .target Gakin the Darkbinder
step << Mage
.dungeon !DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>Vá para a Torre do Mago
step << Mage
.dungeon !DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
step << Mage
.dungeon !DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >>Treine [Teleporte: Ventobravo]
	.xp <20,1
    .target Larimaine Purdue
step
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Argos Umbrurmúrio|r
    .accept 3765 >>Aceite A Corrupção no Exterior
    .target Argos Nightwhisper
    .dungeon !DM
step << Druid
.dungeon !DM
    #season 2
    #completewith next
    +|cRXP_WARN_Você deve se preparar para mudar para|r |T132276:0|t[Feral] |cRXP_WARN_em vez de usar|r |T136096:0|t[Equilíbrio] |cRXP_WARN_habilidades quando você adquirir as runas para|r |T132135:0|t[Destroçar] |cRXP_WARN_e|r |T236167:0|t[Rugido Selvagem]
step << Druid
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sheldras Lunárvore|r
    .goto StormwindClassic,20.89,55.50
    .trainer >>Treine suas magias de classe
    .train 768 >>Aprenda |T132115:0|t[Forma de Felino]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon !DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duthorian Rall|r. Ele lhe dará o [|cRXP_LOOT_Tomo do Valor|r]
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Aceite o Tomo da Bravura
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1649 >>Entregue O Tomo de Bravura
    .accept 1650 >>Aceite o Tomo da Bravura
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Priest
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >>Treine suas magias de classe
    .target Brother Joshua
step << Rogue
.dungeon !DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step << Rogue
.dungeon !DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
step << Rogue
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .accept 2360 >>Aceite Mathias e os Défias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin



----Start of Rogue 20 Quest <1.59x Section----



step << NightElf Rogue
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >>Viaje até Cerro Oeste
    >>Voe lá se você já tem a Rota de Voo de Cerro Oeste
    .isOnQuest 2360
step << NightElf Rogue
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Westfall >>Aprenda a rota de voo para Cerro Oeste
    .target Thor
    .isOnQuest 2360
step << !NightElf Rogue
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Mate os |cRXP_ENEMY_Pigmeu Venenom Teia Aranhas|r e os |cRXP_ENEMY_Venenom Teia Aranhas|r. Saque-os para um |cRXP_LOOT_Pequeno Venenom Sac|r e suas |cRXP_LOOT_Pegajosas Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa de um |cRXP_LOOT_Pequeno Venenom Sac|r para criar uma|r |T134437:0|t[Antipeçonha]|cRXP_WARN_ depois para remover o|r |T136230:0|t[Toque de Zanzil]|cRXP_WARN_ debilitação depois|r
    >>|cRXP_WARN_Guarde as |cRXP_LOOT_Pegajosas Pernas de Aranha|r para depois|r
    >>|cRXP_WARN_Se você tem um|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, você pode pular este passo e pedir para ele removê-lo para você|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTE ATENÇÃO NA SEÇÃO A SEGUIR==|r
    >>Pressione Escape, depois vá em -> Opções -> Controles
    >>|cRXP_WARN_Verifique "Ativar a Tecla Interagir" e atribua a opção "Interagir com Alvo" a uma tecla|r
    >>|cRXP_WARN_Além disso, é recomendado que você ative Placas de Nome de Inimigos (Tecla Padrão: V) pois permite que você veja inimigos atrás de alguns cantos dentro da torre|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Agente Marta Hari|r
    >>Você DEVE fazer esta missão para [Venenos]
    .turnin 2360 >>Entregue Mathias e os Défias
    .accept 2359 >>Aceite A Torre de Klaven
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>Use |T133644:0|t[Bater Carteira] no |cRXP_ENEMY_Malformed Parasita Défias|r. Saque-o para a |cRXP_LOOT_Defias Torre Chave|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_O |cRXP_ENEMY_Drone Défias Malformado|r surge na entrada da torre, depois patrulha ao redor da parte externa|r
    >>|cRXP_WARN_Tenha cuidado pois ele causa muito dano. Se sua|r |T132320:0|t[Furtividade]|cRXP_WARN_ quebra, rapidamente use|r |T132307:0|t[Disparada]|cRXP_WARN_ e corra para longe|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
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
    >>|cRXP_WARN_Se você tem um|r |T135641:0|t[Dagger]|cRXP_WARN_ na mochila ou equipado, você pode usar|r |T132282:0|t[Emboscar]|cRXP_WARN_ nos |cRXP_ENEMY_Defias Torre Patrollers|r e |cRXP_ENEMY_Defias Torre Sentries|r dentro para matá-los instantaneamente. Esteja preparado para correr depois que você matar o primeiro |cRXP_ENEMY_Defias Torre Sentinela|r e lembre-se que você pode ser atingido de cima. Isto é mais lento, mas MUITO mais seguro|r
    >>|cRXP_WARN_Tome cuidado, pois |cRXP_ENEMY_Parasita Défias Mal Formado|r e |cRXP_ENEMY_Parasita Défias|r podem ficar na entrada da torre, caso você precise sair correndo dela|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>Crie um [Antipeçonha]
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
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>Vá em direção à |cRXP_FRIENDLY_Suzi Lira|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .skill firstaid,80 >>|cRXP_WARN_Eleve seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_até 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .train 7934 >>|cRXP_WARN_treine|r |T134437:0|t[Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>Crie um [Antipeçonha]
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
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    >>|cRXP_WARN_Lembre-se de equipar novamente sua arma principal se você trocou para uma|r |T135641:0|t[Adaga] |cRXP_WARN_anteriormente|r << Rogue
    .turnin 2359 >>Entregue A Torre de Klaven
    .target Master Mathias Shaw



----End of Rogue 20 Quest <1.59x Section----




step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_General Marcus Jonas|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >>Entregue Mensageiro em Ventobravo
    .accept 121 >>Aceite Mensageiro para Ventobravo
step
    #completewith next
    .goto Elwynn Forest,41.80,65.60,60 >>Viaje para Goldshire
step
    .goto Elwynn Forest,41.71,65.55
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
	.target Smith Argus
    .turnin 118 >>Entregue The Price of Shoes
    .accept 119 >>Aceite Devolver to Verner
step
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >>Viaje até a Torre de Azora. Suba a torre
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teócrito|r no topo
    .accept 94 >>Aceite A Olho Vigilante
    .xp <20,1
step
    #label InRR
    #completewith FlyR
    .goto StormwindClassic,66.30,62.30,-1
	.goto Redridge Mountains,6.7,72.4,-1
    .zone Redridge Mountains >>Viaje para Redridge
    .fly Redridge >>Voe para Redridge
    >>|cRXP_WARN_Se você está em Goldshire, será mais rápido voar de Ventobravo|r
	>>|cRXP_WARN_Se você está na Torre de Azora, simplesmente corra para Redridge|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >>Entregue Devolver a Verner
    .accept 124 >>Aceite A Baying of Gnolls
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >>Aceite Underbelly Escamoso
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >>Entregue Mensageiro em Ventobravo
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nida|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >>Entregue O Colar de Nida
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre de Doca Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >>Entregue O lago está para peixe
    .accept 150 >>Aceite Caçadores de murlocs
    .turnin 150 >>Entregue Caçadores de Murlocs
step
#optional
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Mestre-cuca Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Mestre-cuca Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >>Entregue Visit the Herbalist
    .accept 131 >>Aceite Entregando Daffodils
step
    #xprate <1.2
	#completewith next
	>>Abate os |cRXP_ENEMY_Black Dragão Whelps|r. Saqueie-os para obter suas |cRXP_LOOT_Escamoso|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #xprate <1.5
    >>Mate os |cRXP_ENEMY_Great Goretusks|r. Saqueie-os por seus |cRXP_LOOT_Great Goretusco Snouts|r
    >>|cRXP_WARN_Salve qualquer|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você saqueie, bem como pode usá-los para subir|r |T133971:0|t[Culinária] |cRXP_WARN_até 50, o que é necessário para Floresta do Crepúsculo depois|r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .collect 2296,5,92,1
    .mob Great Goretusk
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Mestre-cuca Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
    #xprate <1.2
	#completewith next
	>>Abate os |cRXP_ENEMY_Black Dragão Whelps|r. Saqueie-os para obter suas |cRXP_LOOT_Escamoso|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Mate os |cRXP_ENEMY_Redridge Brutes|r e os |cRXP_ENEMY_Redridge Mystics|r. Saque-os por seus |cRXP_LOOT_Iron Pikes|r e |cRXP_LOOT_Iron Rivets|r
    .complete 124,1 --Redridge Brute (10)
    .mob +Redridge Brute
    .complete 124,2 --Redridge Mystic (8)
    .mob +Redridge Mystic
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Mystic
	.mob +Redridge Brute
    .complete 89,2 --Iron Rivet (5)
	.mob +Redridge Mystic
	.mob +Redridge Brute
step
    #xprate <1.2
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>Abate os |cRXP_ENEMY_Black Dragão Whelps|r. Saqueie-os para obter suas |cRXP_LOOT_Escamoso|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_anda ao redor dentro da Estalagem|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >>Entregue Entregando Daffodils
step
    #xprate <1.2
    #completewith next
    .goto Redridge Mountains,15.55,50.06,0
    .goto Redridge Mountains,19.24,41.53,0
    .goto Redridge Mountains,16.90,55.02,0
    .goto Redridge Mountains,26.52,44.95
    +|cRXP_WARN_Aumente o Nível de sua|r |T133971:0|t[Culinária] |cRXP_WARN_usando a|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você coletou anteriormente. Você precisa do Nível 50|r |T133971:0|t[Culinária]
    +|cRXP_WARN_Se você precisar de mais|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_vá para o oeste perto do|r |cRXP_ENEMY_Ronquifuça|r |cRXP_WARN_e mate mais|r |cRXP_ENEMY_Great Goretusks|r
    .skill cooking,50,1
    .mob Great Goretusk
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >>Entregue O Uivo dos Gnolls
    .turnin 122 >>Entregue Escamas do Baixo-ventre
step
    #xprate >1.0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >>Entregue O Uivo dos Gnolls
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >>Entregue The Everstill Ponte
]])

----End of <1.59x Redridge----
----Start of Hunter-only Darkshore/Ashen (Needs to be merged)----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
#season 0
<< Alliance Hunter
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 19-21 Costa Negra/Vale Gris
#next Aliança 20-30\21-23 Vale Gris/Stonetalon

step
    #xprate >1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 3765 >>Entregue A Corrupção no Estrangeiro
    .target Gershala Nightwhisper
    .isOnQuest 3765
    .dungeon DM
step
    #xprate >1.49
    #optional
    #completewith next
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r e os |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter os |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,32.644,80.711
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4730 >>Aceite Beached Sea Criatura - Missão
step
    #xprate >1.49
    #optional
    #completewith next
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter os |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #xprate >1.49
    .goto 1439,31.690,83.700
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step
    #xprate >1.49
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r e os |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter os |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,31.229,85.564
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step
    #xprate >1.49
    #label SeaCreatureEnd
    .goto 1439,31.251,87.419
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4733 >>Aceite Beached Sea Criatura - Missão
    >>|cRXP_WARN_Esta missão pode ser MUITO difícil. Enfrente os |cRXP_ENEMY_Murlocs|r um de cada vez, caso contrário você pode atacar vários ao mesmo tempo|r
    .link https://youtu.be/lfQM3Q-Ag5A >>https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Clique aqui para um guia em vídeo|r
step
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 951 >>Entregue Relíquias de Mathystra
    .target Onu
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r para iniciar a escolta
    >>|cRXP_WARN_Pule este passo se ele não estiver lá. Pode levar até 25 minutos para ele reaparecer|r
    >>|cRXP_WARN_Esta é uma missão cronometrada, você deve escoltá-lo todo o caminho até ashenvale em 20 minutos|r
    .accept 5321 >>Aceite O Adormecido Despertou
    .target Kerlonian Evershade
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Abra o |cRXP_PICK_Baú de Kerlonian|r. Saqueie-o para obter |T134229:0|t[|cRXP_LOOT_Chifre do Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    >>|cRXP_WARN_Você pode ter que esperar que ele reapareça ou que outros terminem a escolta|r
    .turnin 729 >>Entregue The Absent Minded Prospector
    .isOnQuest 729
    .target Prospector Remtravel
step
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    >>Isso iniciará uma escolta
    .accept 731,1 >>Aceite O Prospector Distraído
    >>|cRXP_WARN_Esta missão é MUITO difícil. Pule este passo se você não conseguir encontrar um grupo ou fazer solo|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >>https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Escolte o|cRXP_FRIENDLY_ Prospector Trilheiro|r pela Escavação|r
    >>|cRXP_WARN_Esta missão é MUITO difícil. Pule este passo se você não conseguir encontrar um grupo ou fazer solo|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >>https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .complete 731,1
    .isOnQuest 731
step
    #optional
    #completewith TheryluneEnd
    >>Mate Discípulos do Crepúsculo|cRXP_ENEMY_ e|r Capangas do Crepúsculo|cRXP_ENEMY_. Saque-os para obter o|r [|cRXP_LOOT_Livro: Os Poderes Inferiores|r]
    *|cRXP_WARN_Tome cuidado pois os |cRXP_ENEMY_Capangas Crepúsculo|r podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Tome cuidado pois os |cRXP_ENEMY_Discípulos Crepúsculo|r lançam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma |T135915:0|t[Cura] de 3 segundos|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
    --  .use 13536
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a|cRXP_FRIENDLY_ Therylune|r. Isso iniciará uma escolta
    >>|cRXP_WARN_Pule este passo se ela não estiver lá|r
    .accept 945 >>Aceite A Fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escolte a|cRXP_FRIENDLY_ Therylune|r para fora da Clareira do Mestre|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #xprate <1.5
    #optional
    .goto 1439,31.251,87.419
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4733 >>Aceite Beached Sea Criatura - Missão
    >>|cRXP_WARN_Esta missão pode ser MUITO difícil. Enfrente os |cRXP_ENEMY_Murlocs|r um de cada vez, caso contrário você pode atacar vários ao mesmo tempo|r
    .link https://youtu.be/lfQM3Q-Ag5A >>https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Clique aqui para um guia em vídeo|r
step
    #xprate <1.5
    #optional
    .goto 1439,31.229,85.564
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step
    #xprate <1.5
    #optional
    .goto 1439,31.690,83.700
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step
    #xprate <1.5
    #optional
    .goto 1439,32.644,80.711
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4730 >>Aceite Beached Sea Criatura - Missão
step
	#xprate <1.5
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Mate os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Scalps|r
    >>Tenha cuidado pois eles lançam |T132152:0|t[Assolar], um ataque instantâneo causando 20-40 de dano e |cRXP_WARN_arremessando você para baixo por 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5
    .goto Darkshore,41.389,80.565
    >>Clique no |cRXP_PICK_Buzzbox 525|r no chão
    .turnin 1003 >>Vá a Buzzbox 525
    .isOnQuest 1003
step
    #xprate <1.5
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Limpe os Furbolgs perto da caverna antes de falar com ele|r
    .turnin 993 >>Entregue Um Mestre Perdido
    .accept 994 >>Aceite Fuga Through Force
    .target Volcor
    .isOnQuest 993
step
    #xprate <1.5
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Limpe os furbolgs perto da caverna antes de falar com ele|r
    .accept 994 >>Aceite Fuga pela Força
    .target Volcor
    .isQuestTurnedIn 993
step
	#xprate >1.59
    #optional
    #completewith Escaped
    .goto Darkshore,39.2,43.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Selarin|r se ela estiver ativa
    .accept 990 >>Aceite Jornada para Vale Gris
    .target Sentinel Selarin
step
	#xprate >1.49
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >>Entregue Um Mestre Perdido
    .accept 995 >>Aceite Fuga Através da Furtividade
    .target Volcor
    .isOnQuest 993
step
	#xprate >1.49
    #optional
    #label Escaped
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Volcor|r
    .accept 995 >>Aceite Fuga Através da Furtividade
    .target Volcor
    .isQuestTurnedIn 993
step
	#xprate <1.5
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>Escolte |cRXP_FRIENDLY_Volcor|r
    >>Após sair da caverna e cruzar o 3º archote, um |cRXP_ENEMY_Furlbog|r aparecerá dos dois lados e atacará |cRXP_FRIENDLY_Volcor|r
    >>No meio do caminho para a estrada, os |cRXP_ENEMY_Furlbogs|r aparecerão dos dois lados e atacarão |cRXP_FRIENDLY_Volcor|r
    .complete 994,1 --Help Volcor to the road (1)
    .isQuestTurnedIn 993
step
	#xprate >1.49
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 995,1 --Help Volcor escape the cave (1)
    .isQuestTurnedIn 993
step
    #xprate >1.49
    #optional
    #completewith tower
    .equip 15 >>|cRXP_WARN_Reequipe seu Manto anterior|r |T133762:0|t[Manto]
    .itemStat 15,QUALITY,<7
    .isOnQuest 995
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 951 >>Entregue Relíquias de Mathystra
    .target Onu
    .isOnQuest 951
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r para iniciar a escolta
    >>|cRXP_WARN_Pule este passo se ele não estiver lá. Pode levar até 25 minutos para ele reaparecer|r
    >>|cRXP_WARN_Esta é uma missão cronometrada, você deve escoltá-lo todo o caminho até ashenvale em 20 minutos|r
    .accept 5321 >>Aceite O Adormecido Despertou
    .target Kerlonian Evershade
    .itemcount 13536,<1 --Horn of Awakening
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Abra o |cRXP_PICK_Baú de Kerlonian|r. Saqueie-o para obter |T134229:0|t[|cRXP_LOOT_Chifre do Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .itemcount 13536,<1 --Horn of Awakening
step
    #label AshenStart
    #completewith tower
    .zone Ashenvale >>Viaje para o sul até Vale Gris
    .goto Ashenvale,29.7,13.6
step
    #sticky
    #completewith Kerlonian
    >>Mate e saqueie os |cRXP_WARN_Corredores da Pata Fantasma|r que encontrar durante suas missões. Guarde todos os |T133970:0|t[|cRXP_LOOT_Lombos de Lobo Magro|r] que conseguir. Você precisará de 10 para uma missão de culinária mais tarde
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label Kerlonian
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
	#xprate <1.5
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
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Mate os |cRXP_ENEMY_Dark Strand Cultists|r, os |cRXP_ENEMY_Dark Strand Adepts|r, os |cRXP_ENEMY_Dark Strand Enforcers|r e os |cRXP_ENEMY_Dark Strand Excavators|r. Saque-os para o |cRXP_LOOT_Glowing Gema Anímica|r
    >>Seja paciente, este item tem uma taxa de queda baixa
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
    .goto Ashenvale,31.25,30.70
    .xp 20-1650 >>Siga matando os |cRXP_ENEMY_Dark Strand mobs|r até ter XP suficiente para chegar ao nível 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >>Entregue A Torre de Althalaxx
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
    >>Abra os |cRXP_PICK_Plant Bundles|r no chão. Saqueie-os para |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_Parecem pequenos sacos marrons. Podem ser difíceis de ver|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >>Entregue Cabelo-de-Bathran
    .accept 1020 >>Aceite A Cura de Orendil
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .goto Ashenvale,26.19,38.69
    .turnin 970 >>Entregue A Torre de Althalaxx
    .accept 973 >>Aceite A Torre de Althalaxx
    .target Delgren the Purifier
step
    #sticky
    #completewith Astranaar
    >>Mate e saqueie os |cRXP_WARN_Corredores da Pata Fantasma|r que encontrar durante suas missões. Guarde todos os |T133970:0|t[|cRXP_LOOT_Lombos de Lobo Magro|r] que conseguir. Você precisará de 10 para uma missão de culinária mais tarde
    .collect 1015,10
    .mob Ghostpaw Runner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto Ashenvale,22.64,51.91
    .turnin 945 >>Entregue A fuga de Therylune
    .isQuestComplete 945
step << Hunter
    #xprate <1.59
    .goto 1440/1,522.900,2716.100,30 >>Suba a rampa para o noroeste
step
    #xprate <1.59
    #completewith Astranaar
    >>Guarde até 6 |cRXP_LOOT_Pernas Pegajosas de Aranha|r saqueadas dos |cRXP_ENEMY_Aranhas|r na zona para depois
    .collect 2251,6,93,1 -- Gooey Spider Legs
step << Hunter
    #xprate <1.59
    #sticky
    .goto Ashenvale,17.976,60.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bolyun|r
    .trainer >>Treine as habilidades do seu mascote
    .target Bolyun
--XX Train in darn at 20 on 2x
step << Hunter
    #xprate <1.59
    .goto Ashenvale,18.010,59.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alenndaar Lapidus|r
    .trainer >>Treine suas habilidades de classe
    .train 5118 >>Treine |T132242:0|t[Aspecto do Guepardo]
    .target Alenndaar Lapidaar
step
    #label Astranaar
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
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a Sentinela Tenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >>Aceite Em Guarda nas Montanhas Cristarrubra
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >>Aceite Jornada ao Pico das Montanhas Cristarrubra
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >>Aceite A Purificação de Raene
    .accept 1054 >>Aceite Expurgo a Ameaça
step
    #label HCHunterNoHS --hidden step for #include
step << !Dwarf/!Hunter
    #xprate <1.59
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Kimlya|r
    .home >>Defina sua Pedra de Regresso para Astranaar
    .target Innkeeper Kimlya
step
    #label HCHunterNoHSStart --hidden step for #include
step
    #xprate <1.59
    .goto Ashenvale,36.6,49.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maliynn|r
    .vendor >>|cRXP_BUY_Compre alimentos e água se necessário|r
    .target Maliynn
step
    #xprate <1.59
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1020 >>Entregue A Cura de Orendil
    .timer 24,RP da Cura de Orendil
    .accept 1033 >>Aceite A Lágrima de Eluna
step << Hunter
    #xprate <1.59
    .goto Ashenvale,34.8,50.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Haljan Ruboralma|r
    .vendor >>|cRXP_BUY_Compre munição se necessário|r
    .target Haljan Oakheart
step
    #xprate <1.59
    #completewith ElunesTear
    >>Guarde até 6 |cRXP_LOOT_Pernas de Aranha Pegajosa|r saqueadas das |cRXP_ENEMY_Aranhas|r na área. Você precisará delas mais tarde para uma missão.
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #xprate <1.59
    .goto Ashenvale,46.37,46.38
    >>Pegue a |cRXP_LOOT_Lágrima de Eluna|r no chão
    .complete 1033,1
step
    #xprate <1.59
    #label ElunesTear
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1033 >>Entregue A Lágrima de Eluna
    .timer 17,RP da Lágrima de Eluna
    .accept 1034 >>Aceite As Ruínas de Poeira Estelar
step
    #xprate <1.59
    .goto Ashenvale,33.30,67.79
    >>Saqueie os |cRXP_PICK_arbustos cobertos de poeira estelar|r para obter um punhado de |cRXP_LOOT_Punhado de Poeira Estelar|r
    >>Os locais de surgimento deles estão espalhados por toda a ilha
    .complete 1034,1
step
    #xprate <1.59
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >>Vá até a base da montanha
    .goto Ashenvale,31.21,61.60,15 >>Corra diretamente para o norte enquanto sobe a montanha
step
    #xprate <1.59
    #completewith next
    .goto Ashenvale,27.50,60.76,8 >>Suba a colina ao lado da grande árvore à direita da entrada do Santuário da Cicatriz de Fogo
    >>Pule sobre a raiz da árvore e mantenha-se à direita para evitar atrair os inimigos
step
    #xprate <1.5
    .goto Ashenvale,25.27,60.68
    >>Mate |cRXP_ENEMY_Ilkrud Magthrull|r. Saqueie-o para obter seu |cRXP_LOOT_Tomo|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_lançará|r |T136221:0|t[Guardiões de Ilkrud], |cRXP_WARN_que é uma conjuração de 5 segundos e invocará 2 Andarilhos do Vazio. Interrompa essa conjuração se puder|r
    >>|cRXP_WARN_Limpar um caminho de saída se necessário para que você possa reiniciar-los junto com o |cRXP_ENEMY_Súcubo|r se necessário. Você pode pular isto e fazer isso no nível 23 se desejar|r
    .complete 973,1
    .link https://youtu.be/03nTrdcQiKY >>https://youtu.be/03nTrdcQiKY >> |cRXP_WARN_Clique aqui para referência de vídeo|r
	.isOnQuest 973
    .mob Ilkrud Magthrull
step
    #xprate <1.5
    .isQuestComplete 973
    .goto Ashenvale,26.19,38.69
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 973 >>Entregue A Torre de Althalaxx
step
    #label HCHunterEnd --hidden step for #include
step
    #xprate <1.59
    #sticky
    #completewith StatuetteStart
    >>Guarde até 6 |cRXP_LOOT_Pernas de Aranha Pegajosa|r saqueadas das |cRXP_ENEMY_Aranhas|r na área. Você precisará delas mais tarde para uma missão.
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith StatuetteStart
    >>Mate e saqueie os |cRXP_WARN_Corredores da Pata Fantasma|r que encontrar durante suas missões. Guarde todos os |T133970:0|t[|cRXP_LOOT_Lombos de Lobo Magro|r] que conseguir. Você precisará de 10 para uma missão de culinária mais tarde
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label StatuetteStart
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >>Aceite A estatueta ancestral
step
    #xprate <1.59
    #completewith nagas
    >>Mate |cRXP_ENEMY_Nagas Cauda da Ira|r. Saqueie-os para obter os deles |cRXP_LOOT_Cabeças|r
    >>Não saia do seu caminho para completar isso ainda
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    #xprate <1.59
    .goto Ashenvale,14.20,20.64
    >>Saque o |cRXP_LOOT_Ancient Statuette|r no chão
    .complete 1007,1
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >>Entregue A estatueta ancestral
    .timer 22,RP da Estatueta Antiga
    .accept 1009 >>Aceite Ruuzel
step
    #xprate <1.59
    .goto Ashenvale,6.528,13.361
    >>Mate |cRXP_ENEMY_Ruuzel|r. Saque-a pelo |cRXP_LOOT_Anel de Zoram|r
    >>|cRXP_ENEMY_Ruzzel|r patrulha a ilha com um|cRXP_WARN_ Mirmidão Caudafúria|cRXP_ENEMY_ e uma|r |cRXP_ENEMY_Bruxa do Mar Caudafúria|r. Mate um deles e depois redefina-os se necessário|r
    >>Se você tiver [Bombas]|cRXP_WARN_/|r[Granadas] também pode usá-las para fazer uma puxada dividida no |cRXP_ENEMY_Ruzzel|r
    >>|cRXP_ENEMY_Lady Vespira|r é um reaparecimento raro que também pode derrubar o|cRXP_WARN_ Anel de Zoram|cRXP_LOOT_ |rse você a vir|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-lwZ6P-ldy >> Clique aqui para referência em vídeo sobre “puxada dividida”
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #xprate <1.59
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Mate |cRXP_ENEMY_Ruuzel|r. Saque-a pelo |cRXP_LOOT_Anel de Zoram|r
    >>|cRXP_ENEMY_Ruzzel|r patrulha a ilha com um|cRXP_WARN_ Mirmidão Caudafúria|cRXP_ENEMY_ e uma|r |cRXP_ENEMY_Bruxa do Mar Caudafúria|r. Mate um deles e depois redefina-os se necessário|r
    >>|cRXP_ENEMY_Lady Vespira|r é um reaparecimento raro que também pode derrubar o|cRXP_WARN_ Anel de Zoram|cRXP_LOOT_ |rse você a vir|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    #xprate <1.59
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Mate |cRXP_ENEMY_Nagas Cauda da Ira|r. Saqueie-os para obter os deles |cRXP_LOOT_Cabeças|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >>Entregue Ruuzel
step
    #xprate <1.59
    #sticky
    #completewith SoulGemStart
    >>Guarde até 6 |cRXP_LOOT_Pernas de Aranha Pegajosa|r saqueadas das |cRXP_ENEMY_Aranhas|r na área. Você precisará delas mais tarde para uma missão.
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith SoulGemStart
    >>Mate e saqueie os |cRXP_WARN_Corredores da Pata Fantasma|r que encontrar durante suas missões. Guarde todos os |T133970:0|t[|cRXP_LOOT_Lombos de Lobo Magro|r] que conseguir. Você precisará de 10 para uma missão de culinária mais tarde
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label SoulGemStart
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cadáver de Teronis|r
	.target Teronis' Corpse
    .goto Ashenvale,20.31,42.33
    .turnin 991 >>Entregue Purificação de Raene
    .accept 1023 >>Aceite A Purificação de Raene
step
    #sticky
    #completewith GlowingGem
    >>Guarde qualquer |T134304:0|t[Murloc Fins] que você puder pegar. Você vai precisar de 8 para uma missão mais tarde
    .collect 1468,8 --Murloc Fin(8)
step
    #label GlowingGem
    #xprate <1.59
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33
    >>Mate |cRXP_ENEMY_Murlocs Cuspe-sal|r. Saqueie-os para obter o |cRXP_LOOT_Gema Faiscante|r
    >>|cRXP_WARN_Tenha cuidado com os|cRXP_ENEMY_ Oráculos|r que podem curar e possuem um feitiço de choque de conjuração instantânea que causa 90 de dano a cada poucos segundos|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step << Dwarf Hunter
    #xprate <1.59
    .hs >>Use a Pedra de Regresso para Auberdine
step << !Dwarf/!Hunter
    #xprate <1.59
    #softcore
    #completewith next
    .deathskip >>Morra no lado oriental do lago e ressuscite como espírito em Astranaar
step << !Dwarf/!Hunter
    #xprate <1.59
    #hardcore
    #completewith next
    .goto Ashenvale,34.40,48.00,200 >>Vá para Astranaar
step << !Dwarf/!Hunter
    #xprate <1.59
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>>Voe para Costa Negra
    .target Daelyshia
step
    #xprate <1.59
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >>Entregue The Absent Minded Prospector
    .accept 741 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    #xprate <1.59
    #completewith end
    .vendor >>Reabastecer/Reabastecimento
step
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >>Entregue Fuga furtiva
    .target Terenthis
    .isOnQuest 995
step
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >>Entregue Fuga Through Force
    .target Terenthis
    .isOnQuest 994
step
    #xprate <1.59
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >>Entregue a Criatura Marinha Encalhada
    .turnin 4731 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4732 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4733 >>Entregue a Criatura Marinha Encalhada
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.59
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
	.target Caylais Moonfeather
step
    #xprate <1.59
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .trainer >>Treine suas magias de classe
    .xp <22,1
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garryeth|r
    .goto Darnassus,40.0,42.2
    .bankdeposit 5996,1468,2251,1015 >>Deposite os seguintes itens no banco
    .target Garryeth
    >>|T134797:0|t[Elixir de Respiração Aquática] --5996
    >>|T134304:0|t[Murloc Fins] --1468
    >>|T134321:0|t[Pernas de Aranha Pegajosas] --2251
    >>|T133970:0|t[Lombos de Lobo Magro] --1015
step << Dwarf Hunter
    #xprate <1.59
-- #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >>Treine Arcos
    .train 227 >>Treine Cajados
    .target Ilyenia Moonfire
    .dungeon DM
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >>Entregue The Absent Minded Prospector
    .accept 942 >>Aceite O Prospector Distraído
    .isOnQuest 741
step
    #optional
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .accept 942 >>Aceite O Prospector Distraído
    .isQuestTurnedIn 741
step << !Dwarf/!Hunter
    #xprate <1.59
    #label end
    .hs >>Use a Pedra de Regresso para Astranaar
step << Dwarf Hunter
    #xprate <1.59
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Ashenvale
    .zoneskip Darkshore
step << Dwarf Hunter
    #xprate <1.59
    #label end
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Ashenvale >>Voe para Vale Gris
    .target Vesprystus
    .zoneskip Ashenvale
]])


----End of Hunter-only Darkshore/Ashen (Needs to be merged)----


RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0
#version 1
<< Alliance !Hunter
#season 0
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 20-21 Costa Negra/Vale Gris
#next Aliança 20-30\21-23 Stonetalon/Vale Gris; Aliança 20-30\21-22 Vale Gris SoD


step << Druid
    #xprate <1.59
	#completewith next
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    #xprate <1.59
    .goto Moonglade,52.53,40.57
	>>Vá para Vale da Lua
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
step
    #xprate <1.59
    #optional
    #completewith TheryluneE
    .hs >>Use a Pedra de Regresso para Auberdine
step
    .goto Darkshore,37.21,44.22
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 4740 >>Aceite Procurado: Lodofundo!
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 948 >>Aceite Onu
    .target Barithras Moonshade
step
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    #xprate <1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 3765 >>Entregue A Corrupção no Estrangeiro
    .target Gershala Nightwhisper
    .isOnQuest 3765
--  .dungeon !DM << NightElf Warrior/Mage/Warlock/Rogue
step
    #xprate >1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 3765 >>Entregue A Corrupção no Estrangeiro
    .target Gershala Nightwhisper
    .isOnQuest 3765
    .dungeon !DM << NightElf Warrior/Mage/Warlock/Rogue
step
    .goto 1439,39.373,43.483
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >>Aceite Um Mestre Perdido
	.target Terenthis
    .isQuestTurnedIn 986
step
    #optional
    #completewith OnuGrove
    >>|cRXP_WARN_Se você equipar o|r |T133762:0|t[Manto Encantado de Espreitaluna]|cRXP_WARN_, certifique-se de guardar seu manto atual para depois, pois o|r |T133762:0|t[Manto Encantado de Espreitaluna] |cRXP_WARN_será perdido ao entregá-lo|r
    .equip 15,5387 >>|cRXP_WARN_Equipe o|r |T133762:0|t[Manto Encantado de Espreitaluna] |cRXP_WARN_se for melhor que seu manto atual|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith MasterG
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Mate os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Scalps|r
    >>Tenha cuidado pois eles lançam |T132152:0|t[Assolar], um ataque instantâneo causando 20-40 de dano e |cRXP_WARN_arremessando você para baixo por 2s|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #optional
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >>Viaje para o Bosque dos Antigos
step
    #xprate >1.49
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 951 >>Entregue Relíquias de Mathystra
    .target Onu
    .isQuestComplete 951
step
    #xprate >1.49
    #label OnuGrove
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 948 >>Entregue em Onu
    .target Onu
    .isOnQuest 948
step
    #xprate >1.49
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >>Entregue Um Mestre Perdido
    .accept 995 >>Aceite Fuga Pela Furtividade
    .timer 20,Fuga por Furtividade RP
    .target Volcor
    .isOnQuest 993
step
    #xprate >1.49
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Volcor|r
    .accept 995 >>Aceite Fuga Pela Furtividade
    .timer 20,Fuga Pela Furtividade RP
    .target Volcor
    .isQuestTurnedIn 993
step
    #xprate >1.49
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 995,1 --Help Volcor escape the cave (1)
    .isOnQuest 995
step
    #xprate >1.49
    #optional
    #completewith Murkdeep
    .equip 15 >>|cRXP_WARN_Reequipe seu Manto anterior|r |T133762:0|t[Manto]
    .itemStat 15,QUALITY,<7
    .isOnQuest 995
step
    #xprate <1.5
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 952 >>Entregue no Bosque dos Anciões << NightElf
    .turnin 948 >>Entregue em Onu
    .accept 944 >>Aceite A Foice do Mestre
    .target Onu
step
    #xprate <1.5
    #label MasterG
    .goto Darkshore,38.54,86.05,100 >>Voe para The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    >>Mate Discípulos do Crepúsculo|cRXP_ENEMY_ e|r Capangas do Crepúsculo|cRXP_ENEMY_. Saque-os para obter o|r [|cRXP_LOOT_Livro: Os Poderes Inferiores|r]
    *|cRXP_WARN_Tome cuidado pois os |cRXP_ENEMY_Capangas Crepúsculo|r podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Tome cuidado pois os |cRXP_ENEMY_Discípulos Crepúsculo|r lançam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma |T135915:0|t[Cura] de 3 segundos|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #xprate <1.5
    #optional
    .goto Darkshore,38.54,86.05
    >>Descubra a Clareira do Mestre
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #xprate <1.5
    #completewith next
    .cast 5809 >>Use o [Frasco de Vidência] e coloque-o no chão
    .use 5251
step
    #xprate <1.5
    .goto Darkshore,38.54,86.05
    >>|cRXP_WARN_Clique na|cRXP_PICK_ Tigela de Vidência|r no chão|r
    .turnin 944 >>Volte a The Master's Glaive
    .accept 949 >>Aceite O Acampamento do Crepúsculo
    .use 5251
step
    #xprate <1.5
    .goto 1439,38.537,86.050
    >>Clique no |cRXP_PICK_Tomo Crepúsculo|r no pedestal norte
    .turnin 949 >>Entregue O Acampamento do Crepúsculo
    .accept 950 >>Aceite Retorno a Onu
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a|cRXP_FRIENDLY_ Therylune|r. Isso iniciará uma escolta
    >>|cRXP_WARN_Pule este passo se ela não estiver lá|r
    .accept 945 >>Aceite A Fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escolte a|cRXP_FRIENDLY_ Therylune|r para fora da Clareira do Mestre|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith prospectorEscort
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Mate os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Scalps|r
    >>Tenha cuidado pois eles lançam |T132152:0|t[Assolar], um ataque instantâneo causando 20-40 de dano e |cRXP_WARN_arremessando você para baixo por 2s|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    >>|cRXP_WARN_Você pode ter que esperar que ele reapareça ou que outros terminem a escolta|r
    .turnin 729 >>Entregue The Absent Minded Prospector
    .target Prospector Remtravel
    .isOnQuest 729
step
    #label prospectorEscort
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r. Isso iniciará uma escolta
    .accept 731,1 >>Aceite O Prospector Distraído
    >>|cRXP_WARN_Esta missão é MUITO difícil. Pule este passo se você não conseguir encontrar um grupo ou fazer solo|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >>https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Escolte o|cRXP_FRIENDLY_ Prospector Trilheiro|r pela Escavação|r
    >>|cRXP_WARN_Esta missão é MUITO difícil. Pule este passo se você não conseguir encontrar um grupo ou fazer solo|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >>https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .complete 731,1
    .isOnQuest 731
step
    #xprate <1.5
    #optional
    #completewith Murkdeep
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r e os |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter os |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    #optional
    #completewith next
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r e os |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter os |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,32.644,80.711
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4730 >>Aceite Beached Sea Criatura - Missão
step
    #xprate >1.49
    #optional
    #completewith next
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter os |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #xprate >1.49
    .goto 1439,31.690,83.700
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step
    #xprate >1.49
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r e os |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter os |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,31.229,85.564
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step
    .goto 1439,31.251,87.419
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4733 >>Aceite Beached Sea Criatura - Missão
    >>|cRXP_WARN_Esta missão pode ser MUITO difícil. Enfrente os |cRXP_ENEMY_Murlocs|r um de cada vez, caso contrário você pode atacar vários ao mesmo tempo|r
    .link https://youtu.be/lfQM3Q-Ag5A >>https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Clique aqui para um guia em vídeo|r
step
    #xprate <1.5
    .goto 1439,31.229,85.564
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step
    #xprate <1.5
    #optional
    .goto 1439,31.690,83.700
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step
    #xprate <1.5
    #optional
    .goto 1439,32.644,80.711
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4730 >>Aceite Beached Sea Criatura - Missão
step
    #xprate <1.5
    #optional
    #label Murkdeep
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
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
    #xprate <1.5
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r e os |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter os |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Mate os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Scalps|r
    >>Tenha cuidado pois eles lançam |T132152:0|t[Assolar], um ataque instantâneo causando 20-40 de dano e |cRXP_WARN_arremessando você para baixo por 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto Darkshore,41.389,80.565
    >>Clique no |cRXP_PICK_Buzzbox 525|r no chão
    .turnin 1003 >>Vá a Buzzbox 525
    .isOnQuest 1003
step
    #xprate <1.5
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 951 >>Entregue Relíquias de Mathystra
    .target Onu
    .isQuestComplete 951
step
    #xprate <1.5
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Retorno a Onu
    .target Onu
step
    #xprate <1.5
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r para iniciar a escolta
    >>|cRXP_WARN_Pule este passo se ele não estiver lá. Pode levar até 25 minutos para ele reaparecer|r
    >>|cRXP_WARN_Esta é uma missão cronometrada, você deve escoltá-lo todo o caminho até ashenvale em 20 minutos|r
    .accept 5321 >>Aceite O Adormecido Despertou
    .target Kerlonian Evershade
step
    #xprate <1.5
    .goto Darkshore,44.38,76.30
    >>Abra o |cRXP_PICK_Baú de Kerlonian|r. Saqueie-o para obter |T134229:0|t[|cRXP_LOOT_Chifre do Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isOnQuest 5321
step
#xprate <1.5
    #completewith volcorEnd
    .goto Ashenvale,27.26,35.58
    +|cRXP_FRIENDLY_Kerlonian|r o seguirá e ocasionalmente o ajudará no combate. |cRXP_WARN_Certifique-se de não perdê-lo, pois ele parará de se mover quando adormecer. Você tem 25 minutos para chegar a Vale Gris e completar esta missão|r
    .use 13536 >>|cRXP_WARN_Use o |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r] sempre que |cRXP_FRIENDLY_Kerlonian|r adormecer para acordá-lo|r
    >>|cRXP_WARN_Evite correr na estrada principal o máximo possível. Inimigos só aparecerão se você estiver na estrada|r
    .isOnQuest 5321
step
#xprate <1.5
    #completewith next
    .goto Darkshore,45.00,85.30,30 >>Vá em direção a |cRXP_FRIENDLY_Volcor|r na Caverna
    .isOnQuest 993
step
#xprate <1.5
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >>Entregue Um Mestre Perdido
    .accept 995 >>Aceite Fuga Através da Furtividade
    .timer 20,Fuga Através da Furtividade RP
    .target Volcor
step
#xprate <1.5
    #label volcorEnd
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 995,1
    .isOnQuest 995
step -- adjusted to heading there straight from southern most beached sea creature
#xprate >1.49
    #completewith tower
    .zone Ashenvale >>Viaje para o sul até Vale Gris
    .goto Ashenvale,25.77,14.55
step
#xprate <1.50
    #completewith tower
    .zone Ashenvale >>Viaje para o sul até Vale Gris
    .goto Ashenvale,29.7,13.6
step
#xprate <1.5
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escolte |cRXP_FRIENDLY_Kerlonian|r até o Posto da Maestra em Vale Gris|r
    .use 13536 >>|cRXP_WARN_Use o|r |T134229:0|t[|cRXP_LOOT_Chifre do Despertar|r] |cRXP_WARN_quando |cRXP_FRIENDLY_Kerlonian|r adormece perto dele|r
    >>|cRXP_WARN_Evite correr na estrada principal o máximo possível. Inimigos só aparecerão se você estiver na estrada|r
    .complete 5321,2
    .isOnQuest 5321
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Liladris Luneflúvia|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >>Entregue O Adormecido Despertou
    .isQuestComplete 5321
step << Paladin
    #season 2
    .goto Ashenvale,26.19,38.69
    >>Fale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 967 >>Entregue A Torre de Althalaxx
    --.accept 970 >> Accept The Tower of Althalaxx
    .turnin 78088 >>Entregue Estranho Artefato
    .accept 78089 >>Aceite Conselho de Ventobravo
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step << Paladin
    #season 2
    #label tower
    #optional
    .goto Ashenvale,26.19,38.69
    >>Fale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 967 >>Entregue A Torre de Althalaxx
    --.accept 970 >> Accept The Tower of Althalaxx
    .accept 78089 >>Aceite Conselho de Ventobravo
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step << !Warlock
    #season 0,1 << Paladin
	#xprate >1.49
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 967 >>Entregue A Torre de Althalaxx
    .target Delgren the Purifier
step
    #season 0,1 << Paladin
	#xprate <1.5 << !Warlock
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 967 >>Entregue A Torre de Althalaxx
    .accept 970 >>Aceite A Torre de Althalaxx
    .target Delgren the Purifier
step
    #xprate <1.59
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>Aceite Cabelo-de-Bathran
    .xp <20,1
step
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Mate os |cRXP_ENEMY_Dark Strand Cultists|r e os |cRXP_ENEMY_Dark Strand Adepts|r. Saque-os para obter |cRXP_LOOT_Glowing Gema Anímica|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto Ashenvale,31.25,30.70
    .xp 20-1650 >>Siga matando os |cRXP_ENEMY_Dark Strand mobs|r até ter XP suficiente para chegar ao nível 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #xprate <1.59
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abra o |cRXP_PICK_Maços de Plantas|r no chão. Saqueie-o para obter os |cRXP_LOOT_Cabelos de Bathran|r
    >>Eles parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Eles podem ser difíceis de ver
    >>|cRXP_WARN_Certifique-se de que você tem|r |T134916:0|t[Localizar Plantas] |cRXP_WARN_ativado para vê-los no minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,<1,1
step
    #xprate <1.59
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abra os |cRXP_PICK_Feixes de Plantas|r no chão. Pegue-os para |cRXP_LOOT_Bathran's Hairs|r
    >>Eles parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Eles podem ser difíceis de ver
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,1,1
step
    #xprate <1.59
    #optional
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .turnin 1010 >>Entregue Cabelo-de-Bathran
    .accept 1020 >>Aceite A Cura de Orendil
    .target Orendil Broadleaf
    .isQuestComplete 1010
step
    #optional
    #xprate <1.59
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .accept 1020 >>Aceite A Cura de Orendil
    .target Orendil Broadleaf
    .isQuestTurnedIn 1010
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >>Entregue A Torre de Althalaxx
    .accept 973 >>Aceite A Torre de Althalaxx
step
    #xprate <1.59
    .goto Ashenvale,31.89,22.53
    .xp 20 >>Suba até o nível 20
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .accept 1010 >>Aceite Cabelo-de-Bathran
    .target Orendil Broadleaf
step
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abra os |cRXP_PICK_Plant Bundles|r no chão. Pegue os |cRXP_LOOT_Bathran's Hairs|r
    >>Eles parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Eles podem ser difíceis de ver
    >>|cRXP_WARN_Certifique-se de que você tem|r |T134916:0|t[Localizar Plantas] |cRXP_WARN_ativado para vê-los no minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abra o |cRXP_PICK_Maços de Plantas|r no chão. Saqueie-o para obter os |cRXP_LOOT_Cabelos de Bathran|r
    >>Eles parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Eles podem ser difíceis de ver
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .turnin 1010 >>Entregue Cabelo-de-Bathran
    .accept 1020 >>Aceite A Cura de Orendil
    .target Orendil Broadleaf
step
    #xprate >1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto Ashenvale,22.64,51.91
    .turnin 945 >>Entregue A fuga de Therylune
    .isQuestComplete 945
step
    #optional
    #completewith TZS
    .subzone 415 >>Vá para Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >>Aprenda a rota de voo para Astranaar
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shindrell Fogofugaz|r
    .accept 1008 >>Aceite The Zoram Strand
    .target Shindrell Swiftfire
step
    #xprate <1.59
    .goto Ashenvale,34.89,49.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a Sentinela Tenysil|r
    .accept 1070 >>Aceite Em Guarda nas Montanhas Cristarrubra
    .target Sentinel Thenysil
step
    #xprate <1.59
    .goto Ashenvale,35.76,49.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Faldreas Goeth'Shael|r
    .accept 1056 >>Aceite Jornada ao Pico das Montanhas Cristarrubra
    .target Faldreas Goeth'Shael
step
    #xprate <1.59
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .accept 991 >>Aceite A Purificação de Raene
    .accept 1054 >>Aceite Expurgo a Ameaça
    .target Raene Wolfrunner
step << !Warlock
    #xprate <1.59
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Kimlya|r
    .home 415 >>Defina sua Pedra de Regresso para Astranaar
    .target Innkeeper Kimlya
step
    #xprate <1.59
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1020 >>Entregue A Cura de Orendil
    .timer 24,RP da Cura de Orendil
    .accept 1033 >>Aceite A Lágrima de Eluna
]])
