if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 22-27 Vale Gris
#next 27-31 Selva do Espinhaço Setentrional
#version 1
--#group RXP Cataclysm (H) << cata

#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step
    #optional
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kolg Manchassangue|r
    .gossipoption 111683 >>Voe para The Mor'Shan Ramparts
    .target Kulg Gorespatter
    .subzoneskip 2457,1
    .subzoneskip 1703
    .isOnQuest 13866
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kadrak|r
    .turnin 13866 >>Entregue Rumo à Paliçada
    .accept 13612 >>Aceite Em Defesa de Mor'shan
    .accept 13618 >>Aceite Encontre Gorat
    .target Kadrak
    .isOnQuest 13866
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kadrak|r
    .turnin 28493 >>Entregue Ordens do Chefe Guerreiro: Vale Gris
    .accept 13612 >>Aceite Em Defesa de Mor'shan
    .accept 13618 >>Aceite Encontre Gorat
    .target Kadrak
    .isOnQuest 28493
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kadrak|r
    .accept 13612 >>Aceite Em Defesa de Mor'shan
    .accept 13618 >>Aceite Encontre Gorat
    .target Kadrak
step
    .goto 10,42.27,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Truun|r
    .accept 13615 >>Aceite Aljavas Vazias
    .target Truun
step
    .goto 10,42.43,15.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinah|r
    .accept 13613 >>Aceite Resgate dos Feridos
    .target Dinah Halfmoon
step
    .goto 10,41.99,15.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gort|r
    .fp The Mor'shan Rampart >>Aprenda a rota de voo para The Mor'shan Rampart
    .target Gort Goreflight
    .subzoneskip 1703,1
step
    #completewith FindGorat
    >>Mate os |cRXP_ENEMY_Vale Gris Escaramuçadores|r e os |cRXP_ENEMY_Vale Gris Arqueiros|r
    .complete 13612,1 --5/5 Ashenvale Skirmishers Slain
    .mob +Ashenvale Skirmisher
    .complete 13612,2 --5/5 Ashenvale Bowmen Slain
    .mob +Ashenvale Bowman
step
    #completewith Skirmishers
    .use 45001 >>|cRXP_WARN_Usar|r |T133690:0|t[Medicated Salve] |cRXP_WARN_em|r |cRXP_FRIENDLY_Defensores de Mor'shan Feridos|r
    .complete 13613,1 --5/5 Wounded Mor'shan Defenders Rescued
    .target Wounded Mor'shan Defender
step
    #completewith MorshanDefenders
    >>Saque |cRXP_PICK_Flechas|r do chão
    .complete 13615,1 --10/10 Serviceable Arrow
step
    #label FindGorat
    .goto 63,64.19,84.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorat|r
    .turnin 13618 >>Entregue Encontre Gorat
    .accept 13619 >>Aceite Relatório Final
    .target Gorat
step
    #label Skirmishers
    #loop
    .goto 63,68.816,82.328,0
    .waypoint 63,66.454,85.871,50,0
    .waypoint 63,70.033,85.211,50,0
    .waypoint 63,68.816,82.328,50,0
    .waypoint 63,67.731,82.870,50,0
    .waypoint 63,66.784,84.708,50,0
    >>Mate os |cRXP_ENEMY_Vale Gris Escaramuçadores|r e os |cRXP_ENEMY_Vale Gris Arqueiros|r
    .complete 13612,1 --5/5 Ashenvale Skirmishers Slain
    .mob +Ashenvale Skirmisher
    .complete 13612,2 --5/5 Ashenvale Bowmen Slain
    .mob +Ashenvale Bowman
step
    #label MorshanDefenders
    #loop
    .goto 63,66.934,86.130,0
    .waypoint 63,65.370,85.300,20,0
    .waypoint 63,66.934,86.130,20,0
    .waypoint 63,66.813,84.329,20,0
    .waypoint 63,67.587,83.172,20,0
    .waypoint 63,69.001,83.160,20,0
    .waypoint 63,68.994,86.080,20,0
    .waypoint 10,40.760,12.633,20,0
    .waypoint 63,65.280,86.817,20,0
    .use 45001 >>Usar |T133690:0|t[Medicated Salve] em |cRXP_FRIENDLY_Defensores de Mor'shan Feridos|r
    .complete 13613,1 --5/5 Wounded Mor'shan Defenders Rescued
    .target Wounded Mor'shan Defender
step
    #loop
    .goto 1440/1,-2057.00000,1391.50000,15,0
    .waypoint 1440/1,-2057.00000,1391.50000,15,0
    .waypoint 1440/1,-2082.40015,1365.00000,15,0
    .waypoint 1440/1,-2105.19995,1352.90002,15,0
    .waypoint 1440/1,-2154.69995,1411.90002,15,0
    .waypoint 1440/1,-2240.50000,1383.09998,15,0
    .waypoint 1440/1,-2280.10010,1393.00000,15,0
    .waypoint 1440/1,-2315.60010,1391.40002,15,0
    .waypoint 1440/1,-2341.69995,1376.00000,15,0
    .waypoint 1440/1,-2344.50000,1410.59998,15,0
    >>Saque |cRXP_PICK_Flechas|r do chão
    .complete 13615,1 --10/10 Serviceable Arrow
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kadrak|r
    .turnin 13612 >>Entregue Em Defesa de Mor'shan
    .turnin 13619 >>Entregue Relatório Final
    .accept 13620 >>Aceite Para Dinah, Agora Mesmo
    .target Kadrak
step
    .goto 10,42.25,15.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Truun|r
    .turnin 13615 >>Entregue Aljavas Vazias
    .target Truun
step
    .goto 10,42.43,15.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinah|r
    .turnin 13620 >>Entregue Para Dinah, Agora Mesmo
    .turnin 13613 >>Entregue Resgate dos Feridos
    .accept 13621 >>Aceite A Vingança de Gorat
    .target Dinah Halfmoon
step
    #completewith next
    .goto 63,64.16,84.50
    .cast 62772 >>|cRXP_WARN_Use|r |T134719:0|t[Gorat's Imbuído Sanguíneo] |cRXP_WARN_Usar|r |cRXP_FRIENDLY_Gorat|r
    .timer 103,A Vingança de Gorat RP
    .use 45023
step
    .goto 63,65.72,82.20
    >>Siga o Espírito de Gorat e mate o |cRXP_ENEMY_Capitão Elendilad|r quando ele aparecer
    .complete 13621,1 --1/1 Captain Elendilad slain
    .mob Captain Elendilad
    .target Gorat
    .target Spirit of Gorat
    .use 45023
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kadrak|r
    .turnin 13621 >>Entregue A Vingança de Gorat
    .target Kadrak
step
    .goto 10,42.26,15.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Truun|r
    .accept 13628 >>Aceite Tem Lenha Aí
    .target Truun
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kadrak|r
    >>Obtenha |cRXP_LOOT_Kadrak's Rédeas|r dele
    .collect 45051,1,13628,1 --Kadrak's Reins (1)
    .target Kadrak
    .skipgossip
step
    .goto 10,42.84,16.15
    >>Monte |cRXP_FRIENDLY_Brucutu|r
    .complete 13628,1 --1/1 Brutusk mounted
    .timer 39,Tem Madeira? RP
    .target Brutusk
    --VV Timer
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorka|r
    .turnin 13628 >>Entregue Tem Lenha Aí?
    .accept 13640 >>Aceite Administração de Pessoal
    .target Gorka
step
    #loop
    .goto 1440/1,-2385.00000,1520.30005,0
    .goto 1440/1,-2437.60010,1554.80005,30,0
    .goto 1440/1,-2417.50000,1496.09998,30,0
    .goto 1440/1,-2385.00000,1520.30005,30,0
    .goto 1440/1,-2373.19995,1467.50000,30,0
    .goto 1440/1,-2383.90015,1405.90002,30,0
    .goto 1440/1,-2323.00000,1496.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com os |cRXP_FRIENDLY_Demoralized Peons|r
    >>|cRXP_WARN_Siga e proteja-os de|r |cRXP_ENEMY_Vale Gris Perseguidores|r |cRXP_WARN_enquanto começam a cortar madeira. Saqueie o|r |cRXP_LOOT_Madeira Recém-Cortada|r |cRXP_WARN_no chão à medida que aparece|r
    .complete 13640,1 --5/5 Freshly Cut Wood
    .skipgossip
    .target Demoralized Peon
    .mob Ashenvale Stalker
step
    .goto 63,72.93,80.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorka|r
    .turnin 13640 >>Entregue Administração de Pessoal
    .accept 13651 >>Aceite Um Pinguinho de Óleo
    .target Gorka
step
    #completewith next
    >>Mate |cRXP_ENEMY_Garraguda|r se ele estiver disponível. Saqueie-o para obter |T136063:0|t[|cRXP_LOOT_Garra de Garraguda|r] e use-o para começar a missão
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>Aceite Garra de Garraguda
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #loop
    .goto 1440/1,-2566.90015,1799.70007,0
    .waypoint 1440/1,-2514.19995,1700.09998,50,0
    .waypoint 1440/1,-2566.90015,1799.70007,50,0
    .waypoint 1440/1,-2615.00000,1843.20007,50,0
    .waypoint 1440/1,-2497.90015,1864.70007,50,0
    .waypoint 1440/1,-2522.19995,1952.50000,50,0
    .waypoint 1440/1,-2606.50000,1940.30005,50,0
    .waypoint 1440/1,-2615.00000,1855.50000,50,0
    >>Mate os |cRXP_ENEMY_Visco Putrefato|r. Saqueie-os para obter o |cRXP_LOOT_Natural Oil|r
    .complete 13651,1 --5/5 Natural Oil
    .mob Rotting Slime
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorka|r
    .turnin 13651 >>Entregue Um Pinguinho de Óleo
    .accept 13653 >>Aceite Crise em Machadada
    .target Gorka
step
    .goto 63,72.93,80.44
    .gossipoption 111661 >>Fale com |cRXP_FRIENDLY_Gorka|r
    .timer 79,Crise em Machadada RP
    .target Gorka
    .isOnQuest 13653
step
    .goto 63,72.93,80.44
    >>Retorne para Mor'shan Ramparts com |cRXP_FRIENDLY_Gorka|r
    >>|cRXP_WARN_Não esteja montado!|r
    .complete 13653,1 --1/1 Gorka accompanied to Mor'shan Ramparts
    .target Gorka
    .skipgossip
    --VV Timer
step
    .goto 10,42.71,14.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kadrak|r
    .turnin 13653 >>Entregue Crise em Machadada
    .target Kadrak
    .accept 13712 >>Aceite Ao Resgate!
    --VV Timer
step
    .goto 10,42.71,14.95
    .gossipoption 111656 >>Fale com |cRXP_FRIENDLY_Kadrak|r para viajar para Posto Machadada
    .timer 110,Ao Resgate! RP
    >>|cRXP_WARN_Esta missão pode estar com um bug! Pule este passo neste caso.|r
    .target Kadrak
    .isOnQuest 13712
step
    .goto 63,73.59,62.19
    >>Chegue a Posto Machadada
    >>|cRXP_WARN_Esta missão pode estar com um bug! Pule este passo neste caso.|r
    .complete 13712,1 --1/1 Splintertree Post Siege Broken
step
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kadrak|r
    .turnin 13712 >>Entregue Ao Resgate!
    .accept 13803 >>Aceite Sangue dos Fracos
    .target Kadrak
    .isQuestComplete 13712
step
    #optional
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kadrak|r
    .accept 13803 >>Aceite Sangue dos Fracos
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 431 >>Viaje para Posto Machadada
    .isQuestAvailable 13712
step
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .fp >>Aprenda a rota de voo para Posto Machadada
    .target Vhulgra
    .isQuestAvailable 6503
step
    .goto 63,73.56,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Koray'bin|r
    .accept 6503 >>Aceite Vanguardeiros do Vale Gris
    .target Kuray'bin
    .isQuestTurnedIn 13712
step
    .goto 63,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Kailisk|r
    .home >>Defina sua Pedra de Retorno em Posto Machadada
    .target Innkeeper Kaylisk
    .isQuestTurnedIn 13712
    .isQuestAvailable 6503
step
    .goto 63,73.19,60.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valusha|r
    .accept 26448 >>Aceite Destruir a Legião
    .target Valusha
    .isQuestTurnedIn 13712
step
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durak|r dentro da caverna
    .turnin 13803 >>Entregue Sangue dos Fracos
    .accept 13805 >>Aceite Destrua o Coração Deles!
    .target Durak
    .isQuestTurnedIn 13712
step
    .goto 63,73.83,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pixel|r
    .accept 13801 >>Aceite A Quem Vou Chamar?
    .target Pixel
    .isQuestTurnedIn 13712
step
    .goto 63,73.34,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Demolidor Racha-osso|r
    .accept 13730 >>Aceite Brincando com Fogovil
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #completewith FelFires
    >>Mate os |cRXP_ENEMY_Demônios|r em Fogovil Hill
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
step
    #completewith KillDemons
    >>Um dos |cRXP_ENEMY_Demônios|r pode soltar o |T134943:0|t[|cRXP_LOOT_Planos diabólicos|r]. Usar-o para começar a missão
    .collect 23798,1,26447 --Diabolical Plans (1)
    .accept 26447 >>Aceite Planos diabólicos
    .isQuestTurnedIn 13712
step
    #label FelFires
    #loop
    .goto 63,81.928,66.385,0
    .waypoint 63,83.797,70.490,30,0
    .waypoint 63,84.297,67.684,30,0
    .waypoint 63,83.339,66.328,30,0
    .waypoint 63,82.818,66.955,30,0
    .waypoint 63,81.928,66.385,30,0
    .waypoint 63,81.788,65.245,30,0
    .waypoint 63,80.768,64.565,30,0
    .waypoint 63,80.654,67.347,30,0
    .waypoint 63,81.829,69.984,30,0
    .use 45478 >>|cRXP_WARN_Use o|r |T237030:0|t[Fortalecida Lata] |cRXP_WARN_nos fogos verdes|r
    .complete 13730,1 --7/7 Fel Fires Siphoned
    .isQuestTurnedIn 13712
step
    #label KillDemons
    .goto 63,81.928,66.385,0
    .waypoint 63,83.797,70.490,50,0
    .waypoint 63,84.297,67.684,50,0
    .waypoint 63,83.339,66.328,50,0
    .waypoint 63,82.818,66.955,50,0
    .waypoint 63,81.928,66.385,50,0
    .waypoint 63,81.788,65.245,50,0
    .waypoint 63,80.768,64.565,50,0
    .waypoint 63,80.654,67.347,50,0
    .waypoint 63,81.829,69.984,50,0
    >>Mate os |cRXP_ENEMY_Demônios|r em Fogovil Hill
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
    .isQuestTurnedIn 13712
step
    #completewith DorDanilDen
    >>Abate |cRXP_ENEMY_Garraguda|r. Saque-o para obter |T136063:0|t[|cRXP_LOOT_Garra de Garraguda|r] e use-a para iniciar a missão
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>Aceite Garra de Garraguda
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Vanguardeiros do Vale Gris|r
    >>|cRXP_WARN_Eles estão invisíveis perto das árvores|r
    .complete 6503,1 --9/9 Ashenvale Outrunners Killed
    .unitscan Ashenvale Outrunner
step
    #label DorDanilDen
    .goto 63,75.66,75.32,20 >>Entre na Tumba Dor'Danil
    .isQuestTurnedIn 13712
    .isOnQuest 13805
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Severed Keepers|r e os |cRXP_ENEMY_Severed Druids|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
step
    .goto 63,75.52,74.20
    .use 45683 >>|cRXP_WARN_Use o|r |T134840:0|t[Sangue Maculado of the Kaldorei] |cRXP_WARN_no centro da caverna|r
    .complete 13805,1 --1/1 Forest Heart Corrupted
    .isQuestTurnedIn 13712
step
    #loop
    .goto 63,76.929,74.847,0
    .waypoint 63,75.394,75.203,15,0
    .waypoint 63,75.842,76.211,15,0
    .waypoint 63,76.208,75.300,15,0
    .waypoint 63,76.929,74.847,15,0
    .waypoint 63,77.356,75.219,15,0
    .waypoint 63,77.359,75.949,15,0
    .waypoint 63,76.722,75.943,15,0
    .waypoint 63,77.401,74.644,15,0
    >>Complete matando os |cRXP_ENEMY_Severed Keepers|r e os |cRXP_ENEMY_Severed Druids|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
    .isQuestTurnedIn 13712
step
    #completewith next
    >>Abate |cRXP_ENEMY_Garraguda|r. Saque-o para obter |T136063:0|t[|cRXP_LOOT_Garra de Garraguda|r] e use-a para iniciar a missão
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>Aceite Garra de Garraguda
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #loop
    .goto 63,74.504,72.562,0
    .waypoint 63,74.504,72.562,30,0
    .waypoint 63,71.936,73.893,30,0
    .waypoint 63,71.127,73.817,30,0
    .waypoint 63,71.392,72.955,30,0
    .waypoint 63,71.921,70.364,30,0
    .waypoint 63,72.913,70.286,30,0
    .waypoint 63,73.638,70.814,30,0
    .waypoint 63,74.243,69.532,30,0
    .waypoint 63,75.577,70.316,30,0
    .waypoint 63,74.493,72.447,30,0
    >>Complete matando os |cRXP_ENEMY_Vanguardeiros do Vale Gris|r
    >>|cRXP_WARN_Eles estão invisíveis perto das árvores|r
    .complete 6503,1 --9/9 Ashenvale Outrunners Killed
    .unitscan Ashenvale Outrunner
    .isQuestTurnedIn 13712
step
    #loop
    .goto 1440/1,-2557.50000,1751.50000,0
    .waypoint 1440/1,-2525.19995,1684.30005,40,0
    .waypoint 1440/1,-2557.50000,1751.50000,40,0
    .waypoint 1440/1,-2578.90015,1805.80005,40,0
    .waypoint 1440/1,-2494.19995,1868.70007,40,0
    .waypoint 1440/1,-2416.10010,1835.40002,40,0
    .waypoint 1440/1,-2387.90015,1787.09998,40,0
    .waypoint 1440/1,-2480.90015,1737.70007,40,0
    >>Abate |cRXP_ENEMY_Garraguda|r. Saque-o para obter |T136063:0|t[|cRXP_LOOT_Garra de Garraguda|r] e use-a para iniciar a missão
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>Aceite Garra de Garraguda
    .unitscan Sharptalon
    .use 16305
    .isQuestTurnedIn 13712
    .maxlevel 24
step << skip
    #completewith next
    .hs >>Vá para Posto Machadada
    .use 6948
    .subzoneskip 431
    --Need hearth cd for zoram strand
step
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pixel|r
    .turnin 13801 >>Entregue A Quem Vou Chamar?
    .target Pixel
    .isQuestTurnedIn 13712
step
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kadrak|r
    .turnin 13805 >>Entregue Destrua o Coração Deles!
    --.accept 13808 >>Accept Mission Improbable
    .accept 13848 >>Aceite Mensageiro das Más Notícias
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kadrak|r
    .turnin 13805 >>Entregue Destrua o Coração Deles!
    .accept 13808 >>Aceite Missão Improvável
    .accept 13848 >>Aceite Mensageiro das Más Notícias
    .target Kadrak
    .isQuestTurnedIn 13712
step
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Demolidor Racha-osso|r
    .turnin 13730 >>Entregue Brincando com Fogovil
    --.accept 13751 >>Accept Tell No One! -- Optional skip
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Demolidor Racha-osso|r
    .turnin 13730 >>Entregue Brincando com Fogovil
    .accept 13751 >>Aceite Não Conte a Ninguém!
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    .goto 63,73.56,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Koray'bin|r
    .turnin 6503 >>Entregue Vanguardeiros do Vale Gris
    .target Kuray'bin
    .isQuestTurnedIn 13712
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valusha|r
    .turnin 26448 >>Entregue Destruir a Legião
    .turnin 26447 >>Entregue Planos Diabólicos
    --.accept 26449 >>Accept Never Again!
    .target Valusha
    .isOnQuest 26447
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valusha|r
    .turnin 26448 >>Entregue Destruir a Legião
    .target Valusha
    .isQuestTurnedIn 13712
--step
    --.goto 63,73.16,60.10
    -->>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    --.accept 26449 >>Accept Never Again!
    --.target Valusha
    --.isQuestTurnedIn 26447
    --Not worth doing

    --Could go straight to Zoram Strand from here. The 13751 chain is bad xp/hr (13751/13797/13798/13841/13842)

step
    #questguide
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durak|r dentro da caverna
    .turnin 13751 >>Entregue Não Conte a Ninguém!
    .accept 13797 >>Aceite Trabalho Sujo
    .target Durak
step
    #questguide
    .goto 63,72.62,58.34
    >>Pegue o |cRXP_PICK_Cascalho Fresco|r espalhado por toda a caverna para obter os |cRXP_LOOT_Chunks of Ore|r
    .complete 13797,1 --10/10 Chunk of Ore
step
    #questguide
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durak|r
    .turnin 13797 >>Entregue Trabalho Sujo
    .accept 13798 >>Aceite Chuva de Destruição
    .target Durak
step
    #questguide
    .goto 63,74.09,62.92
    .use 45598 >>|cRXP_WARN_Suba a torre e aponte o|r |T134569:0|t[Amaldiçoado Ore] |cRXP_WARN_em|r |cRXP_ENEMY_Raging Ancients|r |cRXP_WARN_e|r |cRXP_ENEMY_Attacking Elves|r
    .complete 13798,2 --5/5 Raging Ancients Slain
    .complete 13798,1 --30/30 Attacking Elves Slain
    .mob Raging Ancients
    .mob Ashenvale Assailant
    .mob Ashenvale Bowman
    --VV Dogshit quest, item has 15sec cd and must be used like 10+ times. But good quest rewards
step
    #questguide
    .goto 63,72.18,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durak|r
    .turnin 13798 >>Entregue Chuva de Destruição
    .target Durak
step
    #questguide
    .goto 63,73.34,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Demolidor Racha-osso|r
    .accept 13841 >>Aceite Pedindo Desculpas
    .target Splintertree Demolisher
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 63,82.55,53.63
    .use 45710 >>|cRXP_WARN_Use seu|r |T133639:0|t[Segredo Signal Powder] |cRXP_WARN_no Abrasando Braseiro|r
    .complete 13808,1 --1/1 Smoldering Brazier lit
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krokk|r
    .turnin 13808 >>Entregue Missão Improvável
    .accept 13815 >>Aceite Distração é a Solução
    .accept 13865 >>Aceite Antes de Sair, Apague os Elfos...
    .target Krokk
step
    #questguide
    #completewith ChopSomeTrees
    >>Mate os |cRXP_ENEMY_Vale Gris Batedores|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout
step
    #questguide
    #completewith next
    .use 45807 >>|cRXP_WARN_Use|r |T132399:0|t[Splintertree Machado] |cRXP_WARN_para derrubar|r os |cRXP_FRIENDLY_Vale Gris Carvalhos|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    >>Mate |cRXP_ENEMY_Endolar|r, |cRXP_ENEMY_Arminon|r e |cRXP_ENEMY_Dorinar|r
    .goto 63,85.46,56.04
    .complete 13865,1 --1/1 Protector Endolar slain
    .goto 63,85.74,57.97
    .complete 13865,3 --1/1 Protector Arminon slain
    .goto 63,85.36,60.68
    .complete 13865,2 --1/1 Protector Dorinar slain
    .mob Protector Endolar
    .mob Protector Arminon
    .mob Protector Dorinar
step
    #questguide
    #label ChopSomeTrees
    .goto 63,86.51,54.67
    .use 45807 >>|cRXP_WARN_Use|r |T132399:0|t[Splintertree Machado] |cRXP_WARN_para derrubar|r os |cRXP_FRIENDLY_Vale Gris Carvalhos|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    .goto 63,85.53,56.74
    >>Mate os |cRXP_ENEMY_Vale Gris Batedores|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout

    --Quest below (26449) not worth, too much travel

step
    #questguide
    #completewith next
    .subzone 435 >>Voe para Cânion do Demônio Caído
step
    #questguide
    .goto 63,89.75,76.72
    >>Mate |cRXP_ENEMY_Gorgannon|r. Saque-o para obter a |cRXP_LOOT_Lâmina|r
    .complete 26449,1 --1/1 Gorgannon's Flaming Blade
    .mob Gorgannon
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,78.46,83.89
    >>Mate |cRXP_ENEMY_Diathorus, o Inquisidor|r. Saque-o para obter a |cRXP_LOOT_Lança|r.
    >>|cRXP_WARN_Localizado em frente à primeira ponte que você encontra depois de entrar na caverna|r
    .complete 26449,2 --1/1 Seeker's Fel Spear
    .mob Diathorus the Seeker
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krokk|r
    .use 45710 >>|cRXP_WARN_Use seu|r |T133639:0|t[Segredo Signal Powder] |cRXP_WARN_no Abrasando Braseiro para convocar|r |cRXP_FRIENDLY_Krokk|r
    .turnin 13815 >>Entregue Distração é a Solução
    .turnin 13865 >>Entregue Antes de Sair, Apague os Elfos...
    .accept 13870 >>Aceite Melhor é Impossível
    .target Krokk
step
    #questguide
    .goto 63,90.94,58.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Feitor Gorthak|r no Acampamento Warsong Madeira Serrada
    .turnin 13870 >>Entregue Melhor é Impossível
    .accept 13871 >>Aceite Segurança!
    .target Overseer Gorthak
step
    #questguide
    .goto 63,89.97,59.10
    >>Corra para fora e vire à esquerda. Mate o |cRXP_ENEMY_Assassino|r que salta
    .complete 13871,1 --1/1 Kaldorei Assassin's Head
    .unitscan Kaldorei Assassin
step
    #questguide
    .goto 63,90.94,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Feitor Gorthak|r
    .turnin 13871 >>Entregue Segurança!
    .target Overseer Gorthak
step
    #questguide
    .goto 63,90.75,58.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guardião Menerin|r
    .accept 13873 >>Aceite O Último Desejo de Xéla
    .target Guardian Menerin
step
    #questguide
    .goto 63,89.60,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guardião Gurtar|r
    .turnin 13873 >>Entregue O Último Desejo de Xéla
    .accept 13875 >>Aceite O Pedido de Gurtar
    .target Guardian Gurtar
step
    #label Bloodcups
    #questguide
    .goto 63,73.29,60.22
    >>Saque os |cRXP_PICK_Espinhoso Bloodcups|r do chão
    >>|cRXP_WARN_Muitos podem ser encontrados ao longo da estrada em direção a Posto Machadada|r
    .collect 46315,8,13875,1 --Thorned Bloodcup (8)
step
    #questguide
    #requires Bloodcups
    .use 46316 >>Usar a |T134892:0|t[Trança de Cabelo de Orc] para criar uma |cRXP_LOOT_Trança de Copo-de-sangue|r
    .complete 13875,1 --1/1 Bloodcup Braid
step
    #questguide
    .goto 63,73.34,62.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Demolidor Racha-osso|r
    .turnin 13875 >>Entregue O Pedido de Gurtar
    .target Splintertree Demolisher
step
    #questguide
    .goto 63,73.15,60.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valusha|r
    .turnin 26449 >>Entregue Nunca Mais!
    .target Valusha
    .isQuestComplete 26447
step
    #questguide
    .goto 63,73.74,61.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Locke Okarr|r
    .accept 13806 >>Aceite Cuidando dos Demônios
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.86,62.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >>Aceite Chifres de Sátiro
    .target Pixel
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    .subzone 430 >>Voe para Satyrnaar
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    >>Mate os |cRXP_ENEMY_Sátiros|r. Saque-os para obter os |cRXP_LOOT_Chifres|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,79.48,50.21
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClique nas |cRXP_FRIENDLY_Ritual Gemas|r roxas
    .complete 13806,1 --12/12 Demon Portals Interrupted
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,81.69,49.40
    >>Mate os |cRXP_ENEMY_Sátiros|r. Saque-os para obter os |cRXP_LOOT_Chifres|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pixel|r
    .turnin 6441 >>Entregue Chifres de Sátiro
    .target Pixel
step
    #questguide
    .goto 63,73.78,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Locke Okarr|r
    .turnin 13806 >>Entregue Cuidando dos Demônios
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #xprate >1.19
    .maxlevel 24,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .gossipoption 111682 >>Voe para Praia de Zoram
    .timer 165,Praia de Zoram, Vale Gris
    .target Vhulgra
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #xprate <1.2
    .maxlevel 25,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .gossipoption 111682 >>Voe para Praia de Zoram
    .timer 165,Praia de Zoram, Vale Gris
    .target Vhulgra
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 2897 >>Viaje para Posto Avançado Zoram'gar
    .isQuestAvailable 13712
step
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .fp >>Aprenda a rota de voo para Posto Avançado Zoram'gar
    .target Andruk
    .isQuestAvailable 26890
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Presatroz|r
    .turnin 13848 >>Entregue Mensageiro das Más Notícias
    .accept 13890 >>Aceite Mantenha o Fogo Aceso
    --.accept 26894 >>Accept Blackfathom Deeps
    .target Commander Grimfang
    --26894 BFD dungeon quest
step
    .goto 63,11.64,35.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Dagrun Martelo da Ira|r
    .accept 13883 >>Aceite Navios de Meia Tigela
    .accept 26890 >>Aceite A Essência de Aku'mai
    .target Dagrun Ragehammer
step
    .goto 63,12.66,35.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marukai|r
    .accept 6442 >>Aceite Nagas na Praia de Zoram
    .target Marukai
step
    .goto 63,12.99,34.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Deras|r
    .home >>Defina sua Pedra de Retorno em Posto Avançado Zoram'gar
    .target Innkeeper Duras
    .isQuestAvailable 26890
step
    .goto 63,12.77,34.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta. Tenha cuidado pois é difícil|r
    .accept 6641,1 >>Aceite Vorsha, a Açoitadora
    .target Muglash
step
    #completewith LitLightHouse
    >>Mate |cRXP_ENEMY_Nagas Cauda da Ira|r. Saqueie-os para obter os deles |cRXP_LOOT_Cabeças|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob Wrathtail Sorceress
step
    .goto 63,9.66,27.64
    >>Siga |cRXP_FRIENDLY_Muglash|r. Clique em |cRXP_PICK_Naga Braseiro|r quando chegar
    >>|cRXP_WARN_Haverá ondas de|r |cRXP_ENEMY_Naga|r |cRXP_WARN_que surgem. Tenha cuidado quando|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_sair, ele bate forte|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #completewith next
    >>Saqueie o |cRXP_LOOT_Sucata Metal Submersa|r do fundo do oceano
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #loop
    .goto 1440/1,1237.40002,3394.30005,0
    .waypoint 1440/1,1159.70007,3451.69995,50,0
    .waypoint 1440/1,1237.40002,3394.30005,50,0
    .waypoint 1440/1,1316.80005,3368.30005,50,0
    .waypoint 1440/1,1395.90002,3382.90015,50,0
    >>Mate as |cRXP_ENEMY_Hidras Brumaçoites|r. Saqueie-as pelas |cRXP_LOOT_Blubber|r
    .collect 46365,10,13890,1 --Mystlash Hydra Blubber (10)
    .mob Mystlash Hydra
step
    #loop
    .goto 1440/1,1372.59998,3405.80005,0
    .waypoint 1440/1,1372.59998,3405.80005,40,0
    .waypoint 1440/1,1201.90002,3394.40015,40,0
    .waypoint 1440/1,1350.70007,3329.19995,40,0
    >>Conclua coletando |cRXP_LOOT_Sucata Metal Submersa|r do fundo do oceano
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #completewith next
    .goto 63,11.69,35.36,30 >>Viaje para a forja em Posto Avançado Zoram'Gar
step
    .goto 63,11.69,35.36
    .use 46365 >>|cRXP_WARN_Use o|r |T237338:0|t[Esperma de Hidra Brumaçoite] |cRXP_WARN_para criar|r |cRXP_LOOT_Óleo de Hidra Brumaçoite|r
    >>|cRXP_WARN_Você precisa estar na forja em Posto Avançado Zoram'Gar para fazer isso|r
    .collect 46366,1,13890,1 --Mystlash Hydra Oil (1)
step
    .goto 63,11.57,35.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Dagrun Martelo da Ira|r
    .turnin 13883 >>Entregue Navios de Meia Tigela
    .target Dagrun Ragehammer
step
    #label LitLightHouse
    .goto 63,6.74,28.97
    >>Viaje para o andar superior do farol e acenda o fogo
    .complete 13890,1 --1/1 Lighthouse Fire Lit
step
    #loop
    .goto 1440/1,954.29999,3590.19995,0
    .waypoint 1440/1,1234.80005,3533.40015,50,0
    .waypoint 1440/1,1061.30005,3553.60010,50,0
    .waypoint 1440/1,954.29999,3590.19995,50,0
    .waypoint 1440/1,889.79999,3661.40015,50,0
    .waypoint 1440/1,814.90002,3866.40015,50,0
    >>Termine de matar os |cRXP_ENEMY_Wrathtail Nagas|r. Saqueie-os pelas |cRXP_LOOT_Cabeças|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob Wrathtail Sorceress
step
    .goto 63,12.11,33.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Presatroz|r
    .turnin 13890 >>Entregue Mantenha o Fogo Aceso
    .accept 13920 >>Aceite Antes de Partir...
    .target Commander Grimfang
step
    .goto 63,12.46,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mensageiro do Brado Guerreiro|r
    .turnin 6641 >>Entregue Vorsha, a Açoitadora
    .target Warsong Runner
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Entregue Nagas na Praia de Zoram
    .accept 13901 >>Aceite Desespero Profundo
    .target Marukai
step
    #loop
    .goto 1440/1,394.10001,3549.50000,0
    .waypoint 1440/1,682.60004,3480.60010,50,0
    .waypoint 1440/1,584.60004,3343.60010,50,0
    .waypoint 1440/1,394.10001,3549.50000,50,0
    .waypoint 1440/1,558.50000,3604.00000,50,0
    .waypoint 1440/1,661.20001,3772.90015,50,0
    .waypoint 1440/1,643.00000,3932.40015,50,0
    >>Mate os |cRXP_ENEMY_Wild Bucks|r. Saqueie-os pelos |cRXP_LOOT_Bife|r
    .complete 13920,1 --5/5 Venison Steak
    .mob Wild Buck
step
    #completewith next
    .goto 63,14.20,13.85,30 >>Pule para Profundezas Negras
    .subzoneskip 5517
step
    #completewith next
    >>Saqueie o |cRXP_PICK_Safira de Aku'Mai|r das paredes
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #loop
    .goto 1414/1,902.00000,4265.50000,0
    .waypoint 1414/1,940.70001,4170.10010,20,0
    .waypoint 1414/1,902.00000,4265.50000,20,0
    .waypoint 1414/1,898.00000,4319.10010,20,0
    .waypoint 1414/1,821.90002,4252.50000,20,0
    .waypoint 1414/1,742.60004,4223.00000,20,0
    >>Mate as |cRXP_ENEMY_Sacerdotisas Blackfathom Tide|r
    .complete 13901,1 --6/6 Blackfathom Tide Priestesses slain
    .mob Blackfathom Tide Priestess
step
    #loop
    .goto 1414/1,902.00000,4265.50000,0
    .waypoint 1414/1,940.70001,4170.10010,20,0
    .waypoint 1414/1,902.00000,4265.50000,20,0
    .waypoint 1414/1,898.00000,4319.10010,20,0
    .waypoint 1414/1,821.90002,4252.50000,20,0
    .waypoint 1414/1,742.60004,4223.00000,20,0
    >>Conclua coletando |cRXP_PICK_Safira de Aku'Mai|r das paredes
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Praia de Zoram
    .use 6948
    .subzoneskip 2897
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Presatroz|r
    .turnin 13920 >>Entregue Antes de Partir...
    .accept 13923 >>Aceite Para o Posto de Vigia Grito Infernal
    .target Commander Grimfang
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marukai|r
    .turnin 13901 >>Entregue Desespero Profundo
    .target Marukai
step
    .goto 63,11.57,35.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Dagrun Martelo da Ira|r
    .turnin 26890 >>Entregue A Essência de Aku'mai
    .target Dagrun Ragehammer
step
    #completewith HellscreamsWatchPickups
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .gossipoption 111691 >>Voe para Vigia de Grito Infernal
    .target Andruk
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thraka|r
    .fp >>Aprenda a Rota de Voo para Vigia de Grito Infernal
    .target Thraka
    .isQuestAvailable 6462
step
    .goto 63,38.60,42.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Linkasa|r
    .home >>Defina sua Pedra de Retorno em Vigia de Grito Infernal
    .target Innkeeper Linkasa
    .isQuestAvailable 6462
step
    .goto 63,38.01,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Goggath|r
    >>|cRXP_WARN_Ele patrulha pela área|r
    .turnin 13923 >>Entregue Para o Posto de Vigia Grito Infernal
    .accept 13936 >>Aceite Pulga, O Inútil
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 216 >>Aceite No Meio do Caminho Tinha uma Pedra... e um Pelocardo...
    .target Karang Amakkar
step
    .goto 63,37.98,43.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pulga|r
    .turnin 13936 >>Entregue Pulga, O Inútil
    .accept 13942 >>Aceite Na Horda, a Bomba Monta Você...
    .target Tweedle
step
    .goto 63,38.00,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Goggath|r
    >>|cRXP_WARN_Ele patrulha pela área|r
    .accept 13943 >>Aceite Espaço para Respirar
    .target Captain Goggath
step
    #label HellscreamsWatchPickups
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mitsuwa|r
    .accept 6462 >>Aceite Patuá Trolls
    .target Mitsuwa
step
    #loop
    .goto 1440/1,-360.50000,2929.60010,0
    .waypoint 1440/1,-298.20001,2929.19995,35,0
    .waypoint 1440/1,-360.50000,2929.60010,35,0
    .waypoint 1440/1,-433.80002,2897.00000,35,0
    .waypoint 1440/1,-571.00000,2871.19995,35,0
    .waypoint 1440/1,-592.50000,2821.19995,35,0
    >>Mate os |cRXP_ENEMY_Astranaar Officers|r e os |cRXP_ENEMY_Astranaar Skirmishers|r
    >>Pegue o |cRXP_PICK_Barro Beijado pela Lua|r do chão
    .complete 13943,2 --3/3 Astranaar Officers slain
    .mob +Astranaar Officer
    .complete 13943,1 --10/10 Astranaar Skirmishers slain
    .mob +Astranaar Skirmisher
    .complete 13942,1 --10/10 Moon-Kissed Clay
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Thistlefur Furbolgs|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    #completewith next
    .goto 63,38.37,30.59,40 >>Entre no Domínio dos Pelocardos
step
    #loop
    .goto 1440/1,-627.70001,3394.69995,0
    .waypoint 1440/1,-605.60004,3401.69995,15,0
    .waypoint 1440/1,-627.70001,3394.69995,15,0
    .waypoint 1440/1,-631.79999,3349.30005,15,0
    .waypoint 1440/1,-574.70001,3385.60010,15,0
    .waypoint 1440/1,-676.70001,3314.19995,15,0
    .waypoint 1440/1,-683.60004,3359.00000,15,0
	>>Pegue os |cRXP_PICK_Baús dos Trolls|r no chão para |cRXP_LOOT_Encantos dos Trolls|r
	.complete 6462,1 --Collect Troll Charm (x8)
step
    .goto 63,41.49,34.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r no fundo da caverna. Uma escolta começará
    .accept 6482 >>Aceite Liberdade para Ruul!
    .target Ruul Snowhoof
step
    .goto 63,40.68,33.21,20,0
    .goto 63,40.29,32.25,20,0
    .goto 63,39.41,31.00,20,0
    .goto 63,38.28,30.68,20,0
    .goto 63,37.39,32.74,30,0
    .goto 63,37.30,34.49,30,0
    .goto 63,38.73,36.86,50,0
    .goto 63,38.35,38.55
    >>Escolte |cRXP_FRIENDLY_Ruul|r para fora de Thistlefur Village
    >>|cFFFCDC00Cuidado! 3|r |cRXP_ENEMY_Thistlefurs|r |cFFFCDC00aparecerão assim que você chegar na metade da caverna e outros 3 fora do portão de Thistlefur Village|r
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target Ruul Snowhoof
step
    .goto 63,39.45,36.62
    >>Elimine os |cRXP_ENEMY_Thistlefur Furbolgs|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    .goto 63,38.00,42.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Goggath|r
    >>|cRXP_WARN_Ele patrulha pela área|r
    .turnin 13943 >>Entregue Espaço para Respirar
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karang Amakkar|r
    .turnin 216 >>Entregue No Meio do Caminho Tinha uma Pedra... e um Pelocardo...
    .target Karang Amakkar
step
    .goto 63,37.98,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pulga|r
    .turnin 13942 >>Entregue Na Horda, a Bomba Monta Você...
    .accept 13944 >>Aceite Baixinho de Cabeça Quente
    .target Tweedle
step
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >>Entregue Patuá Trolls
    .target Mitsuwa
step
    .goto 63,38.47,44.22
    .use 46701 >>|cRXP_WARN_Usar|r |T133711:0|t[Explosivo Improvisado de Pulga] |cRXP_WARN_na carroça quebrada|r
    .complete 13944,1 --1/1 Broken Wagon exploded
step
    .goto 63,38.00,42.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Goggath|r
    >>|cRXP_WARN_Ele patrulha pela área|r
    .turnin 13944 >>Entregue Baixinho de Cabeça Quente
    .accept 13947 >>Aceite Devastranaar!
    .target Captain Goggath
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thraka|r
    .gossipoption 111697 >>Pegue a Mantícora para bombardear Astranaar
    .target Thraka
    .isOnQuest 13947
step
    .goto 63,36.24,51.03
    >>Usar |T133711:0|t[Lançar Explosivo] nos |cRXP_ENEMY_Astranaar Sentinelas|r e nos |cRXP_ENEMY_Astranaar Lançadores|r
    .complete 13947,1 --20/20 Astranaar Sentinels slain
    .mob +Astranaar Sentinel
    .complete 13947,2 --10/10 Astranaar Throwers destroyed
    .mob +Astranaar Thrower
step
    #completewith next
    .cast vehicle,65481 >>vehicle,65481 >>|cRXP_WARN_Usar|r |T136011:0|t[Volte para a Base!] |cRXP_WARN_para voar de volta para Vigia de Grito Infernal|r
    .subzoneskip 4691
step
    .goto 63,37.99,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Goggath|r
    >>|cRXP_WARN_Ele patrulha pela área|r
    .turnin 13947 >>Vá para Devastranaar!
    .accept 13958 >>Aceite Condição Crítica!
    .target Captain Goggath
step
    .goto 63,37.98,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pulga|r
    .accept 13974 >>Aceite Pacote Pequenino do Pulga
    .target Tweedle
step
    #questguide
    .goto 63,38.79,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Broyk|r
    .accept 13879 >>Aceite Pico do Trovão
    .target Broyk
step
    #questguide
    #completewith next
    .goto 63,52.08,56.50,50 >>Vá para Pico do Trovão
step
    #questguide
    .goto 63,52.08,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stikwad|r
    .turnin 13879 >>Vá para Pico do Trovão
    .target Stikwad
step
    #questguide
    .goto 63,52.08,56.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arctanus|r
    .accept 13884 >>Aceite Apague Esse Fogo!
    .target Arctanus
step
    #questguide
    .goto 63,52.31,56.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Núcleo|r
    .accept 13880 >>Aceite Lava - Feitiço Quente
    .target Core
step
    #questguide
    #completewith LavaRagers
    .goto 63,52.08,56.71,0
    +|cRXP_WARN_Se você perder seu|r |cRXP_FRIENDLY_Vagalhão Gelante|r|cRXP_WARN_, fale com|r |cRXP_FRIENDLY_Arctanus|r |cRXP_WARN_novamente para obter outro|r
    .skipgossipid 111688
    .target Arctanus
step
    #questguide
    #completewith next
    >>Mate os |cRXP_ENEMY_Lava Ragers|r
    .complete 13884,1 --10/10 Lava Rager slain
    .mob Lava Rager
step
    #questguide
    #loop
    .goto 1440/1,-1165.50000,2678.50000,0
    .waypoint 1440/1,-1189.80005,2600.30005,30,0
    .waypoint 1440/1,-1165.50000,2678.50000,30,0
    .waypoint 1440/1,-1048.50000,2761.10010,30,0
    .waypoint 1440/1,-1122.09998,2828.30005,30,0
    .waypoint 1440/1,-1247.30005,2860.00000,30,0
    .waypoint 1440/1,-1300.80005,2733.19995,30,0
    .waypoint 1440/1,-1323.30005,2631.60010,30,0
    .use 46352 >>|cRXP_WARN_Use a|r |T237588:0|t[Dádiva da Terra] |cRXP_WARN_em|r |cRXP_PICK_Lava Fissures|r
    .complete 13880,1 --8/8 Lava fissures filled
step
    #questguide
    #label LavaRagers
    #loop
    .goto 1440/1,-1165.50000,2678.50000,0
    .waypoint 1440/1,-1189.80005,2600.30005,50,0
    .waypoint 1440/1,-1165.50000,2678.50000,50,0
    .waypoint 1440/1,-1048.50000,2761.10010,50,0
    .waypoint 1440/1,-1122.09998,2828.30005,50,0
    .waypoint 1440/1,-1247.30005,2860.00000,50,0
    .waypoint 1440/1,-1300.80005,2733.19995,50,0
    .waypoint 1440/1,-1323.30005,2631.60010,50,0
    >>Termine de matar os |cRXP_ENEMY_Lava Ragers|r
    .complete 13884,1 --10/10 Lava Rager slain
    .mob Lava Rager
step
    #questguide
    .goto 63,52.08,56.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arctanus|r
    .turnin 13884 >>Entregue Apague Esse Fogo!
    .target Arctanus
step
    #questguide
    .goto 63,52.32,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Núcleo|r
    .turnin 13880 >>Entregue Lava - Feitiço Quente
    .target Core
step
    #questguide
    .goto 63,52.34,56.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o Vórtice|r
    .accept 13888 >>Aceite Vórtice
    .target The Vortex
step
    #questguide
    .goto 63,52.34,56.79
    .gossipoption 111689 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o Vórtice|r novamente para iniciar o confronto com |cRXP_ENEMY_Lorde Magmathar|r
    .target The Vortex
step
    #questguide
    .goto 63,49.19,39.86
    >>Mate |cRXP_ENEMY_Lorde Magmathar|r
    >>|cRXP_WARN_Usar|r |T252174:0|t[Raio Celeste] |cRXP_WARN_e|r |T236154:0|t[Vingança do Vórtice] |cRXP_WARN_em recarga|r
    >>|cRXP_WARN_Usar|r |T135833:0|t[Extinguir Chamas] |cRXP_WARN_quando afligido por|r |T135817:0|t[Imolação Suprema]
    .complete 13888,1 --1/1 Lord Magmathar slain
    .mob Lord Magmathar
step
    #questguide
    .goto 63,52.09,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stikwad|r
    .turnin 13888 >>Entregue Vórtice
    .target Stikwad
step
    #completewith SilverwindPickups
    .goto 63,49.96,67.25,100 >>Vá para Silverwind Refuge
step
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Senani Coração Trovejante|r
    .turnin 2 >>Entregue Garra de Garraguda
    .accept 13967 >>Aceite Diminuindo o... Rebanho?
    .target Senani Thunderheart
    .isOnQuest 2
step
    #optional
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Senani Coração Trovejante|r
    .accept 13967 >>Aceite Diminuindo o... Rebanho?
    .target Senani Thunderheart
step
    .goto 63,49.29,65.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doma-ventos Soshock|r
    .fp >>Aprenda a Rota de Voo de Silverwind Refuge
    .target Wind Tamer Shoshok
    .subzoneskip 420,1
step
    .goto 63,49.96,67.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Flus|r
    .turnin 13974 >>Entregue Pacote Pequenino do Pulga
    .target Flooz
step
    .goto 63,50.14,67.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o Capitão Tarkan|r
    .accept 25 >>Aceite Deixando a Água Esfriar
    .target Captain Tarkan
step
    .goto 63,49.98,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Flus|r
    .accept 13977 >>Aceite Produção em Massa
    .target Flooz
step
    #label SilverwindPickups
    .goto 1440/1,-1225.90002,2092.80005,0
    .goto 1440/1,-1152.09998,2093.80005,0
    .goto 1440/1,-1225.90002,2092.80005,5,0
    .goto 1440/1,-1152.09998,2093.80005,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Cromula|r
    .accept 26416 >>Aceite Conheça a Lei da Selva
    .target Cromula
step << skip
    .goto 63,49.88,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guarda-de-sangue Aldo Chovepedra|r
    .accept 25945 >>Aceite Estamos Aqui para Fazer Uma Coisa, Talvez Duas...
    .target Blood Guard Aldo Rockrain
    --Stonetalon Breadcrumb
step
    #loop
    .goto 1440/1,-1432.70007,2296.40015,0
    .waypoint 1440/1,-1405.90002,2233.69995,50,0
    .waypoint 1440/1,-1432.70007,2296.40015,50,0
    .waypoint 1440/1,-1569.30005,2259.90015,50,0
    .waypoint 1440/1,-1581.09998,2184.90015,50,0
    .waypoint 1440/1,-1530.30005,2218.90015,50,0
    >>Mate os |cRXP_ENEMY_Furbolgs|r. Saque-os por suas |cRXP_LOOT_Orelhas|r
    .complete 13967,1 --15/15 Furbolg Ear
    .mob Foulweald Totemic
    .mob Foulweald Warrior
    .mob Foulweald Pathfinder
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Senani Coração Trovejante|r
    .turnin 13967 >>Entregue Diminuindo o Rebanho
    .accept 6621 >>Aceite O Rei dos Torpeflora
    .target Senani Thunderheart
step
    #optional
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Senani Coração Trovejante|r
    .turnin 2 >>Entregue Garra de Garraguda
    .turnin 13967 >>Entregue Diminuindo o Rebanho
    .accept 6621 >>Aceite O Rei dos Torpeflora
    .target Senani Thunderheart
    .isOnQuest 2
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Senani Coração Trovejante|r
    .turnin 13967 >>Entregue Diminuindo o Rebanho
    .accept 6621 >>Aceite O Rei dos Torpeflora
    .target Senani Thunderheart
step
    .goto 63,56.37,63.54
    .use 16972 >>|cRXP_WARN_Use o|r |T237588:0|t[Dádiva da Terra] |cRXP_WARN_no Montículo do Totem e proteja-o dos|r |cRXP_ENEMY_Furbolgs|r
    >>Mate o |cRXP_ENEMY_Chefe Murgut|r assim que ele aparecer. Saque-o para obter o |cRXP_PICK_Basket|r para |cRXP_LOOT_Murgut's Totem|r
    .complete 6621,1 --1/1 Murgut's Totem
    .mob Chief Murgut
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Elementais da água|r
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob Befouled Water Elemental
step
    .goto 1440/1,-1079.70007,1994.20007
    >>Mate a |cRXP_ENEMY_Mareante|r. Saqueie-a para obter o |T136222:0|t[|cRXP_LOOT_Befouled Globo de Água|r]. Usar-o para iniciar a missão.
    .complete 25,2 --1/1 Tideress slain
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Aceite O Elemento Conspurcado
    .mob Tideress
step
    #loop
    .goto 1440/1,-978.50000,2019.70007,0
    .waypoint 1440/1,-973.10004,1947.70007,50,0
    .waypoint 1440/1,-978.50000,2019.70007,50,0
    .waypoint 1440/1,-1233.80005,2025.00000,50,0
    .waypoint 1440/1,-1177.59998,1928.59998,50,0
    >>Complete matando Elementais da Água
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob Befouled Water Elemental
step
    .goto 63,46.16,63.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Enguiço|r
    .turnin 13977 >>Entregue Produção em Massa
    .accept 13980 >>Aceite Eles Estão Lá Fora!
    .accept 13983 >>Aceite Construindo Seu Próprio Caixão
    .target Foreman Jinx
step
    #completewith KillAssassins
    >>Mate o |cRXP_ENEMY_Ursangous|r. Saque-o para obter o |T132941:0|t[|cRXP_LOOT_Ursangous's Paw|r] e use-o para iniciar a missão.
    >>|cRXP_WARN_Ele patrulha um pouco pela área|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >>Aceite Ursangous's Paw
    .unitscan Ursangous
    .use 16303
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Ashenvale Assassins|r
    .use 46776 >>|cRXP_WARN_They are stealthed! Usar|r |T133023:0|t[Catimba's Quatro-olhos] |cRXP_WARN_to detect them|r
    .complete 13980,1 --12/12 Ashenvale Assassin slain
    .unitscan Ashenvale Assassin
step
    #loop
    .goto 1440/1,-715.10004,1985.59998,0
    .waypoint 1440/1,-846.40002,1993.70007,40,0
    .waypoint 1440/1,-779.10004,1977.80005,40,0
    .waypoint 1440/1,-715.10004,1985.59998,40,0
    .waypoint 1440/1,-545.20001,2052.00000,40,0
    .waypoint 1440/1,-448.70001,2060.90015,40,0
    .waypoint 1440/1,-589.79999,2194.10010,40,0
    .waypoint 1440/1,-628.10004,2297.69995,40,0
    >>Saque os |cRXP_PICK_Bronze Cogs|r, os |cRXP_PICK_Locking Bolts|r e os |cRXP_PICK_Copper Platings|r do chão
    .complete 13983,1 --3/3 Bronze Cog
    .complete 13983,3 --5/5 Locking Bolt
    .complete 13983,2 --3/3 Copper Plating
step
    #label KillAssassins
    #loop
    .goto 1440/1,-715.10004,1985.59998,0
    .waypoint 1440/1,-846.40002,1993.70007,40,0
    .waypoint 1440/1,-779.10004,1977.80005,40,0
    .waypoint 1440/1,-715.10004,1985.59998,40,0
    .waypoint 1440/1,-545.20001,2052.00000,40,0
    .waypoint 1440/1,-448.70001,2060.90015,40,0
    .waypoint 1440/1,-685.79999,2128.40015,40,0
    .waypoint 1440/1,-726.40002,2037.50000,40,0
    >>Complete matando |cRXP_ENEMY_Ashenvale Assassins|r
    .use 46776 >>|cRXP_WARN_They are stealthed! Usar|r |T133023:0|t[Catimba's Quatro-olhos] |cRXP_WARN_to detect them|r
    .complete 13980,1 --12/12 Ashenvale Assassin slain
    .unitscan Ashenvale Assassin
step
    #loop
    .goto 1440/1,-597.40002,2149.40015,0
    .waypoint 1440/1,-585.00000,2234.40015,30,0
    .waypoint 1440/1,-597.40002,2149.40015,30,0
    .waypoint 1440/1,-653.40002,2121.30005,30,0
    .waypoint 1440/1,-693.90002,2149.00000,30,0
    >>Mate o |cRXP_ENEMY_Ursangous|r. Saque-o para obter o |T132941:0|t[|cRXP_LOOT_Ursangous's Paw|r] e use-o para iniciar a missão.
    >>|cRXP_WARN_Ele patrulha um pouco pela área|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >>Aceite Ursangous's Paw
    .unitscan Ursangous
    .use 16303
step
    .goto 63,46.16,63.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Enguiço|r
    .turnin 13980 >>Entregue Eles Estão Lá Fora!
    .turnin 13983 >>Entregue Construindo Seu Próprio Caixão
    .target Foreman Jinx
step
    .goto 63,49.75,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Senani Coração Trovejante|r
    .turnin 6621 >>Entregue O Rei dos Torpeflora
    .target Senani Thunderheart
step
    .goto 63,50.13,67.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o Capitão Tarkan|r
    .turnin 25 >>Entregue Deixando a Água Esfriar
    .turnin 23 >>Entregue Pata de Ursangous
    .target Captain Tarkan
step
    #completewith next
    .goto 63,60.65,52.69,100 >>Vá para o Retiro Raynewood
step
    .goto 63,60.65,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thagg|r
    .turnin 13958 >>Entregue Condição Crítica!
    .accept 13962 >>Aceite Impasse
    .target Thagg
step
    #completewith next
    >>Mate a |cRXP_ENEMY_Shadumbra|r. Saque-a para obter o |T132225:0|t[|cRXP_LOOT_Shadumbra's Cabeça|r] e use-a para iniciar a missão.
    >>|cRXP_ENEMY_Shadumbra|r patrulha próximo
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >>Aceite Cabeça de Shadumbra
	.unitscan Shadumbra
    .use 16304
step
    .goto 63,62.04,51.41
    >>Mate o |cRXP_ENEMY_Keeper Ornanos|r no andar superior do edifício
    .complete 13962,1 --1/1 Keeper Ordanus slain
    .mob Keeper Ordanus
step
    #loop
    .goto 1440/1,-1825.50000,2708.69995,0
    .waypoint 1440/1,-1867.09998,2752.19995,30,0
    .waypoint 1440/1,-1825.50000,2708.69995,30,0
    .waypoint 1440/1,-1857.90002,2660.80005,30,0
    >>Mate a |cRXP_ENEMY_Shadumbra|r. Saque-a para obter o |T132225:0|t[|cRXP_LOOT_Shadumbra's Cabeça|r] e use-a para iniciar a missão.
    >>|cRXP_ENEMY_Shadumbra|r patrulha ao redor do edifício
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >>Aceite Cabeça de Shadumbra
	.unitscan Shadumbra
    .use 16304
step
    .goto 63,60.67,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thagg|r
    .turnin 13962 >>Entregue Impasse
    .target Thagg
step
    #completewith FlytoSP
    .hs >>Vá para a Vigia do Grito Infernal
    .use 6948
    .subzoneskip 4691
    .cooldown item,6948,>0,1
step
    #completewith FlytoSP
    .subzone 4691 >>Vá para o Posto Vigia do Grito Infernal
    .cooldown item,6948,<0
step
    .goto 63,38.56,42.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Goggath|r
    >>|cRXP_WARN_Ele patrulha pela área|r
    .turnin 24 >>Entregue Cabeça de Shadumbra
    .target Captain Goggath
    .isOnQuest 24
step
    #label FlytoSP
    #completewith next
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thraka|r
    .fly Splintertree Post >>Voe para Posto Machadada
    .target Thraka
step
    .goto 63,74.12,60.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yama|r
    .turnin 6482 >>Entregue Liberdade para Ruul!
    .target Yama Snowhoof
step
    .goto 63,74.19,60.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .accept 1918 >>Aceite O Elemento Conspurcado
    .turnin 1918 >>Entregue O Elemento Conspurcado
    .target Mastok Wrilehiss
    .itemcount 16408,1
step
    #optional
    #label AshenvaleEnd
step
    #optional
    #sticky
    .abandon 2 >>Abandone Garra de Garraguda pois não será mais entregue
step
    #completewith STV1
    .goto 63,73.18,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Vhulgra
    .zoneskip Orgrimmar
step << Rogue Cata/Warlock Cata
    #completewith next
    .goto 1454,45.81,66.88,40 >>Vá para a Fenda da Sombra
step << Shaman Cata/Druid Cata/Paladin Cata/Warrior Cata/Hunter Cata/Priest Cata
    #completewith next
    .goto 1454/1,-4291.89990,1876.70007,50 >>Vá para o Vale da Sabedoria
step << Rogue Cata
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gordul|r
    .trainer >>Treine suas magias de classe
    .target Gordul
step << Rogue Cata
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rekkol|r.
    .vendor >>|cRXP_BUY_Estoque|r |T132273:0|t[Venenos]
    .target Rekkul
step << Shaman Cata
    .goto 1454/1,-4282.60010,1884.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sahi|r
    .trainer >>Treine suas magias de classe
    .target Sahi Cloudsinger
step << Druid Cata
    .goto 1454/1,-4285.10010,1889.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalla|r
    .trainer >>Treine suas magias de classe
    .target Shalla Whiteleaf
step << Mage Cata
    .goto 1454/1,-4125.10010,1690.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uthel'nay|r
    .trainer >>Treine suas magias de classe
    .target Uthel'nay
step << Mage Cata
    .goto 1454/1,-4128.89990,1692.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zirazi, a Mira-Estrelas|r
    .train 3567 >>Aprenda |T135759:0|t[Teleporte: Orgrimmar]
    .train 3563 >>Treine |T135766:0|t[Teleporte: Cidade Baixa]
    .train 3566 >>Aprenda |T135765:0|t[Teleporte: Penhasco do Trovão]
    .train 32272 >>Aprenda |T135761:0|t[Teleporte: Luaprata]
    .target Zirazi the Star-Gazer
    .xp <24,1
step << Mage Cata
    .goto 1454/1,-4382.50000,1673.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Horthus|r
    .collect 17031,20 >>|cRXP_BUY_Compre uma pilha de|r |T134419:0|t[Runa de Teleporte] |cRXP_BUY_dele|r
    .target Horthus
step << Priest Cata
    .goto 1454/1,-4297.60010,1863.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Liwatha|r
    .trainer >>Treine suas magias de classe
    .target Seer Liwatha
step << Warlock Cata
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .trainer >>Treine suas magias de classe
    .target Mirket
step << Paladin Cata
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atohmo|r
    .trainer >>Treine suas magias de classe
    .target Sunwalker Atohmo
step << Hunter Cata
    .goto 1454/1,-4281.00000,1872.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nohi|r
    .trainer >>Treine suas magias de classe
    .target Nohi Plainswalker
step << Warrior Cata
    .goto 1454/1,-4284.00000,1867.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nahu|r
    .trainer >>Treine suas magias de classe
    .target Nahu Ragehoof


    --Next section is flying back only for final Ashenvale quest, not worth xp wise. Nice bow reward for hunters though..

step
    #questguide
    .goto 85,49.21,72.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eitrigg|r dentro da Fortaleza de Grommash
    .turnin 13841 >>Entregue Pedindo Desculpas
    .accept 13842 >>Aceite Redenção da Caveira Medonha
    .target Eitrigg
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 85,53.62,78.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Gryshka|r
    .home >>Defina sua Pedra de Retorno em Orgrimmar
    .target Innkeeper Gryshka
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 85,49.64,59.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Splintertree Post >>Voe para Posto Machadada
    .target Doras
    .zoneskip Ashenvale
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.20,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durak|r dentro da caverna
    .complete 13842,1 --1/1 Durak Persuaded
    .skipgossip
    .target Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.22,56.76
    >>Siga |cRXP_ENEMY_Durak|r até que ele fique hostil, depois mate-o
    .complete 13842,2 --1/1 Durak slain
    .mob Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .hs >>Use sua Pedra de Retorno para ir a Orgrimmar
    .use 6948
    .cooldown item,6948,>2
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 63,73.18,61.58
    .fly Orgrimmar >>Voe para Orgrimmar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .target Vhulgra
    .cooldown item,6948,<0
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 85,49.20,72.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eitrigg|r
    .turnin 13842 >>Entregue Redenção da Caveira Medonha
    .target Eitrigg
    .isQuestTurnedIn 13841
step
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bort|r
    .turnin 26416 >>Entregue Bem-vindo à Selva
    .target Bort
    .isOnQuest 26416
    --STV breadcrumb quest
step
    #label STV1
    #optional
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bort|r
    .accept 26417 >>Aceite Selva do Espinhaço Setentrional: O Império Caído
    .target Bort
    .isQuestTurnedIn 26416
    .isNotOnQuest 28688
    ]])
