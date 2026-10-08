if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
#era/som--h
<< Horde
#name 1-6 Mulgore
#version 11
#group Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;6-13 Mulgore


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
    .xp 3+1150 >>Triture até 1150+/1400xp
    .mob Plainstrider
step
    #xprate >1.49
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
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>Aceite Quebra-Presadura!
    .target Brave Windfeather
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .accept 77651 >>Aceitar Entre as Espinheiras
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .accept 77651 >>Aceite Entre as Espinheiras
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Entregue Bilhete Cinzelado
    .accept 77649 >>Aceitar A Força de um Caçador
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Entregue Bilhete Cinzelado
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Entregue Bilhete Verdejante
    .accept 77648 >>Aceitar Relíquias dos Taurens
    .train 8921 >>Treine |T136096:0|t[Fogo Lunar]
    .target Gart Mistrunner
step << Druid
    #season 0
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Entregue Bilhete Inscrito em Runas
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .target Meela Dawnstrider
step << Shaman
    #season 0
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
    .xp 5+880 >>Mate inimigos até atingir 880+/2800 de xp << !Shaman
    .xp 5 >>Suba até o nível 5 << Shaman
step
    #xprate >1.49
    #loop
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
    .xp 5 >>Suba até o nível 5 << !Shaman
    .xp 4+700 >>Triturar para 700/2100xp << Shaman
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Entregue Ícones de Poder
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target Shikrik
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .turnin 77649 >>Entregue A Força de um Caçador
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .turnin 77649 >>Entregue A Força de um Caçador
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .train 467 >>Aprenda |T136104:0|t[Espinhos]
    .train 5177 >>Treine |T136006:0|t[Ira]
    .turnin 77648 >>Entregue Relíquias dos Taurens
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Treine |T136006:0|t[Ira]
    .turnin 77648 >>Entregue Relíquias dos Taurens
    .target Gart Mistrunner
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .train 467 >>Aprenda |T136104:0|t[Espinhos]
    .train 5177 >>Treine |T136006:0|t[Ira]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Treine |T136006:0|t[Ira]
    .target Gart Mistrunner
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .train 6343 >>Aprenda |T136105:0|t[Trovoada]
    .turnin 77651 >>Entregue Entre as Espinheiras
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .turnin 77651 >>Entregue Entre as Espinheiras
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .train 6343 >>Aprenda |T136105:0|t[Trovoada]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .target Harutt Thunderhorn
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Antur|r
    .accept 1656 >>Aceite A Tarefa Inacabada
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 6-12 Mulgore
#version 11
#group Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-17 Sertões


step << Druid
    #season 2
    .goto Mulgore,35.72,69.57
    >>|cRXP_WARN_Invoque|r |T136096:0|t[Fogo Lunar] |cRXP_WARN_nos três|r |cRXP_ENEMY_Pedras Lunares|r|cRXP_WARN_. Um baú aparecerá entre as pedras|r
    >>Abra o |cRXP_PICK_Baú Lunar|r para |T134419:0|t[|cRXP_FRIENDLY_Runa do Sol|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Sol|r] |cRXP_WARN_para treinar|r |T236216:0|t[Fogo Solar]
    .use 206989
    .itemcount 206989,1
step
	#completewith BloodhoofHome
	#softcore
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
	#hardcore
	#completewith BloodhoofHome
    .goto Mulgore,47.35,60.70,120 >>Corra para Bloodhoof Village
    .subzoneskip 222
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Aceite Mazzranache
    .target Maur Raincaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r e |cRXP_FRIENDLY_Baine|r
    .accept 743 >>Aceite Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.36,62.01
    .turnin 763 >>Entregue Ritos da Mãe Terra
    .accept 745 >>Aceite Dividindo a Terra
    .accept 767 >>Aceite Rito de Visão
    .accept 746 >>Aceite Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    .turnin 1656 >>Entregue A Tarefa Inacabada
    .home >>Defina sua Pedra de Regresso para a Aldeia Casco Sangrento
    .target Innkeeper Kauth
    .bindlocation 222
    .subzoneskip 222,1
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
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r, |cRXP_FRIENDLY_Harken|r e |cRXP_FRIENDLY_Mull|r
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
    .accept 748 >>Aceite Água venenosa
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r e |cRXP_FRIENDLY_Harken|r
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
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto você cumpre missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith Ambercorns
    >>Mate os |cRXP_ENEMY_Prairie Wolves|r e os |cRXP_ENEMY_Adult Plainstriders|r. Saque-os para obter seus |cRXP_LOOT_Paws|r e |cRXP_LOOT_Garras|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << Hunter
    #season 2
    .goto Mulgore,59.02,54.36
    >>Invoque |T132212:0|t[Marca do Caçador] no |cRXP_ENEMY_Farfalhar Arbusto|r
    >>Mate o |cRXP_ENEMY_Venture Co. Poacher|r que aparece. Saqueie-o para |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step << Hunter
    #season 2
    .train 410113 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .use 206155
    .itemcount 206155,1
step
    #label Ambercorns
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Colete os |cRXP_PICK_Ambercorns|r. Eles podem ser encontrados sob as árvores no chão
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
    >>Mate os |cRXP_ENEMY_Prairie Wolves|r e os |cRXP_ENEMY_Adult Plainstriders|r. Saque-os para obter seus |cRXP_LOOT_Paws|r e |cRXP_LOOT_Garras|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
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
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Colete as |cRXP_PICK_Well Stones|r ao redor do poço
    .complete 771,1 --Well Stone (2)
step
    #completewith Gnolls
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto você cumpre missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior
    #season 2
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Vá e volte entre os dois acampamentos. Abata os |cRXP_ENEMY_Palemane Tanners|r, os |cRXP_ENEMY_Palemane Skinners|r e os |cRXP_ENEMY_Palemane Poachers|r. Saque-os para a |cRXP_LOOT_Cortado Gnoll Cabeça|r
    >>|cRXP_WARN_Tenha cuidado com|r |cRXP_ENEMY_Lança Infame|r |cRXP_WARN_(Nível 9 raro). É muito difícil de matar.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .train 403475,1
step
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Vá de um lado para o outro entre os dois acampamentos. Mate os |cRXP_ENEMY_Palemane Tanners|r, os |cRXP_ENEMY_Palemane Skinners|r e os |cRXP_ENEMY_Palemane Poachers|r
    >>|cRXP_WARN_Tenha cuidado com|r |cRXP_ENEMY_Lança Infame|r |cRXP_WARN_(Nível 9 raro). É muito difícil de matar.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dela|r << Warrior
    .vendor >>Lixo Comerciante
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>Entregue A Purificação de Casco Invernal
    .accept 756 >>Aceite Totem de Chifre Troante
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
    .turnin 745 >>Entregue Dividindo a Terra
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step << !Tauren
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Baine|r
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
    .accept 772 >>Aceite Rito de Visão
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
step << Tauren
    #completewith RavagedCaravan1
    >>Abate os |cRXP_ENEMY_Stalkers|r e os |cRXP_ENEMY_Cougars|r. Saque-os para obter seus |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
	#completewith Clawsx
	>>Abate os |cRXP_ENEMY_Swoops|r em Mulgore. Saque-os para obter |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
    #label RavagedCaravan1
    .goto Mulgore,53.74,48.17
    >>Clique no |cRXP_PICK_Caixote de Suprimentos Lacrado|r
    .turnin 749 >>Entregue A Caravana Devastada
    .accept 751 >>Aceite A caravana devastada
step << Tauren
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
step
    #optional
    #label Clawsx
step
    #softcore
	#completewith Thunderhorn
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #hardcore
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >>Volte para Bloodhoof Village
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
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
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
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
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Moorat|r
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
    .vendor >>Venda itens inúteis e repare
    .target Harant Ironbrace
step
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
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
    .vendor >>Comerciante Lixo << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_Conclua a obtenção dos itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>Abate os |cRXP_ENEMY_Swoops|r em Mulgore. Saque-os para obter |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #era/som
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_Use o|r |T135139:0|t[Totem de Purificação Chifre Troante] |cRXP_WARN_no poço|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step << Shaman
    #season 2
    #completewith next
    >>Abata os |cRXP_ENEMY_Bael'dun Diggers|r e os |cRXP_ENEMY_Bael'dun Appraisers|r. Saque-os para a |cRXP_LOOT_Artefato Chave de Armazenamento|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step
    .goto Mulgore,31.27,49.87
    >>Abate os |cRXP_ENEMY_Bael'dun Diggers|r e os |cRXP_ENEMY_Bael'dun Appraisers|r. Saque-os para obter |cRXP_LOOT_Picareta do Prospector|r
    .use 4702 >>|cRXP_WARN_Quebre as|r |T134707:0|t[Picaretas] |cRXP_WARN_na forja|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Bael'dun Appraisers|r lançam|r |T135929:0|t[Cura Inferior] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% dos pontos de vida for about 75 health)|r
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto Mulgore,34.33,47.54,0
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Abata os |cRXP_ENEMY_Bael'dun Diggers|r e os |cRXP_ENEMY_Bael'dun Appraisers|r. Saque-os para a |cRXP_LOOT_Artefato Chave de Armazenamento|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Bael'dun Appraisers|r lançam|r |T135929:0|t[Cura Inferior] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% dos pontos de vida for about 75 health)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .goto Mulgore,31.56,49.54
    >>Abra o |cRXP_PICK_Artefato Armazenamento|r baú. Saque-o para o |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .equip 18,206388 >>|cRXP_WARN_Equipe o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith Burial
    .aura 408828 >>|cRXP_WARN_Mate inimigos tendo causado dano usando|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para ganhar|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_AVISO: Você deve fazer isto em inimigos que possam fornecer experiência para ganhar camadas|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
    .xp >13,1
step << Warrior
    #season 2
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
    >>Abata os |cRXP_ENEMY_Fúria dos Ventos Vento Bruxas|r e os |cRXP_ENEMY_Fúria dos Ventos Harpias|r. Saque-os para suas |cRXP_LOOT_Garras|r e a |cRXP_LOOT_Cortado Harpia Cabeça|r
    .complete 743,1 --Windfury Talon (8)
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
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
    >>Mate |cRXP_ENEMY_Bruxas Eólica Ventofúria|r e |cRXP_ENEMY_Harpias Ventofúria|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >>Entre na caverna logo ao norte das Harpias Fúria dos Ventos
step
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Entregue Rito de Visão
    .accept 773 >>Aceite Rito de sabedoria
    .target Seer Wiserunner
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_Use o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Entalhe de Luvas: Impacto Derretido]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_Você pode descartar|r |T134712:0|t[Água dos Videntes] |cRXP_WARN_das bolsas, pois não precisa mais dela|r
step
    #completewith SacredBurial
    >>|cRXP_WARN_Conclua a obtenção dos itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith SacredBurial
    >>Fique atento a |cRXP_ENEMY_Uivo Fantasma|r. Pegue dele o |T134358:0|t[|cRXP_LOOT_Manto Marcado por Demônios|r]. Use-o para iniciar a missão
    >>|cRXP_WARN_Cuidado, pois |cRXP_ENEMY_Uivo Fantasma|r é difícil por ser nível 12|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Aceite O Manto Marcado por Demônios
    .use 4854
    .unitscan Ghost Howl
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Swoops|r em Mulgore. Saque-os para obter |cRXP_LOOT_Cálamos|r
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
step << Warrior
    #season 2
    #completewith RiteofWisdom
    >>Abata |cRXP_ENEMY_Intrusos Costagulha|r. Saqueie-os por uma |cRXP_LOOT_Cabeça de Quilboar Cortada|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #completewith next
    >>Mate |cRXP_ENEMY_Traiçoeiros Costagulha|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Espírito Ancestral|r
    .turnin 773 >>Entregue Rito de Sabedoria
    .accept 775 >>Aceite. Siga para o Penhasco do Trovão
    .target Ancestral Spirit
step << Warrior
    #season 2
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
    >>Abata |cRXP_ENEMY_Intrusos Costagulha|r. Saqueie-os por uma |cRXP_LOOT_Cabeça de Quilboar Cortada|r
    .complete 833,1 --Bristleback Interloper (8)
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
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
    >>Mate |cRXP_ENEMY_Traiçoeiros Costagulha|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Entregue Sepultamento Sagrado
    .target Lorekeeper Raintotem
step
    #completewith next
    >>|cRXP_WARN_Conclua a obtenção dos itens para Mazzranache|r
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
	>>Mate |cRXP_ENEMY_Rapineiros|r. Pegue seus |cRXP_LOOT_Cálamos|r
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
    #xprate <1.5
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
    #xprate <1.5
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
    .xp 9+3720 >>Mate inimigos até atingir 3720+/6500 de xp
    .isQuestComplete 761
step
    #xprate <1.5
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
    .xp 9+3700 >>Mate inimigos até atingir 3700+/6500 de xp
    .isQuestComplete 766
step
    #xprate <1.5
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
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+1280 >>Triturar para 1280+/6500xp
    .isQuestComplete 761
    .isQuestComplete 766
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+2330 >>Triturar para 2330+/6500xp
    .isQuestComplete 761
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+2300 >>Triturar para 2300+/6500xp
    .isQuestComplete 766
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3350 >>Triturar para 3350+/6500xp
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
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    .vendor >>Lixo Comerciante
    .target Innkeeper Kauth
    .isQuestAvailable 870
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Entregue O Manto Marcado por Demônios
    .target Skorn Whitecloud
    .isOnQuest 770
step << Warrior
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vateya|r em Bloodhoof Village
    >>Entregue as |cRXP_LOOT_Cabeças|r que você coletou em troca de |T134455:0|t[Runa Fragmentos]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step << Warrior
    #season 2
    .use 204688 >>Usar os |T134455:0|t[Runa Fragmentos] para criar |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Entregue Purificação de Chifre Troante
    .timer 8,Aguarde o RP de Purificação de Chifre Troante
    .accept 759 >>Aceite Totem de Juba Agreste
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Entregue Caçada ao Rapineiro
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren
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
    .accept 759 >>Aceite Totem de Juba Agreste
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << !Tauren
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r e |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
step
    #optional
    #label Bloodhoofturnins1
step
    #completewith AlphaTeeth
    .destroy 4702 >>|cRXP_WARN_Você pode excluir as|r |T134707:0|t[Picaretas de Prospector] |cRXP_WARN_das bolsas, pois não são mais necessárias|r
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Heavy Shots] |cRXP_BUY_dele|r << Hunter
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
    .trainer >>Treine suas magias de classe
    .accept 1505 >>Aceite Veterano Uzzek
    .target Krang Stonehoof
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Aceite Call of Fogo - Missão - Missão
    .trainer >>Treine suas magias de classe
    .target Narm Skychaser
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
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dela|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Aceite A senda do caçador
    .target Skorn Whitecloud
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
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
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
    #completewith next
    .cast 1515 >>Dome o |cRXP_ENEMY_Lobo-da-pradaria Alfa|r
    >>|cRXP_WARN_Isso permitirá que você treine|r |T132278:0|t[Morder Rank 2]
    .mob Prairie Wolf Alpha
step << Tauren
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
step << Tauren
    #softcore
	#completewith Thunderhorn2
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Tauren
    #hardcore
    #completewith Thunderhorn2
    .goto Mulgore,46.5,55.5,150 >>Volte para Bloodhoof Village
    .subzoneskip 222
step << Tauren
    #label Thunderhorn2
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>Vá para Totem de Juba Agreste
    .accept 760 >>Aceite Purificação de Juba Agreste
    .target Mull Thunderhorn
step
    #completewith CampTFP
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >>Viaje para os Sertões
step << !Druid
    .goto The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Aprenda a rota de voo de Camp Taurajo
	.target Omusa Thunderhorn
    .isQuestAvailable 848
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Aprenda a rota de voo de Camp Taurajo
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Omusa Thunderhorn
    .isQuestAvailable 848
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
    #completewith next
    .goto Thunder Bluff,71.60,30.15,80 >>Vá para o Morro dos Anciãos
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>Entregue Heeding the Call - Missão - Missão - Missão
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
    .cast 18960 >>|cRXP_WARN_Lance |r|T135758:0|t[Teleporte: Clareira da Lua]
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
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
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
    .zoneskip The Barrens
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
    .isQuestAvailable 848
step
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jahan|r
    .accept 6361 >>Aceite Um pacote de peles
    .target Jahan Hawkwing
step
    #completewith next
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Mantenha distância máxima de |cRXP_ENEMY_Kolkar|r |cRXP_WARN_enquanto coleta os cogumelos. Eles são nível 12-14|r
    >>|cRXP_WARN_A continuação dessa missão tem o poderoso |cRXP_FRIENDLY_Mexedor de Caldeirão|r |cRXP_WARN_como recompensa. Você pode pular essa missão por enquanto se não pretender usá-lo|r
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
    >>|cRXP_WARN_A continuação dessa missão tem o poderoso |cRXP_FRIENDLY_Mexedor de Caldeirão|r |cRXP_WARN_como recompensa. Você pode pular essa missão por enquanto se não pretender usá-lo|r
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
    .accept 877 >>Aceite Oásis Estagnante
    .target Tonga Runetotem
    .isQuestComplete 870
step
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .accept 877 >>Aceite Oásis Estagnante
    .target Tonga Runetotem
    .isQuestTurnedIn 877
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 853
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Espere o RP terminar|r
    >>|cRXP_WARN_Isso inicia uma missão cronometrada de 45 minutos|r
    .turnin 848 >>Entregue Esporos de Fungos
    .timer 7,Esporos de Fungos RP
    .accept 853 >>Aceite Boticário Zamah
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #optional
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Isso inicia uma missão cronometrada de 45 minutos|r
    .accept 853 >>Aceite Boticário Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .turnin 6361 >>Entregue Um pacote de peles
    .accept 6362 >>Aceite Voo para o Penhasco do Trovão
    .target Devrak
step
    #completewith RideToTB
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Devrak
    .zoneskip Thunder Bluff
step
    #sticky
    #completewith CauldronStirrer
    +|cRXP_WARN_Você está em uma missão cronometrada, não fique ausente. Ela será entregue em torno de 5-10 minutos após a coleta|r
    .isOnQuest 853
step
    #label RideToTB
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Voe para o Penhasco do Trovão
    .accept 6363 >>Aceite Tal, o Mestre de Mantícoras
    .target Ahanu
step << Hunter
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Viagem para A Senda do Caçador
    .accept 860 >>Aceite Sergra Espinhonegro
    .target Melor Stonehoof
    .isQuestComplete 861
step << Hunter
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor|r
    .accept 860 >>Aceite Sergra Espinhonegro
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holto Chifre Troante|r
	.turnin 6089 >>Entregue Treinamento da Fera - Missão
    .target Holt Thunderhorn
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa|r
    .train 24547 >>Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
step << Hunter
    #completewith CauldronStirrer
    +|cRXP_WARN_Arrastar|r |T132162:0|t[Treinamento de Feras] |cRXP_WARN_para suas barras de ação. Ensine habilidades ao seu mascote|r
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Treine Maças de Duas Mãos
    .target Ansekhwa
    .money <0.1154
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Treine Cajados
    .target Ansekhwa
step
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Aceite Os Preparativos da Cerimônia
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .accept 76156 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
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
    .isOnQuest 853
step
    #optional
    #completewith ReturntoJahan
    +|cRXP_WARN_Equipe o|r |T135145:0|t[Mexedor de Caldeirão]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Warrior
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Netali|r e |cRXP_FRIENDLY_Mugildo|r no Alto do Espírito
    +Mate |cRXP_FRIENDLY_Mugildo|r quando ele se tornar hostil
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Netali|r
    >>Obtenha |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] dela
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r]
    .use 204716
    .itemcount 204716,1
step
    #label ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Fale com Tal, o Mestre de Mantícoras
    .accept 6364 >>Aceite Fale novamente com Jahan
    .target Tal
step
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Siga para o Penhasco do Trovão
    .accept 776 >>Aceite Ritos da Mãe Terra
    .target Cairne Bloodhoof
step << Druid
    #completewith next
    .goto Thunder Bluff,71.60,30.15,80 >>Vá para o Morro dos Anciãos
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Entregue Corpo e Coração
    .target Turak Runetotem
step
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_Isto desbloqueará uma missão fácil. Se você já tem 2 profissões, pule este passo|r
    .train 8613 >>Treine |T134366:0|t[Esfolamento]
    .target Mooranta
step
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veren|r
    .accept 768 >>Aceite Em busca de couro
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre Doze|r |T134252:0|t[Couro Leve] |cRXP_BUY_do Leilão|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veren|r
    .turnin 768 >>Entregue Em busca de couro
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto Thunder Bluff,52.32,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaga|r
    >>|cRXP_BUY_Compre um|r |T133972:0|t[Carne Seca Fortalecedora] |cRXP_BUY_dela para alimentar seu mascote|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step << Shaman
    #season 2
    #loop
    #completewith VentureCoKills
    >>Abra os |cRXP_PICK_Blasting Suprimentos|r dentro da mina e do outro lado. Saqueie-os para obter as |cRXP_LOOT_Seaforium Mineração Cargas|r
    >>|cRXP_WARN_Fique nos níveis superiores da caverna se possível|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
	#era/som
    #completewith Fizsprocket1
    .goto Mulgore,61.51,47.29,20 >>Viagem para Empreendimentos S.A. Mina
step << Shaman
    #season 2
    #completewith next
    >>Mate os |cRXP_ENEMY_Trabalhadores da Venture Co.|r e os |cRXP_ENEMY_Supervisores da Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #season 2
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>Abate |cRXP_ENEMY_Supervisor Geringonça|r. Saque a |cRXP_LOOT_Prancheta|r dela
    >>|cRXP_WARN_Entre na mina e siga o lado direito/leste para alcançá-lo|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Geringonça
step << Shaman
    #season 2
    #label VentureCoKills
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
    #season 2
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Abra os |cRXP_PICK_Blasting Suprimentos|r dentro da mina e do outro lado. Saqueie-os para obter as |cRXP_LOOT_Seaforium Mineração Cargas|r
    >>|cRXP_WARN_Fique nos níveis superiores da caverna se possível|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >>Voe para Penhasco do Trovão
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76156 >>Entregue À Espreita com a Mãe Terra
    .accept 76160 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #sticky
    #completewith ThunderBluff
    >>Fique atento a |cRXP_ENEMY_Uivo Fantasma|r. Pegue dele o |T134358:0|t[|cRXP_LOOT_Manto Marcado por Demônios|r]. Use-o para iniciar a missão
    >>|cRXP_WARN_Pule este passo se você não conseguir encontrá-lo|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Aceite O Manto Marcado por Demônios
    .use 4854
    .unitscan Ghost Howl
step << Druid
    #season 2
    #completewith ProwlerClaws
    >>Mate os |cRXP_ENEMY_Flatland Prowlers|r e os |cRXP_ENEMY_Prairie Lobo Alphas|r. Saqueie-os para obter o |T134903:0|t[|cRXP_FRIENDLY_Ídolo de Raiva Ursina|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step
    #completewith Arrachea
    >>Mate |cRXP_ENEMY_Predadores das Estepes|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step << Shaman
    #season 2
    #completewith next
    >>Mate as |cRXP_ENEMY_Feiticeiras de Fúria dos Ventos|r. Saque-as pelos seus |cRXP_LOOT_Peninha Azul|r
    >>Mate |cRXP_ENEMY_Matriarcas Ventofúria|r. Pegue suas |cRXP_LOOT_Penas Bronze|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    #loop
    .goto Mulgore,37.18,12.36,0
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>Saque |cRXP_LOOT_Pinhões de Fúria dos Ventos|r no chão
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
step
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
step << Tauren
    .goto Mulgore,42.5,13.8
    .use 5416 >>|cRXP_WARN_Use o|r |T135139:0|t[Totem de Purificação Juba Agreste] |cRXP_WARN_no poço|r
    .complete 760,1 --Cleanse the Wildmane Well (1)
step << Warrior/Hunter
    #season 2
    #loop
    .goto Mulgore,52.6,12.2,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    >>Mate |cRXP_ENEMY_Arra'chea|r (kodo preto grande). Pegue seu |cRXP_LOOT_Chifre|r << !Warrior !Hunter
    >>Mate |cRXP_ENEMY_Arra'Chea|r (Grande kodo negro). Mate-o e saque-o pelo |cRXP_LOOT_Chifre|r e |T134419:0|t[|cRXP_FRIENDLY_Runa de Trovão Furioso|r] << Warrior
    >>Mate |cRXP_ENEMY_Arra'Chea|r (Grande kodo negro). Mate-o e saque-o pelo |cRXP_LOOT_Chifre|r e |T134419:0|t[|cRXP_FRIENDLY_Runa de Tiro Explosivo|r] << Hunter
    >>|cRXP_WARN_Ele patrulha o norte de Mulgore no sentido horário|r
    .complete 776,1 --Horn of Arra'chea (1)
    .collect 204809,1 << Warrior --Rune of Furious Thunder(1)
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .unitscan Arra'chea
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
    --VV .line
step << Warrior
    #season 2
    .train 403476 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Trovão Furioso|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Tiro Explosivo|r]
    .use 206169
    .itemcount 206169,1
step
    #label Arrachea
    #loop
    .goto Mulgore,52.6,12.2,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    >>Mate |cRXP_ENEMY_Arra'chea|r (kodo preto grande). Pegue seu |cRXP_LOOT_Chifre|r
    >>|cRXP_WARN_Ele patrulha o norte de Mulgore no sentido horário|r
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'chea
    --VV .line
step
    #label ProwlerClaws
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
step << Druid
    #season 2
    #loop
    .goto Mulgore,43.78,10.96,0
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    >>Mate os |cRXP_ENEMY_Flatland Prowlers|r e os |cRXP_ENEMY_Prairie Lobo Alphas|r. Saqueie-os para obter o |T134903:0|t[|cRXP_FRIENDLY_Ídolo de Raiva Ursina|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >>|cRXP_WARN_Equipe o|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo de Raiva Ursina|r]
    .use 206954
    .train 410025,1
step << Druid
    #season 2
    #completewith next
    +|cRXP_WARN_Mantenha 50+ de fúria por pelo menos 60 segundos para poder aprender|r |T132135:0|t[Destroçar]
step << Druid
    #season 2
    .train 410025 >>|cRXP_WARN_Use o|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo de Raiva Ursina|r] |cRXP_WARN_para treinar|r |T132135:0|t[Destroçar]
    .use 206954
    .itemcount 206954,1
step
    #completewith next
    .zone Thunder Bluff >>Voe de volta para Penhasco do Trovão
step
    #label RFCPickups1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >>Aceite Procurando pela Bolsa Perdida
    .accept 5723 >>Aceite Testando a Força de um Inimigo
    .target Rahauro
    .dungeon RFC
step
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cairne|r
    .turnin 776 >>Entregue Ritos da Mãe Terra
    .target Cairne Bloodhoof
    .isQuestComplete 776
step
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Entregue Os preparativos da cerimônia
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76160 >>Entregue À Espreita com a Mãe Terra
    .accept 76240 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre um|r |T133894:0|t[Peixe Brilhante Cru] |cRXP_BUY_do Leilão|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Vá em direção a |cRXP_FRIENDLY_Sewa Corre com a Névoa|r
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kah Corre com a Névoa|r
    .train 7734 >>Aprenda |T136245:0|t[Pesca]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sewa Corre com a Névoa|r
    >>|cRXP_BUY_Compre uma|r |T132932:0|t[Vara de Pescar] |cRXP_BUY_e uma|r |T134335:0|t[Miçanga Brilhosa] |cRXP_BUY_dela|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_Equipe a|r |T132932:0|t[Vara de Pescar]
    .use 6256
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_Prenda a|r |T134335:0|t[Miçanga Brilhosa] |cRXP_WARN_à sua|r |T132932:0|t[Vara de Pescar]
    .use 6529
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Pesque no lago até obter |T133894:0|t[|cRXP_LOOT_Peixe Brilhante Cru|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    >>Usar |T132147:0|t[Conjunto de Facas] para criar |T134007:0|t[Pedaços de Peixe]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76240 >>Entregue À Espreita com a Mãe Terra
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Viagem para A Senda do Caçador
    .accept 860 >>Aceite Sergra Espinhonegro
    .target Melor Stonehoof
step
    #completewith WildManeTurnIn
    .subzone 222 >>Vá para Bloodhoof Village
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Entregue O Manto Marcado por Demônios
    .target Skorn Whitecloud
    .isOnQuest 770
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .turnin 760 >>Entregue Purificação de Juba Agreste
    .target Mull Thunderhorn
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .train 547 >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <12,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 7384 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 14281 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <12,1
step
    #optional
    #label WildManeTurnIn
step
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Viagem para Empreendimentos S.A. Mina
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Trabalhadores da Venture Co.|r e os |cRXP_ENEMY_Supervisores da Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Abate |cRXP_ENEMY_Supervisor Geringonça|r. Saque a |cRXP_LOOT_Prancheta|r dela
    >>|cRXP_WARN_Entre na mina e siga o lado direito/leste para alcançá-lo|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Geringonça
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
    >>Mate os |cRXP_ENEMY_Trabalhadores da Venture Co.|r e os |cRXP_ENEMY_Supervisores da Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+7150 >>Suba até 7150+/8700 XP
step
    #xprate >1.49
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+6375 >>Suba até 6375+/8700 XP
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
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .turnin 764 >>Entregue Empreendimentos S.A.
    .turnin 765 >>Entregue para o Supervisor Geringonça
	.unitscan Morin Cloudstalker
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .train 547 >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <12,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 5242 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 14281 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <12,1
step
    #completewith HidesTurnIn
    .hs >>Vá para A Encruzilhada
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
    .cooldown item,6948,>0
step
    #completewith next
    .subzone 378 >>Viaje para Camp Taurajo
    .cooldown item,6948,<0,1
step
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Omusa Thunderhorn
    .cooldown item,6948,<0,1
step
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Entregue Retorno a Jahan
    .target Jahan Hawkwing
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .target Apothecary Helbrim
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
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 860 >>Entregue Sergra Espinhonegro
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Na Cola dos Larápios
    .target Gazrog
step << Shaman
    #completewith next
    >>Procure por |cRXP_PICK_Barril Vazio de Chen|r ao lado de |cRXP_FRIENDLY_Kranal|r. Saque-o e comece a missão
    >>|cRXP_WARN_Você pode obtê-lo depois se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
    .use 4926
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
    .goto Durotar,39.34,28.25,40,0
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


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate >1.99
#version 1
#group Horda 1-22
#groupid RXP-SRGCE-H1
#name 1-7 Mulgore
#next 7-13 Mulgore
#defaultfor Tauren


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
    #season 2
    .goto Mulgore,44.35,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Runa Corretor de Runas|r
    >>|cRXP_WARN_Não venda equipamento que pode ser equipado|r
    >>|cRXP_BUY_Venda seu|r |T135005:0|t[Shirt] |cRXP_BUY_e um de seus|r |T133964:0|t[Hunks of Bread] |cRXP_WARN_(podem ser divididos com shift-clique)|r |cRXP_BUY_e compre |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r] e |T134419:0|t[|cRXP_FRIENDLY_Runa do Ímpeto da Vitória|r] dele|r << Warrior
    >>|cRXP_BUY_Venda seu|r |T135005:0|t[Shirt] |cRXP_BUY_e um de seus|r |T134534:0|t[Cogumelo Caps] |cRXP_WARN_(podem ser divididos com shift-clique)|r |cRXP_BUY_e compre |T134920:0|t[|cRXP_FRIENDLY_Ícone Jakárico|r] |cRXP_BUY_e|r |T134918:0|t[|cRXP_FRIENDLY_Ícone Diádico|r] |cRXP_BUY_dele|r << Shaman
    >>|cRXP_BUY_Venda seu|r |T135005:0|t[Shirt] |cRXP_BUY_e|r |T132794:0|t[Água] |cRXP_BUY_e compre as seguintes runas:|r  << Hunter
    >>|cRXP_BUY_Venda seu|r |T133975:0|t[Apples] |cRXP_BUY_e compre as seguintes runas:|r << Druid
    >>|cRXP_BUY_Venda lixo ao Comerciante e compre todas as seguintes runas:|r << Shaman
    .collect 204716,1 << Warrior --Rune of Frenzied Assault
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206387,1 << Shaman --Kajaric Icon
    .collect 206381,1 << Shaman --Dyadic Icon
    .collect 208414,1 << Druid --Lunar Idol
    .collect 210500,1 << Druid --Rune of the Stars
    .collect 206989,1 << Druid --Rune of the Sun
    .collect 227749,1 << Druid --Rune of the Falling Star
    >>Você receberá o resto de suas runas em breve
    .target Rune Broker
    .skipgossip
step
    #season 2
    #sticky
    #optional
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 204806 << Warrior --Rune of Victory Rush
    .use 209852 << Hunter --Rune of Kill Command
    .use 206168 << Hunter --Rune of the Chimera
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 206387 << Shaman --Kajaric Icon
    .use 208414 << Druid --Lunar Idol
    .use 210500 << Druid --Rune of the Stars
    .use 206989 << Druid --Rune of the Sun
    .use 227749 << Druid --Rune of the Falling Star
    .equip 18 >>Equipe o |T134920:0|t[|cRXP_FRIENDLY_Ícone Jakárico|r], você pode usá-lo após 30 segundos para treinar |T237582:0|t[Estouro de lava] << Shaman
    .equip 18 >>Equipe o |T134903:0|t[|cRXP_FRIENDLY_Lunar Ídolo|r], você pode usá-lo após 30 segundos para treinar |T237472:0|t[Fúria de Tempesfúria] << Druid
    .train 425447 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] << Warrior
    .train 403470 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa do Ímpeto da Vitória|r] para treinar |T132342:0|t[Ímpeto da Vitória], você o gravará em breve << Warrior
    .train 410111 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Rune of Comando para Matar|r] para treinar |T236174:0|t[Tiro Mortal] << Hunter
    .train 410121 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa da Quimera|r] para treinar |T236176:0|t[Tiro Quimérico] << Hunter
    .train 409580 >>Usar o |T133739:0|t[|cRXP_FRIENDLY_Tratado do Coração de Leão|r] para treinar |T132185:0|t[Coração de Leão] << Hunter
    .train 415423 >>Usar o |T133739:0|t[|cRXP_FRIENDLY_Tratado do Aspecto da Víbora|r] para treinar |T132160:0|t[Coração of the Viper] << Hunter
    .train 424718 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa das Estrelas|r] para treinar |T135730:0|t[Surto Estelar] << Druid
    .train 416044 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa do Sol|r] para treinar |T236216:0|t[Fogo Solar] << Druid
    .train 439770 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa da Estrela Cadente|r] para treinar |T236168:0|t[Chuva Estelar] << Druid
    .engrave 7 >>Grave |T236174:0|t[Tiro Mortal] em suas calças << Hunter
    .engrave 7 >>Grave |T236317:0|t[Ataque Frenético] em suas calças << Warrior
    .engrave 7 >>Grave |T135730:0|t[Surto Estelar] em suas calças << Druid
step << Hunter
    #season 2
    #optional
    #sticky
    .aura 409583 >>Lembre-se de ativar seu |T132185:0|t[Coração de Leão]
step << Shaman
    #season 2
    #optional
    #label LavaBurst
    #sticky
    .train 410095 >>Usar o |T134920:0|t[|cRXP_FRIENDLY_Kajaric Ícone|r] do painel de personagem para treinar |T237582:0|t[Estouro de Lava - Feitiço - Feitiço]
step << Druid
    #season 2
    #optional
    #sticky
    .train 410061 >>Usar o |T134903:0|t[|cRXP_FRIENDLY_Lunar Ídolo|r] do painel de personagem para treinar |T237472:0|t[Fúria de Tempesfúria]
    .engrave 5 >>Grave seu peito com |T237472:0|t[Fúria de Tempesfúria]
step << Shaman
    #season 2
    #optional
    #requires LavaBurst
    #label Overload
    #sticky
    .equip 18,206381 >>Equipe o |T134918:0|t[|cRXP_FRIENDLY_Dyadic Ícone|r]
    .train 410094 >>Usar-o após 30 segundos para treinar |T136050:0|t[Sobrecarga]
    .use 206381
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Chefe Vento do Falcão|r
    .accept 752 >>Aceite Uma Tarefa Humilde
    .target Chief Hawkwind
step << Warrior/Shaman
    #season 0
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_Abate |cRXP_ENEMY_Plainstriders|r. Saque-os até ter 10 moedas de cobre em itens vendáveis (incluindo sua armadura)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step
    #season 2
    .goto Mulgore,46.05,75.32
    .xp 2 >>|cRXP_WARN_Abate 4 |cRXP_ENEMY_Plainstriders|r para atingir o nível 2. Saque-os até ter 10 de cobre em itens|r << !Shaman !Druid
    .xp 2 >>|cRXP_WARN_Abate 4 |cRXP_ENEMY_Plainstriders|r para atingir o nível 2. Saque-os até ter 42 de cobre em itens|r << Shaman
    .xp 2 >>|cRXP_WARN_Abate 4 |cRXP_ENEMY_Plainstriders|r para atingir o nível 2. Saque-os até ter 20 de cobre em itens|r << Druid
    .mob Plainstrider
step << Shaman/Druid
    #season 2
    .goto Mulgore,46.36,75.89,50,0
    #completewith next
    +|cRXP_WARN_Continue matando |cRXP_ENEMY_Plainstriders|r até ter 42 de cobre em itens|r << Shaman
    +|cRXP_WARN_Continue matando |cRXP_ENEMY_Plainstriders|r até ter 20 de cobre em itens|r << Druid
    .money >0.0042 << Shaman
    .money >0.002 << Druid
step << Druid
    #season 2
    .goto Mulgore,45.08,75.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .accept 77648 >>Aceite Relíquias dos Tauren
    .turnin 77648 >>Entregue Relíquias dos Tauren
    .target Gart Mistrunner
step << Warrior/Shaman
    #season 0
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kawnie|r
    .vendor >>Comerciante Lixo
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior/Shaman
    #season 2
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_WARN_Não venda equipamento que pode ser equipado|r
    .vendor >>Comerciante Lixo
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target Harutt Thunderhorn
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .accept 77651 >>Aceite Entre as Espinheiras
    .turnin 77651 >>Entregue Entre as Espinheiras
    .target Harutt Thunderhorn
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Trem |T136086:0|t[Arma Trinca-pedra]
    .target Meela Dawnstrider
step << Shaman
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Trem |T136086:0|t[Arma Trinca-pedra]
    .accept 77652 >>Aceite Ícones de Poder
    .turnin 77652 >>Entregue Ícones de Poder
    .target Meela Dawnstrider
step << Shaman/Druid
    #season 2
    .goto Mulgore,44.15,77.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varia|r
    >>|cRXP_BUY_Lixo do Comerciante|r |cRXP_WARN_NÃO VENDA EQUIPAMENTO QUE PODE SER EQUIPADO|r << Druid
    >>|cRXP_BUY_Compre um par de|r |T132952:0|t[Luvas de Couro Sujas] |cRXP_BUY_para gravar uma runa em|r
    .collect 714,1 -- Dirty Leather Gloves
    .target Varia Hardhide
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .accept 77649 >>Aceite A Força de um Caçador
    .turnin 77649 >>Entregue A Força de um Caçador
    .target Lanka Farshot
step << Warrior/Shaman/Druid
    #season 2
    .equip 10 >>Equipe as |T132938:0|t[Luvas Encadeadas Manchadas] << Warrior
    .equip 10 >>Equipe as |T132952:0|t[Luvas de Couro Sujas] << Shaman/Druid
    .engrave 10 >>Grave |T132342:0|t[Ímpeto da Vitória] em suas luvas << Warrior
    .equip 5 >>Equipe a |T135010:0|t[Vestimenta de Couro Rachado] << Shaman
    .engrave 5 >>Grave |T136050:0|t[Sobrecarga] em seu peito << Shaman
    .engrave 10 >>Grave |T237582:0|t[Estouro de Lava - Feitiço - Feitiço] em suas luvas << Shaman
    .engrave 10 >>Grave |T236216:0|t[Fogo Solar] em suas luvas << Druid
    .use 2127 << Shaman/Druid --Cracked Leather Vest
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .use 714 << Shaman --Dirty Leather Gloves
step << Hunter
    #season 2
    .goto Mulgore,44.35,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Runa Corretor de Runas|r
    >>|cRXP_WARN_Não venda equipamento que pode ser equipado|r
    .vendor >>|cRXP_BUY_Venda lixo do comerciante e compre todas as seguintes runas:|r << Hunter
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    >>|cRXP_WARN_Você obterá o resto de suas runas mais tarde|r
    .target Rune Broker
    .skipgossip
step << Hunter
    #season 2
    .train 410122 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Lobo Solitário|r] para treinar |T132266:0|t[Lobo Solitário] << Hunter
    .train 416086 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Fechar Combate|r] para treinar |T132394:0|t[Especialista em Corpo a Corpo] << Hunter
    .train 440563 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Guerrilla|r] para treinar |T132171:0|t[Bater e Correr] << Hunter
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
step << Hunter
    .equip 10 >>Equipe as |T132952:0|t[Luvas de Couro Rachado]
    .engrave 10 >>Grave |T236176:0|t[Tiro Quimérico] em suas luvas
    .use 2125 --Cracked Leather Gloves
step << Hunter
    #sticky
    #optional
    >>|cRXP_WARN_Procure por qualquer|r Baú/Cinto/Manto |cRXP_WARN_drops|r|cRXP_WARN_. Equipe-os e grave as runas respectivas|r
    .engrave 5 >>Grave |T132266:0|t[Lobo Solitário] em seu |T132724:0|t[Baú]
    .engrave 6 >>Grave |T132394:0|t[Especialista em Corpo a Corpo] no seu |T132513:0|t[Belt]
    .engrave 15 >>Grave |T132171:0|t[Bater e Correr] em seu |T133771:0|t[Manto]
step << Druid
    #sticky
    #optional
    >>|cRXP_WARN_Procure por qualquer|r Manto |cRXP_WARN_drops|r|cRXP_WARN_. Equipe-o e grave|r |T236168:0|t[Chuva Estelar] |cRXP_WARN_nele|r
    .engrave 15 >>Grave |T236168:0|t[Chuva Estelar] em seu |T133771:0|t[Manto]
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
    -->>|cRXP_WARN_Grind mobs on the way|r
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
    #optional
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
    .xp 3+850 >>Farme até 850+/1400xp
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
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>Aceite Quebra-Presadura!
    .target Brave Windfeather
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Harutt Thunderhorn
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Entregue Bilhete Cinzelado
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Entregue Bilhete Cinzelado
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Entregue Bilhete Verdejante
    .train 8921 >>Treine |T136096:0|t[Fogo Lunar]
    .target Gart Mistrunner
step << Druid
    #season 0
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Entregue Bilhete Inscrito em Runas
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .target Meela Dawnstrider
step << Shaman
    #season 0
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Entregue Ícones de Poder
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target Shikrik
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .train 467 >>Aprenda |T136104:0|t[Espinhos]
    .train 5177 >>Treine |T136006:0|t[Ira]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .train 467 >>Aprenda |T136104:0|t[Espinhos]
    .train 5177 >>Treine |T136006:0|t[Ira]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Treine |T136006:0|t[Ira]
    .target Gart Mistrunner
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .train 6343 >>Aprenda |T136105:0|t[Trovoada]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .train 6343 >>Aprenda |T136105:0|t[Trovoada]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .target Harutt Thunderhorn
step
    #season 2
    .goto Mulgore,44.35,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Runa Corretor de Runas|r
    >>|cRXP_WARN_Não venda equipamento que pode ser equipado|r
    .vendor >>|cRXP_BUY_Compre lixo do Comerciante e compre todas as |T134419:0|t|cRXP_WARN_[Runas]|r que você precisa dele|r
    .target Rune Broker
    .skipgossip
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Antur|r
    .accept 1656 >>Aceite A Tarefa Inacabada
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate >1.99
#version 1
#group Horda 1-22
#groupid RXP-SRGCE-H1
#name 7-13 Mulgore
#next 13-20 Savanas
#defaultfor Tauren


step << Druid
    #season 2
    .goto Mulgore,35.72,69.57
    >>|cRXP_WARN_Invoque|r |T136096:0|t[Fogo Lunar] |cRXP_WARN_nos três|r |cRXP_ENEMY_Pedras Lunares|r|cRXP_WARN_. Um baú aparecerá entre as pedras|r
    >>Abra o |cRXP_PICK_Baú Lunar|r para |T134419:0|t[|cRXP_FRIENDLY_Runa do Sol|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Sol|r] |cRXP_WARN_para treinar|r |T236216:0|t[Fogo Solar]
    .use 206989
    .itemcount 206989,1
step
	#completewith BloodhoofHome
	#softcore
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
	#hardcore
	#completewith BloodhoofHome
    .goto Mulgore,47.35,60.70,120 >>Corra para Bloodhoof Village
    .subzoneskip 222
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Aceite Mazzranache
    .target Maur Raincaller
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r e |cRXP_FRIENDLY_Baine|r
    .accept 743 >>Aceite Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.36,62.01
    .turnin 763 >>Entregue Ritos da Mãe Terra
    .accept 745 >>Aceite Dividindo a Terra
    .accept 767 >>Aceite Rito de Visão
    .accept 746 >>Aceite Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r e |cRXP_FRIENDLY_Baine|r
    .accept 743 >>Aceite Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.36,62.01
    .turnin 763 >>Entregue Ritos da Mãe Terra
    .accept 767 >>Aceite Rito de Visão
    .accept 746 >>Aceite Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    .turnin 1656 >>Entregue A Tarefa Inacabada
    .home >>Defina sua Pedra de Regresso para a Aldeia Casco Sangrento
    .target Innkeeper Kauth
    .bindlocation 222
    .subzoneskip 222,1
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
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r, |cRXP_FRIENDLY_Harken|r e |cRXP_FRIENDLY_Mull|r
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
    .accept 748 >>Aceite Água venenosa
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r e |cRXP_FRIENDLY_Harken|r
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
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto você cumpre missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith Ambercorns
    >>Mate os |cRXP_ENEMY_Prairie Wolves|r e os |cRXP_ENEMY_Adult Plainstriders|r. Saque-os para obter seus |cRXP_LOOT_Paws|r e |cRXP_LOOT_Garras|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << Hunter
    #season 2
    .goto Mulgore,59.02,54.36
    >>Invoque |T132212:0|t[Marca do Caçador] no |cRXP_ENEMY_Farfalhar Arbusto|r
    >>Mate o |cRXP_ENEMY_Venture Co. Poacher|r que aparece. Saqueie-o para |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step << Hunter
    #season 2
    .train 410113 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .use 206155
    .itemcount 206155,1
step
    #label Ambercorns
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Colete os |cRXP_PICK_Ambercorns|r. Eles podem ser encontrados sob as árvores no chão
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
    >>Mate os |cRXP_ENEMY_Prairie Wolves|r e os |cRXP_ENEMY_Adult Plainstriders|r. Saque-os para obter seus |cRXP_LOOT_Paws|r e |cRXP_LOOT_Garras|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
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
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Colete as |cRXP_PICK_Well Stones|r ao redor do poço
    .complete 771,1 --Well Stone (2)
step
    #xprate <2.1
    #completewith Gnolls
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto você cumpre missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Vá e volte entre os dois acampamentos. Abata os |cRXP_ENEMY_Palemane Tanners|r, os |cRXP_ENEMY_Palemane Skinners|r e os |cRXP_ENEMY_Palemane Poachers|r. Saque-os para a |cRXP_LOOT_Cortado Gnoll Cabeça|r
    >>|cRXP_WARN_Tenha cuidado com|r |cRXP_ENEMY_Lança Infame|r |cRXP_WARN_(Nível 9 raro). É muito difícil de matar.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .train 403475,1
step
    #xprate <2.1
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Vá de um lado para o outro entre os dois acampamentos. Mate os |cRXP_ENEMY_Palemane Tanners|r, os |cRXP_ENEMY_Palemane Skinners|r e os |cRXP_ENEMY_Palemane Poachers|r
    >>|cRXP_WARN_Tenha cuidado com|r |cRXP_ENEMY_Lança Infame|r |cRXP_WARN_(Nível 9 raro). É muito difícil de matar.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dela|r << Warrior
    .vendor >>Lixo Comerciante
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>Entregue A Purificação de Casco Invernal
    .accept 756 >>Aceite Totem de Chifre Troante
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
    .turnin 745 >>Entregue Dividindo a Terra
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step << !Tauren
    #xprate <2.1
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Baine|r
    .turnin 745 >>Entregue Dividindo a Terra
    .target Baine Bloodhoof
step << Tauren
    #xprate >2.09
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .turnin 754 >>Entregue A Purificação de Casco Invernal
    .target Mull Thunderhorn
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
    .accept 772 >>Aceite Rito de Visão
    .target Zarlman Two-Moons
step << Hunter
    #xprate <2.1
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    #xprate <2.1
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    #xprate <2.1
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 284 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    #xprate <2.1
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .train 8044 >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <8,1
step
    #xprate <2.1
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
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .accept 749 >>Aceite A caravana devastada
	.unitscan Morin Cloudstalker
step
    #xprate <2.1
    #completewith Clawsx
    >>|cRXP_WARN_Obtenha os itens para Mazzranache enquanto você cumpre missões por toda a zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
	#completewith Clawsx
	>>Abate os |cRXP_ENEMY_Swoops|r em Mulgore. Saque-os para obter |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #xprate <2.1
    #completewith next
    >>Abate os |cRXP_ENEMY_Stalkers|r e os |cRXP_ENEMY_Cougars|r. Saque-os para obter seus |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    #xprate <2.1
    .goto Mulgore,53.74,48.17
    >>Clique no |cRXP_PICK_Caixote de Suprimentos Lacrado|r
    .turnin 749 >>Entregue A Caravana Devastada
    .accept 751 >>Aceite A caravana devastada
step << Tauren
    #xprate <2.1
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
step
    #xprate <2.1
    #softcore
	#completewith Thunderhorn
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #xprate <2.1
    #hardcore
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >>Volte para Bloodhoof Village
    .subzoneskip 222
step << Hunter
    #xprate <2.1
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
step
    #xprate <2.1
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Entregue Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (7s 1c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kennah|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (4p 14c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compre um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_dele|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Moorat|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipe o|r |T135611:0|t[Bacamarte Ornado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <2.1
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Harant|r
    .vendor >>Venda itens inúteis e repare
    .target Harant Ironbrace
step
    #xprate <2.1
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
    .turnin 761 >>Entregue Caçada ao Rapineiro
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
    #xprate <2.1
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
    .xp >10,1
step << Shaman
    #optional
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Aceite Call of Fogo - Missão - Missão
    .trainer >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <10,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <8,1
    .xp >10,1
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .trainer >>Treine suas magias de classe
    .accept 5928 >>Aceite Atendendo o chamado
    .target Gennia Runetotem
    .isQuestAvailable 5928
    .xp <10,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 284 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .trainer >>Treine suas magias de classe
    .accept 1505 >>Aceite Veterano Uzzek
    .target Krang Stonehoof
    .xp <10,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
    .xp >10,1
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Aceite Domando a Fera
    .trainer >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <10,1
step << Hunter
    #optional
    #loop
    .goto Mulgore,39.38,57.43,0
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43,50,0
    .use 15914 >>|cRXP_WARN_Use o seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Pinote Adulto|r |cRXP_WARN_na distância máxima|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
    .isOnQuest 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>Entregue Domar a Fera - Missão
    .accept 6087 >>Aceite Domando a Fera
    .target Yaw Sharpmane
    .isQuestComplete 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .accept 6087 >>Aceite Domando a Fera
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    #loop
    .goto Mulgore,49.49,42.27,0
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27,50,0
    .use 15915 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Espreitador-da-pradaria|r |cRXP_WARN_na distância máxima|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>Entregue Domar a Fera - Missão
    .accept 6088 >>Aceite Domando a Fera
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    #loop
    .goto Mulgore,47.25,41.33,0
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .use 15916 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Rapineiro|r |cRXP_WARN_no alcance máximo e use-o novamente assim que ele derrubar você|r
    >>|cRXP_WARN_Se falhar e ficar sem Cargas do Bastão de Adestramento, abandone a missão, pegue-o novamente e volte|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>Entregue Domar a Fera - Missão
    .accept 6089 >>Aceite Treinando a Fera
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele|r << Warrior
    .vendor >>Comerciante Lixo << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_Conclua a obtenção dos itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>Abate os |cRXP_ENEMY_Swoops|r em Mulgore. Saque-os para obter |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #xprate <2.1
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_Use o|r |T135139:0|t[Totem de Purificação Chifre Troante] |cRXP_WARN_no poço|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step << Shaman
    #season 2
    #completewith next
    >>Abata os |cRXP_ENEMY_Bael'dun Diggers|r e os |cRXP_ENEMY_Bael'dun Appraisers|r. Saque-os para a |cRXP_LOOT_Artefato Chave de Armazenamento|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step
    .goto Mulgore,31.27,49.87
    >>Abate os |cRXP_ENEMY_Bael'dun Diggers|r e os |cRXP_ENEMY_Bael'dun Appraisers|r. Saque-os para obter |cRXP_LOOT_Picareta do Prospector|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Bael'dun Appraisers|r lançam|r |T135929:0|t[Cura Inferior] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% dos pontos de vida for about 75 health)|r
    .use 4702 >>Arrebente o |T134707:0|t[Picks] na Forja
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto Mulgore,34.33,47.54,0
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Abata os |cRXP_ENEMY_Bael'dun Diggers|r e os |cRXP_ENEMY_Bael'dun Appraisers|r. Saque-os para a |cRXP_LOOT_Artefato Chave de Armazenamento|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Bael'dun Appraisers|r lançam|r |T135929:0|t[Cura Inferior] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% dos pontos de vida for about 75 health)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Shaman
    #season 2
    .goto Mulgore,31.56,49.54
    >>Abra o |cRXP_PICK_Artefato Armazenamento|r baú. Saque-o para o |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step << Shaman
    #season 2
    .equip 18,206388 >>|cRXP_WARN_Equipe o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith Burial
    .aura 408828 >>|cRXP_WARN_Mate inimigos tendo causado dano usando|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para ganhar|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_AVISO: Você deve fazer isto em inimigos que possam fornecer experiência para ganhar camadas|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Warrior
    #xprate <2.1
    #season 2
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
    >>Abata os |cRXP_ENEMY_Fúria dos Ventos Vento Bruxas|r e os |cRXP_ENEMY_Fúria dos Ventos Harpias|r. Saque-os para suas |cRXP_LOOT_Garras|r e a |cRXP_LOOT_Cortado Harpia Cabeça|r
    .complete 743,1 --Windfury Talon (8)
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
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
    >>Mate |cRXP_ENEMY_Bruxas Eólica Ventofúria|r e |cRXP_ENEMY_Harpias Ventofúria|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >>Entre na caverna logo ao norte das Harpias Fúria dos Ventos
step
    #xprate <2.1
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Entregue Rito de Visão
    .accept 773 >>Aceite Rito de sabedoria
    .target Seer Wiserunner
step
    #xprate >2.09
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Entregue Rito de Visão
    .target Seer Wiserunner
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_Use o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Entalhe de Luvas: Impacto Derretido]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_Você pode descartar|r |T134712:0|t[Água dos Videntes] |cRXP_WARN_das bolsas, pois não precisa mais dela|r
step << Druid/Hunter/Shaman
    #completewith next
    .goto Thunder Bluff,32.00,66.69
    .zone Thunder Bluff >>Voe para Penhasco do Trovão
    .isOnQuest 6089 << Hunter
    .xp <10,1 << Druid
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele está|r |T132320:0|t[Furtivo]
    .accept 76156 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5932
    .xp <10,1
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul Runetotem|r
    .accept 886 >>Aceite Oásis de Savanas
    .target Arch Druid Hamuul Runetotem
    .xp <10,1
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
    .xp <10,1
step << Druid
    #completewith GreatBearS
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite|r
    .turnin 5922 >>Entregue Moonglade
    .accept 5930 >>Aceite Espírito do Grande Urso
    .target Dendrite Starblaze
    .isOnQuest 5922
step << Druid
    #label GreatBearS
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite|r
    .accept 5930 >>Aceite Espírito do Grande Urso
    .target Dendrite Starblaze
    .isQuestTurnedIn 5922
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito do Grande Urso|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
    .isQuestTurnedIn 5922
step << Druid
    #completewith next
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite|r
    .turnin 5930 >>Entregue Espírito do Grande Urso
    .accept 5932 >>Aceite De volta ao Penhasco do Trovão
    .target Dendrite Starblaze
    .isQuestTurnedIn 5922
step << Druid
    #completewith DruidBearForm
    .hs >>Vá para Penhasco do Trovão
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .isQuestTurnedIn 5922
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Bunthen Plainswind
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>Entregue em Trovão Blefe - Missão
    .accept 6002 >>Aceite Corpo e Coração
    .target Turak Runetotem
    .isQuestTurnedIn 5922
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holto Chifre Troante|r
	.turnin 6089 >>Entregue Treinamento da Fera - Missão
    .target Holt Thunderhorn
    .isOnQuest 6089
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa|r
    .train 24547 >>Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
    .isQuestTurnedIn 6089
step << Hunter
    #completewith SacredBurial
    +|cRXP_WARN_Arrastar|r |T132162:0|t[Treinamento de Feras] |cRXP_WARN_para suas barras de ação. Ensine habilidades ao seu mascote|r
    .isQuestTurnedIn 6089
step << Druid/Hunter/Shaman
    #xprate <2.1
    .goto Thunder Bluff,53.81,27.82,30,0
    .goto Mulgore,59.85,25.62
    .zone Mulgore >>Saia do Penhasco do Trovão perto do elevador do norte
    .zoneskip Thunder Bluff,1
    .isQuestTurnedIn 6089 << Hunter
    .isQuestTurnedIn 5932 << Druid
step << Hunter
    #xprate <2.1
    #completewith SacredBurial
    .cast 1515 >>Dome o |cRXP_ENEMY_Lobo-da-pradaria Alfa|r
    >>|cRXP_WARN_Isso permitirá que você treine|r |T132278:0|t[Morder Rank 2]
    .mob Prairie Wolf Alpha
step
    #xprate <2.1
    #completewith SacredBurial
    >>|cRXP_WARN_Conclua a obtenção dos itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
    #completewith SacredBurial
    >>Fique atento a |cRXP_ENEMY_Uivo Fantasma|r. Pegue dele o |T134358:0|t[|cRXP_LOOT_Manto Marcado por Demônios|r]. Use-o para iniciar a missão
    >>|cRXP_WARN_Cuidado, pois |cRXP_ENEMY_Uivo Fantasma|r é difícil por ser nível 12|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Aceite O Manto Marcado por Demônios
    .use 4854
    .unitscan Ghost Howl
step
    #xprate <2.1
	#completewith next
	>>Abate os |cRXP_ENEMY_Swoops|r em Mulgore. Saque-os para obter |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <2.1
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Aceite Sepultamento Sagrado
    .target Lorekeeper Raintotem
step
    #optional
    #label SacredBurial
step << Warrior
    #xprate <2.1
    #season 2
    #completewith RiteofWisdom
    >>Abata os |cRXP_ENEMY_Costagulha Intrusos|r. Saque-os para a |cRXP_LOOT_Cortado Quilboar Cabeça|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #xprate <2.1
    #completewith next
    >>Mate |cRXP_ENEMY_Traiçoeiros Costagulha|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <2.1
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Espírito Ancestral|r
    .turnin 773 >>Entregue Rito de Sabedoria
    .accept 775 >>Aceite. Siga para o Penhasco do Trovão
    .target Ancestral Spirit
step << Warrior
    #xprate <2.1
    #season 2
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
    >>Abata |cRXP_ENEMY_Intrusos Costagulha|r. Saqueie-os por uma |cRXP_LOOT_Cabeça de Quilboar Cortada|r
    .complete 833,1 --Bristleback Interloper (8)
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #xprate <2.1
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
    >>Mate |cRXP_ENEMY_Traiçoeiros Costagulha|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <2.1
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Entregue Sepultamento Sagrado
    .target Lorekeeper Raintotem
step
    #xprate <2.1
    #completewith next
    >>|cRXP_WARN_Conclua a obtenção dos itens para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
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
	>>Mate |cRXP_ENEMY_Rapineiros|r. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <2.1
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
step << skip --Cannon removed from game
    #season 2
    #softcore
    #completewith Bloodhoofturnins1
    .goto Thunder Bluff,41.17,67.66
    +Clique no |cRXP_PICK_Ultra Canhão|r para se impulsionar de volta a Aldeia de Bloodhoof
    >>|cRXP_WARN_Você morrerá ao chegar, mas pode voltar instantaneamente|r
    >>|cRXP_WARN_Remova suas|r |T135992:0|t[Asas Mágicas] |cRXP_WARN_bônus quando elas tiverem 2 segundos restantes para tentar pousar no rio e evitar a morte
    .zoneskip Thunder Bluff,1
step
    #completewith Bloodhoofturnins1
    .zone Mulgore >>Saia de Penhasco do Trovão
    .zoneskip Thunder Bluff,1
step
    #softcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,48.22,38.85
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    >>|cRXP_WARN_Morra na seta do marcador ou mais ao sul dela|r
    .zoneskip Thunder Bluff
step
    #hardcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,47.33,57.17,120 >>Volte para Bloodhoof Village
    .subzoneskip 222
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Entregue Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Entregue O Manto Marcado por Demônios
    .target Skorn Whitecloud
    .isOnQuest 770
step << Warrior
    #xprate <2.1
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vateya|r em Bloodhoof Village
    >>Entregue as |cRXP_LOOT_Cabeças|r que você coletou em troca de |T134455:0|t[Runa Fragmentos]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .use 204688 >>Usar os |T134455:0|t[Runa Fragmentos] para criar |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .train 403475 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1
step << Tauren
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r e |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Entregue Purificação de Chifre Troante
    --.accept 759 >>Accept Wildmane Totem
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Entregue Caçada ao Rapineiro
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << !Tauren
    #xprate <2.1
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
step << Tauren
    #xprate <2.1
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r e |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Entregue Purificação de Chifre Troante
    --.accept 759 >>Accept Wildmane Totem
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << !Tauren
    #xprate <2.1
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r e |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
step
    #xprate >2.09
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
step
    #xprate >2.09
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r e |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Entregue Escavação Enânica
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
step
    #completewith AlphaTeeth
    .destroy 4702 >>|cRXP_WARN_Você pode excluir as|r |T134707:0|t[Picaretas de Prospector] |cRXP_WARN_das bolsas, pois não são mais necessárias|r
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Heavy Shots] |cRXP_BUY_dele|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 2687 >>Treine suas magias de classe
    .accept 1505 >>Aceite Veterano Uzzek
    .target Krang Stonehoof
step << Warrior
    #optional
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 7384 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <12,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .train 8050 >>Treine suas magias de classe
    .accept 2984 >>Aceite Call of Fogo - Missão - Missão
    .target Narm Skychaser
step << Shaman
    #optional
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .train 547 >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <12,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Aceite Domando a Fera
    .train 13165 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .isQuestAvailable 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw|r
    .train 14281 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <12,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 8924 >>Treine suas magias de classe
    .accept 5928 >>Aceite Atendendo o chamado
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <12,1
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
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dela|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step << skip
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Aceite A senda do caçador
    .target Skorn Whitecloud
step
    #xprate >2.09
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
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .accept 749 >>Aceite A caravana devastada
	.unitscan Morin Cloudstalker
step << Hunter
    #xprate >2.09
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
    .train 16828 >>|cRXP_WARN_Cast|r |T132164:0|t[Domar Fera] |cRXP_WARN_em um |cRXP_ENEMY_Lobo-da-pradaria Alfa|r. Ataque os inimigos com ele para aprender|r |T132140:0|t[Garra (Rank 3)]
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
    .mob Prairie Wolf Alpha
step
    #xprate >2.09
    .goto Mulgore,53.74,48.17
    >>Clique no |cRXP_PICK_Caixote de Suprimentos Lacrado|r
    .turnin 749 >>Entregue A Caravana Devastada
    .accept 751 >>Aceite A caravana devastada
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
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .turnin 751 >>Entregue A Caravana Devastada
    .accept 764 >>Aceite Empreendimentos S.A.
    .accept 765 >>Aceite Supervisor Geringonça
	.unitscan Morin Cloudstalker
step
    #season 2
    #completewith Fizsprocket1
    .goto Mulgore,61.51,47.29,20 >>Viagem para Empreendimentos S.A. Mina
step << Shaman
    #season 2
    #completewith VentureCoKills
    >>Abra os |cRXP_PICK_Blasting Suprimentos|r dentro da mina e do outro lado. Saqueie-os para obter as |cRXP_LOOT_Seaforium Mineração Cargas|r
    >>|cRXP_WARN_Fique nos níveis superiores da caverna se possível|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Trabalhadores da Venture Co.|r e os |cRXP_ENEMY_Supervisores da Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>Abate |cRXP_ENEMY_Supervisor Geringonça|r. Saque a |cRXP_LOOT_Prancheta|r dela
    >>|cRXP_WARN_Entre na mina e siga o lado direito/leste para alcançá-lo|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Geringonça
step
    #label VentureCoKills
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
    #season 2
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Abra os |cRXP_PICK_Blasting Suprimentos|r dentro da mina e do outro lado. Saqueie-os para obter as |cRXP_LOOT_Seaforium Mineração Cargas|r
    >>|cRXP_WARN_Fique nos níveis superiores da caverna se possível|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
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
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .turnin 764 >>Entregue Empreendimentos S.A.
    .turnin 765 >>Entregue para o Supervisor Geringonça
	.unitscan Morin Cloudstalker
step << Druid
    #season 2
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
    >>Mate os |cRXP_ENEMY_Flatland Prowlers|r e os |cRXP_ENEMY_Prairie Lobo Alphas|r. Saqueie-os para obter o |T134903:0|t[|cRXP_FRIENDLY_Ídolo de Raiva Ursina|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >>|cRXP_WARN_Equipe o|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo de Raiva Ursina|r]
    .use 206954
    .train 410025,1
    .itemcount 206954,1
step << Druid
    #season 2
    #completewith next
    +|cRXP_WARN_Mantenha 50+ de fúria por pelo menos 60 segundos para poder aprender|r |T132135:0|t[Destroçar]
step << Druid
    #season 2
    .train 410025 >>|cRXP_WARN_Use o|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo de Raiva Ursina|r] |cRXP_WARN_para treinar|r |T132135:0|t[Destroçar]
    .use 206954
    .itemcount 206954,1
step << skip
    #label AlphaTeeth
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .goto Mulgore,66.34,67.01
    >>Mate |cRXP_ENEMY_Lobos-da-pradaria Alfa|r na área. Pegue seus |cRXP_LOOT_Dentes|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step << skip
    #softcore
	#completewith Thunderhorn2
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << skip
    #hardcore
    #completewith Thunderhorn2
    .goto Mulgore,46.5,55.5,150 >>Volte para Bloodhoof Village
step << skip
    #label Thunderhorn2
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>Vá para Totem de Juba Agreste
    .accept 760 >>Aceite Purificação de Juba Agreste
    .target Mull Thunderhorn
step
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >>Viaje para os Sertões
    .isQuestAvailable 5922
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Aprenda a rota de voo de Camp Taurajo
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Omusa Thunderhorn
    .isQuestAvailable 5922
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5922
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul Runetotem|r
    .accept 886 >>Aceite The Barrens Oases
    .target Arch Druid Hamuul Runetotem
    .isQuestAvailable 5922
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>Entregue Heeding the Call - Missão - Missão - Missão
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
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
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
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
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
    .zoneskip Thunder Bluff,1
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>Corra para a Pedra Luastra e use o |T132857:0|t[Cenarion Lunardust]. Mate |cRXP_ENEMY_Lunagarra|r
    >>|cRXP_WARN_Evite|r |cRXP_ENEMY_Thunderheads|r |cRXP_WARN_na área|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .use 15710
    .mob Lunaclaw
step << !Druid
    .goto The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Aprenda a rota de voo de Camp Taurajo
	.target Omusa Thunderhorn
    .isQuestAvailable 5922
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirge Chifre Austero|r
    .accept 854 >>Aceite Jornada para a Encruzilhada
    .target Kirge Sternhorn
step
    #completewith next
    .subzone 380 >>Vá ao norte em direção à Encruzilhada
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .turnin 886 >>Viagem para The Barrens Oases << Druid
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380,1
    .subzoneskip 380
step << Tauren
    .goto The Barrens,51.5,30.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 854 >>Entregue Jornada à Encruzilhada
    .target Thork
step
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jahan|r
    .accept 6361 >>Aceite Um pacote de peles
    .target Jahan Hawkwing
step
    #xprate <2.1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Aceite Esporos de Fungos
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .target Apothecary Helbrim
step
    #xprate <2.1
    #completewith next
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Mantenha distância máxima de |cRXP_ENEMY_Kolkar|r |cRXP_WARN_enquanto coleta os cogumelos. Eles são nível 12-14|r
    >>|cRXP_WARN_A continuação dessa missão tem o poderoso |cRXP_FRIENDLY_Mexedor de Caldeirão|r |cRXP_WARN_como recompensa. Você pode pular essa missão por enquanto se não pretender usá-lo|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate <2.1
    .goto The Barrens,45.06,22.54
    >>Mergulhe debaixo d'água para o |cRXP_PICK_Borbulhando Rachadura|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #xprate <2.1
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Mantenha distância máxima de |cRXP_ENEMY_Kolkar|r |cRXP_WARN_na área. Eles são nível 12-14|r
    >>|cRXP_WARN_A continuação dessa missão tem o poderoso |cRXP_FRIENDLY_Mexedor de Caldeirão|r |cRXP_WARN_como recompensa. Você pode pular essa missão por enquanto se não pretender usá-lo|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate <2.1
    #softcore
	#completewith ZamahPickup
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #xprate <2.1
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >>Vá para a Encruzilhada
step
    #xprate <2.1
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Entregue Os Poços Esquecidos
    .accept 877 >>Aceite Oásis Estagnante
    .target Tonga Runetotem
    .isQuestComplete 870
step
    #xprate <2.1
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Entregue Os Poços Esquecidos
    .accept 877 >>Aceite Oásis Estagnante
    .target Tonga Runetotem
    .isQuestTurnedIn 877
step
    #xprate <2.1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Espere o RP terminar|r
    >>|cRXP_WARN_Isso inicia uma missão cronometrada de 45 minutos|r
    .turnin 848 >>Entregue Esporos de Fungos
    .timer 7,Esporos de Fungos RP
    .accept 853 >>Aceite Boticário Zamah
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <2.1
    #optional
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Isso inicia uma missão cronometrada de 45 minutos|r
    .accept 853 >>Aceite Boticário Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
step
    #xprate <2.1
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
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Viagem para A Senda do Caçador
    .accept 860 >>Aceite Sergra Espinhonegro
    .target Melor Stonehoof
    .isQuestComplete 861
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor|r
    .accept 860 >>Aceite Sergra Espinhonegro
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holto Chifre Troante|r
	.turnin 6089 >>Entregue Treinamento da Fera - Missão
    .target Holt Thunderhorn
step << Hunter
    #optional
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holto Chifre Troante|r
    .train 14281 >>Treine suas magias de classe
    .target Holt Thunderhorn
    .xp <12,1
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa|r
    >>|cRXP_WARN_Arrastar|r |T132162:0|t[Treinamento de Feras] |cRXP_WARN_para suas barras de ação. Ensine habilidades ao seu mascote|r
    .train 24547 >>Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ker|r
    .train 7384 >>Treine suas magias de classe
    .target Ker Ragetotem
    .xp <12,1
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Treine Maças de Duas Mãos
    .target Ansekhwa
    .money <0.1154
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Treine Cajados
    .target Ansekhwa
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Aceite Os Preparativos da Cerimônia
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76156 >>Entregue À Espreita com a Mãe Terra
    .accept 76160 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
step
    #xprate <2.1
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Vá para o Alto do Espírito e entre nas Piscinas da Visão
step
    #xprate <2.1
    #label CauldronStirrer
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Entregue Boticário Zaqueu
    .target Apothecary Zamah
    .isOnQuest 853
step
    #xprate <2.1
    #optional
    #completewith ReturntoJahan
    +|cRXP_WARN_Equipe o|r |T135145:0|t[Mexedor de Caldeirão]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 547 >>Treine suas magias de classe
    .target Tigor Skychaser
    .xp <12,1
step << Warrior
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Netali|r e |cRXP_FRIENDLY_Mugildo|r no Alto do Espírito
    +Mate |cRXP_FRIENDLY_Mugildo|r quando ele se tornar hostil
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Netali|r
    >>Obtenha |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] dela
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r]
    .use 204716
    .itemcount 204716,1
step
    #label ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Fale com Tal, o Mestre de Mantícoras
    .accept 6364 >>Aceite Fale novamente com Jahan
    .target Tal
step
    #xprate <2.1
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Siga para o Penhasco do Trovão
    --.accept 776 >>Accept Rites of the Earthmother
    .target Cairne Bloodhoof
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Entregue Corpo e Coração
    .target Turak Runetotem
step << Druid
    #optional
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .train 8936 >>Treine suas magias de classe
    .target Turak Runetotem
    .xp <12,1
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >>Aceite Procurando pela Bolsa Perdida
    .accept 5723 >>Aceite Testando a Força de um Inimigo
    .target Rahauro
    .dungeon RFC
step
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_Isto desbloqueará uma missão fácil. Se você já tem 2 profissões, pule este passo|r
    .train 8613 >>Treine |T134366:0|t[Esfolamento]
    .target Mooranta
step
    #optional
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veren|r
    .accept 768 >>Aceite Em busca de couro
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #optional
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre Doze|r |T134252:0|t[Couro Leve] |cRXP_BUY_do Leilão|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #optional
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veren|r
    .turnin 768 >>Entregue Em busca de couro
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto Thunder Bluff,52.32,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaga|r
    >>|cRXP_BUY_Compre um|r |T133972:0|t[Carne Seca Fortalecedora] |cRXP_BUY_dela para alimentar seu mascote|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step << Shaman
    #season 2
    #completewith next
    >>Abate |cRXP_ENEMY_Windfury Sorceresses|r. Saque-as para obter |cRXP_LOOT_Azure Feather|r
    >>Mate |cRXP_ENEMY_Matriarcas Ventofúria|r. Pegue suas |cRXP_LOOT_Penas Bronze|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    #loop
    .goto Mulgore,37.18,12.36,0
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>Saque |cRXP_LOOT_Pinhões de Fúria dos Ventos|r no chão
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
step << Shaman
    #season 2
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
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >>Voe de volta para Penhasco do Trovão
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Entregue Os preparativos da cerimônia
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76160 >>Entregue À Espreita com a Mãe Terra
    .accept 76240 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
step << Shaman
    #season 2
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre um|r |T133894:0|t[Peixe Brilhante Cru] |cRXP_BUY_do Leilão|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Vá em direção a |cRXP_FRIENDLY_Sewa Corre com a Névoa|r
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kah Corre com a Névoa|r
    .train 7734 >>Aprenda |T136245:0|t[Pesca]
    .target Kah Mistrunner
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sewa Corre com a Névoa|r
    >>|cRXP_BUY_Compre uma|r |T132932:0|t[Vara de Pescar] |cRXP_BUY_e uma|r |T134335:0|t[Miçanga Brilhosa] |cRXP_BUY_dela|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_Equipe a|r |T132932:0|t[Vara de Pescar]
    .use 6256
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_Prenda a|r |T134335:0|t[Miçanga Brilhosa] |cRXP_WARN_à sua|r |T132932:0|t[Vara de Pescar]
    .use 6529
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Pesque no lago até obter |T133894:0|t[|cRXP_LOOT_Peixe Brilhante Cru|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
step << Shaman
    #season 2
    >>Usar |T132147:0|t[Conjunto de Facas] para criar |T134007:0|t[Pedaços de Peixe]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76240 >>Entregue À Espreita com a Mãe Terra
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
step
    #completewith HidesTurnIn
    .hs >>Vá para A Encruzilhada
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para Encruzilhada
    .target Tal
    .zoneskip The Barrens
    .cooldown item,6948,<0
step
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Entregue Retorno a Jahan
    .target Jahan Hawkwing
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .target Apothecary Helbrim
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos Para a Encruzilhada
    .target Thork
step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .accept 867 >>Aceite As harpias bandoleiras
    .target Darsok Swiftdagger
step
    #optional
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
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale|r com |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135613:0|t[Cano de Atirar do Caçador] |cRXP_BUY_dele|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipe o|r |T135613:0|t[Cano de Atirar do Caçador]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Shaman
    #completewith next
    >>Procure por |cRXP_PICK_Barril Vazio de Chen|r ao lado de |cRXP_FRIENDLY_Kranal|r. Saque-o e comece a missão
    >>|cRXP_WARN_Você pode obtê-lo depois se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
    .use 4926
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
step << Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step << Shaman
    #completewith next
    .goto Durotar,54.31,39.44,30,0
    .goto Durotar,52.8,28.7,20 >>Entre na Caverna Sopravento
step << Shaman
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Abate |cRXP_ENEMY_Cultists|r. Saque-os para uma |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
    .target Kargal Battlescar
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
    .goto Durotar,39.34,28.25,40,0
    >>Mate |cRXP_ENEMY_Pelegos de Relâmpago|r. Pegue suas |cRXP_ENEMY_Escamas|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Entregue Caminho da Defesa
    .accept 1502 >>Aceite Thun'grim Olhafogo
    .target Uzzek
step
    #optional
    .abandon 761 >>Abandone Caçada ao Rapineiro
step
    #optional
    .abandon 766 >>Abandone Mazzranache
]])
