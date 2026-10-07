if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group Missões Diárias de Northrend
#subgroup Missões Diárias de Profissão
#wotlk
#cata
#name Pesca

step
	.goto Dalaran,53.04,64.95
	.daily 13830,13832,13833,13834,13836, >>Fale com |cRXP_FRIENDLY_Marcia Perseguição|r em Dalaran. Ela tem 1 de 5 missões de pesca diárias. Aceite qualquer uma que esteja disponível.
	>>O Peixe Fantasma -- 13830
	>>Joia dos Esgotos -- 13832
	>>O Sangue é Mais Espesso -- 13833
	>>Delicioso e Letal -- 13834
	>>Situação Desembraçosa! -- 13836
	.target Marcia Chase

-- Quest: Dangerously Delicious -- 13834
step << Alliance
	#completewith next
	>>Lembre-se de comprar bugigangas para usar em sua vara de pesca
	.fly Valiance Landing Camp >>Fale com Aludane para voar para Wintergrasp -- autofly not working from dala to valiance landing camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
	.target Aludane
step << Horde
	#completewith next
	>>Lembre-se de comprar bugigangas para usar em sua vara de pesca
	.fly Warsong Camp, Wintergrasp>>Fale com Aludane para voar para Wintergrasp -- autofly not working from dala to warsong camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
	.target Aludane
step
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.zone Wintergrasp >>Vá para Wintergrasp
	.isOnQuest 13834
step << Alliance
	>>Pesque o |cRXP_LOOT_Terrorfish|r em qualquer lugar em Wintergrasp
	.goto Wintergrasp,71.05,36.85,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Horde
	>>Pesque o |cRXP_LOOT_Terrorfish|r em qualquer lugar em Wintergrasp
	.goto Wintergrasp,22.62,37.33,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Alliance
	#completewith next
	.fly Dalaran >>Voe para Dalaran
	.goto Wintergrasp,71.98,30.95
	.isOnQuest 13834
step << Horde
	#completewith next
	.fly Dalaran >>Voe para Dalaran
	.goto Wintergrasp,21.62,34.96
	.isOnQuest 13834
step
	>>Fale com |cRXP_FRIENDLY_Marcia Perseguição|r em Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Entregue Delicioso e Letal
	.isQuestComplete 13834

-- Quest: The Ghostfish -- 13830
step
	#completewith next
	>>Lembre-se de comprar bugigangas para usar em sua vara de pesca
	.fly River's Heart >>Fale com |cRXP_FRIENDLY_Aludane|r para voar para Bacia Sholazar
	.goto Dalaran,72.18,45.78,15,0
	.isOnQuest 13830
	.target Aludane
step
	.goto SholazarBasin,49.40,62.13
	.zone SholazarBasin >>Vá para Bacia Sholazar
	.isOnQuest 13830
step
	#completewith next
	>>Pesque o |cRXP_LOOT_Peixe-espectro Fantasma|r em Coração do Rio
	.goto SholazarBasin,49.40,62.13
	.collect 45902,1 --Phantom Ghostfish (1)
	.isOnQuest 13830
step
	.use 45902 >>Coma o |cRXP_LOOT_Peixe-espectro Fantasma|r na mochila
	.complete 13830,1 --Discover the Ghostfish mystery (1)
	.isOnQuest 13830
step
	#completewith next
	.fly Dalaran >>Voe para Dalaran
	.goto SholazarBasin,50.13,61.36
	.isOnQuest 13830
step
	>>Fale com |cRXP_FRIENDLY_Marcia Perseguição|r em Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Entregue O Peixe Fantasma
	.isQuestComplete 13830
	.target Marcia Chase

-- Quest: Jewel Of The Sewers -- 13832
step
	>>Lembre-se de comprar bugigangas para usar em sua vara de pesca
	>>Desça para os Esgotos de Dalaran. Pesque a |cRXP_LOOT_Jóia Corroída|r
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,37.06,48.02
	.complete 13832,1 --Corroded Jewelry (1)
	.isOnQuest 13832
step
	>>Fale com |cRXP_FRIENDLY_Marcia Perseguição|r em Dalaran
	.goto 126,22.66,41.71,10,0
	.goto Dalaran,35.31,45.28,10,0
	.goto Dalaran,53.04,64.95
	.turnin 13832 >>Entregue Joia dos Esgotos
	.isQuestComplete 13832
	.target Marcia Chase
-- Quest: Disarmed! -- 13836
step
	>>Lembre-se de comprar bugigangas para usar em sua vara de pesca
	>>Pesque a |cRXP_LOOT_Inchada Escorregadia Enguia|r fora de Castelo Violeta em Dalaran
	.goto Dalaran,62.16,67.18
	.collect 45328,1 -- Bloated Slippery Eel (1)
	.isOnQuest 13836
step
	.use 45328 >>Abra a |cRXP_LOOT_Inchada Escorregadia Enguia|r na mochila e pegue o |cRXP_LOOT_Braço Cortado|r
	.complete 13836,1 --Severed Arm (1)
	.isOnQuest 13836
step
	>>Fale com |cRXP_FRIENDLY_Olisarra the Kind|r em Dalaran
	.goto Dalaran,36.58,37.33
	.turnin 13836 >>Entregue Situação Desembraçosa!
	.isQuestComplete 13836
	.target Olisarra the Kind

-- Quest: Blood Is Thicker -- 13833
step << Alliance
	#completewith next
	>>Lembre-se de comprar bugigangas para usar em sua vara de pesca
	.fly Une'pe >>Fale com |cRXP_FRIENDLY_Aludane|r para voar para Une'pe, Tundra Boreana
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
	.target Aludane
step << Horde
	#completewith next
	>>Lembre-se de comprar bugigangas para usar em sua vara de pesca
	.fly Taunka'le >>Fale com |cRXP_FRIENDLY_Aludane|r para voar para Taunka'le, Tundra Boreana
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
	.target Aludane
step
	.goto BoreanTundra,75.56,42.01
	.zone BoreanTundra >>Vá para Tundra Boreana
	.isOnQuest 13833
step -- WIP. Currently no check for debuff. If they get debuff @ first WP then it will point to the next 2 WP's before pointing to the sea to start fishing
	>>Mate qualquer |cRXP_ENEMY_Animal|r em Tundra Boreana para receber o efeito [Sangue Animal]
	>>Pule na água para remover o efeito, que criará um |cRXP_PICK_Poça de Sanguíneo|r
	.goto BoreanTundra,75.56,42.01,60,0
	>>Pesque |cRXP_LOOT_Frenzis de Dente de Sangue|r desta |cRXP_PICK_Poça de Sanguíneo|r
	.complete 13833,1 --Bloodtooth Frenzy (5)
	.goto BoreanTundra,82.28,49.62,-1
	.goto BoreanTundra,79.22,51.61,-1
	.isOnQuest 13833
step
	#completewith next
	.fly Dalaran >>Voe para Dalaran
	.goto BoreanTundra,78.54,51.53
	.isOnQuest 13833
step
	>>Fale com |cRXP_FRIENDLY_Marcia Perseguição|r em Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Entregue O Sangue é Mais Espesso
	.isQuestComplete 13833
	.target Marcia Chase
step
	+Você completou a Missão Diária de Pesca de hoje
]])
