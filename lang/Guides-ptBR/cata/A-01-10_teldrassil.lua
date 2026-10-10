if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[
#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-6 Shadowglen
#next 6-10 Teldrassil
#defaultfor NightElf
<<Alliance
step
    .goto 460,45.61,74.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .accept 28713 >>Aceite O Equilíbrio da Natureza
	.target Ilthalaine
step
    .goto 460,42.44,76.29,20,0
    .goto 460,46.63,79.57,20,0
    .goto 460,50.63,76.87,20,0
    .goto 460,42.44,76.29
    >>Mate os |cRXP_ENEMY_Young Nightsabers|r
    .complete 28713,1 --6/6 Young Nightsaber slain
	.mob Young Nightsaber
step
    .goto 460,45.62,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 28713 >>Entregue O Equilíbrio da Natureza
    .accept 28714 >>Aceite A Corrupção do Limo Vil
	.target Ilthalaine
step
    .goto 460,45.94,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melithar Guenelmo|r
    .accept 28715 >>Aceite Ladrões Demoníacos
	.target Melithar Staghelm
step
    #completewith next
    >>Mate o |cRXP_ENEMY_Capeta|r e os |cRXP_ENEMY_Grellkins|r. Saqueie-os pelo |cRXP_LOOT_Limo Vil|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>Pegue o |cRXP_LOOT_Melithar's Stolen Bags|r no chão
    .complete 28715,1 --5/5 Melithar's Stolen Bags
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>Mate o |cRXP_ENEMY_Capeta|r e os |cRXP_ENEMY_Grellkins|r. Saqueie-os pelo |cRXP_LOOT_Limo Vil|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r e |cRXP_FRIENDLY_Melithar Guenelmo|r
    .turnin 28714 >>Entregue A Corrupção do Limo Vil
    .target +Ilthalaine
    .goto 460,46.28,73.48
    .turnin 28715 >>Entregue Ladrões Demoníacos
	.target +Melithar Staghelm
    .goto 460,45.93,72.86
    .accept 3116 >>Aceite O Selo Simples << Warrior
    .accept 3117 >>Aceite O Selo Cinzelado << Hunter
    .accept 3118 >>Aceite O Selo Cifrado << Rogue
    .accept 3119 >>Aceite O Selo Sagrado << Priest
    .accept 3120 >>Aceite O Selo Verdejante << Druid
    .accept 26841 >>Aceite O Selo Proibido << Mage
    --class quests are auto from either npc
step << Priest/Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >>Vá para dentro em direção a |cRXP_FRIENDLY_Shanda|r << Priest
    .goto 1438/1,761.79999,10415.60059,10 >>Vá para dentro em direção a |cRXP_FRIENDLY_Rhyanda|r << Mage
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda|r
    .turnin 3119 >>Entregue O Selo Sagrado
    .accept 26949 >>Aceite Cura para o Ferido << cata
    .accept 26949 >>Aceite Aprenda a Palavra << !cata
    .train 2061 >>Treine |T135907:0|t[Cura Célere] << cata
    .target Shanda
step << Priest cata
    .goto 1438/1,797.70001,10464.60059
    >>|cRXP_WARN_Lance|r |T135907:0|t[Cura Célere] |cRXP_WARN_5 vezes na |cRXP_FRIENDLY_Sentinela Ferida|r ao seu lado|r
    .complete 26949,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << Priest !cata
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_Lance|r |T136207:0|t[Palavra Sombria: Dor] |cRXP_WARN_5 vezes em um|r |cRXP_ENEMY_Boneco de Treinamento|r
    .complete 26949,2 -- Heal Wounded Sentinel
    .target Training Dummy
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda|r
    .turnin 26949 >>Entregue Cura para o Ferido << cata
    .turnin 26949 >>Entregue Aprenda a Palavra << !cata
    .accept 28723 >>Aceite A Sacerdotisa da Lua
    .target Shanda
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26841 >>Entregue O Selo Proibido
    .accept 26940 >>Aceite Mísseis Arcanos
    .train 5143 >>Treine |T136096:0|t[Mísseis Arcanos] << cata
    .target Rhyanda
step << Mage
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_Use|r |T135812:0|t[Bola de Fogo] |cRXP_WARN_no |cRXP_ENEMY_Boneco de Treinamento|r até obter um|r |T135731:0|t[Mísseis Arcanos!] |cRXP_WARN_proc, depois lance|r |T136096:0|t[Mísseis Arcanos]|cRXP_WARN_. Repita isto duas vezes|r
    .complete 26940,1 << cata -- Practice Arcane Missles (1)
    .complete 26940,2 << !cata -- Practice Arcane Missles (1)
    .mob Training Dummy
step << Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >>Vá para dentro em direção a |cRXP_FRIENDLY_Rhyanda|r
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26940 >>Entregue Mísseis Arcanos
    .accept 28723 >>Aceite A Sacerdotisa da Lua
    .target Rhyanda
step << Warrior/Rogue
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15,0
    .goto 1438/1,794.60004,10506.90039,10 >>Vá para dentro em direção a |cRXP_FRIENDLY_Alyissia|r << Warrior
    .goto 1438/1,794.60004,10506.90039,10 >>Vá para dentro em direção a |cRXP_FRIENDLY_Frahun Umbrurmúrio|r << Rogue
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >>Entregue O Selo Simples
    .accept 26945 >>Aceite O Aprendizado de Novas Técnicas
	.train 100 >>Treine |T132337:0|t[Carga] << cata
    .target Alyissia
step << Warrior
    .goto 1438/1,808.79999,10460.79980
    >>|cRXP_WARN_Use|r |T132337:0|t[Investida] |cRXP_WARN_no|r |cRXP_ENEMY_Boneco de Treinamento|r
    .complete 26945,1 << cata -- Practice Charge (1)
    .complete 26945,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alyissia|r
    .turnin 26945 >>Entregue O Aprendizado de Novas Técnicas
    .accept 28723 >>Aceite A Sacerdotisa da Lua
    .target Alyissia
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frahun Umbrurmúrio|r
    .turnin 3118 >>Entregue O Selo Cifrado
    .accept 26946 >>Aceite As Vantagens de um Ladino
	.train 2098 >>Treine |T132292:0|t[Eviscerar] << cata
    .target Frahun Shadewhisper
step << Rogue
    .goto 1438/1,808.79999,10486.00000,-1
    .goto 1438/1,805.60004,10481.79980,-1
    >>|cRXP_WARN_Lance|r |T136189:0|t[Golpe Sinistro] |cRXP_WARN_seguido de|r |T132292:0|t[Eviscerar] |cRXP_WARN_3 vezes no|r |cRXP_ENEMY_Boneco de Treinamento|r
    .complete 26946,1 << cata -- Practice Eviscerate (1)
    .complete 26946,2 << !cata -- Practice Eviscerate (1)
    .mob Training Dummy
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frahun Umbrurmúrio|r
    .turnin 26946 >>Entregue As Vantagens de um Ladino
    .accept 28723 >>Aceite A Sacerdotisa da Lua
    .target Frahun Shadewhisper
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayanna Perenanda|r
    .turnin 3117 >>Entregue O Selo Cinzelado
    .accept 26947 >>Aceite Treinamento de Mateiro
	.train 56641 >>Treine |T132213:0|t[Tiro Firme] << cata
    .target Ayanna Everstride
step << Hunter
    .goto 1438/1,801.20001,10454.90039
    >>|cRXP_WARN_Use|r |T132213:0|t[Tiro Firme] |cRXP_WARN_no |cRXP_ENEMY_Boneco de Treinamento|r 5 vezes|r
    .complete 26947,1 << cata-- Practice Steady Shot (1)
    .complete 26947,2 << !cata -- Practice Steady Shot (1)
    .mob Training Dummy
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayanna Perenanda|r
    .turnin 26947 >>Entregue Treinamento de Mateiro
    .accept 28723 >>Aceite A Sacerdotisa da Lua
    .target Ayanna Everstride
step << Druid
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15 >>Vá para |cRXP_FRIENDLY_Mardant Carvalhaço|r dentro
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mardant Carvalhaço|r
    .turnin 3120 >>Entregue O Selo Verdejante
    .accept 26948 >>Aceite Rejuvenescer Toque << cata
    .accept 26948 >>Aceite Fogo Lunar << !cata
	.train 774 >>Treine |T136081:0|t[Rejuvenescer] << cata
    .target Mardant Strongoak
step << Druid cata
    .goto 1438/1,769.79999,10436.29980,-1
    .goto 1438/1,788.29999,10417.90039,-1
    >>|cRXP_WARN_Lance|r |T136081:0|t[Rejuvenescer] |cRXP_WARN_em uma|r |cRXP_FRIENDLY_Sentinela Ferida|r
    .complete 26948,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << !cata Druid
    .goto 460,46.003,56.584
    >>|cRXP_WARN_Lance|r |T136096:0|t[Fogo Lunar] |cRXP_WARN_em um|r |cRXP_ENEMY_Boneco de Treinamento|r
    .complete 26948,2 -- Heal Wounded Sentinel
    .target Training Dummy
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mardant Carvalhaço|r
    .turnin 26948 >>Entregue Rejuvenescer Toque << cata
    .turnin 26948 >>Entregue Fogo Lunar << !cata
    .accept 28723 >>Aceite A Sacerdotisa da Lua
    .target Mardant Strongoak
step
    .goto 460,42.49,50.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dantaria Clarargêntea|r
    .turnin 28723 >>Entregue A Sacerdotisa da Lua
    .accept 28724 >>Aceite O Antídoto de Iverron
	.target Dentaria Silverglade
step
    .goto 460,41.87,49.37,5,0
    .goto 460,40.77,47.27,5,0
    .goto 460,39.54,52.27,5,0
    .goto 460,40.18,52.64,5,0
    .goto 460,40.80,53.32,5,0
    .goto 460,42.28,52.68,5,0
    .goto 460,43.60,51.83,5,0
    .goto 460,41.87,49.37
    >>Saque as |cRXP_LOOT_Moonpetal Lilies|r no chão
    .complete 28724,1 -- 7/7 Moonpetal Lily
step
    .goto 460,42.49,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dantaria Clarargêntea|r
    .turnin 28724 >>Entregue O Antídoto de Iverron
    .accept 28725 >>Aceite A Protetora dos Bosques
	.target Dentaria Silverglade
step
	#completewith next
	.goto 58,56.34,27.51,5 >>|cRXP_WARN_Entre na Caverna, depois espere por|cRXP_FRIENDLY_ Tarindrella|r para aparecer|r
step
    .goto 58,56.34,27.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r na localização da seta. Ela aparecerá em alguns segundos
    .turnin 28725 >>Entregue A Protetora dos Bosques
    .accept 28726 >>Aceite A Corrupção das Lenhateia
	.target Tarindrella
step
    .goto 58,41.27,33.22,10,0
    .goto 58,34.81,15.50,15,0
    .waypoint 58,46.33,41.34
    >>Mate os |cRXP_ENEMY_Webwood Aranhas|r
    .complete 28726,1 --12/12 Webwood Spider slain
	.mob Webwood Spider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r ao seu lado
    .turnin 28726 >>Entregue A Corrupção das Lenhateia
    .accept 28727 >>Aceite Toque de Torpeza
	.target Tarindrella
step
    .goto 58,34.56,23.87,0
    .goto 58,42.81,19.50,10,0
    .goto 58,45.02,31.37
    >>Mate |cRXP_ENEMY_Githyiss, a Torpe|r
    .complete 28727,1 --1/1 Githyiss the Vile slain
	.mob Githyiss the Vile
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r ao seu lado
    .turnin 28727,1 >>Entregue Toque de Torpeza
    .accept 28728 >>Aceite O Presságio do que Está por Vir
	.target Tarindrella
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dantaria Clarargêntea|r
    .goto 460,42.50,50.50
    .turnin 28728 >>Entregue O Presságio do que Está por Vir
    .accept 28729 >>Aceite Teldrassil: A Coroa de Azeroth
	.target Dentaria Silverglade
step
    #completewith next
    +|cRXP_WARN_Para ativar atalhos de teclado para itens de missão, siga estas etapas:|r
    *[1] Pressione a |cRXP_WARN_tecla Fuga.|r
    *[2] Selecione |cRXP_WARN_Options.|r
    *[3] Navegue para |cRXP_WARN_Keybindings.|r
    *[4] Dentro de |cRXP_WARN_Keybindings|r, encontre |cRXP_WARN_RestedXP Guides.|r
    *[5] Selecione e configure o |cRXP_WARN_Active Botão.|r
step
    .goto 460,50.13,34.49
    .use 5185 >>|cRXP_WARN_Use o|r |T134776:0|t[Frasco de Cristal] |cRXP_WARN_no Moonwell|r
    .complete 28729,1 --1/1 Filled Crystal Phial
step
    .goto 460,42.49,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dantaria Clarargêntea|r
    .turnin 28729 >>Entregue Teldrassil: A Coroa de Azeroth
    .accept 28730 >>Aceite Águas Preciosas
	.target Dentaria Silverglade
step
    .goto 460,41.85,63.54,15,0
    .goto 460,46.45,53.43,15,0
    .goto 460,44.44,56.47,15,0
    .goto 460,45.20,60.69,15,0
    .goto 460,48.01,58.75,15,0
    .goto 460,48.14,54.36,15,0
    .goto 460,47.16,55.95
    >>Suba pela rampa da Árvore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tenaron Fortagarras|r
    .turnin 28730 >>Entregue Águas Preciosas
    .accept 28731 >>Aceite Teldrassil em Estado de Alerta
	.target Tenaron Stormgrip
step
    .goto 460,54.57,84.78
	>>|cRXP_WARN_Salte da Árvore. Você tem um efeito de queda lenta, portanto não morrerá|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >>Aceite Entrega para Dolanaar
	.target Porthannius
]])

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 6-10 Teldrassil
#next 10-18 Costa Negra
#defaultfor NightElf

<<Alliance

step
    .goto 57,59.56,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .accept 488 >>Aceite O Comando de Zenn
	.target Zenn Foulhoof
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saqueie a |cRXP_LOOT_Seda de Aranha Lenhateia|r
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saqueie-os para obter suas |cRXP_LOOT_Nightsaber Presas|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r. Saqueie-as para obter suas |cRXP_LOOT_Strigid Owl Peninha|r
    >>|cRXP_WARN_Você terá mais oportunidades de completar isto mais tarde|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .goto 57,55.56,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r
    .accept 2438 >>Aceite O Apanhador de Sonhos de Esmeralda
	.target Tallonkai Swiftroot
step << !NightElf
    #completewith next
    .goto 57,55.48,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fidélio|r
    .fp Dolanaar >>Aprenda a rota de voo para Dolanaar
	.target Fidelio
step
    .goto 57,55.70,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Athridas Mantursino|r
    .accept 475 >>Aceite Uma Leve Brisa
	.target Athridas Bearmantle
step
    .goto 57,55.37,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r
    .turnin 2159,1 >>Entregue Entrega para Dolanaar
	.target Innkeeper Keldamyr
step
    #completewith next
    .goto 57,55.36,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r
    .home >>Defina sua Pedra de Retorno em Dolanaar
	.target Innkeeper Keldamyr
step
	#completewith next
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iranis Brotossombra|r
    .train 2366 >>Aprenda |T136065:0|t[Herborismo]
	.skipgossip 47420,1,1,1
	.target Iranis Shadebloom
step
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iranis Brotossombra|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
	.skipgossip 47420,2,3,2
	.target Iranis Shadebloom
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
    .trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irriende|r
    .trainer >>Treine suas magias de classe
    .target Irriende
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    .trainer >>Treine suas magias de classe
    .target Laurna Morninglight
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .trainer >>Treine suas magias de classe
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .trainer >>Treine suas magias de classe
    .target Jannok Breezesong
step
    .goto 57,55.82,53.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 28731 >>Entregue Teldrassil em Estado de Alerta
    .accept 929 >>Aceite Teldrassil: A Rejeição dos Aspectos
	.target Corithras Moonrage
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
    .trainer >>Treine suas magias de classe
    .target Kal
step
    #completewith TeldrassilEmeraldDreamcatcher
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saqueie a |cRXP_LOOT_Seda de Aranha Lenhateia|r
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saqueie-os para obter suas |cRXP_LOOT_Nightsaber Presas|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r. Saqueie-as para obter suas |cRXP_LOOT_Strigid Owl Peninha|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .goto 57,61.92,50.69
    .use 5619 >>|cRXP_WARN_Use o|r |T134721:0|t[Frasco de Jade] |cRXP_WARN_no Moonwell|r
    .complete 929,1 --1/1 Filled Jade Phial
step
    .goto 57,64.73,51.70,5,0
    .goto 57,64.90,51.61,5,0
    .goto 57,64.59,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garyol Talvethren|r
    .turnin 475 >>Entregue Uma Leve Brisa
    .accept 476 >>Aceite Corrupção Masca-pinho
	.target Gaerolas Talvethren
step
    #label TeldrassilEmeraldDreamcatcher
    .goto 57,66.10,52.10
    >>Abra |cRXP_PICK_Tailonkai's Objetos de TBC|r. Saqueie o |cRXP_LOOT_Emerald Apanhador de Sonhos|r
    .complete 2438,1 --1/1 Emerald Dreamcatcher
step
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .subzoneskip 186
step
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 929 >>Entregue Teldrassil: A Rejeição dos Aspectos
	.target Corithras Moonrage
step
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Athridas Mantursino|r
    .turnin 476 >>Entregue Corrupção Masca-Pinho
	.target Athridas Bearmantle
step
    .goto 57,55.56,50.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai|r
    .turnin 2438 >>Entregue O Apanhador de Sonhos de Esmeralda
    .accept 2459 >>Aceite Ferócitas, O Comedor de Sonhos
	.target Tallonkai
step
    #xprate >1.59
    #optional
    .maxlevel 10,Teldskip
step
    #loop
    .goto 57,57.48,48.54,50,0
    .goto 57,58.21,49.79,50,0
    .goto 57,58.23,52.16,50,0
    .goto 57,59.97,53.47,50,0
    .goto 57,61.28,51.69,50,0
    .goto 57,60.21,50.03,50,0
    .goto 57,57.48,48.54,50,0
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saqueie a |cRXP_LOOT_Seda de Aranha Lenhateia|r
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saqueie-os para obter suas |cRXP_LOOT_Nightsaber Presas|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r. Saqueie-as para obter suas |cRXP_LOOT_Strigid Owl Peninha|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .isQuestComplete 488
    .goto 57,59.52,49.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 488 >>Entregue O Comando de Zenn
	.target Zenn Foulhoof
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Gnarlpine Mystics|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    .goto 57,67.26,46.83
    >>Mate o |cRXP_ENEMY_Ferocitas o Devorador do Sonho|r. Saque o |cRXP_LOOT_Joia de Tallonkai|r
    .complete 2459,2 --1/1 Tallonkai's Jewel
	.mob Ferocitas the Dream Eater
step
    .goto 57,66.88,46.87,40,0
    .goto 57,65.76,46.40,40,0
    .goto 57,65.75,44.83,40,0
    .goto 57,67.26,46.83
    >>Mate os |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_Fique com saúde baixa quase ao completar. Você morrerá para pular o resto|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    #completewith next
    .goto 57,66.13,45.25,25,0
    .deathskip >>Morra e reviva no Anjo da Cura
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r
    .turnin 2459 >>Entregue Ferócitas, o Comedor de Sonhos
	.target Tallonkai Swiftroot
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    .trainer >>Treine suas magias de classe
    .target Laurna Morninglight
step
    .goto 57,55.72,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    .accept 489 >>Aceite Consiga Redenção!
	.target Syral Bladeleaf
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
    .trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irriende|r
    .trainer >>Treine suas magias de classe
    .target Irriende
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .trainer >>Treine suas magias de classe
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .trainer >>Treine suas magias de classe
    .target Jannok Breezesong
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
    .trainer >>Treine suas magias de classe
    .target Kal
step
#loop
    .goto 57,55.94,55.82,20,0
    .goto 57,55.30,56.98,20,0
    .goto 57,55.32,57.04,20,0
    .goto 57,54.22,53.89,20,0
    .goto 57,56.51,55.80,20,0
    .goto 57,57.18,55.55,20,0
    .goto 57,55.94,55.82,20,0
    .goto 57,55.94,55.82,0
    >>Saque o |cRXP_LOOT_Fel Cones|r no chão
    .complete 489,1 --3/3 Fel Cone
step
    .goto 57,59.51,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 489 >>Entregue Consiga Redenção!
	.target Zenn Foulhoof
step
    .goto Teldrassil,55.77,50.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    .target Syral Bladeleaf
    .accept 13946 >>Aceite Represália da Natureza
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r
    .accept 932 >>Aceite Aversão Pervertida
	.target Tallonkai Swiftroot
step
#completewith melenas
    .goto 57,54.45,45.43,40 >>Vá para o norte em direção à caverna
    .subzoneskip 258--Fel Rock
step
    #label ireroot
    #sticky
    .goto 57,51.82,43.85
    .use 46716 >>|cRXP_WARN_Use o |T134217:0|t[Ireroot Seeds] para matar |cRXP_ENEMY_Tinhoso|r na caverna|r
    .complete 13946,1 --12/12 Fel Rock grellkin killed with Ireroot Seeds
step
#label melenas
    .goto 57,51.82,43.85
    >>Mate o |cRXP_ENEMY_Senhor Málinus|r. Saque a |cRXP_LOOT_Cabeça|r
    .complete 932,1 --Collect Melenas' Head (x1)
    .mob Lord Melenas
step
    #requires ireroot
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Dolanaar
    .cooldown item,6948,>2,1
step
    .goto 57,55.77,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    .target Syral Bladeleaf
    .turnin 13946 >>Entregue Represália da Natureza
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r
    .turnin 932 >>Entregue Aversão Pervertida
	.target Tallonkai Swiftroot
step
    #xprate >1.59
    #optional
    .maxlevel 10,Teldskip
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Athridas Mantursino e a Sentinela Kyra Stelacanto|r
    .accept 483 >>Aceite As Relíquias do Despertar
    .target +Athridas Bearmantle
    .goto 57,55.70,51.99
    .accept 13945 >>Aceite Perigo Residente
    .target +Sentinel Kyra Starsong
    .goto 57,55.656,51.991
step
    #completewith sleepingd
    >>|cRXP_WARN_Abate qualquer tipo de |cRXP_ENEMY_Furbolg|r no seu caminho para|r |cRXP_FRIENDLY_Oben Patafúria|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
step
    #completewith next
    .goto 57,48.61,47.92,100,0
    .goto 57,46.03,47.99,100,0
    .goto 57,45.488,50.760,25 >>Entre no túnel dentro da casa de árvore
    .subzoneskip 262
step
    #label sleepingd
    .goto 57,45.038,53.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Oben Patafúria|r
    .target Oben Rageclaw
    .accept 2541 >>Aceite O Druida Adormecido
step
    #label shamans
    #sticky
    >>Mate os |cRXP_ENEMY_Gnarlpine Shamans|r. Saqueie-os para seus |cRXP_LOOT_Patuá Vodu de Xamã|r
    .complete 2541,1 --|1/1 Shaman Voodoo Charm
    .mob Gnarlpine Shaman
step
    #sticky
    #requires shamans
    #label furbolgs
    >>Mate os |cRXP_ENEMY_Furbolgs|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
--Gossip Ids:
--exit 37751
--raven claw 37753
--black feather quill 37754
--Sapphire of the sky 37755
--Rune of nesting 37756
--TODO: check on beta if gossip id match
step
    .goto 61,54.999,75.209
    >>|cRXP_WARN_Seguir o caminho mais profundo na Toca de Enterro Ban'ethil. Corra pela ponte no andar superior|r
    >>Abra o |cRXP_PICK_Baú de Aninhamento|r. Saqueie-o para a |cRXP_LOOT_Runa de Aninhamento|r
    >>|cRXP_WARN_Você também pode falar com a |cRXP_FRIENDLY_Sentinela Caçadora|r companheira e ela mostrará o caminho|r
    .complete 483,4 --|1/1 Rune of Nesting
    .target Sentinel Huntress
    .skipgossipid 37756
step
    .goto 61,51.956,86.565
    >>|cRXP_WARN_Desça para o nível inferior|r
    >>Abra o |cRXP_PICK_Baú da Pena Preta|r. Saque-o para obter o |cRXP_LOOT_Black Feather Quill|r
    >>|cRXP_WARN_Você também pode falar com a |cRXP_FRIENDLY_Sentinela Caçadora|r companheira e ela mostrará o caminho|r
    .complete 483,2 --|1/1 Black Feather Quill
step
    .goto 61,49.887,36.749
    >>|cRXP_WARN_Vá para a grande sala central|r
    >>Abra o |cRXP_PICK_Baú do Céu|r. Saque-o para obter o |cRXP_LOOT_Sapphire of Céu|r
    >>|cRXP_WARN_Você também pode falar com a |cRXP_FRIENDLY_Sentinela Caçadora|r companheira e ela mostrará o caminho|r
    .complete 483,3 --|1/1 Sapphire of Sky
step
    .goto 61,64.380,19.281
    >>|cRXP_WARN_Suba para a plataforma central, corra pela ponte a leste|r
    >>Abra o |cRXP_PICK_Baú do Corvo Garra|r. Saque-o para obter o |cRXP_LOOT_Raven Garra Talisman|r
    >>|cRXP_WARN_Você também pode falar com a |cRXP_FRIENDLY_Sentinela Caçadora|r companheira e ela mostrará o caminho|r
    .complete 483,1 --|1/1 Raven Claw Talisman
step
    .goto 57,45.053,53.464
    >>Vá para a saída do túnel
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Oben Patafúria|r
    .target Oben Rageclaw
    .turnin 2541 >>Entregue O Druida Adormecido
    .accept 2561 >>Aceite Druida da Garra
    .skipgossipid 37751
step
    .goto 57,45.581,52.704
    >>|cRXP_WARN_Corra pela ponte do outro lado e espere até que a porta trancada se abra|r
    >>Abate |cRXP_ENEMY_Patafúria|r
    .use 8149 >>|cRXP_WARN_Use o|r |T132502:0|t[Vodu Da Sorte] |cRXP_WARN_no cadáver de |cRXP_ENEMY_Patafúria|r|r
    .complete 2561,1 --|
    .mob Rageclaw
step
    .goto 57,45.053,53.464
    >>Vá para a saída do túnel
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Oben Patafúria|r
    .target Oben Rageclaw
    .turnin 2561 >>Entregue Druida da Garra
step
    .isQuestComplete 483
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Dolanaar
    .cooldown item,6948,>2,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Athridas Mantursino e a Sentinela Kyra Stelacanto|r
    .turnin 483 >>Entregue As Relíquias do Despertar
    .accept 486 >>Aceite Ursal, o Espancador
    .target +Athridas Bearmantle
    .goto 57,55.70,51.99
    .turnin 13945 >>Entregue Perigo Residente
    .target +Sentinel Kyra Starsong
    .goto 57,55.656,51.991
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
    .trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irriende|r
    .trainer >>Treine suas magias de classe
    .target Irriende
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    .trainer >>Treine suas magias de classe
    .target Laurna Morninglight
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .trainer >>Treine suas magias de classe
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .trainer >>Treine suas magias de classe
    .target Jannok Breezesong
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
    .trainer >>Treine suas magias de classe
    .target Kal
step
    .goto 57,49.351,44.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    .target Moon Priestess Amara
    .accept 487 >>Aceite A Estrada para Darnassus
step
    #sticky
    #label ambushers
    .goto 57,50.578,36.548,0,0
    >>Mate os |cRXP_ENEMY_Gnarlpine Ambushers|r conforme você viaja pelo caminho da montanha
    .complete 487,1 --|8/8 Gnarlpine Ambusher slain
    .mob Gnarlpine Ambusher
step
    .goto 57,51.693,39.805
    >>|cRXP_WARN_Siga o caminho subindo a rampa até a caverna no topo da montanha|r
    >>Mate o |cRXP_ENEMY_Ursal, o Espancador|r
    .complete 486,1 --|1/1 Ursal the Mauler slain
    .mob Ursal the Mauler
step
    .goto 57,49.359,44.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    .target Moon Priestess Amara
    .turnin 487 >>Entregue A Estrada para Darnassus
step
    #completewith next
    #requires ambushers
    .deathskip >>Morra e renasça em Dolanaar
step
    #requires ambushers
    .goto 57,55.715,51.981
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Athridas Mantursino|r
    .target Athridas Bearmantle
    .turnin 486 >>Entregue a Ursal, o Espancador
step
    #optional
    .maxlevel 10,Teldskip
step
    .goto 57,55.759,50.467
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    .target Syral Bladeleaf
    .accept 997 >>Aceite A Terra de Denalan
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 997 >>Entregue A Terra de Denalan
    .accept 918 >>Aceite Sementes de Muscoide
    .accept 919 >>Aceite Brotos de Muscoide
step
    #sticky
    #label fruit1
    .goto 57,57.689,63.063
	>>Clique no |cRXP_PICK_Strange Fruited Plantar|r
    .accept 930 >>Aceite A Fruta Brilhante
step
    #loop
    .goto 57,57.689,63.063,55,0
    .goto 57,57.249,56.903,55,0
    .goto 57,60.263,58.219,55,0
    .goto 57,57.249,56.903,0
    .goto 57,60.263,58.219,0
    .goto 57,57.689,63.063,0
    >>Mate os |cRXP_ENEMY_Timberlings|r. Saqueie-os para obter as |cRXP_LOOT_Sementes|r
    >>Pegue os |cRXP_LOOT_Brotos de muscoide|r no chão
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    #requires fruit1
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 918 >>Entregue Sementes de Muscoide
    .turnin 919 >>Entregue Brotos de Muscoide
    .accept 922 >>Aceite Rellian Spiraverde
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 930 >>Entregue A Fruta Brilhante
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyoma|r
    .accept 6344 >>Aceite Lembranças do Lar
	.target Nyoma
step
    #optional
    .maxlevel 10,Teldskip
step
    .goto 57,55.871,53.901
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .target Corithras Moonrage
    .accept 7383 >>Aceite Teldrassil: O Dever dos Kaldorei
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fidelio.|r
    .turnin 6344 >>Entregue Lembranças do Lar
    .accept 6341 >>Aceite Para Darnassus
	.target Fidelio
--TODO: should be level 10 here, skip the rest of teldrassil?
step
    .goto 57,43.956,44.178
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .target Rellian Greenspyre
    .turnin 922 >>Entregue Rellian Spiraverde
    .accept 923 >>Aceite Tumores Musguentos
step << skip
    .goto 57,39.482,29.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .target Sentinel Arynia Cloudsbreak
    .accept 937 >>Aceite A Clareira Encantada
step
    .goto 57,39.199,29.871,5,0
    .goto 57,39.174,29.898
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .target Priestess A'moora
    .accept 2518 >>Aceite Lágrima da Lua
step
    #loop
    .goto 57,45.297,23.695,40,0
    .goto 57,44.446,30.394,40,0
    .goto 57,45.297,23.695,0
    .goto 57,44.446,30.394,0
    >>Mate os |cRXP_ENEMY_Timberling Tramplers|r, os |cRXP_ENEMY_Timberling Charco Beasts|r e os |cRXP_ENEMY_Elder Timberlings|r. Saque-os pelos |cRXP_LOOT_Tumores|r
    .complete 923,1 --|5/5 Mossy Tumor
    .mob Timberling Mire Beast
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
step
    >>Mate a |cRXP_ENEMY_Lady Sathrah|r. Saque-a pelas |cRXP_LOOT_Fiandeiras Prateadas|r
    .goto 57,40.754,22.233
    .complete 2518,1 --|1/1 Silvery Spinnerets
    .mob Lady Sathrah
step
    #label frond2
    #sticky
    .goto 57,37.131,25.434
    >>Clique em |cRXP_PICK_Strange Fronded Plantar|r
    .accept 931 >>Aceite A Fronde Cintilante
step
    #loop
    >>Mate as |cRXP_ENEMY_Bloodfeather Harpies|r. Saque-as pelos |cRXP_LOOT_Cintos|r
    .goto 57,36.775,24.398,30,0
    .goto 57,35.843,26.095,30,0
    .goto 57,35.063,28.517,30,0
    .goto 57,35.793,26.151,30,0
    .goto 57,35.793,26.151,0
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
#requires frond2
    .goto 57,34.487,27.811
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruma|r
    >>|cRXP_WARN_Isso iniciará uma missão de escolta|r
    .target Mist
    .accept 938 >>Aceite Bruma
step
    .goto 57,39.199,29.871,5,0
    .goto 57,39.174,29.898
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .target Priestess A'moora
    .turnin 2518 >>Entregue Lágrima da Lua
step
    .goto 57,39.448,29.823
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .target Sentinel Arynia Cloudsbreak
    .turnin 937 >>Entregue A Clareira Encantada << skip
    .turnin -938 >>Entregue Bruma
step
    .goto 57,40.471,29.942
    .use 18152 >>|cRXP_WARN_Use a|r |T134798:0|t[Frasco de Ametista] |cRXP_WARN_no Oráculo Glade Poço de Lua|r
    .complete 7383,1 --|1/1 Filled Amethyst Phial
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r e |cRXP_FRIENDLY_Denalan|r
    .turnin 923 >>Entregue Tumores Musguentos
    .target +Rellian Greenspyre
    .goto 57,43.960,44.161
    .turnin 931 >>Entregue A Fronde Cintilante
    .accept 2499 >>Aceite Carrancarvalho
    .target +Denalan
    .goto 57,43.936,44.196
step
    .goto 57,47.403,35.829,40,0
    .goto 57,47.39,34.47
    >>Mate o |cRXP_ENEMY_Carrancarvalho|r. Saque-o pelo |cRXP_LOOT_Gargantuan Tumor|r
    >>|cRXP_ENEMY_Carrancarvalho|r |cRXP_WARN_patrulha ligeiramente|r
    .complete 2499,1 --|1/1 Gargantuan Tumor
    .mob Oakenscowl
step
    .goto 57,43.936,44.196
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 2499 >>Entregue Carrancarvalho
step
    .goto 57,40.999,45.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .target Corithras Moonrage
    .turnin 7383 >>Entregue Teldrassil: O Dever dos Kaldorei
    .accept 933 >>Aceite Teldrassil: A Aurora Iminente << skip

--skipping following chain. very long rp / bad xphr
step << skip
    .goto 57,43.939,58.534
    .use 5621 >>|cRXP_WARN_Use a|r |T134765:0|t[Frasco de Turmalina] |cRXP_WARN_nos Poços de Arlithrien Poço de Lua|r
	.complete 933,1
step << skip
    .goto 57,42.525,58.213
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    .target Tarindrella
    .turnin 933 >>Entregue Teldrassil: A Aurora Iminente
    .accept 14005 >>Aceite A Vingança de Eluna
step << skip
--TODO: Big RP quest, might be a huge waste of time, test on beta
    .goto 57,40.909,69.647
    .complete 14005,1 --|1/1 Bough of Corruption slain
step << skip
    .goto 57,42.507,58.184
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    .target Tarindrella
    .turnin 14005 >>Entregue A Vingança de Eluna
    .accept 935 >>Aceite As Águas de Teldrassil
step << skip
    .goto 57,41.007,45.528
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .target Corithras Moonrage
    .turnin 935 >>Entregue As Águas de Teldrassil
    .accept 14039 >>Aceite Terra dos Kaldorei
step
    .goto 89,35.993,50.342
    .zone 89 >>Viagem para Darnassus
    .isOnQuest 6341
step
    #optional
    #label Teldskip
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyoma|r
    .accept 6344 >>Aceite Lembranças do Lar
	.target Nyoma
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fidélio|r
    .turnin 6344 >>Entregue Lembranças do Lar
    .accept 6341 >>Aceite Para Darnassus
	.target Fidelio
step
    #completewith end
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fidélio|r
    .fly Darnassus >>Voe para Darnassus
	.target Fidelio
    .zoneskip 89
step << Warrior
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ariyell Skyshadow
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Ariyell Skyshadow
    .xp >11,1
    .xp <10,1
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre um|r |T132402:0|t[Machadinha] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ariyell Skyshadow
    .xp >12,1
    .xp <11,1
step << Hunter
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ariyell Skyshadow
step << Warrior
    #optional
    #completewith end
    +|cRXP_WARN_Equipe o|r |T135350:0|t[Espadão]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje] |cRXP_WARN_na mão principal|r
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Equipe a|r |T132402:0|t[Machadinha] |cRXP_WARN_em sua mão principal|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    .goto 89,43.913,76.149
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Cordressa Cravoarco|r subindo as escadas
    .target Sentinel Cordressa Briarbow
    .accept 26383 >>Aceite As Ondas da Mudança
step
    .isQuestComplete 14039
    .goto 89,43.062,77.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tyrande Murmuréolo|r
    .target Tyrande Whisperwind
    .turnin 14039 >>Entregue Terra dos Kaldorei
    .isQuestComplete 14039
step
    .isOnQuest 6341
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Aquinne|r
    .target Sister Aquinne
    .turnin 6341 >>Entregue Para Darnassus
    .accept 6342 >>Aceite Um Presente Inesperado
step
    .isQuestTurnedIn 6341
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Aquinne|r
    .target Sister Aquinne
    .accept 6342 >>Aceite Um Presente Inesperado
step
    .isOnQuest 6342
    .goto 89,36.641,48.036
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leora|r
    .target Leora
    .turnin 6342 >>Entregue Um Presente Inesperado
step
    .goto 89,35.993,50.342
    .subzone 702 >>Entre no portal roxo ao lado do mestre de voo
    .zoneskip Darkshore
step
    #label end
    .goto 57,55.406,88.415
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Lor'danel >>Voe para Lor'danel
    .zoneskip Darkshore
    .target Vesprystus
]])
