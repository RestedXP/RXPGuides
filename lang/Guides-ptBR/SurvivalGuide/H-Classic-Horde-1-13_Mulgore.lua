if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som--h
<< Horde
#name 1-6 Tauren
#version 1
#group Guia de Sobrevivência RestedXP (H)
#subgroup RXP Guia de Sobrevivência 1-20
#defaultfor Tauren
#next 6-13 Tauren

step << !Tauren
    #completewith next
    .goto Mulgore,44.92,77.12
    +|cRXP_WARN_Você selecionou um guia destinado aos Tauren. Esta zona NÃO funcionará bem para você porque está faltando uma das principais linhas de quests que são reservadas apenas para Tauren. É recomendado escolher a mesma zona de partida em que você começa|r
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
    +|cRXP_WARN_Abate |cRXP_ENEMY_Plainstriders|r. Saque-os até ter 10 de cobre em valor de itens de vendedor (incluindo sua armadura)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kawnie|r
    .vendor >>Lixo de Comerciante
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
    .train 8017 >>Treine |T136086:0|t[Arma Trinca-pedra]
    .target Meela Dawnstrider
step
    #completewith next
    >>Abate |cRXP_ENEMY_Plainstriders|r. Saque-os pela |cRXP_LOOT_Carne|r e pela |cRXP_LOOT_Peninha|r
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
    >>Pegue o |cRXP_LOOT_Water Pitcher|r no poço atrás de |cRXP_FRIENDLY_Hawkwind|r
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
    >>Abate |cRXP_ENEMY_Plainstriders|r. Saque-os pela |cRXP_LOOT_Carne|r e pela |cRXP_LOOT_Peninha|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull|r
    .turnin 747,1 >>Entregue A Caça Começa << Druid
    .turnin 747 >>Entregue A Caça Começa << !Druid
    .accept 3091 >>Aceite Bilhete << Warrior
    .accept 3092 >>Aceite Bilhete Cinzelado << Hunter
    .accept 3093 >>Aceite Bilhete Inscrito em Runas << Shaman
    .accept 3094 >>Aceite Bilhete Verdejante << Druid
    .accept 750 >>Aceite A Caçada Continua
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Luz Shots] |cRXP_BUY_dela|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >>Lixo de Comerciante
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Chefe Vento do Falcão|r
    .turnin 753 >>Entregue Uma Tarefa Humilde
    .accept 755 >>Aceite Ritos da Mãe Terra
    .target Chief Hawkwind
step << Shaman
    .goto Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Marjak|r|cRXP_BUY_. Compre um|r |T135139:0|t[Cajado Curto] |cRXP_BUY_dele|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Marjak
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
    >>Abate |cRXP_ENEMY_Mountain Cougars|r. Saque-os pela |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vidente Grislíngua|r
    >>|cRXP_WARN_Triture inimigos no caminho|r
    .turnin 755 >>Entregue Ritos da Mãe Terra
    .accept 757 >>Aceite Rito de Força
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
    >>Abate |cRXP_ENEMY_Mountain Cougars|r. Saque-os pela |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #loop
	.goto Mulgore,45.56,87.95,40,0
	.goto Mulgore,46.92,87.84,40,0
	.goto Mulgore,48.67,86.83,40,0
	.goto Mulgore,50.65,85.87,40,0
	.goto Mulgore,51.01,83.71,40,0
	.goto Mulgore,52.06,81.53,40,0
	.goto Mulgore,51.87,79.58,40,0
	.goto Mulgore,51.67,77.39,40,0
	.goto Mulgore,51.95,75.16,40,0
	.goto Mulgore,50.32,76.33,40,0
	.goto Mulgore,48.85,75.82,40,0
	.goto Mulgore,47.41,75.30,40,0
	.goto Mulgore,46.80,78.21,40,0
	.goto Mulgore,45.84,80.41,40,0
	.goto Mulgore,45.03,82.15,40,0
	.goto Mulgore,44.09,83.89,40,0
	.goto Mulgore,43.90,86.08,40,0
    .xp 3+1150 >>Farme até 1150+/1400xp
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_Triture |cRXP_ENEMY_Plainstriders|r. Saque-os até ter 2 de prata em valor de itens de vendedor|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_Triture |cRXP_ENEMY_Plainstriders|r. Saque-os até ter 1 de prata em valor de itens de vendedor|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull|r
    .turnin 750 >>Entregue A Caçada Continua
    .accept 780 >>Aceite Os Javalibatalha
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kawnie|r
    .vendor >>Lixo de Comerciante
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>Aceite Quebre Sharptusk!
    .target Brave Windfeather
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Entregue Bilhete Cinzelado
    .train 1978 >>Treine |T132204:0|t[Picada de Serpente]
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
    .accept 1519 >>Aceite Call of Terra - Missão
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
    >>Mate os |cRXP_ENEMY_Battleboars|r. Saque os |cRXP_LOOT_Flanks|r e os |cRXP_LOOT_Snouts|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith next
    .goto Mulgore,59.67,83.33,30 >>Viaje pela caverna
step
    #completewith DirtyMap
    >>Mate os |cRXP_ENEMY_Bristleback Quilboars|r. Saqueie os |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>Mate os |cRXP_ENEMY_Bristleback Shamans|r. Saqueie os |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto Mulgore,60.54,81.04,35,0
    .goto Mulgore,62.35,81.27,35,0
    .goto Mulgore,62.49,78.78,35,0
    .goto Mulgore,64.71,77.67
    >>Mate o |cRXP_ENEMY_Chefe Presadura Mantospinho|r dentro da grande cabana. Saque o |cRXP_LOOT_Cabeça|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >>Vá para a caverna. Pegue o |T134269:0|t[|cRXP_PICK_Dirt-stained Mapa|r] no chão e use-o para começar a missão
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Aceite Ataque em Camp Narache
    .use 4851
step << Shaman
    #completewith next
    >>Mate os |cRXP_ENEMY_Bristleback Shamans|r. Saqueie os |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
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
    >>Mate os |cRXP_ENEMY_Bristleback Quilboars|r. Saqueie os |cRXP_LOOT_Belts|r
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
    >>Mate os |cRXP_ENEMY_Bristleback Shamans|r. Saqueie os |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
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
    .xp 5+880 >>Farme até 880/2800xp << !Shaman
    .xp 5 >>Farme até o nível 5 << Shaman
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
    .turnin 1519 >>Entregue Call of Terra - Missão << Shaman
    .accept 1520 >>Aceite Call of Terra - Missão << Shaman
    .target +Seer Ravenfeather << Shaman
    .goto Mulgore,44.73,76.18 << Shaman
    .turnin 781 >>Entregue Ataque em Camp Narache
    .turnin 757 >>Entregue Rito de força
    .accept 763 >>Aceite Ritos da Mãe Terra
    .target +Chief Hawkwind
    .goto Mulgore,44.18,76.07
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto Mulgore,53.74,80.15,30 >>Viaje para a pedra
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>|cRXP_WARN_Use a|r |T134743:0|t[Sapta da Terra]
    .use 6635
step << Shaman
    .goto Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação|r
    .turnin 1520 >>Entregue Call of Terra - Missão
    .accept 1521 >>Aceite Call of Terra - Missão
    .target Minor Manifestation of Earth
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Canaga|r
    .turnin 1521 >>Entregue Call of Terra - Missão
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Treine |T132212:0|t[Marca do Caçador]
    .train 3044 >>Treine |T132218:0|t[Tiro Arcano]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Treine |T132218:0|t[Tiro Arcano]
    .target Lanka Farshot
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .train 467 >>Treine |T136104:0|t[Espinhos]
    .train 5177 >>Treine |T136006:0|t[Ira]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Treine |T136006:0|t[Ira]
    .target Gart Mistrunner
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Treine |T132269:0|t[Aparar]
    .train 6343 >>Treine |T136105:0|t[Trovoada]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Treine |T132269:0|t[Aparar]
    .target Harutt Thunderhorn
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Antur|r
    .accept 1656 >>Aceite Uma Tarefa Inacabada
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som--h
<< Horde
#name 6-13 Tauren
#version 1
#group Guia de Sobrevivência RestedXP (H)
#subgroup RXP Guia de Sobrevivência 1-20
#defaultfor Tauren
#next 13-15 Floresta de Pinhaprata


step
	#completewith next
    .goto Mulgore,47.35,60.70,120 >>Corra para Bloodhoof Village
    .subzoneskip 222
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r e |cRXP_FRIENDLY_Baine|r
    .accept 743 >>Aceite Perigos da Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.36,62.01
    .turnin 763 >>Entregue Ritos da Mãe Terra
    .accept 745 >>Aceite Dividindo a Terra
    .accept 767 >>Aceite Rito de Visão
    .accept 746 >>Aceite Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    .turnin 1656 >>Entregue Uma Tarefa Inacabada
    .home >>Defina sua Pedra de Regresso em Bloodhoof Village
    .target Innkeeper Kauth
    .bindlocation 222
    .subzoneskip 222,1
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Volte depois se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (7s 1c). Volte depois se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Kennah|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (4s 14c). Volte depois se ainda não tiver o suficiente
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compre um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_dele|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Luz Shots] |cRXP_BUY_dele|r << Hunter
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
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r, |cRXP_FRIENDLY_Harken|r e |cRXP_FRIENDLY_Mull|r
    .accept 766 >>Aceite Mazzranache
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>Entregue Rito de Visão
    .accept 771 >>Aceite Rito de Visão
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>Aceite Caçada ao Rapineiro
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .accept 748 >>Aceite Água Venenosa
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r e |cRXP_FRIENDLY_Harken|r
    .accept 766 >>Aceite Mazzranache
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>Entregue Rito de Visão
    .accept 771 >>Aceite Rito de Visão
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>Aceite Caçada ao Rapineiro
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto faz missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith next
    >>Mate os |cRXP_ENEMY_Prairie Wolves|r e os |cRXP_ENEMY_Adult Plainstriders|r. Saqueie-os para obter seus |cRXP_LOOT_Paws|r e |cRXP_LOOT_Garras|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Colete os |cRXP_PICK_Ambercorns|r. Encontram-se sob as árvores no chão
    .complete 771,2 --Ambercorn (2)
step << Tauren
    #loop
	.goto Mulgore,50.82,66.66,0
	.goto Mulgore,50.82,66.66,50,0
	.goto Mulgore,51.06,63.63,50,0
	.goto Mulgore,52.79,62.06,50,0
	.goto Mulgore,53.98,61.68,50,0
	.goto Mulgore,55.67,62.77,50,0
	.goto Mulgore,56.46,64.93,50,0
	.goto Mulgore,56.02,67.78,50,0
	.goto Mulgore,55.02,69.65,50,0
	.goto Mulgore,52.33,70.07,50,0
	.goto Mulgore,50.40,70.24,50,0
	.goto Mulgore,48.60,69.43,50,0
	.goto Mulgore,45.98,69.70,50,0
	.goto Mulgore,48.58,67.37,50,0
    >>Mate os |cRXP_ENEMY_Prairie Wolves|r e os |cRXP_ENEMY_Adult Plainstriders|r. Saqueie-os para obter seus |cRXP_LOOT_Paws|r e |cRXP_LOOT_Garras|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .turnin 748 >>Entregue Água Venenosa
    .timer 8,Água Venenosa RP
    .accept 754 >>Aceite A Purificação de Casco Invernal
    .target Mull Thunderhorn
step << Tauren
    #completewith next
    >>Colete as |cRXP_PICK_Well Stones|r ao redor do Poço
    .complete 771,1 --Well Stone (2)
step << Tauren
    #label Well
    .goto Mulgore,53.68,66.28
    >>|cRXP_WARN_Use o|r |T135139:0|t[A purificação de Casco Invernal Totem] |cRXP_WARN_no Poço|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Colete as |cRXP_PICK_Well Stones|r ao redor do Poço
    .complete 771,1 --Well Stone (2)
step
    #completewith next
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto faz missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Vá de um lado a outro entre os dois acampamentos. Mate os |cRXP_ENEMY_Palemane Tanners|r, os |cRXP_ENEMY_Palemane Skinners|r e os |cRXP_ENEMY_Palemane Poachers|r
    >>|cRXP_WARN_Cuidado com|r |cRXP_ENEMY_Lança Infame|r |cRXP_WARN_(Nível 9 Raro). É muito difícil de matar.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r. << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dela|r << Warrior
    .vendor >>Lixo de Vendedor
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>Entregue A Purificação de Casco Invernal
    .accept 756 >>Aceite Totem de Chifre Troante
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
    .turnin 745 >>Entregue Dividindo a Terra
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step << !Tauren
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Baine|r
    .turnin 745 >>Entregue Dividindo a Terra
    .target Baine Bloodhoof
step
    .goto Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Vira|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Volte depois se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (7s 1c). Volte depois se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Kennah|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (4s 14c). Volte depois se ainda não tiver o suficiente
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compre um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_dele|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
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
    +|cRXP_WARN_Equipe o|r |T135611:0|t[Bacamarte Ornado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Não siga o lobo que aparece|r
    .turnin 771 >>Entregue Rito de Visão
    .target Zarlman Two-Moons
    .accept 772 >>Aceite Rito de Visão
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
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha pela estrada leste|r
    .accept 749 >>Aceite A caravana devastada
	.unitscan Morin Cloudstalker
step
    #completewith Clawsx
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto faz missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith RavagedCaravan1
    >>Mate os |cRXP_ENEMY_Stalkers|r e os |cRXP_ENEMY_Cougars|r. Saqueie-os para obter as |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
	#completewith Clawsx
	>>Mate os |cRXP_ENEMY_Swoops|r em Mulgore. Saqueie-os para obter as |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
    #label RavagedCaravan1
    .goto Mulgore,53.74,48.17
    >>Clique no |cRXP_PICK_Caixote de Suprimentos Selado|r
    .turnin 749 >>Entregue A Caravana Devastada
    .accept 751 >>Aceite A caravana devastada
step << Tauren
    #loop
    .goto Mulgore,58.1,48.6,0
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    >>Mate os |cRXP_ENEMY_Stalkers|r e os |cRXP_ENEMY_Cougars|r. Saqueie-os para obter as |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    #optional
    #label Clawsx
step
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >>Viaje de volta para Bloodhoof Village
    .subzoneskip 222
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
step
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Entregue Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Volte depois se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (7s 1c). Volte depois se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Kennah|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (4s 14c). Volte depois se ainda não tiver o suficiente
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compre um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_dele|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Moorat|r
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
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Harant|r
    .vendor >>Venda itens e repare
    .target Harant Ironbrace
step
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Entregue Caçada ao Rapineiro
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
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
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .train 8044 >>Treine suas magias de classe
    .target Narm Skychaser
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
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
step
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele|r << Warrior
    .vendor >>Lixo de Comerciante
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_Concluir a obtenção dos itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>Mate os |cRXP_ENEMY_Swoops|r em Mulgore. Saqueie-os para obter as |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_Use o|r |T135139:0|t[Purificação de Chifre Troante Totem] |cRXP_WARN_no Poço|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    .goto Mulgore,31.27,49.87
    >>Mate os |cRXP_ENEMY_Bael'dun Diggers|r e os |cRXP_ENEMY_Bael'dun Appraisers|r. Saqueie-os para obter a |cRXP_LOOT_Picareta do Prospector|r
    .use 4702 >>|cRXP_WARN_Arrebente o|r |T134707:0|t[Picks] |cRXP_WARN_na Forja|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Bael'dun Appraisers|r lançam|r |T135929:0|t[Cura Inferior] |cRXP_WARN_(Lançamento à distância: Curam a si mesmos ou um inimigo próximo abaixo de 50% dos pontos de vida por cerca de 75 pontos de vida)|r
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step
    #loop
	.goto Mulgore,31.74,40.31,0
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>Abate |cRXP_ENEMY_Windfury Vento Witches|r e |cRXP_ENEMY_Windfury Harpies|r. Saque-os para as |cRXP_LOOT_Garras|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >>Entre na caverna logo ao norte das Fúria dos Ventos Harpies
step
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Entregue Rito de Visão
    .accept 773 >>Aceite Rito de Sabedoria
    .target Seer Wiserunner
step
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_Destruir|r |T134712:0|t[Água dos Videntes] |cRXP_WARN_já que você não precisará dela|r
step
    #completewith SacredBurial
    >>|cRXP_WARN_Concluir a obtenção dos itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith next
	>>Mate os |cRXP_ENEMY_Swoops|r em Mulgore. Saqueie-os para obter as |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Aceite Sepultamento Sagrado
    .target Lorekeeper Raintotem
step
    #completewith next
    >>Abate |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito Ancestral|r
    .turnin 773 >>Entregue Rito de Sabedoria
    .accept 775 >>Aceite Siga para o Penhasco do Trovão
    .target Ancestral Spirit
step
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>Abate |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Entregue Sepultamento Sagrado
    .target Lorekeeper Raintotem
step
    #completewith next
    >>|cRXP_WARN_Concluir a obtenção dos itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #loop
	.goto Mulgore,51.00,18.40,0
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
	.goto Mulgore,59.52,23.36,60,0
	>>Abate |cRXP_ENEMY_Swoops|r. Saque-os para as |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #loop
    .goto Mulgore,55.06,32.48,0
    .goto Mulgore,55.06,32.48,60,0
    .goto Mulgore,53.84,40.80,60,0
    .goto Mulgore,53.19,45.16,60,0
    .goto Mulgore,57.45,48.86,60,0
    .goto Mulgore,59.04,52.79,60,0
    .goto Mulgore,59.12,58.09,60,0
    .goto Mulgore,48.67,44.84,60,0
    >>|cRXP_WARN_Concluir a obtenção dos itens para Mazzranache|r
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3020 >>Farme até 3020+/6500 XP
    .isQuestComplete 761
    .isQuestComplete 766
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3720 >>Farme até 3720+/6500 XP
    .isQuestComplete 761
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3700 >>Farme até 3700+/6500 XP
    .isQuestComplete 766
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+4400 >>Farme até 4400+/6500 XP
step << !Druid
    #completewith Bloodhooffinalturnins1
    .hs >>Use a Pedra de Retorno para ir a Bloodhoof Village
    .use 6948
    .bindlocation 222,1
    .subzoneskip 222
step << Druid
    #completewith Bloodhooffinalturnins1
    .goto Mulgore,47.33,57.17,120 >>Viaje de volta para Bloodhoof Village
    .subzoneskip 222
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    .vendor >>Lixo de Vendedor
    .target Innkeeper Kauth
    .isQuestAvailable 870
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Entregue Escavação Anã
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Entregue Purificação de Chifre Troante
    .timer 8,Purificação de Chifre Troante RP
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Entregue Caçada ao Rapineiro
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r e |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>Entregue Escavação Anã
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Entregue Purificação de Chifre Troante
    .timer 8,Purificação de Chifre Troante RP
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r e |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Entregue Escavação Anã
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r e |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Entregue Escavação Anã
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
step
    #optional
    #label Bloodhoofturnins1
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Tiros Pesados] |cRXP_BUY_dele|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Entregue Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 6546 >>Treine suas magias de classe
    .target Krang Stonehoof
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Aceite Call of Fogo
    .trainer >>Treine suas magias de classe
    .target Narm Skychaser
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Aceite Adestramento da Fera - Missão
    .trainer >>Treine suas magias de classe
    .target Yaw Sharpmane
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .trainer >>Treine suas magias de classe
    .accept 5928 >>Aceite Heeding the Call - Missão - Missão
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
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
    .use 15914 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Pinote Adulto|r |cRXP_WARN_ao alcance máximo|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>Entregue Adestramento da Fera - Missão
    .accept 6087 >>Aceite Adestramento da Fera - Missão
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto Mulgore,49.49,42.27,0
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27,50,0
    .use 15915 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Espreitador-da-pradaria|r |cRXP_WARN_ao alcance máximo|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>Entregue Adestramento da Fera - Missão
    .accept 6088 >>Aceite Adestramento da Fera - Missão
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto Mulgore,47.25,41.33,0
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .use 15916 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Rapineiro|r |cRXP_WARN_ao alcance máximo e relance-o imediatamente se for derrubado|r
    >>|cRXP_WARN_Se falhar e esgotar as Cargas de Bastão de Adestramento, abandone a missão, depois pegue-a novamente e volte|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>Entregue Adestramento da Fera - Missão
    .accept 6089 >>Aceite Treinamento da Fera - Missão
    .target Yaw Sharpmane
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r. << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dela|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha pela estrada leste|r
    .turnin 751 >>Entregue A Caravana Devastada
    .accept 764 >>Aceite The Venture Co
    .accept 765 >>Aceite Supervisor Geringonça
	.unitscan Morin Cloudstalker
    .group
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha pela estrada leste|r
    .turnin 751 >>Entregue A Caravana Devastada
	.unitscan Morin Cloudstalker
step
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Vá para Empreendimentos S.A. Mina
    .group
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Venture Co. Workers|r e os |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
    .group 2
step
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Mate |cRXP_ENEMY_Supervisor Geringonça|r. Saque-o para obter sua |cRXP_LOOT_Prancheta|r
    >>|cRXP_WARN_Corra para dentro da mina e abrace o lado direito/leste para alcançá-lo|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Geringonça
    .group 2
step
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    >>Mate os |cRXP_ENEMY_Venture Co. Workers|r e os |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
    .group 2
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha pela estrada leste|r
    .turnin 764 >>Entregue Empreendimentos S.A.
    .turnin 765 >>Entregue Supervisor Geringonça
	.unitscan Morin Cloudstalker
    .group
step << Hunter
    #loop
    .goto Mulgore,67.19,63.78,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .goto Mulgore,66.34,67.01,50,0
    .cast 1515 >>Dome o |cRXP_ENEMY_Lobo-da-pradaria Alfa|r
    >>|cRXP_WARN_Isso lhe permitirá treinar|r |T132278:0|t[Morder Rank 2]
    .mob Prairie Wolf Alpha
step
    #completewith next
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >>Corra para The Barrens
step
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Aprenda a rota de voo para Camp Taurajo
    .target Omusa Thunderhorn
    .isQuestAvailable 5922
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirge Chifre Austero|r
    .accept 854 >>Aceite Jornada para a Encruzilhada
    .target Kirge Sternhorn
step
    #completewith next
    .subzone 380 >>Viaje para o norte em direção à Encruzilhada
    >>|cRXP_WARN_Fique na estrada. Senão você pode chamar inimigos de nível alto|r
 step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Gazrog|r |cRXP_FRIENDLY_Thork|r e |cRXP_FRIENDLY_Jahan|r
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .accept 844 >>Aceite A Ameaça Pinote
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.00
    .accept 869 >>Aceite Na Cola dos Larápios
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 854 >>Entregue Jornada para a Encruzilhada - Missão << Tauren
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos para a Encruzilhada
    .target +Thork
    .goto The Barrens,51.50,30.87
    .accept 6361 >>Aceite Um Pacote de Peles
    .target +Jahan Hawkwing
    .goto The Barrens,51.21,29.05
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .turnin 6361 >>Entregue Um Pacote de Peles
    .accept 6362 >>Aceite Voo para o Penhasco do Trovão
    .target Devrak
step << Hunter/Druid
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Voe para Trovão Blefe
    .target Devrak
    .zoneskip Thunder Bluff
step << Hunter/Druid
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Entregue Voo para o Penhasco do Trovão
    .accept 6363 >>Aceite Tal, o Mestre de Mantícoras
    .target Ahanu
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Retorno em Trovão Blefe
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5932
step << Hunter/Druid
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Entregue Siga para o Penhasco do Trovão
    .target Cairne Bloodhoof
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holt|r
	.turnin 6089 >>Entregue Treinamento da Fera - Missão
    .target Holt Thunderhorn
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa|r
    .train 24547 >>Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
step << Hunter
    #completewith ReturntoJahan
    +|cRXP_WARN_Arrastar|r |T132162:0|t[Treinamento de Feras] |cRXP_WARN_Nas suas barras de ação. Ensine habilidades para seu mascote|r
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>Entregue Heeding the Call - Missão
    .accept 5922 >>Aceite Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>Aceite Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite|r
    .turnin 5922 >>Vá para Moonglade
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
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite|r
    .turnin 5930 >>Entregue Espírito do Grande Urso
    .accept 5932 >>Aceite De Volta para Trovão Blefe - Missão
    .target Dendrite Starblaze
step << Druid
    #completewith DruidBearForm
    .hs >>Use sua Pedra de Retorno para ir a Penhasco do Trovão
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >>Voe para Trovão Blefe
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>Entregue De Volta para Trovão Blefe - Missão
    .accept 6002 >>Aceite Corpo e Coração
    .target Turak Runetotem
step << Druid/Hunter
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Entregue Tal, o Mestre de Mantícoras
    .accept 6364 >>Aceite Fale Novamente com Jahan
    .target Tal
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_Isto desbloqueará uma busca fácil. Se você já tem 2 profissões, pule este passo|r
    .train 8613 >>Treine |T134366:0|t[Esfolamento]
    .target Mooranta
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veren|r
    .accept 768 >>Aceite Em Busca de Couro
    .target Veren Tallstrider
    .skill skinning,1,1
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    .collect 2318,12,768,1 >>|cRXP_BUY_Compre Doze|r |T134252:0|t[Couro Leve] |cRXP_BUY_da Casa de Leilões|r
    .target Auctioneer Stampi
    .skill skinning,1,1
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veren|r
    .turnin 768 >>Entregue Em Busca de Couro
    .target Veren Tallstrider
    .skill skinning,1,1
step << Hunter
    #completewith ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para a Encruzilhada
    .target Tal
    .zoneskip The Barrens
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Tal
    .zoneskip The Barrens
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>|cRXP_WARN_Usar|r |T132857:0|t[Cenarion Lunardust] |cRXP_WARN_na|r |cRXP_PICK_Luniscante Pedra|r
    >>Abate o |cRXP_ENEMY_Lunagarra|r quando ele aparece. Fale com o |cRXP_FRIENDLY_Lunagarra Espírito|r depois
    >>|cRXP_WARN_Cuidado! |cRXP_ENEMY_Lunagarra|r conjura|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    >>|cRXP_WARN_Evite o|r |cRXP_ENEMY_Thunderheads|r |cRXP_WARN_na área|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
    .skipgossip
step << Druid
    #completewith next
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Voe para Trovão Blefe
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Entregue Corpo e Coração
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para a Encruzilhada
    .target Tal
    .zoneskip The Barrens
step << Hunter/Druid
    #label ReturntoJahan
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Entregue Fale Novamente com Jahan
    .target Jahan Hawkwing
step << Shaman/Druid
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Compre um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_dele|r
    .collect 854,1,784,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Nargal Deatheye
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #optional
    #completewith FurlScornbrow
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate] |cRXP_WARN_quando você estiver no nível 11|r
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Warrior
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Compre uma|r |T133477:0|t[Maça Gigante] |cRXP_BUY_dele|r
    .collect 1197,1,784,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Nargal Deatheye
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #optional
    #completewith FurlScornbrow
    +|cRXP_WARN_Equipe a|r |T133477:0|t[Maça Gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Uthrok|r
    >>|cRXP_BUY_Compre bastante|r |T132384:0|t[Heavy Shots] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Você não conseguirá comprar mais por um tempo!|r
    .collect 2519,1600,6061,1 --Heavy Shot (1600)
    .vendor >>Lixo de Vendedor
    .target Uthrok
    --Tauren Hunter gun not worth? Making them train bows in Org
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 2984 >>Entregue Call of Fogo
    .accept 1524 >>Aceite Call of Fogo
    .target Kranal Fiss
step << Shaman
    #completewith CallofFire2
    .zone Durotar >>Vá para Durotar
    .zoneskip Durotar
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
    .goto Durotar,39.16,58.56,10 >>Siga o caminho montanha acima até |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Tome cuidado para não cair da montanha, pois o caminho é muito estreito. Você pode morrer se cair|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entregue Call of Fogo
    .accept 1525 >>Aceite Call of Fogo
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >>Siga o caminho descendo a montanha
    >>|cRXP_WARN_Tome cuidado para não cair da montanha, pois o caminho é muito estreito. Você pode morrer se cair|r
step << Shaman
    #completewith next
    .zone The Barrens >>Vá para As Savanas
    .zoneskip The Barrens
step << Shaman
    #loop
    .goto The Barrens,53.57,25.51,0
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51,50,0
    >>Abate o |cRXP_ENEMY_Ladravaz Crinavalha|r ou o |cRXP_ENEMY_Tecespinho Crinavalha|r. Saqueie-os para obter um |cRXP_LOOT_Fire Piche|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step << Shaman
    #completewith FurlScornbrow
    .zone Durotar >>Vá para Durotar
step << !Shaman
    #completewith FurlScornbrow
    .zone Durotar >>Vá para Durotar
step
    #optional
    .abandon 764 >>Abandone Empreendimentos S.A.
    .abandon 765 >>Abandone Supervisor Geringonça
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Viaje para cima da torre em direção a Furl
step
    #label FurlScornbrow
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Aceite Carregar Seu Peso
    .target Furl Scornbrow
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    .vendor >>Lixo de Comerciante
    .home >>Defina sua Pedra de Retorno em Razor Hill
    .bindlocation 362
    .isQuestAvailable 815
    .group
step
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torka|r
    .accept 815 >>Aceite Quebrar alguns ovos
    .target Cook Torka
step
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_Você pode falar com ele pelo lado de fora ou de cima do bunker|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gar'thok|r
    .accept 784 >>Aceite Aniquile os invasores
    .accept 837 >>Aceite Invasão
    .target Gar'thok
step
    #completewith Benedict
    .goto Durotar,58.08,57.13,120 >>Vá para Bastilha Tiragarde
 step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>Siga em direção ao segundo andar da fortaleza
step
    #completewith AgedEnvelope
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Mate o |cRXP_ENEMY_Tenente Bento|r. Saqueie-o para pegar a |cRXP_LOOT_Chave|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
 step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>|cRXP_WARN_Suba as escadas da fortaleza|r
    >>Abra o |cRXP_PICK_Baú do Bento|r. Saqueie-o para pegar o |T133471:0|t[|cRXP_LOOT_Envelope Envelhecido|r]
    >>Use o |T133471:0|t[|cRXP_LOOT_Envelope Envelhecido|r] para iniciar a missão
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Aceite As Ordens do Almirante
    .use 4881
step
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Sailor
    .mob +Kul Tiras Marine
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #label ScrapsFinished
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #completewith next
    .goto Durotar,52.06,68.30,50 >>Vá para Aldeia Sen'jin
    .subzoneskip 367
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Aceite O Fardo do Peão
    .target Ukor
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r e |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Aceite Presa prática
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Aceite Um Espírito Solvente
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .accept 808 >>Aceite O Crânio de Minshina
    .accept 826 >>Aceite Zalazane
    .accept 823 >>Aceite Relatório para Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith TaillasherEggs
    >>Mate os |cRXP_ENEMY_Pygmy Surf Crawlers|r e os |cRXP_ENEMY_Surf Crawlers|r. Saqueie-os por seu |cRXP_LOOT_Mucus|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Tigers|r. Saque-os para o |cRXP_LOOT_Fur|r. Isso não precisa ser terminado agora
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    #label TaillasherEggs
    .goto Durotar,59.49,83.77,0
    .goto Durotar,60.28,80.02,60,0
    .goto Durotar,60.28,82.74,60,0
    .goto Durotar,59.62,84.76,60,0
    .goto Durotar,60.02,87.94,60,0
    .goto Durotar,59.06,90.71,60,0
    .goto Durotar,61.50,91.55,60,0
    .goto Durotar,61.88,95.43,60,0
    .goto Durotar,62.69,97.21,60,0
    .goto Durotar,63.00,94.40,60,0
    .goto Durotar,59.85,89.56,60,0
    .goto Durotar,59.49,83.77,60,0
    >>Pegue os |cRXP_PICK_Ovos de Açoitacauda|r que estão no chão
    >>|cRXP_WARN_Geralmente guardado por um|r |cRXP_ENEMY_Açoitacauda Garrassangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith MinshinasSkull
    .goto Durotar,67.06,87.21,120 >>Nade para a ilha principal
step
    #completewith MinshinasSkull
    >>Mate os |cRXP_ENEMY_Pygmy Surf Crawlers|r e os |cRXP_ENEMY_Surf Crawlers|r. Saqueie-os por seu |cRXP_LOOT_Mucus|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith MinshinasSkull
    >>Mate os |cRXP_ENEMY_Hexed Trolls|r e os |cRXP_ENEMY_Voodoo Trolls|r.
    >>|cRXP_WARN_Cuidado!|r |cRXP_ENEMY_Vodu Trolls|r |cRXP_WARN_podem conjurar|r |T136052:0|t[Onda Curativa]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Mate |cRXP_ENEMY_Zalazane|r. Saque-o por sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Guarde seu|r |T136026:0|t[Choque Terreno] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Shaman
    >>|cRXP_WARN_Guarde seu|r |T132155:0|t[Esfaquear] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Rogue
    >>|cRXP_WARN_Cuidado. Ele pode conjurar|r |T136052:0|t[Onda Curativa]|cRXP_WARN_. Usar seu|r |T134829:0|t[Poção] |cRXP_WARN_se necessário|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>Saque um dos |cRXP_LOOT_Crânios|r que estão no chão
    .complete 808,1 --Minshina's Skull (1)
step
    .goto Durotar,67.4,87.8
    >>Mate |cRXP_ENEMY_Zalazane|r. Saque-o por sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Guarde seu|r |T136026:0|t[Choque Terreno] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Shaman
    >>|cRXP_WARN_Guarde seu|r |T132155:0|t[Esfaquear] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Rogue
    >>|cRXP_WARN_Cuidado. Ele pode conjurar|r |T136052:0|t[Onda Curativa]|cRXP_WARN_. Usar seu|r |T134829:0|t[Poção] |cRXP_WARN_se necessário|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Tigers|r. Saqueie-os para obter seu |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
    .goto Durotar,67.23,88.76,0
    .goto Durotar,67.23,88.76,40,0
    .goto Durotar,66.52,87.74,40,0
    .goto Durotar,65.94,86.72,40,0
    .goto Durotar,65.90,84.04,40,0
    .goto Durotar,65.88,82.85,40,0
    .goto Durotar,67.38,82.61,40,0
    .goto Durotar,68.42,82.43,40,0
    .goto Durotar,68.50,84.32,40,0
    .goto Durotar,68.47,86.77,40,0
    .goto Durotar,67.23,88.00,40,0
    >>Mate os |cRXP_ENEMY_Hexed Trolls|r e os |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Pygmy Surf Crawlers|r e os |cRXP_ENEMY_Surf Crawlers|r. Saqueie-os por seu |cRXP_LOOT_Mucus|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    >>|cRXP_WARN_Vá para as ilhas do sul se você não estiver quase terminando esta missão neste ponto. Muitos|r |cRXP_ENEMY_Rastejadores|r |cRXP_WARN_e|r |cRXP_ENEMY_Makruras|r |cRXP_WARN_podem ser encontrados lá|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #loop
    .goto Durotar,59.79,83.44,0
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44,50,0
    >>Mate os |cRXP_ENEMY_Tigers|r. Saqueie-os para obter seu |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto Durotar,59.64,73.84,0
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    >>Mate os |cRXP_ENEMY_Pygmy Surf Crawlers|r e os |cRXP_ENEMY_Surf Crawlers|r. Saqueie-os por seu |cRXP_LOOT_Mucus|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >>Vá para Sen'Jin Village
    .subzoneskip 367
step
    #completewith next
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_WARN_Você pode falar com ele de fora da cabana|r
    .vendor >>Venda itens e repare
    .target Trayexir
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r e |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Entregue O Crânio de Minshina
    .turnin 826,2 >>Entregue Zalazane << Shaman
    .turnin 826 >>Entregue Zalazane << !Shaman
    .target +Master Gadrin
    .goto Durotar,55.95,74.73
    .turnin 818 >>Entregue Um espírito solvente
    .target +Master Vornal
    .goto Durotar,55.95,74.39
    .turnin 817 >>Entregue Presa Prática
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
step
    #completewith Stolensupplies
    +|cRXP_WARN_Vincule seus|r |T133728:0|t[Faintly Glowing Crânio] |cRXP_WARN_e|r |T134712:0|t[Cola Grudenta à Beça]|cRXP_WARN_. Guarde-os para situações de emergência|r
step
    #loop
    .goto Durotar,49.22,48.96,0
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96,30,0
    >>Mate os |cRXP_ENEMY_Razormane Quilboars|r e os |cRXP_ENEMY_Razormane Batedores|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step
    #label Encroachment
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,50,0
	.goto Durotar,44.49,37.47,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto Durotar,41.64,38.27,50,0
	.goto Durotar,41.94,40.46,50,0
	.goto Durotar,43.30,40.40,50,0
    >>Mate os |cRXP_ENEMY_Razormane Dustrunners|r e os |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Torka|r, |cRXP_FRIENDLY_Orgnil|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entregue Quebre Alguns Ovos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .accept 806 >>Aceite Tempestades Sombrias
    .target +Orgnil Soulscar
    .goto Durotar,52.25,43.18
    .turnin 784 >>Entregue Subjuguem os Traidores
    .turnin 837 >>Entregue Encroachment
    .turnin 830 >>Entregue As Ordens do Almirante
    .accept 831 >>Aceite As Ordens do Almirante
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Torka|r, |cRXP_FRIENDLY_Orgnil|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entregue Quebre Alguns Ovos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .target +Orgnil Soulscar
    .goto Durotar,52.25,43.18
    .turnin 784 >>Entregue Subjuguem os Traidores
    .turnin 837 >>Entregue Encroachment
    .turnin 830 >>Entregue As Ordens do Almirante
    .accept 831 >>Aceite As Ordens do Almirante
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Thotar|r
    .train 14281 >>Treine suas magias de classe
    .target Thotar
    .xp <12,1
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    .turnin 2161 >>Entregue O Fardo do Peão
    .target Innkeeper Grosk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Compre um ou mais|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_de|r |cRXP_BUY_dele|r
    .collect 4496,1,835,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 7384 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 1535 >>Treine suas magias de classe
    .target Swart
    .xp <12,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
    .xp <10,1
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Viaje para a torre
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Viaje para cima da torre em direção a Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Entregue Carregue Seu Peso
    .target Furl Scornbrow
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Aceite Em memória
    .target Misha Tor'kren
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >>Vá até Rezlak
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Aceite Ventos do deserto
    .target Rezlak
step
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    >>Saqueie os |cRXP_PICK_Sacos de Suprimentos Roubados|r do chão
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entregue Ventos do Deserto
    .accept 835 >>Aceite Faça o que eu digo...
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >>Viaje pela caverna
step
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Mate |cRXP_ENEMY_Selvagem Sopravento|r e |cRXP_ENEMY_Bruxa da Tempestade Sopravento|r
    >>|cRXP_WARN_Estes inimigos fogem. Cuidado para não fazer pull duplo|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step << Tauren Hunter
    #completewith next
    +|cRXP_WARN_Escolha o|r |T135493:0|t[Arco Curto de Nogueira] |cRXP_WARN_como sua recompensa de missão e guarde-o. Você obterá treinamento de arco em Orgrimmar|r
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Entregue Faça o que Eu Digo
    .target Rezlak
step
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_Isso iniciará um temporizador de 45 minutos para a missão. NÃO fique AFK ou desconecte-se pelos próximos 15 minutos|r
    .accept 812 >>Aceite Busca da cura
    .target Rhinag
step
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Pule para dentro do Desfiladeiro do Trovão << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_Lance|r |T136095:0|t[Dispensar Ajudante] |cRXP_WARN_e depois pule para Serra do Trovão|r << Hunter
    +|cRXP_WARN_Dispense seu diabrete e depois pule para Serra do Trovão|r << Warlock
    .group
step
    .goto Durotar,42.13,26.67
    >>Mate |cRXP_ENEMY_Bulho Tempesnigra|r e saqueie-o para pegar a |cRXP_LOOT_Garra|r dele
    >>|cRXP_WARN_Tenha muito cuidado. Mate o|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_e o|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_nas costas antes de puxá-lo|r
    >>|cRXP_WARN_Puxe-o para trás em direção ao|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_que você acabou de matar. Caso contrário, você pode atrair burning blade mobs adicionais|r
    >>|cRXP_WARN_Abate o diabrete primeiro. Usar|r |T132155:0|t[Esfaquear] |cRXP_WARN_quando ele lançar|r |T136169:0|t[Sifão da Alma] << Rogue
    >>|cRXP_WARN_Abate o diabrete primeiro. Usar|r |T136026:0|t[Choque Terreno] |cRXP_WARN_quando ele lançar|r |T136169:0|t[Sifão da Alma] << Shaman
    >>|cRXP_WARN_Você pode lançar|r |T136071:0|t[Polimorfia] |cRXP_WARN_em|r |cRXP_ENEMY_Bulho Tempesnigra|r |cRXP_WARN_e matar o|r |cRXP_ENEMY_Diabrete|r |cRXP_WARN_primeiro|r << Mage
    >>|cRXP_WARN_Mate o diabrete primeiro.|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use uma|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma e seu|r |T133728:0|t[Crânio Levemente Faiscante] |cRXP_WARN_se necessário|r << !Warlock
    >>|cRXP_WARN_Use uma|r |T134829:0|t[Poção Menor de Cura], |T133728:0|t[Pedra de Vida Menor] |cRXP_WARN_se tiver uma e seu|r |T133728:0|t[Crânio Levemente Faiscante] |cRXP_WARN_se necessário|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
    .group 2
    --VV Add video / description for Druid / tell priest/lock to fear if pulled back and area is clear?
step << Druid
    #completewith next
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
    .xp <12,1
    .isQuestComplete 806
    .zoneskip Moonglade
    .group
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 8936 >>Treine suas magias de classe
    .target Loganaar
    .xp <12,1
    .isQuestComplete 806
    .group
step
    #completewith next
    .hs >>Use a Pedra Lunar para voltar a Razor Hill
    .cooldown item,6948,>0
    .isQuestComplete 806
    .use 6948
    .group
step << Shaman
    #completewith next
    .hs >>Use a Pedra Lunar para voltar a Razor Hill
    .cooldown item,6948,>0
    .use 6948
    .solo
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    .vendor >>Lixo de Comerciante
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Warrior
    .collect 1179,20,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (20)
    .collect 2287,20,818,1 << Rogue/Warrior --Haunch of Meat (20)
    .target Innkeeper Grosk
    .money <0.05
    .group
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Entregar em Tempestades Sombrias
    .accept 828 >>Aceite Margoz
    .target Orgnil Soulscar
    .isQuestComplete 806
    .group
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orgnil|r
    .accept 828 >>Aceite Margoz
    .target Orgnil Soulscar
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Entregue Encroachment
    .target Gar'Thok
    .group
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Thotar|r
    .train 14281 >>Treine suas magias de classe
    .target Thotar
    .xp <12,1
    .group
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 7384 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <12,1
    .group
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 1535 >>Treine suas magias de classe
    .target Swart
    .xp <12,1
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >>Vá para Margoz
    .isQuestTurnedIn 806
    .group
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Entregue Margoz
    .accept 827 >>Aceite A Rocha da Caveira
    .target Margoz
    .isQuestTurnedIn 806
    .group
step << Shaman
    #completewith Collars1
    .goto Durotar,53.18,29.15,50 >>Vá para a Caverna de Lufada de Poeira
    .solo
step
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >>Vá para a Caverna de Lufada de Poeira
    .isQuestTurnedIn 806
    .group
step << Shaman
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mate os |cRXP_ENEMY_Thugs|r e os |cRXP_ENEMY_Neophytes|r. Saque-os para obter os |cRXP_LOOT_Collars|r
    >>Mate os |cRXP_ENEMY_Cultists|r. Saqueie-os para obter uma |cRXP_LOOT_Reagent Pouch|r
    .complete 827,1 --Searing Collar (6)
    .mob +Burning Blade Thug
    .mob +Burning Blade Neophyte
    .complete 1525,2 --Reagent Pouch (1)
    .mob +Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << !Shaman
    #label Collars1
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mate os |cRXP_ENEMY_Burning Blade Thugs|r, os |cRXP_ENEMY_Neophytes|r e os |cRXP_ENEMY_Cultists|r. Saqueie-os para obter os |cRXP_LOOT_Collars|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << Shaman
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mate os |cRXP_ENEMY_Cultists|r. Saqueie-os para obter uma |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
    .solo
step << skip --logout skip Shaman
    .goto Durotar,53.03,26.82
    .goto Durotar,47.31,17.89,30 >>|cRXP_WARN_Salte para a rocha. Realize um pulo de logout posicionando seu personagem até parecer que está flutuando, depois saindo e voltando|r
    .link https://www.youtube.com/watch?v=9A6LHcLZeTU&ab >> |cRXP_WARN_CLICK HERE for an example|r
    .solo
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >>Vá para Margoz
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Entregue A Rocha da Caveira
    .accept 829 >>Aceite Neeru Cortafogo
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50 >>Entre em Orgrimmar
    .zoneskip Orgrimmar
step
    .goto Orgrimmar,45.13,63.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fp Orgrimmar >>Aprenda a rota de voo para Orgrimmar
    .target Doras
    .isQuestAvailable 809
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entregue As Ordens do Almirante
    .target Nazgrel
step << Shaman
    #label Shaman12training
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 547 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <12,1
step
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Kor'ghan|r
    .accept 813 >>Aceite Em busca do antídoto
    .target Kor'ghan
    .isOnQuest 812
step
    #completewith FindingAntitode
    >>|cRXP_WARN_Abandone Busca da cura. Isso removerá o limite de tempo da missão, mas você ainda poderá realizá-la|r
    .abandon 812 >>Abandone Busca da cura
    .isOnQuest 812
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Entregue Neeru Cortafogo
    .accept 809 >>Aceite Ak'Zeloth
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Hunter
    #completewith HunterTraining
    .goto Orgrimmar,68.02,38.69,30 >>Vá para o Vale de Honra
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24556 >>Treine as magias do seu mascote
    .target Xao'tsu
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.06,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 14281 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Treine Arcos
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,813,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #label HunterTraining
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Zendo'jian|r
    .collect 2515,1600,828,1 << Hunter --Sharp Arrow (1600)
    .collect 5439,1,813,1 << Hunter --Small Quiver (1)
    .target Ghrawt
step << Hunter
    #optional
    #completewith FindingAntitode
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Compre um|r |T133477:0|t[Maça Gigante] |cRXP_BUY_dele|r
    .collect 1197,1,813,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Warrior
    #optional
    #completewith FindingAntitode
    +|cRXP_WARN_Equipe a|r |T133477:0|t[Maça Gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman/Druid
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r Urtharo|cRXP_FRIENDLY_|r. Compre um|cRXP_BUY_ |T135154:0|t[Cajado de Combate]|r |cRXP_BUY_dele|r
    .collect 854,1,813,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #optional
    #completewith FindingAntitode
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step
    #label LeaveOrg2
    #completewith Conscript
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step
    #label FindingAntitode
    #loop
    .goto Durotar,38.89,16.91,0
    .goto Durotar,42.47,19.99,50,0
    .goto Durotar,41.07,19.85,50,0
    .goto Durotar,40.21,17.21,50,0
    .goto Durotar,38.89,16.91,50,0
    .goto Durotar,38.13,19.90,50,0
    .goto Durotar,38.67,22.13,50,0
    .goto Durotar,36.91,25.63,50,0
    .goto Durotar,36.64,28.18,50,0
    .goto Durotar,36.40,30.95,50,0
    >>Mate |cRXP_ENEMY_Escorpídeos Caudaçonha|r. Pegue deles as |cRXP_LOOT_Vesículas de Veneno de Caudaçonha|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .isOnQuest 813
step << !Shaman
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Vá ao sul ao longo do rio em direção ao Far Vigiar Post
    >>Mate |cRXP_ENEMY_Crocolisco Bocarrão|r no caminho. Saqueie-os para pegar |cRXP_LOOT_Amuleto de Kron|r
    >>|cRXP_WARN_Pule e abandone esta missão se o item não cair|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith CallofFire3
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.51,51.48,50,0
    .goto Durotar,35.16,56.43,50,0
    >>Viaje pelo sul ao lado do rio. Mate os |cRXP_ENEMY_Crocodilianos Deimogorja|r no caminho. Saqueie-os para obter o |cRXP_LOOT_Amuleto de Kron|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
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
    .goto Durotar,39.16,58.56,10 >>Siga pelo caminho que sobe a montanha em direção a |cRXP_FRIENDLY_Telf Joolam|r
    >>|cRXP_WARN_Tome cuidado para não cair da montanha, pois o caminho é muito estreito. Você pode morrer se cair|r
step << Shaman
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Entregue Call of Fogo
    .accept 1526 >>Aceite Call of Fogo
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Use a|r |T134732:0|t[Sapta do Fogo]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Mate a |cRXP_ENEMY_Manifestação Menor do Fogo|r. Saqueie-o para obter uma |cRXP_LOOT_Brasa Brilhante|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Clique em |cRXP_PICK_Braseiro|r no chão
    .turnin 1526 >>Entregue Call of Fogo
    .accept 1527 >>Aceite Call of Fogo
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >>Siga o caminho descendo a montanha
    >>|cRXP_WARN_Tome cuidado para não cair da montanha, pois o caminho é muito estreito. Você pode morrer se cair|r
step << Shaman
    .goto Durotar,34.92,54.87,50,0
    .goto Durotar,34.58,51.64,50,0
    .goto Durotar,34.33,48.97,50,0
    .goto Durotar,34.31,44.24
    >>Mate os |cRXP_ENEMY_Dreadmaw Crocolisks|r. Saqueie-os para obter |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Pule e abandone esta missão se o item não cair|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Entregue Em memória
    .target Misha Tor'kren
    .isQuestComplete 816
step
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >>Vá para Far Vigiar Post
    .zoneskip The Barrens
step
    #label Conscript
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Conscrição da Encruzilhada
    .target Kargal Battlescar
step
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entregue Ak'Zeloth
    .accept 924 >>Aceite A Semente Demoníaca
    .isOnQuest 809
    .target Ak'Zeloth
    .group
step
    .goto The Barrens,62.34,20.03
    .turnin 926 >>Entregue Pedra do Poder Defeituosa
    >>|cRXP_WARN_Saque a|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_ao lado de|r |cRXP_FRIENDLY_Ak'Zeloth|r
    >>|cRXP_WARN_Este item tem um temporizador de 30 minutos, portanto certifique-se de ser rápido|r
    .isOnQuest 924
    .group
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Entregue Call of Fogo
    .target Kranal Fiss
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >>Saqueie |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão. Se não estiver disponível, você o obterá mais tarde
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step
    #completewith DemonSeed
    >>Abate os |cRXP_ENEMY_Plainstriders|r. Saqueie-os pelos |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >>Vá para o topo da montanha
    .isOnQuest 924
step
    #completewith next
    +|cRXP_WARN_Cuidado se|r |cRXP_ENEMY_Rathorian|r |cRXP_WARN_está ativo, ele é um raro de nível 15. Esteja pronto para usar seu|r |T133728:0|t[Crânio Fracamente Brilhante] |cRXP_WARN_e|r |T134712:0|t[Cola Grudenta à Beça] |cRXP_WARN_se necessário|r
    .unitscan Rathorian
step
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>Clique com o botão direito no |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Certifique-se de que tem um|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_(30 minutos de duração) consigo|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,40 >>Desça a montanha de onde veio
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    >>Abate os |cRXP_ENEMY_Plainstriders|r. Saqueie-os pelos |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Water Seekers|r, os |cRXP_ENEMY_Thornweavers|r e os |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >>Pegue o |cRXP_PICK_Barril Vazio do Chen|r do chão e comece a missão
    >>|cRXP_WARN_Se não estiver disponível, você o receberá mais tarde|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,53.63,24.50,50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
    >>Abate os |cRXP_ENEMY_Water Seekers|r, os |cRXP_ENEMY_Thornweavers|r e os |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    #loop
    .goto The Barrens,53.71,29.19,0
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19,80,0
    >>Abate os |cRXP_ENEMY_Plainstriders|r. Saqueie-os pelos |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Thork|r
    .turnin 844 >>Entregue A Ameaça Pinote
    .turnin 842 >>Entregue Encruzilhada Conscription
    .accept 845 >>Aceite As Zevras
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 871 >>Entregue A Ofensiva do Posto Remoto
    .accept 872 >>Aceite Em Defesa do Posto Remoto
    .target +Thork
    .goto The Barrens,51.50,30.87
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
step << Druid
    #completewith next
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
    .xp <12,1
    .cooldown item,6948,>0
    .zoneskip Moonglade
    .solo
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 8936 >>Treine suas magias de classe
    .target Loganaar
    .xp <12,1
    .cooldown item,6948,>0
    .solo
step << Druid
    #completewith FlytoOrg
    .hs >>Vá para Encruzilhada
    .cooldown item,6948,>0
    .xp <12,1
    .use 6948
    .solo
    .zoneskip The Barrens
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1200,398,1 << Hunter --Sharp Arrow (1200)
    .target Barg
    .itemcount 2515,<800 << Hunter
step << Shaman/Warrior
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Voe para Trovão Blefe
    .zoneskip Thunder Bluff
step << Shaman/Warrior
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Entregue Voo para o Penhasco do Trovão
    .accept 6363 >>Aceite Tal, o Mestre de Mantícoras
    .target Ahanu
step << Shaman/Warrior
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Entregue Siga para o Penhasco do Trovão
    .target Cairne Bloodhoof
step << Shaman/Warrior
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Entregue Tal, o Mestre de Mantícoras
    .accept 6364 >>Aceite Fale Novamente com Jahan
    .target Tal
step << Shaman/Warrior
    #completewith ReturntoJahan2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para a Encruzilhada
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
step << Shaman/Warrior
    #completewith next
    .hs >>Vá para Encruzilhada
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 380,1
    .subzoneskip 380
step << Shaman/Warrior
    #label ReturntoJahan2
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Entregue Fale Novamente com Jahan
    .target Jahan Hawkwing
step
    #label FlytoOrg
    #completewith SlumberSandPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8045 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <14,1
step
    #label FindingAntidoteTurnin
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Entregue Em busca do antídoto
    .target Kor'ghan
    .isQuestComplete 813
    .isQuestAvailable 812
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,398,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #optional
    #completewith SlumberSandPickup
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Compre um|r |T133477:0|t[Maça Gigante] |cRXP_BUY_dele|r
    .collect 1197,1,398,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Warrior
    #optional
    #completewith SlumberSandPickup
    +|cRXP_WARN_Equipe a|r |T133477:0|t[Maça Gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman/Druid
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r Urtharo|cRXP_FRIENDLY_|r. Compre um|cRXP_BUY_ |T135154:0|t[Cajado de Combate]|r |cRXP_BUY_dele|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #optional
    #completewith SlumberSandPickup
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step
    #completewith SlumberSandPickup
    #label LeaveOrg3
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Aceite Busca da cura
    .turnin 812 >>Entregue Necessidade de uma Cura
    .target Rhinag
step
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .zone Tirisfal Glades >>Pegue o Zepelim para Tirisfal Glades
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r dentro da estalagem
    .accept 1818 >>Aceite Uma conversa com Dinis
    .target Austil de Mon
step
    #label SlumberSandPickup
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Aceite Uma Nova Peste
    .accept 445 >>Aceite Entrega to Floresta de Pinhaprata
    .target Apothecary Johaan
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >>Entregue Uma conversa com Dinis
    .accept 1819 >>Aceite Ulag, o Cutelo
    .target Deathguard Dillinger
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Clique no crânio no chão. Isto vai invocar|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Abate o|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >>Entregue Ulag, O Cutelo
    .accept 1820 >>Aceite Encontrando Eurico
    .target Deathguard Dillinger
step
    #loop
    .goto Tirisfal Glades,43.58,61.39,0
    .goto Tirisfal Glades,56.77,59.83,60,0
    .goto Tirisfal Glades,57.41,61.92,60,0
    .goto Tirisfal Glades,55.03,63.17,60,0
    .goto Tirisfal Glades,54.24,65.34,60,0
    .goto Tirisfal Glades,50.74,62.38,60,0
    .goto Tirisfal Glades,49.92,61.17,60,0
    .goto Tirisfal Glades,47.92,60.42,60,0
    .goto Tirisfal Glades,46.61,59.75,60,0
    .goto Tirisfal Glades,44.02,60.11,60,0
    .goto Tirisfal Glades,43.58,61.39,60,0
    >>Abate os |cRXP_ENEMY_Darkhounds|r. Saque-os por seu |cRXP_LOOT_Sanguíneo|r
    >>|cRXP_WARN_Você receberá|r |T133849:0|t[Lerdo Sand] |cRXP_WARN_da continuação desta missão, pode pular se quiser|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
step
    .goto Tirisfal Glades,60.59,51.77
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClique no |cRXP_PICK_Wanted Poster|r
    .accept 398 >>Aceite Procura-se: Olho de Verme
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Entregue Uma Nova Peste
    .accept 368 >>Aceite Uma Nova Peste
    .goto Tirisfal Glades,59.45,52.40
    .target Apothecary Johaan
    .isQuestComplete 367
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 368 >>Aceite Uma Nova Peste
    .goto Tirisfal Glades,59.45,52.40
    .target Apothecary Johaan
    .isQuestTurnedIn 367
step
    #completewith next
    .goto Tirisfal Glades,58.66,30.77
    >>Mate o |cRXP_ENEMY_Olho de Verme|r no caminho para a praia. Saqueie-o para obter sua |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
    .isOnQuest 368
step
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Abate os |cRXP_ENEMY_Murlocs|r na praia. Saque-os por seus |cRXP_LOOT_Escamoso|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step
    .goto Tirisfal Glades,58.66,30.77
    >>Mate o |cRXP_ENEMY_Olho de Verme|r. Saqueie-o para pegar a |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
    .isOnQuest 368
step
    #completewith MaggetEyeTurnIn
    .goto Tirisfal Glades,59.88,51.58,150 >>Volte para Brill
    .subzoneskip 159
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 368 >>Entregue Uma Nova Peste
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #label MaggetEyeTurnIn
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Entregue Wanted: Olho de Verme
    .target Executor Zygand
step
    #completewith UCflightpath2
    +|cRXP_WARN_Vincule seu|r |T133849:0|t[Lerdo Sand]|cRXP_WARN_. Guarde-o para situações de emergência|r
    .isQuestComplete 368
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 1820 >>Entregue Falar com Coleman
    .target Coleman Farthing
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 1160 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <14,1
step
    #completewith UCflightpath2
    .goto Tirisfal Glades,61.80,65.06,20 >>Entre em Cidade Baixa
    .zoneskip Undercity
    .zoneskip Undercity
step
    #completewith UCflightpath2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
step
    #label UCflightpath2
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    >>|cRXP_WARN_Pule este passo se você já pegou o voo!|r
    .fp Undercity >>Aprenda a rota de voo de Undercity
    .target Michael Garrett
step
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_do Auction House|r
    >>|cRXP_WARN_Pule isto se quiser, é apenas uma pequena economia de tempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step
    #optional
    .abandon 806 >>Abandone Tempestades sombrias
    .isOnQuest 806
step
    #optional
    .abandon 408 >>Abandone A Cripta da Família
    .isOnQuest 408
step << Warrior
    #optional
    .abandon 1821 >>Abandone Agamand Heirlooms
    .isOnQuest 1821
step
    #label LeaveUndercity3
    #completewith EscortErland
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50 >>Saia de Cidade Baixa pelos Esgotos
    .zoneskip Tirisfal Glades
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
    .zoneskip Silverpine Forest
    ]])

