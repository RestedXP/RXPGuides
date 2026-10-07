if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 1-6 Mulgore
#version 11
#group Guia RestedXP Forever (H)
#subgroup Guia Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;6-13 Mulgore

step << !Tauren
    #completewith next
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    +|cRXP_WARN_Você selecionou um guia para Taurens. Esta zona NÃO será adequada para você, pois uma das principais sequências de missões é exclusiva para Taurens. Recomenda-se escolher o guia da zona inicial do seu personagem|r
step
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull Vento do Falcão|r
    .accept 747 >>Aceite A caçada começa
    .target Grull Hawkwind
step
    .goto 1412/1,-221.83,-2878.31--c:Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Chefe Vento do Falcão|r
    .accept 752 >>Aceite Uma humilde tarefa
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto 1412/1,-317.90,-2852.63,30,0--c:Mulgore,46.05,75.32
    +|cRXP_WARN_Mate |cRXP_ENEMY_Pinotes|r. Pegue itens deles até somar 10 moedas de cobre em valor de venda (incluindo sua armadura)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaunie Brisa Suave|r
    .vendor >>Venda os lixos
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt Chifre Troante|r
    .train 6673 >>Aprenda |T132333:0|t[Brado de Batalha]
    .target Harutt Thunderhorn
step << Shaman
    .goto 1412/1,-264.47,-2874.20--c:Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela Anda com a Aurora|r
    .train 8017 >>Aprenda |T136086:0|t[Arma Trinca-pedra]
    .target Meela Dawnstrider
step
    #completewith next
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue deles a |cRXP_LOOT_Carne|r e as |cRXP_LOOT_Penas|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto 1412/1,-522.37,-3052.65--c:Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Grande Mãe Vento do Falcão|r
    .turnin 752 >>Entregue Uma humilde tarefa
    .accept 753 >>Aceite Uma humilde tarefa
    .target Greatmother Hawkwind
step
    .goto 1412/1,-532.14,-3059.84--c:Mulgore,50.22,81.37
    >>Pegue a |cRXP_LOOT_Jarra d'Água|r no poço atrás da |cRXP_FRIENDLY_Grande Mãe Vento do Falcão|r
    .complete 753,1 --Water Pitcher (1)
step
    #loop
    .goto 1412/1,-385.20,-3117.38,0--c:Mulgore,47.36,83.05
    .goto 1412/1,-532.65,-2991.68,50,0--c:Mulgore,50.23,79.38
    .goto 1412/1,-573.24,-2967.71,50,0--c:Mulgore,51.02,78.68
    .goto 1412/1,-564.50,-2864.96,50,0--c:Mulgore,50.85,75.68
    .goto 1412/1,-440.17,-2916.33,50,0--c:Mulgore,48.43,77.18
    .goto 1412/1,-371.85,-2894.41,50,0--c:Mulgore,47.10,76.54
    .goto 1412/1,-303.52,-3026.27,50,0--c:Mulgore,45.77,80.39
    .goto 1412/1,-292.73,-3094.77,50,0--c:Mulgore,45.56,82.39
    .goto 1412/1,-385.20,-3117.38,50,0--c:Mulgore,47.36,83.05
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue deles a |cRXP_LOOT_Carne|r e as |cRXP_LOOT_Penas|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull Vento do Falcão|r
    .turnin 747,1 >>Entregue A caçada começa << Druid
    .turnin 747 >>Entregue A caçada começa << !Druid
    .accept 3091 >>Aceite Bilhete << Warrior
    .accept 3092 >>Aceite Bilhete cinzelado << Hunter
    .accept 3093 >>Aceite Bilhete inscrito em runas << Shaman
    .accept 3094 >>Aceite Bilhete verdejante << Druid
    .accept 750 >>Aceite A caçada continua
    .target Grull Hawkwind
step
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaunie Brisa Suave|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Munição Leve] |cRXP_BUY_dela|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >>Venda os lixos
    .target Kawnie Softbreeze
step
    .goto 1412/1,-221.83,-2878.31--c:Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Chefe Vento do Falcão|r
    .turnin 753 >>Entregue Uma humilde tarefa
    .accept 755 >>Aceite Ritos da Mãe Terra
    .target Chief Hawkwind
step << Shaman
    .goto 1412/1,-216.18,-2926.26--c:Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Marjak Lâmina Mordaz|r|cRXP_BUY_. Compre um|r |T135139:0|t[Cajado Curto] |cRXP_BUY_dele|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Marjak Keenblade
step << Shaman
    #optional
    #completewith RitesoftheEarthmother
    +|cRXP_WARN_Equipe o|r |T135139:0|t[Cajado Curto]
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #loop
    .goto 1412/1,-243.41,-3384.87,0--c:Mulgore,44.60,90.86
    .goto 1412/1,-172.00,-3330.07,50,0--c:Mulgore,43.21,89.26
    .goto 1412/1,-245.46,-3409.53,50,0--c:Mulgore,44.64,91.58
    .goto 1412/1,-306.09,-3373.23,50,0--c:Mulgore,45.82,90.52
    .goto 1412/1,-333.31,-3405.08,50,0--c:Mulgore,46.35,91.45
    .goto 1412/1,-420.65,-3418.09,50,0--c:Mulgore,48.05,91.83
    .goto 1412/1,-482.30,-3379.05,50,0--c:Mulgore,49.25,90.69
    .goto 1412/1,-571.18,-3368.09,50,0--c:Mulgore,50.98,90.37
    .goto 1412/1,-474.60,-3338.29,50,0--c:Mulgore,49.10,89.50
    .goto 1412/1,-369.79,-3308.84,50,0--c:Mulgore,47.06,88.64
    .goto 1412/1,-267.04,-3351.65,50,0--c:Mulgore,45.06,89.89
    .goto 1412/1,-243.41,-3384.87,50,0--c:Mulgore,44.60,90.86
    >>Mate |cRXP_ENEMY_Pumas da Montanha|r. Pegue suas |cRXP_LOOT_Pelagens|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto 1412/1,-139.63,-3430.08--c:Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vidente Grislíngua|r
    >>|cRXP_WARN_Isso inicia uma missão com limite de 10 minutos|r
    .turnin 755 >>Entregue Ritos da Mãe Terra
    .accept 757 >>Aceite Rito de força
    .accept 95805 >>Aceite Graça de An'she e Mu'sha
    .target Seer Graytongue
step
    #loop
	.goto 1412/1,-292.73,-3285.20,40,0--c:Mulgore,45.56,87.95
	.goto 1412/1,-362.60,-3281.44,40,0--c:Mulgore,46.92,87.84
	.goto 1412/1,-452.50,-3246.84,40,0--c:Mulgore,48.67,86.83
	.goto 1412/1,-554.23,-3213.96,40,0--c:Mulgore,50.65,85.87
	.goto 1412/1,-572.72,-3139.98,40,0--c:Mulgore,51.01,83.71
	.goto 1412/1,-626.67,-3065.32,40,0--c:Mulgore,52.06,81.53
	.goto 1412/1,-616.90,-2998.53,40,0--c:Mulgore,51.87,79.58
	.goto 1412/1,-606.63,-2923.52,40,0--c:Mulgore,51.67,77.39
	.goto 1412/1,-621.01,-2847.15,40,0--c:Mulgore,51.95,75.16
	.goto 1412/1,-537.27,-2887.22,40,0--c:Mulgore,50.32,76.33
	.goto 1412/1,-461.75,-2869.75,40,0--c:Mulgore,48.85,75.82
	.goto 1412/1,-387.77,-2851.94,40,0--c:Mulgore,47.41,75.30
	.goto 1412/1,-356.43,-2951.61,40,0--c:Mulgore,46.80,78.21
	.goto 1412/1,-307.11,-3026.96,40,0--c:Mulgore,45.84,80.41
	.goto 1412/1,-265.50,-3086.55,40,0--c:Mulgore,45.03,82.15
	.goto 1412/1,-217.21,-3146.15,40,0--c:Mulgore,44.09,83.89
	.goto 1412/1,-207.45,-3221.16,40,0--c:Mulgore,43.90,86.08
    .xp 3+1150 >>Mate inimigos até 1150+/1400 de XP
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_Mate |cRXP_ENEMY_Pinotes|r. Pegue itens deles até somar 2 moedas de prata em valor de venda|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_Mate |cRXP_ENEMY_Pinotes|r. Pegue itens deles até somar 1 moeda de prata em valor de venda|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull Vento do Falcão|r
    .turnin 750 >>Entregue A caçada continua
    .accept 780 >>Aceite Os javaliços
    .target Grull Hawkwind
step
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaunie Brisa Suave|r
    .vendor >>Venda os lixos
    .target Kawnie Softbreeze
step
    .goto 1412/1,-247.00,-2899.21--c:Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valente Pena ao Vento|r
    >>|cRXP_WARN_Ela patrulha a área|r
    .accept 3376 >>Aceite Quebra-presadura!
    .target Brave Windfeather
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt Chifre Troante|r
    .turnin 3091 >>Entregue Bilhete
    .train 100 >>Aprenda |T132337:0|t[Investida]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt Chifre Troante|r
    .turnin 3091 >>Entregue Bilhete
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
step << Hunter
    .goto 1412/1,-225.94,-2865.64--c:Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka Tiro Distante|r
    .turnin 3092 >>Entregue Bilhete cinzelado
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Lanka Farshot
step << Druid
    .goto 1412/1,-268.58,-2873.52--c:Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart Corre com a Névoa|r
    .turnin 3094 >>Entregue Bilhete verdejante
    .train 8921 >>Aprenda |T136096:0|t[Fogo Lunar]
    .target Gart Mistrunner
step << Shaman
    .goto 1412/1,-250.09,-2882.08--c:Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vidente Pena do Corvo|r
    .accept 1519 >>Aceite Clamor da Terra
    .target Seer Ravenfeather
step << Shaman
    .goto 1412/1,-264.47,-2874.20--c:Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela Anda com a Aurora|r
    .turnin 3093 >>Entregue Bilhete inscrito em runas
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .target Meela Dawnstrider
step
    #completewith next
    >>Mate |cRXP_ENEMY_Javaliços|r. Pegue seus |cRXP_LOOT_Flancos|r e |cRXP_LOOT_Focinhos|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    .goto 1412/1,-1005.500,-3372.700
    >>Clique no |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Não deixe o tempo acabar|r
    .turnin 95805 >>Entregue Graça de An'she e Mu'sha
step
    #loop
    .goto 1412/1,-828.57,-3199.92,0--c:Mulgore,55.99,85.46
    .goto 1412/1,-659.55,-2989.63,50,0--c:Mulgore,52.70,79.32
    .goto 1412/1,-736.09,-3007.09,50,0--c:Mulgore,54.19,79.83
    .goto 1412/1,-815.21,-3022.51,50,0--c:Mulgore,55.73,80.28
    .goto 1412/1,-853.74,-3070.11,50,0--c:Mulgore,56.48,81.67
    .goto 1412/1,-810.07,-3145.12,50,0--c:Mulgore,55.63,83.86
    .goto 1412/1,-830.62,-3202.32,50,0--c:Mulgore,56.03,85.53
    .goto 1412/1,-818.81,-3276.98,50,0--c:Mulgore,55.80,87.71
    .goto 1412/1,-866.07,-3330.41,50,0--c:Mulgore,56.72,89.27
    .goto 1412/1,-927.72,-3330.41,50,0--c:Mulgore,57.92,89.27
    .goto 1412/1,-915.91,-3244.79,50,0--c:Mulgore,57.69,86.77
    .goto 1412/1,-896.38,-3197.52,50,0--c:Mulgore,57.31,85.39
    .goto 1412/1,-828.57,-3199.92,50,0--c:Mulgore,55.99,85.46
    >>Mate |cRXP_ENEMY_Javaliços|r. Pegue seus |cRXP_LOOT_Flancos|r e |cRXP_LOOT_Focinhos|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith BristlebackBelts
    .goto 1412/1,-1017.63,-3126.97,30 >>Atravesse a caverna--c:Mulgore,59.67,83.33
step
    #completewith DirtyMap
    >>Mate |cRXP_ENEMY_Javatuscos Costagulha|r. Pegue seus |cRXP_LOOT_Cintos|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>Mate |cRXP_ENEMY_Xamãs Costagulha|r. Pegue seus |cRXP_LOOT_Unguentos|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto 1412/1,-1062.33,-3048.54,35,0--c:Mulgore,60.54,81.04
    .goto 1412/1,-1155.31,-3056.41,35,0--c:Mulgore,62.35,81.27
    .goto 1412/1,-1162.51,-2971.13,35,0--c:Mulgore,62.49,78.78
    .goto 1412/1,-1276.56,-2933.11--c:Mulgore,64.71,77.67
    >>Mate |cRXP_ENEMY_Chefe Presadura Mantospinho|r dentro da cabana grande. Pegue sua |cRXP_LOOT_Cabeça|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #completewith next
    .goto 1412/1,-1201.04,-3105.39,40 >>Entre na caverna--c:Mulgore,63.24,82.70
step
    #label DirtyMap
    .goto 1412/1,-1201.04,-3105.39--c:Mulgore,63.24,82.70
    >>Pegue o |T134269:0|t[|cRXP_LOOT_Mapa Sujo de Terra|r] no chão. Use-o para iniciar a missão
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Aceite Aldeia Narache sob ataque
    .use 4851
step << Shaman
    #completewith next
    >>Mate |cRXP_ENEMY_Xamãs Costagulha|r. Pegue seus |cRXP_LOOT_Unguentos|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #label BristlebackBelts
    #loop
    .goto 1412/1,-1236.49,-2956.06,0--c:Mulgore,63.93,78.34
    .goto 1412/1,-1230.32,-2898.18,40,0--c:Mulgore,63.81,76.65
    .goto 1412/1,-1184.60,-2907.08,40,0--c:Mulgore,62.92,76.91
    .goto 1412/1,-1101.88,-2917.70,40,0--c:Mulgore,61.31,77.22
    .goto 1412/1,-1115.76,-2974.90,40,0--c:Mulgore,61.58,78.89
    .goto 1412/1,-1164.56,-2996.48,40,0--c:Mulgore,62.53,79.52
    .goto 1412/1,-1250.36,-2979.01,40,0--c:Mulgore,64.20,79.01
    .goto 1412/1,-1333.59,-2948.87,40,0--c:Mulgore,65.82,78.13
    .goto 1412/1,-1236.49,-2956.06,40,0--c:Mulgore,63.93,78.34
    >>Mate |cRXP_ENEMY_Javatuscos Costagulha|r. Pegue seus |cRXP_LOOT_Cintos|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #loop
    .goto 1412/1,-1232.89,-3017.71,0--c:Mulgore,63.86,80.14
    .goto 1412/1,-1226.73,-3053.33,40,0--c:Mulgore,63.74,81.18
    .goto 1412/1,-1232.89,-3011.89,40,0--c:Mulgore,63.86,79.97
    .goto 1412/1,-1291.46,-2964.97,40,0--c:Mulgore,65.00,78.60
    .goto 1412/1,-1345.40,-2938.59,40,0--c:Mulgore,66.05,77.83
    .goto 1412/1,-1339.24,-2913.59,40,0--c:Mulgore,65.93,77.10
    .goto 1412/1,-1217.99,-2884.48,40,0--c:Mulgore,63.57,76.25
    .goto 1412/1,-1232.89,-3017.71,40,0--c:Mulgore,63.86,80.14
    >>Mate |cRXP_ENEMY_Xamãs Costagulha|r. Pegue seus |cRXP_LOOT_Unguentos|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #loop
    .goto 1412/1,-1239.06,-3015.66,40,0--c:Mulgore,63.98,80.08
    .goto 1412/1,-1256.01,-2954.35,40,0--c:Mulgore,64.31,78.29
    .goto 1412/1,-1223.13,-2882.08,40,0--c:Mulgore,63.67,76.18
    .goto 1412/1,-1171.75,-2879.34,40,0--c:Mulgore,62.67,76.10
    .goto 1412/1,-1103.43,-2914.62,40,0--c:Mulgore,61.34,77.13
    .goto 1412/1,-1122.95,-2977.98,40,0--c:Mulgore,61.72,78.98
    .goto 1412/1,-1152.23,-3065.32,40,0--c:Mulgore,62.29,81.53
    .goto 1412/1,-1076.71,-3040.66,40,0--c:Mulgore,60.82,80.81
    .goto 1412/1,-1038.69,-3079.02,40,0--c:Mulgore,60.08,81.93
    .goto 1412/1,-1087.50,-3092.38,40,0--c:Mulgore,61.03,82.32
    .goto 1412/1,-1151.20,-3082.44,40,0--c:Mulgore,62.27,82.03
    .xp 5+880 >>Mate inimigos até atingir 880+/2800 de xp << !Shaman
    .xp 5 >>Mate inimigos até atingir o nível 5 << Shaman
step
    #completewith next
    .hs >>Use a Pedra de Regresso para voltar à Aldeia Narache
    .use 6948
step
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull Vento do Falcão|r
    .turnin 780 >>Entregue Os javaliços
    .target Grull Hawkwind
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valente Pena ao Vento|r
    >>|cRXP_WARN_Ela patrulha a área|r
    .turnin 3376 >>Entregue Quebra-presadura!
    .target Brave Windfeather
step
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaunie Brisa Suave|r
    .vendor >>Venda os lixos
    .target Kawnie Softbreeze
step
    .goto 1412/1,-247.00,-2899.21--c:Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valente Pena ao Vento|r
    >>|cRXP_WARN_Ela patrulha a área|r
    .turnin 3376 >>Entregue Quebra-presadura!
    .target Brave Windfeather
step << Shaman
    .goto 1412/1,-250.09,-2882.08--c:Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vidente Pena do Corvo|r
    .turnin 1519 >>Entregue Clamor da Terra
    .accept 1520 >>Aceite Clamor da Terra
    .target Seer Ravenfeather
step
    .goto 1412/1,-221.83,-2878.31--c:Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Chefe Vento do Falcão|r
    .turnin 781 >>Entregue Aldeia Narache sob ataque
    .turnin 757 >>Entregue Rito de força
    .accept 763 >>Aceite Ritos da Mãe Terra
    .accept 96659 >>Aceite O aventureiro
    .target Chief Hawkwind
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto 1412/1,-712.98,-3018.05,30 >>Siga em direção à pedra--c:Mulgore,53.74,80.15
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>|cRXP_WARN_Use a|r |T134743:0|t[Sapta da Terra]
    .use 6635
step << Shaman
    .goto 1412/1,-712.98,-3018.05--c:Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação|r
    .turnin 1520 >>Entregue Clamor da Terra
    .accept 1521 >>Aceite Clamor da Terra
    .target Minor Manifestation of Earth
step << Shaman
    .goto 1412/1,-250.09,-2882.08--c:Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vidente Pena do Corvo|r
    .turnin 1521 >>Entregue Clamor da Terra
    .target Seer Ravenfeather
step << Shaman
    .goto 1412/1,-264.47,-2874.20--c:Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela Anda com a Aurora|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target Meela Dawnstrider
step << Hunter
    .goto 1412/1,-225.94,-2865.64--c:Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka Tiro Distante|r
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    .goto 1412/1,-225.94,-2865.64--c:Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka Tiro Distante|r
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Lanka Farshot
step << Druid
    .goto 1412/1,-268.58,-2873.52--c:Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart Corre com a Névoa|r
    .train 467 >>Aprenda |T136104:0|t[Espinhos]
    .train 5177 >>Aprenda |T136006:0|t[Ira]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    .goto 1412/1,-268.58,-2873.52--c:Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart Corre com a Névoa|r
    .train 5177 >>Aprenda |T136006:0|t[Ira]
    .target Gart Mistrunner
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt Chifre Troante|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .train 6343 >>Aprenda |T136105:0|t[Trovoada]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt Chifre Troante|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .target Harutt Thunderhorn
step
    .goto 1412/1,69.47,-3065.66--c:Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Antur Alqueivado|r
    .accept 1656 >>Aceite Serviço pela metade
    .target Antur Fallow

]])


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 6-12 Mulgore
#version 11
#group Guia RestedXP Forever (H)
#subgroup Guia Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-17 Sertões


step
	#softcore
	#completewith BloodhoofHome
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
	#hardcore
	#completewith BloodhoofHome
    .subzone 222 >>Siga para a Aldeia Casco Sangrento
step
    #hardcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaja Casco Selvagem|r
    .turnin 96659 >>Entregue O aventureiro
    .accept 96605 >>Aceite Vida ao ar livre
    .target Kaga Wildhoof
step
    #hardcore
    .goto 1412/1,-363.000,-2490.700
    >>|cRXP_WARN_Digite /sit perto da fogueira e espere um minuto até você receber o bônus "Benefícios de Acampamento" |r
    .complete 96605,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sente-se (/sit)
    .timer 59,Aguarde o RP
    .complete 96605,2 --|Gain the Boosted Rest buff
step
    #hardcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaja Casco Selvagem|r
    .turnin 96605 >>Entregue Vida ao ar livre
    .accept 96661 >>Aceite Introdução ao Acampamento: Cozinha
    .target Kaga Wildhoof
step
    #softcore
    .goto 1412/1,-408.900,-2179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r 
    .accept 96130 >>Aceite Chakuyak
    .target Yaw Sharpmane
step
    #softcore
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab Casco Trigo|r 
    .accept 99411 >>Aceite Quico Sumiu!
    .target Ahab Wheathoof
step
    #softcore
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur Clamachuva|r
    .accept 766 >>Aceite Mazzranache
    .target Maur Raincaller
step
    #hardcore
    .goto 1412/1,-385.20,-2396.76--c:Mulgore,47.36,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul Garra da Águia|r
    .accept 743 >>Aceite Perigos das Ventofúria
    .target Ruul Eagletalon
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott Ferida Aberta|r
    .vendor >>Venda os itens sem utilidade. Venda sua arma se isso lhe der dinheiro suficiente para comprar uma|T135145:0|t[Bengala] (5p 04c). Você voltará mais tarde se ainda não tiver dinheiro suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott Ferida Aberta|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (7p 1c). Você voltará depois se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kenna Olho de Falcão|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (4p 14c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compre um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_dele|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kenna Olho de Falcão|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Munição Leve] |cRXP_BUY_dele|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target Kennah Hawkseye
step << Shaman/Druid
    #optional
    #completewith Well
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Well
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Well
    +|cRXP_WARN_Equipe o|r |T135611:0|t[Bacamarte Ornado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    .goto 1412/1,-347.70,-2365.25--c:Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    .turnin 1656 >>Entregue Serviço pela metade
    .target Innkeeper Kauth
step
    #label BloodhoofHome
    .goto 1412/1,-347.70,-2365.25--c:Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    .turnin 1656 >>Entregue Serviço pela metade
    .home >>Defina sua Pedra de Regresso para a Aldeia Casco Sangrento
    .target Innkeeper Kauth
    .bindlocation 222
step
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine Casco Sangrento|r
    .turnin 763 >>Entregue Ritos da Mãe Terra
    .accept 745 >>Aceite Dividindo a terra
    .accept 767 >>Aceite Rito de visão
    .accept 746 >>Aceite Escavação enânica
    .target Baine Bloodhoof
step
    .goto 1412/1,-405.75,-2243.32--c:Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarlman Duas Luas|r
    .turnin 767 >>Entregue Rito de visão
    .accept 771 >>Aceite Rito de visão
    .target Zarlman Two-Moons
step
    #hardcore
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur Clamachuva|r
    .accept 766 >>Aceite Mazzranache
    .target Maur Raincaller
step
    #hardcore
    .goto 1412/1,-408.900,-2179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r 
    .accept 96130 >>Aceite Chakuyak
    .target Yaw Sharpmane
step
    #hardcore
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab Casco Trigo|r 
    .accept 99411 >>Aceite Quico Sumiu!
    .target Ahab Wheathoof
step
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
    .accept 761 >>Aceite Caçada ao rapineiro
    .target Harken Windtotem
step
    .goto 1412/1,-496.200,-2347.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang Casco de Pedra|r 
    .accept 99108 >>Aceite Treinamento de pugilato
    .target Krang Stonehoof
step
    .goto 1412/1,-521.600,-2345.400
    >>Fale com um |cRXP_FRIENDLY_Guerreiro Novato|r e derrote-o em combate
    .complete 99108,1 --|3/3 Player Duels won or Novice Warriors defeated
    .target Novice Warrior
    .skipgossip
step
    .goto 1412/1,-496.100,-2348.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang Casco de Pedra|r
    .turnin 99108 >>Entregue Treinamento de pugilato
    .target Krang Stonehoof
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull Chifre Troante|r
    .accept 748 >>Aceite Água venenosa
    .target Mull Thunderhorn
step
    .goto 1412/1,-426.800,-2373.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valente Trilha Selvagem|r
    >>|cRXP_WARN_Ele patrulha um pouco pela área|r
    .accept 99079 >>Aceite Passo-longo Malah
    .target Brave Wildrunner
step
    #softcore
    .goto 1412/1,-385.20,-2396.76--c:Mulgore,47.36,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul Garra da Águia|r
    .accept 743 >>Aceite Perigos das Ventofúria
    .target Ruul Eagletalon
step
    #softcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaja Casco Selvagem|r
    .turnin 96659 >>Entregue O aventureiro
    .accept 96605 >>Aceite Vida ao ar livre
    .target Kaga Wildhoof
step
    #softcore
    .goto 1412/1,-363.000,-2490.700
    >>|cRXP_WARN_Digite /sit perto da fogueira e espere um minuto até você receber o bônus "Benefícios de Acampamento" |r
    .complete 96605,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sente-se (/sit)
    .timer 59,Aguarde o RP
    .complete 96605,2 --|Gain the Boosted Rest buff
step
    #softcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaja Casco Selvagem|r
    .turnin 96605 >>Entregue Vida ao ar livre
    .accept 96661 >>Aceite Introdução ao Acampamento: Cozinha
    .target Kaga Wildhoof
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_Pegue os itens para Mazzranache enquanto faz missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith Ambercorns
    >>Mate os |cRXP_ENEMY_Prairie Wolves|r. Saque-os por suas |cRXP_LOOT_Paws|r
    >>Mate os |cRXP_ENEMY_Adult Plainstriders|r. Saqueie-os pela |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] e pelas |cRXP_LOOT_Garras|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob +Adult Plainstrider
step << !Tauren
    #completewith Ambercorns
    >>Mate os |cRXP_ENEMY_Adult Plainstriders|r. Saqueie-os pela |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r]
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
step
    #label Ambercorns
    #loop
    .goto 1412/1,-539.33,-2550.20,0--c:Mulgore,50.36,66.49
    .goto 1412/1,-454.56,-2479.99,15,0--c:Mulgore,48.71,64.44
    .goto 1412/1,-539.33,-2550.20,15,0--c:Mulgore,50.36,66.49
    .goto 1412/1,-619.47,-2459.78,15,0--c:Mulgore,51.92,63.85
    .goto 1412/1,-578.89,-2706.72,15,0--c:Mulgore,51.13,71.06
    .goto 1412/1,-539.33,-2550.20,15,0--c:Mulgore,50.36,66.49
    >>Pegue |cRXP_PICK_Pinhâmbares|r
    >>|cRXP_WARN_Elas ficam no chão sob as árvores|r
    .complete 771,2 --Ambercorn (2)
step
	#completewith next
	>>Mate |cRXP_ENEMY_Rapineiros|r por toda Mulgore. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #loop
	.goto 1412/1,-562.96,-2556.02,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-562.96,-2556.02,50,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-575.29,-2452.24,50,0--c:Mulgore,51.06,63.63
	.goto 1412/1,-664.17,-2398.47,50,0--c:Mulgore,52.79,62.06
	.goto 1412/1,-725.31,-2385.46,50,0--c:Mulgore,53.98,61.68
	.goto 1412/1,-812.13,-2422.79,50,0--c:Mulgore,55.67,62.77
	.goto 1412/1,-852.72,-2496.77,50,0--c:Mulgore,56.46,64.93
	.goto 1412/1,-830.11,-2594.38,50,0--c:Mulgore,56.02,67.78
	.goto 1412/1,-778.74,-2658.43,50,0--c:Mulgore,55.02,69.65
	.goto 1412/1,-640.54,-2672.81,50,0--c:Mulgore,52.33,70.07
	.goto 1412/1,-541.38,-2678.64,50,0--c:Mulgore,50.40,70.24
	.goto 1412/1,-448.91,-2650.89,50,0--c:Mulgore,48.60,69.43
	.goto 1412/1,-314.31,-2660.14,50,0--c:Mulgore,45.98,69.70
	.goto 1412/1,-447.88,-2580.34,50,0--c:Mulgore,48.58,67.37
    >>Mate os |cRXP_ENEMY_Prairie Wolves|r. Saque-os por suas |cRXP_LOOT_Paws|r
    >>Mate os |cRXP_ENEMY_Adult Plainstriders|r. Saqueie-os pela |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] e pelas |cRXP_LOOT_Garras|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob +Adult Plainstrider
step << !Tauren
    #loop
	.goto 1412/1,-562.96,-2556.02,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-562.96,-2556.02,50,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-575.29,-2452.24,50,0--c:Mulgore,51.06,63.63
	.goto 1412/1,-664.17,-2398.47,50,0--c:Mulgore,52.79,62.06
	.goto 1412/1,-725.31,-2385.46,50,0--c:Mulgore,53.98,61.68
	.goto 1412/1,-812.13,-2422.79,50,0--c:Mulgore,55.67,62.77
	.goto 1412/1,-852.72,-2496.77,50,0--c:Mulgore,56.46,64.93
	.goto 1412/1,-830.11,-2594.38,50,0--c:Mulgore,56.02,67.78
	.goto 1412/1,-778.74,-2658.43,50,0--c:Mulgore,55.02,69.65
	.goto 1412/1,-640.54,-2672.81,50,0--c:Mulgore,52.33,70.07
	.goto 1412/1,-541.38,-2678.64,50,0--c:Mulgore,50.40,70.24
	.goto 1412/1,-448.91,-2650.89,50,0--c:Mulgore,48.60,69.43
	.goto 1412/1,-314.31,-2660.14,50,0--c:Mulgore,45.98,69.70
	.goto 1412/1,-447.88,-2580.34,50,0--c:Mulgore,48.58,67.37
    >>Mate os |cRXP_ENEMY_Adult Plainstriders|r. Saqueie-os pela |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r]
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
step << Tauren
    #completewith next
    .use 33009>>Procure |cRXP_FRIENDLY_Quico|r. Usar a |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre em círculos no sentido horário ao redor de Bloodhoof Village|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull Chifre Troante|r
    .turnin 748 >>Entregue Água venenosa
    .timer 8,Aguarde o RP Água Venenosa
    .accept 754 >>Aceite A purificação de Casco Invernal
    .target Mull Thunderhorn
step << Tauren
    #completewith next
    >>Pegue as |cRXP_PICK_Pedras de Poço|r ao redor do poço
    .complete 771,1 --Well Stone (2)
step << Tauren
    #label Well
    .goto 1412/1,-709.89,-2543.01--c:Mulgore,53.68,66.28
    >>|cRXP_WARN_Use o|r |T135139:0|t[Totem de Purificação Casco Invernal] |cRXP_WARN_no poço|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    #loop
    .goto 1412/1,-729.42,-2547.12,0--c:Mulgore,54.06,66.40
    .goto 1412/1,-692.94,-2525.88,10,0--c:Mulgore,53.35,65.78
    .goto 1412/1,-710.92,-2519.37,10,0--c:Mulgore,53.70,65.59
    .goto 1412/1,-725.31,-2531.36,10,0--c:Mulgore,53.98,65.94
    .goto 1412/1,-729.42,-2547.12,10,0--c:Mulgore,54.06,66.40
    >>Pegue as |cRXP_PICK_Pedras de Poço|r ao redor do poço
    .complete 771,1 --Well Stone (2)
step
    #completewith KyleFed
    .use 33009>>Procure |cRXP_FRIENDLY_Quico|r. Usar a |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre em círculos no sentido horário ao redor de Bloodhoof Village|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 1412/1,-399.07,-2378.95--c:Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jhauna Ventos d'Aveia|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dela|r << Warrior
    .vendor >>Venda os lixos
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull Chifre Troante|r
    .turnin 754 >>Entregue A purificação de Casco Invernal
    .accept 756 >>Aceite Totem de Chifre Troante
    .target Mull Thunderhorn
step << Warrior
    .goto 1412/1,-356.43,-2357.03--c:Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Virra Casco Jovem|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott Ferida Aberta|r
    .vendor >>Venda os itens sem utilidade. Venda sua arma se isso lhe der dinheiro suficiente para comprar uma|T135145:0|t[Bengala] (5p 04c). Você voltará mais tarde se ainda não tiver dinheiro suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott Ferida Aberta|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (7p 1c). Você voltará depois se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kenna Olho de Falcão|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (4p 14c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compre um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_dele|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #optional
    #completewith EnterCave
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith EnterCave
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith EnterCave
    +|cRXP_WARN_Equipe o|r |T135611:0|t[Bacamarte Ornado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    .goto 1412/1,-285.000,-2263.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pyall Passo Tranquilo|r
    .train 2550 >>Aprenda Culinária
    .turnin 96661 >>Entregue Introdução ao Acampamento: Cozinha
    .target Pyall Silentstride
step
    #label Vision
    .goto 1412/1,-405.75,-2243.32--c:Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarlman Duas Luas|r
    >>|cRXP_WARN_Não siga o lobo que aparecer|r
    .turnin 771 >>Entregue Rito de visão
    .accept 772 >>Aceite Rito de visão
    .target Zarlman Two-Moons
step
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab Casco Trigo|r 
    .turnin 99411 >>Entregue Quico Sumiu!
    .target Ahab Wheathoof
    .isQuestComplete 99411
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia Runa Totem|r
    .train 5186 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang Casco de Pedra|r
    .train 284 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm Persegue-céus|r
    .train 8044 >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <8,1
step
    #optional
    #label KyleFed
step
    #loop
    .goto 1412/1,-784.90,-2350.18,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-597.90,-2301.54,50,0--c:Mulgore,51.50,59.23
    .goto 1412/1,-674.96,-2336.14,50,0--c:Mulgore,53.00,60.24
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-904.60,-2371.07,50,0--c:Mulgore,57.47,61.26
    .goto 1412/1,-1016.60,-2410.12,50,0--c:Mulgore,59.65,62.40
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin Espreita Nuvem|r
    >>|cRXP_WARN_Ele patrulha a estrada a leste|r
    .accept 749 >>Aceite A caravana devastada
	.unitscan Morin Cloudstalker
step
    .goto 1412/1,-1066.400,-2325.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malah Vento Longo|r
    .turnin 99079 >>Entregue Passo-longo Malah
    .accept 99081 >>Aceite Grim Tidings
    .target Malah Longwind
step
    #completewith EnterCave
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto faz missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith RavagedCaravan1
    >>Mate |cRXP_ENEMY_Espreitadores|r e |cRXP_ENEMY_Pumas|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
	#completewith EnterCave
	>>Mate |cRXP_ENEMY_Rapineiros|r por toda Mulgore. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
    #label RavagedCaravan1
    .goto 1412/1,-712.98,-1922.74--c:Mulgore,53.74,48.17
    >>Clique no |cRXP_PICK_Caixote de Suprimentos Lacrado|r
    .turnin 749 >>Entregue A Caravana Devastada
    .accept 751 >>Aceite A caravana devastada
step << Tauren
    #loop
    .goto 1412/1,-936.97,-1937.47,0--c:Mulgore,58.1,48.6
    .goto 1412/1,-936.97,-1937.47,60,0--c:Mulgore,58.1,48.6
    .goto 1412/1,-752.02,-1646.34,60,0--c:Mulgore,54.5,40.1
    .goto 1412/1,-335.88,-2009.39,60,0--c:Mulgore,46.4,50.7
    >>Mate |cRXP_ENEMY_Espreitadores|r e |cRXP_ENEMY_Pumas|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    .goto 1412/1,54.800,-2442.200
    >>Mate o |cRXP_ENEMY_Chakuyak|r. Saque-o por sua |cRXP_LOOT_Pelt|r
    .complete 96130,1 --|1/1 Chakuyak's Pelt
    .mob Chakuyak
step
    #label EnterCave
    #completewith LongWalkers
    .goto 1412/1,297.800,-2398.500,30 >>Entre na caverna
step
    #completewith Escort1
    >>Mate |cRXP_ENEMY_Coureiros Jubalba|r, |cRXP_ENEMY_Esfoladores Jubalba|r e |cRXP_ENEMY_Larápios Jubalba|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    #label LongWalkers
    .goto 1412/1,297.800,-2398.500,20,0
    .goto 1412/1,395.800,-2339.300,20,0
    .goto 1412/1,442.300,-2439.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Perith Casco Feroz|r
    >>|cRXP_WARN_Isso inicia uma missão de escolta|r
    .accept 98430 >>Aceite Os Passo-longo
    .target Perith Stormhoof
step
    #label Escort1
    .goto 1412/1,192.500,-2394.000
    >>Escorte |cRXP_FRIENDLY_Perith Casco Feroz|r para fora da caverna
    .complete 98430,1 --escort (manually entered cords where its completed)
    .target Perith Stormhoof
step
    #label Gnolls
    #loop
    .goto 1412/1,229.100,-2403.900,0
    .goto 1412/1,229.100,-2403.900,40,0
    .goto 1412/1,367.900,-2364.200,30,0
    .goto 1412/1,442.300,-2340.600,30,0
    .goto 1412/1,450.000,-2407.900,30,0
    .goto 1412/1,460.000,-2341.200,30,0
    .goto 1412/1,479.700,-2345.900,30,0
    >>Mate |cRXP_ENEMY_Coureiros Jubalba|r, |cRXP_ENEMY_Esfoladores Jubalba|r e |cRXP_ENEMY_Larápios Jubalba|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    #softcore
	#completewith Thunderhorn
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #hardcore
    #completewith Thunderhorn
    .subzone 222 >>Volte à Aldeia Casco Sangrento
step
    #completewith KyleFed2
    .use 33009>>Procure |cRXP_FRIENDLY_Quico|r. Usar a |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre em círculos no sentido horário ao redor de Bloodhoof Village|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 1412/1,-408.700,-2180.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .turnin 96130 >>Entregue Chakuyak
    .target Yaw Sharpmane
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
step
    #label Mazzturnin
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur Clamachuva|r
    .turnin 766 >>Entregue Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott Ferida Aberta|r
    .vendor >>Venda os itens sem utilidade. Venda sua arma se isso lhe der dinheiro suficiente para comprar uma|T135145:0|t[Bengala] (5p 04c). Você voltará mais tarde se ainda não tiver dinheiro suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott Ferida Aberta|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (7p 1c). Você voltará depois se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kenna Olho de Falcão|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (4p 14c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compre um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_dele|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-308.14,-2248.11--c:Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Moorat Passo Longo|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipe o|r |T135611:0|t[Bacamarte Ornado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #completewith Thunderhorn
    .goto 1412/1,-310.20,-2284.42--c:Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harant Braço de Ferro|r
    .vendor >>Venda os lixos e repare seu equipamento
    .target Harant Ironbrace
step
    .goto 1412/1,-392.500,-2318.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valente Trilha Selvagem|r
    >>|cRXP_WARN_Ele patrulha um pouco pela área|r
    .turnin 99081 >>Entregue Grim Tidings
    .accept 99101 >>Aceite Our Ancient Enemy
    .target Brave Wildrunner
step
    .goto 1412/1,-392.900,-2333.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine Casco Sangrento|r
    .turnin 745 >>Entregue Dividindo a terra
    .turnin 99101 >>Entregue Our Ancient Enemy
    .accept 99080 >>Aceite Expulse todos
    .target Baine Bloodhoof
step
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
    .turnin 761 >>Entregue Caçada ao rapineiro
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull Chifre Troante|r
    .turnin 756 >>Entregue Totem de Chifre Troante
    .timer 8,Aguarde o RP de Totem de Chifre Troante
    .accept 758 >>Aceite Purificação de Chifre Troante
    .target Mull Thunderhorn
step
    #optional
    #label Thunderhorn
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm Persegue-céus|r
    .train 8044 >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <8,1
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia Runa Totem|r
    .train 5186 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang Casco de Pedra|r
    .train 284 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <8,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
step
    #label KyleFed2
    .goto 1412/1,-347.70,-2364.91--c:Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele|r << Warrior
    .vendor >>Venda os lixos << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #loop
    .goto 1412/1,-422.300,-2250.300,0
    .goto 1412/1,-422.300,-2250.300,30,0
    .goto 1412/1,-374.900,-2263.800,30,0
    .goto 1412/1,-361.900,-2328.100,30,0
    .goto 1412/1,-438.600,-2387.500,30,0
    .goto 1412/1,-491.400,-2326.900,30,0
    .goto 1412/1,-469.300,-2256.000,30,0
    .use 33009>>Procure |cRXP_FRIENDLY_Quico|r. Usar a |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre em círculos no sentido horário ao redor de Bloodhoof Village|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab Casco Trigo|r 
    .turnin 99411 >>Entregue Quico Sumiu!
    .target Ahab Wheathoof
step
    #completewith Burial
    >>|cRXP_WARN_Termine de coletar os itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>Mate |cRXP_ENEMY_Rapineiros|r por toda Mulgore. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #label ThunderhornCleanse
    .goto 1412/1,-237.76,-1826.50--c:Mulgore,44.49,45.36
    >>|cRXP_WARN_Use o|r |T135139:0|t[Totem de Purificação Chifre Troante] |cRXP_WARN_no poço|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    .goto 1412/1,441.42,-1980.96--c:Mulgore,31.27,49.87
    >>Mate |cRXP_ENEMY_Escavadores de Bael'Dun|r e |cRXP_ENEMY_Avaliadores de Bael'Dun|r. Pegue suas |cRXP_LOOT_Picaretas do Prospector|r
    .use 4702 >>|cRXP_WARN_Quebre as|r |T134707:0|t[Picaretas] |cRXP_WARN_na forja|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Bael'dun Appraisers|r lançam|r |T135929:0|t[Cura Inferior] |cRXP_WARN_(Lançamento à distância: Curam a si mesmos ou um inimigo próximo abaixo de 50% dos pontos de vida por cerca de 75 pontos de vida)|r
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step
    #loop
	.goto 1412/1,417.27,-1653.53,0--c:Mulgore,31.74,40.31
	.goto 1412/1,297.06,-1769.98,50,0--c:Mulgore,34.08,43.71
	.goto 1412/1,353.57,-1744.30,50,0--c:Mulgore,32.98,42.96
	.goto 1412/1,418.30,-1748.41,50,0--c:Mulgore,31.72,43.08
	.goto 1412/1,451.18,-1714.50,50,0--c:Mulgore,31.08,42.09
	.goto 1412/1,449.13,-1672.71,50,0--c:Mulgore,31.12,40.87
	.goto 1412/1,417.27,-1653.53,50,0--c:Mulgore,31.74,40.31
	.goto 1412/1,381.31,-1682.99,50,0--c:Mulgore,32.44,41.17
	.goto 1412/1,323.26,-1687.44,50,0--c:Mulgore,33.57,41.30
	.goto 1412/1,310.41,-1651.82,50,0--c:Mulgore,33.82,40.26
	.goto 1412/1,276.51,-1684.36,50,0--c:Mulgore,34.48,41.21
	.goto 1412/1,275.48,-1721.35,50,0--c:Mulgore,34.50,42.29
    >>Mate |cRXP_ENEMY_Bruxas Eólica Ventofúria|r e |cRXP_ENEMY_Harpias Ventofúria|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #completewith next
    .goto 1412/1,333.53,-1523.73,50 >>Entre na caverna ao norte das Harpias Ventofúria--c:Mulgore,33.37,36.52
step
	#label Burial
    .goto 1412/1,366.93,-1509.00--c:Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidente Trilha Astuta|r
    .turnin 772 >>Entregue Rito de visão
    .accept 773 >>Aceite Rito de sabedoria
    .target Seer Wiserunner
step
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_Você pode descartar|r |T134712:0|t[Água dos Videntes] |cRXP_WARN_das bolsas, pois não precisa mais dela|r
step
    #completewith TBHome
    .goto 1456/1,186.800,-1309.400,30,0
    .goto 1456/1,147.900,-1290.600,30 >>Pegue o elevador para o Penhasco do Trovão
step
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Javaton Totem das Sombras|cRXP_FRIENDLY_
    >>|cRXP_WARN_Ele está|r |T132320:0|t[Furtivo] 
    .accept 76156 >>Aceite À espreita com a Mãe Terra
    .target Boarton Shadetotem
step
    #label TBHome
    .goto 1456/1,38.32,-1300.48--c:Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
step
    #completewith SacredBurial
    .goto 1456/1,186.800,-1309.400,30,0
    .goto 1456/1,147.900,-1290.600,30,0
    .zone Mulgore >>Saia de Penhasco do Trovão
step
    #completewith SacredBurial
    >>|cRXP_WARN_Termine de coletar os itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith SacredBurial
    >>Fique atento a |cRXP_ENEMY_Uivo Fantasma|r. Pegue dele o |T134358:0|t[|cRXP_LOOT_Manto Marcado por Demônios|r]. Use-o para iniciar a missão
    >>|cRXP_WARN_Cuidado, pois |cRXP_ENEMY_Uivo Fantasma|r é difícil por ser nível 12|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Aceite O manto marcado por demônios
    .use 4854
    .unitscan Ghost Howl
step
	#completewith next
	>>Mate |cRXP_ENEMY_Rapineiros|r por toda Mulgore. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #label SacredBurial
    .goto 1412/1,-1026.88,-1150.40--c:Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erudito Totem da Chuva|r
    .accept 833 >>Aceite Sepultamento sagrado
    .target Lorekeeper Raintotem
step
    #completewith next
    >>Mate |cRXP_ENEMY_Traiçoeiros Costagulha|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #label RiteofWisdom
    .goto 1412/1,-1109.08,-992.51--c:Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito Ancestral|r
    .turnin 773 >>Entregue Rito de sabedoria
    .accept 775 >>Aceite Siga para o Penhasco do Trovão
    .target Ancestral Spirit
step
    #loop
	.goto 1412/1,-1026.88,-1150.40,0--c:Mulgore,59.85,25.62
	.goto 1412/1,-1026.88,-1150.40,25,0--c:Mulgore,59.85,25.62
	.goto 1412/1,-1093.15,-1058.27,25,0--c:Mulgore,61.14,22.93
	.goto 1412/1,-1125.52,-1043.20,25,0--c:Mulgore,61.77,22.49
	.goto 1412/1,-1146.58,-1028.13,25,0--c:Mulgore,62.18,22.05
	.goto 1412/1,-1153.77,-988.40,25,0--c:Mulgore,62.32,20.89
	.goto 1412/1,-1117.81,-940.79,25,0--c:Mulgore,61.62,19.50
	.goto 1412/1,-1057.19,-940.79,25,0--c:Mulgore,60.44,19.50
	.goto 1412/1,-1042.80,-994.22,25,0--c:Mulgore,60.16,21.06
	.goto 1412/1,-1055.65,-1025.05,25,0--c:Mulgore,60.41,21.96
	.goto 1412/1,-1092.12,-1056.56,25,0--c:Mulgore,61.12,22.88
    >>Mate |cRXP_ENEMY_Traiçoeiros Costagulha|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto 1412/1,-1026.88,-1150.40--c:Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erudito Totem da Chuva|r
    .turnin 833 >>Entregue Sepultamento sagrado
    .target Lorekeeper Raintotem
step
    #completewith next
    >>|cRXP_WARN_Termine de coletar os itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #loop
	.goto 1412/1,-572.21,-903.12,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	>>Mate |cRXP_ENEMY_Rapineiros|r. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #loop
    .goto 1412/1,-780.79,-1385.36,0--c:Mulgore,55.06,32.48
    .goto 1412/1,-780.79,-1385.36,60,0--c:Mulgore,55.06,32.48
    .goto 1412/1,-718.11,-1670.32,60,0--c:Mulgore,53.84,40.80
    .goto 1412/1,-684.72,-1819.65,60,0--c:Mulgore,53.19,45.16
    .goto 1412/1,-903.58,-1946.37,60,0--c:Mulgore,57.45,48.86
    .goto 1412/1,-985.26,-2080.97,60,0--c:Mulgore,59.04,52.79
    .goto 1412/1,-989.37,-2262.50,60,0--c:Mulgore,59.12,58.09
    .goto 1412/1,-452.50,-1808.69,60,0--c:Mulgore,48.67,44.84
    >>|cRXP_WARN_Termine de coletar os itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .mob +Prairie Wolf Alpha
    .mob +Prairie Stalker
    .mob +Prairie Wolf Alpha
    .complete 766,2 --Flatland Cougar Femur (1)
    .mob +Flatland Cougar
    .complete 766,3 --Plainstrider Scale (1)
    .mob +Elder Plainstrider
    .mob +Adult Plainstrider
    .complete 766,4 --Swoop Gizzard (1)
    .mob +Taloned Swoop
    .mob +Swoop
    .mob +Wiry Swoop
step
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+3020 >>Mate inimigos até atingir 3020+/6500 de xp
    .isQuestComplete 761
    .isQuestComplete 766
step
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+3720 >>Mate inimigos até atingir 3720+/6500 de xp
    .isQuestComplete 761
step
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+3700 >>Mate inimigos até atingir 3700+/6500 de xp
    .isQuestComplete 766
step
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+4400 >>Mate inimigos até atingir 4400+/6500 de xp
step
    #sofcore
    #completewith Bloodhoofturnins1
    .goto 1412/1,-598.900,-1603.700
    .deathskip >> Die at the waypoint arrow (or further south of it) and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #hardcore
    #completewith Bloodhoofturnins1
    .subzone 222 >>Volte à Aldeia Casco Sangrento
step
    .goto 1412/1,-347.19,-2364.91--c:Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    .vendor >>Venda os lixos
    .target Innkeeper Kauth
    .isQuestAvailable 870
step
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn Nuvem Branca|r
    .turnin 770 >>Entregue O manto marcado por demônios
    .target Skorn Whitecloud
    .isOnQuest 770
step
    #optional
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn Nuvem Branca|r
    .accept 861 >>Aceite A senda do caçador
    .target Skorn Whitecloud
    .xp <10,1
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine Casco Sangrento|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Entregue Escavação enânica
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
    .turnin 758 >>Entregue Purificação de Chifre Troante
    .timer 8,Aguarde o RP de Purificação de Chifre Troante
    .accept 759 >>Aceite Totem de Juba Agreste
    .target +Mull Thunderhorn
    .goto 1412/1,-445.83,-2340.93--c:Mulgore,48.54,60.38
    .turnin 761 >>Entregue Caçada ao rapineiro
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r e |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>Entregue Escavação enânica
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
    .turnin 758 >>Entregue Purificação de Chifre Troante
    .timer 8,Aguarde o RP de Purificação de Chifre Troante
    .accept 759 >>Aceite Totem de Juba Agreste
    .target +Mull Thunderhorn
    .goto 1412/1,-445.83,-2340.93--c:Mulgore,48.54,60.38
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r e |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Entregue Escavação enânica
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
    .turnin 761 >>Entregue Caçada ao rapineiro
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    .isQuestComplete 761
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r e |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Entregue Escavação enânica
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
step
    #optional
    #label Bloodhoofturnins1
step
    #completewith AlphaTeeth
    .destroy 4702 >>|cRXP_WARN_Você pode excluir as|r |T134707:0|t[Picaretas de Prospector] |cRXP_WARN_das bolsas, pois não são mais necessárias|r
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kenna Olho de Falcão|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Munição Pesada] |cRXP_BUY_dele|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur Clamachuva|r
    .turnin 766 >>Entregue Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang Casco de Pedra|r
    .trainer >>Treine suas magias de classe
    .accept 1505 >>Aceite Veterano Uzzek
    .target Krang Stonehoof
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm Persegue-céus|r
    .accept 2984 >>Aceite Clamor do Fogo
    .trainer >>Treine suas magias de classe
    .target Narm Skychaser
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .accept 6061 >>Aceite Domando a fera
    .trainer >>Treine suas magias de classe
    .target Yaw Sharpmane
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia Runa Totem|r
    .trainer >>Treine suas magias de classe
    .accept 5928 >>Aceite Atendendo o chamado << Tauren
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia Runa Totem|r
    .train 8924 >>Treine suas magias de classe
    .target Gennia Runetotem
step << Hunter
    #loop
    .goto 1412/1,24.77,-2239.89,0--c:Mulgore,39.38,57.43
    .goto 1412/1,-154.53,-2152.56,50,0--c:Mulgore,42.87,54.88
    .goto 1412/1,-44.59,-2177.22,50,0--c:Mulgore,40.73,55.60
    .goto 1412/1,24.77,-2239.89,50,0--c:Mulgore,39.38,57.43
    .use 15914 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Pinote Adulto|r |cRXP_WARN_na distância máxima|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .turnin 6061 >>Entregue Domando a fera
    .accept 6087 >>Aceite Domando a fera
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto 1412/1,-494.63,-1720.66,0--c:Mulgore,49.49,42.27
    .goto 1412/1,-375.96,-1990.55,50,0--c:Mulgore,47.18,50.15
    .goto 1412/1,-348.73,-1890.20,50,0--c:Mulgore,46.65,47.22
    .goto 1412/1,-427.33,-1823.41,50,0--c:Mulgore,48.18,45.27
    .goto 1412/1,-494.63,-1720.66,50,0--c:Mulgore,49.49,42.27
    .use 15915 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Espreitador-da-pradaria|r |cRXP_WARN_na distância máxima|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .turnin 6087 >>Entregue Domando a fera
    .accept 6088 >>Aceite Domando a fera
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto 1412/1,-379.55,-1688.47,0--c:Mulgore,47.25,41.33
    .goto 1412/1,-379.55,-1688.47,80,0--c:Mulgore,47.25,41.33
    .goto 1412/1,-285.02,-1652.85,80,0--c:Mulgore,45.41,40.29
    .goto 1412/1,-601.49,-1793.62,80,0--c:Mulgore,51.57,44.40
    .use 15916 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Rapineiro|r |cRXP_WARN_no alcance máximo e use-o novamente assim que ele derrubar você|r
    >>|cRXP_WARN_Se falhar e esgotar as cargas do Bastão de Adestramento, abandone a missão, aceite-a novamente e volte|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .turnin 6088 >>Entregue Domando a fera
    .accept 6089 >>Aceite Treinando a fera
    .target Yaw Sharpmane
step
    .goto 1412/1,-399.07,-2378.95--c:Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jhauna Ventos d'Aveia|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dela|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn Nuvem Branca|r
    .accept 861 >>Aceite A senda do caçador
    .target Skorn Whitecloud
step
    #loop
    .goto 1412/1,-784.90,-2350.18,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-597.90,-2301.54,50,0--c:Mulgore,51.50,59.23
    .goto 1412/1,-674.96,-2336.14,50,0--c:Mulgore,53.00,60.24
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-904.60,-2371.07,50,0--c:Mulgore,57.47,61.26
    .goto 1412/1,-1016.60,-2410.12,50,0--c:Mulgore,59.65,62.40
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin Espreita Nuvem|r
    >>|cRXP_WARN_Ele patrulha a estrada a leste|r
    .turnin 751 >>Entregue A Caravana Devastada
    .accept 764 >>Aceite Empreendimentos S.A.
    .accept 765 >>Aceite Supervisor Geringonça
	.unitscan Morin Cloudstalker
step
    #completewith AlphaTeeth
    >>Mate |cRXP_ENEMY_Predadores das Estepes|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step << Hunter
    #loop
    .goto 1412/1,-1360.30,-2568.01,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1403.97,-2457.38,50,0--c:Mulgore,67.19,63.78
    .goto 1412/1,-1360.30,-2568.01,50,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1232.89,-2544.03,50,0--c:Mulgore,63.86,66.31
    .goto 1412/1,-1127.57,-2516.98,50,0--c:Mulgore,61.81,65.52
    .goto 1412/1,-1117.30,-2373.13,50,0--c:Mulgore,61.61,61.32
    .goto 1412/1,-1218.51,-2345.38,50,0--c:Mulgore,63.58,60.51
    .goto 1412/1,-1320.23,-2306.34,50,0--c:Mulgore,65.56,59.37
    .goto 1412/1,-1426.06,-2295.72,50,0--c:Mulgore,67.62,59.06
    .cast 1515 >>Dome um |cRXP_ENEMY_Lobo-da-pradaria Alfa|r
    >>|cRXP_WARN_Isso permitirá aprender|r |T132278:0|t[Morder Grau 2]
    .mob Prairie Wolf Alpha
step << Tauren
    #completewith Centaurs
    >>Mate |cRXP_ENEMY_Lobos-da-pradaria Alfa|r na área. Pegue seus |cRXP_LOOT_Dentes|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step
    #completewith next
    >>Mate |cRXP_ENEMY_Vanguardeiros Galath|r e |cRXP_ENEMY_Centauros Galath|r
    .complete 99080,2 --|4/4 Galak Outrunner slain
    .mob +Galak Outrunner
    .complete 99080,1 --|6/6 Galak Centaur slain
    .mob +Galak Centaur
step
    .goto 1412/1,-1246.100,-2181.700
    >>Mate |cRXP_ENEMY_Herak, o Pilhador|r. Pegue sua |cRXP_LOOT_Cabeça|r
    .complete 99080,3 --|1/1 Herak's Head
    .mob Herak the Pillager
step
    #label Centaurs
    #loop
    .goto 1412/1,-1248.700,-2265.300,0
    .goto 1412/1,-1248.700,-2265.300,50,0
    .goto 1412/1,-1394.500,-2316.500,50,0
    .goto 1412/1,-1188.000,-2216.400,50,0
    >>Mate |cRXP_ENEMY_Vanguardeiros Galath|r e |cRXP_ENEMY_Centauros Galath|r
    .complete 99080,2 --|4/4 Galak Outrunner slain
    .mob +Galak Outrunner
    .complete 99080,1 --|6/6 Galak Centaur slain
    .mob +Galak Centaur
step << Tauren
    #label AlphaTeeth
    #loop
    .goto 1412/1,-1360.30,-2568.01,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1403.97,-2457.38,50,0--c:Mulgore,67.19,63.78
    .goto 1412/1,-1360.30,-2568.01,50,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1232.89,-2544.03,50,0--c:Mulgore,63.86,66.31
    .goto 1412/1,-1127.57,-2516.98,50,0--c:Mulgore,61.81,65.52
    .goto 1412/1,-1117.30,-2373.13,50,0--c:Mulgore,61.61,61.32
    .goto 1412/1,-1218.51,-2345.38,50,0--c:Mulgore,63.58,60.51
    .goto 1412/1,-1320.23,-2306.34,50,0--c:Mulgore,65.56,59.37
    .goto 1412/1,-1426.06,-2295.72,50,0--c:Mulgore,67.62,59.06
    >>Mate |cRXP_ENEMY_Lobos-da-pradaria Alfa|r na área. Pegue seus |cRXP_LOOT_Dentes|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step
    #completewith Fizsprocket
    .goto 1412/1,-1112.16,-1892.60,20 >>Vá à Mina da Empreendimentos S.A.--c:Mulgore,61.51,47.29
step
    #completewith next
    >>Mate |cRXP_ENEMY_Trabalhadores da Empreendimentos S.A.|r e |cRXP_ENEMY_Supervisores da Empreendimentos S.A.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #completewith VentureCos
    >>Abra os |cRXP_PICK_Suprimentos de Demolição|r dentro da mina e do lado de fora, na outra saída. Pegue neles as |cRXP_LOOT_Cargas de Mineração de Cequatrum|r
    >>|cRXP_WARN_Fique nos níveis superiores da caverna se possível|r
    .complete 76156,1 --|5/5 Seaforium Mining Charge
step
    .goto 1412/1,-1288.89,-1756.97--c:Mulgore,64.95,43.33
    >>Mate |cRXP_ENEMY_Supervisor Geringonça|r. Pegue sua |cRXP_LOOT_Prancheta|r e |T134332:0|t[|cRXP_LOOT_Planos de Expansão de Mulgore|r]
    >>|cRXP_WARN_Use|r |T134332:0|t[|cRXP_LOOT_Planos de Expansão de Mulgore|r] |cRXP_WARN_para iniciar a missão|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .collect 281031,1,98424 --Mulgore Expansion Plans (x1)
    .accept 98424 >>Aceite Anotações do Geringonça
    .mob Supervisor Fizsprocket
step
    .goto 1412/1,-1128.700,-1674.600
    >>Pegue os |cRXP_PICK_Documentos|r no chão
    .complete 98424,1 --|1/1 Shredder Operation Instructions
step
    .goto 1412/1,-1315.800,-1672.100
    >>Pegue os |cRXP_PICK_Documentos|r no chão
    .complete 98424,2 --|1/1 Barrens Operations Best Practices
step
    #label Fizsprocket
    .goto 1412/1,-1153.900,-1637.800
    >>Pegue os |cRXP_PICK_Documentos|r no chão
    .complete 98424,3 --|1/1 One "Gerenzo", of Stonetalon
step
    #label VentureCos
    #loop
	.goto 1412/1,-1103.94,-1901.50,0--c:Mulgore,61.35,47.55
	.goto 1412/1,-1103.94,-1901.50,25,0--c:Mulgore,61.35,47.55
	.goto 1412/1,-1039.72,-1911.44,25,0--c:Mulgore,60.10,47.84
	.goto 1412/1,-1008.90,-1924.11,25,0--c:Mulgore,59.50,48.21
	.goto 1412/1,-1018.14,-1946.03,25,0--c:Mulgore,59.68,48.85
	.goto 1412/1,-1041.78,-1955.96,25,0--c:Mulgore,60.14,49.14
	.goto 1412/1,-1137.85,-1942.26,25,0--c:Mulgore,62.01,48.74
	.goto 1412/1,-1131.68,-1911.44,25,0--c:Mulgore,61.89,47.84
    >>Mate |cRXP_ENEMY_Trabalhadores da Empreendimentos S.A.|r e |cRXP_ENEMY_Supervisores da Empreendimentos S.A.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #loop
    .goto Mulgore,63.77,43.97,0
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Abra os |cRXP_PICK_Suprimentos de Demolição|r dentro da mina e do lado de fora, na outra saída. Pegue neles as |cRXP_LOOT_Cargas de Mineração de Cequatrum|r
    >>|cRXP_WARN_Fique nos níveis superiores da caverna se possível|r
    .complete 76156,1 --Seaforium Mining Charge (5)
step
    #loop
    .goto 1412/1,-784.90,-2350.18,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-597.90,-2301.54,50,0--c:Mulgore,51.50,59.23
    .goto 1412/1,-674.96,-2336.14,50,0--c:Mulgore,53.00,60.24
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-904.60,-2371.07,50,0--c:Mulgore,57.47,61.26
    .goto 1412/1,-1016.60,-2410.12,50,0--c:Mulgore,59.65,62.40
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin Espreita Nuvem|r
    >>|cRXP_WARN_Ele patrulha a estrada a leste|r
    .turnin 764 >>Entregue Empreendimentos S.A.
    .turnin 765 >>Entregue Supervisor Geringonça
    .turnin 98424 >>Entregue Anotações do Geringonça
	.unitscan Morin Cloudstalker
step << skip -- Tauren
    #softcore
	#completewith Thunderhorn2
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Tauren
    --#hardcore
    #completewith Thunderhorn2
    .subzone 222 >>Siga para a Aldeia Casco Sangrento
step
    .goto 1412/1,-393.100,-2333.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine Casco Sangrento|r
    .turnin 99080 >>Entregue Expulse todos
    .accept 99082 >>Aceite O Grande Chefe
    .target Baine Bloodhoof
step << Tauren
    #label Thunderhorn2
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull Chifre Troante|r
    .turnin 759 >>Entregue Totem de Juba Agreste
    .accept 760 >>Aceite Purificação de Juba Agreste
    .target Mull Thunderhorn
step << !Druid
    #completewith ExitTB2
    .hs >>Use a Pedra de Regresso para voltar ao Penhasco do Trovão
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Druid
    #completewith ExitTB2
    .zone Thunder Bluff >>Siga para o Penhasco do Trovão
step
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele está|r |T132320:0|t[Furtivo] 
    .turnin 76156 >>Entregue À espreita com a Mãe Terra
    .accept 76160 >>Aceite À espreita com a Mãe Terra
    .target Boarton Shadetotem
step << Hunter
    .goto 1456/1,-123.15,-1412.93--c:Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor Casco de Pedra|r
    .turnin 861 >>Entregue A senda do caçador
    .accept 860 >>Aceite Sergra Espinhonegro
    .target Melor Stonehoof
    .isQuestComplete 861
step << Hunter
    .goto 1456/1,-123.15,-1412.93--c:Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor Casco de Pedra|r
    .accept 860 >>Aceite Sergra Espinhonegro
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step << Hunter
	.goto 1456/1,-82.45,-1472.07--c:Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holto Chifre Troante|r
	.turnin 6089 >>Entregue Treinando a fera
    .target Holt Thunderhorn
step << Hunter
    .goto 1456/1,-47.79,-1435.06--c:Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa Chifre Troante|r
    .train 24547 >>Treine os feitiços do seu ajudante
    .target Hesuwa Thunderhorn
step << Hunter
    #completewith ReturntoJahan
    +|cRXP_WARN_Arraste|r |T132162:0|t[Treinamento de Feras] |cRXP_WARN_para suas barras de ações. Ensine habilidades ao seu ajudante|r
step << Shaman/Druid
    .goto 1456/1,89.46,-1286.50--c:Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Aprenda a usar Maças de Duas Mãos
    .target Ansekhwa
    .money <0.100
step << Hunter
    .goto 1456/1,89.46,-1286.50--c:Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Aprenda a usar Báculos
    .target Ansekhwa
    .money <0.100
step
    .goto 1456/1,122.13,-1263.32--c:Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn Garra de Águia|r
    .accept 744 >>Aceite Os preparativos da cerimônia
    .target Eyahn Eagletalon
step
    #optional
    .goto 1456/1,-109.58,-1209.75--c:Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caerne Casco Sangrento|r
    .turnin 775 >>Entregue Siga para o Penhasco do Trovão
    .accept 776 >>Aceite Ritos da Mãe Terra
    .turnin 99082 >>Entregue O Grande Chefe
    .turnin 98430 >>Entregue Os Passo-longo
    .target Cairne Bloodhoof
    .isQuestComplete 99082
step
    .goto 1456/1,-109.58,-1209.75--c:Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caerne Casco Sangrento|r
    .turnin 775 >>Entregue Siga para o Penhasco do Trovão
    .accept 776 >>Aceite Ritos da Mãe Terra
    .turnin 98430 >>Entregue Os Passo-longo
    .target Cairne Bloodhoof
step << Tauren Druid
    .goto 1456/1,-298.50,-1049.01--c:Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r
    .accept 886 >>Aceite Oásis nos Sertões
    .target Arch Druid Hamuul Runetotem
step << Tauren Druid
    #completewith next
    .goto 1456/1,-230.66,-1059.79,80 >>Vá ao Platô dos Anciãos--c:Thunder Bluff,71.60,30.15
step << Tauren Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem|r
    .goto 1456/1,-283.89,-1039.96--c:Thunder Bluff,76.7,27.3
    .turnin 5928 >>Entregue Atendendo o chamado
    .accept 5922 >>Aceite Clareira da Lua
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
    .isOnQuest 5928
step << Tauren Druid
    .goto 1456/1,-283.89,-1039.96--c:Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem|r
    .accept 5922 >>Aceite Clareira da Lua
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
step << Tauren Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Lance |r|T135758:0|t[Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94--c:Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 5922 >>Entregue Clareira da Lua
    .accept 5930 >>Aceite Espírito do Grande Urso
    .target Dendrite Starblaze
step << Tauren Druid
    .goto 1450/1,-2286.12,8068.28--c:Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito do Grande Urso|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
step << Tauren Druid
    #completewith next
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94--c:Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 5930 >>Entregue Espírito do Grande Urso
    .accept 5932 >>Aceite De volta ao Penhasco do Trovão
    .target Dendrite Starblaze
step << Tauren Druid
    #completewith DruidBearForm
    .hs >>Use a Pedra de Regresso para voltar ao Penhasco do Trovão
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Tauren Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.46--c:Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bonthen Vento do Prado|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Tauren Druid
    #label DruidBearForm
    .goto 1456/1,-283.89,-1039.96--c:Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem|r
    .turnin 5932 >>Entregue De volta ao Penhasco do Trovão
    .accept 6002 >>Aceite Corpo e coração
    .target Turak Runetotem
step
    #ah
    .goto 1456/1,52.93,-1150.53--c:Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_Isso desbloqueia uma missão fácil. Se já tiver 2 profissões, pule esta etapa|r
    .train 8613 >>Aprenda |T134366:0|t[Esfolamento]
    .target Mooranta
step
    #ah
    .goto 1456/1,53.35,-1161.18--c:Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veren Passo Alto|r
    .accept 768 >>Aceite Em busca de couro
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #ah
    .goto 1456/1,95.10,-1210.23--c:Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre 12 unidades de|r |T134252:0|t[Couro Leve] |cRXP_BUY_da Casa de Leilões|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #ah
    .goto 1456/1,53.35,-1161.18--c:Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veren Passo Alto|r
    .turnin 768 >>Entregue Em busca de couro
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto 1456/1,-29.42,-1182.54--c:Thunder Bluff,52.32,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kara Corre com a Névoa|r
    >>|cRXP_BUY_Compre|r |T133972:0|t[Carne-seca Dura] |cRXP_BUY_dela para alimentar seu ajudante|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step
    #label ExitTB2
    #completewith Harpies
    .goto 1456/1,186.800,-1309.400,30,0
    .goto 1456/1,147.900,-1290.600,30,0
    .zone Mulgore >>Saia de Penhasco do Trovão
step
    #completewith ThunderBluff2
    >>Fique atento a |cRXP_ENEMY_Uivo Fantasma|r. Pegue dele o |T134358:0|t[|cRXP_LOOT_Manto Marcado por Demônios|r]. Use-o para iniciar a missão
    >>|cRXP_WARN_Pule esta etapa se não encontrá-lo|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Aceite O manto marcado por demônios
    .use 4854
    .unitscan Ghost Howl
step
    #completewith Arrachea
    >>Mate |cRXP_ENEMY_Predadores das Estepes|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step
    #completewith next
    >>Pegue os |cRXP_PICK_Cones de Fúria dos Ventos|r no chão
    >>|cRXP_WARN_Eles ficam principalmente sob ou perto das árvores|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
step
    #loop
    .goto 1412/1,419.33,-1238.77,0--c:Mulgore,31.7,28.2
    .goto 1412/1,496.39,-940.79,0--c:Mulgore,30.2,19.5
    .goto 1412/1,419.33,-1238.77,40,0--c:Mulgore,31.7,28.2
    .goto 1412/1,496.39,-940.79,40,0--c:Mulgore,30.2,19.5
    >>Mate |cRXP_ENEMY_Feiticeiras Ventofúria|r. Pegue suas |cRXP_LOOT_Penas Lazúli|r
    >>Mate |cRXP_ENEMY_Matriarcas Ventofúria|r. Pegue suas |cRXP_LOOT_Penas Bronze|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
step
    #label Harpies
    #loop
    .goto 1412/1,460.000,-1055.700,0
    .goto 1412/1,517.800,-1163.900,40,0
    .goto 1412/1,530.000,-1074.100,40,0
    .goto 1412/1,593.200,-1003.200,40,0
    .goto 1412/1,460.000,-1055.700,40,0
    >>Pegue os |cRXP_PICK_Cones de Fúria dos Ventos|r no chão
    >>|cRXP_WARN_Eles ficam principalmente sob ou perto das árvores|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
step << Tauren
    .goto 1412/1,-135.52,-745.57--c:Mulgore,42.5,13.8
    .use 5416 >>|cRXP_WARN_Use o|r |T135139:0|t[Totem de Purificação Juba Agreste] |cRXP_WARN_no poço|r
    .complete 760,1 --Cleanse the Wildmane Well (1)
step
    #label Arrachea
    #loop
    .goto 1412/1,-654.41,-690.77,0--c:Mulgore,52.6,12.2
    .goto 1412/1,-654.41,-690.77,90,0--c:Mulgore,52.6,12.2
    .goto 1412/1,-448.91,-824.34,90,0--c:Mulgore,48.6,16.1
    .goto 1412/1,-613.31,-1430.57,90,0--c:Mulgore,51.8,33.8
    .goto 1412/1,-839.36,-1399.74,90,0--c:Mulgore,56.2,32.9
    >>Mate |cRXP_ENEMY_Arra'chea|r (kodo preto grande). Pegue seu |cRXP_LOOT_Chifre|r
    >>|cRXP_WARN_Ele patrulha o norte de Mulgore no sentido horário|r
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'chea
step
    #label ProwlerClaws
    #loop
    .goto 1412/1,-201.28,-648.30,0--c:Mulgore,43.78,10.96
    .goto 1412/1,-201.28,-648.30,90,0--c:Mulgore,43.78,10.96
    .goto 1412/1,12.44,-730.15,90,0--c:Mulgore,39.62,13.35
    .goto 1412/1,140.88,-849.69,90,0--c:Mulgore,37.12,16.84
    .goto 1412/1,-241.87,-868.52,90,0--c:Mulgore,44.57,17.39
    .goto 1412/1,-454.05,-987.03,90,0--c:Mulgore,48.70,20.85
    >>Mate |cRXP_ENEMY_Predadores das Estepes|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step
    #label ThunderBluff2
    #completewith next
    .zone Thunder Bluff >>Volte ao Penhasco do Trovão
step
    #label RFCPickups1
    .goto 1456/1,-218.13,-1055.97--c:Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >>Aceite Em busca da algibeira perdida
    .accept 5723 >>Aceite Testando a força do inimigo
    .target Rahauro
    .dungeon RFC
step
    .goto 1456/1,-109.58,-1209.75--c:Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caerne Casco Sangrento|r
    .turnin 776 >>Entregue Ritos da Mãe Terra
    .target Cairne Bloodhoof
    .isQuestComplete 776
step
    .goto 1456/1,122.13,-1263.32--c:Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn Garra de Águia|r
    .turnin 744 >>Entregue Os preparativos da cerimônia
    .target Eyahn Eagletalon
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele está|r |T132320:0|t[Furtivo]
    .turnin 76160 >>Entregue À espreita com a Mãe Terra
    .accept 76240 >>Aceite À espreita com a Mãe Terra
    .target Boarton Shadetotem
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre um|r |T133894:0|t[Peixinho Brilhante Cru] |cRXP_BUY_na Casa de Leilões|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
step
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Vá até |cRXP_FRIENDLY_Sewa Corre com a Névoa|r
step
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kah Corre com a Névoa|r
    .train 7734 >>Aprenda |T136245:0|t[Pesca]
    .target Kah Mistrunner
step
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sewa Corre com a Névoa|r
    >>|cRXP_BUY_Compre uma|r |T132932:0|t[Vara de Pescar] |cRXP_BUY_e uma|r |T134335:0|t[Miçanga Brilhosa] |cRXP_BUY_dela|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
step
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_Equipe a|r |T132932:0|t[Vara de Pescar]
    .use 6256
step
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_Aplique a|r |T134335:0|t[Miçanga Brilhosa] |cRXP_WARN_na sua|r |T132932:0|t[Vara de Pescar]
    .use 6529
step
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Pesque no lago até pegar um |T133894:0|t[|cRXP_LOOT_Peixinho Brilhante Cru|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
step
    >>|cRXP_WARN_Use o|r |T132147:0|t[Jogo de Facas] |cRXP_WARN_para criar|r |T134007:0|t[Pedaços de Peixe]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele está|r |T132320:0|t[Furtivo]
    .turnin 76240 >>Entregue À espreita com a Mãe Terra
    .target Boarton Shadetotem
step
    .goto 1456/1,-123.15,-1412.93--c:Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor Casco de Pedra|r
    .turnin 861 >>Entregue A senda do caçador
    .accept 860 >>Aceite Sergra Espinhonegro
    .target Melor Stonehoof
step
    #completewith next
    .goto 1456/1,-141.400,-1432.700,10,0
    .goto 1456/1,-161.300,-1454.200,10,0
    .zone Mulgore >>Pule do Platô dos Caçadores para a pequena colina para sair do Penhasco do Trovão
    >>|cRXP_WARN_Siga a seta com precisão para não morrer. Recupere um pouco de vida antes do segundo salto|r
step
    #completewith WildManeTurnIn
    .subzone 222 >>Vá à Aldeia Casco Sangrento
step
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn Nuvem Branca|r
    .turnin 770 >>Entregue O manto marcado por demônios
    .target Skorn Whitecloud
    .isOnQuest 770
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull Chifre Troante|r
    .turnin 760 >>Entregue Purificação de Juba Agreste
    .target Mull Thunderhorn
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm Persegue-céus|r
    .train 547 >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <12,1
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia Runa Totem|r
    .train 8936 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang Casco de Pedra|r
    .train 7384 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .train 14281 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <12,1
step
    #optional
    #label WildManeTurnIn
step
    #completewith CampTFP
    .goto 1412/1,-1527.78,-2341.62,100,0--c:Mulgore,69.6,60.4
    .zone The Barrens >>Viaje para os Sertões
step << Tauren Druid
    .goto 1413/1,-1633.08,-2499.35--c:The Barrens,42.00,60.86
    .use 15710 >>|cRXP_WARN_Use o|r |T132857:0|t[Pó Lunar Cenariano] |cRXP_WARN_na|r |cRXP_PICK_Pedra Luniscante|r
    >>Mate |cRXP_ENEMY_Lunagarra|r quando aparecer. Depois, fale com o |cRXP_FRIENDLY_Espírito de Lunagarra|r
    >>|cRXP_WARN_Cuidado! |cRXP_ENEMY_Lunagarra|r lança|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    >>|cRXP_WARN_Fique longe dos|r |cRXP_ENEMY_Cabeças-de-trovão|r |cRXP_WARN_na área|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
    .skipgossip
step << !Druid
    .goto 1413/1,-1881.35,-2383.82--c:The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fp Camp Taurajo >>Obtenha a rota de voo do Acampamento Taurajo
	.target Omusa Thunderhorn
    .isQuestAvailable 848
step << Druid
    .goto 1413/1,-1881.35,-2383.82--c:The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fp Camp Taurajo >>Obtenha a rota de voo do Acampamento Taurajo
    .fly Thunder Bluff >>Voe para Penhasco do Trovão << Tauren
    .target Omusa Thunderhorn
    .isQuestAvailable 848
step << Tauren Druid
    #completewith next
    .goto 1456/1,-230.66,-1059.79,80 >>Siga para o Platô dos Anciãos--c:Thunder Bluff,71.60,30.15
step << Tauren Druid
    .goto 1456/1,-281.56,-1039.41--c:Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem|r
    .turnin 6002 >>Entregue Corpo e Coração
    .target Turak Runetotem
step << Tauren Druid
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para o Acampamento Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
step
    #optional
    #label CampTFP
step << Tauren
    .goto 1413/1,-1926.95,-2346.66--c:The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirge Chifre Austero|r
    .accept 854 >>Aceite Jornada para a Encruzilhada
    .target Kirge Sternhorn
step
    #completewith next
    .subzone 380 >>Vá ao norte em direção à Encruzilhada
step
    .goto 1413/1,-2672.76,-544.77--c:The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 886 >>Entregue Oásis nos Sertões << Tauren Druid
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step
    .goto 1413/1,-2669.72,-481.94--c:The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 860 >>Entregue Sergra Espinhonegro
    .accept 844 >>Aceite A ameaça pinote
    .target Sergra Darkthorn
step
    .goto 1413/1,-2595.75,-473.15--c:The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 854 >>Entregue Jornada para a Encruzilhada << Tauren
    .accept 871 >>Aceite Cortando o ataque pela raiz
    .accept 5041 >>Aceite Suprimentos para a Encruzilhada
    .target Thork
step
    .goto 1413/1,-2607.91,-475.18--c:The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .accept 867 >>Aceite As harpias bandoleiras
    .target Darsok Swiftdagger
step
    .goto 1413/1,-2589.67,-424.51--c:The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Hermógenes|r
    .accept 848 >>Aceite Esporos de Fungos
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .target Apothecary Helbrim
step
    .goto 1413/1,-2566.36,-350.19--c:The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jahan Asa de Falcão|r
    .accept 6361 >>Aceite Um pacote de peles
    .target Jahan Hawkwing
step
    .goto 1413/1,-2595.75,-437.35--c:The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_NÃO voe para lugar nenhum!|r
    .turnin 6361 >>Entregue Um pacote de peles
    .accept 6362 >>Aceite Voo para o Penhasco do Trovão
    .target Devrak
step
    .goto 1413/1,-2639.32,-436.00--c:The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Raptores ladrões
    .target Gazrog
step << skip
    .goto 1413/1,-2645.40,-406.94--c:The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
    .home >>Defina sua Pedra de Regresso em A Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    --Setting HS later, gonna hearth back to TB first after Ratchet pirate section
step << Shaman
    #completewith next
    >>Procure o |cRXP_PICK_Barril Vazio do Chen|r ao lado de |cRXP_FRIENDLY_Kranal Fiss|r. Pegue-o e inicie a missão
    >>|cRXP_WARN_Se não estiver lá, você pode pegá-lo depois|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
    .use 4926
step << Shaman
    .goto 1413/1,-3037.56,264.63--c:The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 2984 >>Entregue Clamor do Fogo
    .accept 1524 >>Aceite Clamor do Fogo
    .target Kranal Fiss
step << Shaman
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0--c:Durotar,36.74,57.78
    .goto 1411/1,-3899.31,-241.45,8,0--c:Durotar,36.63,58.15
    .goto 1411/1,-3899.31,-241.45,8,0--c:Durotar,36.63,58.15
    .goto 1411/1,-3906.71,-270.71,8,0--c:Durotar,36.77,58.98
    .goto 1411/1,-3910.94,-247.45,8,0--c:Durotar,36.85,58.32
    .goto 1411/1,-3931.56,-240.75,8,0--c:Durotar,37.24,58.13
    .goto 1411/1,-3964.35,-242.51,8,0--c:Durotar,37.86,58.18
    .goto 1411/1,-3974.39,-228.76,8,0--c:Durotar,38.05,57.79
    .goto 1411/1,-4020.92,-219.95,8,0--c:Durotar,38.93,57.54
    .goto 1411/1,-4034.67,-232.64,8,0--c:Durotar,39.19,57.90
    .goto 1411/1,-4033.08,-255.91,10 >>Suba pela trilha da montanha até |cRXP_FRIENDLY_Telf Joolam|r--c:Durotar,39.16,58.56
    >>|cRXP_WARN_Tome cuidado para não cair da montanha, pois o caminho é muito estreito. Você pode morrer se cair|r
step << Shaman
    #label CallofFire2
    .goto 1411/1,-3999.24,-268.95--c:Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entregue Clamor do Fogo
    .accept 1525 >>Aceite Clamor do Fogo
    .target Telf Joolam
step << Warrior
    .goto 1413/1,-3598.95,186.93--c:The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Entregue Veterano Uzzek
    .accept 1498 >>Aceite Caminho da defesa
    .target Uzzek
step << Warrior
    #loop
    .goto 1411/1,-4042.60,812.52,0--c:Durotar,39.34,28.25
    .goto 1411/1,-4030.44,724.04,40,0--c:Durotar,39.11,30.76
    .goto 1411/1,-4042.60,812.52,40,0--c:Durotar,39.34,28.25
    .goto 1411/1,-4030.44,875.62,40,0--c:Durotar,39.11,26.46
    .goto 1411/1,-4045.25,925.32,40,0--c:Durotar,39.39,25.05
    .goto 1411/1,-4077.50,960.22,40,0--c:Durotar,40.00,24.06
    .goto 1411/1,-4210.22,952.11,40,0--c:Durotar,42.51,24.29
    .goto 1411/1,-4042.60,812.52,40,0--c:Durotar,39.34,28.25
    >>Mate |cRXP_ENEMY_Pelegos de Relâmpago|r. Pegue suas |cRXP_ENEMY_Escamas|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior
    .goto 1413/1,-3598.95,186.93--c:The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Entregue Caminho da defesa
    .accept 1502 >>Aceite Thun'grim Olhafogo
    .target Uzzek

]])
