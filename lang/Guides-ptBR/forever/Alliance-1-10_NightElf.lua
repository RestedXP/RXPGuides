if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Shadowglen
#displayname 1-7 Shadowglen << sod
#version 1
#group Guia Forever (A)
#subgroup Guia Speedrun 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +Você selecionou um guia destinado a Elfos Noturnos. Você deve escolher a mesma zona inicial em que começa
step
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .accept 456 >>Aceite O Equilíbrio da Natureza
step << !Druid
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Abate os |cRXP_ENEMY_Jovens Nightsabers|r e os |cRXP_ENEMY_Jovens Thistle Boars|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << !Druid
    >>Saqueie os inimigos que você mata, certifique-se de ter pelo menos 10 cobre em sucata de vendedor, você precisará disso para treinar |T132333:0|t[Brado de Batalha]<< Warrior
    .xp 2 >>Farme até o nível 2
step << Druid
    >>Abate os |cRXP_ENEMY_Jovens Nightsabers|r e os |cRXP_ENEMY_Jovens Thistle Boars|r
    .goto 1438/1,669.500,10387.300
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Druid
    #completewith next
    +|cRXP_WARN_Garanta que você tenha pelo menos 96 cobre em valor de lixo de vendedor|r, você pode contar seu cajado que vende por 9c
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r e |cRXP_FRIENDLY_Melithar Guenelmo|r
    #label GoodProtector
    .accept 4495 >>Aceite Um Bom Amigo
    .target +Dirania Silvershine
    .goto 1438/1,713.81,10407.20
    .accept 458 >>Aceite A Protetora dos Bosques
	.goto 1438/1,763.45,10389.79
    .target +Melithar Staghelm
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delailah|r
    .vendor >>|cRXP_WARN_Venda lixo|r
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step << !Druid
    >>Abate os |cRXP_ENEMY_Jovens Nightsabers|r e os |cRXP_ENEMY_Jovens Thistle Boars|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Warrior
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
	.vendor >>|cRXP_WARN_Venda lixo|r
    .target Keina
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alyissia|r
    .trainer >>Treine |T132333:0|t[Brado de Batalha]
step << Hunter/Warrior
    .goto 1438/1,769.77,10673.98
    .xp 4-610 >>Farme até estar a 610 XP do nível 4 (790/1400)
step << Hunter/Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >>Entregue Um Bom Amigo
    .target Iverron
    .accept 3519 >>Aceite Um Amigo em Necessidade
step << Hunter/Warrior
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Shadowglen
step << Hunter/Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >>Entregue A Protetora dos Bosques
    .target Tarindrella
    .accept 459 >>Aceite A Protetora dos Bosques
    .accept 97977 >>Aceite O Chamado da Natureza
step << Druid
	.goto 1438/1,820.68,10487.33--c:Teldrassil,58.8,39.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khardan|r
    >>|cRXP_WARN_Venda toda sua armadura e seu cajado|r! Compre uma |T135139:0|t[|cRXP_LOOT_Cajado Curto|r] dele
	.collect 2132 --Short Staff (1)
	.use 2132 >>Equipe o Cajado Curto
	.target Khardan Proudblade
step << !Priest !Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 456,1 >>Entregue O Equilíbrio da Natureza << Hunter
    .turnin 456 >>Entregue O Equilíbrio da Natureza << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >>Aceite O Equilíbrio da Natureza
	.accept 3116 >>Aceite O Selo Simples << Warrior
	.accept 3117 >>Aceite O Selo Cinzelado << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >>Aceite O Selo Sagrado << Priest
	.accept 3120 >>Aceite O Selo Verdejante << Druid
step << !Hunter !Druid !Warrior
    #completewith next
    >>Abate os |cRXP_ENEMY_Javalis Thistle|r a caminho de Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter !Druid !Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >>Entregue Um Bom Amigo
    .target Iverron
    .accept 3519 >>Aceite Um Amigo em Necessidade
step << !Hunter !Druid !Warrior
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Shadowglen
step << !Hunter !Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    --@TODO add herbalism note for druid for earthroot
    .turnin 458 >>Entregue A Protetora dos Bosques
    .target Tarindrella
    .accept 459 >>Aceite A Protetora dos Bosques
    .accept 97977 >>Aceite O Chamado da Natureza
step << Priest/Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456 >>Entregue O Equilíbrio da Natureza
    .target Conservator Ilthalaine
	.accept 3119 >>Aceite O Selo Sagrado << Priest
step << Druid
    #completewith next
    +|cRXP_WARN_Lance|r |T136006:0|t[|cRXP_LOOT_Ira|r] |cRXP_WARN_até ficar sem mana, depois volte para|r |T135158:0|t[|cRXP_LOOT_Corpo a Corpo|r] |cRXP_WARN_até estar com mana cheia e repita|r
step << Druid
    .goto 1438/1,964.300,10272.800,10,0
    .goto 1438/1,1030.200,10339.800
    >>Abate os |cRXP_ENEMY_Capeta|r e os |cRXP_ENEMY_Tinhoso|r. Saque-os em busca de |cRXP_LOOT_Limo Vil|r
    >>Pegue |T134460:0|t[|cRXP_LOOT_Gnarlpine Totens|r] dos Acampamentos Capeta
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob Grell
    .mob Grellkin
step << Druid
    #completewith next
    >>Abate os |cRXP_ENEMY_Javalis Thistle|r a caminho de Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << Druid
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >>Entregue Um Bom Amigo
    .target Iverron
    .accept 3519 >>Aceite Um Amigo em Necessidade
step << Druid
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Shadowglen
step << Druid
    .goto 1438/1,871.60,10300.67
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    >>DICA: |cRXP_WARN_Pegue as perneiras como recompensa e guarde-as. Você as utilizará para engravar uma runa depois|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459,1 >>Entregue A Protetora dos Bosques
    .turnin 97977 >>Entregue O Chamado da Natureza
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r
    .turnin 3519 >>Entregue Um Amigo Necessitado
    .target Dirania Silvershine
    .accept 3521 >>Aceite O Antídoto de Iverron
step << Warrior
    .xp 4-40
step << Hunter/Druid/Warrior
    #completewith htraining
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Certifique-se de que tem 1 prata restante depois de sair do vendedor para conseguir pagar|r |T132204:0|t[|cRXP_FRIENDLY_Picada de Serpente|r] << Hunter
	.vendor >>|cRXP_BUY_Compre 2 pilhas de|r |T132382:0|t[Rough Flechas] << Hunter
    .vendor >>|cRXP_BUY_Venda seu lixo|r
    .target Keina
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >>Entregue O Selo Simples
    .trainer >>Treine suas magias de classe
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delailah|r
    .vendor >>|cRXP_WARN_Venda lixo|r
    >>|cRXP_BUY_Compre até 25|r |T132794:0|t[Água Refrescante da Fonte]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target Dellylah
step
    #optional
    .xp 3
step
    .goto 1438/1,871.24,10417.65
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Gilshalan Andavento|r
    .accept 916 >>Aceite Veneno do Bosque Aracnídeo
step << Hunter/Druid
    .xp 4-40
step << Druid
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,829.54,10464.01
    >>Suba a Árvore Aldrassil
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mardant Carvalhaço|r
	.turnin 3120 >>Entregue O Selo Verdejante
	.train 8921 >>Treine |T136096:0|t[Fogo Lunar]
step << Hunter
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,827.86,10458.51
    >>Suba o Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayanna Perenanda|r
    .turnin 3117 >>Entregue O Selo Cinzelado
    .train 1978 >>Treine Picada de Serpente
    .target Ayanna Everstride
step << Druid
    #completewith IchorVenomSac
    +Pare de lançar|cRXP_WARN_ |T136006:0|t[|cRXP_LOOT_Ira|r] completamente!|r Use apenas |T135158:0|t[|cRXP_LOOT_Corpo a Corpo|r] e |T136096:0|t[|cRXP_LOOT_Fogo Lunar|r] de agora em diante!
    >>Procure usar apenas Fogo Lunar logo após Corpo a Corpo |cRXP_WARN_para não resetar seu tempo de ataque!|r
step
    .goto 1438/1,863.96,10534.840,10,0
    .goto 1438/1,873.64,10566.40,10,0
    .goto 1438/1,850.72,10595.920,10,0
    .goto 1438/1,820.17,10547.39,10,0
    .goto 1438/1,863.96,10534.840
    >>Saque o |cRXP_LOOT_Moonpetal Lilies|r no chão
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    #label IchorVenomSac
    .goto 1438/1,922.52,10755.43
    >>Mate as |cRXP_ENEMY_Webwood Aranhas|r. Saqueie-as para obter |cRXP_LOOT_Ichor|r e |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Javalis Thistle|r a caminho dos Capetas
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Druid
    .goto 1438/1,1014.17,10348.18
    >>Abata os |cRXP_ENEMY_Capeta|r e os |cRXP_ENEMY_Tinhoso|r. Saqueie-os por seus |cRXP_LOOT_Mushrooms|r e |cRXP_LOOT_Limo Vil|r
    >>Saque |T134460:0|t[|cRXP_PICK_Totens Gnarlpine|r] dos Acampamentos Capeta
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob Grell
    .mob Grellkin
step << Druid
    .goto 1438/1,1014.17,10348.18
    >>Abate os |cRXP_ENEMY_Capeta|r e os |cRXP_ENEMY_Tinhoso|r. Saque-os em busca de |cRXP_LOOT_Cogumelos|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .mob Grell
    .mob Grellkin
step
    .goto 1438/1,871.60,10300.67
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    >>DICA: |cRXP_WARN_Pegue as perneiras como recompensa e guarde-as. Você as utilizará para engravar uma runa depois|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >>Entregue A Protetora dos Bosques
    .turnin 97977 >>Entregue O Chamado da Natureza
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Javalis Thistle|r a caminho de Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r
    .turnin 3521 >>Entregue Antídoto de Iverron
    .target Dirania Silvershine
    .accept 3522 >>Aceite O Antídoto de Iverron
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delailah|r
    .vendor >>|cRXP_WARN_Venda lixo|r
    >>|cRXP_BUY_Compre até 25|r |T132794:0|t[Água Refrescante da Fonte]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target Dellylah
step << !Priest
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
	.vendor >>|cRXP_WARN_Venda lixo|r << !Hunter
	.vendor >>|cRXP_BUY_Compre 3 ou 4 pilhas de|r |T132382:0|t[Rough Flechas] << Hunter
    .target Keina
step
    .goto 1438/1,871.24,10417.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilshalan Andavento|r
    .turnin 916 >>Entregue Veneno do Bosque-aracnídeo
    .target Gilshalan Windwalker
    .accept 917 >>Aceite Ovo do Bosque-aracnídeo
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Adaga de Pau-cardo]
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Javalis Thistle|r a caminho de Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    .goto 1438/1,1034.89,10711.58
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    >>DICA: |cRXP_WARN_Pegar as calças como recompensa dele. Você as usará para gravar uma runa mais tarde|r << Priest sod
    .turnin 3522 >>Entregue O Antídoto de Iverron
step
    #completewith next
    .goto 1438/1,926.08,10773.42,25 >>Entre na Caverna Shadowthread
step
    .goto 1438/1,912.33,10935.30
    >>Mate o |cRXP_ENEMY_Githyiss the Torpe|r e saqueie a |T134298:0|t[|cRXP_LOOT_Dentada|r]
    >>Saque a |cRXP_LOOT_Webwood Ovo|r no chão no fundo da Caverna
    .collect 277190,1 --Fang of Githyiss (x1)
    .complete 917,1 --Collect Webwood Egg (x1)
    .mob Githyiss the Vile
step
	#softcore
	#completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << skip --logout skip
	#hardcore
	#completewith next
	+Na saliência atrás dos ovos, faça um logout skip. Mova seu personagem até parecer que estão flutuando, depois saia do jogo e volte.
	>>Se você cair, apenas corra para fora da caverna normalmente para entregar a missão
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLIQUE AQUI para referência
step
	.goto 1438/1,871.24,10417.65
    >>Usar a |T134298:0|t[|cRXP_LOOT_Dentada de Githyiss|r] para aceitar a missão
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilshalan Andavento|r
    .accept 97236 >>Aceite Dentada de Githyiss
    .turnin 97236 >>Entregue Dentada de Githyiss
    .turnin 917 >>Entregue Webwood Ovo
    .target Gilshalan Windwalker
    .accept 920 >>Aceite Tenaron's Summons
    .use 277190
step
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Suba a Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tenaron Fortagarras|r
    .turnin 920 >>Entregue Tenaron's Summons
    .target Tenaron Stormgrip
    .accept 921 >>Aceite Coroa da Terra
step
    #sticky
    #label vial1
    .goto 1438/1,764.68,10711.31
	.use 5185 >>|cRXP_WARN_Use o|r |T134776:0|t[Frasco de Cristal] |cRXP_WARN_ao Moonwell|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter/Druid/Warrior/Priest
    .goto 1438/1,769.77,10673.98
    >>Mate os |cRXP_ENEMY_Mangy Nightsabers|r e os |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    #requires vial1
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << Hunter/Druid
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 457,2 >>Entregue O Equilíbrio da Natureza
step
    #requires vial1
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Suba a Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tenaron Fortagarras|r
    .turnin 921 >>Entregue Coroa da Terra
    .target Tenaron Stormgrip
    .accept 928 >>Aceite Coroa da Terra
step
    .goto 1438/1,805.500,10491.800
    >>Clique em [|cRXP_PICK_Livro|r] à esquerda de |cRXP_FRIENDLY_Tenaron|r
    .accept 96630 >>Aceite O Aventureiro
step << Priest
    #completewith next
    .goto 1438/1,787.28,10438.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Janna Lunaclara|r acima
	.vendor >>|cRXP_WARN_Venda lixo|r
    .target Janna Brightmoon
step << Priest
	.goto 1438/1,801.64,10458.75
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda|r acima
	.turnin 3119 >>Entregue O Selo Sagrado
    .accept 97979 >>Aceite A Deusa Fornece
    .accept 5622 >>Aceite Em Simpatia de Elune
	.trainer >>Treine suas magias de classe
step << Priest
    >>Lance |T132089:0|t[|cRXP_LOOT_Fusão Sombria|r] e |T136057:0|t[|cRXP_LOOT_Luz de Elune|r]
    .complete 97979,1
    .complete 97979,2
step << Priest
    .goto 1438/1,800.500,10454.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda::3595|r
    .target Shanda::3595
    .turnin 97979 >>Entregue A Deusa Fornece
step
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 457,2 >>Entregue O Equilíbrio da Natureza
    .isQuestComplete 457
step
    .goto 1438/1,700.57,10214.33
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >>Aceite Entrega para Dolanaar
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#group Guia Forever (A)
#subgroup Guia Speedrun 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Costa Negra

step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .accept 488 >>Aceite O Comando de Zenn
step
    #sticky
    #completewith DenlansEarth
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saqueie-os para obter as |cRXP_LOOT_Presas|r
    >>Abate os |cRXP_ENEMY_Corujas Strigid|r. Saque-os em busca de |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saqueie o |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Tenha cuidado pois|r |cRXP_ENEMY_Nightsabers|r |cRXP_WARN_e|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_se movem muito rapidamente!|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_também podem atrair socialmente outros|r |cRXP_ENEMY_Owls|r |cRXP_WARN_se você passar perto deles durante o combate com um|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlansEarth
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para obter as |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_você precisa disto para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
   .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyreena Duskblade|r
    .turnin 96630 >>Entregue O Aventureiro
    .accept 96606 >>Aceite Os Territórios Selvagens
    .target Lyreena Duskblade
step
    .goto 1438/1,882.300,9909.101
    >>Usar o gesto |cRXP_WARN_/sit|r ao lado da fogueira e |cRXP_WARN_fique parado por 1 minuto|r para completar o objetivo
    .complete 96606,2 --Gain the Boosted Rest buff
step
    .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyreena Duskblade|r
    .turnin 96606 >>Entregue Os Territórios Selvagens
    .accept 96634 >>Aceite Acampamento 101: Culinária
    .target Lyreena Duskblade
step
    #label DenlansEarth
    .goto 1438/1,959.18,9872.38
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    >>|cRXP_WARN_Certifique-se de que você tem 1 espaço vazio na mochila antes de aceitar esta missão|r
    .accept 997 >>Aceite A Terra de Denalan
step
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Athridas Mantursino|r
    .accept 475 >>Aceite Uma Leve Brisa
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    .turnin 5622 >>Entregue Em Simpatia de Elune
    .target Laurna Morninglight
    .accept 5621 >>Aceite Vestes da Lua
	.trainer >>Treine suas magias de classe
step << Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áldia|r subindo as escadas
    .accept 87288 >>Aceite Peles de Sable Macias
    .vendor >>|cRXP_BUY_Compre e equipe uma|r |T135641:0|t[Adaga Equilibrada de Arremesso]
    .target Aldia
step << !Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áldia|r subindo as escadas
    .accept 87288 >>Aceite Peles de Sable Macias
    .target Aldia
step
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .accept 932 >>Aceite Aversão Pervertida
    .accept 2438 >>Aceite O Apanhador de Sonhos de Esmeralda
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    >>|cRXP_BUY_Compre e equipe um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    >>|cRXP_BUY_Compre|r |T132382:0|t[Rough Flechas] |cRXP_BUY_até sua Aljava estar cheia|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    .vendor >>|cRXP_BUY_Compre|r |T132382:0|t[Rough Flechas] |cRXP_BUY_até sua Aljava estar cheia|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step
    .goto 1438/1,963.000,9811.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinel Kyra Starsong::2081|r
    .target Sentinel Kyra Starsong::2081
    .accept 99046 >>Aceite A Corredora Perdida
step << Warrior
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio] |cRXP_BUY_se você pode pagar (5s 36c), se não, pule este passo|r
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
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >>Treine suas magias de classe
    .target Jannok Breezesong
step << Rogue
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete] |cRXP_BUY_se você pode pagar (4s 1c), se não, pule este passo|r
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
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala] |cRXP_BUY_se você tiver como pagar (4s 79c), caso contrário, pule este passo|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r
    .turnin 2159,2 >>Entregue Entrega para Dolanaar << Hunter
    .turnin 2159 >>Entregue Entrega para Dolanaar << !Hunter
    .vendor >>|cRXP_BUY_Compre 10 |T132815:0|t|cRXP_LOOT_Leite Gelado|r ou o máximo que você puder pagar << Priest
    .home >>Defina sua Pedra de Retorno em Dolanaar
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
	.train 3044 >>Aprenda Tiro Arcano << era
    .train 5116 >>Aprenda Tiro de Concussão << sod
    .target Dazalar
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
    >>Pule o treinamento |T136006:0|t[|cRXP_LOOT_Ira|r] se você não puder pagar. Priorize |T136104:0|t[|cRXP_LOOT_Espinhos|r]
	.trainer >>Treine suas magias de classe
    .target Kal
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 928 >>Entregue Coroa da Terra
    .target Corithras Moonrage
    .accept 929 >>Aceite Coroa da Terra
step
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Treine Culinária
    .accept 4161 >>Aceite Recipe of the Kaldorei
    .turnin 96634 >>Entregue Acampamento 101: Culinária
    .target Zarrin
    .money <0.0094
step
    .goto 1438/1,902.15,9754.27--c:Teldrassil,57.2,61.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyoma|r
    +Compre 5 |T134059:0|t[Temperos Suaves] dela, use |T133971:0|t[|cRXP_FRIENDLY_Culinária|r] para cozinhar |T132834:0|t[|cRXP_LOOT_Ovos Assados com Erva|r] até acabar com as |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r]
    .collect 2678,5 --Mild Spices
    .disablecheckbox
    .itemcount 6889,1 --Small Egg
    .target Nyoma
    .skill cooking,<1,1
step
    #completewith DenlanStart
    +Coma os |T132834:0|t[|cRXP_LOOT_Ovos Assados com Erva|r] por 10 segundos para receber um |cRXP_WARN_buff de 5% de experiência por morte de inimigos durante 15 minutos|r
    >>|cRXP_WARN_Lembre-se de reaplicar este buff alimentar quando expirar|r
    .itemcount 6888,1
step
    #sticky
    #completewith DenlanStart
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os em busca de |cRXP_LOOT_Presas|r e |cRXP_LOOT_Pelegos|r
    >>Abate os |cRXP_ENEMY_Corujas Strigid|r. Saque-os em busca de |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saqueie o |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Tenha cuidado pois|r |cRXP_ENEMY_Nightsabers|r |cRXP_WARN_e|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_se movem muito rapidamente!|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_também podem atrair socialmente outros|r |cRXP_ENEMY_Owls|r |cRXP_WARN_se você passar perto deles durante o combate com um|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlanStart
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para obter as |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_você precisa disto para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step << Druid
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Suba seu|r |T136065:0|t[Herborismo] |cRXP_WARN_para 15 para conseguir coletar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_para uma importante missão de classe em breve. Você pode desaprender depois|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    >>|cRXP_WARN_Colete 5 |T134187:0|t[Earthroot] via |T136065:0|t[Herborismo] e raramente |cRXP_PICK_Baús Danificados|r para uma futura missão de classe|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto 1438/1,900.01,9675.85
    >>Alvo |cRXP_FRIENDLY_Sentinela Shaya|r
    >>|cRXP_WARN_Lance|r |T135929:0|t[Cura Inferior (Rank 2)] |cRXP_WARN_e|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_em|r |cRXP_FRIENDLY_Sentinela Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    #label DenlanStart
    .goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >>Entregue A Terra de Denalan
    .target Denalan
    .accept 918 >>Aceite Sementes de muscoide
    .accept 919 >>Aceite Brotos de muscoide
step
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Abate os |cRXP_ENEMY_Timberlings|r. Saque-os para suas |cRXP_LOOT_Sementes|r
    >>Pegue os |cRXP_LOOT_Brotos de muscoide|r no chão << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >>Entregue Sementes de Muscoide
    .target Denalan
    .accept 922 >>Aceite Rellian Spiraverde
    .turnin 919 >>Entregue Brotos de Muscoide
step
    #sticky
    #completewith Starbreeze
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os em busca de |cRXP_LOOT_Presas|r e |cRXP_LOOT_Pelegos|r
    >>Abate os |cRXP_ENEMY_Corujas Strigid|r. Saque-os em busca de |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saqueie o |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Tenha cuidado pois|r |cRXP_ENEMY_Nightsabers|r |cRXP_WARN_e|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_se movem muito rapidamente!|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_também podem atrair socialmente outros|r |cRXP_ENEMY_Owls|r |cRXP_WARN_se você passar perto deles durante o combate com um|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurkerr
step
    #sticky
	#completewith Starbreeze
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para obter as |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_você precisa disto para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label Starbreeze
    #completewith next
    .goto 1438/1,351.23,9806.54,120 >>Vá para Starbreeze Village
step
    .goto 1438/1,351.23,9806.54
    >>Abra |cRXP_PICK_Aparador de Tallonkai|r. Pegue o |cRXP_LOOT_Emerald Apanhador de Sonhos|r
    >>|cRXP_WARN_Procure terminar de pegar as|r |cRXP_LOOT_Pinha de Coruja|r das corujas ao lado dos furlbogs
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .disablecheckbox
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto 1438/1,440.85,9845.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garyol Talvethren|r acima das escadas
    .turnin 475 >>Entregue A Leve Brisa
    .target Gaerolas Talvethren
    .accept 476 >>Aceite Corrupção Masca-pinho
step
    #xprate <1.99
    .goto 1438/1,587.49,9859.480
    >>|cRXP_WARN_Use o|r |T134721:0|t[Frasco de Jade] |cRXP_WARN_na Nascente Lunar de Starbreeze Village|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    #sticky
	#completewith GnarlpineCorruption
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para obter as |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_você precisa disto para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os em busca de |cRXP_LOOT_Presas|r e |cRXP_LOOT_Pelegos|r
    >>Abate os |cRXP_ENEMY_Corujas Strigid|r. Saque-os em busca de |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saqueie o |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Guarde|r |T132832:0|t[Pequenos Ovos] |cRXP_WARN_e|r |T134321:0|t[Pernas de Aranhinha] |cRXP_WARN_para treinar|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>==========================================
    >>|cRXP_WARN_Pule este passo se não houver inimigos próximos para completar o objetivo!|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .disablecheckbox
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 488 >>Entregue O Comando de Zenn
    .isQuestComplete 488
step
    #completewith GnarlpineCorruption
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os em busca de |cRXP_LOOT_Presas|r e |cRXP_LOOT_Pelegos|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
step
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    .accept 489 >>Aceite Consiga Redenção
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step
    #label SeekRedemption
step
    #label GnarlpineCorruption
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Athridas Mantursino|r
    .turnin 476 >>Entregue Corrupção Masca-Pinho
step << Priest
    .goto 1438/1,985.45,9905.43
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    .turnin 5621 >>Entregue Vestes da Lua
	.trainer >>Treine suas magias de classe
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áldia|r acima das escadas
    .turnin 87288 >>Entregue Pelegos Macios de Sabre
    .target Aldia
    .isQuestComplete 87288
step
    .goto 1438/1,984.94,9898.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 2438 >>Entregue O Apanhador de Sonhos de Esmeralda
    .target Tallonkai Swiftroot
    .accept 2459 >>Aceite Ferócitas, o Comedor de Sonhos
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    >>|cRXP_BUY_Compre e equipe um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_se você conseguir arcar com isso (2s 85c), se não pule este passo|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
	.vendor >>|cRXP_BUY_Compre até 800|r |T132382:0|t[Rough Flechas]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
	.trainer >>Treine suas magias de classe
    .target Dazalar
    .xp <8,1
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >>Treine suas magias de classe
    .target Jannok Breezesong
    .xp <8,1
step << Warrior
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio] |cRXP_BUY_se você pode pagar (5s 36c), se não, pule este passo|r
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
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
    .xp <8,1
step << Rogue
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete] |cRXP_BUY_se você pode pagar (4s 1c), se não, pule este passo|r
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
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala] |cRXP_BUY_se você pode pagar (5s 4c), se não, pule este passo|r
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
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 929 >>Entregue Coroa da Terra
    .target Corithras Moonrage
    .accept 933 >>Aceite Coroa da Terra
    .xp <8,1
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
	.trainer >>Treine suas magias de classe
    .target Kal
    .xp <8,1
step << Druid
    #completewith next
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os em busca de |cRXP_LOOT_Presas|r e |cRXP_LOOT_Pelegos|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step << Druid
    #completewith next
    .goto 1438/1,1030.46,10037.99,20,0
    .goto 1438/1,1043.70,10093.99,15 >>Vá para Vileza Pedra
step << Druid
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Abate o |cRXP_ENEMY_Senhor Málinus|r. Saque-o por sua |cRXP_LOOT_Cabeça|r
    >>O |cRXP_ENEMY_Senhor Málinus|r pode estar em vários locais de spawn diferentes em Vileza Pedra
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #completewith jewel
    +Coma os |T132834:0|t[|cRXP_LOOT_Ovos Assados com Erva|r] por 10 segundos para receber um |cRXP_WARN_bônus de 5% na experiência de morte de inimigos por 15 minutos|r.
    >>|cRXP_WARN_Lembre-se de reaplicar este bônus alimentar quando expirar|r
    .itemcount 6888,1
step
    #sticky
    #completewith jewel
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os em busca de |cRXP_LOOT_Presas|r e |cRXP_LOOT_Pelegos|r
    >>Abate os |cRXP_ENEMY_Corujas Strigid|r. Saque-os em busca de |cRXP_LOOT_Peninha|r
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r. Saque-os por seu |cRXP_LOOT_Silk|r e suas |cRXP_LOOT_Pernas|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob +Webwood Lurker
    .isOnQuest 488
step
    #completewith jewel
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os por suas |cRXP_LOOT_Presas|r e suas |cRXP_LOOT_Peles|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isNotOnQuest 488
step
    #sticky
	#completewith jewel
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para obter as |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_você precisa disto para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .isNotOnQuest 488
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Ao lado de uma árvore pequena
    .goto 1438/1,822.200,9948.500,6 >>Na pequena colina
    .goto 1438/1,809.800,9926.400,6 >>Ao lado da enorme árvore
    >>Saque os 3 |cRXP_LOOT_Fel Cones|r dos locais marcados no seu mapa
    >>|cRXP_WARN_Pule este passo se qualquer um deles não estiver lá e você não conseguir completar o objetivo|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 489 >>Entregue Consiga Redenção
    .itemcount 3418,3
    .isOnQuest 489
step
	#completewith jewel
    >>Saque os |cRXP_LOOT_Fel Cones|r no chão
    >>|cRXP_WARN_Eles geralmente estão localizados ao lado de troncos de árvore|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #completewith next
    >>Abate |cRXP_ENEMY_Místicos Gnarlpine|r
    >>|cRXP_WARN_Se não houver muitos |cRXP_ENEMY_Místicos Gnarlpine|r você pode ter que matar |cRXP_ENEMY_Guerreiros Gnarlpine|r para fazê-los aparecer|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto 1438/1,282.49,10018.65
	>>Mate |cRXP_ENEMY_Ferócitas, o Comedor de Sonhos|r. Saqueie o |T133288:0|t[|cRXP_LOOT_Colar de Masca-pinho|r]. |cRXP_WARN_Cuidado, pois ele pode|r |T132152:0|t[Surra] |cRXP_WARN_acertar você até três vezes de uma vez|r
    .use 8049 >>|cRXP_WARN_Use o |T133288:0|t[|cRXP_LOOT_Colar de Masca-pinho|r] para saquear|r |cRXP_LOOT_Joia de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto 1438/1,332.90,10064.46,30,0
    .goto 1438/1,282.49,10018.65
    >>Abate |cRXP_ENEMY_Místicos Gnarlpine|r
    >>|cRXP_WARN_Se não houver muitos |cRXP_ENEMY_Místicos Gnarlpine|r você pode ter que matar |cRXP_ENEMY_Guerreiros Gnarlpine|r para fazê-los aparecer|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #softcore
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step
    #softcore
    .goto 1438/1,953.07,9788.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brannol Lunáguia|r
    .vendor >>|cRXP_BUY_Visite o vendedor e repare se necessário|r
    .target Brannol Eaglemoon
step
    #completewith spiderLegs
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os por suas |cRXP_LOOT_Presas|r e suas |cRXP_LOOT_Peles|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
step
    .goto 1438/1,956.02,9736.83
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 929 >>Entregue Coroa da Terra
step
    .goto 1438/1,956.02,9736.83
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .accept 933 >>Aceite Coroa da Terra
step
    #sticky
    #completewith spiderLegs
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saqueie-os para obter as |cRXP_LOOT_Presas|r
    >>Abate os |cRXP_ENEMY_Strigid Owls|r. Saque sua |cRXP_LOOT_Peninha|r
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r. Saque seu |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Tenha cuidado pois|r |cRXP_ENEMY_Nightsabers|r |cRXP_WARN_e|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_se movem muito rapidamente!|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_também podem atrair socialmente outros|r |cRXP_ENEMY_Owls|r |cRXP_WARN_se você passar perto deles durante o combate com um|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .isOnQuest 488
step
    #sticky
	#completewith spiderLegs
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para obter as |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_você precisa disto para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto 1438/1,1655.21,9555.06,50 >>Viaje para as Piscinas de Arlithrien
step
	.goto 1438/1,1655.21,9555.06
    .use 5621 >>|cRXP_WARN_Use o|r |T134765:0|t[Frasco de Turmalina]|cRXP_WARN_ no Poço da Lua em Arlithrien|r
	.complete 933,1
step
    .goto 1438/1,1539.12,9437.98,40,0
    .goto 1438/1,1529.44,9325.64
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para obter as |cRXP_LOOT_Small Pernas de Aranha|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto 1438/1,1645.02,9245.89,50 >>Viaje para o sudoeste de Teldrassil
step
    #label spiderLegs
	.goto 1438/1,1645.02,9245.89
	>>Clique em |cRXP_PICK_Planta de Frutos Estranhos|r
	.accept 930 >>Aceite A Fruta Brilhante
step
    #hardcore
    #completewith next
    .goto 1438/1,956.02,9736.83,90 >>Viaje para Dolanaar
step
    #softcore
	#completewith next
    .goto 1438/1,1599.71,9509.25
    .deathskip >>Morra e renasça no cemitério de Dolanaar
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 933 >>Entregue Coroa da Terra
    .target Corithras Moonrage
    .accept 7383 >>Aceite Coroa da Terra
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
    >>|cRXP_WARN_Pule este passo se você já aprendeu magias de nível 8|r
	.trainer >>Treine suas magias de classe
    .target Kal
    .xp <8,1
step
    #label SpiderLegsEnd
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Treine Culinária
    .turnin 96634 >>Entregue Acampamento 101: Culinária
    .accept 4161 >>Aceite Recipe of the Kaldorei
    .turnin 4161 >>Entregue Receita dos Kaldorei
    .target Zarrin
step
    .goto 1438/1,902.1500,9754.2750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyoma|r
    +Compre 5 |T134059:0|t[Temperos Suaves] dela, use |T133971:0|t[|cRXP_FRIENDLY_Culinária|r] para cozinhar |T132834:0|t[|cRXP_LOOT_Ovos Assados com Erva|r] até acabar com as |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r]
    .collect 2678,5 --Mild Spices
    .disablecheckbox
    .itemcount 6889,1 --Small Egg
    .target Nyoma
    .skill cooking,<1,1
step
    #completewith Melenas
    +Coma os |T132834:0|t[|cRXP_LOOT_Ovos Assados com Erva|r] por 10 segundos para receber um |cRXP_WARN_buff de 5% de experiência por morte de inimigos durante 15 minutos|r
    >>|cRXP_WARN_Lembre-se de reaplicar este buff alimentar quando expirar|r
    .itemcount 6888,1
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    >>|cRXP_WARN_Pule este passo se você já aprendeu magias de nível 8|r
	.trainer >>Treine suas magias de classe
    .target Dazalar
    .xp <8,1
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    >>|cRXP_WARN_Pule este passo se você já aprendeu magias de nível 8|r
	.trainer >>Treine suas magias de classe
    .target Jannok Breezesong
    .xp <8,1
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
    >>|cRXP_WARN_Pule este passo se você já aprendeu magias de nível 8|r
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
    .xp <8,1
step
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os por suas |cRXP_LOOT_Presas|r e suas |cRXP_LOOT_Peles|r
    >>Abate os |cRXP_ENEMY_Strigid Owls|r. Saque sua |cRXP_LOOT_Peninha|r
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r. Saque seu |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Guarde qualquer|r |T132832:0|t[Pequeno Eggs] |cRXP_WARN_e|r |T134321:0|t[Aranhinha Pernas] |cRXP_WARN_para usar para subir|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>====================================================================================
    >>|cRXP_WARN_Pule este passo se não houver inimigos próximos para completar o objetivo!|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob +Nightsaber <<Druid
    .disablecheckbox << !Druid --Druids need the extra xp to get to 10 before going to Darn
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 488 >>Entregue O Comando de Zenn
    .isQuestComplete 488
step
    #label SeekRedemption
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    .accept 489 >>Aceite Consiga Redenção
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step << Warrior/Rogue
    .goto 1438/1,999.40,9902.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Byonsa|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Byancie
step << Priest
    .goto 1438/1,985.45,9905.43
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    >>|cRXP_WARN_Pule este passo se você já aprendeu magias de nível 8|r
	.trainer >>Treine suas magias de classe
step
    #optional
    #completewith next
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os por suas |cRXP_LOOT_Presas|r e suas |cRXP_LOOT_Peles|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step
    #completewith next
    .goto 1438/1,1030.46,10037.99,20,0
    .goto 1438/1,1043.70,10093.99,15 >>Vá para Vileza Pedra
step
    #optional
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Abate o |cRXP_ENEMY_Senhor Málinus|r. Saque-o por sua |cRXP_LOOT_Cabeça|r
    >>Você pode usar o |T134296:0|t[|cRXP_FRIENDLY_Cortado Garras Vodu|r] nele para reduzir severamente seu dano!
    >>O |cRXP_ENEMY_Senhor Málinus|r pode estar em vários locais de spawn diferentes em Vileza Pedra
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
    .itemcount 5457,1
step
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Abate o |cRXP_ENEMY_Senhor Málinus|r. Saque-o por sua |cRXP_LOOT_Cabeça|r
    >>O |cRXP_ENEMY_Senhor Málinus|r pode estar em vários locais de spawn diferentes em Vileza Pedra
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
    .itemcount 5457,<1
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Ao lado de uma árvore pequena
    .goto 1438/1,822.200,9948.500,6 >>Na pequena colina
    .goto 1438/1,809.800,9926.400,6 >>Ao lado da enorme árvore
    >>Saque os 3 |cRXP_LOOT_Fel Cones|r dos locais marcados no seu mapa
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 489 >>Entregue Consiga Redenção
    .itemcount 3418,3
    .isOnQuest 489
step << Priest/Druid
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áldia|r subindo as escadas
    .turnin 87288 >>Entregue Peles Macias de Saber
    .target Aldia
    .isQuestComplete 87288
step << Priest/Druid
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 932 >>Entregue Aversão Pervertida
    .turnin 2459 >>Entregue Ferócitas, o Comedor de Sonhos
step
    #optional
    #completewith Ambushers
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os por suas |cRXP_LOOT_Presas|r e suas |cRXP_LOOT_Peles|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada a oeste de Dolanaar. Ela também pode estar ocupada lutando contra furlbogs em emboscada, neste caso você terá que esperar que ela termine|r
    .accept 487 >>Aceite A Estrada para Darnassus
    .target Moon Priestess Amara
step
    #label Ambushers
    .goto 1438/1,1441.87,10032.56
    >>Mate os |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Druid/Priest
    .goto 1438/1,1172.01,9917.17
    >>Procure Sacerdotisa da Lua Amara, ela patrulha a estrada oeste de Dolanaar
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    .turnin 487 >>Entregue A Estrada para Darnassus
step
    #completewith next
    .goto 1438/1,1863.46,10665.16,50 >>Vá para A Clareira do Oráculo
step
    .goto 1438/1,1899.700,10582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinel Eralya Sombrafolha::275683|r
    .target Sentinel Eralya Leafshadow::275683
    .turnin 99046 >>Entregue A Corredora Perdida
    .accept 99047 >>Aceite Não Morto Ainda
step
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .accept 937 >>Aceite A Clareira Encantada
step
    .goto 1438/1,1857.86,10676.36
    .use 18152 >>|cRXP_WARN_Use o|r |T134798:0|t[Frasco de Ametista] |cRXP_WARN_no poço lunar de O Oráculo Glade|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)

--with the new quests, druids can go straight to 10, a 5 minute save later down the road
--@TODO add mist here
step << Druid/Priest
    #completewith next
    >>Mate as |cRXP_ENEMY_Harpias Sangue-Pena|r. Saqueie-as para obter os |cRXP_LOOT_Cintos|r
    >>|cRXP_ENEMY_Sangue-Pena Matriarcas|r |cRXP_WARN_lançam|r |T136052:0|t[Onda Curativa] |cRXP_WARN_e|r |T136048:0|t[Raio] |cRXP_WARN_que causam muito dano. Tente matá-las rápido|r
    >>|cRXP_WARN_Evite lutar com eles o máximo que puder|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Druid/Priest
    .goto 1438/1,2208.67,10758.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    .accept 938 >>Aceite Bruma
    .target Mist
step << Druid/Priest
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    >>|cRXP_WARN_Tenha em mente: esta é uma missão cronometrada e você precisa entregá-la dentro de 10 minutos de aceitar|r
    .turnin 938 >>Entregue Bruma
step
    #completewith xp10 <<!Druid !Priest
	#label harpies
    .goto 1438/1,2102.82,10819.27,0,0
    >>Mate as |cRXP_ENEMY_Harpias Sangue-Pena|r. Saqueie-as para obter os |cRXP_LOOT_Cintos|r
    >>|cRXP_ENEMY_Sangue-Pena Matriarcas|r |cRXP_WARN_lançam|r |T136052:0|t[Onda Curativa] |cRXP_WARN_e|r |T136048:0|t[Raio] |cRXP_WARN_que causam muito dano. Tente matá-las rápido|r
    >>|cRXP_WARN_Evite lutar com eles o máximo que puder|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Druid/Priest
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 937 >>Entregue A Clareira Encantada
    .accept 98392 >>Aceite Trevas na Clareira
    .target Sentinel Arynia Cloudsbreak
step << Druid/Priest
    .goto 1438/1,2032.50,10500.90--c:Teldrassil,35.0,39.2
    >>|T133288:0|tAbate a |cRXP_ENEMY_Hatescreech|r. Saque-a por seu |cRXP_LOOT_Amuleto|r
    .complete 98392,1
    .mob Hatescreech
step << Druid/Priest
    .goto 1438/1,2103.78,10623.08--c:Teldrassil,33.6,35.6
    >>|T133333:0|tAbate a |cRXP_ENEMY_Windmistress Gaedress|r. Saque-a por seu |cRXP_LOOT_Amuleto|r
    .complete 98392,2
    .mob Windmistress Gaedress
step << Druid/Priest
    .goto 1438/1,2042.68,10860.64--c:Teldrassil,34.8,28.6
    >>Mate a |cRXP_ENEMY_Witchmother Arysa|r. Saqueie o |T133324:0|t[|cRXP_LOOT_Amulet|r]
    >>|cRXP_ENEMY_Witchmother Arysa|r e |cRXP_ENEMY_Bloodfeather Matriarchs|r |cRXP_WARN_lançam|r |T136052:0|t[Onda Curativa] |cRXP_WARN_e|r |T136048:0|t[Raio] |cRXP_WARN_que fazem muito dano. Tente derrotá-los rapidamente|r
    >>|cRXP_WARN_Evite lutar contra as Matriarcas o máximo que puder|r
    .complete 98392,3
    .mob Witchmother Arysa
step
    .goto 1438/1,2052.36,10854.19
    >>Clique na |cRXP_PICK_Planta de Fronde Estranha|r
    .accept 931 >>Aceite A Fronde Cintilante
step << Druid/Priest
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 98392 >>Entregue Trevas no Glade
    .accept 98398 >>Aceite A Árvore do Oráculo
    .target Sentinel Arynia Cloudsbreak
step << Druid/Priest
    .goto 1438/1,1932.400,10673.500
    >>Vá para o |cRXP_FRIENDLY_Oracle Árvore Latido|r
    .turnin 98398 >>Entregue O Oráculo Árvore
    .accept 940 >>Aceite Teldrassil
step << Druid/Priest
    #label xp10
    .xp 10-900 >>Farme até estar a 900 XP do nível 10 (5600/6500)
step << Hunter
    #completewith xp10
    #label mist1
    .goto 1438/1,2208.67,10758.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    .accept 938 >>Aceite Bruma
    .target Mist
step << Hunter
    #sticky
    #label xp10
    --@TODO change the XP req here
    .xp 9+2250 >>Farme até estar a 2250 XP do nível 9 (2250/6500)
    >>|cRXP_WARN_Quando você atingir este ponto de xp, pule a missão Hárpia/Escolta e vá direto para Darnassus. Você terá outra oportunidade para terminar essas missões mais tarde|r
step << Hunter
    #completewith xp10
    #requires mist1
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    >>|cRXP_WARN_Tenha em mente: esta é uma missão cronometrada e você precisa entregá-la dentro de 10 minutos de aceitar|r
    .turnin 938 >>Entregue Bruma
step << Hunter
    #completewith xp10
	#requires harpies
    .goto 1438/1,1863.46,10665.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 937 >>Entregue A Clareira Encantada
    .target Sentinel Arynia Cloudsbreak
step << !Rogue
    #softcore
    #requires xp10
    #completewith next
    .deathskip >>Morra e reaparça no Anjo da Cura em Darnassus
    >>|cRXP_WARN_Certifique-se de estar mais perto do cemitério de Darnassus do que do de Dolanaar, senão você pode acabar indo na direção errada. Corra completamente para fora da toca e depois morra se você não tiver certeza sobre isso|r << sod Priest
    >>|cRXP_WARN_Certifique-se de estar mais perto do cemitério de Darnassus do que do de Dolanaar, senão você pode acabar indo na direção errada. Corra para o lado oeste do rio se você não tiver certeza sobre isso|r << sod Hunter/sod Warrior/sod Druid
    .target Anjo da Cura
step << !Rogue
    #hardcore
    #completewith next
    >>Abate as |cRXP_ENEMY_Bloodfeather Harpies|r no caminho para Darnassus. Saque-as por seus |cRXP_LOOT_Belts|r. |cRXP_WARN_Você não precisa completar este objetivo agora|r
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
    .goto 1457/1,2070.42,9979.310,100 >>Viagem para Darnassus
step << Hunter
    .goto 1457/1,2316.49,9924.41
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    .vendor >>|cRXP_BUY_Venda|r seu lixo de vendedor
    .target Ariyell Skyshadow
step << Hunter
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossipid 96881
    .train 227 >>Treine Cajados
    >>Se você tem um Cajado na mochila, equipe-o
    .target Ilyenia Moonfire
step << Priest
    #ah
    #optional
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vaean|r
    >>|cRXP_WARN_Pule este passo se preferir comprar|r |T135139:0|t[|cRXP_FRIENDLY_Varinha de Magia Menor|r] |cRXP_WARN_da Casa de Leilões|r
    >>Verifique se ele tem a |T132867:0|t[|cRXP_FRIENDLY_Essência de Magia Menor|r] para venda. Se tiver, compre-a. Você precisará dela para criar uma |T135139:0|t[|cRXP_LOOT_Varinha|r]
    .collect 10938,1 --Lesser Magic Essence
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
    .target Vaean
step << Priest
    #ssf
    #optional
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vaean|r
    >>Verifique se ele tem a |T132867:0|t[|cRXP_FRIENDLY_Essência de Magia Menor|r] para venda. Se tiver, compre-a. Você precisará dela para criar uma |T135139:0|t[|cRXP_LOOT_Varinha|r]
    .collect 10938,1 --Lesser Magic Essence
    .target Vaean
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
step << Priest
    .goto 1457/1,2315.900,10148.200
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lalina Summermoon|r
    .train 7411 >>Treine |T136244:0|t[|cRXP_LOOT_Encantamento|r]. Você precisará disso para criar uma |T135139:0|t[|cRXP_LOOT_Varinha|r]
    .target Lalina Summermoon
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vaean|r
    >>|cRXP_BUY_Compre os seguintes materiais dele:|r
    .collect 6217,1 --Copper Rod (1)
    .collect 247786,9 --Mote of Magic (9)
    .collect 4470,9 --Simple Wood (9)
    .target Vaean
    .skill enchanting,10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>Usar |T136244:0|t[|cRXP_LOOT_Encantamento|r] na |cRXP_WARN_aba de profissão|r para criar um |T135225:0|t[|cRXP_LOOT_Bastão Rúnico de Cobre|r]
    .collect 6218,1 --Runed Copper Rod
    .skill enchanting,10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    +Usar |T136244:0|t[|cRXP_LOOT_Encantamento|r] na |cRXP_WARN_aba de profissão|r para criar |T135645:0|t[|cRXP_LOOT_Varinhas de Prática Iniciante|r] |cRXP_WARN_até atingir 10 de encantamento|r
    .skill enchanting,10,1
step << Priest
    #optional
    .goto 1457/1,2315.900,10148.200
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lalina Summermoon|r
    .train 14293 >>Aprenda a |T135139:0|t[|cRXP_FRIENDLY_Varinha de Magia Menor|r]
    .target Lalina Summermoon
    .skill enchanting,<10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>Usar |T136244:0|t[|cRXP_LOOT_Encantamento|r] na |cRXP_WARN_aba de profissão|r para criar uma |T135139:0|t[|cRXP_FRIENDLY_Varinha de Magia Menor|r]
    .collect 11287,1 --Lesser Magic Wand
    .skill enchanting,<10,1
step << Priest
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135139:0|t[|cRXP_FRIENDLY_Varinha de Magia Menor|r]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12
step << Priest
    #ah
    #optional
    .goto 1457/1,2343.10,9856.95,-1
    .goto 1457/1,2341.74,9872.610,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>|T134711:0|t[Óleo Menor de Teurgo] |cRXP_WARN_e|r |T133906:0|t[Sabichão Defumado] |cRXP_WARN_fornecerão um grande aumento de DPS nos níveis iniciais|r
    >>|cRXP_WARN_Procure por atualizações|r |T132317:0|t[Varinha] |cRXP_WARN_com DPS alto que você pode usar agora/em breve|r
    *|cRXP_WARN_Pule este passo se não quiser comprar nada|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
step << !Rogue
    #requires xp10
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 922 >>Entregue Rellian Spiraverde
    .target Rellian Greenspyre
    .accept 923 >>Aceite Tumors
step << Druid NightElf/Priest NightElf
    #optional
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r
    .turnin 940 >>Entregue em Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >>Aceite Bosque dos Antigos
    .xp 10,1
step << Druid NightElf
    .goto 1457/1,2572.300,10185.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denatharion::4218|r
    .target Denatharion::4218
    .accept 5923 >>Aceite Atendendo o chamado
    .isNotOnQuest 5925
step << Druid NightElf
    .isOnQuest 5923
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r no nível intermediário
    .turnin 5923 >>Entregue Heeding the Call - Missão
    .accept 5921 >>Aceite Moonglade
	.trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << Druid NightElf
    .isOnQuest 5925
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r no nível intermediário
    .turnin 5925 >>Entregue Heeding the Call - Missão
    .accept 5921 >>Aceite Moonglade
	.trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << Druid NightElf
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r no nível intermediário
    .accept 5921 >>Aceite Moonglade
    .target Mathrengyl Bearwalker
step << !Rogue
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinel Dalia Gumélion|r
    .accept 98067 >>Aceite Olhos das Sentinelas
    .target Sentinel Dalia Sunblade
step << !Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa A'mura|r no andar de cima
    .accept 2518 >>Aceite Lágrima da Lua
step << Priest
    .goto Darnassus,40.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Alathea|r no andar de cima
    .accept 5627 >>Aceite Cinturão Estelar de Elune
    .turnin 5627 >>Entregue Cinturão Estelar de Elune
    .target Priestess Alathea
step << Druid NightElf
	#completewith next
	.cast 18960 >>Lance Teleporte: Clareira da Lua
    >>|cRXP_WARN_Estará em seu grimório|r
	.zoneskip Moonglade
step << Druid NightElf
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 5921 >>Vá para Moonglade
    .target Dendrite Starblaze
    .accept 5929 >>Aceite Espírito do Grande Urso
step << Druid NightElf
    .goto 1450/1,-2422.77,8079.37,15,0
    .goto 1450/1,-2285.42,8069.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito do Grande Urso|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid NightElf
	#completewith next
	.cast 18960 >>Lance Teleporte: Clareira da Lua
    >>|cRXP_WARN_Isso o fará voltar mais rápido|r
step << Druid NightElf
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 5929 >>Entregue Espírito do Grande Urso
    .target Dendrite Starblaze
    .accept 5931 >>Aceite De Volta a Darnassus - Missão
step
    #requires xp10 << Rogue
    .hs >>Use sua Pedra de Retorno para Dolanaar
    .subzoneskip 186
step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99047 >>Entregue Ainda Não Morto
    .accept 99050 >>Aceite A Grande Árvore Fornece << !Druid
step << !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narret Shadowgrove|r
    .goto 1438/1,1000.400,9891.900
    >>|cRXP_BUY_Compre uma|r |T134864:0|t[Ampola Vazia] |cRXP_BUY_dele|r
    .collect 3371,1 --Empty Vial
    .target Narret Shadowgrove
step
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 932 >>Entregue Aversão Pervertida
    .turnin 2459 >>Entregue Ferócitas, o Comedor de Sonhos
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áldia|r acima das escadas
    .turnin 87288 >>Entregue Pelegos Macios de Sabre
    .target Aldia
    .isQuestComplete 87288
step
    >>Abate os |cRXP_ENEMY_Nightsabers|r. Saque-os em busca de |cRXP_LOOT_Presas|r e |cRXP_LOOT_Pelegos|r
    >>Abate os |cRXP_ENEMY_Corujas Strigid|r. Saque-os em busca de |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saqueie o |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Guarde|r |T132832:0|t[Pequenos Ovos] |cRXP_WARN_e|r |T134321:0|t[Pernas de Aranhinha] |cRXP_WARN_para treinar|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>====================================================================================
    >>|cRXP_WARN_Pule este passo se não houver inimigos próximos para completar o objetivo!|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .disablecheckbox
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 488 >>Entregue O Comando de Zenn
    .isQuestComplete 488
step
    .abandon 488 >>Abandone O Comando de Zenn
step
    #label SeekRedemption
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    .accept 489 >>Aceite Consiga Redenção
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Ao lado de uma árvore pequena
    .goto 1438/1,822.200,9948.500,6 >>Na pequena colina
    .goto 1438/1,809.800,9926.400,6 >>Ao lado da enorme árvore
    >>Saque os 3 |cRXP_LOOT_Fel Cones|r dos locais marcados no seu mapa
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 489 >>Entregue Consiga Redenção
    .itemcount 3418,3
    .isOnQuest 489
step << Hunter
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala] |cRXP_BUY_se você pode pagar (5s 4c), se não, pule este passo|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
	.vendor >>|cRXP_BUY_Compre 4 pilhas de|r |T132382:0|t[Sharp Flechas]|cRXP_BUY_. Equipe-as assim que atingir o nível 10|r
    .target Jeena Featherbow
step << Hunter/Warrior/Rogue
    .goto 1438/1,1172.01,9917.17
    >>Procure Sacerdotisa da Lua Amara, ela patrulha a estrada oeste de Dolanaar
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
    .goto 1438/1,928.83,9812.34
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >>Aceite Adestramento da Fera - Missão
	.train 13165 >>Treine seus feitiços de nível 10
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto 1438/1,764.68,9835.73
    .use 15921 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Tocaieira Lenhateia|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >>Entregue Adestramento da Fera - Missão
    .target Dazalar
    .accept 6101 >>Aceite Adestramento da Fera - Missão
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 7383 >>Entregue Coroa da Terra
    .target Corithras Moonrage
    .accept 935 >>Aceite Coroa da Terra
step << !Druid
    #completewith DenalanEnd
    >>Mate todos os |cRXP_ENEMY_Lasher Sproutlings|r que você vê no caminho para Denalan. Saqueie-os para obter |T237424:0|t[|cRXP_LOOT_Dewy Açoitadeira Fronds|r]
    .complete 99050,1
    .mob Lasher Sproutling
step
	.goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >>Entregue A Fronde Cintilante
    .turnin 930 >>Entregue A Fruta Brilhante
step
	.goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >>Entregue O Coração Enroscado em Musgo
    .isOnQuest 927
step
	.goto 1438/1,719.87,9503.48
	>>Clique em |cRXP_LOOT_Denalans Planter|r
	.turnin 941 >>Entregue Plantando Coração
	.isQuestTurnedIn 927
step
    .goto 1438/1,719.400,9503.900
    >>Espere |cRXP_FRIENDLY_Denalan|r terminar a encenação. Mate os |cRXP_ENEMY_Boglings|r para obter |T134187:0|t[|cRXP_LOOT_Bogling Raízes|r] e pegue o |cRXP_PICK_Sprouted Frond|r
    >>|T134184:0|t[Frondes Brotadas] |cRXP_WARN_que você obtém como recompensa são itens de cura instantânea que não compartilham recarga com poções de HP!|r
    .accept 2399 >>Aceite The Sprouted Fronds
    .turnin 2399 >>Entregue The Sprouted Fronds
step
    #label DenalanEnd
step << Hunter
    .goto 1438/1,627.20,9380.96
    .use 15922 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Sabre-da-noite Espreitador|r
    >>|cRXP_WARN_Você deve clicar com o botão direito na Moldura de Mascote e dispensar seu mascote antes de poder domar outro|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step << !Druid
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Conclua matando os |cRXP_ENEMY_Lasher Sproutlings|r. Saqueie-os para obter |T237424:0|t[|cRXP_LOOT_Dewy Açoitadeira Fronds|r]
    .complete 99050,1
    .isOnQuest 6101 << Hunter --Hunter only finishes here if already on the cat quest
    .mob Lasher Sproutling
step
    #label L10
    .xp 10-850 << !Hunter !Druid
    .xp 10 << Hunter
    .itemcount 280087,<6
step
#optional
    #label L10
    .xp 10-1475 << !Hunter
    .xp 10-625 << Hunter
    .isQuestComplete 87288
step << !Druid
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,1 --Refreshing Spring Water (1)
    .isOnQuest 99050
    .xp >10,1
step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99050 >>Entregue The Great Árvore Provides
    .accept 99073 >>Aceite Aliviando Sofrimento
    .xp >10,1
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áldia|r subindo as escadas
    .turnin 87288 >>Entregue Peles Macias de Saber
    .target Aldia
    .isQuestComplete 87288
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
    .accept 1684 >>Aceite Elanaria
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >>Treine suas magias de classe
    .train 5171 >>Treine |T132306:0|t[Retalhar]
    .train 921 >>Aprenda |T133644:0|t[Bater Carteira] também, que é necessária para sua missão de Ladino nível 10
    .target Jannok Breezesong
step << Hunter
    .goto 1438/1,928.83,9812.34
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >>Aceite Adestramento da Fera - Missão
	.trainer >>Treine suas magias de classe
step << Hunter
    .goto 1438/1,764.68,9835.73
    .use 15921 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Tocaieira Lenhateia|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >>Entregue Adestramento da Fera - Missão
    .target Dazalar
    .accept 6101 >>Aceite Adestramento da Fera - Missão
step << Hunter
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Lasher Sproutlings|r que você vê no caminho para o gato. Saqueie-os para obter |T237424:0|t[|cRXP_LOOT_Dewy Açoitadeira Fronds|r]
    .complete 99050,1
    .mob Lasher Sproutling
step << Hunter
    .goto 1438/1,627.20,9380.96
    .use 15922 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Sabre-da-noite Espreitador|r
    >>|cRXP_WARN_Você deve clicar com o botão direito na Moldura de Mascote e dispensar seu mascote antes de poder domar outro|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << !Druid
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Conclua matando os |cRXP_ENEMY_Lasher Sproutlings|r. Saqueie-os para obter |T237424:0|t[|cRXP_LOOT_Dewy Açoitadeira Fronds|r]
    .complete 99050,1
    .mob Lasher Sproutling
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >>Entregue Adestramento da Fera - Missão
    .target Dazalar
    .accept 6102 >>Aceite Adestramento da Fera - Missão
step << Hunter
    .goto 1438/1,520.28,9567.62
    .use 15923 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Guinchadora Estrígida|r
    >>|cRXP_WARN_Você deve clicar com o botão direito na Moldura de Mascote e dispensar seu mascote antes de poder domar outro|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >>Entregue Adestramento da Fera - Missão
    .target Dazalar
    .accept 6103 >>Aceite Treinamento da Fera - Missão
step << Warrior
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada oeste de Dolanaar|r
    .accept 1684 >>Aceite Elanaria
    .target Moon Priestess Amara
step << Rogue
    .goto 1438/1,943.85,9790.28
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .accept 2241 >>Aceite The Maçã Falls
step << !Druid
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,1 --Refreshing Spring Water (1)
    .isOnQuest 99050
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
	.trainer >>Treine suas magias de classe
    .target Laurna Morninglight
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto 1438/1,947.57,9812.38
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre uma|r |T135145:0|t[Bengala]
    >>|cRXP_WARN_Você vai equipar isto mais tarde. Pule este passo se você encontrou um bastão diferente|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99050 >>Turn in The Great Tree Provides
    .accept 99073 >>Aceite Aliviando Sofrimento
step
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada oeste de Dolanaar|r
    .turnin 487 >>Entregue A Estrada para Darnassus
    .target Moon Priestess Amara
step
    #optional
    .abandon 87288 >>Abandone Soft Saber Pelts - você não voltará para Dolanaar
step << Rogue
    #softcore
    #completewith next
    .goto 1438/1,1574.25,9978.26
    .deathskip >>Depois que você passar pela área de furbolg, morra de propósito e ressurja no cemitério de Darnassus
    .target Anjo da Cura
step << Rogue
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >>Viagem para Darnassus
step << Rogue
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 922 >>Entregue Rellian Spiraverde
    .target Rellian Greenspyre
    .accept 923 >>Aceite Tumors
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >>Entregue The Maçã Falls
    .target Syurna
    .accept 2242 >>Aceite Destino Calls
step << Rogue
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinel Dalia Gumélion|r
    .accept 98067 >>Aceite Olhos das Sentinelas
    .target Sentinel Dalia Sunblade
step << Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .accept 2518 >>Aceite Lágrima da Lua
step << Rogue
    .goto 1457/1,2009.100,9986.601
    >>Vá para os Portões de Darnassus e use o |T133298:0|t[|cRXP_LOOT_Pingente Lunar|r]
    .complete 98067,4
    .use 279378
step << Hunter
    #sticky
	.goto 1438/1,1716.82,10324.42,0
	.goto 1438/1,1564.07,10480.54,0
	.goto 1438/1,1492.78,10765.61,0
	.goto 1438/1,1900.12,10853.85,0
    >>Use |T132164:0|t[Domar Fera]|r em uma |cRXP_ENEMY_Caçadora Estrígida|r para domá-la -- .tame 1997
    .train 2981 >>Ataque criaturas com ele para aprender [Garra (Grau 2)]
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
	.unitscan Strigid Hunter
step
    .goto 1438/1,1691.36,10412.66
	>>Mate os |cRXP_ENEMY_Timberling Tramplers|r, os |cRXP_ENEMY_Timberling Charco Beasts|r e os |cRXP_ENEMY_Elder Timberlings|r. Saqueie-os pelos seus |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
    #loop
    .goto 1438/1,1828.600,10964.800
    >>Mate |cRXP_ENEMY_Lady Sathrah|r. Saqueie-a pelo seu |cRXP_LOOT_Spinnerets|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_pode aparecer em 3 locais diferentes, verifique seu mapa para um caminho recomendado|r
    >>|cRXP_WARN_Cabeça para o norte ao longo do rio e verifique o ponto de desova mais ao leste primeiro. Trabalhe na|r |T134339:0|t[Tumors]|cRXP_WARN_ missão conforme você avança|r
    >>|cRXP_WARN_Se ela não estiver a leste do rio complete a|r |T134339:0|t[Tumors]|cRXP_WARN_ missão antes de ir para o oeste|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step
    .goto 1438/1,1864.47,10667.19
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .accept 937 >>Aceite A Clareira Encantada
step << Rogue
    .goto 1438/1,1879.75,10976.02
    >>Use|cRXP_WARN_ |T133644:0|t[Bater Carteira]|r em|cRXP_ENEMY_ Sethir, o Antigo|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_ENEMY_Sethir, o Antigo|r |cRXP_WARN_caminha ao longo do grande galho da árvore|r
    >>|cRXP_WARN_Evite lutar contra |cRXP_ENEMY_Sethir, o Antigo|r. Deixe-o passar por você, então|r |T132320:0|t[Furtividade] |cRXP_WARN_e|r |T133644:0|t[Bater Carteira] |cRXP_WARN_quando você estiver atrás dele|r
    .complete 2242,1
    .mob Sethir the Ancient
step
    #sticky
	#label harpies2
    .goto 1438/1,2102.82,10819.27,0,0
    >>Mate as |cRXP_ENEMY_Harpias Sangue-Pena|r. Saqueie-as para obter os |cRXP_LOOT_Cintos|r
    >>|cRXP_ENEMY_Sangue-Pena Matriarcas|r |cRXP_WARN_lançam|r |T136052:0|t[Onda Curativa] |cRXP_WARN_e|r |T136048:0|t[Raio] |cRXP_WARN_que causam muito dano. Tente matá-las rápido|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
    .goto 1438/1,2208.67,10758.15
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    >>|cRXP_WARN_Pular esta missão se o NPC não estiver lá|r
    .accept 938 >>Aceite Bruma
step
    .goto 1438/1,1864.47,10663.80
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    >>|cRXP_WARN_Tenha em mente: esta é uma missão cronometrada e você precisa entregá-la dentro de 10 minutos de aceitar|r
    .turnin 938 >>Entregue Bruma
    .isOnQuest 938
step
    #requires harpies2
    #label TeldrassilEnd
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 937 >>Entregue A Clareira Encantada
    .accept 98392 >>Aceite Trevas na Clareira
    .target Sentinel Arynia Cloudsbreak
step
    .isOnQuest 99073
    .goto 1438/1,1899.700,10582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinel Eralya Sombrafolha::275683|r
    .target Sentinel Eralya Leafshadow::275683
    .turnin 99073 >>Entregue Easing Sofrimento
step
    .goto 1438/1,2032.50,10500.90--c:Teldrassil,35.0,39.2
    >>|T133288:0|tAbate a |cRXP_ENEMY_Hatescreech|r. Saque-a por seu |cRXP_LOOT_Amuleto|r
    .complete 98392,1
    .mob Hatescreech
step
    .goto 1438/1,2103.78,10623.08--c:Teldrassil,33.6,35.6
    >>|T133333:0|tAbate a |cRXP_ENEMY_Windmistress Gaedress|r. Saque-a por seu |cRXP_LOOT_Amuleto|r
    .complete 98392,2
    .mob Windmistress Gaedress
step
    .goto 1438/1,2042.68,10860.64--c:Teldrassil,34.8,28.6
    >>Mate a |cRXP_ENEMY_Bruxa-Mãe Arysa|r. Saqueie-a para obter o |T133324:0|t[|cRXP_LOOT_Amuleto|r]
    .complete 98392,3
    .mob Witchmother Arysa
step
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 98392 >>Entregue Trevas no Glade
    .accept 98398 >>Aceite A Árvore do Oráculo
    .target Sentinel Arynia Cloudsbreak
step
    .goto 1438/1,1932.400,10673.500
    >>Vá para o |cRXP_FRIENDLY_Oracle Árvore Latido|r
    .turnin 98398 >>Entregue O Oráculo Árvore
    .accept 940 >>Aceite Teldrassil
step
    #softcore
	#completewith darn << era
    #completewith darnSoD << sod
    .deathskip >>Morra e renasça no cemitério de Darnassus
    >>|cRXP_WARN_Certifique-se de que você está no lado oeste do rio ou você pode acabar indo pelo caminho errado|r << sod
    .target Anjo da Cura
step
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >>Viagem para Darnassus
step
    #hardcore
    #completewith next
    #season 2
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >>Viagem para Darnassus
step << !Warrior
    --@TODO add note that u need to wait for the other player owl to despawn
    .goto 1457/1,2009.100,9986.601
    >>Vá para os Portões de Darnassus e use o |T133298:0|t[|cRXP_LOOT_Lunar Pendant|r]
    .complete 98067,4
    .use 279378
step << !Warrior
    .goto 1457/1,2190.34,9918.06
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >>Aceite Nessa Cantonegro
step
    #softcore
    #label darn
    #optional
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >>Viagem para Darnassus
step
	.abandon 927 >>Abandone O Coração Enroscado em Musgo. Você nunca tem uma oportunidade para entregá-la.
step << Warrior
    .goto 1457/1,2331.89,9994.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >>Entregue para Elanaria
    .target Elanaria
    .accept 1683 >>Aceite Vorlus Cascruel
step << Warrior
    .goto 1457/1,2190.34,9918.06
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >>Aceite Nessa Cantonegro
step << Warrior
    .goto 1457/1,2009.100,9986.601
    >>Vá para os Portões de Darnassus e use o |T133298:0|t[|cRXP_LOOT_Lunar Pendant|r]
    .complete 98067,4
    .use 279378
step << Warrior
    #sticky
    #completewith next
    .goto 1438/1,1334.94,9720.34,18 >>Viaje para |cRXP_ENEMY_Vorlus Cascruel|r
step << Warrior
    .goto 1438/1,1411.32,9669.43
    >>Mate |cRXP_ENEMY_Vorlus Cascruel|r. Saque-o pelo seu |cRXP_LOOT_Chifre|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
    #softcore
	#sticky
    #completewith next
    .goto 1438/1,1594.62,9988.44
    .deathskip >>Morra de propósito depois que você passar pela área dos Furbolg e renasça em Darnassus
step << Warrior
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >>Viagem para Darnassus
step << Warrior
    .goto 1457/1,2331.89,9994.09
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >>Entregue Vorlus Cascruel
--	.accept 1686 >> Accept The Shade of Elura
step
    .goto 1457/1,2240.100,10121.000
    >>Vá para a Estalagem de Darnassus e use o |T133298:0|t[|cRXP_LOOT_Lunar Pendant|r]
    .complete 98067,3
    .use 279378
step << Druid NightElf
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r no nível intermediário
    .turnin 5931 >>Entregue De Volta para Darnassus - Missão
    .target Mathrengyl Bearwalker
    .accept 6001 >>Aceite Corpo e Coração
step
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r
    .turnin 940 >>Entregue em Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >>Aceite Bosque dos Antigos
step
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r
    .target Arch Druid Fandral Staghelm
    .turnin 935 >>Entregue Coroa da Terra
step << Hunter
    .goto 1457/1,2511.04,10178.01
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >>Entregue Treinamento da Fera - Missão
step << Hunter
    >>Suba pela rampa à direita de |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silvaria|r
    .goto 1457/1,2491.75,10176.21
    .trainer >>Treine habilidades de mascote
    .target Silvaria
step
    .goto 1457/1,2579.300,10129.000
    >>Vá para a entrada do Bastião Cenarion e use o |T133298:0|t[|cRXP_LOOT_Lunar Pendant|r]
    .complete 98067,1
    .use 279378
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >>Entregue Destino Calls
step
    .goto 1457/1,2534.25,10085.60
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 923 >>Entregue Tumors
step
    .goto 1457/1,2499.900,9932.601
    >>Vá para o Banco de Darnassus e use o |T133298:0|t[|cRXP_LOOT_Lunar Pendant|r]
    .complete 98067,2
    .use 279378
step
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinel Dalia Gumélion|r
    .turnin 98067 >>Entregue Olhos das Sentinelas
    .target Sentinel Dalia Sunblade
step
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .turnin 2518 >>Entregue Lágrima da Lua
    .target Priestess A'moora
    .accept 2520 >>Aceite Sathrah's Sacrificar
step
    .goto 1457/1,2518.20,9632.80
	.use 8155 >>|cRXP_WARN_Use|r |T135652:0|t[Sathrah's Sacrificar] |cRXP_WARN_na fonte|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .turnin 2520 >>Entregue Sathrah's Sacrificar
-- step << Druid
-- #ssf
--     #season 0
--     .goto 1457/1,2430.89,9758.21
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firodren Mooncaller|r
--     .train 2366 >> Train |T136065:0|t[Herbalism]
--     >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
--     .target Firodren Mooncaller
step
    #ah
    .goto 1457/1,2343.10,9856.95,-1
    .goto 1457/1,2341.74,9872.610,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Compre os itens a seguir para entrega imediata em Costa Negra mais tarde:
    -- >>|T134187:0|t[Earthroot] << Druid era
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133972:0|t[Strider Carne]
    >>|T134711:0|t[Óleo Menor de Teurgo] << Priest/Druid
    >>|T133906:0|t[Sabichão Defumado] << Priest/Druid
    >>|T134711:0|t[Óleo Menor de Teurgo] |cRXP_WARN_e|r |T133906:0|t[Sabichão Defumado] |cRXP_WARN_fornecerão um grande aumento de DPS nos níveis iniciais|r << Priest/Druid
    >>|cRXP_WARN_Procure por atualizações|r |T132317:0|t[Varinha] |cRXP_WARN_com DPS alto que você pode usar agora/em breve|r << Priest
    *|cRXP_WARN_Pule este passo se não quiser comprar nada|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    -- .collect 2449,5,6123,1 << Druid
    .collect 20744,1 << Priest/Druid -- Minor Wizard Oil (1)
    .collect 21072,20 << Priest/Druid -- Smoked Sagefish (20)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto 1457/1,2258.91,9793.71
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tProcure |cRXP_FRIENDLY_Jaeana|r, ela patrulha ao redor de Tradesmen's Terrace
    >>Compre uma pilha de|cRXP_BUY_ |T133972:0|t[Fortalecer Jerky] |rdela|cRXP_BUY_.
    >>|cRXP_WARN_Você precisará dela para alimentar sua coruja, elas apenas comem carne e não há vendedor de carne em Costa Negra|r
    .collect 117,15
    .target Jaeana
step << Hunter/Warrior/Priest/Sod Rogue
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossipid 96881
    .train 227 >>Treine Cajados << Hunter/Warrior/Priest
    .train 265 >>Treine Arcos << Sod Rogue
    >>Se você tem um Cajado na mochila, equipe-o << Hunter
    >>Se você tem um Arco na mochila, equipe-o << Rogue
    .target Ilyenia Moonfire
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Sod Rogue
    .goto 1457/1,2316.49,9924.41
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre e equipe um|r |T135489:0|t[Arco Recurvo Laminado]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto 1457/1,2316.49,9924.41
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
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre um|r |T135147:0|t[Cajado Nodoso]|cRXP_BUY_. Equipe-o no nível 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre um|r |T135154:0|t[Cajado de Combate]|cRXP_BUY_. Equipe-o no nível 11|r << era
    >>|cRXP_BUY_Compre e equipe um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_se você não conseguir arcar com um|r |T135147:0|t[Cajado Nodoso] << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
	>>|cRXP_BUY_Compre e equipe um|r |T135346:0|t[Alfanje] |cRXP_BUY_se você não conseguir arcar com um|r |T135154:0|t[Cajado de Combate]
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
    .goto 1457/1,2275.00,9775.50
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r no segundo andar
    >>|cRXP_BUY_Compre uma|r |T135641:0|t[Adaga Equilibrada de Arremesso]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto 1457/1,2636.53,9956.80
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6344 >>Entregue Nessa Cantonegro
    .target Nessa Shadowsong
    .accept 6341 >>Aceite A Recompensa de Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Retornar para Nessa
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >>Entregue A Recompensa de Teldrassil
    .target Vesprystus
    .accept 6342 >>Aceite Voo para Auberdine
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
]])
