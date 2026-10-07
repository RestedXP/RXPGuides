if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.player.race ~= "Pandaren" then return end

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP Zona Inicial (Pandaren)
#name 1-12 The Wandering Isle
#next RXP Cataclismo 1-80 (A)\10-20 Loch Modan;RXP Cataclismo 1-80 (H)\10-22 Azshara;RXP MoP 1-80 (A)\10-20 Loch Modan;RXP MoP 1-80 (H)\10-22 Azshara;pular


<< Pandaren !DK

step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
    .accept 30034 >>Aceite A Lição do Galho de Ferro << Hunter
    .accept 30027 >>Aceite A Lição do Galho de Ferro << Priest/Monk
    .accept 30033 >>Aceite A Lição do Galho de Ferro << Mage
    .accept 30037 >>Aceite A Lição do Galho de Ferro << Shaman
    .accept 30038 >>Aceite A Lição do Galho de Ferro << Warrior
    .accept 30036 >>Aceite A Lição do Galho de Ferro << Rogue
	.target Master Shang Xi
step << Hunter
    .isOnQuest 30034
    .goto 378,57.22,19.22
    >>Clique na |cRXP_PICK_Weapon Rack|r para a |T537025:0|t[Besta do Discípulo]
    .collect 73211,1 --Trainee's Crossbow (1)
step << Hunter
    .goto 378,57.22,19.22
    >>Equipe a |T537025:0|t[Besta do Discípulo]
    .complete 30034,1 --1/1 Loot and Equip a Trainee's Crossbow
    .use 73211 --Trainee's Crossbow
step << Mage
    .isOnQuest 30033
    .goto 378,57.22,19.22
    >>Clique na |cRXP_PICK_Weapon Rack|r para a |T537771:0|t[Lâmina Enfeitiçada do Discípulo] e |T654237:0|t[Leque de Aprendiz]
    .collect 76390,1 --Trainee's Spellblade (1)
    .collect 76392,1, --Trainee's Hand Fan (1)
step << Mage
    .goto 378,57.22,19.22
    >>Equipe a |T537771:0|t[Lâmina Enfeitiçada do Discípulo] e o |T654237:0|t[Leque de Aprendiz]
    .complete 30033,1 --Loot and Equip a Trainee's Spellblade (1)
    .complete 30033,2 --Loot and Equip a Trainee's Hand Fan (1)
    .use 76390 --Trainee's Spellblade
    .use 76392 --Trainee's Hand Fan
step << Monk/Priest
    .isOnQuest 30027
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Clique o|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_para o|r |T537770:0|t[Cajado do Discípulo]
    .collect 73209,1 -Trainee's Staff (1)
step << Monk/Priest
    .goto 378,56.67,18.20
    >>Equipe o |T537770:0|t[Cajado do Discípulo]
    .complete 30027,1 --Loot and Equip a Trainee's Staff
    .use 73209
step << Shaman
    .isOnQuest 30037
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Clique o|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_para o|r |T537205:0|t[Machado do Discípulo] |cRXP_WARN_e|r |T537769:0|t[Escudo do Discípulo]
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1 --Trainee's Shield (1)
step << Shaman
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Equipe o|r |T537205:0|t[Machado do Discípulo] |cRXP_WARN_e|r |T537769:0|t[Escudo do Discípulo]
    .complete 30037,1 --Loot and Equip a Trainee's Axe
    .complete 30037,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Clique o|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_para o|r |T537205:0|t[Machado do Discípulo] |cRXP_WARN_e|r |T537769:0|t[Escudo do Discípulo]
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1  --Trainee's Shield (1)
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Equipe o|r |T537205:0|t[Machado do Discípulo] |cRXP_WARN_e|r |T537769:0|t[Escudo do Discípulo]
    .complete 30038,1 --Loot and Equip a Trainee's Axe
    .complete 30038,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Rogue
    .isOnQuest 30036
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Clique o|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_para as|r |T537767:0|t[Trainee's Adagas]
    .collect 73208,1,30036,1,1 --Trainee's Dagger (ID 1)
    .collect 73212,1,30036,1,1 --Trainee's Dagger (ID 2)
step << Rogue
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Equipe as|r |T537767:0|t[Trainee's Adagas]
    .complete 30036,1 --Loot and Equip a Trainee's Dagger
    .complete 30036,2 --Loot and Equip a Second Trainee's Dagger
    .use 73208 --Trainee's Dagger (ID 1)
    .use 73212 --Trainee's Dagger (ID 2)
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
    .turnin 30034 >>Entregue A Lição do Galho de Ferro << Hunter
    .turnin 30033 >>Entregue A Lição do Galho de Ferro << Mage
    .turnin 30027 >>Entregue A Lição do Galho de Ferro << Priest/Monk
    .turnin 30037 >>Entregue A Lição do Galho de Ferro << Shaman
    .turnin 30038 >>Entregue A Lição do Galho de Ferro << Warrior
    .turnin 30036 >>Entregue A Lição do Galho de Ferro << Rogue
    .accept 29406 >>Aceite A Lição do Punho de Areia
	.target Master Shang Xi
step
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.31,18.97
    >>Mate os |cRXP_ENEMY_Training Targets|r.
    .complete 29406,1 --5/5 Training Targets destroyed
	.mob Training Target
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
    .turnin 29406 >>Entregue A Lição do Punho de Areia
    .accept 29524 >>Aceite A Lição do Orgulho Abafado
	.target Master Shang Xi
step
    #completewith next
    --#title |cFFFCDC00Enter the house|r
    .goto 378,59.57,19.05,10 >>Entre na casa
step
    .goto 378,60.26,19.35
    >>Mate os |cRXP_ENEMY_Sparring Trainees|r
    *|cRXP_WARN_há mais acima|r
    .complete 29524,1 --6/6 Sparring Trainees defeated
	.mob Tushui Trainee
	.mob Huojin Trainee
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
    .turnin 29524 >>Entregue A Lição do Orgulho Abafado
    .accept 29408 >>Aceite A Lição do Pergaminho Ardente
	.target Master Shang Xi
step
    .isOnQuest 29408
    .goto 378,59.97,18.58,8,0
    .goto 378,60.48,18.85,5,0
    .goto 378,60.20,18.89,5,0
    .goto 378,59.98,18.69,5,0
	.goto 378,60.46,19.60,8 >>Suba
    >>|cRXP_WARN_pegar o atalho para cima pulando pela lacuna|r
step
    .goto 378,59.95,20.39
    >>Clique no |cRXP_PICK_Estandarte|r no topo do edifício
    .complete 29408,2 --1/1 Burn the Edict of Temperance
step
	#completewith next
    --#title |cFFFCDC00Jump down|r
    .goto 378,60.19,19.35,6 >>|cRXP_WARN_Saltar|r
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
    .turnin 29408 >>Entregue A Lição do Pergaminho Ardente
    .accept 29409 >>Aceite O Desafio do Discípulo
	.target Master Shang Xi
step
    .goto 378,67.78,22.75
    >>Mate |cRXP_ENEMY_Jaomin Ro|r
    .complete 29409,1 --1/1 Defeat Jaomin Ro
	.mob Jaomin Ro
step << Warrior
	#completewith Lorvo
    +|cRXP_WARN_Use|r |T132337:0|t[carga] |cRXP_WARN_on critters to move faster|r
step
    .goto 378,65.97,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
    .turnin 29409 >>Entregue O Desafio do Discípulo
    .accept 29410 >>Aceite Aysa dos Tushui
	.target Master Shang Xi
step
    #completewith next
    .goto 378,55.09,32.83,50 >>Vá para |cRXP_FRIENDLY_Comerciante Lorvo|r
step
	#label Lorvo
    .goto 378,55.09,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Comerciante Lorvo|r
    .turnin 29410 >>Entregue Aysa dos Tushui
    .accept 29419 >>Aceite O Condutor Desaparecido
    .accept 29424 >>Aceite Itens da Maior Importância
	.target Merchant Lorvo
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Amberleaf Scamps|r. Saqueie-os em busca de |T132622:0|t[|cRXP_LOOT_Suprimentos de Treinamento Roubados|r]
    .complete 29424,1 --6/6 Stolen Training Supplies
	.mob Amberleaf Scamp
step
    .goto 378,54.11,20.90
    --#title |cFFFCDC00Follow the arrow to |cFF00FF25Min Dimwind|r|r
    >>Vá para |cRXP_FRIENDLY_Min Vento Fraco|r
    .complete 29419,1 --1/1 Rescue the Cart Driver
	.target Min Dimwind
step
    #loop
    .goto 378,53.08,31.58,0
    .goto 378,54.03,20.93,15,0
    .goto 378,54.02,17.44,15,0
    .goto 378,53.00,20.17,15,0
    .goto 378,52.89,24.41,20,0
    .goto 378,55.04,24.93,20,0
    .goto 378,53.08,31.58,20,0
    >>Abate os |cRXP_ENEMY_Amberleaf Scamps|r e saqueie-os procurando o |T132622:0|t[|cRXP_LOOT_Suprimentos de Treinamento Roubados|r]
    .complete 29424,1 --6/6 Stolen Training Supplies
	.target Amberleaf Scamp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Comerciante Lorvo|r e |cRXP_FRIENDLY_Aysa Canta Nuvens|r
    .turnin 29419,2 >>Entregue O Condutor Desaparecido
    .turnin 29424 >>Entregue Itens da Maior Importância
	.target +Merchant Lorvo
    .goto 378,55.11,32.40
    .accept 29414 >>Aceite O Caminho dos Tushui
    .goto 378,55.10,32.55
	.target +Aysa Cloudsinger
step
	#completewith next
    --#title |cFFFCDC00Enter the cave|r
    .goto 378,57.21,31.04,30,0
    .goto 378,57.63,35.20,10 >>Entre na caverna
	.timer 87,Encenação na Caverna
step
    .goto 378,57.89,36.55
    >>Defenda Aysa dos |cRXP_ENEMY_Amberleaf Troublemakers|r que chegam
    .complete 29414,1 --1/1 Protect Aysa while she meditates
	.mob Amberleaf Troublemaker
--step
--    #title Advanced
--    .isOnQuest 29414
--    >>|cFFFF0000Try out find out|r.
--    .goto 378,57.52,34.59,5 >>|cRXP_WARN_Staying near the entrance is faster but more dangerous|r
step
    .goto 378,57.54,34.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
    .turnin 29414 >>Entregue O Caminho dos Tushui
    .accept 29522 >>Aceite Ji dos Huojin
	.target Master Shang Xi
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
    .turnin 29522 >>Entregue Ji dos Huojin
    .accept 29417 >>Aceite O Caminho dos Huojin
	.target Ji Firepaw
step
    #loop
    .goto 378,51.18,17.71,0
    .goto 378,51.18,17.71,30,0
    .goto 378,49.56,18.31,30,0
    .goto 378,49.49,20.13,30,0
    .goto 378,49.23,24.48,30,0
    .goto 378,49.90,23.37,30,0
    .goto 378,46.12,20.46,30,0
    >>Abate |cRXP_ENEMY_Fe-Feng|r
    .complete 29417,1 --8/8 Fe-Feng attackers slain
	.mob Fe-Feng Hozen
    .mob Fe-Feng Brewthief
    .mob Fe-Feng Leaper
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
    .turnin 29417 >>Entregue O Caminho dos Huojin
    .accept 29418 >>Aceite Alimentando o Fogo
    .accept 29523 >>Aceite Atiçando as Chamas
	.target Ji Firepaw
step << skip
    .isOnQuest 29523
    #completewith Fluttering Breeze
    +|cRXP_WARN_Para ativar atalhos de teclado para itens de missão, siga estas etapas:|r
    *[1] Pressione a tecla |cRXP_WARN_Escape key|r.
    *[2] Selecione |cRXP_WARN_Options|r.
    *[3] Vá para |cRXP_WARN_Keybindings|r.
    *[4] Dentro de |cRXP_WARN_Keybindings|r, localize |cRXP_WARN_RestedXP Guides|r
    *[5] Selecione e vincule o |cRXP_WARN_Active Botão|r.
step
#optional
    #completewith next
	>>Pegue as |cRXP_PICK_Raízes de Dogwood Soltas|r no chão ao lado das árvores
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    .goto 378,47.24,31.32
	>>|cRXP_WARN_Use the|r |T519378:0|t[Vento Pedra] |cRXP_WARN_at the Shrine to summon a|r |cRXP_ENEMY_Ar Vivo|r
    >>Abate-o e pegue dele um |T463565:0|t[|cRXP_LOOT_Brisa Esvoaçante|r]
    .complete 29523,1 --1/1 Fluttering Breeze
    .use 72109
	.mob Living Air
step
    #loop
    .goto 378,47.98,31.97,0
    .goto 378,47.98,31.97,10,0
    .goto 378,46.07,27.94,10,0
    .goto 378,48.99,30.16,10,0
    .goto 378,46.83,34.88,10,0
    .goto 378,46.04,33.12,10,0
    .goto 378,46.17,27.09,10,0
    .goto 378,48.31,29.58,10,0
    .goto 378,50.06,31.41,10,0
    .goto 378,48.90,33.14,10,0
    .goto 378,49.58,36.46,10,0
    .goto 378,46.86,35.05,10,0
    .goto 378,46.01,33.12,10,0
    >>Pegue as |cRXP_PICK_Raízes de Dogwood Soltas|r no chão ao lado das árvores
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r e |cRXP_FRIENDLY_Shang Xi|r
    .turnin 29418 >>Entregue Alimentando o Fogo
    .turnin 29523 >>Entregue Atiçando as Chamas
	.target +Ji Firepaw
    .goto 378,50.24,21.26
    .accept 29420 >>Aceite O Guardião do Espírito
    .goto 378,50.29,21.47
	.target +Master Shang Xi
step
   --#title |cFFFCDC00Enter the cave|r
    .goto 378,41.09,24.83,10 >>Entre na caverna
    .isOnQuest 29420
step
    .goto 378,40.75,23.86,10,0
    .goto 378,40.84,22.19,10,0
    .goto 378,40,22.77,10,0
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Li Fei|r
    >>|cRXP_WARN_Dodge the fire geysers en-route|r
    .turnin 29420 >>Entregue O Guardião do Espírito
    .accept 29664 >>Aceite As Chamas do Desafiante
	.target Master Li Fei
 step
    >>Clique nos |cRXP_PICK_Braseiros|r
    .complete 29664,1 --1/1 Challenger Torch lit
    .goto 378,38.71,25.39
    .complete 29664,4 --1/1 Violet Brazier lit
    .goto 378,38.25,24.87
    .complete 29664,2 --1/1 Red Brazier lit
    .goto 378,38.99,23.50
    .complete 29664,3 --1/1 Blue Brazier lit
    .goto 378,39.19,25.41
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Li Fei|r
    .turnin 29664 >>Entregue As Chamas do Desafiante
    .accept 29421 >>Aceite Somente os Dignos Deverão Passar
	.target Master Li Fei
step
    .goto 378,38.81,25.50
    >>|cRXP_WARN_Derrote o |cRXP_ENEMY_Mestre Li Fei|r reduzindo sua saúde para 20%|r
    .complete 29421,1 --1/1 Defeat Master Li Fei
	.mob Master Li Fei
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Li Fei|r
    .turnin 29421,2 >>Entregue Somente os Dignos Deverão Passar
    .accept 29422 >>Aceite Huo, o Espírito do Fogo
	.target Master Li Fei
step
    --#title |cFFFCDC00Run up the ramp.|r Use |T133662:0|t[Huo's Offerings]
    .goto 378,39.41,29.55
	.cast 102522 >>|cRXP_WARN_Usar|r |T133662:0|t[Huo's Offerings] |cRXP_WARN_em|r |cRXP_FRIENDLY_Huo|r
	.timer 11,Huo o Espírito do Fogo RP
	.use 72583
    .target Huo
    .isOnQuest 29422
step
    .goto 378,39.41,29.55
    >>|cRXP_WARN_Esperar a encenação terminar|r
    .complete 29422,1 --1/1 Reignite the Spirit of Fire
    .use 72583
    .target Huo
    .isOnQuest 29422
step
    .goto 378,39.41,29.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Huo|r
    .turnin 29422 >>Entregue Huo, o espírito do fogo
    .accept 29423 >>Aceite A Paixão de Shen-zin Su
	.target Huo
step
    --#title |cFFFCDC00Leave the cave|r
    .goto 378,40.12,25.50,20,0
    .goto 378,41.48,25.05,20,0
    .goto 378,42.0,25.29
    .subzone 5849,1 >>Saia da caverna
step
	#completewith next
    --#title |cFFFCDC00Follow the arrow|r
    .goto 378,51.04,30.62,20,0
    .goto 378,51.89,35.93,20,0
    .goto 378,50.12,38.94,15,0
    .goto 378,50.32,37.48,20,0
    .goto 378,51.58,40.46
    .subzone 5820 >>Vá para o |cRXP_WARN_Temple of Cinco Dawns|r
step
    .goto 378,51.41,46.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
    .turnin 29423 >>Entregue A Paixão de Shen-zin Su
    .accept 29521 >>Aceite Os Lagos Cantantes
	.target Master Shang Xi
step
    .isOnQuest 29521
    .goto 378,51.83,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cheng Perfil d'Aurora|r
    .home >>Defina sua Pedra de Retorno em Temple of Cinco Dawns
	.target Cheng Dawnscrive
step
    #completewith SingingPools
    .subzone 5826 >>Vá para os Cantando Pools
step
    .isOnQuest 29521
    .goto 378,53.22,47.45,10,0
    .goto 378,57.12,46.63,10,0
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cortador Dewei|r
    .train 2366 >>Aprenda Herborismo
    .target Whittler Dewei
    .skipgossipid 112959
    .skipgossipid 130364
    .skipgossipid 112911
step
    .isOnQuest 29521
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cortador Dewei|r
    .train 2575 >>Aprenda Mineração
	.target Whittler Dewei
    .skipgossipid 130364
    .skipgossipid 112912
    .skipgossipid 112975
step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jojo Testa de Ferro|r
    .accept 29662 >>Aceite Mais Forte que os Juncos
	.target Jojo Ironbrow
step
    #completewith JumpOnPole
    +|cRXP_WARN_Os nós de Mineração/Herborismo dão xp equivalente a 1 inimigo nesta expansão, lembre-se de coletar nós próximos. Você pode coletar todos os tipos de nós independentemente da sua habilidade de profissão|r
step
    #completewith next
    +|cRXP_WARN_Nesta área, algumas águas te transformam em um animal, aumentando sua velocidade de movimento|r
step
    #label SingingPools
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aysa Canta Nuvens|r
    .turnin 29521 >>Entregue Os Lagos Cantantes
    .accept 29661 >>Aceite A Lição do Pelo Seco
    .accept 29663 >>Aceite A Lição da Rocha Equilibrada
	.target Aysa Cloudsinger
step
    #completewith RingTrainingBell
	>>Mate os |cRXP_ENEMY_Monges Tushui|r nos polos
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    .isOnQuest 29663
    .isQuestNotComplete 29663
    #label JumpOnPole
    .goto 378,63.37,45.17
	.vehicle >>Clique num |cRXP_FRIENDLY_Mastro de Equilíbrio|r |cRXP_WARN_Enquanto você não está na água ou é um sapo|r
step
    #label RingTrainingBell
    .goto 378,61.41,47.81
    >>|cRXP_WARN_Clique nos |cRXP_FRIENDLY_Balance Poles|r para pular em direção ao|r |cRXP_PICK_Training Bell|r
    >>Clique no |cRXP_PICK_Training Bell|r
    .complete 29661,1 --1/1 Ring the Training Bell
step
    #completewith next
    >>Pegue a |cRXP_PICK_Hard Tearwood Reed|r no chão
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    #loop
    .goto 378,63.22,45.17,0
    .goto 378,63.22,45.17,20,0
    .goto 378,62.25,50,15,0
    .goto 378,60.43,48.97,15,0
    .goto 378,62.22,44.33,15,0
	>>Mate os |cRXP_ENEMY_Monges Tushui|r nos polos
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    #completewith next
    --#title |cFFFCDC00Exit the vehicle|r
    .exitvehicle >>|cRXP_WARN_Saia do veículo|r
    .macro Leave Vehicle,6656430 >>Saia do veículo
step
    #loop
    .goto 378,62.85,49.06,0
    .goto 378,62.85,49.06,20,0
    .goto 378,60.53,49.31,20,0
    .goto 378,60.82,45.70,20,0
    >>Pegue a |cRXP_PICK_Hard Tearwood Reed|r no chão
    *|cRXP_WARN_Se você ficar à beira, os |cRXP_ENEMY_Whitefeather Cranes|r não o atacarão|r
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jojo Testa de Ferro|r
    .turnin 29662 >>Entregue Mais Forte que os Juncos
	.target Jojo Ironbrow
step
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aysa Canta Nuvens|r
    .turnin 29661 >>Entregue A Lição do Pelo Seco
    .turnin 29663 >>Entregue A Lição da Rocha Equilibrada
    .accept 29676 >>Aceite Encontrando um Velho Amigo
	.target Aysa Cloudsinger
step
    #completewith next
    +|cRXP_WARN_Nesta área, lagos de água roxa o transformam em um animal, aumentando sua velocidade de movimento|r
step
    .goto 378,72.15,37.88,13,0
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Velho Liang|r
    .turnin 29676 >>Entregue Encontrando um Velho Amigo
    .accept 29666 >>Aceite A Dor do Aprendizado
    .accept 29677 >>Aceite A Pérola do Sol
	.target Old Man Liang
step
    #loop
    .goto 378,74.94,38.46,30,0
    .goto 378,72.21,46.53,30,0
    .goto 378,71.47,52.26,30,0
    >>Mate os |cRXP_ENEMY_Water Tenazes|r
    .complete 29666,1 --6/6 Water Pincer slain
    .mob Water Pincer
step
    .goto 378,76.21,46.87
    >>Clique no |cRXP_PICK_Marisco Antigo|r embaixo da água
    >>|cRXP_WARN_Você não precisa matar|r |cRXP_ENEMY_Fang-she|r
    .complete 29677,1 --1/1 Sun Pearl
    .mob Fang-she
step
    .goto 378,78.47,42.85
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Velho Liang|r
    >>|cRXP_WARN_Se por alguma razão você não conseguir encontrar o criador da missão, volte para a casa dele a oeste|r
    .turnin 29666 >>Entregue A Dor do Aprendizado
    .turnin 29677 >>Entregue A Pérola do Sol
    .accept 29678 >>Aceite Shu, o Espírito da Água
	.target Old Man Liang
step
	.isOnQuest 29678
    .goto 378,79.66,41.83,4,0
    .goto 378,79.61,38.72
    >>Pise em cima dos círculos brilhantes
    >>|cRXP_WARN_Isto permitirá que você pule em direção à piscina|r
    .complete 29678,1 --1/1 Cross to the Pool of Reflection
step
    .goto 378,79.59,38.58
    >>|cRXP_WARN_Use|r |T463854:0|t[Sol Pearl] |cRXP_WARN_na superfície da água|r
    .complete 29678,2 --1/1 Coax Shu, the Water Spirit
    .use 73791
step
    .goto 378,79.82,39.31
    >>Clique no Pop-Up de Entrega no seu Registro de Missões
    .turnin 29678 >>Entregue Shu, o Espírito da Água
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aysa Canta Nuvens|r
    .accept 29679 >>Aceite Um Novo Amigo
	.target Aysa Cloudsinger
step
    .goto 378,79.11,37.77
    >>Siga |cRXP_FRIENDLY_Shu|r de perto enquanto ele se move
    >>|cRXP_WARN_Mova-se em cima da água borbulhante perto dele|r
    .complete 29679,1 --5/5 Play with the Spirit of Water
	.target Shu
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aysa Canta Nuvens|r
    .turnin 29679 >>Entregue Um Novo Amigo
    .accept 29680 >>Aceite A Fonte de Nosso Sustento
	.target Aysa Cloudsinger
step
    .goto 378,76.57,57.36,40,0
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
	>>|cRXP_WARN_A |cRXP_PICK_Entrega Carroça|r é mais lenta que correr manualmente|r
    .turnin 29680 >>Entregue A Fonte de Nosso Sustento
    .accept 29769 >>Aceite Patifes
    .target Ji Firepaw
step
    .goto 378,68.13,66.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gao Brisa de Verão|r
    .accept 29770 >>Aceite Ainda Dá para Comer!
	.target Gao Summerdraft
step
	#completewith Carrots
    >>Mate os |cRXP_ENEMY_Virmens Rechoncudos|r
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
    .mob Plump Carrotcatcher
step
	.goto 378,70.11,77.63,0
    .goto 378,70.11,77.63,15,0
    .goto 378,69.55,79.23,15,0
    .goto 378,70.84,80.41,15,0
    .goto 378,71.46,78.11,15,0
#loop
	.line 378,70.11,77.63,69.55,79.23,70.84,80.41,71.46,78.11
	.goto 378,70.11,77.63,10,0
	.goto 378,69.55,79.23,10,0
	.goto 378,70.84,80.41,10,0
	.goto 378,71.46,78.11,10,0
    >>Saque os |cRXP_PICK_Nabos Desenraizados|r no chão
    .complete 29770,1 --3/3 Uprooted Turnip
step
	.goto 378,78.60,69.75,0
    .goto 378,75.54,72.25,20,0
    .goto 378,77.79,71.81,20,0
    .goto 378,78.01,72.56,15,0
    .goto 378,78.85,70.76,20,0
    .goto 378,78.6,69.74,20,0
#loop
	.line 378,77.35,70.51,78.12,72.61,78.82,70.88,78.6,69.75
	.goto 378,77.35,70.51,10,0
	.goto 378,78.12,72.61,10,0
	.goto 378,78.82,70.88,10,0
	.goto 378,78.60,69.75,10,0
    >>Saque os |cRXP_PICK_Abóboras Furtadas|r no chão
    .complete 29770,3 --3/3 Pilfered Pumpkin
step
	.isOnQuest 29770
    .goto 378,77.05,71.02,10 >>Entre na caverna
step
	#label Carrots
	.goto 378,74.70,74.76,0
    .goto 378,76.1,71.26,15,0
    .goto 378,75.57,72.94,15,0
    .goto 378,73.97,72.58,15,0
    .goto 378,73.94,70.86,15,0
    .goto 378,74.7,74.76,15,0
#loop
	.line 378,73.97,72.58,73.94,70.86,74.7,74.76
	.goto 378,73.97,72.58,5,0
	.goto 378,73.94,70.86,5,0
	.goto 378,74.70,74.76,5,0
    >>Mate os |cRXP_ENEMY_Carrotcrunchers Rechoncudos|r. Saque-os para obter |cRXP_LOOT_Cenouras|r
    >>|cRXP_WARN_Você também pode pegar|r |cRXP_PICK_Cenouras|r |cRXP_WARN_no chão|r
    .complete 29770,2 --3/3 Stolen Carrot
	.mob Plump Carrotcruncher
step
	.isOnQuest 29770
    .goto 378,74.99,69.42,10 >>Saia da caverna
step
	.goto 378,77.85,71.75,0
    .goto 378,74.73,67.2,15,0
    .goto 378,72.67,69.48,15,0
    .goto 378,70.75,71.61,15,0
    .goto 378,69.4,69.74,15,0
#loop
	.line 378,77.89,70.13,77.36,70.49,77.85,71.75
	.goto 378,77.89,70.13,10,0
	.goto 378,77.36,70.49,10,0
	.goto 378,77.85,71.75,10,0
    >>Mate os |cRXP_ENEMY_Virmens Rechoncudos|r
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gao Brisa de Verão|r, |cRXP_FRIENDLY_Ji Pata de Fogo|r e |cRXP_FRIENDLY_Jojo Testa de Ferro|r
    .turnin 29770 >>Entregue Ainda Dá para Comer!
	.target +Gao Summerdraft
    .goto 378,68.13,66.40
    .turnin 29769 >>Entregue Patifes
    .accept 29768 >>Aceite A Baqueta Desaparecida
	.target +Ji Firepaw
	.goto 378,68.89,64.98
    .accept 29771 >>Aceite Mais Forte que a Madeira
	.target +Jojo Ironbrow
    .goto 378,69.16,66.71
step
	#completewith next
	>>Pegue as |cRXP_PICK_Tábuas de Madeira|r no chão
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    .goto 378,62.63,77.05
	>>Saque o |cRXP_PICK_Mallet|r no barril
    >>|cRXP_WARN_Você não precisa matar|cRXP_ENEMY_ Raggis|r se conseguir evitá-lo|r
    .complete 29768,1 --1/1 Dai-Lo Recess Mallet
step
    #loop
    .goto 378,63.77,77.19,0
    .goto 378,63.77,77.19,15,0
    .goto 378,63.27,79.16,15,0
    .goto 378,62.94,79.04,15,0
    .goto 378,62.19,81.08,15,0
	>>Pegue as |cRXP_PICK_Tábuas de Madeira|r no chão
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jojo Testa de Ferro|r e |cRXP_FRIENDLY_Ji Pata de Fogo|r
    .turnin 29771 >>Entregue Mais Forte que a Madeira
    .target +Jojo Ironbrow
    .goto 378,69.16,66.71
    .turnin 29768 >>Entregue A Baqueta Desaparecida
    .accept 29772 >>Aceite Estardalhaço do Despertar
    .target +Ji Firepaw
	.goto 378,68.89,64.98
step
    .goto 378,68.95,64.80
    >>Clique em |cRXP_PICK_Gongo|r
    .complete 29772,1 --1/1 Ring the town gong
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
    .turnin 29772 >>Entregue Estardalhaço do Despertar
    .accept 29774 >>Aceite Na Cara Não!
	.target Ji Firepaw
step
    .goto 378,68.98,62.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shu|r
    .complete 29774,1 --1/1 Ask Shu for help
	.timer 15,Encenação
	.target Shu
    .skipgossip
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
    >>|cRXP_WARN_Esperar a encenação terminar|r
    .turnin 29774 >>Entregue Na Cara Não!
    .accept 29775 >>Aceite O Espírito e o Corpo de Shen-zin Su
	.target Ji Firepaw
step
	.isOnQuest 29775
    .goto 378,58.86,63.38,40,0
    .goto 378,55.23,58.57,40,0
    .goto 378,51.48,57.40,20 >>Voe para o Templo dos Cinco Amanheceres
	>>|cRXP_WARN_A |cRXP_PICK_Entrega Carroça|r é mais lenta que correr manualmente|r
    .subzoneskip 5820--temple of five dawns
step
    .goto 378,51.59,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
    .turnin 29775 >>Entregue O Espírito e o Corpo de Shen-zin Su
    .accept 29776 >>Aceite Vila Brisa da Manhã
	.timer 20,Vila Brisa da Manhã RP
	.target Master Shang Xi
step
    .isOnQuest 29776
    .goto 378,51.46,48.93,7 >>|cRXP_WARN_Esperar a encenação terminar|r
step
    #completewith next
    .subzoneskip 5830
	.isOnQuest 29776
    .goto 378,51.01,49.05,10,0
    .goto 378,40.19,50.79,20,0
    .goto 378,34.91,50.73,15,0
    .goto 378,33.1,42.6,15,0
    .goto 378,30.42,37.50,20 >>Voe para |cRXP_WARN_Vila Brisa da Manhã|r
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
    .turnin 29776 >>Entregue Vila Brisa da Manhã
    .accept 29778 >>Aceite Sabedoria Reescrita
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jojo Testa de Ferro|r
    .accept 29783 >>Aceite Mais Forte que a Pedra
	.target Jojo Ironbrow
step
    .goto 378,31.78,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Ancião Shaopai|r
    .accept 29777 >>Aceite Instrumentos do Inimigo
	.target Elder Shaopai
step
    .isOnQuest 29777
    #completewith Defaced Scroll of Wisdom burned
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shen Entalha Pedra|r
    .vendor >>|cRXP_WARN_Venda e conserte se você precisar|r
    .target Shen Stonecarver
step
    #completewith Defaced Scroll of Wisdom burned
    >>Mate os |cRXP_ENEMY_Fe-Feng Wisemans|r. Saqueie-os para obter seus |cRXP_LOOT_Brushes|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    #completewith Defaced Scroll of Wisdom burned
    >>Saqueie os |cRXP_PICK_Blocos de Pedra|r no chão
    .complete 29783,1 --12/12 Abandoned Stone Block
step
	.goto 378,28.71,50.23,0
    .goto 378,30.3,42.95,15,0
    .goto 378,29.49,45.36,15,0
    .goto 378,29.11,47.53,15,0
    .goto 378,29.78,47.67,15,0
    .goto 378,29.21,48.57,15,0
    .goto 378,28.37,49.37,15,0
    .goto 378,27.16,49.67,15,0
    .goto 378,28.54,49.93,15,0
    .goto 378,29.12,51.09,15,0
    .goto 378,31.19,47.97,15,0
    .goto 378,32.49,46.63,15,0
    .goto 378,33.13,46.32,15,0
#loop
	.line 378,33.42,50.88,32.57,53.31,28.71,50.23
	.goto 378,33.42,50.88,15,0
	.goto 378,32.57,53.31,15,0
	.goto 378,28.71,50.23,15,0
    #label Defaced Scroll of Wisdom burned
    >>Clique nas |cRXP_PICK_Bandeiras|r nos monumentos
    .complete 29778,1 --5/5 Defaced Scroll of Wisdom burned
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Fe-Feng Wisemans|r. Saqueie-os para obter seus |cRXP_LOOT_Brushes|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
	.goto 378,31.32,52.22,0
    .goto 378,31.18,47.97,15,0
    .goto 378,32.57,46.43,15,0
    .goto 378,33.66,47.21,15,0
    .goto 378,33.99,50.9,15,0
    .goto 378,33.06,52.27,15,0
    .goto 378,32.16,50.53,15,0
    .goto 378,31.32,52.22,15,0
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>Saqueie os |cRXP_PICK_Blocos de Pedra|r no chão
    .complete 29783,1 --12/12 Abandoned Stone Block
step
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.32,52.22,0
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>Mate os |cRXP_ENEMY_Fe-Feng Wisemans|r. Saqueie-os para obter seus |cRXP_LOOT_Brushes|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    .goto 378,31.751,39.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Ancião Shaopai|r
    .target Elder Shaopai
    .turnin 29777 >>Entregue Instrumentos do Inimigo
step
    .goto 378,29.969,39.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jojo Testa de Ferro|r
    .target Jojo Ironbrow
    .turnin 29783 >>Entregue Mais Forte que a Pedra
step
    .goto 378,30.950,36.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
    .target Ji Firepaw
    .turnin 29778 >>Entregue Sabedoria Reescrita
    .accept 29779 >>Aceite A Solução Direta
    .accept 29780 >>Aceite Não Faça Mal Algum
    .accept 29781 >>Aceite Macacos Me Explodam!
step
	.isOnQuest 29779
    .goto 378,29.28,39.98,15,0
    .goto 378,27.42,36.25,30,0
    .goto 378,26.42,33.68,30 >>Voe para |cRXP_WARN_Jade Pilar|r
step
	#completewith RukRuk
	>>Mate os |cRXP_ENEMY_Hozen Fe-Feng|r
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
    .goto 378,26.42,33.68
    >>Clique no |cRXP_FRIENDLY_Jade Pilar|r
    .accept 29782 >>Aceite Mais Forte que o Osso
step
    #completewith FeFeng
	>>Saqueie os |cRXP_PICK_Fogos de Artifício Roubados|r no chão
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
    #label RukRuk
    .goto 378,26.08,35.17,15,0
    .goto 378,20.94,34.43
	>>Mate |cRXP_ENEMY_Ruk-Ruk|r
    .complete 29780,1 --1/1 Ruk-Ruk slain
	.mob Ruk-Ruk
step
    #label FeFeng
	.goto 378,26.75,31.86,0
    .goto 378,26.75,31.86,15,0
    .goto 378,27.49,29.61,15,0
    .goto 378,25.72,29.91,15,0
    .goto 378,24.24,30.84,15,0
    .goto 378,20.52,34.6,10,0
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
    >>Mate os |cRXP_ENEMY_Hozen Fe-Feng|r
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,0
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
	>>Saqueie os |cRXP_PICK_Fogos de Artifício Roubados|r no chão
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r, que deveria estar ao seu lado
    >>|cRXP_WARN_Se ele não estiver lá, pule este passo|r
    .turnin 29779 >>Entregue A Solução Direta
    .turnin 29780 >>Entregue Não Faça Mal Algum
    .turnin 29781 >>Entregue Macacos Me Explodam!
    .accept 29784 >>Aceite Perspectiva Equilibrada
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jojo Testa de Ferro|r
    .turnin 29782 >>Entregue Mais Forte que o Osso
	.target Jojo Ironbrow
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
    .turnin 29779 >>Entregue A Solução Direta
    .turnin 29780 >>Entregue Não Faça Mal Algum
    .turnin 29781 >>Entregue Macacos Me Explodam!
    .accept 29784 >>Aceite Perspectiva Equilibrada
	.target Ji Firepaw
step
	#completewith next
    .goto 378,31.14,36.79,5,0
    .goto 378,32.17,36.36,8,0
    .goto 378,32.88,37.16,8,0
    .goto 378,32.94,35.61,8 >>|cRXP_WARN_Cuidadosamente|r caminhe sobre a corda
step
	#label BalancedP
    .goto 378,32.94,35.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aysa Canta Nuvens|r
    .turnin 29784 >>Entregue Perspectiva Equilibrada
    .accept 29785 >>Aceite Dafeng, O Espírito do Ar
	.target Aysa Cloudsinger
step
	#sticky
	#label Temple1
    .goto 378,30.21,38.57,20,0
    .goto 378,28.94,62.89,20 >>Vá para a |cRXP_WARN_Câmara de Sussurros|r
	.isOnQuest 29785
step
	#sticky
	#label Temple2
	#requires Temple1
    .goto 378,26.64,66.63,10 >>Corra entre os conjuntos de escadas depois que os ventos diminuem pela primeira vez
	.isOnQuest 29785
step
	#sticky
	#label Temple3
	#requires Temple2
    .goto 378,26.64,66.63,10 >>Corra até |cRXP_FRIENDLY_Dafeng|r depois que os ventos da próxima sala diminuem
	.isOnQuest 29785
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dafeng|r e |cRXP_FRIENDLY_Aysa|r
    .turnin 29785 >>Entregue Dafeng, O Espírito do Ar
	.target +Dafeng
    .goto 378,24.65,69.80
    .accept 29786 >>Aceite Batalha Pelos Céus
	.target +Aysa Cloudsinger
    .goto 378,24.78,69.78
step
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,30.52,59.72
	>>Clique em |cRXP_PICK_Fogos de Artifício Lançadores|r no chão quando |cRXP_ENEMY_Zhao-Ren|r voar sobre eles para feri-lo
    >>Ele circula no sentido anti-horário. |cRXP_WARN_Avoid his Raio puddles|r. Danifique-o quando ele pousa. Derrote-o quando ele pousa pela segunda vez.
    .complete 29786,1 --1/1 Zhao-Ren slain
	.target Zhao-Ren
step
    .goto 378,29.99,60.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
    .turnin 29786 >>Entregue Batalha Pelos Céus
    .accept 29787 >>Aceite Merecido Descanso
	.target Master Shang Xi
step
	#completewith next
    .goto 378,26.32,52.83,20,0
    .goto 378,22.70,52.80,40 >>Vá |cRXP_WARN_to The Elders' Trajetória|r
step
    .goto 378,22.70,52.80
	>>Mate o |cRXP_ENEMY_Guardião dos Anciões|r
    .complete 29787,1 --1/1 Guardian of the Elders slain
	.timer 19,Merecido Descanso RP
	.target Guardian of the Elders
step
    .goto 378,19.45,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
	>>|cRXP_WARN_Esperar a encenação terminar|r
    .turnin 29787 >>Entregue Merecido Descanso
    .accept 29788 >>Aceite Natureza Indesejável
    .accept 29789 >>Aceite Pequenos, mas Importantes
	.target Master Shang Xi
step
    #loop
    .goto 378,18.84,51.88,0
    .goto 378,18.84,51.88,30,0
    .goto 378,18.43,49.88,30,0
    .goto 378,18.37,48.13,30,0
    .goto 378,21.57,49.29,30,0
    .goto 378,22.50,48.95,30,0
    .goto 378,24.22,45.72,30,0
    .goto 378,18.18,44.52,30,0
    .goto 378,18.18,44.52,30,0
	>>Mate os |cRXP_ENEMY_Thornbranch Scamps|r
    >>Saque os |cRXP_PICK_Encantos|r pendurados nas árvores
    .complete 29788,1 --8/8 Thornbranch Scamp slain
	.mob +Thornbranch Scamp
    .complete 29789,1 --8/8 Kun-Pai Ritual Charm
step
    .goto 378,19.46,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Shang Xi|r
    .turnin 29788 >>Entregue Natureza Indesejável
    .turnin 29789 >>Entregue Pequenos, mas Importantes
    .accept 29790 >>Aceite Transmitindo a Sabedoria
	.timer 83,Transmitindo a Sabedoria RP
	.target Master Shang Xi
step
    .goto 378,17.29,50.78
    >>Espere a encenação na localização da seta
    >>|cRXP_WARN_Se você passar além disso, |cRXP_FRIENDLY_Shang Xi|r desaparecerá. Se isso acontecer, abandone a missão e comece a encenação novamente|r
    .complete 29790,1 --1/1 Listen to Master Shang Xi
	.target Master Shang Xi
step
    .goto 378,15.79,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aysa Canta Nuvens|r
    .turnin 29790 >>Entregue Transmitindo a Sabedoria
    .accept 29791 >>Aceite O Sofrimento de Shen-zin Su
	.target Aysa Cloudsinger
step
    .goto 378,15.55,48.91
    >>Clique no |cRXP_PICK_Balão de Ar|r para abordá-lo
    .complete 29791,1 --1/1 Board the Hot Air Balloon
	.timer 231,O Sofrimento de Shen-zin Su RP
step
    .goto 378,30.8,92.9
	>>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 29791,2 --1/1 Uncover the source of Shen-zin Su's pain
step
    .goto 378,51.35,57.21,20,0
    .goto 378,51.31,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaopai|r
    .turnin 29791 >>Entregue O Sofrimento de Shen-zin Su
    .accept 29792 >>Aceite Convite à Grandeza
	.target Elder Shaopai
step
    .goto 378,51.60,61.39
    --#title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_Siga a seta|r
    .complete 29792,1 --1/1 Open the Mandori Village Gate
step
	#completewith next
    .goto 378,50.66,65.62,20,0
    .goto 378,52.28,68.43,30 >>Vá |cRXP_WARN_to the Pei-Wu Portal|r
	.timer 28,Portal Pei-Wu RP
step
    .goto 378,52.28,68.43
    >>|cFFFCDC00Siga a seta|r. Espere a encenação
    .complete 29792,2 --1/1 Open the Pei-Wu Forest Gate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wei|r e |cRXP_FRIENDLY_Korga|r
    .turnin 29792 >>Entregue Convite à Grandeza
    .accept 30591 >>Aceite Predando os Predadores
	.target +Wei Palerage
    .goto 378,50.07,76.63
    .accept 29795 >>Aceite Estocando Estoques
	.target +Korga Strongmane
    .goto 378,50.22,76.65
step
    #loop
	.line 378,54.51,85.54,45.05,85.81,45.89,71.57,55.62,69.49,54.51,85.54
	.goto 378,54.51,85.54,40,0
	.goto 378,45.05,85.81,40,0
	.goto 378,45.89,71.57,40,0
	.goto 378,55.62,69.49,40,0
	.goto 378,54.51,85.54,0
    >>Mate os |cRXP_ENEMY_Pei-Wu Tigers|r
    >>Saque os |cRXP_PICK_Bamboo Stalks|r no chão
    .complete 30591,1 --9/9 Pei-Wu Tiger slain
	.mob +Pei-Wu Tiger
    .complete 29795,1 --10/10 Broken Bamboo Stalk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wei|r e |cRXP_FRIENDLY_Korga|r
    .turnin 30591 >>Entregue Predando os Predadores
	.target +Wei Palerage
    .goto 378,50.07,76.63
    .turnin 29795 >>Entregue Estocando Estoques
    .accept 30589 >>Aceite Destroçando os Destroços
	.target +Korga Strongmane
    .goto 378,50.22,76.65
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makael|r e |cRXP_FRIENDLY_Ji|r
    .turnin 30589 >>Entregue Destroçando os Destroços
    .accept 30590 >>Aceite Manuseie com Cuidado
	.target +Makael Bay
    .goto 378,36.32,72.36
    .accept 29793 >>Aceite O Mal que Veio dos Mares
	.target +Ji Firepaw
    .goto 378,36.37,72.53
step
    #loop
    .goto 378,36.06,76.73,0
    .goto 378,36.06,76.73,40,0
    .goto 378,35.41,79.00,40,0
    .goto 378,40.14,78.79,40,0
    .goto 378,38.29,74.01,40,0
    >>Mate os |cRXP_ENEMY_Darkened Horrors|r e os |cRXP_ENEMY_Darkened Terrors|r
	>>Pegue os |cRXP_PICK_Explosion Bundles|r no chão
    >>|cRXP_WARN_Cuidado com os Sombra Gêiseres dos Horrors|r
    .complete 29793,1 --8/8 Darkened Horrors or Darkened Terrors slain
	.mob +Darkened Horror
	.mob +Darkened Terror
    .complete 30590,1 --6/6 Packed Explosion Charge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josefo Padilha|r e |cRXP_FRIENDLY_Ji Pata de Fogo|r
    .turnin 30590 >>Entregue Manuseie com Cuidado
	.target +Makael Bay
    .goto 378,36.32,72.36
    .turnin 29793 >>Entregue O Mal que Veio dos Mares
    .accept 29796 >>Aceite Notícias Urgentes
	.target +Ji Firepaw
    .goto 378,36.37,72.53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delora Coração de Leão|r e |cRXP_FRIENDLY_Jojo Testa de Ferro|r
    .turnin 29796 >>Entregue Notícias Urgentes
    .accept 29794 >>Aceite Ninguém Fica para Trás
    .accept 29797 >>Aceite Suprimentos Médicos
	.target +Delora Lionheart
    .goto 378,42.21,86.54
    .accept 29665 >>Aceite De Mal a Pior
	.target +Jojo Ironbrow
    .goto 378,42.30,86.35
step << skip
    #optional
    #completewith next
    #label InjuredSailorA
    .goto 378,42.27,86.80,0,0
    >>Carregue o |cRXP_FRIENDLY_Marinheiro Ferido|r de volta para o acampamento de |cRXP_FRIENDLY_Delora|r.
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorA
    .goto 378,40.18,87.69
	.cast 56685 >>Pegue um |cRXP_FRIENDLY_Marinheiro Ferido|r no chão
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorA
    .goto 378,42.27,86.80
    >>Carregue o |cRXP_FRIENDLY_Marinheiro Ferido|r de volta para o acampamento de |cRXP_FRIENDLY_Delora|r.
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
    #completewith next
	#label InjuredSailorB
    .goto 378,42.27,86.80,0,0
    >>Carregue o |cRXP_FRIENDLY_Marinheiro Ferido|r de volta para o acampamento de |cRXP_FRIENDLY_Delora|r.
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorB
    .goto 378,39.41,87.98
	.cast 56685 >>Pegue o |cRXP_FRIENDLY_Marinheiro Ferido|r.
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorB
    .goto 378,42.27,86.80
    >>Carregue o |cRXP_FRIENDLY_Marinheiro Ferido|r de volta para o acampamento de |cRXP_FRIENDLY_Delora|r.
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step
	#completewith InjuredSailorB
    >>Mate os |cRXP_ENEMY_Deepscale Tormentors|r
    >>Saque os |cRXP_PICK_Caixotes Médicos|r no chão
    .complete 29665,1 --8/8 Deepscale Tormentor slain
	.mob +Deepscale Tormentor
    .complete 29797,1 --8/8 Alliance Medical Supplies
step
    .waypoint 378,42.27,86.80,-129340,wpbuff,UNIT_AURA--put this WP at the top, this is where to point at once you have the buff
    .waypoint 378,42.27,86.80,-105520,wpbuff,UNIT_AURA--put this WP at the top, this is where to point at once you have the buff
    .waypoint 378,40.18,87.69,10
    .waypoint 378,40.01,84.36,10
    .waypoint 378,38.08,84.73,10
    .waypoint 378,38.41,83.09,10
    .waypoint 378,37.60,81.44,10
    .waypoint 378,35.49,83.80,10
    .waypoint 378,36.17,87.63,10
    .waypoint 378,37.66,87.22,10
    .waypoint 378,38.36,87.43,10
    .goto 378,40.18,87.69
    >>Pegue um |cRXP_FRIENDLY_Marinheiro Ferido|r no chão e carregue-o de volta para o acampamento de |cRXP_FRIENDLY_Delora Coração de Leão|r
    >>|cRXP_WARN_Faça isto pelo menos duas vezes|r
    .complete 29794,1,2 --2/3 Injured Sailors rescued
    .target Injured Sailor
step
#optional
#label InjuredSailorB
step
    #optional
    #loop
    .goto 378,37.86,83.22,0
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,10,0
    .goto 378,36.82,89.24,20,0
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,15,0
    .goto 378,36.82,89.24,15,0
    >>Mate os |cRXP_ENEMY_Deepscale Tormentors|r
    >>Saque os |cRXP_PICK_Caixotes Médicos|r no chão
	>>|cRXP_WARN_Não pegue um novo |cRXP_FRIENDLY_Marinheiro Ferido|r ainda|r
    .complete 29665,1 --8/8 Deepscale Tormentor slain
	.mob +Deepscale Tormentor
    .complete 29797,1 --8/8 Alliance Medical Supplies
step
    #label InjuredSailorC
	#completewith next
    .goto 378,38.36,87.43,10,0
    .goto 378,37.66,87.22,10,0
    .goto 378,36.17,87.63,10,0
    .goto 378,35.49,83.80,10,0
    .goto 378,37.60,81.44,10,0
    .goto 378,38.41,83.09,10,0
    .goto 378,38.08,84.73,10,0
    .goto 378,40.01,84.36,10,0
    .goto 378,40.18,87.69
	.cast 56685 >>Pegue um |cRXP_FRIENDLY_Marinheiro Ferido|r
	.isOnQuest 29794
	.target Injured Sailor
step
    #requires InjuredSailorC
    .goto 378,42.27,86.80
    >>Carregue o |cRXP_FRIENDLY_Marinheiro Ferido|r de volta para o acampamento de |cRXP_FRIENDLY_Delora Coração de Leão|r
    .complete 29794,1 --3/3 Injured Sailors rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delora Coração de Leão|r e |cRXP_FRIENDLY_Jojo Testa de Ferro|r
    .turnin 29794 >>Entregue Ninguém Fica para Trás
    .turnin 29797 >>Entregue Suprimentos Médicos
	.target +Delora Lionheart
    .goto 378,42.21,86.54
    .turnin 29665 >>Entregue De Mal a Pior
    .accept 29798 >>Aceite Um Mal Antigo
	.target +Jojo Ironbrow
    .goto 378,42.30,86.35
step
    .goto 378,36.50,84.23
    >>Mate |cRXP_ENEMY_Vordraka, The Deep Sea Pesadelo|r
    *|cRXP_WARN_Esquive-se do Batida do Fundo do Mar dele|r
    *|cRXP_WARN_Abate os |cRXP_ENEMY_Deepscale Aggressors|r quando aparecerem|r
    .complete 29798,1 --1/1 Vordraka, the Deep Sea Nightmare slain
	.mob Vordraka, The Deep Sea Nightmare
    .mob Deepscale Aggressor
step
    .goto 378,36.50,84.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aysa Canta Nuvens|r
    .turnin 29798 >>Entregue Um Mal Antigo
    .accept 30767 >>Aceite Arriscando Tudo
    .timer 77,Arriscando Tudo RP
	.target Aysa Cloudsinger
	.skipgossip
step
    .goto 378,36.35,86.08,10,0 << skip
    .goto 378,36.27,86.99,10,0 << skip
    .goto 378,36.90,85.50,5,0 << skip
    .goto 378,36.36,87.2,10,0 << skip
    .goto 378,36.38,87.12 << skip
    >>Espere a encenação terminar
    >>|cRXP_WARN_Pegue um descanso se quiser|r
	>>|cRXP_WARN_Pressione "Fuga" no seu teclado para pular a cinemática|r
    .complete 30767,1 --1/1 Shen-zin Su's Thorn Removed
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
    .turnin 30767 >>Entregue Arriscando Tudo
    .accept 29799 >>Aceite A Cura de Shen-zin Su
	.target Ji Firepaw
step
    .goto 378,39.08,88.32,5,0
    .goto 378,39.04,88.87,5,0
    .goto 378,39.89,88.62,5,0
    .goto 378,42.92,87.31,5,0
    .goto 378,42.85,85.16,5,0
    .goto 378,42.01,84.89,5,0
    .goto 378,42.31,83.89,5,0
    .goto 378,41.21,83.78,5,0
    .goto 378,40.55,82.45,5,0
    .goto 378,40.26,83.35,5,0
    .goto 378,40.12,84.37,5,0
    .goto 378,38.44,86.07
    >>Clique em |cRXP_PICK_Loose Wreckages|r e ajude os |cRXP_FRIENDLY_Alliance Priests|r e os |cRXP_FRIENDLY_Horde Druids|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com os |cRXP_FRIENDLY_Alliance Priests|r e os |cRXP_FRIENDLY_Horde Druids|r
    *|cRXP_WARN_Abate |cRXP_ENEMY_Dampscale Fleshrippers|r se estiverem atacando|r
    .complete 29799,1 --1/1 Protect the healers
	.target Alliance Priest
	.target Horde Druid
	.mob Dampscale Fleshripper
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
	>>|cRXP_WARN_Pressione "Esc" no teclado para pular a cinemática|r.
    .turnin 29799 >>Entregue A Cura de Shen-zin Su
	.timer 18,A Cura de Shen-zin Su RP
	.target Ji Firepaw
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .goto 378,38.77,86.32
    .accept 29800 >>Aceite Novos Aliados
	.target Ji Firepaw
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para |cRXP_WARN_the Temple of Cinco Dawns|r
step
    .goto 378,51.45,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Spirit of Shang Xi|r e selecione sua Facção
	>>|cRXP_WARN_Pressione "Fuga" no seu teclado para pular a cinemática|r
    .turnin 29800 >>Entregue Novos Aliados
    .accept 31450 >>Aceite Um Novo Destino
    .complete 31450,1 --1/1 Choose your faction
    .skipgossip
	.target Spirit of Shang Xi
step
    .zoneskip 84
    .goto 1,45.58,12.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ji Pata de Fogo|r
    .turnin 31450 >>Entregue Um Novo Destino
    .accept 31012 >>Aceite Entrando para a Horda
    .target Ji Firepaw
step
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aysa Canta Nuvens|r
    .turnin 31450 >>Entregue Um Novo Destino
	.accept 30987 >>Aceite Entrando para a Aliança
	.target Aysa Cloudsinger
step
#optional
.neutralzonefinished
step <<skip
--TODO: skip this? the whole trip to SW keep is way too long
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Varian Wrynn|r
	.turnin 30987 >>Entregue Entrando para a Aliança
	.target King Varian Wrynn
    .neutralzonefinished
step
    .zoneskip 84
    #completewith next
    .goto 85,49.87,75.52,20 >>Entre em Grommash Segurar
step
    .zoneskip 84
    .goto 85,48.76,70.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garrosh Grito Infernal|r
    .turnin 31012 >>Entregue Entrando para a Horda
    .target Garrosh Hellscream
    .neutralzonefinished
step
.zoneskip 84
.zoneskip 1
.zoneskip 85
+Parabéns, você acabou de completar a zona inicial dos Pandarenses. Clique no botão de engrenagem abaixo da janela RXP e selecione o guia de continuação apropriado.
]])
