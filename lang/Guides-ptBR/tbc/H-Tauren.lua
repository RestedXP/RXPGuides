if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Horde
#name 1-6 Mulgore
#version 7
#subgroup RestedXP Horda 1-30
#defaultfor Tauren
#next 6-10 Mulgore


step << !Tauren
    #completewith next
    .goto Mulgore,44.92,77.12
    +|cRXP_WARN_Você selecionou um guia destinado a Tauren. Esta zona NÃO funcionará bem para você devido à falta de uma das principais cadeias de missões que são reservadas apenas para Tauren. É recomendado que você escolha a mesma zona inicial em que você começa|r
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull|r
    .accept 747 >>Aceite A Caça Começa
    .target Grull Hawkwind
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Chefe Vento do Falcão|r
    .accept 752 >>Aceite Uma Tarefa Humilde
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_Abate |cRXP_ENEMY_Plainstriders|r. Saque-os até ter 10 moedas de cobre em itens vendáveis (incluindo sua armadura)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kawnie|r
    .vendor >>Comerciante Lixo
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target Harutt Thunderhorn
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Trem |T136086:0|t[Arma Trinca-pedra]
    .target Meela Dawnstrider
step
    #completewith next
    >>Abate |cRXP_ENEMY_Plainstriders|r. Saque-os para obter |cRXP_LOOT_Carne|r e |cRXP_LOOT_Peninha|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Grande Mãe Vento do Falcão|r
    .turnin 752 >>Entregue Uma Tarefa Humilde
    .accept 753 >>Aceite Uma Tarefa Humilde
    .target Greatmother Hawkwind
step
    .goto Mulgore,50.22,81.37
    >>Saque o |cRXP_LOOT_Jarro de Água|r no poço atrás de |cRXP_FRIENDLY_Hawkwind|r
    .complete 753,1 --Water Pitcher (1)
step
    #loop
    .goto Mulgore,47.36,83.05,0
    .goto Mulgore,50.23,79.38,50,0
    .goto Mulgore,51.02,78.68,50,0
    .goto Mulgore,50.85,75.68,50,0
    .goto Mulgore,48.43,77.18,50,0
    .goto Mulgore,47.10,76.54,50,0
    .goto Mulgore,45.77,80.39,50,0
    .goto Mulgore,45.56,82.39,50,0
    .goto Mulgore,47.36,83.05,50,0
    >>Abate |cRXP_ENEMY_Plainstriders|r. Saque-os para obter |cRXP_LOOT_Carne|r e |cRXP_LOOT_Peninha|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull|r
    .turnin 747,1 >>Entregue A caçada começa << Druid
    .turnin 747 >>Entregue A caçada começa << !Druid
    .accept 3091 >>Aceite Bilhete << Warrior
    .accept 3092 >>Aceite Bilhete cinzelado << Hunter
    .accept 3093 >>Aceite Bilhete inscrito em runas << Shaman
    .accept 3094 >>Aceite Bilhete Verdejante << Druid
    .accept 750 >>Aceite A caçada continua
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Luz Shots] |cRXP_BUY_dela|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >>Comerciante Lixo
    .target Kawnie Softbreeze
    .isQuestAvailable 750
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Chefe Vento do Falcão|r
    .turnin 753 >>Entregue Uma Tarefa Humilde
    .accept 755 >>Aceite Ritos da Mãe Terra
    .target Chief Hawkwind
step << Shaman
    .goto Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Marjak|r |cRXP_BUY_. Compre um|r |T135139:0|t[Cajado Curto] |cRXP_BUY_dele|r
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
    #completewith next
    >>Mate |cRXP_ENEMY_Pumas da Montanha|r. Pegue suas |cRXP_LOOT_Pelagens|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vidente Grislíngua|r
    >>|cRXP_WARN_Triture inimigos no caminho|r
    .turnin 755 >>Entregue Ritos da Mãe Terra
    .accept 757 >>Aceite Rito de força
    .target Seer Graytongue
step
    #loop
    .goto Mulgore,44.60,90.86,0
    .goto Mulgore,43.21,89.26,50,0
    .goto Mulgore,44.64,91.58,50,0
    .goto Mulgore,45.82,90.52,50,0
    .goto Mulgore,46.35,91.45,50,0
    .goto Mulgore,48.05,91.83,50,0
    .goto Mulgore,49.25,90.69,50,0
    .goto Mulgore,50.98,90.37,50,0
    .goto Mulgore,49.10,89.50,50,0
    .goto Mulgore,47.06,88.64,50,0
    .goto Mulgore,45.06,89.89,50,0
    .goto Mulgore,44.60,90.86,50,0
    >>Mate |cRXP_ENEMY_Pumas da Montanha|r. Pegue suas |cRXP_LOOT_Pelagens|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #xprate <1.5
    #loop
	.goto Mulgore,45.56,87.95,0
	.goto Mulgore,45.56,87.95,60,0
	.goto Mulgore,46.92,87.84,60,0
	.goto Mulgore,48.67,86.83,60,0
	.goto Mulgore,50.65,85.87,60,0
	.goto Mulgore,51.01,83.71,60,0
	.goto Mulgore,52.06,81.53,60,0
	.goto Mulgore,51.87,79.58,60,0
	.goto Mulgore,51.67,77.39,60,0
	.goto Mulgore,51.95,75.16,60,0
	.goto Mulgore,50.32,76.33,60,0
	.goto Mulgore,48.85,75.82,60,0
	.goto Mulgore,47.41,75.30,60,0
	.goto Mulgore,46.80,78.21,60,0
	.goto Mulgore,45.84,80.41,60,0
	.goto Mulgore,45.03,82.15,60,0
	.goto Mulgore,44.09,83.89,60,0
	.goto Mulgore,43.90,86.08,60,0
    .xp 3+1150 >>Triture até 1150+/1400xp
    .mob Plainstrider
step
    #xprate >1.49
    #loop
	.goto Mulgore,45.56,87.95,0
	.goto Mulgore,45.56,87.95,60,0
	.goto Mulgore,46.92,87.84,60,0
	.goto Mulgore,48.67,86.83,60,0
	.goto Mulgore,50.65,85.87,60,0
	.goto Mulgore,51.01,83.71,60,0
	.goto Mulgore,52.06,81.53,60,0
	.goto Mulgore,51.87,79.58,60,0
	.goto Mulgore,51.67,77.39,60,0
	.goto Mulgore,51.95,75.16,60,0
	.goto Mulgore,50.32,76.33,60,0
	.goto Mulgore,48.85,75.82,60,0
	.goto Mulgore,47.41,75.30,60,0
	.goto Mulgore,46.80,78.21,60,0
	.goto Mulgore,45.84,80.41,60,0
	.goto Mulgore,45.03,82.15,60,0
	.goto Mulgore,44.09,83.89,60,0
	.goto Mulgore,43.90,86.08,60,0
    .xp 3+1025 >>Triturar para 1025+/1400xp
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_Triture |cRXP_ENEMY_Plainstriders|r. Saque-os até ter 2 moedas de prata em itens vendáveis|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_Triture |cRXP_ENEMY_Plainstriders|r. Saque-os até ter 1 moeda de prata em itens vendáveis|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull|r
    .turnin 750 >>Entregue A caçada continua
    .accept 780 >>Aceite Os javaliços
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kawnie|r
    .vendor >>Comerciante Lixo
    .target Kawnie Softbreeze
    .isQuestAvailable 3376
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>Aceite Quebra-Presadura!
    .target Brave Windfeather
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Entregue Bilhete Cinzelado
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Lanka Farshot
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Entregue Bilhete Verdejante
    .train 8921 >>Treine |T136096:0|t[Fogo Lunar]
    .target Gart Mistrunner
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ravenfeather|r
    .accept 1519 >>Aceite Clamor da Terra
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Entregue Bilhete Inscrito em Runas
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .target Meela Dawnstrider
step
    #loop
    .goto Mulgore,55.99,85.46,0
    .goto Mulgore,52.70,79.32,50,0
    .goto Mulgore,54.19,79.83,50,0
    .goto Mulgore,55.73,80.28,50,0
    .goto Mulgore,56.48,81.67,50,0
    .goto Mulgore,55.63,83.86,50,0
    .goto Mulgore,56.03,85.53,50,0
    .goto Mulgore,55.80,87.71,50,0
    .goto Mulgore,56.72,89.27,50,0
    .goto Mulgore,57.92,89.27,50,0
    .goto Mulgore,57.69,86.77,50,0
    .goto Mulgore,57.31,85.39,50,0
    .goto Mulgore,55.99,85.46,50,0
    >>Mate os |cRXP_ENEMY_Battleboars|r. Saque-os pelos seus |cRXP_LOOT_Flanks|r e |cRXP_LOOT_Snouts|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith BristlebackBelts
    .goto Mulgore,59.67,83.33,30 >>Atravesse a caverna
step
    #completewith DirtyMap
    >>Mate os |cRXP_ENEMY_Costagulha Quilboars|r. Saque-os pelos seus |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>Abate os |cRXP_ENEMY_Costagulhas Xamãs|r. Saqueie-os para obter seus |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto Mulgore,60.54,81.04,35,0
    .goto Mulgore,62.35,81.27,35,0
    .goto Mulgore,62.49,78.78,35,0
    .goto Mulgore,64.71,77.67
    >>Mate |cRXP_ENEMY_Chefe Presadura Mantospinho|r dentro da cabana grande. Saque-o para obter sua |cRXP_LOOT_Cabeça|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #completewith next
    .goto Mulgore,63.24,82.70,40 >>Entre na caverna
step
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >>Pegue o |T134269:0|t[|cRXP_LOOT_Mapa Sujo de Terra|r] no chão. Use-o para iniciar a missão
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Aceite Ataque no Camp Narache
    .use 4851
step << Shaman
    #completewith next
    >>Abate os |cRXP_ENEMY_Costagulhas Xamãs|r. Saqueie-os para obter seus |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #label BristlebackBelts
    #loop
    .goto Mulgore,63.93,78.34,0
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34,40,0
    >>Mate os |cRXP_ENEMY_Costagulha Quilboars|r. Saque-os pelos seus |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #loop
    .goto Mulgore,63.86,80.14,0
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14,40,0
    >>Abate os |cRXP_ENEMY_Costagulhas Xamãs|r. Saqueie-os para obter seus |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #xprate <1.5
    #loop
    .goto Mulgore,62.27,82.03,0
    .goto Mulgore,63.98,80.08,40,0
    .goto Mulgore,64.31,78.29,40,0
    .goto Mulgore,63.67,76.18,40,0
    .goto Mulgore,62.67,76.10,40,0
    .goto Mulgore,61.34,77.13,40,0
    .goto Mulgore,61.72,78.98,40,0
    .goto Mulgore,62.29,81.53,40,0
    .goto Mulgore,60.82,80.81,40,0
    .goto Mulgore,60.08,81.93,40,0
    .goto Mulgore,61.03,82.32,40,0
    .goto Mulgore,62.27,82.03,40,0
    .xp 5+870 >>Mate inimigos até atingir 880+/2800 de xp << !Shaman
    .xp 5 >>Suba até o nível 5 << Shaman
    --1930
step
    #completewith next
    .hs >>Vá para Camp Narache
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r e |cRXP_FRIENDLY_Hawkwind|r << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r, |cRXP_FRIENDLY_Seer|r e |cRXP_FRIENDLY_Hawkwind|r << Shaman
    .turnin 780 >>Entregue Os Javaliços
    .target +Grull Hawkwind
    .goto Mulgore,44.92,77.12
    .turnin 3376 >>Entregue Quebra-Presadura!
    .target +Brave Windfeather
    .goto Mulgore,44.67,76.68
    .turnin 1519 >>Entregue Chamado da Terra << Shaman
    .accept 1520 >>Aceite Clamor da Terra << Shaman
    .target +Seer Ravenfeather << Shaman
    .goto Mulgore,44.73,76.18 << Shaman
    .turnin 781 >>Entregue Ataque no Camp Narache
    .turnin 757 >>Entregue Rito de força
    .accept 763 >>Aceite Ritos da Mãe Terra
    .target +Chief Hawkwind
    .goto Mulgore,44.18,76.07
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kawnie|r
    .vendor >>Comerciante Lixo
    .target Kawnie Softbreeze
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto Mulgore,53.74,80.15,30 >>Siga em direção à pedra
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>|cRXP_WARN_Use a|r |T134743:0|t[Sapta da Terra]
    .use 6635
step << Shaman
    .goto Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação|r
    .turnin 1520 >>Entregue Chamado da Terra
    .accept 1521 >>Aceite Clamor da Terra
    .target Minor Manifestation of Earth
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 1521 >>Entregue Chamado da Terra
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target Shikrik
    .money <0.01
    .target Meela Dawnstrider
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #optional
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Lanka Farshot
    .money <0.01
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .train 467 >>Aprenda |T136104:0|t[Espinhos]
    .train 5177 >>Treine |T136006:0|t[Ira]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #optional
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Treine |T136006:0|t[Ira]
    .target Gart Mistrunner
    .money <0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .train 6343 >>Aprenda |T136105:0|t[Trovoada]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #optional
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .target Harutt Thunderhorn
    .money <0.01
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Antur|r
    .accept 1656 >>Aceite A Tarefa Inacabada
    .target Antur Fallow

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Horde
#name 6-10 Mulgore
#version 7
#subgroup RestedXP Horda 1-30
#defaultfor Tauren
#next 10-12 Canto Eterno (Canto Eterno Woods) << !Shaman
#next 10-13 Mulgore << Shaman

step
    #softcore
	#completewith BloodhoofHome
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
	#hardcore
	#completewith BloodhoofHome
    .subzone 222 >>Corra para Bloodhoof Village
step
    #softcore
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Aceite Quico Sumiu!
    .target Ahab Wheathoof
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Aceite Mazzranache
    .target Maur Raincaller
step
    #xprate <1.5 << !Shaman
    #hardcore
    .goto Mulgore,47.35,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Aceite Perigos das Ventofúria
    .target Ruul Eagletalon
step
    #xprate <1.5
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r
    .turnin 763 >>Entregue Ritos da Mãe Terra
    .accept 745 >>Aceite Dividindo a Terra
    .accept 767 >>Aceite Rito de Visão
    .accept 746 >>Aceite Escavação Enânica
    .target Baine Bloodhoof
step
    #xprate >1.49
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r
    .turnin 763 >>Entregue Ritos da Mãe Terra
    .accept 767 >>Aceite Rito de Visão
    .accept 746 >>Aceite Escavação Enânica << Shaman
    .target Baine Bloodhoof
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    .turnin 1656 >>Entregue A Tarefa Inacabada
    .home >>Defina sua Pedra de Regresso para a Aldeia Casco Sangrento
    .target Innkeeper Kauth
    .isQuestAvailable 771
    .bindlocation 222
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .target Mahnott Roughwound
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (7s 1c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .target Mahnott Roughwound
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kennah|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (4p 14c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compre um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_dele|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kennah|r
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
    #hardcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Aceite Mazzranache
    .target Maur Raincaller
step
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarlman|r
    .turnin 767 >>Entregue Rito de Visão
    .accept 771 >>Aceite Rito de Visão
    .target Zarlman Two-Moons
step
    #hardcore
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Aceite Quico Sumiu!
    .target Ahab Wheathoof
step
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
    .accept 761 >>Aceite Caçada ao Rapineiro
    .target Harken Windtotem
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .accept 748 >>Aceite Água venenosa
    .target Mull Thunderhorn
step
    #xprate <1.5 << !Shaman
    #softcore
    .goto Mulgore,47.35,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Aceite Perigos das Ventofúria
    .target Ruul Eagletalon
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto você cumpre missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith Ambercorns
    >>Mate os |cRXP_ENEMY_Prairie Wolves|r. Saque-os para obter |cRXP_LOOT_Paws|r
    >>Mate os |cRXP_ENEMY_Adult Plainstriders|r. Saque-os para obter |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] e |cRXP_LOOT_Garras|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << !Tauren
    #completewith Ambercorns
    >>Mate for their |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
step
    #label Ambercorns
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    >>Pegue |cRXP_PICK_Pinhâmbares|r
    >>|cRXP_WARN_Elas ficam no chão sob as árvores|r
    .complete 771,2 --Ambercorn (2)
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Swoops|r em Mulgore. Saque-os para obter |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #loop
	.goto Mulgore,50.82,66.66,0
	.goto Mulgore,50.82,66.66,60,0
	.goto Mulgore,51.06,63.63,60,0
	.goto Mulgore,52.79,62.06,60,0
	.goto Mulgore,53.98,61.68,60,0
	.goto Mulgore,55.67,62.77,60,0
	.goto Mulgore,56.46,64.93,60,0
	.goto Mulgore,56.02,67.78,60,0
	.goto Mulgore,55.02,69.65,60,0
	.goto Mulgore,52.33,70.07,60,0
	.goto Mulgore,50.40,70.24,60,0
	.goto Mulgore,48.60,69.43,60,0
	.goto Mulgore,45.98,69.70,60,0
	.goto Mulgore,48.58,67.37,60,0
    >>Mate os |cRXP_ENEMY_Prairie Wolves|r. Saque-os para obter |cRXP_LOOT_Paws|r
    >>Saque os |cRXP_ENEMY_Adult Plainstriders|r. Saque-os para obter |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] e |cRXP_LOOT_Garras|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << !Tauren
    #loop
	.goto Mulgore,50.82,66.66,0
	.goto Mulgore,50.82,66.66,60,0
	.goto Mulgore,51.06,63.63,60,0
	.goto Mulgore,52.79,62.06,60,0
	.goto Mulgore,53.98,61.68,60,0
	.goto Mulgore,55.67,62.77,60,0
	.goto Mulgore,56.46,64.93,60,0
	.goto Mulgore,56.02,67.78,60,0
	.goto Mulgore,55.02,69.65,60,0
	.goto Mulgore,52.33,70.07,60,0
	.goto Mulgore,50.40,70.24,60,0
	.goto Mulgore,48.60,69.43,60,0
	.goto Mulgore,45.98,69.70,60,0
	.goto Mulgore,48.58,67.37,60,0
    >>Mate for their |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
step << Tauren
    #completewith next
    .use 33009>>Encontre |cRXP_FRIENDLY_Quico|r. Usar a |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre no sentido horário em círculos ao redor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .turnin 748 >>Entregue Água Venenosa
    .timer 8,Aguarde o RP Água Venenosa
    .accept 754 >>Aceite A Purificação de Casco Invernal
    .target Mull Thunderhorn
step << Tauren
    #completewith next
    >>Colete as |cRXP_PICK_Well Stones|r ao redor do poço
    .complete 771,1 --Well Stone (2)
step << Tauren
    #label Well
    .goto Mulgore,53.68,66.28
    >>|cRXP_WARN_Use o|r |T135139:0|t[A purificação de Casco Invernal Totem] |cRXP_WARN_no Poço|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    .goto Mulgore,53.35,65.78,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Colete as |cRXP_PICK_Well Stones|r ao redor do poço
    .complete 771,1 --Well Stone (2)
step
    #xprate <1.5
    #completewith Gnolls
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto você cumpre missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Vá de um lado para o outro entre os dois acampamentos. Mate os |cRXP_ENEMY_Palemane Tanners|r, os |cRXP_ENEMY_Palemane Skinners|r e os |cRXP_ENEMY_Palemane Poachers|r
    >>|cRXP_WARN_Tenha cuidado com|r |cRXP_ENEMY_Lança Infame|r |cRXP_WARN_(Nível 9 raro). É muito difícil de matar.|r
    .unitscan Snagglespear
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
step
    #completewith KyleFed
    .use 33009>>Encontre |cRXP_FRIENDLY_Quico|r. Usar a |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre no sentido horário em círculos ao redor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dela|r << Warrior
    .vendor >>Lixo Comerciante
    .collect 1179,10,749,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,749,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
    .isQuestAvailable 756
step << Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>Entregue A Purificação de Casco Invernal
    .accept 756 >>Aceite Totem de Chifre Troante
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
    .turnin 745 >>Entregue Dividindo a Terra
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step << Tauren
    #xprate >1.49
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .turnin 754 >>Entregue A Purificação de Casco Invernal
    .accept 756 >>Aceite Totem de Chifre Troante
    .target Mull Thunderhorn
step << !Tauren
    #xprate <1.5
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r
    .turnin 745 >>Entregue Dividindo a Terra
    .target Baine Bloodhoof
step << Warrior
    .goto Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Virra Casco Jovem|r
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .target Mahnott Roughwound
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (7s 1c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .target Mahnott Roughwound
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kennah|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (4p 14c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compre um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_dele|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Clawsx
    |cRXP_WARN_+Equip the|r |T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <1.5 << !Shaman
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Não siga o lobo que aparece|r
    .turnin 771 >>Entregue Rito de Visão
    .accept 772 >>Aceite Rito de Visão
    .target Zarlman Two-Moons
step << !Shaman
    #xprate >1.49
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Não siga o lobo que aparece|r
    .turnin 771 >>Entregue Rito de Visão
    .target Zarlman Two-Moons
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 284 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .train 8044 >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <8,1
step
    #optional
    #label KyleFed
step
    #loop
    .goto Mulgore,47.3,56.9,0
    .goto Mulgore,47.3,56.9,30,0
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    .use 33009>>Encontre |cRXP_FRIENDLY_Quico|r. Usar a |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre no sentido horário em círculos ao redor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab|r
    .turnin 11129 >>Entregue Quico Sumiu!
    .target Ahab Wheathoof
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .accept 749 >>Aceite A caravana devastada
	.unitscan Morin Cloudstalker
step
    #completewith Clawsx
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto você cumpre missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Clawsx
	>>Abate os |cRXP_ENEMY_Swoops|r em Mulgore. Saque-os para obter |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #completewith next
    >>Abate os |cRXP_ENEMY_Stalkers|r e os |cRXP_ENEMY_Cougars|r. Saque-os para obter seus |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    .goto Mulgore,53.74,48.17
    >>Clique no |cRXP_PICK_Caixote de Suprimentos Lacrado|r
    .turnin 749 >>Entregue A Caravana Devastada
    .accept 751 >>Aceite A caravana devastada
step << Tauren
	#label Clawsx
    #loop
    .goto Mulgore,58.1,48.6,0
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    >>Abate os |cRXP_ENEMY_Stalkers|r e os |cRXP_ENEMY_Cougars|r. Saque-os para obter seus |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step << !Shaman
    #xprate >1.49
    #loop
	.goto Mulgore,59.52,23.36,0
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	>>Mate |cRXP_ENEMY_Rapineiros|r. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step << !Shaman
    #xprate >1.49
    #loop
    .goto Mulgore,55.06,32.48,0
    .goto Mulgore,55.06,32.48,60,0
    .goto Mulgore,53.84,40.80,60,0
    .goto Mulgore,53.19,45.16,60,0
    .goto Mulgore,57.45,48.86,60,0
    .goto Mulgore,59.04,52.79,60,0
    .goto Mulgore,59.12,58.09,60,0
    .goto Mulgore,48.67,44.84,60,0
    >>|cRXP_WARN_Conclua a obtenção dos itens para Mazzranache|r
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
step << !Shaman
    #xprate >1.49
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3485 >>Farme até 3485+/6500xp
step
    #xprate <1.5 << !Shaman
    #softcore
	#completewith Thunderhorn
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #xprate <1.5 << !Shaman
    #hardcore
    #completewith Thunderhorn
    .subzone 222 >>Volte para Bloodhoof Village
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
step
    #xprate <1.5
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Entregue Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .target Mahnott Roughwound
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (7s 1c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .target Mahnott Roughwound
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kennah|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (4p 14c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compre um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_dele|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Moorat|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipe o|r |T135611:0|t[Bacamarte Ornado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <1.5 << !Shaman
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Harant|r
    .vendor >>Venda itens inúteis e repare
    .target Harant Ironbrace
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
    .turnin 761 >>Entregue Caçada ao Rapineiro
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
    #xprate <1.5 << !Shaman
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>Entregue Totem de Chifre Troante
    .timer 8,Totem de Chifre Troante RP
    .accept 758 >>Aceite Purificação de Chifre Troante
    .target Mull Thunderhorn
step
    #optional
    #label Thunderhorn
step << Shaman
    #xprate <1.5
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .train 8044 >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <8,1
step << Shaman
    #xprate >1.49
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Aceite Call of Fogo - Missão - Missão
    .trainer >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <10,1
step << Druid
    #xprate <1.5
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 284 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <8,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele|r << Warrior
    .vendor >>Comerciante Lixo << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
    .isQuestAvailable 746
step
    #xprate <1.5 << !Shaman
    #completewith Burial
    >>|cRXP_WARN_Conclua a obtenção dos itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
	#completewith Burial
	>>Abate os |cRXP_ENEMY_Swoops|r em Mulgore. Saque-os para obter |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #xprate <1.5 << !Shaman
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_Use o|r |T135139:0|t[Totem de Purificação Chifre Troante] |cRXP_WARN_no poço|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,31.27,49.87
    >>Mate os |cRXP_ENEMY_Bael'dun Diggers|r e os |cRXP_ENEMY_Bael'dun Appraisers|r. Saque-os para obter |T134707:0|t[|cRXP_LOOT_Picareta do Prospector|r]
    .use 4702 >>|cRXP_WARN_Arrebente a|r |T134707:0|t[|cRXP_LOOT_Picareta do Prospector|r] |cRXP_WARN_na|r |cRXP_PICK_Forja|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Bael'dun Appraisers|r lançam|r |T135929:0|t[Cura Inferior] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% dos pontos de vida for about 75 health)|r
    .collect 4702,5,746,7,3
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step
    #xprate <1.5 << !Shaman
    #loop
	.goto Mulgore,34.08,43.71,0
	.goto Mulgore,34.08,43.71,40,0
	.goto Mulgore,32.98,42.96,40,0
	.goto Mulgore,31.72,43.08,40,0
	.goto Mulgore,31.08,42.09,40,0
	.goto Mulgore,31.12,40.87,40,0
	.goto Mulgore,31.74,40.31,40,0
	.goto Mulgore,32.44,41.17,40,0
	.goto Mulgore,33.57,41.30,40,0
	.goto Mulgore,33.82,40.26,40,0
	.goto Mulgore,34.48,41.21,40,0
	.goto Mulgore,34.50,42.29,40,0
    >>Mate |cRXP_ENEMY_Bruxas Eólica Ventofúria|r e |cRXP_ENEMY_Harpias Ventofúria|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #xprate <1.5 << !Shaman
    #completewith next
    .goto Mulgore,33.37,36.52,50 >>Entre na caverna logo ao norte das Harpias Fúria dos Ventos
step
    #xprate <1.5 << !Shaman
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Entregue Rito de Visão
    .accept 773 >>Aceite Rito de sabedoria
    .target Seer Wiserunner
step
    #xprate <1.5 << !Shaman
    #optional
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_EXCLUIR|r |T134712:0|t[Water of the Seers] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #xprate <1.5 << !Shaman
    #completewith SacredBurial
    >>|cRXP_WARN_Conclua a obtenção dos itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
    #completewith SacredBurial
    >>Fique atento a |cRXP_ENEMY_Uivo Fantasma|r. Pegue dele o |T134358:0|t[|cRXP_LOOT_Manto Marcado por Demônios|r]. Use-o para iniciar a missão
    >>|cRXP_WARN_Cuidado, pois |cRXP_ENEMY_Uivo Fantasma|r é difícil por ser nível 12|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Aceite O Manto Marcado por Demônios
    .use 4854
    .unitscan Ghost Howl
step
    #xprate <1.5 << !Shaman
	#completewith next
	>>Abate os |cRXP_ENEMY_Swoops|r em Mulgore. Saque-os para obter |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <1.5 << !Shaman
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Aceite Sepultamento Sagrado
    .target Lorekeeper Raintotem
step
    #xprate <1.5 << !Shaman
    #completewith next
    >>Mate |cRXP_ENEMY_Traiçoeiros Costagulha|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <1.5 << !Shaman
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Espírito Ancestral|r
    .turnin 773 >>Entregue Rito de Sabedoria
    .accept 775 >>Aceite. Siga para o Penhasco do Trovão
    .target Ancestral Spirit
step
    #xprate <1.5 << !Shaman
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,35,0
	.goto Mulgore,61.14,22.93,35,0
	.goto Mulgore,61.77,22.49,35,0
	.goto Mulgore,62.18,22.05,35,0
	.goto Mulgore,62.32,20.89,35,0
	.goto Mulgore,61.62,19.50,35,0
	.goto Mulgore,60.44,19.50,35,0
	.goto Mulgore,60.16,21.06,35,0
	.goto Mulgore,60.41,21.96,35,0
	.goto Mulgore,61.12,22.88,35,0
    >>Mate |cRXP_ENEMY_Traiçoeiros Costagulha|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Entregue Sepultamento Sagrado
    .target Lorekeeper Raintotem
step
    #xprate <1.5 << !Shaman
    #completewith next
    >>|cRXP_WARN_Conclua a obtenção dos itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
    #loop
	.goto Mulgore,59.52,23.36,0
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	>>Mate |cRXP_ENEMY_Rapineiros|r. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <1.5 << !Shaman
    #loop
    .goto Mulgore,55.06,32.48,0
    .goto Mulgore,55.06,32.48,60,0
    .goto Mulgore,53.84,40.80,60,0
    .goto Mulgore,53.19,45.16,60,0
    .goto Mulgore,57.45,48.86,60,0
    .goto Mulgore,59.04,52.79,60,0
    .goto Mulgore,59.12,58.09,60,0
    .goto Mulgore,48.67,44.84,60,0
    >>|cRXP_WARN_Conclua a obtenção dos itens para Mazzranache|r
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
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3020 >>Farme até 3020+/6500 XP
    .isQuestComplete 761
    .isQuestComplete 766
step
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3720 >>Mate inimigos até atingir 3720+/6500 de xp
    .isQuestComplete 761
step
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3700 >>Mate inimigos até atingir 3700+/6500 de xp
    .isQuestComplete 766
step
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+4400 >>Farme até 4400+/6500 XP
step << !Druid
    #completewith Bloodhoofturnins1
    .hs >>Vá para Bloodhoof Village
    .use 6948
    .bindlocation 222,1
    .subzoneskip 222
step << Druid
    #sofcore
    #completewith Bloodhoofturnins1
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Druid
    #hardcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,47.33,57.17,120 >>Volte para Bloodhoof Village
    .subzoneskip 222
step << Druid
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Entregue Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Entregue O Manto Marcado por Demônios
    .target Skorn Whitecloud
    .isOnQuest 770
step << Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Entregue Purificação de Chifre Troante
    .timer 8,Aguarde o RP de Purificação de Chifre Troante
    .accept 759 >>Aceite Totem de Juba Agreste << Shaman
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Entregue Caçada ao Rapineiro
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren
    #xprate <1.5
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r e |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Entregue Purificação de Chifre Troante
    .timer 8,Aguarde o RP de Purificação de Chifre Troante
    .accept 759 >>Aceite Totem de Juba Agreste << Shaman
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << Tauren Shaman
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Entregue Purificação de Chifre Troante
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Entregue Caçada ao Rapineiro
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren Shaman
    #xprate >1.49
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r e |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Entregue Purificação de Chifre Troante
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << Tauren !Shaman
    #xprate >1.49
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>Entregue Totem de Chifre Troante
    .target Mull Thunderhorn
step << !Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r e |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 761 >>Entregue Caçada ao Rapineiro
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << !Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r e |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
step << !Shaman
    #xprate >1.49
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
    .turnin 761 >>Entregue Caçada ao Rapineiro
    .target Harken Windtotem
    .isQuestComplete 761
step
    #optional
    #label Bloodhoofturnins1
step
    #xprate <1.5 << !Shaman
    #optional
    #completewith AlphaTeeth
    .destroy 4702 >>|cRXP_WARN_Apague a|r |T134707:0|t[Picareta do Prospector] |cRXP_WARN_da mochila, pois não são mais necessárias|r
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Heavy Shots] |cRXP_BUY_dele|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Aceite Call of Fogo - Missão - Missão
    .trainer >>Treine suas magias de classe
    .target Narm Skychaser
step << !Druid
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Entregue Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .trainer >>Treine suas magias de classe
    --.accept 1505 >>Accept Veteran Uzzek
    .target Krang Stonehoof
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Aceite Domando a Fera
    .trainer >>Treine suas magias de classe
    .target Yaw Sharpmane
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .trainer >>Treine suas magias de classe
    .accept 5928 >>Aceite Atendendo o chamado
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 8924 >>Treine suas magias de classe
    .target Gennia Runetotem
step << Hunter
    #loop
    .goto Mulgore,39.38,57.43,0
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43,50,0
    .use 15914 >>|cRXP_WARN_Use o seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Pinote Adulto|r |cRXP_WARN_na distância máxima|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>Entregue Domar a Fera - Missão
    .accept 6087 >>Aceite Domando a Fera
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto Mulgore,49.49,42.27,0
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27,50,0
    .use 15915 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Espreitador-da-pradaria|r |cRXP_WARN_na distância máxima|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>Entregue Domar a Fera - Missão
    .accept 6088 >>Aceite Domando a Fera
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto Mulgore,47.25,41.33,0
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .use 15916 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Rapineiro|r |cRXP_WARN_no alcance máximo e use-o novamente assim que ele derrubar você|r
    >>|cRXP_WARN_Se falhar e ficar sem Cargas do Bastão de Adestramento, abandone a missão, pegue-o novamente e volte|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>Entregue Domar a Fera - Missão
    .accept 6089 >>Aceite Treinando a Fera
    .target Yaw Sharpmane
step << !Hunter
    #xprate <1.5
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jhawna|r
    .vendor >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Shaman/Druid
    .vendor >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dela|r << Warrior
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
    .isQuestAvailable 765
step << Shaman
    #xprate <1.5
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Aceite A senda do caçador
    .target Skorn Whitecloud
step << Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .turnin 751 >>Entregue A Caravana Devastada
    .accept 764 >>Aceite Empreendimentos S.A.
    .accept 765 >>Aceite Supervisor Geringonça
	.unitscan Morin Cloudstalker
step << !Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .turnin 751 >>Entregue A Caravana Devastada
	.unitscan Morin Cloudstalker
step << Shaman
    #xprate >1.49
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Viagem para Empreendimentos S.A. Mina
step << Shaman
    #xprate >1.49
    #completewith next
    >>Mate os |cRXP_ENEMY_Trabalhadores da Venture Co.|r e os |cRXP_ENEMY_Supervisores da Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #xprate >1.49
    #softcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Corra para dentro da mina e fique no lado direito/leste. Mate o |cRXP_ENEMY_Supervisor Geringonça|r. Saque-o para obter a |cRXP_LOOT_Prancheta|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Geringonça
step << Shaman
    #xprate >1.49
    #hardcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Corra para dentro da mina e fique no lado direito/leste. Mate o |cRXP_ENEMY_Supervisor Geringonça|r. Saque-o para obter a |cRXP_LOOT_Prancheta|r
    >>|cRXP_WARN_Tenha muito cuidado! É fácil chamar muitos inimigos nesta mina e é difícil escapar|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Geringonça
step << Shaman
    #xprate >1.49
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    >>Mate os |cRXP_ENEMY_Trabalhadores da Venture Co.|r e os |cRXP_ENEMY_Supervisores da Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #xprate >1.49
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .turnin 764 >>Entregue Empreendimentos S.A.
    .turnin 765 >>Entregue para o Supervisor Geringonça
	.unitscan Morin Cloudstalker
step << Shaman
    #xprate <1.5
    #completewith AlphaTeeth
    >>Mate |cRXP_ENEMY_Predadores das Estepes|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step << Hunter
    #xprate <1.5
    #completewith next
    .cast 1515 >>Dome o |cRXP_ENEMY_Lobo-da-pradaria Alfa|r
    >>|cRXP_WARN_Isso permitirá que você treine|r |T132278:0|t[Morder Rank 2]
    .mob Prairie Wolf Alpha
step << Shaman
    #xprate <1.5
    #label AlphaTeeth
    #loop
    .goto Mulgore,66.34,67.01,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    >>Mate |cRXP_ENEMY_Lobos-da-pradaria Alfa|r na área. Pegue seus |cRXP_LOOT_Dentes|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step << Hunter
    #xprate >1.49
    #loop
    .goto Mulgore,66.34,67.01,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .cast 1515 >>Dome o |cRXP_ENEMY_Lobo-da-pradaria Alfa|r
    >>|cRXP_WARN_Isso permitirá que você treine|r |T132278:0|t[Morder Rank 2]
    .mob Prairie Wolf Alpha
step << Shaman
    #xprate <1.5
    #softcore
	#completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Shaman
    #xprate <1.5
    #hardcore
	#completewith next
    .goto Mulgore,46.5,55.5,150 >>Volte para Bloodhoof Village
step << Shaman
    #xprate <1.5
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>Vá para Totem de Juba Agreste
    .accept 760 >>Aceite Purificação de Juba Agreste
    .target Mull Thunderhorn
step << !Shaman
    #optional
    #completewith CampTFP
    .abandon 765 >>Abandone Supervisor Geringonça
step << !Shaman
    #optional
    #completewith CampTFP
    .abandon 764 >>Abandone Empreendimentos S.A.
step
    #completewith CampTFP
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >>Viaje para os Sertões
step << !Druid
    .goto The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Aprenda a rota de voo de Camp Taurajo
	.target Omusa Thunderhorn
    .isQuestAvailable 854
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Aprenda a rota de voo de Camp Taurajo
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
    .isQuestAvailable 5932
step
    #optional
    #label CampTFP
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5932
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul Runetotem|r
    .accept 886 >>Aceite The Barrens Oases
    .target Arch Druid Hamuul Runetotem
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>Entregue Heeding the Call - Missão - Missão - Missão
    .accept 5922 >>Aceite Moonglade
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>Aceite Moonglade
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite|r
    .turnin 5922 >>Entregue Moonglade
    .accept 5930 >>Aceite Espírito do Grande Urso
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito do Grande Urso|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite|r
    .turnin 5930 >>Entregue Espírito do Grande Urso
    .accept 5932 >>Aceite De volta ao Penhasco do Trovão
    .target Dendrite Starblaze
step << Druid
    #completewith DruidBearForm
    .hs >>Vá para Penhasco do Trovão
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .zoneskip Thunder Bluff
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>Entregue em Trovão Blefe - Missão
    .accept 6002 >>Aceite Corpo e Coração
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Tal
    .subzoneskip 378
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>|cRXP_WARN_Use o|r |T132857:0|t[Pó Lunar Cenariano] |cRXP_WARN_na|r |cRXP_PICK_Pedra Luniscante|r
    >>Mate |cRXP_ENEMY_Lunagarra|r quando aparecer. Depois, fale com o |cRXP_FRIENDLY_Espírito de Lunagarra|r
    >>|cRXP_WARN_Cuidado! |cRXP_ENEMY_Lunagarra|r conjura |T132152:0|t[Surra] |cRXP_WARN_(2 ataques extras a cada 10 segundos)|r
    >>|cRXP_WARN_Evite|r |cRXP_ENEMY_Thunderheads|r |cRXP_WARN_na área|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
    .skipgossip
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirge Chifre Austero|r
    .accept 854 >>Aceite Jornada para a Encruzilhada
    .target Kirge Sternhorn
step
    #completewith next
    .subzone 380 >>Vá ao norte em direção à Encruzilhada
    >>|cRXP_WARN_Fique na estrada. Caso contrário, você pode atrair inimigos de nível elevado.|r
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .turnin 886 >>Viagem para The Barrens Oases << Druid
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step << Tauren
    .goto The Barrens,51.5,30.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 854 >>Entregue Jornada à Encruzilhada
    .target Thork
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Aceite Esporos de Fungos
    .target Apothecary Helbrim
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >>Aprenda a rota de voo para Encruzilhada
    .target Devrak
    .isQuestAvailable 848,870
step
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jahan|r
    .accept 6361 >>Aceite Um pacote de peles
    .target Jahan Hawkwing
step
    #completewith next
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Mantenha distância máxima de |cRXP_ENEMY_Kolkar|r |cRXP_WARN_enquanto coleta os cogumelos. Eles são nível 12-14|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Mergulhe debaixo d'água para o |cRXP_PICK_Borbulhando Rachadura|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Mantenha distância máxima de |cRXP_ENEMY_Kolkar|r |cRXP_WARN_na área. Eles são nível 12-14|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #softcore
	#completewith ZamahPickup
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >>Vá para a Encruzilhada
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Entregue Os Poços Esquecidos
    .accept 877 >>Aceite Oásis Estagnante << Shaman
    .target Tonga Runetotem
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
step
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Espere o RP terminar|r
    >>|cRXP_WARN_Isso inicia uma missão cronometrada de 45 minutos|r
    .turnin 848 >>Entregue Esporos de Fungos
    .timer 7,Esporos de Fungos RP
    .accept 853 >>Aceite Boticário Zamah
    .target Apothecary Helbrim
step
    #sticky
    #completewith CauldronStirrer
    +|cRXP_WARN_Você está em uma missão cronometrada, não fique ausente. Ela será entregue em torno de 5-10 minutos após a coleta|r
    .isOnQuest 853
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .turnin 6361 >>Entregue Um pacote de peles
    .accept 6362 >>Aceite Voo para o Penhasco do Trovão
    .target Devrak
step
    #completewith CauldronStirrer
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Devrak
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Voe para o Penhasco do Trovão
    .accept 6363 >>Aceite Tal, o Mestre de Mantícoras
    .target Ahanu
step << Shaman
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Aceite Os Preparativos da Cerimônia
    .target Eyahn Eagletalon
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Treine Maças de Duas Mãos
    .target Ansekhwa
    .money <0.100
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Treine Cajados
    .target Ansekhwa
    .money <0.100
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Vá para o Alto do Espírito e entre nas Piscinas da Visão
step
    #label CauldronStirrer
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Entregue Boticário Zaqueu
    .target Apothecary Zamah
step
    #completewith EndGuide
    +|cRXP_WARN_Equipe o|r |T135145:0|t[Mexedor de Caldeirão]
    .use 5340
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Entregue Corpo e Coração
    .target Turak Runetotem
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >>Aceite Procurando pela Bolsa Perdida
    .accept 5723 >>Aceite Testando a Força de um Inimigo
    .target Rahauro
    .dungeon RFC
step << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Fale com Tal, o Mestre de Mantícoras
    .accept 6364 >>Aceite Fale novamente com Jahan
    .target Tal
step << !Shaman
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Siga para o Penhasco do Trovão
    .target Cairne Bloodhoof
step << Shaman
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Siga para o Penhasco do Trovão
    .accept 776 >>Aceite Ritos da Mãe Terra
    .target Cairne Bloodhoof
step << Shaman
    #xprate >1.49
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Siga para o Penhasco do Trovão
    .target Cairne Bloodhoof
step << !Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Fale com Tal, o Mestre de Mantícoras
    .accept 6364 >>Aceite Fale novamente com Jahan
    .target Tal
step << !Shaman
    #completewith HidesTurnIn
    .hs >>Vá para A Encruzilhada
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step << !Shaman
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para Encruzilhada
    .target Tal
    .zoneskip The Barrens
    .cooldown item,6948,<0
    .subzoneskip 380
step << !Shaman
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Entregue Retorno a Jahan
    .target Jahan Hawkwing
step << !Shaman
    #completewith ZeptoUC1
    +|cRXP_WARN_Abandone qualquer missão restante que você tenha|r
step << !Shaman
    #completewith next
    .subzone 392 >>Viaje para Ponto de Ancoragem
step << !Shaman
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >>Aprenda a rota de voo para Ratchet
    .target Bragok
step << !Shaman
    #completewith next
    .zone Durotar >>Voe para Durotar
step << !Shaman
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .zone Tirisfal Glades >>Pegue o zepelim para Tirisfal Glades
    .zoneskip Tirisfal Glades
step << Warrior
    #optional
    .abandon 1505 >>Abandone Veterano Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandone Caminho da Defesa
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .trainer >>Treine suas magias de classe
    .accept 1818 >>Aceite Uma conversa com Dinis
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Geni|r
    .home >>Defina sua Pedra de Regresso em Montalvo
    .target Innkeeper Renee
    .bindlocation 2119
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .turnin 1818 >>Entregue Uma conversa com Dinis
    .accept 1819 >>Aceite Ulag, o Cutelo
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Clique no crânio no chão. Isto vai invocar|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mate-o|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isOnQuest 1819
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .turnin 1819 >>Entregue Ulag, O Cutelo
    .accept 1820 >>Aceite Encontrando Eurico
    .target Deathguard Dillinger
    .isQuestComplete 1819
step << Warrior
    #label WarriorClassQ
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 1820 >>Entregue Fale com Coleman
    .target Coleman Farthing
    .isOnQuest 1820
step << !Shaman
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
step << !Shaman
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Suba as escadas aqui
step << !Shaman
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>Usar o |cRXP_PICK_Orbe de Translocação|r
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ithelis|r ou |cRXP_FRIENDLY_Osselan|r
    .trainer >>Treine suas magias de classe
	.target Ithelis
	.target Osselan
step
    #optional
    #label EndGuide
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Horde
#name 10-13 Mulgore
#version 7
#subgroup RestedXP Horda 1-30
#defaultfor Tauren Shaman
#next 13-18 Terras Devastadas

step
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cairne|r
    .accept 776 >>Aceite Ritos da Mãe Terra
    .isQuestTurnedIn 775
step
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Aceite Os Preparativos da Cerimônia
    .target Eyahn Eagletalon
step
    #xprate <1.5
    #sticky
    #completewith ThunderBluff
    >>Fique atento a |cRXP_ENEMY_Uivo Fantasma|r. Pegue dele o |T134358:0|t[|cRXP_LOOT_Manto Marcado por Demônios|r]. Use-o para iniciar a missão
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Aceite O Manto Marcado por Demônios
    .use 4854
    .unitscan Ghost Howl
step
    #xprate <1.5
    #loop
    .goto Mulgore,31.7,28.2,0
    .goto Mulgore,30.2,19.5,0
    .goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
    >>Mate as |cRXP_ENEMY_Feiticeiras de Fúria dos Ventos|r. Saque-as pelos seus |cRXP_LOOT_Peninha Azul|r
    >>Mate |cRXP_ENEMY_Matriarcas Ventofúria|r. Pegue suas |cRXP_LOOT_Penas Bronze|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
step
    #xprate <1.5
    #completewith Arrachea
    >>Mate |cRXP_ENEMY_Predadores das Estepes|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
    .isOnQuest 861
step << Tauren Shaman
    #xprate <1.5
    .goto Mulgore,42.5,13.8
    .use 5416 >>|cRXP_WARN_Use o|r |T135139:0|t[Totem de Purificação Juba Agreste] |cRXP_WARN_no poço|r
    .complete 760,1 --Cleanse the Wildmane Well (1)
step
    #xprate <1.5
    #label Arrachea
    #loop
    .goto Mulgore,52.6,12.2,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    >>Mate |cRXP_ENEMY_Arra'chea|r (kodo preto grande). Pegue seu |cRXP_LOOT_Chifre|r
    >>|cRXP_WARN_Ele patrulha no sentido horário ao redor de Mulgore do norte|r
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'chea
step
    #xprate <1.5
    #loop
    .goto Mulgore,43.78,10.96,0
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    >>Mate |cRXP_ENEMY_Predadores das Estepes|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
    .isOnQuest 861
step
    #xprate <1.5
    #completewith next
    .zone Thunder Bluff >>Voe de volta para Penhasco do Trovão
step
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cairne|r
    .turnin 776 >>Entregue Ritos da Mãe Terra
    .target Cairne Bloodhoof
step
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Entregue Os preparativos da cerimônia
    .target Eyahn Eagletalon
step
    #xprate <1.5
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Viagem para A Senda do Caçador
    .accept 860 >>Aceite Sergra Espinhonegro
    .target Melor Stonehoof
    .isQuestComplete 861
step
    #xprate <1.5
    #optional
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor|r
    .accept 860 >>Aceite Sergra Espinhonegro
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step
    #xprate <1.5
    #completewith WildManeTurnIn
    .subzone 222 >>Vá para Bloodhoof Village
step
    #xprate <1.5
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Entregue O Manto Marcado por Demônios
    .target Skorn Whitecloud
    .isOnQuest 770
step << Tauren
    #xprate <1.5
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .turnin 760 >>Entregue Purificação de Juba Agreste
    .target Mull Thunderhorn
step << Shaman
    #xprate <1.5
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .train 547 >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <12,1
step << Druid
    #xprate <1.5
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    #xprate <1.5
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 7384 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 14281 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <12,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Heavy Shots] |cRXP_BUY_dele|r << Hunter
    .collect 2519,1000,764,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
    .itemcount 764,<800
step
    #xprate <1.5
    #optional
    #label WildManeTurnIn
step
    #xprate <1.5
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .accept 764 >>Aceite Empreendimentos S.A.
    .accept 765 >>Aceite Supervisor Geringonça
	.unitscan Morin Cloudstalker
step
    #xprate <1.5
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Viagem para Empreendimentos S.A. Mina
step
    #xprate <1.5
    #completewith next
    >>Mate os |cRXP_ENEMY_Trabalhadores da Venture Co.|r e os |cRXP_ENEMY_Supervisores da Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #xprate <1.5
    #softcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Corra para dentro da mina e fique no lado direito/leste. Mate o |cRXP_ENEMY_Supervisor Geringonça|r. Saque-o para obter a |cRXP_LOOT_Prancheta|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Geringonça
step
    #xprate <1.5
    #hardcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Corra para dentro da mina e fique no lado direito/leste. Mate o |cRXP_ENEMY_Supervisor Geringonça|r. Saque-o para obter a |cRXP_LOOT_Prancheta|r
    >>|cRXP_WARN_Tenha muito cuidado! É fácil chamar muitos inimigos nesta mina e é difícil escapar|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Geringonça
step
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    >>Mate os |cRXP_ENEMY_Trabalhadores da Venture Co.|r e os |cRXP_ENEMY_Supervisores da Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+7150 >>Suba até 7150+/8700 XP
step
    #xprate <1.5
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .turnin 764 >>Entregue Empreendimentos S.A.
    .turnin 765 >>Entregue para o Supervisor Geringonça
	.unitscan Morin Cloudstalker
step
    #xprate <1.5
    #completewith next
    .subzone 378 >>Viaje para Camp Taurajo
step
    #xprate <1.5
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Omusa Thunderhorn
    .cooldown item,6948,<0,1
    .subzoneskip 380
step
    #xprate >1.49
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para Encruzilhada
    .target Tal
    .zoneskip The Barrens
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #completewith HidesTurnIn
    .hs >>Vá para A Encruzilhada
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Entregue Retorno a Jahan
    .target Jahan Hawkwing
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos Para a Encruzilhada
    .target Thork
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .accept 867 >>Aceite As harpias bandoleiras
    .target Darsok Swiftdagger
step
    #xprate <1.5
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 860 >>Entregue Sergra Espinhonegro
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
    .isOnQuest 860
step
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Na Cola dos Larápios
    .target Gazrog
step << Shaman
    #completewith next
    .use 4926 >>Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Se não tiver saído, você o receberá depois|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 2984 >>Entregue Call of Fogo - Missão - Missão
    .accept 1524 >>Aceite Call of Fogo - Missão - Missão
    .target Kranal Fiss
step << Shaman
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >>Siga o caminho para cima da montanha até |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Tome cuidado para não cair da montanha, pois o caminho é muito estreito. Você pode morrer se cair|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entregue Call of Fogo - Missão - Missão
    .accept 1525 >>Aceite Call of Fogo - Missão - Missão
    .target Telf Joolam
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Entregue Veterano Uzzek
    .accept 1498 >>Aceite Caminho da defesa
    .target Uzzek
step << Warrior
    #loop
    .goto Durotar,39.34,28.25,0
    .goto Durotar,39.11,30.76,40,0
    .goto Durotar,39.34,28.25,40,0
    .goto Durotar,39.11,26.46,40,0
    .goto Durotar,39.39,25.05,40,0
    .goto Durotar,40.00,24.06,40,0
    .goto Durotar,42.51,24.29,40,0
    >>Mate |cRXP_ENEMY_Pelegos de Relâmpago|r. Pegue suas |cRXP_ENEMY_Escamas|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Entregue Caminho da Defesa
    .accept 1502 >>Aceite Thun'grim Olhafogo
    .target Uzzek

]])
