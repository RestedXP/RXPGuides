if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 20-25 Floresta do Crepúsculo
#displayname 21-26 Floresta do Crepúsculo
#next 25-30 Selva do Espinhaço Setentrional


<<Alliance


step
    .goto 47,93.30,12.00
    .zone 47 >>Voe para Floresta do Crepúsculo
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.09,44.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tobias|r dentro da casa
    .accept 26666 >>Aceite A Lenda de Galvão
	.target Tobias Mistmantle
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .accept 26653 >>Aceite Suprimentos de Vila Sombria
	.target Abercrombie
step
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felicia|r
    .fp Darkshire >>Aprenda a rota de voo para Darkshire
	.target Felicia Maline
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com [Name] dentro da casa
    .turnin 26653 >>Entregue Suprimentos de Vila Sombria
    .accept 26652 >>Aceite Linha de Cabelo de Fantasma
	.target Madame Eva
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Entre na estalagem
step
    #completewith Daltry1
    .goto 47,73.87,44.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trelayne|r
    .home >>Defina sua Pedra de Retorno em Taverna do Corvo Escarlate
	.target Innkeeper Trelayne
step
	#label Kabobs
    .goto 47,73.74,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grual|r
    .accept 26620 >>Aceite Kebab Temperado de Lobo
    .accept 26623 >>Aceite Bolinhos de Caranguejo Crepuscular
	.target Chef Grual
step
	#completewith Daltry1
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8>>Saia da estalagem
step
	#label Daltry1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daltry|r dentro e |cRXP_FRIENDLY_Althea|r fora
    .turnin 26666 >>Entregue A Lenda de Galvão
    .accept 26667 >>Aceite As Cartas Roubadas
    .goto 47,72.448,46.909
	.target +Clerk Daltry
    .turnin -26728 >>Entregue O Chamado ao Heroísmo: Floresta do Crepúsculo!
    .accept 26618 >>Aceite Lobos nos Nossos Calcanhares
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrônio|r
    .accept 26688 >>Aceite Worgen na Floresta
	.target Calor

step
    #optional
    #completewith Letters
    >>Mate os |cRXP_ENEMY_Venom Teia Aranhas|r. Saqueie-os pelos seus |cRXP_LOOT_Lumps|r
    .complete 26623,1 --6/6 Dusky Lump
	.mob Venom Web Spider
step
#completewith next
#optional
    .goto 47,64.12,51.62,0,0
    >>Mate os |cRXP_ENEMY_Nightbane Worgens|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#label Letters
    .goto 47,61.24,40.50
    >>Pegue o |cRXP_PICK_Montão de Retalhos|r no chão para obter o |cRXP_LOOT_Fardo Rasgado de Cartas|r
    .complete 26667,1 --1/1 A Slashed Bundle of Letters
step
#loop
    .goto 47,64.12,51.62,40,0
    .goto 47,60.883,40.830,40,0
    .goto 47,65.304,44.317,40,0
    .goto 47,64.12,51.62,0
    .goto 47,60.883,40.830,0
    .goto 47,65.304,44.317,0
    >>Mate os |cRXP_ENEMY_Nightbane Worgens|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#completewith next
    >>Mate os |cRXP_ENEMY_Lobos Atrozes|r. Saqueie-os pelos seus |cRXP_LOOT_Steaks|r
    .complete 26618,1 --12/12 Dire Wolf slain
    .complete 26620,1 --5/5 Wolf Skirt Steak
	.mob Dire Wolf
step
#loop
    .goto 47,65.54,30.32,70,0
    .goto 47,73.29,20.23,70,0
    .goto 47,63.90,19.41,70,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,73.29,20.23,40,0
    .goto 47,63.90,19.41,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,73.29,20.23,40,0
    .goto 47,63.90,19.41,0
    >>Mate os |cRXP_ENEMY_Venom Teia Aranhas|r. Saqueie-os pelos seus |cRXP_LOOT_Lumps|r
    .complete 26623,1 --6/6 Dusky Lump
	.mob Venom Web Spider
step
#loop
    .goto 47,59.00,20.72,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,59.00,20.72,40,0
    .goto 47,63.90,19.41,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,59.00,20.72,0
    >>Mate os |cRXP_ENEMY_Lobos Atrozes|r. Saqueie-os pelos seus |cRXP_LOOT_Steaks|r
    .complete 26618,1 --12/12 Dire Wolf slain
    .complete 26620,1 --5/5 Wolf Skirt Steak
	.mob Dire Wolf
step
    .isOnQuest 26620,26618,26623,26688,26667
    .hs >>Use sua Pedra de Retorno para ir a Darkshire
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daltry|r dentro e |cRXP_FRIENDLY_Althea|r fora
    .turnin 26667 >>Entregue As Cartas Roubadas
    .accept 26669 >>Aceite Em uma Esquina Sombria
    .target +Clerk Daltry
    .goto 47,72.448,46.909
    .turnin 26618 >>Entregue Lobos nos Nossos Calcanhares
    .accept 26645 >>Aceite A Vigília Noturna
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrônio|r
    .turnin 26688 >>Entregue Worgen na Floresta
    .accept 26689 >>Aceite O Horto Pútrido
	.target Calor
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Viktori|r
    .accept 26683 >>Aceite Ora (Direis) Ouvir Estrelas!
	.target Viktori Prism'Antras
step
	#completewith next
    >>Mate os |cRXP_ENEMY_Horrores Infectos|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    .goto 47,81.66,59.16,8,0
    .goto 47,81.92,58.98,5,0
    .goto 47,82.05,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mary|r dentro da casa
    .turnin 26652 >>Entregue Linha de Cabelo de Fantasma
    .accept 26654 >>Aceite Devolva o Pente
    .turnin 26683 >>Entregue Olhe para as Estrelas
    .accept 26684 >>Aceite O Carniçal Insano
	.target Blind Mary
step
#loop
	.line 47,82.30,61.22,82.45,56.25,80.91,56.65,79.48,60.41,82.30,61.22
	.goto 47,82.30,61.22,30,0
	.goto 47,82.45,56.25,30,0
	.goto 47,80.91,56.65,30,0
	.goto 47,79.48,60.41,30,0
	.goto 47,82.30,61.22,30,0
    >>Mate os |cRXP_ENEMY_Horrores Infectos|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    #completewith next
    .subzone 42 >>Entregue em Darkshire
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com [Name] dentro da casa
    .turnin 26654 >>Entregue Devolva o Pente
    .accept 26655 >>Aceite Entregue a Linha
	.target Madame Eva
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26655 >>Entregue Entregue a Linha
    .accept 26660 >>Aceite Suco de Zumbi
	.target Abercrombie
step << skip
    #completewith next
    .goto 47,87.98,33.16,20,0
    .goto 47,88.1,31.33,20,0
    .goto 47,90.98,30.53,30 >>Procure a |cRXP_ENEMY_Soldada Desconhecida|r (Rara). Mate-a se ela estiver presente
	.unitscan Unknown Soldier
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Entre na estalagem
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Smitts|r
    .turnin 26660 >>Entregue Suco de Zumbi
    .accept 26661 >>Aceite Flores do Mal
	.target Tavernkeep Smitts
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>Saia da estalagem
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Althea|r
    .turnin 26645 >>Entregue A Vigília Noturna
    .accept 26686 >>Aceite Ossos Ambulantes
	.target Commander Althea Ebonlocke
step
    #optional
    .maxlevel 25,endOfTheGuide
step
#optional
	#completewith next
    >>Mate |cRXP_ENEMY_Guerreiros Descarnado|r e |cRXP_ENEMY_Magos Descarnado|r
	>>Pegue os |cRXP_LOOT_Rot Blossoms|r no chão
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
    .goto 47,80.31,71.10,15,0
    .goto 47,80.88,71.58
    >>Mate o |cRXP_ENEMY_Carniçal Insano|r dentro do Cemitério. Saqueie-o por |cRXP_LOOT_Mary's Looking Taça|r
    .complete 26684,1 --1/1 Mary's Looking Glass
	.mob Insane Ghoul
step
	.line 47,81.85,68.34,78.33,66.13,77.02,69.85,80.89,74.21,81.85,68.34
    #loop
    .goto 47,81.85,68.34,30,0
    .goto 47,78.33,66.13,30,0
    .goto 47,77.02,69.85,30,0
    .goto 47,80.89,74.21,30,0
    .goto 47,81.85,68.34,30,0
    >>Mate |cRXP_ENEMY_Guerreiros Descarnado|r e |cRXP_ENEMY_Magos Descarnado|r
	>>Pegue os |cRXP_LOOT_Rot Blossoms|r no chão
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
#optional
    #completewith journal1
    >>Mate os |cRXP_ENEMY_Nightbane Sombra Weavers|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
	#completewith next
    .goto 47,66.03,75.79,8,0
    .goto 47,65.98,76.42,8 >>Entre no celeiro
step
#label journal1
    .goto 47,66.59,76.44
    >>Pegue o |cRXP_LOOT_A Torn Diário|r no chão
    .complete 26669,1 --1/1 A Torn Journal
step
#loop
    .goto 47,63.50,76.61,40,0
    .goto 47,60.88,73.19,40,0
    .goto 47,64.19,65.03,40,0
    .goto 47,63.50,76.61,40,0
    .goto 47,60.88,73.19,40,0
    .goto 47,64.19,65.03,40,0
    .goto 47,63.50,76.61,0
    >>Mate os |cRXP_ENEMY_Nightbane Sombra Weavers|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Althea|r fora e |cRXP_FRIENDLY_Daltry|r dentro
    .turnin 26686 >>Entregue Ossos Ambulantes
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
    .turnin 26669 >>Entregue Em Uma Esquina Sombria
    .accept 26670 >>Aceite O Descanso de Rolando
    .goto 47,72.448,46.909
	.target +Clerk Daltry
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Entre na estalagem
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Smitts|r
    .turnin 26661 >>Entregue Flores do Mal
    .accept 26676 >>Aceite Alguém Pediu um Suco?
	.target Tavernkeep Smitts
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>Saia da estalagem
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrônio|r
    .turnin 26689,1 >>Entregue O Horto Pútrido
    .accept 26690 >>Aceite Torpes e Maculados
	.target Calor
step
	#label Insane
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Viktori|r
    .turnin 26684 >>Entregue O Carniçal Insano
    .accept 26685 >>Aceite Lente de Classe
	.target Viktori Prism'Antras
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26676 >>Entregue Alguém Pediu um Suco?
    .accept 26680 >>Aceite Ogro Ladrão
	.target Abercrombie
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith JPages
    >>Mate os |cRXP_ENEMY_Nightbane Torpe Presas|r e os |cRXP_ENEMY_Nightbane Maculado Ones|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
	#label JPages
    .goto 47,73.44,76.86,20,0
    .goto 47,74.26,77.92,20,0
    .goto 47,73.62,79.21
    >>Pegue as |cRXP_LOOT_Muddy Diário Pages|r no chão
    .complete 26670,1 --1/1 Muddy Journal Pages
step
#loop
    .goto 47,74.84,67.51,40,0
    .goto 47,72.13,67.77,40,0
    .goto 47,72.03,74.77,40,0
    .goto 47,74.25,73.86,40,0
    .goto 47,73.46,73.17,40,0
    .goto 47,74.84,67.51,40,0
    .goto 47,72.13,67.77,40,0
    .goto 47,72.03,74.77,40,0
    .goto 47,74.25,73.86,40,0
    .goto 47,73.46,73.17,0
    >>Mate os |cRXP_ENEMY_Nightbane Torpe Presas|r e os |cRXP_ENEMY_Nightbane Maculado Ones|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    .goto 47,72.448,46.909
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daltry|r dentro
    .turnin 26670 >>Entregue O Descanso de Rolando
    .accept 26671 >>Aceite O Destino de Galvão Brumanto
	.target Clerk Daltry
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrônio|r, depois |cRXP_FRIENDLY_Jonathan|r dentro
    .turnin 26690 >>Entregue Torpes e Maculados
    .accept 26691 >>Aceite Worgen na Floresta
    .goto 47,75.33,48.02
	.target +Calor
    .turnin 26691 >>Entregue Worgen na Floresta
    .goto 47,75.24,48.23,5,0
    .goto 47,75.39,49.00
	.target +Jonathan Carevin
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tobias|r dentro da casa
    .turnin 26671 >>Entregue O Destino de Galvão Brumanto
    .accept 26672 >>Aceite Agarrando-se à Verdade
    .target Tobias Mistmantle
step
	#label Clawing
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eva|r dentro da casa
    .turnin 26672 >>Entregue Agarrando-se à Verdade
    .accept 26674 >>Aceite A Vingança de Brumanto
	.target Madame Eva
step
    #completewith next
	.cast 82029 >>|cRXP_WARN_Use o|r |T133343:0|t[Mistmantle Family Anel] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Galvão Brumanto|r
	.timer 33,A Vingança de Brumanto RP
step
    .goto 47,77.42,35.85,10,0
    .goto 47,77.33,36.18
    .use 59363 >>Mate |cRXP_ENEMY_Galvão Brumanto|r
    .complete 26674,1 --1/1 Stalvan Mistmantle slain
	.mob Stalvan Mistmantle
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tobias|r dentro da casa
    .turnin 26674 >>Entregue A Vingança de Brumanto
    .accept 26785 >>Aceite Membro da Matilha
	.target Tobias Mistmantle
step
	#completewith next
    .goto 47,69.51,48.83,30 >>Pegue o caminho atrás do Town Hall para Brightwood Grove
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dodds|r e |cRXP_FRIENDLY_Fess|r
    .accept 25235 >>Aceite Vul'Gol Vulgar
	.target +Watcher Dodds
    .goto 47,45.12,67.02
    .turnin 26785 >>Entregue Membro da Matilha
    .accept 26707 >>Aceite Uma Trepadeira Mortal
    .accept 26717 >>Aceite Noel, o Worgen
    .goto 47,44.92,67.43
	.target +Apprentice Fess
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith next
    >>Mate |cRXP_ENEMY_Corpseweeds|r. Saqueie-os pela |cRXP_LOOT_Cadavérea|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    .goto 47,49.86,77.69
    >>Clique em |cRXP_PICK_Montículo de Terra Solta|r no chão
    .complete 26717,1 --1/1 Mound of Loose Dirt
step
    #loop
    .goto 47,51.99,73.61,60,0
    .goto 47,49.04,70.73,60,0
    .goto 47,47.12,73.79,60,0
    .goto 47,49.28,76.56,60,0
    .goto 47,51.99,73.61,60,0
    .goto 47,49.04,70.73,60,0
    .goto 47,47.12,73.79,60,0
    >>Mate |cRXP_ENEMY_Corpseweeds|r. Saqueie-os pela |cRXP_LOOT_Cadavérea|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    #completewith Zzarc
	>>Mate os |cRXP_ENEMY_Farpa Punho Ogros|r, os |cRXP_ENEMY_Farpa Punho Mercadores de Fogo|r e os |cRXP_ENEMY_Farpa Punho Guerreiros|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    .goto 47,33.52,75.33
    >>Saqueie |cRXP_LOOT_Caixote de Abercrombie|r no chão
    .complete 26680,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto 47,34.23,77.47,15 >>Vá para a Caverna do Ogro Punhalasca
step
	#label Zzarc
    .goto 47,37.87,84.33
    >>Mate |cRXP_ENEMY_Zzarc' Vul|r. Saqueie-o pelo |cRXP_LOOT_Monóculo|r
    .complete 26685,1 --1/1 Ogre's Monocle
	.unitscan Zzarc' Vul
step
	#completewith next
    .goto 47,34.20,77.47,15 >>Saia da Caverna do Ogro Punhalasca
	.isOnQuest 25235,26685
step
    #loop
    .goto 47,33.32,74.63,60,0
    .goto 47,32.82,68.37,60,0
    .goto 47,39.06,70.59,60,0
    .goto 47,40.66,74.97,60,0
    .goto 47,33.32,74.63,60,0
    .goto 47,32.82,68.37,60,0
    .goto 47,39.06,70.59,60,0
    .goto 47,40.66,74.97,60,0
    .goto 47,34.261,73.014,0
	>>Mate os |cRXP_ENEMY_Farpa Punho Ogros|r, os |cRXP_ENEMY_Farpa Punho Mercadores de Fogo|r e os |cRXP_ENEMY_Farpa Punho Guerreiros|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fess|r e |cRXP_FRIENDLY_Dodds|r
    .turnin 26707 >>Entregue Uma Trepadeira Mortal
    .turnin 26717 >>Entregue Noel, o Worgen
    .accept 26719 >>Aceite Entrega Para o Mestre Espargosa
    .goto 47,44.92,67.43
	.target +Apprentice Fess
    .turnin 25235 >>Entregue Vul'Gol Vulgar
    .goto 47,45.12,67.02
	.target +Watcher Dodds
step
    .goto 47,20.015,57.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmã Elsington|r
    .target Sister Elsington
    .accept 26777 >>Aceite Acalmar os Espíritos
step
    .goto 47,18.628,58.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Medrisco|r
    .accept 26721 >>Aceite Aracnofobia
    .target Jitters
step
    .goto 47,18.310,57.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olívio Espargosa|r
    .target Oliver Harris
    .turnin 26719 >>Entregue Entrega Para o Mestre Espargosa
    .accept 26720 >>Aceite Praga que Pega
step
#optional
    #completewith LurkingW
    .use 60225 >>|cRXP_WARN_Use o|r |T134547:0|t[Incensário Sagrado] |cRXP_WARN_em|r |cRXP_FRIENDLY_Espíritos Desolados|r
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
step
#optional
	#completewith next
    .goto 47,21.65,72.34,8,0
    .goto 47,21.29,72.73,8 >>|cRXP_WARN_Entre no Estábulo do Celeiro|r
step
    #label LurkingW
    .goto 47,21.61,73.15
	>>|cRXP_WARN_Dane o |cRXP_ENEMY_Worgen Espreitador|r que surge até 20% ou menos de vida, depois use|r |T134825:0|t[Ampola de Espargosa] |cRXP_WARN_nele|r
    .complete 26720,1 --1/1 Lurking Worgen captured
	.mob Lurking Worgen
    .use 60206
step
    #loop
    .goto 47,19.20,68.25,60,0
    .goto 47,19.95,64.85,60,0
    .goto 47,23.23,66.58,60,0
    .goto 47,25.13,70.24,60,0
    .goto 47,22.85,72.11,60,0
    .goto 47,19.20,68.25,60,0
    .goto 47,19.95,64.85,60,0
    .goto 47,23.23,66.58,60,0
    .goto 47,25.13,70.24,60,0
    .goto 47,22.85,72.11,60,0
    .goto 47,21.695,68.981,0
    .use 60225 >>|cRXP_WARN_Use o|r |T134547:0|t[Incensário Sagrado] |cRXP_WARN_em|r |cRXP_FRIENDLY_Espíritos Desolados|r
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
    .use 60225
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olívio Espargosa|r e |cRXP_FRIENDLY_Irmã Elsington|r
    .turnin 26720 >>Entregue Praga que Pega
    .accept 26760 >>Aceite Uivando para a Lua
	.timer 58,Uivando para a Lua RP
    .goto 47,18.32,57.67
    .turnin 26777 >>Entregue Acalmar os Espíritos
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target Sister Elsington
step
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    >>|cRXP_WARN_Se você não recebeu crédito após o cronômetro expirar, abandone a missão "Uivando para a Lua" e aceite-a novamente|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olívio Espargosa|r, |cRXP_FRIENDLY_Noel Figueira|r, e |cRXP_FRIENDLY_Irmã Elsington|r
    .complete 26760,1 --1/1 Worgen cured
    .turnin 26760 >>Entregue Uivando para a Lua
    .goto 47,18.32,57.67
    .accept 26723 >>Aceite O Destino de Morbídio Vil
    .goto 47,18.34,58.06
    .accept 26778 >>Aceite O Lamento dos Mortos
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target Sven Yorgen
	.target Sister Elsington
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto Duskwood,21.08,56.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_João Salafrém|r
    .target John Shelby
    .fp Raven Hill>>Aprenda a rota de voo para a Colina do Corvo
step
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14,50,0
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14
    >>Abate as |cRXP_ENEMY_Black Widows|r. Saque-as pelas |cRXP_LOOT_Widow Venenom Sacs|r
	>>|cRXP_WARN_Elas às vezes desaparecem por 1-2s em combate|r
    .complete 26721,1 --8/8 Widow Venom Sac
	.mob Black Widow
step
    .goto 47,17.72,29.05
    >>Clique em |cRXP_PICK_A Weathered Grave|r
    .accept 26793 >>Aceite A Velha Lápide
step
    .goto 47,17.49,33.40,8,0
    .goto 47,17.44,34.17,5,0
    .goto 47,16.97,33.42
    >>Clique em |cRXP_PICK_Bloodsoaked Chapéu|r no andar de cima no chão
    .complete 26723,1 --1/1 Remains of Morbent Fel
step
    .isOnQuest 26793,26685,26680
    .hs >>Use sua Pedra de Retorno para ir a Darkshire
    .cooldown item,6948,>2
step
    .goto 47,72.43,46.80,15,0
    .goto 47,72.605,47.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 26793 >>Entregue A Velha Lápide
    .accept 26794 >>Aceite Morgan Ladimore
    .target Sirra Von'Indi
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 26794 >>Entregue Morgan Ladimore
    .accept 26795 >>Aceite Mor'Ladim
    .target Commander Althea Ebonlocke
step
	#sticky
    .destroy 2154 >>Descarte o |T133741:0|t[A História de Morgan Ladimore]
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .turnin 26685 >>Entregue Lente de Classe
	.target Viktori Prism'Antras
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26680 >>Entregue Ogro Ladrão
	.target Abercrombie
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26680 >>Entregue Ogro Ladrão
    .accept 26677 >>Aceite Boneco de Carniçal
	.target Abercrombie
    .maxlevel 28
step
    .goto 47,77.34,36.27,15,0
    .goto 47,75.08,37.23,40,0
    .goto 47,76.73,30.50,40,0
    .goto 47,81.23,32.15,40,0
    .goto 47,79.79,35.41,40,0
    .goto 47,75.08,37.23,40,0
    .goto 47,76.73,30.50,40,0
    .goto 47,81.23,32.15,40,0
    .goto 47,79.79,35.41,40,0
    .goto 47,77.760,33.889
    >>Abate os |cRXP_ENEMY_Fetid Cadáveres|r. Saque-os pelas |cRXP_LOOT_Ghoul Ribs|r
	>>|cRXP_WARN_Verifique por um |cRXP_PICK_Baú|r dentro e ao redor da Casa|r
    .complete 26677,1 --7/7 Ghoul Rib
	.mob Fetid Corpse
    .maxlevel 28
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26677 >>Entregue Boneco de Carniçal
    .accept 26681 >>Aceite Carta ao Alcaide
	.target Abercrombie
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_Entre no Town Hall|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Malaquias Ebanez|r
    .turnin 26681 >>Entregue Carta ao Alcaide
    .accept 26727 >>Aceite A Vingança do Embalsamador
	.target Lord Ello Ebonlocke
    .maxlevel 28
step
	#completewith next
	.goto 47,72.35,47.75,8,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.86,46.82,10 >>|cRXP_WARN_Saia do Town Hall|r
    .maxlevel 28
step
    .goto 47,74.17,46.47
    >>Abate |cRXP_ENEMY_Stiches|r.
    .complete 26727,1 --1/1 Stitches slain
	.mob Stitches
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_Entre no Town Hall|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Malaquias Ebanez|r.
    .turnin 26727 >>Entregue A Vingança do Embalsamador
	.target Lord Ello Ebonlocke
    .maxlevel 28
step
	#completewith next
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felícia Maline|r.
    .fly Raven Hill >>Voe para a Colina do Corvo
	.target Felicia Maline
    .subzoneskip 94
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noel Figueira|r e |cRXP_FRIENDLY_Medrisco|r
    .turnin 26723 >>Entregue O Destino de Morbídio Vil
    .accept 26724 >>Aceite O Lich Espreitador
    .goto 47,18.34,58.06
	.target +Sven Yorgen
    .turnin 26721 >>Entregue Aracnofobia
    .accept 26787 >>Aceite Lembrete
	.target +Jitters
    .goto 47,18.62,58.36
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmã Elsington.|r
    .turnin 26778 >>Entregue O Lamento dos Mortos
    .isQuestComplete 26778
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmã Elsington.|r
    .turnin 26724 >>Entregue O Lich Espreitador
    .accept 26725 >>Aceite Guiado pela Luz
    .goto 47,20.03,57.82
	.target Sister Elsington
step
#optional
    #completewith LightforgedRod
    >>Mate os |cRXP_ENEMY_Disseminadores de Peste|r, os |cRXP_ENEMY_Devoradores de Carne|r, os |cRXP_ENEMY_Apodrecidos|r e os |cRXP_ENEMY_Mastigadores de Osso|r
    .complete 26778,1 --20/20 Ghoul slain
	.mob Plague Spreader
	.mob Flesh Eater
	.mob Rotted One
	.mob Bone Chewer
step
#optional
    #completewith LightforgedRod
    >>Mate |cRXP_ENEMY_Mor'Ladim|r. Saque-o para seu |cRXP_LOOT_Crânio|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_patrulha o cemitério de Corvo Hill|r
    .complete 26795,1 --Mor'Ladim's Skull (1)
    .unitscan Mor'Ladim
    .isOnQuest 26795
step
    #label LightforgedRod
    .goto 47,23.45,35.41
    >>Clique em |cRXP_PICK_Vara Forjada a Luz|r no chão
    .turnin 26725 >>Entregue Guiado pela Luz
    .accept 26753 >>Aceite Os Salões dos Mortos
step
	#label CatacombsX
	#completewith next
    .goto 47,23.94,34.80,10,0
    .goto 47,25.68,33.76,15,0
    .goto 47,25.46,31.50,15,0
    .goto 47,23.47,27.99,15,0
    .goto 47,20.37,27.46,20 >>|cRXP_WARN_Viagem para as Catacumbas. Evite correr sobre qualquer sepultura, pois isso criará|r |cRXP_ENEMY_Enterrados Cadáveres|r
step
    .goto 47,20.37,27.46
    >>Clique em |cRXP_PICK_Arco Forjado a Luz|r no chão
    .turnin 26753 >>Entregue Os Salões dos Mortos
    .accept 26722 >>Aceite Enterrado Fundo
step
	#completewith next
    .goto 47,20.33,26.81,10,0
    .goto 47,19.47,26.81,10,0
    .goto 47,18.53,24.94,10,0
    .goto 47,18.01,25.37,10 >>|cRXP_WARN_Viagem pelo buraco na parede|r
step
    .goto 47,18.01,25.37
    >>Clique em |cRXP_FRIENDLY_Brasão Forjado a Luz|r no chão
    .turnin 26722 >>Entregue Enterrado Fundo
    .accept 26754 >>Aceite A Desgraça de Morbídio
step
	#completewith next
    .goto 47,16.53,31.06
    .cast 82130 >>|cRXP_WARN_Usar|r |T135142:0|t[A desgraça de Morbídio] |cRXP_WARN_em|r |cRXP_ENEMY_Morbídio Vil|r |cRXP_WARN_para enfraquecê-lo|r
	.use 60212
    .mob Morbent Fel
step
    .goto 47,16.53,31.06
    .use 60212 >>Mate |cRXP_ENEMY_Morbídio Vil|r
    .complete 26754,1 --1/1 Morbent Fel slain
	.mob Morbent Fel
step
	#completewith CoalB
    .goto 47,16.18,33.19,15,0
    .goto 47,15.31,38.48,15,0
    .goto 47,16.09,38.78,15,0
    .subzone 2098,1 >>|cRXP_WARN_Saia das Catacumbas|r
step
#sticky
#label morladim
#loop
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,22.922,37.687,0
    >>Mate |cRXP_ENEMY_Mor'Ladim|r. Saque-o para seu |cRXP_LOOT_Crânio|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_patrulha o cemitério de Corvo Hill|r
    .complete 26795,1 --Mor'Ladim's Skull (1)
	.unitscan Mor'Ladim
    .isOnQuest 26795
step
#loop
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,22.922,37.687,0
    >>Mate os |cRXP_ENEMY_Disseminadores de Peste|r, os |cRXP_ENEMY_Devoradores de Carne|r, os |cRXP_ENEMY_Apodrecidos|r e os |cRXP_ENEMY_Mastigadores de Osso|r
	.complete 26778,1 --20/20 Ghoul slain
	.mob Plague Spreader
	.mob Flesh Eater
	.mob Rotted One
	.mob Bone Chewer
step
#requires morladim
	#label CoalB
    #loop
    .goto 47,10.144,41.314,80,0
    .goto 47,11.636,54.060,80,0
    .goto 47,13.663,69.726,80,0
    .goto 47,10.144,41.314,0
    .goto 47,11.636,54.060,0
    .goto 47,13.663,69.726,0
    >>Mate os |cRXP_ENEMY_Coalpelt Ursos|r. Saqueie-os para obter os |cRXP_LOOT_Black Urso Brains|r
    .complete 26787,1 --8/8 Black Bear Brain
	.mob Coalpelt Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noel Figueira|r e |cRXP_FRIENDLY_Medrisco|r
    .turnin 26754 >>Entregue A Desgraça de Morbídio
	.target +Sven Yorgen
    .goto 47,18.34,58.06
    .turnin 26787 >>Entregue Lembrete
    .goto 47,18.62,58.36
	.target +Jitters
step
    .goto 47,19.929,57.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmã Elsington|r
    .target Sister Elsington
    .turnin 26778 >>Entregue O Lamento dos Mortos
    .accept 26838 >>Aceite Rebeldes sem Causa
step
    #optional
    #label endOfTheGuide
step
    .goto 50,51.88,12.10
    .zone 50 >>Voe para a Selva do Espinhaço Setentrional
]])
