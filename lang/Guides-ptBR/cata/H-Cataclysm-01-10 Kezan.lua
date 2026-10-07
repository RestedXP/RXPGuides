if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Kezan
#next 6-11 The Perdida Isles
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Goblin
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    .goto 194,56.44,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Sassy|r
    .accept 14138 >>Aceite Tomando Conta do Negócio
    .target Sassy Hardwrench
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Dampwick|r
    .turnin 14138 >>Entregue Tomando Conta do Negócio
    .accept 14069 >>Aceite Bons Escravos São Difíceis de Achar
    .accept 14075 >>Aceite Problema nas Minas
    .target Foreman Dampwick
step
    #completewith next
    .goto 194,65.52,87.82,10 >>Entre nas minas
step
    #completewith KezanTroubleintheMines
    >>Clique nos |cRXP_FRIENDLY_Trolls Desafiador|r. Eles também podem ser encontrados fora das minas.
    .goto 194,66.02,82.39,0,0
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    #label KezanTroubleintheMines
    >>Mate os |cRXP_ENEMY_Worms Escavador|r
    .goto 197,50.73,59.55
    .complete 14075,1 --6/6 Tunneling Worm slain
    .mob Tunneling Worm
step
    #completewith next
    .goto 194,65.52,87.82,8 >>Saia das minas
step
    >>Clique nos |cRXP_FRIENDLY_Trolls Desafiador|r
    .goto 194,72.45,83.45,50,0
    .goto 194,70.39,77.73,30,0
    .goto 194,68.74,82.87
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Dampwick|r
    .turnin 14075 >>Entregue Problema nas Minas
    .turnin 14069 >>Entregue Bons Escravos São Difíceis de Achar
    .accept 25473 >>Aceite Jaka'Cola
    .target Foreman Dampwick
step
    .goto 194,56.4,76.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Espoleta Chaveforte|r
    .turnin 25473 >>Entregue Jaka'Cola
    .accept 28349 >>Aceite A Carlota do Marketing
    .target Sassy Hardwrench
step
    .goto 194,58.3,76.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Carlota Tomanota|r
    .turnin 28349 >>Entregue A Carlota do Marketing
    .accept 14071 >>Aceite Dando um Rolé com os Mano
    .target Megs Dreadshredder
step
    .goto 194,58.9,76.3
    >>Usar as |T134246:0|t[Chaves do Carango]
    >>|cRXP_WARN_Você pode vincular a janela de "Ativo Itens" em RestedXP pressionando escape e, em seguida, indo em Opções->Atalhos->RestedXP Guides.|r
    .use 46856
    .complete 14071,1 --1/1 Keys to the Hot Rod used
step
    .goto 194,59.93,85.52,15,0
    .goto 194,58.9,85.5
    >>Vá até |cRXP_FRIENDLY_Azeitona|r
    >>|cRXP_WARN_Usar|r |T135788:0|t[Soco] |cRXP_WARN_para aumentar sua velocidade|r
    .complete 14071,2 --1/1 Izzy picked up
    .target Izzy
step
    .goto 194,59.93,85.52,15,0
    .goto 194,57.95,70.46,20,0
    .goto 194,60.6,49.9
    >>Vá até |cRXP_FRIENDLY_Bolão|r
    >>|cRXP_WARN_Usar|r |T135788:0|t[Soco] |cRXP_WARN_para aumentar sua velocidade|r
    .complete 14071,4 --1/1 Gobber picked up
    .target Gobber
step
    .goto 194,48.5,38.3
    >>Vá até |cRXP_FRIENDLY_Reco-reco|r
    >>|cRXP_WARN_Usar|r |T135788:0|t[Soco] |cRXP_WARN_para aumentar sua velocidade|r
    .complete 14071,3 --1/1 Ace picked up
    .target Ace
step
    #completewith next
    .goto 194,61.98,54.83,30,0
    .goto 194,60.13,64.59,30,0
    .goto 194,57.90,71.12,20 >>Siga a rua de volta para cima
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Megs|r, |cFF00FF25Sassy|r e |cFF00FF25Pedrico|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Megs|r, |cFF00FF25Sassy|r e |cFF00FF25Candy|r << Male
    .turnin 14071 >>Entregue Dando um Rolé com os Mano
    .accept 24567 >>Aceite Apresente-se para os Testes
    .goto 194,58.28,76.57
    .accept 14070 >>Aceite Faça Você Mesmo
    .goto 194,56.43,76.95
    .accept 26711 >>Aceite Rumo ao Banco << Female
    .goto 194,56.32,76.77 << Female
    .accept 26712 >>Aceite Indo pro Banco << Male
    .goto 194,56.30,77.12 << Male
    .target Megs Dreadshredder
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Certifique-se de usar seu|r |T134246:0|t[Chaves do Carango]
    .use 46856
step
    #completewith next
    .goto 194,57.10,78.44,10,0
    .goto 194,53.39,75.13,20,0
    .goto 194,47.36,78.46,30 >>Siga a seta ao redor da casa
step
    .goto 194,45.19,74.76
    >>Ataque |cFFFF5722Bruno|r
    .complete 14070,1 --1/1 Bruno Flameretardant beaten down
    .mob Bruno Flameretardant
step
    .goto 194,41.6,81.9
    >>Ataque |cFFFF5722Espuma|r
    .complete 14070,4 --1/1 Sudsy Magee beaten down
    .mob Sudsy Magee
step
    .goto 194,37.47,75.97,15,0
    .goto 194,35.0,77.8
    >>Ataque |cFFFF5722Jack|r
    .complete 14070,3 --1/1 Jack the Hammer beaten down
    .mob Jack the Hammer
step
    .goto 194,36.84,69.95
    >>Ataque |cFFFF5722Frankei|r
    .complete 14070,2 --1/1 Frankie Gearslipper beaten down
    .mob Frankie Gearslipper
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Certifique-se de usar suas|r |T134246:0|t[Chaves do Carango]
    .use 46856
step
    .goto 194,34.16,69.32,10,0
    .goto 194,32.27,63.79,12,0
    .goto 194,29.72,64.52,16,0
    .goto 194,30.11,71.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEntre no banco e fale com |cFF00FF25FBok Bank Teller|r
    .turnin 26711 >>Entregue Rumo ao Banco <<Female
    .accept 14110 >>Aceite A Nova Você <<Female
    .turnin 26712 >>Entregue Indo pro Banco <<Male
    .accept 14109 >>Aceite O Novo Você <<Male
    .target FBok Bank Teller
step
    #completewith TheNewYou
    .vehicle 34840 >>|cFFFCDC00Use |T134246:0|t[Chaves do Carango]
    .use 46856
step
    .goto 194,29.80,63.62,16,0
    .goto 194,34.66,54.73,10,0
    .goto 194,37.63,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Rercovitch|r
    >>Obtenha um |cRXP_LOOT_Hip New Outfit|r dele
    .complete 14110,2 << Female --1/1 Hip New Outfit
    .complete 14109,2 << Male --1/1 Hip New Outfit
    .use 46856
    .skipgossip
    .target Szabo
step
    .goto 194,34.87,45.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Gappy|r
    >>Obtenha |cRXP_LOOT_Shiny Bling|r dele
    .complete 14110,1 << Female --1/1 Shiny Bling
    .complete 14109,1 << Male --1/1 Shiny Bling
    .skipgossip
    .target Gappy Silvertooth
step
    #label TheNewYou
    .goto 194,40.43,45.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Missa|r
    >>Obtenha |cRXP_LOOT_Óculos Maneiros|r dela
    .complete 14110,3 << Female --1/1 Cool Shades
    .complete 14109,3 << Male --1/1 Cool Shades
    .skipgossip
    .target Missa Spekkies
step
    .goto 194,42.57,55.34,20,0
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Crosscheck|r
    .turnin 24567 >>Entregue Apresente-se para os Testes
    .accept 24488 >>Aceite Os Substitutos
    .target Coach Crosscheck
step
    #loop
    .goto 194,51.883,60.156,0
    .goto 194,46.133,63.902,0
    .waypoint 194,51.883,60.156,25,0
    .waypoint 194,49.085,69.812,25,0
    .waypoint 194,46.133,63.902,25,0
    .waypoint 194,43.062,62.732,25,0
    .waypoint 194,44.868,54.606,25,0
    >>Pegue |cFFDB2EEFReplacements Parts|r do chão enquanto estiver no |cFFFCDC00Carango|r
    .complete 24488,1 --6/6 Replacement Parts
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Crosscheck|r
    .turnin 24488 >>Entregue Os Substitutos
    .accept 24502 >>Aceite A Rispidez Necessária
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    >>Entre em |cRXP_FRIENDLY_Bilgewater Bucaneiro|r
    .complete 24502,1 --1/1 Bilgewater Buccaneer
    .target Bilgewater Buccaneer
step
    >>Usar |T134480:0|t[Lançar Futebomba] (1) para matar os |cRXP_ENEMY_Steamwheedle Sharks|r na sua frente
    .goto 194,47.7,57.7
    .complete 24502,2 --8/8 Steamwheedle Shark Footbombed
step
    >>Clique na missão no seu registro de missões, você pode ter que desmontar para aceitar a próxima missão de |cFF00FF25Crosscheck|r
    .goto 194,48.79,57.79
    .turnin 24502 >>Entregue A Rispidez Necessária clicando na missão abaixo do seu minimapa
    --.accept 24503 >>Accept Fourth and Goal << Male
    .accept 28414 >>Aceite Chute a Gol
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    .vehicle >>Entre em |cRXP_FRIENDLY_Bilgewater Bucaneiro|r
    .target Bilgewater Buccaneer
step
    >>Usar |T134480:0|tChutar Futebomba (1)
    --.complete 24503,1 << Male --1/1 Footbomb Kicked Through Smokestacks
    .complete 28414,1 --1/1 Footbomb Kicked Through Smokestacks
step
    #completewith next
    +|cFFFCDC00Saia do veículo|r
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Crosscheck|r
    .turnin 24503 >>Entregue Chute a Gol
    --.turnin 28414 >>Turn in Fourth and Goal << Male
    .accept 24520 >>Aceite Dê as Notícias a Espoleta
    .target Coach Crosscheck
step
    #completewith next
    .hs >>Voe para KTC Headquarters
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Sassy|r e |cFF00FF25Pedrico|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Sassy|r e |cFF00FF25Candy|r << Male
    .turnin 24520 >>Entregue Dê as Notícias a Espoleta
    .turnin 14070 >>Entregue Faça Você Mesmo
    .goto 194,56.42,76.94
    .turnin 14110 >>Entregue O Novo Você << Female
    .goto 194,56.32,76.77 << Female
    .turnin 14109 >>Entregue O Novo Você << Male
    .goto 194,56.30,77.12 << Male
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Slinky|r
    .accept 14010 >>Aceite Eviscerar
    .train 2098 >>Treine |T132292:0|t[Eviscerar] << Cata
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cFF00FF25Guerreiromático X-9|r
    .accept 14013 >>Aceite Investida
    .train 100 >>|T132337:0|t[Investida] << Cata
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Bamm|r
    .accept 14007 >>Aceite Tiro Firme
    .train 56641 >>Treine |T132213:0|t[Tiro Firme] << Cata
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Maxx|r
    .accept 14011 >>Aceite Golpe Primevo
    .train 73899 >>Treine |T460956:0|t[Golpe Primevo] << Cata
    .target Maxx Avalanche
step << Mage cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Fizz|r
    .accept 14008 >>Aceite Mísseis Arcanos
    .train 5143 >>Treine |T136096:0|t[Mísseis Arcanos] << Cata
    .target Fizz Lighter
step << Mage !cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Fizz|r
    .accept 14008 >>Aceite Novane Congelante
    .target Fizz Lighter
step << Warlock cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Evol|r
    .accept 14012 >>Aceite Imolação
    .train 348 >>Treine |T135817:0|t[Imolação] << Cata
    .target Evol Fingers
step << Warlock !cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Evol|r
    .accept 14012 >>Aceite Corrupção
    .target Evol Fingers
step << Priest cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Goldskimmer|r
    .accept 14009 >>Aceite Cura Célere
    .train 2061 >>Treine |T135907:0|t[Cura Célere] << Cata
    .target Sister Goldskimmer
step << Priest !cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Goldskimmer|r
    .accept 14009 >>Aceite Aprenda a Palavra
    .target Sister Goldskimmer
step << Rogue
    .goto 194,60.91,77.39
	>>Lance |T132292:0|t[Eviscerar] em um |cFFFF5722Boneco de Treinamento|r
	.complete 14010,2 << !Cata --Cast Eviscerate (x3)
	.complete 14010,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 194,60.91,77.39
	>>Lance |T132337:0|t[Investida] em um |cFFFF5722Boneco de Treinamento|r
	.complete 14013,2 << !Cata --Cast Charge (x3)
	.complete 14013,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 194,60.91,77.39
	>>Use |T132213:0|t[Tiro firme] em um |cFFFF5722Boneco de Treinamento|r
	.complete 14007,2 << !Cata --Steady Shot (x3)
	.complete 14007,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Shaman
    .goto 194,60.91,77.39
	>>Use |T460956:0|t[Golpe Primevo] em um |cFFFF5722Boneco de Treinamento|r
	.complete 14011,2 << !Cata --Cast Primal Strike (x3)
	.complete 14011,1 << Cata --Cast Primal Strike (x3)
	.mob Training Dummy
step << Mage cata
    .goto 194,60.91,77.39
	>>Use |T136096:0|t[Mísseis Arcanos] em um |cFFFF5722Boneco de Treinamento|r
	.complete 14008,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 14008,1 << Cata --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Mage !cata
    .goto 194,60.91,77.39
	>>Use |T135848:0|t[Novane Congelante] em um |cFFFF5722Boneco de Treinamento|r
	.complete 14008,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 14008,1 << Cata --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Warlock cata
    .goto 194,60.91,77.39
	>>Use |T135817:0|t[Imolação] em um |cFFFF5722Boneco de Treinamento|r
	.complete 14012,1 --Cast Immolate (x3)
	.mob Training Dummy
step << Warlock !cata
    .goto 194,60.91,77.39
	>>Use |T136118:0|t[Corrupção] em um |cFFFF5722Boneco de Treinamento|r
	.complete 14012,2 << !Cata --Cast Corruption (x3)
	.mob Training Dummy
step << Priest cata
    .goto 194,58.24,77.40
	>>Use |T135907:0|t[Cura Célere] em um |cFF00FF25Funcionário Ferido|r
	.complete 14009,1 --Cast Flash Heal (x5)
	.target Injured Employee
step << Priest !cata
    .goto 194,60.91,77.39
	>>Use |T136207:0|t[Palavra Sombria: Dor] em um |cFFFF5722Boneco de Treinamento|r
	.complete 14009,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Slinky|r
    .turnin 14010 >>Entregue Eviscerar
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cFF00FF25Guerreiromático X-9|r
    .turnin 14013 >>Entregue Investida
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Bamm|r
    .turnin 14007 >>Entregue Tiro Firme
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Maxx|r
    .turnin 14011 >>Entregue Golpe Primevo
    .target Maxx Avalanche
step << Mage cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Fizz|r
    .turnin 14008 >>Entregue Mísseis Arcanos
    .target Fizz Lighter
step << Mage !cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Fizz|r
    .turnin 14008 >>Entregue Novane Congelante
    .target Fizz Lighter
step << Warlock cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Evol|r
    .turnin 14012 >>Entregue Imolação
    .target Evol Fingers
step << Warlock !cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Evol|r
    .turnin 14012 >>Entregue Imolação
    .target Evol Fingers
step << Priest cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Goldskimmer|r
    .turnin 14009 >>Entregue Cura Célere
    .target Sister Goldskimmer
step << Priest !cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Goldskimmer|r
    .turnin 14009 >>Entregue Aprenda a Palavra
    .target Sister Goldskimmer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Pedrico|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Candy|r << Male
    .accept 14153 >>Aceite A Alma da Festa << Female
    .goto 194,56.32,76.77 << Female
    .accept 14113 >>Aceite A Alma da Festa << Male
    .goto 194,56.30,77.12 << Male
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    >>Usar |T132809:0|t[Borbulhante] (1) nos |cRXP_FRIENDLY_Goblins|r que bebem
    >>Usar o |T132806:0|t[Balde] (2) em |cRXP_FRIENDLY_Goblins|r embriagados/confusos
    >>|T133836:0|t[Dançar] (3) com |cRXP_FRIENDLY_Goblins|r que dançam
    >>Usar |T134285:0|t[Fogos de Artifício] (4) em |cRXP_FRIENDLY_Goblins|r com centelhas
    >>Usar |T237329:0|t[Tira-gostos] (5) em |cRXP_FRIENDLY_Goblins|r que comem
    .goto 194,59.56,78.75,15,0
    .goto 194,59.09,80.31,10,0
    .goto 194,60.59,82.98,15,0
    .goto 194,60.82,86.33,15,0
    .goto 194,60.6,83.4
    .complete 14153,1 << Female --10/10 Partygoer entertained
	.complete 14113,1 << Male --10/10 Partygoer entertained
    .target Kezan Partygoer
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Sassy|r
    .turnin 14153 >>Entregue A Alma da Festa << Female
	.turnin 14113 >>Entregue A Alma da Festa << Male
    .accept 14115 >>Aceite Piratas Penetras
    .target Sassy Hardwrench
step
    #loop
    .goto 194/648,1329.20007,-8457.50000,0
    .waypoint 194/648,1329.20007,-8457.50000,20,0
    .waypoint 194/648,1354.90002,-8454.50000,20,0
    .waypoint 194/648,1382.70007,-8468.70020,20,0
    .waypoint 194/648,1377.70007,-8508.90039,20,0
    .waypoint 194/648,1340.09998,-8512.29980,20,0
    .waypoint 194/648,1302.09998,-8503.70020,20,0
    .waypoint 194/648,1304.90002,-8457.29980,20,0
    >>Mate os Piratas Penetras|cRXP_ENEMY_
    .complete 14115,1 --12/12 Pirate Party Crasher slain
    .target Pirate Party Crasher
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Sassy|r
    .turnin 14115 >>Entregue Piratas Penetras
    .accept 14116 >>Aceite Mais um Penetra
    .target Sassy Hardwrench
step
    #completewith next
    .goto 194,56.41,75.33,5,0
    .goto 194,55.99,75.65,4,0
    .goto 194,55.96,77.07,5 >>Suba as escadas
step
    .goto 194,56.77,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Gallywix|r
    .turnin 14116 >>Entregue Mais um Penetra
    .accept 14120 >>Aceite Um Quaquilhão de Paçoquinhas?!
    .target Trade Prince Gallywix
step
    .goto 194,59.67,77.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSalte para fora da janela e fale com |cFF00FF25Sassy|r
    .turnin 14120 >>Entregue Um Quaquilhão de Paçoquinhas?!
    .accept 14122 >>Aceite O Grande Assalto ao Banco
    .target Sassy Hardwrench
step
    .goto 194,60.054,78.092
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carlota Tomanota|r
    .accept 14121 >>Aceite Cem Anos de Perdão
    .target Megs Dreadshredder
step
    .goto 194,62.965,77.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Molhavela|r
    .accept 14124 >>Aceite Liberte o Kaja'mita
    .target Foreman Dampwick
step
    #completewith next
    .use 46856
    .vehicle 34840 >>|cRXP_WARN_Use seu|r |T134246:0|t[Chaves do Carango]|cRXP_WARN_. Enquanto no veículo, você é imune a dano de queda|r
step
    .goto 194,67.27,77.69,10,0
    .goto 194,69.59,79.35,10,0
    .goto 194,69.03,83.16,10,0
    .goto 194,66.64,84.03,10,0
    .goto 194,66.09,87.34,10,0
    .goto 194,64.34,83.48,10,0
    .goto 194,64.44,83.52
    >>Aponte o |T133712:0|t[Bombas Catapumba] para |cRXP_PICK_Kaja'mite Deposits|r e pegue o |cFF00BCD4Kaja'mite Chunks|r no chão perto das minas
    .use 48768
    .complete 14124,1 --12/12 Kaja'mite Chunk
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cFF00FF25Slinky|r. Ela se move ao redor
    .accept 14123 >>Aceite Só no Sapatinho
    .target Slinky Sharpshiv
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_Use seu|r |T134246:0|t[Chaves do Carango]|cRXP_WARN_. Enquanto no veículo, você é imune a dano de queda|r
step
    #completewith next
    .goto 194,57.94,69.61,15,0
    .goto 194,47.67,60.09,25,0
    .goto 194,38.63,78.42,25,0
    .goto 194,32.71,63.68,10,0
    .goto 194,29.79,63.75,10,0
    >>Atropale |cFFFF5722Hired Looters|r quando os ver
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    .goto 194,29.35,69.57
    >>Clique em |cRXP_PICK_First Bank of Kezan Vault|r
    >>|cRXP_WARN_Siga as instruções mostradas no centro da sua tela|r
    .complete 14122,1 --1/1 First Bank of Kezan Vault
    .complete 14122,2 --1/1 Personal Riches
step
    .goto 194,35.91,53.68,20,0
    .goto 194,41.33,53.03,20,0
    .goto 194,41.16,42.01,20,0
    .goto 194,35.96,44.39
    >>Atropale |cFFFF5722Hired Looters|r quando os ver
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Use Chaves do Carango|r.
step
    #completewith KezanWaltzRightIn
    +|cFFFCDC00Evite os|r |cFFFF5722Villa Mooks|r |cFFFCDC00e os|r |cFFFF5722Keensnout Potbellies|r |cFFFCDC00em patrulha porque eles podem detectar e matar você|r
    .mob Keensnout Potbelly
step
    .goto 194,24.20,40.67,30,0
    .goto 194,19.89,30.65
    >>Pegue |cFF00BCD4The Ultimate Bomba|r
    .complete 14123,3 --1/1 The Ultimate Bomb
step
    .goto 194,12.88,35.18
    >>Pegue |cFF00BCD4The Goblin Lisa|r
    .complete 14123,2 --1/1 The Goblin Lisa
step
    #completewith next
    .goto 194,17.66,44.49,10,0
    .goto 194,17.66,45.92,10,0
    .goto 194,16.79,46.89,8,0
    .goto 194,17.84,46.82,8,0
    .goto 194,17.34,45.91,8 >>Suba as escadas
step
    #label KezanWaltzRightIn
    .goto 194,16.72,46.26
    >>Pegue |cFF00BCD4Maldy's Falcon|r
    .complete 14123,1 --1/1 Maldy's Falcon
step
    #completewith next
    >>Salte para fora da janela e corra para os |cFFFF5722Villa Mooks|r ou os |cFFFF5722Keensnout Potbellies|r hostis
    .deathskip >>Morra e ressurja em |cFF00FF25Anjo da Cura|r
    .goto 194,17.65,45.94,5,0
    .goto 194,17.00,33.96
    .mob Keensnout Potbelly
step
    #completewith next
    .goto 194,61.89,54.13,25,0
    .goto 194,57.90,71.17,15 >>Siga o caminho para o Quartel-general
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cFF00FF25Slinky|r. Ela se move ao redor
    .turnin 14123 >>Entregue Só no Sapatinho
    .target Slinky Sharpshiv
step
    .goto 194,62.965,77.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Molhavela|r
    .target Foreman Dampwick
    .turnin 14124 >>Entregue Liberte o Kaja'mita
step
    .goto 194,60.036,78.125
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carlota Tomanota|r
    .target Megs Dreadshredder
    .turnin 14121 >>Entregue Cem Anos de Perdão
step
    .goto 194,59.607,77.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .target Sassy Hardwrench
    .turnin 14122 >>Entregue O Grande Assalto ao Banco
    .accept 14125 >>Aceite Emergência 171
step
    .goto 194/648,1371.00000,-8420.79980
    >>Entre na casa e clique em |cFF00BCD4Defective Generator|r
    .complete 14125,1 --1/1 Overload the Defective Generator
step
    .goto 194,56.05,74.67
    >>Clique em |cFF00BCD4Leaky Stove|r
    .complete 14125,2 --1/1 Activate the Leaky Stove
step
    .goto 194,55.98,77.11,5,0
    .goto 194,56.64,76.33,5,0
    .goto 194,56.61,74.85
    >>Suba as escadas e clique em |cFF00BCD4Flammable Bed|r
    .complete 14125,3 --1/1 Drop a Cigar on the Flammable Bed
step
    .goto 194,56.60,76.93,8,0
    .goto 194,59.49,76.81
    >>Pule pela janela e clique no |cFF00BCD4Gasbot Painel de Controle|r
    >>|cRXP_WARN_Espere pela encenação curta|r
    .timer 17,Emergência 171 RP
    .complete 14125,4 --1/1 KTC Headquarters Set Ablaze with Gasbot!
step
    .goto 194,59.521,76.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Analista de Sinistros|r
    .target Claims Adjuster
    .turnin 14125 >>Entregue Emergência 171
step
    .goto 194,59.607,77.106
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .target Sassy Hardwrench
    .accept 14126 >>Aceite As Economias de uma Vida
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Certifique-se de usar seu|r |T134246:0|t[Chaves do Carango]
step
    #completewith next
    .goto 194,23.18,39.30,15 >>Viaje para Gallywix's Villa
    .subzoneskip 4768
step
    #completewith next
    .goto 194,22.31,16.78
    .cast 92633 >>Clique no canhão
step
    .goto 194,20.76,13.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Gallywix|r
    .turnin 14126 >>Entregue As Economias de uma Vida
    .target Trade Prince Gallywix
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-11 As Ilhas Perdidas
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Goblin
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step
    #completewith next
    >>Às vezes você pode ficar preso e ter que fazer login novamente ou /reload
    .timer 45 >>Não entre no RP da Luz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cFF00FF25Zapnozzle|r e |cFF00FF25Gizmo|r
    .turnin 14239 >>Entregue Não Entre na Luz
    .goto 174,24.62,77.86
    .accept 14001 >>Aceite Cápsulas de Fuga Goblínicas
    .goto 174,24.65,77.94
    .target Doc Zapnozzle
    .target Geargrinder Gizmo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Doutor Sócrates|r
    >>Às vezes você pode ficar preso e ter que fazer login novamente ou /reload
    .goto 174,24.6,77.9
    .turnin 14239 >>Entregue Não Entre na Luz
    .target Doc Zapnozzle
step
    .goto 174,24.65,77.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Treco Trincatraca|r
    .accept 14001 >>Aceite Cápsulas de Fuga Goblínicas
    .target Geargrinder Gizmo
step
    >>Clique nas |cRXP_PICK_Goblin Fuga Vagem|r
    .goto 174,22.99,75.62,30,0
    .goto 174,25.50,77.65,30,0
    .goto 174,25.37,75.44
    .complete 14001,1 --6/6 Goblin Survivors Rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .goto 174,27.9,75.5
    .turnin 14001 >>Entregue Cápsulas de Fuga Goblínicas
    .accept 14014 >>Aceite Pegue Nossas Coisas de Volta!
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Max Avalanche|r
    .goto 174,27.85,74.29
    .accept 14473 >>Aceite Agora o Problema É Nosso
    .trainer >>Treine suas magias de classe << Shaman Cata
    .target Maxx Avalanche
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bam Megabomba|r
    .goto 174,27.95,74.43
    .accept 14019 >>Aceite Os Miquinhos Amestrados
    .trainer >>Treine suas magias de classe << Hunter Cata
    .target Bamm Megabomb
step << Priest Cata
    .goto 174,27.697,74.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Madeira|r
    .trainer >>Treine suas magias de classe
    .target Sister Goldskimmer
step << Mage Cata
    .goto 174,27.715,74.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luís Queiro|r
    .trainer >>Treine suas magias de classe
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,28.419,75.648
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Policarpo|r
    .trainer >>Treine suas magias de classe
    .target Evol Fingers
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guerreiromático X-9|r
    .trainer >>Treine suas magias de classe
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,28.654,76.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kika Furafundo|r
    .trainer >>Treine suas magias de classe
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
--step << Hunter
    --#completewith next
    --.cast 1515 >>Tame a |cRXP_ENEMY_Teraptor Hatchling|r
    --.mob Teraptor Hatchling
    --VV See if this is needed in Cataclysm
step
    #sticky
    #label TheLostIslesTeraMonkeys
    >>Usar |T133979:0|t[Bananas de Nitro-potássio] nos |cRXP_ENEMY_Bomb Arremessando Monkeys|r e mate os |cRXP_ENEMY_Teraptor Hatchlings|r
    .use 49028
    .goto 174,27.32,70.14,0,0
    .complete 14473,1 --6/6 Teraptor Hatchling slain
    .complete 14019,1 --10/10 Bomb-Throwing Monkeys Fed
    .mob Bomb Throwing Monkeys
    .mob Teraptor Hatchlings
step
    #loop
    .goto 174,29.73,75.42,15,0
    .goto 174,30.35,74.49,15,0
    .goto 174,30.10,72.55,20,0
    .goto 174,28.44,70.88,20,0
    .goto 174,27.32,70.14,20,0
    >>Colete |cRXP_LOOT_Caixotes de Ferramentas|r
    .complete 14014,1 --8/8 Crate of Tools
step
    #requires TheLostIslesTeraMonkeys
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Max Avalanche|r e |cRXP_FRIENDLY_Bam Megabomba|r
    .turnin 14473 >>Entregue Agora o Problema É Nosso
    .goto 174,27.85,74.29
    .turnin 14019 >>Entregue Os Miquinhos Amestrados
    .goto 174,27.95,74.43
    .target Maxx Avalanche
    .target Bamm Megabomb
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .goto 174,27.9,75.5
    .turnin 14014 >>Entregue Pegue Nossas Coisas de Volta!
    .accept 14248 >>Aceite Precisa-se
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Molhavela|r
    .goto 174,31.27,79.26
    .turnin 14248 >>Entregue Precisa-se
    .accept 14021 >>Aceite Picaretas Nas Mãos de Macacos
    .accept 14031 >>Aceite As Pinturas Rupestres
    .target Foreman Dampwick
step
    #completewith DeadOrc
    >>Siga e proteja o |cRXP_FRIENDLY_Minerador Assustado|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2946.00000,568.60004
    >>Usar o |T134442:0|t[CCJ Altamira] para tirar uma foto da pintura na parede marcada com uma câmera flutuante
    .use 49887
    .complete 14031,1 --1/1 Cave Painting 1 Captured
step
    .goto 174/648,2914.50000,573.20001
    >>Usar o |T134442:0|t[CCJ Altamira] para tirar uma foto da pintura no teto marcada com uma câmera flutuante
    .use 49887
    .complete 14031,2 --1/1 Cave Painting 2 Captured
step
    .goto 174/648,2857.00000,615.29999
    >>Usar o |T134442:0|t[CCJ Altamira] para tirar uma foto da pintura na parede marcada com uma câmera flutuante
    .goto 175,86.331,44.317
    .complete 14031,3 --1/1 Cave Painting 3 Captured
step
    .goto 174/648,2969.80005,654.90002
    >>Usar o |T134442:0|t[CCJ Altamira] para tirar uma foto da pintura na parede marcada com uma câmera flutuante
    .use 49887
    .complete 14031,4 --1/1 Pygmy Altar Captured
step
    #label DeadOrc
    .goto 174/648,2975.60010,651.10004
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTente falar com o |cRXP_FRIENDLY_Morto Batedor Orc|r
    .accept 14233 >>Aceite Orcs Sabem Escrever?
    .target Dead Orc Scout
step
    .goto 174/648,2969.80005,654.90002
    >>Siga e proteja o |cRXP_FRIENDLY_Minerador Assustado|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2971.60010,495.10001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSaia da caverna e fale com a |cRXP_FRIENDLY_Encarregada Molhavela|r
    .turnin 14021 >>Entregue Picaretas Nas Mãos de Macacos
    .target Foreman Dampwick
step
    .goto 174,27.88,75.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .turnin 14031 >>Entregue As Pinturas Rupestres
    .turnin 14233 >>Entregue Orcs Sabem Escrever?
    .accept 14234 >>Aceite O Inimigo de Meu Inimigo
    .target Sassy Hardwrench
step
    #completewith next
    .goto 174,32.73,80.53,30,0
    .goto 174,34.36,80.78,30,0
    .goto 174,36.96,77.02,20 >>Siga o caminho para cima da montanha
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggra|r
    .goto 174,37.63,78.02
    .turnin 14234 >>Entregue O Inimigo de Meu Inimigo
    .accept 14235 >>Aceite O Vale Vil
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kilag Dilaceros|r
    .goto 174,35.43,75.71
    .turnin 14235 >>Entregue O Vale Vil
    .accept 14236 >>Aceite Pela Raiz
    .target Kilag Gorefang
step
    #loop
    .goto 174/648,2813.30005,653.40002,0
    .waypoint 174/648,2813.30005,653.40002,40,0
    .waypoint 174/648,2846.10010,706.79999,40,0
    .waypoint 174/648,2884.69995,661.79999,40,0
    .waypoint 174/648,2922.40015,579.10004,40,0
    >>Usar |cRXP_FRIENDLY_Pela raiz|r e corra pelas |cRXP_ENEMY_plantas|r para matá-las
    .use 49108
    .complete 14236,1 --100/100 Deadly Jungle Plants mowed down
    .mob Deadly Jungle Plant
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kilag Dilaceros|r
    .goto 174,35.43,75.71
    .turnin 14236 >>Entregue Pela Raiz
    .accept 14303 >>Aceite De Volta a Aggra
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggra|r
    .goto 174,37.63,78.02
    .turnin 14303 >>Entregue De Volta a Aggra
    .accept 14237 >>Aceite Seguindo em Frente
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kilag Dilaceros|r
    .goto 174,34.62,66.85
    .turnin 14237 >>Entregue Seguindo em Frente
    .accept 14238 >>Aceite Infravermelho de Sangue
    .target Kilag Gorefang
step
    #loop
    .goto 174,31.252,65.272,0
    .waypoint 174,32.264,67.282,50,0
    .waypoint 174,30.783,67.512,50,0
    .waypoint 174,31.252,65.272,50,0
    .waypoint 174,30.712,64.450,50,0
    .waypoint 174,29.589,62.824,50,0
    .waypoint 174,33.536,64.171,50,0
    >>Mate os |cRXP_ENEMY_SI:7 Assassins|r
    >>|cRXP_WARN_Use suas|r |T133149:0|t[Lentes Infravermelhas de Calor] |cRXP_WARN_para vê-los|r
    .use 49611
    .complete 14238,1 --10/10 SI:7 Assassin slain
    .mob SI:7 Assassin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kilag Dilaceros|r
    .goto 174,34.61,66.85
    .turnin 14238 >>Entregue Infravermelho de Sangue
    .accept 14240 >>Aceite Para o Penhasco, e Avante!
    .timer 52,Cavalgando em Bastia
    .target Kilag Gorefang
step
    #completewith next
    .goto 174,25.28,59.84,50 >>Espere até chegar ao |cRXP_FRIENDLY_Batedor Brax|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Brax|r
    .goto 174,25.28,59.84
    .turnin 14240 >>Entregue Para o Penhasco, e Avante!
    .accept 14241 >>Aceite Para o Girocóptero!
    .target Scout Brax
step
    >>Mate os |cRXP_ENEMY_SI:7 Operatives|r e os |cRXP_ENEMY_Gyrochopper Pilots|r. Saque-os para obter as |cRXP_LOOT_Chaves de Girocóptero|r
    .goto 174,23.23,67.50
    .complete 14241,1 --1/1 Gyrochoppa Keys
    .mob SI:7 Operative
    .mob Gyrochopper Pilot
step
    .goto 174,23.2,67.5
    >>Use o |cRXP_FRIENDLY_Girocóptero|r
    >>|cRXP_WARN_Você pode ignorar o|r |cRXP_ENEMY_Girocóptero Piloto|r
    .turnin 14241 >>Entregue Para o Girocóptero!
    .accept 14242 >>Aceite Carga Valiosa
    .target Gyrochoppa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tDesça para o interior do navio e fale com |cRXP_FRIENDLY_Thrall|r
    .goto 174,11.8,62.7
    .complete 14242,1 --1/1 Precious Cargo located
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .goto 174,11.8,62.8
    .turnin 14242 >>Entregue Carga Valiosa
    .accept 14326 >>Aceite Encontre-me Lá em Cima
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tVá para fora e encontre |cRXP_FRIENDLY_Thrall|r no convés
    .goto 174,12.68,63.33,10,0
    .goto 174,12.4,63.1
    .turnin 14326 >>Entregue Encontre-me Lá em Cima
    .accept 14243 >>Aceite A Vingança do Chefe Guerreiro
    .target Thrall
step
    >>Usar |T237589:0|t[Golpe com Raio] (1) para matar os |cRXP_FRIENDLY_Marinheiros da Aliança|r.
    >>|cRXP_WARN_Mire nos barcos menores|r
    .complete 14243,1 --50/50 Alliance Sailor slain
    .mob Alliance Sailor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .goto 174,35.92,66.72
    .turnin 14243 >>Entregue A Vingança do Chefe Guerreiro
    .accept 14445 >>Aceite Adeus, por Enquanto
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .goto 174,36.02,67.53
    .turnin 14445 >>Entregue Adeus, por Enquanto
    .accept 14244 >>Aceite Para o Alto e Avante!
    .target Sassy Hardwrench
step
    >>Clique em |cRXP_PICK_Foguete Sling|r
    .goto 174,36.34,66.55
    .skipgossip
    .complete 14244,1 --1/1 Rocket Sling Trip Survived
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Molhavela|r
    .goto 174,44.54,64.36
    .turnin 14244 >>Entregue Para o Alto e Avante!
    .accept 14245 >>Aceite A Cidade Portátil
    .target Foreman Dampwick
step
    >>Clique em |cRXP_PICK_Town-In-A-Caixa Plunger|r
    .goto 174,45.40,65.36
    .complete 14245,1 --1/1 Town-In-A-Box Set Off!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Molhavela|r
    .goto 174,45.36,64.74
    .turnin 14245 >>Entregue A Cidade Portátil
    .accept 27139 >>Aceite Roberto Precisa de Você
    .target Foreman Dampwick
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Roberto Agarramalho|r
    .goto 174,45.34,65.22
    .turnin 27139 >>Entregue Roberto Precisa de Você
    .accept 24671 >>Aceite Cocori-BUM!
    .target Hobart Grapplehammer
step
    .goto 174,44.928,65.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kascão Melamão|r
    .home >>Defina sua Pedra de Retorno em Town-In-A-Caixa
    .target Grimy Greasefingers
    .isQuestAvailable 24925
step << Priest Cata
    .goto 174,45.586,65.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Madeira|r
    .trainer >>Treine suas magias de classe
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,45.246,64.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bam Megabomba|r
    .trainer >>Treine suas magias de classe
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,45.119,65.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luís Queiro|r
    .trainer >>Treine suas magias de classe
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,45.492,65.593
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Policarpo|r
    .trainer >>Treine suas magias de classe
    .target Evol Fingers
step << Shaman Cata
    .goto 174,45.106,65.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Max Avalanche|r
    .trainer >>Treine suas magias de classe
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guerreiromático X-9|r
    .trainer >>Treine suas magias de classe
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,45.055,65.524
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kika Furafundo|r
    .trainer >>Treine suas magias de classe
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #loop
    .goto 174,46.490,65.922,0
    .goto 174,44.482,64.109,0
    .waypoint 174,45.178,63.335,40,0
    .waypoint 174,45.938,61.535,40,0
    .waypoint 174,47.170,62.983,40,0
    .waypoint 174,46.490,65.922,40,0
    .waypoint 174,44.674,67.001,40,0
    .waypoint 174,44.482,64.109,40,0
    .use 52712 >>Usar seu |T134273:0|t[Fogos de Artifício Controlados Remotamente] para capturar |cRXP_PICK_Selvagem Cluckers|r ao redor da cidade
    .complete 24671,1 --10/10 Wild Cluckers captured
    .target Wild Clucker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Roberto Agarramalho|r e |cRXP_FRIENDLY_Bam Megabomba|r
    .turnin 24671 >>Entregue Cocori-BUM!
    .goto 174,45.34,65.22
    .accept 24741 >>Aceite Ovos Novos
    .goto 174,45.25,64.85
    .target Hobart Grapplehammer
    .target Bamm Megabomb
step
    #loop
    .goto 174,45.93,69.88,0
    .waypoint 174,49.64,63.45,20,0
    .waypoint 174,50.25,65.80,20,0
    .waypoint 174,50.64,68.35,20,0
    .waypoint 174,47.83,69.14,20,0
    .waypoint 174,45.93,69.88,20,0
    >>Usar o |T236997:0|t[Óvos do Cluster Selvagem] para colocar um ovo em uma armadilha. Depois espere até que um |cRXP_ENEMY_Raptor Espinhoso|r pise na armadilha e saqueie o |cRXP_PICK_Ovo de Raptor Espinhoso|r
    .use 50232
    .complete 24741,1 --5/5 Spiny Raptor Egg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bam Megabomba|r e |cRXP_FRIENDLY_Roberto Agarramalho|r
    .turnin 24741 >>Entregue Ovos Novos
    .goto 174,45.25,64.85
    .accept 24744 >>Aceite O Maior Ovo de Todos os Tempos
    .goto 174,45.34,65.21
    .target Bamm Megabomb
    .target Hobart Grapplehammer
step
    .goto 174,43.667,54.169
    >>Mate o |cRXP_ENEMY_Mecafrango|r. Saque o |cRXP_LOOT_O Maior Ovo de Todos os Tempos|r que cai no chão
    .complete 24744,1 --1/1 The Biggest Egg Ever
    .unitscan Mechachicken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Roberto Agarramalho|r
    .goto 174,45.34,65.21
    .turnin 24744 >>Entregue O Maior Ovo de Todos os Tempos
    .accept 24816 >>Aceite Quem Manda na Cadeia Alimentar Agora?
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,2455.80005,861.90002,0
    .waypoint 174/648,2415.60010,795.60004,50,0
    .waypoint 174/648,2467.00000,730.10004,50,0
    .waypoint 174/648,2578.30005,794.20001,50,0
    .waypoint 174/648,2455.80005,861.90002,50,0
    >>Mate os |cRXP_ENEMY_Ravenous Lurkers|r. Saqueie-os pelas |cRXP_LOOT_Shark Parts|r
    .complete 24816,1 --5/5 Shark Parts
    .mob Ravenous Lurker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Assistente Grilly|r
    .goto 174,45.27,65.57
    .turnin 24816 >>Entregue Quem Manda na Cadeia Alimentar Agora?
    .accept 24817 >>Aceite Goblin em Pele de Tubarão
    .target Assistant Greely
step
    >>Clique no |cRXP_PICK_Controlador de Meca-Tubarão X-Vapor|r
    .goto 174,43.68,65.50
    .complete 24817,1 --1/1 Use the Mechashark X-Steam Controller
step
    >>Usar |T132345:0|t[Raio Laser do Cacete] (1) e |T135821:0|t[Barragem Explo-gema] (2) para matar o |cRXP_ENEMY_Martelo|r
    >>|cRXP_WARN_Usar|r |T132996:0|t[Consertar] |cRXP_WARN_Para se curar se necessário|r
    .goto 174,41.7,66.7
    .complete 24817,2 --1/1 The Hammer slain
    .mob The Hammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Roberto Agarramalho|r
    .goto 174,45.34,65.21
    .turnin 24817 >>Entregue Goblin em Pele de Tubarão
    .accept 24856 >>Aceite Invasão Iminente!
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carlota Tomanota|r
    .goto 174,52.2,73.2
    .turnin 24856 >>Entregue Invasão Iminente!
    .accept 24858 >>Aceite O Cartel Borraquilha Tá na Área
    .target Megs Dreadshredder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beto "Bufunfa" McTroco|r
    .goto 174,52.20,73.22
    .accept 24859 >>Aceite Couro de Naga
    .target Brett "Coins" McQuid
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Vashj'elan Warriors|r e os |cRXP_ENEMY_Vashj'elan Sirens|r. Saque-os por seus |cRXP_LOOT_Couros|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    #loop
    .goto 174,53.477,80.146,0
    .waypoint 174,52.22,79.19,10,0
    .waypoint 174,52.76,78.97,10,0
    .waypoint 174,53.47,80.15,10,0
    .waypoint 174,54.14,79.91,10,0
    .waypoint 174,54.81,79.39,10,0
    .waypoint 174,55.50,79.54,10,0
    .waypoint 174,55.49,77.98,10,0
    .waypoint 174,54.86,76.94,10,0
    .waypoint 174,55.04,76.25,10,0
    .waypoint 174,53.53,76.90,10,0
    >>Clique nas |cRXP_PICK_Bandeiras de Naga|r
    .complete 24858,1 --10/10 Naga Banners replaced
step
    #loop
    .goto 174/648,2004.30005,498.39999,0
    .waypoint 174/648,2004.30005,498.39999,40,0
    .waypoint 174/648,1873.00000,503.00000,40,0
    .waypoint 174/648,1897.90002,591.50000,40,0
    >>Mate os |cRXP_ENEMY_Vashj'elan Warriors|r e os |cRXP_ENEMY_Vashj'elan Sirens|r. Saque-os por seus |cRXP_LOOT_Couros|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beto "Bufunfa" McTroco|r e |cRXP_FRIENDLY_Carlota Tomanota|r
    .turnin 24859 >>Entregue Couro de Naga
    .goto 174,52.2,73.22
    .turnin 24858 >>Entregue O Cartel Borraquilha Tá na Área
    .accept 24864 >>Aceite Pônei Inflável Irresistível
    .goto 174,52.20,73.14
    .target Brett "Coins" McQuid
    .target Megs Dreadshredder
step
    #completewith next
    .use 50602
    .cast 71914 >>Usar o |T132261:0|t[Pônei Inflável Irresistível] quando chegar à água.
step
    #loop
    .goto 174/648,1713.59998,401.10001,0
    .waypoint 174/648,1766.20007,387.50000,30,0
    .waypoint 174/648,1713.59998,401.10001,30,0
    .waypoint 174/648,1684.20007,416.89999,30,0
    .waypoint 174/648,1661.20007,386.00000,30,0
    .waypoint 174/648,1619.50000,380.10001,30,0
    .waypoint 174/648,1594.09998,415.60001,30,0
    .waypoint 174/648,1567.59998,351.70001,30,0
    .waypoint 174/648,1689.50000,325.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com os |cRXP_FRIENDLY_Filhotes de Naga|r
    >>|cRXP_WARN_Tenha cuidado para não matar os filhotes com habilidades AdE|r
    .use 50602
    .complete 24864,1 --12/12 Naga Hatchlings lured
    .target Naga Hatchling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carlota Tomanota|r
    .goto 174,52.2,73.15
    .turnin 24864 >>Entregue Pônei Inflável Irresistível
    .accept 24868 >>Aceite Rendição, senão...
    .target Megs Dreadshredder
step
    #completewith next
    .goto 174,54.07,90.06,30 >>Viaje para o sul em direção às Ruínas de Vashj'elan
step
    .goto 174,54.07,90.06
    >>Mate o |cRXP_ENEMY_Criatura Sem Rosto das Profundezas|r
    >>|cRXP_WARN_Espere pela animação de aparição (círculo roxo). Ele saltará em breve|r
    .complete 24868,1 --1/1 Leader of the naga dealt with
    .mob Faceless of the Deep
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carlota Tomanota|r
    .goto 174,52.20,73.15
    .turnin 24868 >>Entregue Rendição, senão...
    .accept 24897 >>Aceite De Volta à Cidade
    .target Megs Dreadshredder
step
    #completewith next
    .subzone 4871 >>Retorne para Town-in-a-Caixa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .goto 174,45.18,64.91
    .turnin 24897 >>Entregue De Volta à Cidade
    .accept 24901 >>Aceite Cidade Portátil: Sob Ataque
    .target Sassy Hardwrench
step
    >>Clique em |cRXP_PICK_B.C. Eliminator|r para entrar e atirar nos |cRXP_ENEMY_Oomlot Guerreiros|r
    .goto 174,45.7,65.0
    .complete 24901,1 --30/30 Oomlot Warriors defeated
step
    #completewith next
    +|cRXP_WARN_Leave the vehicle|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .goto 174,45.2,64.9
    .turnin 24901 >>Entregue Cidade Portátil: Sob Ataque
    .accept 24924 >>Aceite A Vila Trema-Trema
    .target Sassy Hardwrench
step
    #completewith next
    .subzone 4886 >>Vá para A Vila Trema-Trema
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Azeitona|r
    .goto 174,56.56,71.96
    .turnin 24924 >>Entregue A Vila Trema-Trema
    .accept 24925 >>Aceite Liberte os Prisioneiros
    .accept 24929 >>Aceite Mandando Um Recado
    .target Izzy
step
    #completewith next
    >>Abate |cRXP_ENEMY_Oomlot Xamãs|r para libertar os |cRXP_FRIENDLY_Goblin Cativos|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>Mate |cRXP_ENEMY_Sërguëi|r
    .goto 174/648,1710.70007,843.79999,20,0
    .goto 174/648,1543.20007,817.29999
    .complete 24929,1 --1/1 Yngwie slain
    .mob Yngwie
step
    #loop
    .goto 174/648,1753.00000,746.50000,0
    .waypoint 174/648,1593.59998,754.90002,35,0
    .waypoint 174/648,1661.90002,717.40002,35,0
    .waypoint 174/648,1753.00000,746.50000,35,0
    .waypoint 174/648,1698.59998,802.10004,35,0
    >>Mate os |cRXP_ENEMY_Oomlot Shamans|r para libertar os |cRXP_FRIENDLY_Goblin Captives|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Azeitona|r
    .goto 174,56.56,71.96
    .turnin 24925 >>Entregue Liberte os Prisioneiros
    .turnin 24929 >>Entregue Mandando Um Recado
    .accept 24937 >>Aceite Aldeões Trema-Trema Sobrepujados
    .target Izzy
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Town-In-A-Caixa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .goto 174,45.2,64.9
    .turnin 24937 >>Entregue Aldeões Trema-Trema Sobrepujados
    .accept 24940 >>Aceite Subindo o Vulcão
    .target Sassy Hardwrench
step
    #completewith next
    +|cRXP_WARN_Evite os |cRXP_ENEMY_Goblin Zombies|r enquanto sobe a montanha|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Técnico Fagallo|r, o |cRXP_FRIENDLY_Encarregado Molhavela|r e o |cRXP_FRIENDLY_Assistente Grilly|r
    .turnin 24940 >>Entregue Subindo o Vulcão
    .accept 24942 >>Aceite Zumbis Versus Botas-Foguete Superpropulsoras
    .goto 174,51.8,47.1
    .accept 24945 >>Aceite Os Três Terrores
    .goto 174,51.85,47.19
    .accept 24946 >>Aceite Qual É o Pó?
    .goto 174,51.73,47.38
    .target Coach Crosscheck
    .target Foreman Dampwick
    .target Assistant Greely
step
    #completewith next
    >>|cRXP_WARN_Você precisa cancelar Forma de Sombra se você for um sacerdote de sombra antes de poder usar as botas|r <<Priest
    .use 52013
    .goto 174,51.77,46.97
    .cast 72891 >>|cRXP_WARN_Use as |T133029:0|t[Botas-Foguete Superpropulsoras]|r
step
    #completewith next
    >>Abate |cRXP_ENEMY_Goblin Zumbis|r caminhando sobre eles com as Botas-foguete
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Caçadores de Cabeças Oostan|r. Eles podem matá-lo muito facilmente|r
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    #completewith TheLostIslesGaahl
    >>Pegue |cRXP_PICK_Qual É o Pó?|r do chão
    .complete 24946,1 --5/5 Rockin' Powder
step
    >>Mate |cRXP_ENEMY_Cavëras|r
    .goto 174,58.74,47.16
    .complete 24945,2 --1/1 Malmo slain
    .mob Malmo
step
    >>Mate |cRXP_ENEMY_Pavaröte|r
    .goto 174,63.7,52.76
    .complete 24945,3 --1/1 Teloch slain
    .mob Teloch
step
    #label TheLostIslesGaahl
    >>Abate |cRXP_ENEMY_Fläcido|r
    .goto 174,59.59,40.20
    .complete 24945,1 --1/1 Gaahl slain
    .mob Gaahl
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>Procure ao redor e pegue os |cRXP_PICK_Quais São os Pós|r restantes
    .complete 24946,1 --5/5 Rockin' Powder
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>Mate os |cRXP_ENEMY_Zumbis Goblins|r caminhando sobre eles com as Botas-Foguete
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Molhavela|r, o |cRXP_FRIENDLY_Assistente Greedy|r e o |cRXP_FRIENDLY_Técnico Fagallo|r
    .turnin 24945 >>Entregue Os Três Terrores
    .goto 174,51.85,47.20
    .turnin 24946 >>Entregue Qual É o Pó?
    .goto 174,51.73,47.38
    .turnin 24942 >>Entregue Zumbis Versus Botas-Foguete Superpropulsoras
    .accept 24952 >>Aceite Botas-Fogueeeeeeeete!
    .goto 174,51.8,47.1
    .target Foreman Dampwick
    .target Assistant Greedy
    .target Coach Crosscheck
step
    .goto 174/648,2044.80005,1463.09998
    >>Usar as |T133029:0|t[Botas-Foguete Carregadas de Pó Irado]
    .use 52032
    .complete 24952,1 --1/1 Rockin' Powder Infused Rocket Boots used
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Roberto Agarramalho|r
    .goto 174,68.93,46.44
    .turnin 24952 >>Entregue Botas-Fogueeeeeeeete!
    .accept 24954 >>Aceite Santa Tartaruga!
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,1333.30005,1529.30005,0
    .waypoint 174/648,1333.30005,1529.30005,40,0
    .waypoint 174/648,1368.00000,1597.70007,40,0
    .waypoint 174/648,1263.20007,1570.70007,40,0
    >>Mate os |cRXP_ENEMY_Filhos de Volcanoth|r. Saque-os para as |cRXP_LOOT_Glands|r
    .complete 24954,1 --5/5 Fire Gland
    .mob Childs of Volcanoth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Roberto Agarramalho|r
    .goto 174,68.93,46.44
    .turnin 24954 >>Entregue Santa Tartaruga!
    .accept 24958 >>Aceite Volcanoth!
    .target Hobart Grapplehammer
step
    .goto 174/648,1180.20007,1309.70007
    >>Usar repetidamente |T135624:0|t[Botazuca] no ponto de caminho em |cRXP_ENEMY_Volcanoth|r
    .use 52043
    .complete 24958,1 --1/1 Volcanoth slain
    .mob Volcanoth
step
    .goto 174/648,1094.00000,1163.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .turnin 24958 >>Entregue Volcanoth
    .accept 25023 >>Aceite Velhos Amigos
    .timer 110,Voo de Velhos Amigos
    .target Sassy Hardwrench
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 25023 >>Entregue Velhos Amigos
    .accept 25024 >>Aceite Expulse os paraquedistas
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .accept 25058 >>Aceite Desarmando Minas (à Maneira Goblin)
    .target Sassy Hardwrench
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggra|r
    .accept 25093 >>Aceite As Cabeças do SI:7
    .target Aggra
step
    #completewith Paratroopers
    >>Usar o |T133716:0|t[Algibeira de Granadas] para destruir as |cRXP_PICK_Minas|r no chão
    .goto 174,32.38,36.34,0,0
    .use 52280
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith TheLostIslesCyn
    >>Abate o |cRXP_ENEMY_Paraquedista da Aliança|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    >>Abate o |cRXP_ENEMY_Comandante Arrington|r. Saque-o para obter sua |cRXP_LOOT_Cabeça|r
    .goto 174,32.29,42.89
    .complete 25093,1 --1/1 Commander Arrington's Head
    .target Commander Arrington
step
    >>Abate o |cRXP_ENEMY_Alexi Uivaquieto|r. Saque-o para obter sua |cRXP_LOOT_Cabeça|r
    .goto 174,30.80,33.92
    .complete 25093,3 --1/1 Alexi Silenthowl's Head
    .mob Alexi Silenthowl
step
    #label TheLostIslesCyn
    >>Abate o |cRXP_ENEMY_Laminegra Cyn|r. Saque-o para obter sua |cRXP_LOOT_Cabeça|r
    .goto 174,33.44,27.88
    .complete 25093,2 --1/1 Darkblade Cyn's Head
    .mob Darkblade Cyn
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    >>Mate os |cRXP_ENEMY_Paraquedistas da Aliança|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    .use 52280 >>Usar o |T133716:0|t[Algibeira de Granadas] para destruir as |cRXP_PICK_Minas|r no chão
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith next
    .subzone 4912 >>Viaje para o Mirante do Chefe Guerreiro
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggra|r
    .turnin 25093 >>Entregue As Cabeças do SI:7
    .target Aggra
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 25024 >>Entregue Expulse os paraquedistas
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .turnin 25058 >>Entregue Desarmando Minas (à Maneira Goblin)
    .accept 25066 >>Aceite O Orgulho de Kezan
    .target Sassy Hardwrench
step
    #completewith next
    .skipgossip 38387,1
    .vehicle 39074 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espoleta Chaveforte|r para entrar no veículo
    .target Sassy Hardwrench
step
    >>Destrua os |cRXP_ENEMY_Gnomeregan Furtividade Fighters|r
    >>|cRXP_WARN_Use|r |T134273:0|t[Foguetes Doninha Selvagem] |cRXP_WARN_(2)|r |cRXP_WARN_on cooldown and spam|r |T135627:0|t[Metralhadora] |cRXP_WARN_(1)|r
    .goto 174,30.37,39.89
    .complete 25066,1 --10/10 Gnomeregan Stealth Fighters shot down
    .mob Gnomeregan Stealth Fighter
step
    #completewith next
    .subzone 4912 >>Voe de volta para o Mirante do Chefe Guerreiro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .goto 174,37.36,41.92
    .turnin 25066 >>Entregue O Orgulho de Kezan
    .accept 25098 >>Aceite O Chefe Guerreiro Precisa de Você
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .goto 174,36.79,43.13
    .turnin 25098 >>Entregue O Chefe Guerreiro Precisa de Você
    .accept 25099 >>Aceite Carona na Bastia
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kilag Dilaceros|r
    .goto 174,33.8,38.8
    .turnin 25099 >>Entregue Carona na Bastia
    .accept 25100 >>Aceite Vamos Cavalgar
    .timer 87,Monte a Pantera
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kika Furafundo|r depois de andar com a pantera
    .goto 174,53.71,34.94
    .turnin 25100 >>Entregue Vamos Cavalgar
    .accept 25109 >>Aceite A Mina de Trabalhos Forçados de Gallywix
    .target Slinky Sharpshiv
step << Priest Cata
    .goto 174,53.760,35.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Madeira|r
    .trainer >>Treine suas magias de classe
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,53.744,35.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bam Megabomba|r
    .trainer >>Treine suas magias de classe
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,53.754,33.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luís Queiro|r
    .trainer >>Treine suas magias de classe
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,54.087,34.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Policarpo|r
    .trainer >>Treine suas magias de classe
    .target Evol Fingers
step << Shaman Cata
    .goto 174,53.245,35.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Max Avalanche|r
    .trainer >>Treine suas magias de classe
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,53.810,35.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guerreiromático X-9|r
    .trainer >>Treine suas magias de classe
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,53.716,34.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kika Furafundo|r
    .trainer >>Treine suas magias de classe
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #completewith next
    .goto 174,54.09,36.01,10,0
    .goto 174,54.94,33.72,10 >>Entre na caverna e pule para baixo
step
    .goto 174,53.17,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Assistente Grilly|r
    .turnin 25109 >>Entregue A Mina de Trabalhos Forçados de Gallywix
    .accept 25110 >>Aceite Jaka'Cola Te Dá IDEIAS! (R)
    .target Assistant Greely
step
    >>Pegue o |T132808:0|t[|cRXP_LOOT_Jaka'Cola Zero-um|r] do chão
    .goto 174,53.59,37.41,10,0
    .goto 174,53.94,37.46,10,0
    .goto 174,53.70,36.67
    .complete 25110,1 --1/1 Kaja'Cola Zero-One
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Assistente Grilly|r
    .goto 174,53.17,36.55
    .turnin 25110 >>Entregue Jaka'Cola Te Dá IDEIAS! (R)
    .accept 25122 >>Aceite É Bom para o Moral
    .accept 25123 >>Aceite Uma Pedra no Meio do Caminho
    .target Assistant Greely
step
    #completewith FreeGobber
    >>Saque |T132808:0|t[|cRXP_LOOT_Jaka'Cola Zero-um|r] do chão
    >>Atire em |cRXP_FRIENDLY_Kezan Citizens|r e use a |T132808:0|t[|cRXP_LOOT_Jaka'Cola Zero-um|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    #title Grátis Reco-reco
    >>Use a |T132808:0|t[|cRXP_FRIENDLY_Jaka'Cola Zero-um|r] em |cRXP_LOOT_Reco-reco|r
    .goto 174,57.1,36.9
    .use 52484
    .complete 25122,1 --1/1 Ace's mind freed
    .target Ace
step
    #title Grátis Azeitona
    >>Use a |T132808:0|t[|cRXP_FRIENDLY_Jaka'Cola Zero-um|r] em |cRXP_LOOT_Azeitona|r
    .goto 174,57.01,35.02
    .use 52484
    .complete 25122,2 --1/1 Izzy's mind freed
    .target Izzy
step
    >>Mate |cRXP_ENEMY_Ruinumbra, o Brutomestre|r e pegue a |cRXP_PICK_Pedra da Alma de Ruinumbra|r.
    .use 52481 >>|cRXP_WARN_Usar|r |T134336:0|t[Pedra da Alma de Ruinumbra] |cRXP_WARN_no cadáver de|r |cRXP_ENEMY_Ruinumbra, o Brutomestre|r
    .goto 174,56.18,32.29
    .complete 25123,1 --1/1 Blastshadow's Soulstone destroyed
    .mob Blastshadow the Brutemaster
step
    #label FreeGobber
    >>Use a |T132808:0|t[|cRXP_FRIENDLY_Jaka'Cola Zero-um|r] em |cRXP_LOOT_Bolão|r
    .goto 174,57.04,32.17
    .use 52484
    .complete 25122,3 --1/1 Gobber's mind freed
    .target Gobber
step
    #loop
    .goto 174/648,1807.59998,1983.59998,0
    .waypoint 174/648,1807.59998,1983.59998,25,0
    .waypoint 174/648,1830.20007,1860.80005,25,0
    .waypoint 174/648,1820.40002,1784.20007,25,0
    .waypoint 174/648,1917.40002,1809.40002,25,0
    >>Saque |T132808:0|t[|cRXP_LOOT_Jaka'Cola Zero-um|r] do chão
    >>Use a |T132808:0|t[|cRXP_FRIENDLY_Jaka'Cola Zero-um|r] nos |cRXP_LOOT_Kezan Citizens|r
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Assistente Grilly|r
    .turnin 25123 >>Entregue Uma Pedra no Meio do Caminho
    .turnin 25122 >>Entregue É Bom para o Moral
    .accept 25125 >>Aceite A Luz no Fim do Túnel
    .target Assistant Greely
step
    >>Interaja com a |cRXP_PICK_Vagonete de Mina|r
    .goto 174,56.29,27.33
    .turnin 25125 >>Entregue A Luz no Fim do Túnel
    .accept 25184 >>Aceite Passeio Louco de Vagonete
step
    >>Monte na Vagonete da Mina
    .goto 174,54.2,17.0
    .complete 25184,1 --1/1 Mine Cart ridden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Assistente Grilly|r
    .goto 174,54.4,16.9
    .turnin 25184 >>Entregue Passeio Louco de Vagonete
    .accept 25200 >>Aceite Desligamento do Retalhador
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Técnico Fagallo|r
    .goto 174,54.44,16.93
    .accept 25201 >>Aceite O Melhor Uniforme de Futebomba do Mundo
    .target Coach Crosscheck
step
    #sticky
    #label TheLostIslesShredderShutdown
    >>Mate os |cRXP_ENEMY_Steamwheedle Sharks|r
    .goto 174,53.5,18.9,0,0
    .complete 25200,1 --8/8 Steamwheedle Shark slain
    .mob Steamwheedle Shark
step
    >>Pegue as |cRXP_LOOT_Spare Retalhador Parts|r
    .goto 174,53.24,19.55,20,0
    .goto 174,52.16,20.68,20,0
    .goto 174,51.85,19.17,20,0
    .goto 174,52.64,16.93,20,0
    .goto 174,53.13,18.70
    .complete 25201,1 --8/8 Spare Shredder Parts
step
    #requires TheLostIslesShredderShutdown
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Técnico Fagallo|r
    .goto 174,54.44,16.93
    .turnin 25201 >>Entregue O Melhor Uniforme de Futebomba do Mundo
    .target Coach Crosscheck
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Assistente Grilly|r
    .goto 174,54.4,16.93
    .turnin 25200 >>Entregue Desligamento do Retalhador
    .accept 25204 >>Aceite Abra as Válvulas
    .target Assistant Greely
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Reco-reco|r
    .goto 174,54.16,17.21
    .accept 25203 >>Aceite Que Tipo de Nome é Pedrico, Afinal?
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Azeitona|r
    .goto 174,54.01,16.98
    .accept 25202 >>Aceite O Caminho Mais Rápido para o Coração
    .target Izzy
step
    >>Clique na |cRXP_PICK_Válvula|r
    .goto 174,50.85,15.86,10,0
    .goto 174,50.72,13.81
    .complete 25204,1 --1/1 Valve #1 released
step
    >>Clique na |cRXP_PICK_Válvula|r
    .goto 174,50.5,13.2
    .complete 25204,3 --1/1 Valve #3 released
step << Female
    >>Mate |cRXP_ENEMY_Léo Pardo|r. Saqueie-o para obter o |cRXP_LOOT_Coração|r
    .goto 174,50.1,13.8
    .complete 25202,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step << Male
    >>Mate |cRXP_ENEMY_Léo Pardo|r. Saqueie-o para pegar o |cRXP_LOOT_Coração|r
    .goto 174,50.1,13.8
    .complete 25203,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step
    >>Clique na |cRXP_PICK_Válvula|r
    .goto 174,49.9,12.8
    .complete 25204,4 --1/1 Valve #4 released
step
    >>Clique na |cRXP_PICK_Válvula|r
    .goto 174,50.2,11.8
    .complete 25204,2 --1/1 Valve #2 released
step
    >>Interaja com a |cRXP_PICK_Painel de Controle da Plataforma|r
    .goto 174,51.4,13.1
    .turnin 25204 >>Entregue Abra as Válvulas
    .accept 25207 >>Aceite Adeus, Doce Óleo
step
    >>Clique no |cRXP_PICK_Red Button|r
    .goto 174,51.4,13.1
    .complete 25207,1 --1/1 KTC Oil Platform destroyed
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Reco-reco|r
    .goto 174,54.16,17.19
    .turnin 25203 >>Entregue Que Tipo de Nome é Pedrico, Afinal?
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Azeitona|r
    .goto 174,54.01,16.97
    .turnin 25202 >>Entregue The Fastest Way to His Coração
    .target Izzy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Assistente Grilly|r
    .goto 174,54.4,16.9
    .turnin 25207 >>Entregue Óleo por Óleo, Acidente por Acidente
    .accept 25213 >>Aceite O Buraco do Escravo
    .timer 24,Monte o Retalhador
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r depois de andar de retalhador
    .goto 174,43.63,25.32
    .turnin 25213 >>Entregue O Buraco do Escravo
    .accept 25244 >>Aceite Que Tipo de Nome é Candy, Afinal? << Female
	.accept 25243 >>Aceite She Loves Me. She Loves Me Not! << Male
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hobart|r
    .goto 174,43.85,25.30
    .accept 25214 >>Aceite Velocidade de Fuga
    .target Hobart Grapplehammer
step
    #completewith next
    >>Clique nos |cRXP_FRIENDLY_Goblins Capturados|r
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>Mate |cRXP_ENEMY_Bengalinha Doce|r
    .goto 174,39.68,27.18
    .complete 25244,1 << Female --1/1 Candy Cane slain
	.complete 25243,1 << Male --1/1 Candy Cane slain
    .mob Candy Cane
step
    >>Clique em |cRXP_FRIENDLY_Goblins Capturados|r
    .goto 174,40.03,26.08,10,0
    .goto 174,41.03,25.24,15,0
    .goto 174,41.24,26.35
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hobart|r
    .goto 174,43.85,25.30
    .turnin 25214 >>Entregue Velocidade de Fuga
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .goto 174,43.63,25.32
    .turnin 25244 >>Entregue Que Tipo de Nome é Candy, Afinal? << Female
	.turnin 25243 >>Entregue She Loves Me. She Loves Me Not! << Male
    .accept 25251 >>Aceite O Confronto Final
    .target Sassy Hardwrench
step
    >>Entre no |cRXP_FRIENDLY_O Melhor Uniforme de Futebomba do Mundo|r
    .goto 174,43.86,25.16
    .complete 25251,1 --1/1 Ultimate Footbomb Uniform
    .target Ultimate Footbomb Uniform
step
    >>Foque em |cRXP_ENEMY_Príncipe Mercador Gallywix|r e use todas as suas habilidades
    .goto 174,41.87,17.61,10,0
    .goto 174,43.4,19.9
    .complete 25251,2 --1/1 Trade Prince Gallywix dealt with
    .mob Trade Prince Gallywix
step
    #completewith next
    .goto 174,42.76,18.61,10,0
    .goto 174,42.24,19.45,20 >>Pule para baixo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .goto 174,43.6,25.3
    .turnin 25251 >>Entregue O Confronto Final
    .accept 25265 >>Aceite Vitória!
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .goto 174,42.16,17.37
    .turnin 25265 >>Entregue Vitória!
    .accept 25266 >>Aceite O Emissário do Chefe Guerreiro
    .target Thrall
step
    #completewith next
    .goto 174,42.57,16.37
    .skipgossip
    .zone 1 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espoleta Chaveforte|r
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'Kron Loyalist|r
    .goto 1,57.65,9.78
    .turnin 25266 >>Entregue O Emissário do Chefe Guerreiro
    .accept 25267 >>Aceite Mensagem para Saurfang
    .timer 75,Vá montado até Orgrimmar
    .target Kor'Kron Loyalist
step
    #completewith next
    .goto 1,45.506,11.949,30,0
    .zone Orgrimmar >>Entre em Orgrimmar
step
    .goto 1454/1,-4343.20020,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garrosh Grito Infernal|r
    .turnin 25267 >>Entregue Mensagem para Saurfang
    .accept 25275 >>Aceite Relatório ao Capitão de Trabalho
    .target Garrosh Hellscream
]])
