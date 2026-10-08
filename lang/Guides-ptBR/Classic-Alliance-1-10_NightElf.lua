if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
<< Alliance
#name 1-6 Shadowglen
#displayname 1-7 Shadowglen << sod
#version 1
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +Você selecionou um guia destinado a Noite Elves. Você deve escolher a mesma zona inicial em que começa
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .accept 456 >>Aceite O Equilíbrio da Natureza
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Mate os |cRXP_ENEMY_Nightsabers Jovens|r e os |cRXP_ENEMY_Thistle Boars|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step
    >>Saque os inimigos que você mata, certifique-se de que você tem pelo menos 10 cobre de lixo do vendedor, você precisará disso para treinar |T132333:0|t[Brado de Batalha]<< Warrior
    .xp 2 >>Treine até o nível 2
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r e |cRXP_FRIENDLY_Melithar Guenelmo|r
    #label GoodProtector
    .accept 4495 >>Aceite A Good Amigo
    .target +Dirania Silvershine
    .goto Teldrassil,60.899,41.961
    .accept 458 >>Aceite The Protector of the Woods
	.goto Teldrassil,59.924,42.474
    .target +Melithar Staghelm
step
    >>Mate os |cRXP_ENEMY_Nightsabers Jovens|r e os |cRXP_ENEMY_Thistle Boars|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 456,1 >>Entregue O Equilíbrio da Natureza << Hunter
    .target Conservator Ilthalaine
    .accept 457 >>Aceite O Equilíbrio da Natureza
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.8,34.1
    >>Mate os |cRXP_ENEMY_Mangy Nightsabers|r e os |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << Hunter
    #season 0,1
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >>Farme até estar a 610xp de distância do nível 4 (790/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >>Entregue Um Bom Amigo
    .target Iverron
    .accept 3519 >>Aceite A Amigo in Need
step << Hunter
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Shadowglen
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >>Entregue A Protetora dos Bosques
    .target Tarindrella
    .accept 459 >>Aceite The Protector of the Woods
step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 457 >>Entregue O Equilíbrio da Natureza
    .target Conservator Ilthalaine
	.accept 3117 >>Aceite The Chiseled Seal
step << Druid
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delailah|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step
#xprate <1.99 << Hunter/Warrior
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 456,1 >>Entregue O Equilíbrio da Natureza << Hunter
    .turnin 456 >>Entregue O Equilíbrio da Natureza << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >>Aceite O Equilíbrio da Natureza
	.accept 3116 >>Aceite The Simple Seal << Warrior
	.accept 3117 >>Aceite The Chiseled Seal << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >>Aceite The Sacred Seal << Priest
	.accept 3120 >>Aceite The Verdant Seal << Druid
step << Warrior
    #season 0
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r
    .target Keina
step << Warrior
    #season 0
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >>Entregue The Simple Seal
    .trainer >>Treine suas magias de classe
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,59.8,34.1
    >>Mate os |cRXP_ENEMY_Mangy Nightsabers|r e os |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >>Entregue Um Bom Amigo
    .target Iverron
    .accept 3519 >>Aceite A Amigo in Need
step << !Hunter !Warrior
    #season 2
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Shadowglen
step << !Hunter
    #season 0
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Shadowglen
step << !Hunter
    #season 0 << Druid/Warrior
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >>Entregue A Protetora dos Bosques
    .target Tarindrella
    .accept 459 >>Aceite The Protector of the Woods
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 457 >>Entregue O Equilíbrio da Natureza
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r
    .turnin 3519 >>Entregue A Amigo in Need
    .target Dirania Silvershine
    .accept 3521 >>Aceite O Antídoto de Iverron
step << Hunter
    #season 0
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Make sure that you have 1 silver leftover after leaving the vendor to be able to afford|r |T132204:0|t[|cRXP_FRIENDLY_Picada de Serpente|r]
	.vendor >>|cRXP_BUY_Compre 2 pilhas de|r |T132382:0|t[Rough Flechas]
    .target Keina
step << Druid
    #season 0,1
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delailah|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Compre 20|r |T132794:0|t[Água Refrescante da Fonte]
    .collect 159,20 --Collect Refreshing Spring Water (x20)
    .target Dellylah
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Gilshalan Andavento|r
    .accept 916 >>Aceite Webwood Corruption
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Suba na Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayanna Perenanda|r
    .turnin 3117 >>Entregue The Chiseled Seal
    .train 1978 >>Aprenda Picada de Serpente
    .target Ayanna Everstride
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>Saque as |cRXP_LOOT_Moonpetal Lilies|r no chão
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step << Hunter
#optional
#season 2
#completewith next
    >>Abate as |cRXP_ENEMY_Webwood Aranhas|r. Saqueie-as para obter seus |cRXP_LOOT_Ichor|r e |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    #season 0 << Warrior
    #label IchorVenomSac
    .goto Teldrassil,56.8,31.7
    >>Abate as |cRXP_ENEMY_Webwood Aranhas|r. Saqueie-as para obter seus |cRXP_LOOT_Ichor|r e |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step << skip --logout skip Warrior
	#hardcore
	#completewith next
    #season 2
	+Faça o pulo de logout na saliência atrás dos ovos. Mova seu personagem até parecer estar flutuando, depois faça logout e volte.
	>>Se você cair, apenas corra para fora da caverna normalmente até o ponto de entrega da missão
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLIQUE AQUI para referência
step << skip --logout skip Hunter
	#hardcore
    #season 2
	#completewith next
	+Faça logout na saliência atrás dos ovos. Mova seu personagem até parecer que ele está flutuando, depois saia do jogo e entre novamente.
	>>Se você cair, corra para sair da caverna e vá entregar a missão normalmente.
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLIQUE AQUI para referência
step
    .goto Teldrassil,55.0,43.7
    >>Abate os |cRXP_ENEMY_Capeta|r e os |cRXP_ENEMY_Tinhoso|r. Saque-os para obter seus |cRXP_LOOT_Mushrooms|r e |cRXP_LOOT_Limo Vil|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step << Warrior
    #season 2
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Gilshalan Andavento|r
    >>TIP: |cRXP_WARN_Take the Tunic as a reward from this quest and equip it. You will use it to engrave a rune on later|r << sod Hunter/sod Rogue/sod Druid/sod Warrior
    >>TIP: |cRXP_WARN_Take the Robes as a reward from this quest and equip it. You will use it to engrave a rune on later|r << sod Priest
    .turnin 917 >>Entregue Webwood Ovo
    .target Gilshalan Windwalker
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    >>TIP: |cRXP_WARN_Take the leggings as the reward and keep them. You will use them to engrave a rune on later on|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >>Entregue A Protetora dos Bosques
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r
    .turnin 3521 >>Entregue O Antídoto de Iverron
    .target Dirania Silvershine
    .accept 3522 >>Aceite O Antídoto de Iverron
step << !Priest !Warrior
    #season 0 << Hunter
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r << !Hunter
	.vendor >>|cRXP_BUY_Compre 3 ou 4 pilhas de|r |T132382:0|t[Rough Flechas] << Hunter
    .target Keina
step << Warrior
    #season 0
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alyissia|r
	.trainer >>Treine suas magias de classe
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.456,41.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Janna Lunaclara|r escadas acima
	.vendor >> |cRXP_WARN_Vendor trash|r
    .target Janna Brightmoon
step << Priest
    #season 0,1,2
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda|r escadas acima
	.turnin 3119 >>Entregue O Selo Sagrado << !sod
    .turnin 77574 >>Entregue Meditação de Elune << sod
	.trainer >>Treine suas magias de classe
step
    #season 0 << Warrior
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Gilshalan Andavento|r
    .turnin 916 >>Entregue Webwood Corruption
    .target Gilshalan Windwalker
    .accept 917 >>Aceite Webwood Ovo
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Adaga de Pau-cardo]
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step << Druid
    #season 0,1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Suba na Árvore Aldrassil
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mardant Carvalhaço|r
	.turnin 3120 >>Entregue O Selo Verdejante
	.train 8921 >>Treine |T136096:0|t[Fogo Lunar]
step
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    >>TIP: |cRXP_WARN_Take the pants as reward from him. You will use them to engrave a rune on later|r << Priest sod
    .turnin 3522 >>Entregue O Antídoto de Iverron
step
    #season 0 << Warrior
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >>Entre na Caverna Shadowthread
step
    .goto Teldrassil,57.0,26.4
    #season 0 << Warrior
    >>Saque a |cRXP_LOOT_Webwood Ovo|r no chão no fundo da caverna
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
    #season 0 << Warrior
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << skip --logout skip
	#hardcore
	#completewith next
    #season 0 << Warrior
	+Faça o pulo de logout na saliência atrás dos ovos. Mova seu personagem até parecer estar flutuando, depois faça logout e volte.
	>>Se você cair, apenas corra para fora da caverna normalmente até o ponto de entrega da missão
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLIQUE AQUI para referência
step
#xprate <1.99
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Gilshalan Andavento|r
    .turnin 917 >>Entregue Webwood Ovo
    .target Gilshalan Windwalker
    .accept 920 >>Aceite Tenaron's Summons
step
#xprate <1.99
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Suba na Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tenaron Fortagarras|r
    .turnin 920 >>Entregue Tenaron's Summons
    .target Tenaron Stormgrip
    .accept 921 >>Aceite Coroa da Terra
step
#xprate <1.99
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >>|cRXP_WARN_Use o|r |T134776:0|t[Frasco de Cristal] |cRXP_WARN_no Moonwell|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.8,34.1
    >>Mate os |cRXP_ENEMY_Mangy Nightsabers|r e os |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
#xprate <1.99
    #requires vial1
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << Hunter
#xprate <1.99
    #requires vial1
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 457,2 >>Entregue O Equilíbrio da Natureza
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >>Aceite Em Simpatia de Elune
step
#xprate <1.99
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Suba na Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tenaron Fortagarras|r
    .turnin 921 >>Entregue A Coroa da Terra
    .target Tenaron Stormgrip
    .accept 928 >>Aceite Coroa da Terra
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >>Aceite Entrega para Dolanaar
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Costa Negra

step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .accept 488 >>Aceite O Comando de Zenn
step
    #label HCHunterStart --hidden step for #include
step
    #sticky
    #completewith DenlansEarth
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saque-os para obter |cRXP_LOOT_Presas|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r. Saque-os para obter |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saque-os para obter |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_Tenha cuidado, pois os|r |cRXP_ENEMY_Nightsabers|r |cRXP_WARN_e os|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_se movem muito rápido!|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_também provocarão agressão social de outros|r |cRXP_ENEMY_Owls|r |cRXP_WARN_se você passar por eles enquanto está em combate com um|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlansEarth
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saque-os por suas |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa desses para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label DenlansEarth
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    >>|cRXP_WARN_Certifique-se de que você tem 1 espaço vazio na mochila antes de aceitar esta missão|r
    .accept 997 >>Aceite A Terra de Denalan
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Athridas Mantursino|r
    .accept 475 >>Aceite Uma Leve Brisa
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    .turnin 5622 >>Entregue Simpatia de Elune
    .target Laurna Morninglight
    .accept 5621 >>Aceite Garments of the Lua
	.trainer >>Treine suas magias de classe
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áldia|r acima da escada
    .vendor >>|cRXP_BUY_Compre e equipe uma|r |T135426:0|t[Pequeno Arremessando Faca]
    .target Aldia
step
#xprate <1.99 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .accept 932 >>Aceite Aversão Pervertida
    .accept 2438 >>Aceite O Apanhador de Sonhos de Esmeralda
step << Hunter/Warrior/Druid
#xprate >1.99
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .accept 2438 >>Aceite O Apanhador de Sonhos de Esmeralda
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    >>|cRXP_BUY_Compre e equipe um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    >>|cRXP_BUY_Compre|r |T132382:0|t[Rough Flechas] |cRXP_BUY_até a Aljava estar cheia|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    .vendor >>|cRXP_BUY_Compre|r |T132382:0|t[Rough Flechas] |cRXP_BUY_até a Aljava estar cheia|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio] |cRXP_BUY_se você puder pagar (5s 36c), se não pule este passo|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >>Treine suas magias de classe
    .target Jannok Breezesong
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete] |cRXP_BUY_se você puder pagar (4s 1c), se não pule este passo|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala] |cRXP_BUY_se você puder pagar (5s 4c), se não pule este passo|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r
    .turnin 2159,2 >>Entregue Entrega em Dolanaar << Hunter
    .turnin 2159 >>Entregue Entrega em Dolanaar << !Hunter
    .vendor >>|cRXP_BUY_Compre 10 |T132815:0|t|cRXP_LOOT_Leite Gelado|r ou o máximo que puder pagar << Priest
    .home >>Defina sua Pedra de Retorno em Dolanaar
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
	.train 3044 >>Aprenda Tiro Arcano << era
    .train 5116 >>Treine Tiro de Concussão << sod
    .target Dazalar
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
	.trainer >>Treine suas magias de classe
    .target Kal
step
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 928 >>Entregue A Coroa da Terra
    .target Corithras Moonrage
    .accept 929 >>Aceite Coroa da Terra
step
    #sticky
    #completewith DenlanStart
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saque-os para obter |cRXP_LOOT_Presas|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r. Saque-os para obter |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saque-os para obter |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_Tenha cuidado, pois os|r |cRXP_ENEMY_Nightsabers|r |cRXP_WARN_e os|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_se movem muito rápido!|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_também provocarão agressão social de outros|r |cRXP_ENEMY_Owls|r |cRXP_WARN_se você passar por eles enquanto está em combate com um|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlanStart
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saque-os por suas |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa desses para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step << Druid
    #ah
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malorne Folhâmina|r
    >>|T136065:0|t[Herborismo] |cRXP_WARN_é necessário para coletar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_para uma importante missão de classe em breve. Você pode desaprender depois|r
    >>|cRXP_WARN_Se você preferir comprar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_da Casa de Leilão mais tarde, pule esta etapa|r
    .train 2366 >>Treine |T136065:0|t[Herborismo]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malorne Folhâmina|r
    >>|T136065:0|t[Herborismo] |cRXP_WARN_É necessário para coletar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_Para uma missão de classe importante em breve. Você pode esquecê-lo depois|r
    .train 2366 >>Treine |T136065:0|t[Herborismo]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    #season 0
    .skill herbalism,15 >>|cRXP_WARN_Nível seu|r |T136065:0|t[Herborismo] |cRXP_WARN_para 15 para conseguir coletar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_para uma missão de classe importante em breve. Você pode desaprender depois|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    #season 0
    >>Colete|cRXP_WARN_ 5 |T134187:0|t[Earthroot] via |T136065:0|t[Herborismo] e raramente |cRXP_PICK_Battered Chests|r para uma missão de classe futura|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Selecione |cRXP_FRIENDLY_Sentinela Shaya|r
    >>|cRXP_WARN_Lance|r |T135929:0|t[Cura Inferior (Rank 2)] |cRXP_WARN_e|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_em|r |cRXP_FRIENDLY_Sentinela Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    #label DenlanStart
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >>Entregue A Terra de Denalan
    .target Denalan
    .accept 918 >>Aceite Sementes de Muscoide
    .accept 919 >>Aceite Brotos de Muscoide
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>Mate os |cRXP_ENEMY_Timberlings|r. Saque-os para obter |cRXP_LOOT_Sementes|r
    >>Pegue os |cRXP_LOOT_Brotos de muscoide|r no chão << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >>Entregue Sementes de Muscoide
    .target Denalan
    .accept 922 >>Aceite Rellian Spiraverde
    .turnin 919 >>Entregue Brotos de Muscoide
step
    #sticky
    #completewith Starbreeze
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saque-os para obter |cRXP_LOOT_Presas|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r. Saque-os para obter |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saque-os para obter |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_Tenha cuidado pois os|r |cRXP_ENEMY_Nightsabers|r |cRXP_WARN_e|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_se movem muito rápido!|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_também atacarão socialmente outros|r |cRXP_ENEMY_Owls|r |cRXP_WARN_se você passar correndo por eles enquanto está em combate com um|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurkerr
step
    #sticky
	#completewith Starbreeze
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saque-os por suas |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa desses para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label Starbreeze
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >>Vá para Starbreeze Village
step
    .goto Teldrassil,68.02,59.66
    >>Abra o |cRXP_PICK_Tallonkai's Objetos de TBC|r. Saqueie-o para obter o |cRXP_LOOT_Emerald Apanhador de Sonhos|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garyol Talvethren|r acima das escadas
    .turnin 475 >>Entregue Uma Leve Brisa
    .target Gaerolas Talvethren
    .accept 476 >>Aceite Corrupção Masca-Pinho
step
    #xprate <1.99
    .goto Teldrassil,63.38,58.10
    >>|cRXP_WARN_Use the|r |T134721:0|t[Frasco de Jade] |cRXP_WARN_at the Starbreeze Village Moonwell|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    #sticky
	#completewith SeekRedemption
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saque-os por suas |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa desses para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saque-os para obter |cRXP_LOOT_Presas|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r. Saque-os para obter |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saque-os para obter |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_Guarde qualquer|r |T132832:0|t[Pequeno Eggs] |cRXP_WARN_e|r |T134321:0|t[Aranhinha Pernas] |cRXP_WARN_para usar ao treinar|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 488 >>Entregue O Comando de Zenn
step
    #label HCHunterEnd --hidden step for #include
step
    #xprate < 1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3520 >>Triturar para o nível 7 +3520 XP
step
    #xprate >1.49
    .xp 7+2350 >>Triturar para o nível 7 +2350 XP
step
    #label SeekRedemption
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    .accept 489 >>Aceite Consiga Redenção
    .target Syral Bladeleaf
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Athridas Mantursino|r
    .turnin 476 >>Entregue Corrupção Masca-Pinho
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    .turnin 5621 >>Entregue Vestes da Lua
	.trainer >>Treine suas magias de classe
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 2438 >>Entregue O Apanhador de Sonhos de Esmeralda
    .target Tallonkai Swiftroot
    .accept 2459 >>Aceite Ferócitas, o Comedor de Sonhos
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    >>|cRXP_BUY_Compre e equipe um|r |T135499:0|t[Arco Recurvo de Pau-de-Chifre] |cRXP_BUY_se você puder se dar ao luxo (2s 85c), caso contrário pule este passo|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
	.vendor >>|cRXP_BUY_Compre até 800|r |T132382:0|t[Rough Flechas]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    #season 0
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    #season 0
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
	.trainer >>Treine suas magias de classe
    .target Dazalar
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >>Treine suas magias de classe
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio] |cRXP_BUY_se você puder pagar (5s 36c), se não pule este passo|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
    step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete] |cRXP_BUY_se você puder pagar (4s 1c), se não pule este passo|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala] |cRXP_BUY_se você puder pagar (5s 4c), se não pule este passo|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Druid
#xprate 1.49-1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 929 >>Entregue A Coroa da Terra
    .target Corithras Moonrage
step << Druid
#xprate <1.50
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 929 >>Entregue A Coroa da Terra
    .target Corithras Moonrage
    .accept 933 >>Aceite Coroa da Terra
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
	.trainer >>Treine suas magias de classe
    .target Kal
step
    #sticky
	#completewith jewel
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saque-os por suas |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa desses para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Ao lado de uma árvore pequena
    .goto 1438/1,822.200,9948.500,6 >>No pequeno monte
    .goto 1438/1,809.800,9926.400,6 >>Ao lado da árvore gigante
    >>Saque os 3 |cRXP_LOOT_Fel Cones|r dos locais marcados no seu mapa.
    >>|cRXP_WARN_Pule este passo se algum deles não estiver lá e você for incapaz de completar o objetivo|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    #label SoDSpiderLegs
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 489 >>Entregue Consiga Redenção
    .itemcount 3418,3
    .isOnQuest 489
step
	#completewith jewel
    >>Saque o |cRXP_LOOT_Fel Cones|r no chão
    >>|cRXP_WARN_Eles geralmente são localizados ao lado de troncos de árvore|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Gnarlpine Místicos|r
    >>|cRXP_WARN_Se não houver muitos |cRXP_ENEMY_Gnarlpine Místicos|r você pode ter que matar os |cRXP_ENEMY_Gnarlpine Guerreiros|r para fazê-los aparecer|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto Teldrassil,69.37,53.41
	>>Abate |cRXP_ENEMY_Ferocitas, o Comedor de Sonhos|r. Saqueie o |T133288:0|t[|cRXP_LOOT_Colar de Masca-pinho|r]. |cRXP_WARN_Tenha cuidado pois ele pode|r |T132152:0|t[Surra] |cRXP_WARN_acertá-lo até três vezes de uma vez|r
    .use 8049 >>|cRXP_WARN_Use o |T133288:0|t[|cRXP_LOOT_Colar de Masca-pinho|r] para saquear|r |cRXP_LOOT_Joia de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Abate os |cRXP_ENEMY_Gnarlpine Místicos|r
    >>|cRXP_WARN_Se não houver muitos |cRXP_ENEMY_Gnarlpine Místicos|r você pode ter que matar os |cRXP_ENEMY_Gnarlpine Guerreiros|r para fazê-los aparecer|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
    .isQuestTurnedIn 489
step
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Brannol Lunáguia|r
    .vendor >>|cRXP_BUY_Comerciante e repare se necessário|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>Saque o |cRXP_LOOT_Fel Cones|r no chão
    >>|cRXP_WARN_Eles geralmente são localizados ao lado de troncos de árvore|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 489 >>Entregue Consiga Redenção
    .isOnQuest 489
step
    #sticky
	#completewith next
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saque-os por suas |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa desses para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Vá para Vileza Pedra
step
    .goto Teldrassil,51.2,50.6
    >>Abate |cRXP_ENEMY_Senhor Málinus|r. Saque-o para obter sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_ENEMY_Senhor Málinus|r pode ser encontrado em vários locais diferentes por toda Vileza Pedra
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << !Druid
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 929 >>Entregue A Coroa da Terra
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .accept 933 >>Aceite Coroa da Terra
step
    #sticky
	#completewith spiderLegs
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saque-os por suas |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa desses para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >>Vá para o sudoeste de Teldrassil
step
	#xprate <1.5
	.goto Teldrassil,42.61,76.18
	>>Clique em |cRXP_PICK_Strange Fruited Plantar|r
	.accept 930 >>Aceite A Fruta Brilhante
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >>Vá para Pools of Arlithrien
step
	#xprate <1.5
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_Use o|r |T134765:0|t[Frasco de Turmalina] |cRXP_WARN_no poço lunar de Poços de Arlithrien|r
	.complete 933,1
step
	#xprate <1.5
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saque-os por suas |cRXP_LOOT_Small Pernas de Aranha|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #hardcore
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >>Vá para Dolanaar
step
	#xprate <1.5
    #softcore
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >>Morra e reviva no cemitério de Dolanaar, certifique-se de morrer a leste do poço da lua, caso contrário você pode acabar em Darnassus
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 933 >>Entregue A Coroa da Terra
    .target Corithras Moonrage
    .accept 7383 >>Aceite Coroa da Terra
step
	#xprate <1.5
    #label SpiderLegsEnd
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Treine Culinária
    .accept 4161 >>Aceite Receita dos Kaldorei
    .turnin 4161 >>Entregue Receita dos Kaldorei
    .target Zarrin
step << Warrior/Rogue
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Byonsa|r
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
    .target Byancie
step
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 932 >>Entregue em Aversão pervertida
    .turnin 2459 >>Entregue Ferócitas, o Comedor de Sonhos
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_Se você não está perto, faça a missão de Senhor Málinus|r
step << Priest
#xprate >1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
	.trainer >>Treine suas magias de classe
    .accept 5629 >>Aceite O Retorno ao Lar << sod
    .target Laurna Morninglight
step << Warrior
#xprate >1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >>Treine suas magias de classe
    .train 5171 >>Aprenda |T132306:0|t[Retalhar] << !sod
    .train 921 >>Aprenda |T133644:0|t[Bater Carteira] também que é necessário para sua missão Ladino do nível 10
    .target Jannok Breezesong
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >>Aceite Domando a Fera
	.trainer >>Treine suas magias de classe
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Tocaieira Lenhateia|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >>Entregue Domar a Fera - Missão
    .target Dazalar
    .accept 6101 >>Aceite Domando a Fera
step << Hunter
#xprate >1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Espreitador Sabre-da-noite|r
    >>|cRXP_WARN_Você deve clicar com o botão direito no Frame de Mascote e Dispensar seu mascote antes de poder domar outro|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >>Entregue Domar a Fera - Missão
    .target Dazalar
    .accept 6102 >>Aceite Domando a Fera
step << Hunter
#xprate >1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Guinchadora Estrígida|r
    >>|cRXP_WARN_Você deve clicar com o botão direito no Frame de Mascote e Dispensar seu mascote antes de poder domar outro|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >>Entregue Domar a Fera - Missão
    .target Dazalar
    .accept 6103 >>Aceite Treinando a Fera
    .train 1130 >>|cRXP_WARN_Certifique-se de que você treinou Marca do Caçador. Você vai precisar dela para obter uma runa em breve|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada a oeste de Dolanaar. Ela também pode estar ocupada lutando contra uma emboscada de Furlbog. Nesse caso, você terá que esperar que ela termine|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .accept 1684 >>Aceite Elanaria
    .accept 487 >>Aceite A Estrada para Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .accept 2241 >>Aceite The Maçã Falls
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada a oeste de Dolanaar. Ela também pode estar ocupada lutando contra uma emboscada furlbog, nesse caso você terá que esperar por ela terminar|r
    .accept 487 >>Aceite A Estrada para Darnassus
    .target Moon Priestess Amara
step
    #season 0
    .goto Teldrassil,46.6,53.0
    >>Abate os |cRXP_ENEMY_Gnarlpine Emboscadores|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step
	#xprate < 1.5
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >>Vá para Oráculo Glade
step
	#xprate < 1.5
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .accept 937 >>Aceite A Clareira Encantada
step
	#xprate < 1.5
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_Use the|r |T134798:0|t[Frasco de Ametista] |cRXP_WARN_at O Oráculo Glade moonwell|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#xprate < 1.5
    #completewith xp10
	#label harpies
    >>Abate as |cRXP_ENEMY_Bloodfeather Harpias|r. Saque-as pelos seus |cRXP_LOOT_Cintos|r
    >>as |cRXP_ENEMY_Bloodfeather Matriarcas|r |cRXP_WARN_lançam|r |T136052:0|t[Onda Curativa] |cRXP_WARN_e|r |T136048:0|t[Raio] |cRXP_WARN_que causam muito dano. Tente arrebentá-las rápido|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#xprate < 1.5
    .goto Teldrassil,34.61,28.79
    >>Clique na |cRXP_PICK_Planta Frondiosa Estranha|r
    .accept 931 >>Aceite A Fronde Cintilante
step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    .accept 938 >>Aceite Bruma
    .target Mist
step << Hunter
	#xprate <1.5
    #sticky
    #label xp10
    .xp 10-2670 >>Suba até ficar a 2670 xp do nível 10 (3830/6500)
    >>|cRXP_WARN_Assim que atingir este ponto de xp, pule a missão de harpia/escolta e vá direto para Darnassus. Você terá outra oportunidade de completar essas missões mais tarde|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    >>|cRXP_WARN_Lembre-se: esta é uma missão cronometrada, você deve entregá-la dentro de 10 minutos de aceitar|r
    .turnin 938 >>Entregue Bruma
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 937 >>Entregue A Clareira Encantada
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>Aceite Teldrassil
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    .accept 938 >>Aceite Bruma
    .target Mist
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    >>|cRXP_WARN_Tenha em mente, Bruma é uma missão cronometrada, você precisa entregar dentro de 10 minutos de aceitar|r
    .turnin 937 >>Entregue A Clareira Encantada
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>Aceite Teldrassil
    .turnin 938 >>Entregue Bruma
step << Druid
    #xprate <1.5
    #label xp10
    #season 2
    .xp 10
step << Druid
    #xprate <1.5
    #season 0,1
    #label xp10
    .xp 10-750
step << !Hunter !Druid
	#xprate <1.5
    #label xp10
    .xp 10-3110
step
	#xprate 1.49-1.99
   .goto Teldrassil,38.6,58.0
   >>Colete 7 Pernas de Aranhinha
   .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
   #xprate 1.49-1.99
   #label xp10
   .xp 10-850
   .goto Teldrassil,38.3,34.4
   >>Se você ainda está atrasado em xp, complete a missão de harpia ao norte
step << !Druid
    #xprate 1.49-1.99
	#label xp10
	.xp 10-4415
step << !Rogue
    #softcore
    #requires xp10
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura em Darnassus
    >>|cRXP_WARN_Certifique-se de que você está mais próximo do cemitério de Darnassus do que do de Dolanaar ou você pode acabar indo na direção errada. Corra para fora da toca e então morra se você não tem certeza sobre isso|r << sod Priest
    >>|cRXP_WARN_Certifique-se de que você está mais próximo do cemitério de Darnassus do que do de Dolanaar ou você pode acabar indo na direção errada. Corra para o lado oeste do rio se você não tem certeza sobre isso|r << sod Hunter/sod Warrior/sod Druid
    .target Anjo da Cura
step << !Rogue
    #hardcore
	#xprate < 1.5
    #completewith next
    >>Abate os |cRXP_ENEMY_Bloodfeather Harpies|r a caminho de Darnassus. Saque seus |cRXP_LOOT_Belts|r. |cRXP_WARN_Você não tem que completar este objetivo agora|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << !Rogue
    #hardcore
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>Viagem para Darnassus
step << Warrior
#xprate >1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >>Entregue a Elanaria
    .target Elanaria
    .accept 1683 >>Aceite Vorlus Cascruel
step << !Rogue !Hunter !Warrior
#xprate >1.99
    .goto Darnassus,67.427,15.655
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Estalajadeira Saliennte|r
    .home >>Defina sua Pedra de Regresso em Darnassus << !Warrior
    .vendor >>|cRXP_BUY_Compre mais um pouco|r |T132815:0|t|cRXP_LOOT_Leite Gelado|r << Priest
    .target Innkeeper Saelienne
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 922 >>Entregue Rellian Spiraverde
    .target Rellian Greenspyre
    .accept 923 >>Aceite Tumors
step << !Hunter !Rogue
	#xprate <1.5
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r no topo da Árvore
    .turnin 940 >>Entregue Teldrassil
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r no nível intermediário
    .turnin -5923 >>Entregue Heeding the Call - Missão - Missão - Missão
    .accept 5921 >>Aceite Moonglade
	.trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << Hunter
#xprate >1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >>Entregue Treinamento da Fera - Missão
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com a |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .accept 2518 >>Aceite Lágrima da Lua
step << Druid
	#completewith next
	.cast 18960 >>Use Teleporte: Clareira da Lua
    >>|cRXP_WARN_Estará no seu livro de magia|r
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 5921 >>Entregue Moonglade
    .target Dendrite Starblaze
    .accept 5929 >>Aceite Espírito do Grande Urso
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito do Grande Urso|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >>Use Teleporte: Clareira da Lua
    >>|cRXP_WARN_Isso fará você voltar mais rápido|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 5929 >>Entregue Espírito do Grande Urso
    .target Dendrite Starblaze
    .accept 5931 >>Aceite De Volta para Darnassus
step
#xprate <1.99
    #requires xp10 << Rogue
    .hs >>Vá para Dolanaar
    .subzoneskip 186
step << Hunter
#xprate <1.99
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
	.vendor >>|cRXP_BUY_Compre 4 pilhas de|r |T132382:0|t[Sharp Flechas]|cRXP_BUY_. Equipe-as assim que atingir o nível 10|r
    .target Jeena Featherbow
step
	#xprate 1.49-1.99
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Treine Culinária
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >>Aceite Receita dos Kaldorei
    .turnin 4161 >>Entregue Receita dos Kaldorei
step
	#xprate 1.49-1.99
    .goto Teldrassil,51.9,56.4
    >>Encontre Sacerdotisa da Lua Amara, ela patrula a estrada a oeste de Dolanaar
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    .turnin 487 >>Entregue A Estrada para Darnassus
	.maxlevel 9
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >>Aceite Domando a Fera
	.train 13165 >>Aprenda seus feitiços de nível 10
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Tocaieira Lenhateia|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >>Entregue Domar a Fera - Missão
    .target Dazalar
    .accept 6101 >>Aceite Domando a Fera
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 7383 >>Entregue A Coroa da Terra
    .target Corithras Moonrage
    .accept 935 >>Aceite Coroa da Terra
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >>Entregue A Fronde Cintilante
    .turnin 930 >>Entregue A Fruta Brilhante
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >>Entregue O Coração Enroscado em Musgo
    .isOnQuest 927
step
	#xprate <1.5
	.goto Teldrassil,60.78,68.59
	>>Clique em |cRXP_LOOT_Denalans Planter|r
	.turnin 941 >>Entregue Plantando Coração
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Espreitador Sabre-da-noite|r
    >>|cRXP_WARN_Você deve clicar com o botão direito no Frame de Mascote e Dispensar seu mascote antes de poder domar outro|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
#xprate <1.99
    #label L10
    .xp 10
step
	#xprate <1.5
    #softcore
	#sticky
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << Priest
#xprate <1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
	.trainer >>Treine suas magias de classe
    .target Laurna Morninglight
step << Warrior
#xprate <1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >>Treine suas magias de classe
    .train 5171 >>Treine |T132306:0|t[Retalhar]
    .train 921 >>Treine |T133644:0|t[Bater Carteira] também, necessário para a missão de Ladino de nível 10
    .target Jannok Breezesong
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >>Aceite Domando a Fera
	.trainer >>Treine suas magias de classe
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Tocaieira Lenhateia|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >>Entregue Domar a Fera - Missão
    .target Dazalar
    .accept 6101 >>Aceite Domando a Fera
step << Hunter
#xprate <1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Espreitador Sabre-da-noite|r
    >>|cRXP_WARN_Você deve clicar com o botão direito no Frame de Mascote e Dispensar seu mascote antes de poder domar outro|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >>Entregue Domar a Fera - Missão
    .target Dazalar
    .accept 6102 >>Aceite Domando a Fera
step << Hunter
#xprate <1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Guinchadora Estrígida|r
    >>|cRXP_WARN_Você deve clicar com o botão direito no Frame de Mascote e Dispensar seu mascote antes de poder domar outro|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >>Entregue Domar a Fera - Missão
    .target Dazalar
    .accept 6103 >>Aceite Treinando a Fera
step << Warrior
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada a oeste de Dolanaar|r
    .accept 1684 >>Aceite Elanaria
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .accept 2241 >>Aceite The Maçã Falls
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre uma|r |T135145:0|t[Bengala]
    >>|cRXP_WARN_Você equipará isto depois. Pule este passo se você encontrou um bastão diferente|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << !Druid
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada a oeste de Dolanaar|r
    .turnin 487 >>Entregue A Estrada para Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    #softcore
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>Assim que você passar pela área furlbog, morra de propósito e reviva no cemitério de Darnassus
    .target Anjo da Cura
step << Rogue
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>Viagem para Darnassus
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 922 >>Entregue Rellian Spiraverde
    .target Rellian Greenspyre
    .accept 923 >>Aceite Tumors
step << Rogue
    #season 0
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r no topo da Árvore
    .turnin -935 >>Entregue A Coroa da Terra
    .turnin -940 >>Entregue Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >>Aceite Bosque dos Anciãos
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >>Entregue The Maçã Falls
    .target Syurna
    .accept 2242 >>Aceite Destino Calls
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com a |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .accept 2518 >>Aceite Lágrima da Lua
step << Warrior
#xprate >1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >>Viaje para |cRXP_ENEMY_Vorlus Cascruel|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,47.2,63.7
    >>Abata |cRXP_ENEMY_Vorlus Cascruel|r. Saque-o pelo |cRXP_LOOT_Chifre|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_Lance|r |T132164:0|t[Domar Fera] |cRXP_WARN_em uma |cRXP_ENEMY_Caçadora Estrígida|r para domá-la|r -- .tame 1997
    .train 2981 >>Ataque criaturas com ele para aprender [Garra (Grau 2)]
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
	.unitscan Strigid Hunter
step
    #sticky
    #completewith Spinnerets
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,43.80,26.03,0
	>>Abate os |cRXP_ENEMY_Timberling Tramplers|r, os |cRXP_ENEMY_Timberling Charco Beasts|r e os |cRXP_ENEMY_Elder Timberlings|r. Saqueie os |cRXP_LOOT_Tumors|r deles
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
    #loop
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,48.0,25.2,0
    .goto Teldrassil,42.0,25.6,0
    .goto Teldrassil,39.6,25.6,0
    .line Teldrassil,41.70,41.82,41.97,39.03,42.20,35.71,43.33,33.27,43.79,30.65,44.18,27.80,46.09,26.55,47.72,25.57,46.25,25.62,44.42,26.09,42.83,26.15,42.0,25.6,39.6,25.6
    >>Abate |cRXP_ENEMY_Lady Sathrah|r. Saqueie o |cRXP_LOOT_Spinnerets|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_pode aparecer em 3 locais diferentes, verifique seu mapa para um caminho recomendado para seguir|r
    >>|cRXP_WARN_Siga para o norte ao longo do rio e verifique o ponto de desova mais oriental primeiro. Trabalhe na|r |T134339:0|t[Tumors] |cRXP_WARN_missão conforme você vai|r
    >>|cRXP_WARN_Se ela não estiver a leste do rio, complete a|r |T134339:0|t[Tumors] |cRXP_WARN_missão antes de ir para o oeste|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step
    .goto Teldrassil,41.7,41.8
	>>Abate os |cRXP_ENEMY_Timberling Tramplers|r, os |cRXP_ENEMY_Timberling Charco Beasts|r e os |cRXP_ENEMY_Elder Timberlings|r. Saqueie os |cRXP_LOOT_Tumors|r deles
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .accept 937 >>Aceite A Clareira Encantada
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_Lance|r |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Sethir, o Antigo|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_ENEMY_Sethir, o Antigo|r |cRXP_WARN_caminha ao longo do grande galho da árvore|r
    >>|cRXP_WARN_Evite lutar com |cRXP_ENEMY_Sethir, o Antigo|r. Deixe-o passar, depois|r |T132320:0|t[Furtividade] |cRXP_WARN_e|r |T133644:0|t[Bater Carteira] |cRXP_WARN_quando estiver atrás dele|r
    .complete 2242,1
    .mob Sethir the Ancient
step
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819,0,0
    >>Abate as |cRXP_ENEMY_Bloodfeather Harpias|r. Saque-as pelos seus |cRXP_LOOT_Cintos|r
    >>as |cRXP_ENEMY_Bloodfeather Matriarcas|r |cRXP_WARN_lançam|r |T136052:0|t[Onda Curativa] |cRXP_WARN_e|r |T136048:0|t[Raio] |cRXP_WARN_que causam muito dano. Tente arrebentá-las rápido|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
    .goto Teldrassil,31.54,31.62
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    >>|cRXP_WARN_Pule esta missão se o NPC não estiver lá|r
    .accept 938 >>Aceite Bruma
step
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    >>|cRXP_WARN_Tenha em mente, esta é uma missão cronometrada, você precisa entregar dentro de 10 minutos de aceitar|r
    .turnin 938 >>Entregue Bruma
    .isOnQuest 938
step
    #requires harpies2
    #label TeldrassilEnd
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 937 >>Entregue A Clareira Encantada
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>Aceite Teldrassil
step
    #softcore
	#completewith darn << era
    #completewith darnSoD << sod
    .deathskip >>Morra e reviva no Darnassus graveyard
    >>|cRXP_WARN_Certifique-se de que você está no lado oeste do rio ou você pode acabar indo pela forma errada|r << sod
    .target Anjo da Cura
step
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>Viagem para Darnassus
step
    #hardcore
    #completewith next
    #season 2
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>Viagem para Darnassus
step
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >>Aceite Nessa Cantonegro
step
    #softcore
    #label darn
    #optional
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>Viagem para Darnassus
step
	.abandon 927 >>Abandone O Coração Enroscado em Musgo. Você nunca tem a oportunidade de entregar.
step << Warrior
#xprate <1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >>Entregue a Elanaria
    .target Elanaria
    .accept 1683 >>Aceite Vorlus Cascruel
step << Warrior
#xprate <1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >>Viaje para |cRXP_ENEMY_Vorlus Cascruel|r
step << Warrior
#xprate <1.99
    .goto Teldrassil,47.2,63.7
    >>Abata |cRXP_ENEMY_Vorlus Cascruel|r. Saque-o pelo |cRXP_LOOT_Chifre|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
#xprate <1.99
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>Die on purpose after you get past the furbolg area e respawn at Darnassus
step << Warrior
#xprate <1.99
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>Viagem para Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >>Entregue Vorlus Cascruel
--	.accept 1686 >> Accept The Shade of Elura
step << Druid
    #season 0
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r no nível intermediário
    .turnin 5931 >>Volte para Darnassus - Missão
    .target Mathrengyl Bearwalker
    .accept 6001 >>Aceite Corpo e Coração
step
    #season 0
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r
    .turnin -935 >>Entregue A Coroa da Terra
    .turnin -940 >>Entregue Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >>Aceite Bosque dos Anciãos
step << Hunter
#xprate <1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >>Entregue Treinamento da Fera - Missão
step << Hunter
    >>Suba pela rampa à direita de |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silvaria|r
    .goto Darnassus,42.2,8.8
    .trainer >>Aprenda feitiços de mascote
    .target Silvaria
step
    #season 0
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 923 >>Entregue Tumors
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >>Entregue Destino Calls
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com a |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .turnin 2518 >>Entregue Lágrima da Lua
    .target Priestess A'moora
    .accept 2520 >>Aceite Sathrah's Sacrificar
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Usar|r |T135652:0|t[Sathrah's Sacrificar] |cRXP_WARN_na fonte|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com a |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .turnin 2520 >>Entregue Sathrah's Sacrificar
step << Druid
#ssf
    #season 0
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Firodren Clamaluna|r
    .train 2366 >>Treine |T136065:0|t[Herborismo]
    >>|T136065:0|t[Herborismo] |cRXP_WARN_é necessário para coletar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_para uma missão de classe importante em breve. Você pode desaprender depois|r
    .target Firodren Mooncaller
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Leiloeiro de Darnassus|r
    >>Compre os seguintes itens para entregas instantâneas em Costa Negra depois:
    >>|T134187:0|t[Earthroot] << Druid era
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133972:0|t[Strider Carne]
    *Pular este passo se você desejar não comprar nada
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tProcure |cRXP_FRIENDLY_Jaeana|r, ela patrulha ao redor do Tradesmen's Terrace
    >>Compre um pacote de|cRXP_BUY_ |T133972:0|t[Fortalecer Jerky] |rdela.|cRXP_BUY_
    >>|cRXP_WARN_Você precisará disso para alimentar sua coruja, ela só come carne e não há vendedor de carne em Costa Negra|r
    .collect 117,15
    .target Jaeana
step << Hunter/Warrior/Priest/Sod Rogue
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .train 227 >>Treine Cajados << Hunter/Warrior/Priest
    .train 265 >>Treine Arcos << Sod Rogue
    >>Se você tiver um Cajado na mochila, equipe-o << Hunter
    >>Se você tem um arco na mochila, equipe-o << Rogue
    .target Ilyenia Moonfire
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Sod Rogue
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre e equipe um|r |T135489:0|t[Arco Recurvo Laminado]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 0
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
	.vendor >>|cRXP_BUY_Compre|r [Flechas Afiadas]
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135489:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre um|r |T135147:0|t[Cajado Nodoso]|cRXP_BUY_. Equipe-o no nível 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre um|r |T135154:0|t[Cajado de Combate]|cRXP_BUY_. Equipe-o no nível 11|r << era
    >>|cRXP_BUY_Compre e equipe um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_se você não puder pagar por um|r |T135147:0|t[Cajado Nodoso] << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
	>>|cRXP_BUY_Compre e equipe um|r |T135346:0|t[Alfanje] |cRXP_BUY_se você não puder pagar por um|r |T135154:0|t[Cajado de Combate]
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.81
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate]
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.43
step << Rogue
    #season 0
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r no segundo andar
    >>|cRXP_BUY_Compre um|r |T135641:0|t[Adaga Equilibrada de Arremesso]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6344 >>Entregue para Nessa Cantonegro
    .target Nessa Shadowsong
    .accept 6341 >>Aceite O Contrato de Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Return to Nessa
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >>Entregue O Contrato de Teldrassil
    .target Vesprystus
    .accept 6342 >>Aceite Voo para Auberdine
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
]])
