if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#group Guia RestedXP Forever (H)
#subgroup Guia Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Clareiras de Tirisfal
#next 6-12 Clareiras de Tirisfal

step << !Undead
    #completewith next
    +|cRXP_WARN_Você selecionou um guia destinado para Morto-vivo. É recomendado que você escolha a mesma zona inicial em que começou|r
step
    #completewith Zombies
	.destroy 6948 >>Destrua a |T134414:0|t[Pedra de Regresso] da sua bolsa, pois não é mais necessária
step
    #completewith next
    .goto 1420/0,1675.90,1645.00,8,0
    .goto 1420/0,1665.51,1645.00,8,0
    .goto 1420/0,1667.77,1679.04,10 >>Vá para fora da cripta em direção a |cRXP_FRIENDLY_Coveiro Mordo|r
step
    .goto 1420/0,1667.77,1679.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coveiro Mordo|r
    .accept 363 >>Aceite Despertar bruto
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto 1420/0,1646.08,1750.44,0 << Warrior/Warlock
    .goto 1420/0,1681.32,1719.710,40,0
    .goto 1420/0,1646.08,1750.44,40,0
    .goto 1420/0,1714.76,1760.68,40,0 << Priest/Mage
    .goto 1420/0,1718.38,1799.24,40,0 << Priest/Mage
    .goto 1420/0,1669.12,1869.73,40,0 << Priest/Mage
    +|cRXP_WARN_Mate |cRXP_ENEMY_Carniceiros Jovens|r e |cRXP_ENEMY_Quiropúsculos|r. Saqueie-os até ter 60 de cobre em valor de itens para vender (incluindo sua armadura)|r << Mage
    +|cRXP_WARN_Mate |cRXP_ENEMY_Carniceiros Jovens|r e |cRXP_ENEMY_Quiropúsculos|r. Saqueie-os até ter 50 de cobre em valor de itens para vender (incluindo sua armadura)|r << Priest
    +|cRXP_WARN_Mate |cRXP_ENEMY_Carniceiros Jovens|r e |cRXP_ENEMY_Quiropúsculos|r. Saqueie-os até ter 10 de cobre em valor de itens para vender (incluindo sua armadura)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto 1420/0,1577.39,1860.09,8 >>Entre no prédio
step << Priest/Mage
    #label Vendor
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josué|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_com ele|r
    .vendor >>Venda os itens de lixo
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vênia Martingil|r e |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r << Mage
    .accept 1470 >>Aceite Perfurando o véu << Warlock
    .goto 1420/0,1633.42,1836.9 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >>Entregue Despertar bruto
    .accept 364 >>Aceite Os desmiolados
    .target +Shadow Priest Sarvis
    .goto 1420/0,1639.75,1843.220
step << Warlock/Mage
    .goto 1420/0,1616.71,1842.92,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r
    .accept 376 >>Aceite Os malditos
    .goto 1420/0,1638.85,1847.74
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .train 1459 >>Aprenda |T135932:0|t[Intelecto Arcano]
    .target Isabella
step << Warlock
    #label Vendor
    .goto 1420/0,1641.11,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Queila Ferraz|r
    .vendor >>Venda os itens de lixo
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillion|r
    .train 348 >>Aprenda |T135817:0|t[Imolação]
    .target Maximillion
step << !Warlock !Mage
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r
    .turnin 363 >>Entregue Despertar bruto
    .accept 364 >>Aceite Os desmiolados
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r
    .accept 376 >>Aceite Os malditos
    .goto 1420/0,1638.85,1847.74
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Venda os itens de lixo
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal Stern|r
    .train 6673 >>Aprenda |T132333:0|t[Brado de Batalha]
    .target Dannal Stern
step << Warlock
    #requires Piercing
    #loop
    .goto 1420/0,1595.47,1985.41,0
    .goto 1420/0,1595.47,1985.41,30,0
    .goto 1420/0,1627.55,2008.61,30,0
    .goto 1420/0,1584.17,2024.88,30,0
    .goto 1420/0,1575.58,2053.8,30,0
    .goto 1420/0,1529.49,2044.16,30,0
    .goto 1420/0,1512.32,2007.1,30,0
    .goto 1420/0,1499.67,1975.47,30,0
    .goto 1420/0,1487.47,1938.12,30,0
    .goto 1420/0,1541.69,1939.32,30,0
    >>Mate |cRXP_ENEMY_Esqueletos Range-ossos|r. Saqueie-os para obter os |cRXP_LOOT_Crânios de Range-ossos|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cRXP_WARN_Mate |cRXP_ENEMY_Zumbis Desmiolados|r e |cRXP_ENEMY_Zumbis Atormentados|r. Saqueie-os até ter 25 cobre em valor de itens para vender (incluindo sua armadura)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josué|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_com ele|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1633.42,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vênia Martingil|r
    .turnin 1470 >>Entregue Perfurando o véu
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_Lance|r |T136218:0|t[Evocar Diabrete]
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    #loop
	.goto 1420/0,1599.99,1910.1,0
	.goto 1420/0,1599.99,1910.1,40,0
	.goto 1420/0,1646.53,1913.11,40,0
	.goto 1420/0,1637.04,1963.72,40,0
	.goto 1420/0,1644.72,1979.99,40,0
	.goto 1420/0,1626.19,1987.52,40,0
	.goto 1420/0,1596.37,1974.87,40,0
	.goto 1420/0,1548.92,1939.02,40,0
	.goto 1420/0,1546.66,1923.36,40,0
	.goto 1420/0,1523.62,1937.82,40,0
	.goto 1420/0,1508.26,1943.84,40,0
	.goto 1420/0,1519.1,1914.92,40,0
	.goto 1420/0,1517.29,1892.33,40,0
	.goto 1420/0,1529.04,1880.58,40,0
    >>Mate |cRXP_ENEMY_Zumbis Desmiolados|r e |cRXP_ENEMY_Zumbis Atormentados|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob +Mindless Zombie
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cRXP_WARN_Mate |cRXP_ENEMY_Zumbis Desmiolados|r e |cRXP_ENEMY_Zumbis Atormentados|r. Saqueie-os até ter 33 cobre em valor de itens para vender (incluindo sua armadura)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josué|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_com ele|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >>Venda os itens de lixo
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josué|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_com ele|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >>Venda os itens de lixo
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r e |cRXP_FRIENDLY_Noviça Elvira|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r, |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r, |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r, |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r << Priest
    .turnin 364 >>Entregue Os desmiolados
    .accept 3095 >>Aceite Pergaminho simples << Warrior
    .accept 3096 >>Aceite Pergaminho cifrado << Rogue
    .accept 3097 >>Aceite Pergaminho consagrado << Priest
    .accept 3098 >>Aceite Pergaminho glífico << Mage
    .accept 3099 >>Aceite Pergaminho conspurcado << Warlock
    .accept 98601 >>Aceite Um caminho árduo << Paladin
    .accept 3901 >>Aceite Desossando alguns Range-ossos
    .target +Shadow Priest Sarvis
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    .accept 376 >>Aceite Os malditos
    .target +Novice Elreth
    .goto 1420/0,1638.85,1847.74
    .turnin 3099 >>Entregue Pergaminho conspurcado << Warlock
    .goto 1420/0,1636.59,1839.01 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >>Entregue Pergaminho glífico << Mage
    .goto 1420/0,1635.23,1847.44 << Mage
    .target +Isabella << Mage
    .turnin 3097 >>Entregue Pergaminho consagrado << Priest
    .target +Dark Cleric Duesten << Priest
    .goto 1420/0,1627.55,1848.65 << Priest
step << Paladin
    .goto 1420/0,1628.400,1837.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aramis Cerramartelo|r
    .turnin 98601 >>Entregue Um caminho árduo
    .accept 90902 >>Aceite Redescobrindo a Luz
    .target Aramis Hammerhand
    --90902 only 85xp, not worth doing
step << Paladin
    #completewith XPcheck
    >>|cRXP_WARN_Lance|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_nos|r |cRXP_FRIENDLY_Necroguardas Feridos|r
    .complete 90902,1 --|5/5 Injured Deathguard healed
    .target Injured Deathguard
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josué|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_com ele|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    #loop
    .goto 1420/0,1482.50,2126.70,0
    .goto 1420/0,1713.41,1828.76,40,0
    .goto 1420/0,1701.21,1858.290,40,0
    .goto 1420/0,1695.78,1908.29,40,0
    .goto 1420/0,1692.62,1927.88,40,0
    .goto 1420/0,1673.64,1984.51,40,0
    .goto 1420/0,1633.88,2040.24,40,0
    .goto 1420/0,1604.96,2073.08,40,0
    .goto 1420/0,1584.17,2098.08,40,0
    .goto 1420/0,1548.92,2079.71,40,0
    .goto 1420/0,1482.50,2126.70,40,0
    >>Mate |cRXP_ENEMY_Carniceiros Jovens|r e |cRXP_ENEMY_Carniceiros Rotos|r. Saqueie-os para pegar |cRXP_LOOT_Patas de Carniceiro|r
    >>Mate |cRXP_ENEMY_Quiropúsculos|r e |cRXP_ENEMY_Quiropúsculos Sarnentos|r. Saqueie-os para pegar |cRXP_LOOT_Asas de Quiropúsculo|r
    >>|cRXP_WARN_Tente evitar os |cRXP_ENEMY_Quiropúsculos Sarnentos|r se puder, pois são muito mais difíceis de matar do que os |cRXP_ENEMY_Quiropúsculos|r|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .mob +Young Scavenger
    .mob +Ragged Scavenger
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob +Duskbat
    .mob +Mangy Duskbat
step
    #loop
    .goto 1420/0,1595.47,1985.41,0
    .goto 1420/0,1595.47,1985.41,30,0
    .goto 1420/0,1627.55,2008.61,30,0
    .goto 1420/0,1584.17,2024.88,30,0
    .goto 1420/0,1575.58,2053.8,30,0
    .goto 1420/0,1529.49,2044.16,30,0
    .goto 1420/0,1512.32,2007.1,30,0
    .goto 1420/0,1499.67,1975.47,30,0
    .goto 1420/0,1487.47,1938.12,30,0
    .goto 1420/0,1541.69,1939.32,30,0
    >>Mate |cRXP_ENEMY_Esqueletos Range-ossos|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #label XPcheck
    #optional
    #loop
    .goto 1420/0,1595.47,1985.41,30,0
    .goto 1420/0,1627.55,2008.61,30,0
    .goto 1420/0,1584.17,2024.88,30,0
    .goto 1420/0,1575.58,2053.8,30,0
    .goto 1420/0,1529.49,2044.16,30,0
    .goto 1420/0,1512.32,2007.1,30,0
    .goto 1420/0,1499.67,1975.47,30,0
    .goto 1420/0,1487.47,1938.12,30,0
    .goto 1420/0,1541.69,1939.32,30,0
    .xp 3+895 >>Mate inimigos até atingir 895+/1400 de xp << Paladin
    .xp 3+940 >>Mate inimigos até atingir 940+/1400 de xp << Warrior/Rogue
    .xp 3+980 >>Mate inimigos até atingir 980+/1400 de xp << !Warrior !Rogue !Paladin
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Paladin
    .goto 1420/0,1593.500,1876.400
    >>|cRXP_WARN_Lance|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_nos|r |cRXP_FRIENDLY_Necroguardas Feridos|r
    .complete 90902,1 --|5/5 Injured Deathguard healed
    .target Injured Deathguard
step << Mage/Warlock/Priest/Paladin
    .goto 1420/0,1576.04,1861.60,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josué|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_com ele|r << !Paladin
    >>|cRXP_WARN_NÃO fique com menos de 1 de Prata|r << Mage/Warlock/Priest
    .vendor >>Venda os itens de lixo
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r e |cRXP_FRIENDLY_Noviça Elvira|r
    .turnin 3901 >>Entregue Desossando alguns Range-ossos
    .target +Shadow Priest Sarvis
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    .turnin 376 >>Entregue Os malditos
    .accept 6395 >>Aceite O último desejo de Marla
    .target +Novice Elreth
    .goto 1420/0,1638.85,1847.74
step << Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Venda os itens de lixo
    .target Archibald Kava
    .money >0.1
    .isOnQuest 90902
step
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aramis Cerramartelo|r
    .turnin 90902 >>Entregue Redescobrindo a Luz << Paladin
    .accept 91208 >>Aceite Aprender a conviver << Paladin
    .accept 91209 >>Aceite Continue seu treinamento << Paladin
    .accept 98389 >>Aceite Uma luz na escuridão
    .target Aramis Hammerhand
step << Paladin
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aramis Cerramartelo|r
    .train 20271 >>Aprenda |T135959:0|t[Julgamento]
    .train 19740 >>Aprenda |T135906:0|t[Bênção do Poder]
    .target Aramis Hammerhand
    .money <0.02
step << Paladin
    #optional
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aramis Cerramartelo|r
    .train 20271 >>Aprenda |T135959:0|t[Julgamento]
    .target Aramis Hammerhand
    .money <0.01
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r
    .train 589 >>Treine suas magias de classe
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior Grau 2]
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    #optional
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillion|r
    .train 172 >>Aprenda |T136118:0|t[Corrupção]
    .target Maximillion
step << Mage
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .train 116 >>Aprenda |T135846:0|t[Seta de Gelo]
    .target Isabella
step
    .goto 1420/0,1616.71,1842.92,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Saulo|r e |cRXP_FRIENDLY_Executor Arren|r
    .accept 3902 >>Aceite Vasculhando Plangemortis
    .goto 1420/0,1604.96,1860.70
    .target +Deathguard Saltain
    .accept 380 >>Aceite Vale Teia da Noite
    .goto 1420/0,1580.56,1848.95
    .target +Executor Arren
step << Rogue/Warrior/Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Venda os itens de lixo
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal Stern|r
    .turnin 3095 >>Entregue Pergaminho simples
    .train 100 >>Aprenda |T132337:0|t[Investida]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #optional
    #label Training2
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal Stern|r
    .turnin 3095 >>Entregue Pergaminho simples
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #optional
    #label Training2
    .goto 1420/0,1563.38,1859.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Davi|r
    .turnin 3096 >>Entregue Pergaminho cifrado
    .target David Trias
step << Rogue/Warrior/Paladin
    .goto 1420/0,1577.100,1854.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Walter Alvanel|r no andar de cima
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_com|r |cRXP_BUY_ele|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    .collect 2901,1,792,1 --Mining Pick (1)
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Walter Mason
step
    #loop
	.goto 1420/0,1570.61,1898.35,0
	.goto 1420/0,1570.61,1898.35,12,0
	.goto 1420/0,1550.73,1897.75,12,0
	.goto 1420/0,1547.12,1891.42,12,0
	.goto 1420/0,1541.69,1867.93,12,0
	.goto 1420/0,1506.45,1892.33,12,0
	.goto 1420/0,1536.27,1937.21,12,0
	.goto 1420/0,1551.64,1936.31,12,0
	.goto 1420/0,1593.66,1985.11,12,0
	.goto 1420/0,1598.63,1970.95,12,0
	.goto 1420/0,1600.89,1953.78,12,0
	.goto 1420/0,1617.16,1956.49,12,0
    >>Abra as |cRXP_PICK_Caixas de Equipamento|r no chão. Pegue os |cRXP_LOOT_Materiais Reaproveitados|r
    .complete 3902,1 --Collect Scavenged Goods (x6)
step << Paladin
    .goto 1420/0,1782.400,1914.700
    >>Fale com a |cRXP_FRIENDLY_Paladina Assustada|r, mate-a assim que se tonar hostil
    .complete 91208,1 --|1/1 Offer aid to the Frightened Paladin
    .skipgossip
    .mob Frightened Paladin
step
    #label NightWebStart
    #loop
	.goto 1420/0,1680.42,2110.43,0
	.goto 1420/0,1680.42,2110.43,40,0
	.goto 1420/0,1685.84,2149.6,40,0
	.goto 1420/0,1711.6,2157.43,40,0
	.goto 1420/0,1750.01,2135.14,40,0
	.goto 1420/0,1782.54,2117.36,40,0
	.goto 1420/0,1754.98,2080.91,40,0
	.goto 1420/0,1756.79,2047.77,40,0
	.goto 1420/0,1731.93,2044.16,40,0
	.goto 1420/0,1709.79,2048.07,40,0
	.goto 1420/0,1692.62,2074.28,40,0
    >>Mate |cRXP_ENEMY_Trevateias Jovens|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #loop
	.goto 1420/0,1756.79,2082.12,0
	.goto 1420/0,1756.79,2082.12,25,0
	.goto 1420/0,1749.1,2058.02,25,0
	.goto 1420/0,1774.41,2012.83,25,0
	.goto 1420/0,1805.59,2054.7,25,0
	.goto 1420/0,1799.71,2091.15,25,0
	.goto 1420/0,1815.98,2137.85,25,0
	.goto 1420/0,1790.23,2150.5,25,0
    >>Mate |cRXP_ENEMY_Trevateias Jovens|r perto da entrada da caverna
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto 1420/0,1822.31,2048.07,15,0
    .goto 1420/0,1844.45,2042.050,30 >>Vá para dentro da caverna
step
    #completewith next
    >>Ataque o |cRXP_ENEMY_Renegado Enredado|r
    .complete 98389,1 --|6/6 Webbed Forsaken freed
    .mob Webbed Forsaken
step
    #loop
    .goto 1420/0,1918.11,2043.86,0
    .goto 1420/0,1844.45,2042.050,30,0
    .goto 1420/0,1876.08,2043.56,20,0
    .goto 1420/0,1898.68,2020.06,20,0
    .goto 1420/0,1940.70,2006.80,20,0
    .goto 1420/0,1983.63,2032.71,20,0
    .goto 1420/0,1953.80,2079.40,20,0
    .goto 1420/0,1918.11,2043.86,20,0
    >>Mate |cRXP_ENEMY_Trevateias|r dentro da caverna
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    .goto 1420/0,1921.500,2046.500
    >>Ataque o |cRXP_ENEMY_Renegado Enredado|r
    .complete 98389,1 --|6/6 Webbed Forsaken freed
    .mob Webbed Forsaken
step
    #softcore
    #completewith Scavenging
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Lance|r |T136218:0|t[Evocar Diabrete]
step << skip
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto 1420/0,1628.91,1882.99,30 >>|cRXP_WARN_Faça um Atalho por Logout dentro da caverna pulando em cima de um triturador, poço ou prancha de madeira presa na parede, depois saia e entre novamente no jogo|r
    >>|cRXP_WARN_Alternativamente, corra de volta para Plangemortis|r
step
    #label Scavenging
    .goto 1420/0,1604.96,1860.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Saulo|r
    .turnin 3902 >>Entregue Vasculhando Plangemortis
    .target Deathguard Saltain
step
    #label NightWebH
    .goto 1420/0,1580.56,1848.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .turnin 380 >>Entregue Vale Teia da Noite
    .accept 381 >>Aceite A Cruzada Escarlate
    .target Executor Arren
step
    .goto 1420/0,1628.400,1837.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aramis Cerramartelo|r
    .turnin 91208 >>Entregue Aprender a conviver << Paladin
    .turnin 98389 >>Entregue Uma luz na escuridão
    .target Aramis Hammerhand
step << Rogue/Warrior/Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Venda os itens de lixo
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josué|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_com ele|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >>Venda os itens de lixo
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step
    #requires NightWebH
    #loop
	.goto 1420/0,1400.71,1766.71,0
	.goto 1420/0,1400.71,1766.71,40,0
	.goto 1420/0,1385.80,1744.11,40,0
	.goto 1420/0,1368.17,1728.15,40,0
	.goto 1420/0,1342.42,1741.40,40,0
	.goto 1420/0,1313.95,1735.08,40,0
	.goto 1420/0,1320.28,1752.25,40,0
	.goto 1420/0,1314.85,1765.80,40,0
	.goto 1420/0,1294.07,1780.56,40,0
	.goto 1420/0,1283.67,1817.02,40,0
	.goto 1420/0,1289.55,1841.72,40,0
	.goto 1420/0,1286.84,1877.27,40,0
	.goto 1420/0,1333.38,1868.53,40,0
	.goto 1420/0,1364.56,1867.93,40,0
	.goto 1420/0,1383.54,1866.72,40,0
	.goto 1420/0,1368.17,1831.48,40,0
	.goto 1420/0,1341.06,1790.51,40,0
	.goto 1420/0,1364.56,1784.18,40,0
    >>Mate |cRXP_ENEMY_Iniciados Escarlates|r e |cRXP_ENEMY_Neófitos Escarlates|r. Saqueie-os pelas |cRXP_LOOT_Braçadeiras Escarlates|r
    >>|cRXP_WARN_Não mate|cRXP_ENEMY_ Meven Korgal|r ainda|r
    >>|cRXP_WARN_Tente evitar |cRXP_ENEMY_Iniciados Escarlates|r se você conseguir, pois eles têm|r |T135843:0|t[Armadura Gélida] |cRXP_WARN_(reduz sua velocidade de ataque)|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto 1420/0,1375.40,1979.69
    >>Mate |cRXP_ENEMY_Samuel|r. Saqueie-o para pegar |cRXP_LOOT_Restos Mortais de Samuel|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    .goto 1420/0,1624.84,1876.96
	>>Clique no |cRXP_PICK_Túmulo de Marla|r no chão
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_Lance|r |T136218:0|t [Invocar Diabrete]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r << Priest
    .turnin 6395 >>Entregue O último desejo de Marla
    .target +Novice Elreth
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1638.85,1847.74
    .accept 5651 >>Aceite Em favor da escuridão << Priest
    .target +Dark Cleric Duesten << Priest
    .goto 1420/0,1627.55,1848.65 << Priest
step
    #sticky
    #label ScarletC
    .goto 1420/0,1580.56,1848.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .turnin 381 >>Entregue A Cruzada Escarlate
    .accept 382 >>Aceite O mensageiro escarlate
    .target Executor Arren
step
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Venda os itens de lixo
    .target Archibald Kava
step
    #requires ScarletC
    .goto 1420/0,1383.99,1764.30
    >>Mate |cRXP_ENEMY_Meven|r. Saqueie-o para pegar |cRXP_LOOT_Documentos da Cruzada Escarlate|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto 1420/0,1580.56,1848.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .turnin 382 >>Entregue O mensageiro escarlate
    .accept 383 >>Aceite Informações cruciais
    .accept 96656 >>Aceite O aventureiro
    .target Executor Arren
step
    #loop
    .goto 1420/0,1493.34,2044.76,50,0
    .goto 1420/0,1436.41,2133.93,50,0
    .goto 1420/0,1369.08,2124.89,50,0
    .goto 1420/0,1327.05,2048.68,50,0
    .goto 1420/0,1338.35,1939.93,50,0
	.goto 1420/0,1400.71,1766.71,50,0
	.goto 1420/0,1385.80,1744.11,50,0
	.goto 1420/0,1368.17,1728.15,50,0
	.goto 1420/0,1342.42,1741.40,50,0
	.goto 1420/0,1313.95,1735.08,50,0
	.goto 1420/0,1320.28,1752.25,50,0
	.goto 1420/0,1314.85,1765.80,50,0
	.goto 1420/0,1294.07,1780.56,50,0
	.goto 1420/0,1283.67,1817.02,50,0
	.goto 1420/0,1289.55,1841.72,50,0
	.goto 1420/0,1286.84,1877.27,50,0
	.goto 1420/0,1333.38,1868.53,50,0
	.goto 1420/0,1364.56,1867.93,50,0
	.goto 1420/0,1383.54,1866.72,50,0
	.goto 1420/0,1368.17,1831.48,50,0
	.goto 1420/0,1341.06,1790.51,50,0
	.goto 1420/0,1364.56,1784.18,50,0
	.goto 1420/0,1400.71,1766.71,50,0
    .xp 5+1940 >>Mate inimigos até atingir 1940+/2800 de xp << !Paladin
    .xp 5+1850 >>Mate inimigos até atingir 1850+/2800 de xp << Paladin
step
    .goto 1420/0,1305.36,2127.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calvino|r
    .accept 8 >>Aceite Palavra de ladino
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Clareiras de Tirisfal
#displayname 6-13 Clareiras de Tirisfal << Paladin
#version 11
#group Guia RestedXP Forever (H)
#subgroup Guia Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Floresta de Pinhaprata; 12-17 Sertões

step
    .goto 1420/0,1184.71,2205.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Simério|r
    .accept 365 >>Aceite Campos de mágoa
    .target Deathguard Simmer
step
    #loop
    .goto 1420/0,496.96,2256.54,0
    .goto 1420/0,1191.04,2198.10,0
    .goto 1420/0,1191.04,2198.10,40,0
    .goto 1420/0,1133.65,2177.31,40,0
    .goto 1420/0,1063.61,2201.710,40,0
    .goto 1420/0,945.22,2127.00,40,0
    .goto 1420/0,824.57,2092.36,40,0
    .goto 1420/0,740.97,2112.24,40,0
    .goto 1420/0,660.09,2196.29,40,0
    .goto 1420/0,571.07,2251.42,40,0
    .goto 1420/0,496.96,2256.54,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gordo|r
    >>|cRXP_WARN_Ele é uma abominação que patrulha a estrada até Montalvo|r
    .accept 5481 >>Aceite Beijo do Gordo
    .unitscan Gordo
step << Priest
    .goto 1420/0,656.92,2164.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bowen Brisboise|r
    .train 3908 >>Aprenda |T136249:0|t[Alfaiataria]. Guarde |T132889:0|t[Linho]. Isto permitirá que você crie uma varinha mais tarde
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >>Morra e ressuscite no |cRXP_FRIENDLY_Anjo da Cura|r ou corra para Montalvo
    .target Anjo da Cura
step
    .goto 1420/0,391.400,2289.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Necroguarda Bartolomeu|r
    >>|cRXP_WARN_Ele pode estar patrulhando os arredores do cemitério|r
    .accept 86784 >>Aceite Paus e ossos
    .target Deathguard Bartholomew
step
    #completewith next
    >>Pegue |cRXP_PICK_Galhos secos|r no chão, embaixo das árvores perto de Montalvo
    .complete 86784,1 --|6/6 Dry Branch
step
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .accept 404 >>Aceite Uma tarefa podre
    .target Deathguard Dillinger
step
    #loop
    .goto 1420/0,603.600,2268.300,40,0
    .goto 1420/0,539.700,2220.400,40,0
    .goto 1420/0,305.600,2180.100,40,0
    .goto 1420/0,375.600,2246.400,40,0
    .goto 1420/0,442.800,2259.400,40,0
    >>Pegue |cRXP_PICK_Galhos secos|r no chão, embaixo das árvores perto de Montalvo
    .complete 86784,1 --|6/6 Dry Branch
step
    .goto 1420/0,445.500,2165.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eleonora Grilhões|r
    .turnin 86784 >>Entregue Paus e ossos
    .turnin 96656 >>Entregue O aventureiro
    .accept 96607 >>Aceite Vida ao ar livre
    .target Eleanor Shackleton
step
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Digite /sit perto da fogueira e espere um minuto até você receber o bônus "Benefícios de Acampamento" |r
    .complete 96607,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sente-se (/sit)
    .timer 59,Aguarde o RP
    .complete 96607,2 --|Gain the Boosted Rest buff
step
    .goto 1420/0,445.400,2166.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eleonora Grilhões|r
    .turnin 96607 >>Entregue Vida ao ar livre
    .target Eleanor Shackleton
    .accept 96658 >>Aceite Introdução ao Acampamento: Cozinha
    --.accept 97959 >>Accept Camping 101: Mining
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joaquino|r
    .accept 367 >>Aceite Uma nova peste
    .target Apothecary Johaan
    .xp <6,1
step
    .goto 1420/0,296.600,2278.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .turnin 383 >>Entregue Informações cruciais
    .accept 427 >>Aceite Guerra à Cruzada Escarlate
    .accept 99141 >>Aceite Paciência
    .accept 99134 >>Aceite Disciplina
    .target Executor Zygand
step
    #completewith Claws
    .use 286176 >>|cRXP_WARN_Use|r |T133490:0|t[Motivador do Executor] |cRXP_WARN_em qualquer |cRXP_FRIENDLY_Necroguarda|r dentro de Montalvo e nos arredores|r
    .complete 99134,1 --|5/5 Deathguards motivated
    --too many .mobs, will cause clutter
step << Rogue
    .goto 1420/0,270.12,2253.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r a |cRXP_FRIENDLY_Sra. Hibérnias|r|cRXP_BUY_. Compre um|r |T135421:0|t[Machado de Arremesso Pesado] |cRXP_BUY_dela|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olivier Ewor|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135641:0|t[Estilete] (3p 81c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machado de Arremesso Pesado]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olivier Ewor|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5p 10c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shária Calmafonte|r
    .complete 91209,1 --|1/1 Report to Shari Stilwell in Brill
    .turnin 91209 >>Entregue Continue seu treinamento
    .target Shari Stilwell
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shária Calmafonte|r
    .train 679 >>Aprenda |T626003:0|t[Golpe Sagrado]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olivier Ewor|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (6p 66c). Você voltará depois se ainda não tiver o suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,404,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    .turnin 8 >>Entregue Palavra de ladino
    .home >>Defina sua Pedra de Regresso em Montalvo
    .target Innkeeper Renee
    .bindlocation 2119
step
    #optional
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    .turnin 8 >>Entregue Palavra de ladino
    .target Innkeeper Renee
    .isOnQuest 8
step
    .goto 1420/0,243.200,2288.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_William Pegome|r
    .train 2550 >>Aprenda Culinária
    .turnin 96658 >>Entregue Introdução ao Acampamento: Cozinha
    .target William Pickman
    .money <0.001
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar da estalagem|r
    .accept 375 >>Aceite O frio da morte
    .target Gretchen Dedmar
    .xp <7,1
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
    .turnin 5651 >>Entregue Em favor da escuridão
    .accept 5650 >>Aceite Vestes da escuridão
	.train 591 >>Aprenda |T135924:0|t[Punição]
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior Grau 2]
    .target Dark Cleric Beryl
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caio Cantígnea|r no segundo andar
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Cain Firesong
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil de Mon|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r no segundo andar
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto 1420/0,251.59,2252.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gina Lang|r no segundo andar
    >>|cRXP_BUY_Compre |r |T133738:0|t[Grimório de Pacto de Sangue] |cRXP_BUY_dela|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Venda os itens de lixo
    .target Gina Lang
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 695 >>Aprenda |T136197:0|t[Seta Sombria]
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 695 >>Aprenda |T136197:0|t[Seta Sombria]
    .target Rupert Boch
step << Priest/Warlock
    .goto 1420/0,242.55,2284.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vance Merencório|r
    .train 7411 >>Aprenda |T136244:0|t[Encantamento]
    >>|cRXP_WARN_Isto junto com|r |T136249:0|t[Alfaiataria] |cRXP_WARN_permitirá que você crie uma varinha depois|r
    .target Vance Undergloom
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Mage/Priest/Paladin
    >>|cRXP_BUY_Compre|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r << Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r << Warlock
    .collect 1179,15,367,1 << Mage/Priest/Paladin --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock/Paladin
    .target Innkeeper Renee
step
    .goto 1420/0,84.900,2023.500
    >>Fale com o |cRXP_FRIENDLY_Necroguarda Kristof|r
    >>|cRXP_WARN_Selecione "Preciso de um relatório para o Executor Zigano"|r
    .complete 99141,2 --|1/1 Kristof's Report
    .skipgossipid 142730
    .target Deathguard Kristof
step
    .goto 1420/0,77.200,2026.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lenita Ravais|r
    .accept 97558 >>Aceite Pelegos para os Renegados
    .target Shelene Rhobart
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joaquino|r
    .accept 367 >>Aceite Uma nova peste
    .target Apothecary Johaan
step << Priest
    .goto 1420/0,359.14,2436.99
    >>Lance |T135929:0|t[Cura Inferior] e |T135987:0|t[Palavra de Poder: Fortitude] no |cRXP_FRIENDLY_Necroguarda Querêncio|r
    >>|cRXP_WARN_Você precisa de Cura Inferior Grau 2 para esta missão|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Gordo2
    >>Pegue a |cRXP_PICK_Erva-do-emo|r no chão
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith Pumkpins
    >>Mate |cRXP_ENEMY_Cães das Trevas|r. Saqueie-os para pegar |cRXP_LOOT_Sangue|r e |cRXP_LOOT_Pelegos|r
    .complete 367,1 --Darkhound Blood (5)
    .complete 97558,2 --|6/6 Darkhound Hide
    .mob Decrepit Darkhound
step
    #label Claws
    #loop
    .goto 1420/0,655.12,2120.98,0
    .goto 1420/0,550.28,2315.28,50,0
    .goto 1420/0,622.58,2322.51,50,0
    .goto 1420/0,678.16,2319.80,50,0
    .goto 1420/0,716.12,2282.15,50,0
    .goto 1420/0,682.23,2218.58,50,0
    .goto 1420/0,670.48,2128.81,50,0
    .goto 1420/0,595.47,2134.53,50,0
    .goto 1420/0,613.54,2082.72,50,0
    .goto 1420/0,655.12,2120.98,50,0
    >>Mate |cRXP_ENEMY_Mortos Podres|r e |cRXP_ENEMY_Cadáveres Assolados|r. Saqueie-os para pegar |cRXP_LOOT_Garras|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step
    #label Gordo2
    #loop
    .goto 1420/0,496.96,2256.54,40,0
    .goto 1420/0,571.07,2251.42,40,0
    .goto 1420/0,660.09,2196.29,40,0
    .goto 1420/0,740.97,2112.24,40,0
    .goto 1420/0,824.57,2092.36,40,0
    .goto 1420/0,945.22,2127.00,40,0
    .goto 1420/0,1063.61,2201.710,40,0
    .goto 1420/0,1133.65,2177.31,40,0
    .goto 1420/0,1191.04,2198.10,40,0
    .goto 1420/0,1191.04,2198.10,0
    .goto 1420/0,496.96,2256.54,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gordo|r
    >>|cRXP_WARN_Ele é uma abominação que patrulha a estrada até Montalvo|r
    >>|cRXP_WARN_Selecione "Preciso de um relatório para o Executor Zigano|r
    .complete 99141,3 --|1/1 Gordo's Report
    .target Gordo
    --.gossipoption 142737
step
    #label GloomWeed
    #loop
    .goto 1420/0,1246.17,2311.97,0
    .goto 1420/0,1025.65,2110.43,0
    .goto 1420/0,1246.17,2311.97,50,0
    .goto 1420/0,1025.65,2110.43,50,0
    >>Acabe de pegar |cRXP_PICK_Erva-do-emo|r no chão
    .complete 5481,1 --Gloom Weed (3)
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_Comece a coletar 3 pilhas de|r |T132889:0|t[Linho]|cRXP_WARN_. Isto será usado para fazer|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Se você não quer fazer isso ou prefere comprar da Casa de Leilões depois, pule este passo|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_Comece a coletar 3 pilhas de|r |T132889:0|t[Linho]|cRXP_WARN_. Isto será usado para fazer|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_WARN_depois|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #label Pumkpins
    #loop
    .goto 1420/0,1378.12,2328.54,0
    .goto 1420/0,1352.36,2265.88,50,0
    .goto 1420/0,1377.66,2328.54,50,0
    .goto 1420/0,1402.06,2359.27,50,0
    .goto 1420/0,1448.16,2336.67,50,0
    .goto 1420/0,1438.21,2303.84,50,0
    .goto 1420/0,1471.20,2283.65,50,0
    .goto 1420/0,1378.12,2328.54,50,0
    >>Colete as |cRXP_LOOT_Abóboras|r encontradas no campo
    .complete 365,1 --Tirisfal Pumpkin (10)
step
    #completewith Tescort
    >>Mate |cRXP_ENEMY_Guerreiros Escarlates|r
    >>|cRXP_WARN_Tenha cuidado: eles ganham 50% a mais de aparo por 8 segundos após executarem a animação de postura defensiva|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    .goto 1420/0,1587.700,2439.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barreto Aurolita|r no topo da torre
    >>|cRXP_WARN_Isso inicia uma missão de escolta|r
    >>|cRXP_WARN_Cuidado!. No topo da torre, você pode facilmente atrair 3 |cRXP_ENEMY_Guerreiros Escarlates|r ao mesmo tempo|r
    .accept 99144,1 >>Aceite Em busca de refúgio
    .target Bareth Dawnstone
step
    #label Tescort
    .goto 1420/0,1268.000,2368.200
    >>Escolte |cRXP_FRIENDLY_Barreto Aurolita|r para fora da Fazenda dos Solliden
    .complete 99144,1 --
    .target Bareth Dawnstone
step
    #loop
    .goto 1420/0,1597.27,2290.28,0
    .goto 1420/0,1509.16,2351.13,50,0
    .goto 1420/0,1512.77,2299.02,50,0
    .goto 1420/0,1597.27,2290.28,50,0
    .goto 1420/0,1676.80,2316.79,50,0
    .goto 1420/0,1681.78,2354.14,50,0
    .goto 1420/0,1649.69,2405.66,50,0
    .goto 1420/0,1632.07,2436.690,50,0
    .goto 1420/0,1580.56,2487.00,50,0
    .goto 1420/0,1509.16,2473.14,50,0
    .goto 1420/0,1492.44,2395.11,50,0
    .goto 1420/0,1509.16,2351.13,50,0
    >>Mate |cRXP_ENEMY_Guerreiros Escarlates|r
    >>|cRXP_WARN_Tenha cuidado: eles ganham 50% a mais de aparo por 8 segundos após executarem a animação de postura defensiva|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    #loop
    .goto 1420/0,1238.600,2424.900,0
    .goto 1420/0,1238.600,2424.900,60,0
    .goto 1420/0,1204.800,2543.000,60,0
    .goto 1420/0,1122.600,2396.800 ,60,0
    >>Mate |cRXP_ENEMY_Cães das Trevas|r. Saqueie-os para pegar |cRXP_LOOT_Sangue|r e |cRXP_LOOT_Pelegos|r
    .complete 367,1 --Darkhound Blood (5)
    .complete 97558,2 --|6/6 Darkhound Hide
    .mob Decrepit Darkhound
step
    #hardcore
    #completewith BrillTurnin1
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >>Volte para Montalvo
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >>Morra e ressuscite no |cRXP_FRIENDLY_ Anjo da Cura|r
step
    #softcore
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário-júnior Hollanda|r
    >>|cRXP_WARN_Ele patrulha os arredores do cemitério|r
    .turnin 5481 >>Entregue Beijo do Gordo
    .accept 5482 >>Aceite Erva-do-demo
    .target Junior Apothecary Holland
step
    #optional
    #completewith MetaBook
    .use 286176 >>|cRXP_WARN_Use|r |T133490:0|t[Motivador do Executor] |cRXP_WARN_em qualquer |cRXP_FRIENDLY_Necroguarda|r dentro de Montalvo e nos arredores|r
    .complete 99134,1 --|5/5 Deathguards motivated
step
    .goto 1420/0,403.300,2287.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Necroguarda Dinis|r
    >>|cRXP_WARN_Selecione "Preciso de um relatório para o Executor Zigano|r
    .turnin 404 >>Entregue Uma tarefa podre
    .accept 426 >>Aceite Os moinhos invadidos
    .complete 99141,1 --|1/1 Dillinger's Report
    .target Deathguard Dillinger
    .skipgossipid 142723
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joaquino|r
    .turnin 367 >>Entregue Uma nova peste
    .turnin 365 >>Entregue Campos de mágoa
    .accept 368 >>Aceite Uma nova peste
    .accept 407 >>Aceite Campos de mágoa
    .target +Apothecary Johaan
step
    .goto 1420/0,347.600,2265.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carolai Anise|r
    .accept 95314 >>Aceite O elixir verde do Vale das Sombras
    .target Carolai Anise
    .xp <7,1
step << Mage
    #label MetaBook
    >>Pegue o |cRXP_PICK_Livro|r na prateleira
    .collect 208185,1 --The Apothecary's Metaphysical Primer (x1
step
    #optional
    #loop
    .goto 1420/0,290.400,2272.900,30,0
    .goto 1420/0,257.200,2239.500,30,0
    .goto 1420/0,313.400,2259.400,30,0
    .use 286176 >>|cRXP_WARN_Use|r |T133490:0|t[Motivador do Executor] |cRXP_WARN_em qualquer |cRXP_FRIENDLY_Necroguarda|r dentro de Montalvo e nos arredores|r
    .complete 99134,1 --|5/5 Deathguards motivated
step
    #label BrillTurnin1
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .turnin 427 >>Entregue Guerra à Cruzada Escarlate
    .accept 370 >>Aceite Guerra à Cruzada Escarlate
    .turnin 99141 >>Entregue Paciência
    .turnin 99134 >>Entregue Disciplina
    .target Executor Zygand
step
    #completewith Doomweed
    #optional
    .destroy 286176 >>|cRXP_WARN_Destrua o|r |T133490:0|t[Motivador do Executor] |cRXP_WARN_pois não é mais necessário para nadaa|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Belchior|r, |cRXP_FRIENDLY_Pôster de Procura-se|r e |cRXP_FRIENDLY_Magistrado Sevren|r dentro do prédio
    .accept 374 >>Aceite Prova da morte
    .target +Deathguard Burgess
    .goto 1420/0,280.06,2270.70
    .accept 398 >>Aceite Procura-se: Olho de Verme
    .goto 1420/0,288.64,2285.46
    .accept 358 >>Aceite Roubacovas
    .target +Magistrate Sevren
    .goto 1420/0,265.15,2305.94
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shária Calmafonte|r
    .turnin 99144 >>Entregue Em busca de refúgio
    .train 853 >>Treine suas magias de classe
    .target Shari Stilwell
    .xp <8,1
step
    #optional << Paladin
    .goto 1420/0,311.900,2250.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shária Calmafonte|r
    .turnin 99144 >>Entregue Em busca de refúgio
    .target Shari Stilwell
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
    .turnin 5650 >>Entregue Vestes da escuridão
    .train 591 >>Aprenda |T135924:0|t[Punição]
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .target Dark Cleric Beryl
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar da estalagem|r
    .accept 375 >>Aceite O frio da morte
    .target Gretchen Dedmar
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
	.train 139 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caio Cantígnea|r no segundo andar
    .train 205 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil de Mon|r
    .train 284 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r no segundo andar
    .train 6760 >>Treine suas magias de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 980 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <8,1
step
    .goto 1420/0,243.200,2288.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_William Pegome|r
    .train 2550 >>Treine Culinária
    .turnin 96658 >>Entregue Introdução ao Acampamento: Cozinha
    .target William Pickman
step << Rogue/Warrior
    .goto 1420/0,240.29,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Enfermeira Nila|r
    >>|cRXP_WARN_Tente fazê-los enquanto estiver esperando por algo, como os Zepelins|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Nurse Neela
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olivier Ewor|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135641:0|t[Estilete] (3p 81c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olivier Ewor|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5p 10c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shária Calmafonte|r
    .train 679 >>Aprenda |T626003:0|t[Golpe Sagrado]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olivier Ewor|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (6p 66c). Você voltará depois se ainda não tiver o suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,367,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    .goto 1420/0,270.12,2253.23--c:Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Sra. Hibérnias|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_com|r |cRXP_FRIENDLY_ela|r
    .collect 4496,1,5482,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #hardcore
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário-júnior Hollanda|r
    >>|cRXP_WARN_Ele patrulha os arredores do cemitério|r
    .turnin 5481 >>Entregue Beijo do Gordo
    .accept 5482 >>Aceite Erva-do-demo
    .target Junior Apothecary Holland
step << Rogue/Warrior
    #optional
    #loop
    .goto 1420/0,482.50,1951.07,0
    .goto 1420/0,403.42,2085.73,50,0
    .goto 1420/0,413.36,1979.99,50,0
    .goto 1420/0,482.50,1951.07,50,0
    .goto 1420/0,560.22,1901.06,50,0
    .goto 1420/0,645.63,1961.92,50,0
    .goto 1420/0,750.46,1993.55,50,0
    .goto 1420/0,869.76,2003.79,50,0
    .goto 1420/0,950.64,2039.040,50,0
    .goto 1420/0,1068.13,1975.47,50,0
    >>Mate |cRXP_ENEMY_Quiropúsculos|r. Saqueie-os para pegar |cRXP_LOOT_Pelagens|r e |cRXP_LOOT_Membranas de asa|r
    .complete 375,1 --Duskbat Pelt (5)
    .complete 97558,1 --|8/8 Duskbat Wing Membrane
    .disablecheckbox
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3960,1
step << Rogue/Warrior
    #optional
    #label DuskbatTrophy1
    #loop
    .goto 1420/0,482.50,1951.07,0
    .goto 1420/0,403.42,2085.73,50,0
    .goto 1420/0,413.36,1979.99,50,0
    .goto 1420/0,482.50,1951.07,50,0
    .goto 1420/0,560.22,1901.06,50,0
    .goto 1420/0,645.63,1961.92,50,0
    .goto 1420/0,750.46,1993.55,50,0
    .goto 1420/0,869.76,2003.79,50,0
    .goto 1420/0,950.64,2039.040,50,0
    .goto 1420/0,1068.13,1975.47,50,0
    .xp 7+3260 >>Mate inimigos até atingir 3260+/4500 de xp
--XX 700 (375)+540 (367)
step << Rogue/Warrior
    #optional
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Fio Grosso] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step << Rogue/Warrior
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O frio da morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil de Mon|r
    .train 284 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r no segundo andar
    .train 6760 >>Treine suas magias de classe
    .target Marion Call
    .xp <8,1
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olivier Ewor|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135641:0|t[Estilete] (3p 81c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olivier Ewor|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5p 10c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #completewith next
    >>Pegue a |cRXP_PICK_Erva-do-demo|r no chão
    >>|cRXP_WARN_São encontrados perto de árvores na área dos Gnoll|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #loop
    .goto 1420/0,537.18,2555.98,0
    .goto 1420/0,488.83,2642.44,40,0
    .goto 1420/0,561.13,2596.65,40,0
    .goto 1420/0,597.73,2514.11,40,0
    .goto 1420/0,537.18,2555.98,40,0
    .goto 1420/0,483.40,2514.41,40,0
    >>Mate |cRXP_ENEMY_Roubacovas Putricouros|r. Saqueie-os para pegar |cRXP_LOOT_Linfa|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>Mate |cRXP_ENEMY_Mestiços Putricouros|r. Saqueie-os para pegar |cRXP_LOOT_Linfa|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label Doomweed
    #loop
    .goto 1420/0,435.96,2754.51,0
    .goto 1420/0,426.92,2802.10,30,0
    .goto 1420/0,437.31,2754.20,30,0
    .goto 1420/0,467.14,2699.08,30,0
    .goto 1420/0,500.57,2669.85,30,0
    .goto 1420/0,543.95,2670.46,30,0
    .goto 1420/0,536.72,2627.68,30,0
    .goto 1420/0,562.48,2568.63,30,0
    .goto 1420/0,534.92,2587.01,30,0
    .goto 1420/0,476.62,2572.55,30,0
    .goto 1420/0,399.35,2544.23,30,0
    .goto 1420/0,374.95,2612.01,30,0
    .goto 1420/0,396.19,2676.18,30,0
    .goto 1420/0,435.96,2754.51,30,0
    >>Pegue a |cRXP_PICK_Erva-do-demo|r no chão
    >>|cRXP_WARN_São encontrados perto de árvores na área dos Gnoll|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #completewith MaggotEye
    >>Mate |cRXP_ENEMY_Mestiços Putricouros|r. Saqueie-os para pegar |cRXP_LOOT_Linfa|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto 1420/0,382.63,2910.55
    >>Mate o |cRXP_ENEMY_Olho de Verme|r. Saqueie-o para pegar a |cRXP_LOOT_Pata|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto 1420/0,332.48,2862.35,0
    .goto 1420/0,380.38,2768.97,50,0
    .goto 1420/0,332.48,2862.35,50,0
    .goto 1420/0,401.16,2895.19,50,0
    .goto 1420/0,318.47,2696.36,50,0
    >>Mate |cRXP_ENEMY_Mestiços Putricouros|r. Saqueie-os para pegar |cRXP_LOOT_Linfa|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #loop
    .goto 1420/0,332.48,2862.35,0
    .goto 1420/0,380.38,2768.97,50,0
    .goto 1420/0,332.48,2862.35,50,0
    .goto 1420/0,401.16,2895.19,50,0
    .goto 1420/0,318.47,2696.36,50,0
    >>Mate |cRXP_ENEMY_Gnolls Putricouros|r. Saqueie-os para pegar |cRXP_LOOT_Linfa|r
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step
    #label MurlocVins
    #loop
    .goto 1420/0,342.87,2998.22,0
    .goto 1420/0,350.10,2962.37,50,0
    .goto 1420/0,342.87,2998.22,50,0
    .goto 1420/0,293.16,2974.12,50,0
    .goto 1420/0,254.75,2951.820,50,0
    .goto 1420/0,188.33,2950.02,50,0
    .goto 1420/0,65.42,2927.12,50,0
    .goto 1420/0,-15.92,2964.78,50,0
    .goto 1420/0,-49.36,3040.39,50,0
    >>Mate |cRXP_ENEMY_Murlocs Pinavil|r. Saqueie-os para pegar |cRXP_LOOT_Escama|r e |cRXP_LOOT_Pele de Murloc|r
    >>|cRXP_ENEMY_Saltapoças Pinavil|r |cRXP_WARN_do NÃO deixam|r |cRXP_LOOT_Pele de Murloc Pinavil|r como saque
    .complete 368,1 --Vile Fin Scale (5)
    .complete 97558,3 --|3/3 Vile Fin Murloc Skin
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step
    #loop
    .goto 1420/0,138.300,2829.600,0
    .goto 1420/0,138.300,2829.600,50,0
    .goto 1420/0,121.200,2727.400,50,0
    .goto 1420/0,127.500,2601.800,50,0
    .goto 1420/0,211.400,2545.500,50,0
    .goto 1420/0,146.300,2408.000,50,0
    .goto 1420/0,94.600,2312.100,50,0
    .goto 1420/0,39.900,2248.100,50,0
    .goto 1420/0,-137.100,2206.000,50,0
    .goto 1420/0,-190.800,2387.700,50,0
    >>Mate |cRXP_ENEMY_Quiropúsculos|r. Saqueie-os para pegar |cRXP_LOOT_Pelagens|r e |cRXP_LOOT_Membranas de asa|r
    .complete 375,1 --Duskbat Pelt (5)
    .complete 97558,1 --|8/8 Duskbat Wing Membrane
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #completewith Brill3
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #completewith Brill3
    .subzone 159 >>Volte para Montalvo
    .subzoneskip 159
    .cooldown item,6948,<0
step << skip
    #softcore
    #completewith Brill3
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .accept 354 >>Aceite Mortes na família
    .accept 362 >>Aceite Os moinhos assombrados
    .target Coleman Farthing
step
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Fio Grosso] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .turnin 398 >>Entregue Procura-se: Olho de Verme
    .target Executor Zygand
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistrado Sevren|r
    .turnin 358 >>Entregue Roubacovas
    .accept 405 >>Aceite O Lich pródigo << Mage/Warlock
    .accept 359 >>Aceite Deveres Renegados
    .target Magistrate Sevren
step
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O frio da morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
	.train 139 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caio Cantígnea|r no segundo andar
    .train 205 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil de Mon|r
    .train 284 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r no segundo andar
    .train 6760 >>Treine suas magias de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 980 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto 1420/0,240.29,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Enfermeira Nila|r
    >>|cRXP_WARN_Tente fazê-los enquanto estiver esperando por algo, como os Zepelins|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Nurse Neela
step
    #label Brill3
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Mage/Priest/Paladin
    >>|cRXP_BUY_Compre|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r << Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r << Warlock
    .collect 1179,20,426,1 << Mage/Priest/Paladin --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock/Paladin
    .target Innkeeper Renee
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shária Calmafonte|r
    .train 853 >>Treine suas magias de classe
    .target Shari Stilwell
    .xp <8,1
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olivier Ewor|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135641:0|t[Estilete] (3p 81c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olivier Ewor|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5p 10c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shária Calmafonte|r
    .train 679 >>Aprenda |T626003:0|t[Golpe Sagrado]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olivier Ewor|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (6p 66c). Você voltará depois se ainda não tiver o suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,354,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << skip --Rogue/Warrior
    #softcore
    .goto 1420/0,308.08,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elisa Callen|r
    .vendor >>Conserte sua arma
    .target Eliza Callen
step
    .goto 1420/0,76.000,2026.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lenita Ravais|r
    .turnin 97558 >>Entregue Pelegos para os Renegados
    .target Shelene Rhobart
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .turnin 359 >>Entregue Deveres Renegados
    .accept 360 >>Aceite De volta ao Magistrado
    .accept 356 >>Aceite Patrulha da retaguarda
    .target Deathguard Linnea
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joaquino|r
    .turnin 368 >>Entregue Uma nova peste
    .accept 369 >>Aceite Uma nova peste
    .target Apothecary Johaan
step
    #label DoomedWeed
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário-júnior Hollanda|r
    >>|cRXP_WARN_Ele patrulha os arredores do cemitério|r
    .turnin 5482 >>Entregue Erva-do-demo
    .accept 99142 >>Aceite Erva de Tumba
    .target Junior Apothecary Holland
step
    #label AgamandStart
    .goto 1420/0,882.41,2511.1,100,0
    .goto 1420/0,892.80,2520.74
    .subzone 157 >>Vá para o norte/oeste em direção a Moinhos dos Agamand
    .isOnQuest 362
step
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Carta de Timóteo|r] |cRXP_WARN_Pode cair desses inimigos. Aceite a missão se cair.|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
step
    #completewith ThurmanGregor
    >>Mate |cRXP_ENEMY_Soldados|r e |cRXP_ENEMY_Osteurgos|r. Saqueie-os para pegar seus |cRXP_LOOT_Costelas|r e |cRXP_LOOT_Crânios|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #label KillDevlin
    .goto 1420/0,894.16,2609.00
    >>Mate |cRXP_ENEMY_Delmiro Agamand|r. Saque-o para pegar |cRXP_LOOT_Restos Mortais de Delmiro|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto 1420/0,803.78,2752.40
    >>Mate |cRXP_ENEMY_Nissa Agamand|r. Saque-a para pegar |cRXP_LOOT_Restos Mortais de Nissa|r. Ela pode estar dentro do prédio
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #label ThurmanGregor
    #loop
    .goto 1420/0,996.28,2899.11,0
    .goto 1420/0,1058.19,2775.59,60,0
    .goto 1420/0,998.54,2903.93,60,0
    .goto 1420/0,919.01,2939.770,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,996.28,2899.11,60,0
    >>Mate |cRXP_ENEMY_Timóteo Agamand|r e |cRXP_ENEMY_Gregor Agamand|r. Saque-os para pegar os seus |cRXP_LOOT_Restos Mortais|r
    >>|cRXP_WARN_Eles podem patrulhar pela área|r
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
step
    #label MillsOverun
    #loop
    .goto 1420/0,996.28,2899.11,0
    .goto 1420/0,1058.19,2775.59,60,0
    .goto 1420/0,998.54,2903.93,60,0
    .goto 1420/0,919.01,2939.770,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,996.28,2899.11,60,0
    >>Mate |cRXP_ENEMY_Soldados|r e |cRXP_ENEMY_Osteurgos|r. Saqueie-os para pegar seus |cRXP_LOOT_Costelas|r e |cRXP_LOOT_Crânios|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #optional
    #loop
    .goto 1420/0,857.56,2793.97,60,0
    .goto 1420/0,880.15,2884.04,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .goto 1420/0,1025.2,2908.44,60,0
    .goto 1420/0,1040.56,2793.07,60,0
    .goto 1420/0,918.56,2780.11,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .xp 9+3840 >>Mate inimigos até atingir 4320+/6500 de xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
step
    #optional
    #loop
    .goto 1420/0,857.56,2793.97,60,0
    .goto 1420/0,880.15,2884.04,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .goto 1420/0,1025.2,2908.44,60,0
    .goto 1420/0,1040.56,2793.07,60,0
    .goto 1420/0,918.56,2780.11,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .xp 9+3360 >>Mate inimigos até atingir 3360+/6500 de xp
    .itemcount 2839,1 --A Letter to Yvette (1)
step
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >>Volte para Montalvo
step
    #softcore
    #completewith FoodandWater2
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto 1420/0,403.42,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .turnin 426 >>Vá para Os moinhos invadidos
    .target Deathguard Dillinger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ivete Palhares|r e |cRXP_FRIENDLY_Eurico Palhares|r
    .turnin 361 >>Entregue A carta que nunca chegou
    .target +Yvette Farthing
    .goto 1420/0,250.69,2252.920
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os moinhos assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target +Coleman Farthing
    .goto 1420/0,244.36,2262.26
    .isOnQuest 361
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Entregue Os moinhos assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target Coleman Farthing
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistrado Sevren|r
    .turnin 360 >>Entregue De volta ao Magistrado
    .turnin 355 >>Entregue Fale com Sevren
    .target Magistrate Sevren
    .xp >10,1 --turnin later if lvl 10 already
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
	.trainer >>Treine suas magias de classe
    .target Dark Cleric Beryl
step << Warrior
    #optional
    .abandon 1505 >>Abandone Veterano Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandone Caminho da defesa
    .isOnQuest 1498
step << Warrior
    .goto 1420/0,238.49,2254.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil de Mon|r
    .trainer >>Treine suas magias de classe
    .accept 1818 >>Aceite Uma conversa com Dinis
    .target Austil de Mon << Warrior
    .isQuestAvailable 1498
step << Warlock
    .goto 1420/0,248.88,2251.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ageron Karhal|r dentro da estalagem
    .accept 1478 >>Aceite Convocação de Hidalgo
    .target Ageron Kargal
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 707 >>Treine suas magias de classe
    .target Rupert Boch
step << Rogue
    .goto 1420/0,243.01,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r dentro da estalagem
    .trainer >>Treine suas magias de classe
    .accept 1885 >>Aceite Júnio Aquino
    .target Marion Call
step << Mage
    .goto 1420/0,233.52,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caio Cantígnea|r dentro da estalagem
    .accept 1881 >>Aceite Fale com Anastácia Cordato
    .target Cain Firesong
step
    #label FoodandWater2
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r << Warlock
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .turnin 1818 >>Entregue Uma conversa com Dinis
    .accept 1819 >>Aceite Ulag, o Cutelo
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,360.04,2376.14
    >>|cRXP_WARN_Clique no crânio no chão. Isto vai invocar|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mate-o|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .turnin 1819 >>Entregue Ulag, O Cutelo
    .accept 1820 >>Aceite Encontrando Eurico
    .target Deathguard Dillinger
step
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Terêncio|r
    .accept 96895 >>Aceite Emissário Argênteo
    .target Deathguard Terrence
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shária Calmafonte|r
    .accept 91282 >>Aceite Um segundo lar
    .trainer >>Treine suas magias de classe
    .target Shari Stilwell
step << Warlock
    #completewith next
    .goto 1420/0,240.75,1877.57,20 >>Entre em Cidade Baixa
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >>Pegue o elevador até Cidade Baixa
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silvério Hidalgo|r no Distrito da Magia
    .turnin 1478 >>Entregue Convocação de Hidalgo
    .accept 1473 >>Aceite Criatura do caos
step << Warlock
    .goto 1458/0,66.74,1766.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boanerges Stalactus|r no Distrito da Magia
    .turnin 405 >>Entregue O Lich pródigo
    --.accept 357 >>Accept The Lich's Identity
    .target Bethor Iceshard
step << Warlock
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >>Saia de Cidade Baixa pelos Esgotos
    .zoneskip Tirisfal Glades
step << Warlock
    #completewith next
    .goto 1420/0,726.06,1801.95
    >>Saqueie |cRXP_PICK_Baú do Perrine|r para pegar |T133733:0|t[Grimório de Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
    #loop
	.goto 1420/0,770.80,1762.79,40,0
	.goto 1420/0,763.57,1820.93,40,0
	.goto 1420/0,721.54,1857.38,40,0
	.goto 1420/0,694.88,1848.04,40,0
	.goto 1420/0,641.56,1800.45,40,0
	.goto 1420/0,651.05,1748.93,40,0
	.goto 1420/0,685.39,1741.70,40,0
	.goto 1420/0,727.42,1742.31,40,0
    >>Mate o |cRXP_ENEMY_Capitão Perrine|r, os |cRXP_ENEMY_Zelotes Escarlates|r e os |cRXP_ENEMY_Missionários Escarlates|r. Saqueie-os para pegar os |cRXP_LOOT_Anéis com Insígnia Escarlate|r
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step << Warlock
    .goto 1420/0,726.06,1801.95
    >>Saqueie |cRXP_PICK_Baú do Perrine|r no chão para pegar |T133733:0|t[Grimório de Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #completewith UCHome
    .goto 1458/0,714.8,1604.24,35,0
    .goto 1458/0,652.73,1623.44,35,0
    .goto 1458/0,634.02,1669.66,35,0
    .goto 1458/0,539.52,1665.17,10,0
    .goto 1458/0,481.48,1659.8,10,0
    .goto 1458/0,476.49,1632.15,10,0
    .goto 1458/0,439.08,1627.02,10,0
    .goto 1458/0,435.05,1598.86,10,0
    .zone Undercity >>Entre na Cidade Baixa pelos esgotos
    .zoneskip Undercity
step << Rogue
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|rFale com|cRXP_FRIENDLY_ Arquibaldo|r no Distrito Bélico
    .train 201 >>Treine Espadas de Uma Mão
    .target Archibald
step << Warrior/Rogue
    .goto 1458/0,335.37,1638.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brom Morgado|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Brom Killian
step << Warrior/Rogue
    .goto 1458/0,329.04,1641.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cilene Rocha|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de|r |cRXP_FRIENDLY_Cilene Rocha|r
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto 1458/0,295.94,1691.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Basílio Frias|r
    .train 2018 >>Aprenda |T136241:0|t[Ferraria]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silvério Hidalgo|r no Distrito da Magia
    .turnin 1473 >>Entregue Criatura do caos
    .accept 1471 >>Aceite A vinculação
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Use as|r |T134416:0|t[Runas de Evocação] |cRXP_WARN_no Círculo de Evocação|r
    .use 6284
step << Warlock
    .goto 1458/0,41.99,1704.480
    >>Mate o |cRXP_ENEMY_Emissário do Caos Evocado|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto 1458/0,57.34,1711.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carinda|r
    .turnin 1471 >>Entregue A Vinculação
    .target Carendin Halgar
step << Warrior
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Distrito dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Distrito dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipe o|r |T135350:0|t[Espadão]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Distrito dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Distrito dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto 1458/0,129.68,1560.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Natanael Hermógenes|r no Distrito dos Ladinos
    >>|cRXP_BUY_Compre|r |T135425:0|t[Facas de Arremesso Afiadas] |cRXP_BUY_dele|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Lembre-se de equipar as|r |T135425:0|t[Facas de Arremesso Afiadas] |cRXP_WARN_quando estiver no nível 11|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    .goto 1458/0,71.92,1435.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1885 >>Entregue Júnio Aquino
    .accept 1886 >>Aceite Os Sicários
    .target Mennet Carkad
step << Mage
    .goto 1458/0,168.600,1662.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adélio Tadeu|r
    .turnin 79095 >>Entregue A Cartilha Metafísica do Boticário
    .target Owen Thadd
    .itemcount 208185,1
step << Mage
    #optional
    .abandon 1883 >>Abandone Fale com Un'Thuwa, caso contrário você não conseguirá aceitar a próxima missão
    .isOnQuest 1883
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastácia Cordato|r no Distrito da Magia
    .turnin 1881 >>Entregue Fale com Anastácia Cordato
    .accept 1882 >>Aceite A Fazenda dos Balnir
    .target Anastasia Hartwell
step << Mage
    .goto 1458/0,66.74,1766.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boanerges Stalactus|r no Distrito da Magia
    .turnin 405 >>Entregue O Lich pródigo
    --.accept 357 >>Accept The Lich's Identity
    .target Bethor Iceshard
step << Paladin
    #label UCHome
    .goto 1458/0,223.31,1634.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Ronan|r
    .home >>Defina sua Pedra de Regresso em Cidade Baixa
    .target Innkeeper Norman
    .bindlocation 1497
step
    #optional
    #label LogoutSkip1
step << skip
    .goto 1458/0,59.07,1747.75
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Faça um Atalho por Logout na parte mais alta da escada inferior, até seu personagem parecer flutuar, depois, saia e entre novamente|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUE AQUI para ver um exemplo|r
    >>|cRXP_WARN_Se você não conseguir fazer isso, apenas saia de Cidade Baixa normalmente|r
step
    #completewith AtWarS
    .goto 1420/0,235.32,1883.89
    .zone Tirisfal Glades >>Saia de Cidade Baixa
    .zoneskip Tirisfal Glades
step << Undead Rogue
    #sticky
    #completewith ArriveBalnir
    >>|cRXP_WARN_Se você vir|r |cRXP_FRIENDLY_Astolfo Hadren|r|cRXP_WARN_, fale com ele e mate-o. Saque-o pela carta. Ele patrula a estrada entre Montalvo e Sepulcro|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step
    #optional
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Belchior|r
    .turnin 374 >>Entregue Prova da morte
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #label AtWarS
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .turnin 370 >>Entregue Guerra à Cruzada Escarlate
    .accept 371 >>Aceite Guerra à Cruzada Escarlate
    .target Executor Zygand
step
    .goto 1420/0,270.12,2253.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Sra. Hibérnias|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_com|r |cRXP_FRIENDLY_ela|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 1820 >>Entregue Encontrando Eurico
    .target Coleman Farthing
step
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96895 >>Entregue O emissário Argênteo
    .accept 96897 >>Aceite A Seita dos malditos
    .accept 96898 >>Aceite Vestígios da guerra
    .target Hadric Harlson
step
    .goto 1420/0,-130.500,1907.800
    >>Mate |cRXP_ENEMY_Impositores Sombrios|r e |cRXP_ENEMY_Neófitos Sombrios|r. Saqueie-os para pegar |cRXP_LOOT_Fragmento de Cristal Necrótico|r
    >>|cRXP_LOOT_Fragmento de Cristal Necrótico|r |cRXP_WARN_também pode ser pego no chão|r
    >>|cRXP_WARN_Tome cuidado! Esses inimigos causam muito dano. Os |cRXP_ENEMY_Impositores Sombrios|r também têm uma habilidade instantânea que causa 50-70 de dano|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96897 >>Entregue A Seita dos malditos
    .turnin 96898 >>Entregue Vestígios da guerra
    .accept 96899 >>Aceite Bastilha de Bandarion
    .target Hadric Harlson
step
    #label ArriveBalnir
    .goto 1420/0,-423.96,1976.68
    .subzone 165 >>Vá para Fazenda dos Balnir
    .isOnQuest 356
step
    #completewith HorrorsandSpirits
    >>Peque |cRXP_PICK_Erva de Tumba|r que está no chão
    .complete 99142,1 --|5/5 Tomb Weed
step << Mage
    #completewith next
    >>Mate |cRXP_ENEMY_Horrores Sangrentos|r e |cRXP_ENEMY_Espíritos Errantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    .goto 1420/0,-467.79,1969.75
    >>Saque qualquer planta no chão para obter uma |cRXP_PICK_Boca-de-leão de Balnir|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #label HorrorsandSpirits
    #loop
	.goto 1420/0,-324.55,2000.48,0
	.goto 1420/0,-324.55,2000.48,50,0
	.goto 1420/0,-330.88,2040.84,50,0
	.goto 1420/0,-359.34,2073.38,50,0
	.goto 1420/0,-421.25,2070.07,50,0
	.goto 1420/0,-464.63,2070.37,50,0
	.goto 1420/0,-516.14,2017.05,50,0
	.goto 1420/0,-466.44,1986.02,50,0
	.goto 1420/0,-436.61,1951.670,50,0
	.goto 1420/0,-355.28,1970.35,50,0
    >>Mate |cRXP_ENEMY_Horrores Sangrentos|r e |cRXP_ENEMY_Espíritos Errantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step
    .goto 1420/0,-354.800,2049.000
    >>Peque |cRXP_PICK_Erva de Tumba|r que está no chão
    .complete 99142,1 --|5/5 Tomb Weed
step << Paladin
    #completewith ViciousVenom
    >>|cRXP_WARN_Guarde 10 unidades de|r |T132889:0|t[Linho] |cRXP_WARN_para uma missão depois. Certifique-se de não vender|r
    .collect 2589,10 --Linen Cloth (10)
step
    #sticky
    #label Friars
    #loop
    #optional
    .goto 1420/0,-624.59,2114.05,0
    .goto 1420/0,-452.43,2183.03,0
    .goto 1420/0,-573.53,2138.450,0
    .goto 1420/0,-624.59,2114.05,40,0
    .goto 1420/0,-654.87,2185.44,40,0
    .goto 1420/0,-652.16,2238.77,40,0
    .goto 1420/0,-550.49,2173.09,40,0
    .goto 1420/0,-452.43,2183.03,40,0
    .goto 1420/0,-407.69,2171.590,40,0
    .goto 1420/0,-406.34,2113.75,40,0
    .goto 1420/0,-453.33,2127.91,40,0
    .goto 1420/0,-573.53,2138.450,40,0
    >>Mate |cRXP_ENEMY_Frades Escarlates|r e |cRXP_ENEMY_Zelotes Escarlates|r. Saqueie-os para pegar |cRXP_LOOT_Anel com Insígnia Escarlate|r
    .complete 371,2 --Scarlet Friar (5)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step
    #loop
    #sticky
    #requires Friars
    #label Friars2
    .goto 1420/0,-624.59,2114.05,0
    .goto 1420/0,-452.43,2183.03,0
    .goto 1420/0,-573.53,2138.450,0
    .goto 1420/0,-624.59,2114.05,40,0
    .goto 1420/0,-654.87,2185.44,40,0
    .goto 1420/0,-652.16,2238.77,40,0
    .goto 1420/0,-550.49,2173.09,40,0
    .goto 1420/0,-452.43,2183.03,40,0
    .goto 1420/0,-407.69,2171.590,40,0
    .goto 1420/0,-406.34,2113.75,40,0
    .goto 1420/0,-453.33,2127.91,40,0
    .goto 1420/0,-573.53,2138.450,40,0
    >>Mate |cRXP_ENEMY_Frades Escarlates|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    .goto 1420/0,-528.35,2146.28
    >>Mate o |cRXP_ENEMY_Capitão Vidálio|r que está dentro da torre
    .complete 371,1 --Captain Vachon (1)
    .mob Captain Vachon
step
    #label ViciousVenom
    #requires Friars2
    #loop
    .goto 1420/0,-808.96,2189.06,0
    .goto 1420/0,-739.82,2163.75,30,0
    .goto 1420/0,-808.96,2189.06,30,0
    .goto 1420/0,-878.10,2195.39,30,0
    .goto 1420/0,-945.88,2180.93,30,0
    .goto 1420/0,-985.64,2224.00,30,0
    .goto 1420/0,-1019.99,2274.61,30,0
    .goto 1420/0,-1075.11,2314.38,30,0
    .goto 1420/0,-1072.85,2381.56,30,0
    .goto 1420/0,-1027.67,2432.17,30,0
    .goto 1420/0,-809.41,2431.26,30,0
    .goto 1420/0,-785.91,2352.64,30,0
    .goto 1420/0,-738.02,2268.29,30,0
    >>Mate |cRXP_ENEMY_Trevateia Malévola|r. Saqueie-as para pegar |cRXP_LOOT_Peçonha de Trevateia Malévola|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step << skip
    .goto 1420/0,-38.06,2569.54
    >>Saqueie |cRXP_PICK_Livros do Tertuliano|r para pegar |cRXP_LOOT_Grimório do Lich|r na ilha no Lago Águas Claras
    .complete 357,1 --The Lich's Spellbook (1)
step
    --#hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >>Volte para Montalvo
    .subzoneskip 159
step << skip
    #softcore
    #completewith ANewPlagueFinal
    .goto 1420/0,23.85,2483.38
    .deathskip >>Morra |cRXP_WARN_NA ILHA MENOR|r e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto 1420/0,346.94,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joaquino|r
    .turnin 369 >>Entregue Uma nova peste
    .accept 492 >>Aceite Uma nova peste
    .accept 445 >>Aceite Entrega na Floresta de Pinhaprata
    .target Apothecary Johaan
step
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .turnin 371 >>Entregue Guerra à Cruzada Escarlate
    --.accept 372 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistrado Sevren|r
    .turnin 360 >>Entregue De volta ao Magistrado
    .turnin 355 >>Entregue Fale com Sevren
    .target Magistrate Sevren
step
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Belchior|r
    .turnin 374 >>Entregue Prova da morte
    .target Deathguard Burgess
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Renee
step
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Zelote Escarlate Capturado|r e com o |cRXP_FRIENDLY_Montanhista Capturado|r no andar de baixo, nos fundos da estalagem
    .turnin 407 >>Entregue Campos de mágoa
    .goto 1420/0,233.06,2292.39
    .target +Captured Scarlet Zealot
    .turnin 492 >>Entregue Uma nova peste
    .goto 1420/0,234.42,2289.070
    .target +Captured Mountaineer
step << Priest
    .goto 1420/0,251.14,2265.28--c:Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
	.trainer >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03--c:Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil de Mon|r
    .train 7384 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25--c:Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2270.70--c:Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r
    .train 1766 >>Treine suas magias de classe
    .target Marion Call
    .xp <12,1
step << Mage
    .goto 1420/0,233.52,2256.84--c:Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caio Cantígnea|r dentro da estalagem
    .train 145 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <12,1
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shária Calmafonte|r
    .train 678 >>Treine suas magias de classe
    .target Shari Stilwell
    .xp <12,1
step
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário-júnior Hollanda|r
    >>|cRXP_WARN_Ele patrulha os arredores do cemitério|r
    .turnin 99142 >>Entregue Erva de Tumba
    .target Junior Apothecary Holland

    --Bandarion Keep section

step << !Paladin
    #optional
    .maxlevel 11,BandarionKeepSkip
step
    #completewith next
    .goto 1420/0,1732.500,2437.900,50,0
    .goto 1420/0,1834.300,2424.000,50,0
    .goto 1420/0,1963.100,2340.600,50,0
    .goto 1420/0,2041.000,2352.500,50,0
    .goto 1420/0,2049.900,2463.200,50 >>Vá para Bastilha de Bandarion
step << Paladin
    .goto 1420/0,2045.900,2475.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bretônio Samuel|r
    .turnin 91282 >>Entregue Um segundo lar
    .accept 91285 >>Aceite Murlocs nos portões
    .target Breton Samuels
step
    .goto 1420/0,2038.000,2490.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leonid Bartolomeu, o Venerado|r no andar de cima
    .turnin 96899 >>Entregue Bastilha de Bandarion
    .accept 96896 >>Aceite Uma causa íntegra
    .target Leonid Barthalomew the Revered
step
    .goto 1420/0,2038.000,2490.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leonid Bartolomeu, o Venerado|r no andar de cima
    .turnin 96896 >>Entregue Uma causa íntegra
    .accept 98545 >>Aceite A carta de Leonid
    .target Leonid Barthalomew the Revered
step
    .goto 1420/0,2041.200,2416.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hilda, a Devastadora|r lá fora
    .accept 99152 >>Aceite Assim na terra como no céu
    .target Hilda the Breaker
step
    .goto 1420/0,2122.100,2436.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Efraim Barbaro|r lá fora
    .accept 99153 >>Aceite E o sectário levou
    .target Ephram Barbaro
step << Paladin
    #loop
    .goto 1420/0,2424.200,2151.900,0
    .goto 1420/0,2212.000,2022.600,0
    .goto 1420/0,2424.200,2151.900,50,0
    .goto 1420/0,2212.000,2022.600,50,0
    >>Mate |cRXP_ENEMY_Videntes Pinavil|r e |cRXP_ENEMY_Atacantes Pinavil|r
    .complete 91285,2 --|8/8 Vile Fin Seer slain
    .mob +Vile Fin Seer
    .complete 91285,1 --|8/8 Vile Fin Attacker slain
    .mob +Vile Fin Attacker
step << Paladin
    .goto 1420/0,2045.800,2475.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bretônio Samuel|r
    .turnin 91285 >>Entregue Murlocs nos portões
    .accept 91294 >>Aceite Um passeio pelo pátio
    .target Breton Samuels
    --very good weapon upgrade 8.9 dps (Wooden Mallet 5.0 dps)
step << Paladin -- paladin trainer outside
    .goto 1420/0,2038.800,2415.900
    >>Fale com |cRXP_FRIENDLY_Hilda, a Devastadora|r
    .complete 91294,1 --|1/1 Speak with Hilda the Breaker
    .target Hilda the Breaker
step << Paladin --patrols the road
    .goto 1420/0,1961.100,2334.600
    >>Fale com |cRXP_FRIENDLY_Abner Solliden|r
    >>|cRXP_WARN_Ele patrulha a estrada|r
    .complete 91294,3 --|1/1 Speak with Ander Solliden
    .target Ander Solliden
    --TODO: Patrol path
step << Paladin --inside keep
    .goto 1420/0,2007.900,2491.200
    >>Fale com |cRXP_FRIENDLY_Jorin Croge|r
    .complete 91294,2 --|1/1 Speak with Jorin Croge
    .target Jorin Croge
step << Paladin --upstairs in keep
    .goto 1420/0,2035.100,2492.200
    >>Fale com |cRXP_FRIENDLY_Danitha Morr|r
    .complete 91294,4 --|1/1 Speak with Danitha Morr
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2035.100,2492.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 91294 >>Entregue Um passeio pelo pátio
    .accept 91317 >>Aceite Os manchados
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2007.800,2491.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorin Croge|r
    .accept 91316 >>Aceite Reformas
    .target Jorin Croge
step << Paladin
    #completewith next
    >>Mate |cRXP_ENEMY_Zelotes Manchados|r e |cRXP_ENEMY_Labutadores Manchados|r
    .complete 91317,3 --|6/6 Tarnished Zealot slain
    .mob +Tarnished Zealot
    .complete 91317,2 --|8/8 Tarnished Drudge slain
    .mob +Tarnished Drudge
step << Paladin
    .goto 1420/0,2514.600,1903.600
    >>Mate |cRXP_ENEMY_Rudolfo Gelhardt|r no andar de cima. Saqueie a |cRXP_LOOT_Cabeça|r dele
    .complete 91317,1 --|1/1 Rudolph Gelhardt's Head
    .mob Rudolph Gelhardt
step << Paladin
    .goto 1420/0,2487.700,1910.000
    >>Mate |cRXP_ENEMY_Zelotes Manchados|r e |cRXP_ENEMY_Labutadores Manchados|r
    .complete 91317,3 --|6/6 Tarnished Zealot slain
    .mob +Tarnished Zealot
    .complete 91317,2 --|8/8 Tarnished Drudge slain
    .mob +Tarnished Drudge
step
    #label ShadowValeCrypt
    .goto 1420/0,2449.500,1857.600,10 >>Entre na cripta do Vale das Sombras
    .isOnQuest 99152,95314,99153
step
    #requires ShadowValeCrypt
    #completewith GlowingFragment
    >>Mate |cRXP_ENEMY_Saltadores do Vale das Sombras|r e |cRXP_ENEMY_Místicos do Vale das Sombras|r. Saqueie-os para pegar |cRXP_LOOT_Osso Levemente Brilhante|r
    .complete 99152,1 --|6/6 Faintly Glowing Bone
    .mob Shadowvale Lurcher
    .mob Shadowvale Mystic
step
    #requires ShadowValeCrypt
    #completewith GlowingBones
    >>Pegue as |cRXP_PICK_Pilhas de Madeira|r que estão no chão << Paladin
    >>Pegue as |cRXP_PICK_Garrafas de Elixir Sussurrante|r que estão no chão e nas paredes
    .complete 91316,1 << Paladin--|12/12 Sturdy Lumber
    .complete 95314,1 --|8/8 Bottle of Whispering Elixir
step
    .goto 1420/0,2648.100,2027.200
    .use 268812 >>Mate |cRXP_ENEMY_Horror Sussurrante|r (elite). Pegue |T134438:0|t[|cRXP_LOOT_Resíduo do Horror Sussurrante|r] dele
    >>|cRXP_WARN_Este é difícil! Forme um grupo, se possível. Ele tem 700 de vida, mas o dano é suportável. Pule esta etapa se não conseguir derrotá-lo|r
    .collect 268812,1,95328 --Whispering Horror Residue (x1)
    .accept 95328 >>Aceite Resíduo do Horror Sussurrante
    .mob Whispering Horror
step
    #requires ShadowValeCrypt
    #label GlowingFragment
    .goto 1420/0,2592.400,1748.400
    >>Pegue o |cRXP_PICK_Fragmento de Cristal Brilhante|r que está no chão
    .complete 99153,1 --|1/1 Glowing Crystal Fragment
step
    #requires ShadowValeCrypt
    #label GlowingBones
    .goto 1420/0,2556.100,1868.800
    >>Mate |cRXP_ENEMY_Saltadores do Vale das Sombras|r e |cRXP_ENEMY_Místicos do Vale das Sombras|r. Saqueie-os para pegar |cRXP_LOOT_Osso Levemente Brilhante|r
    .complete 99152,1 --|6/6 Faintly Glowing Bone
    .mob Shadowvale Lurcher
    .mob Shadowvale Mystic
step
    #requires ShadowValeCrypt
    .goto 1420/0,2647.800,1815.500
    >>Pegue as |cRXP_PICK_Pilhas de Madeira|r que estão no chão << Paladin
    >>Pegue as |cRXP_PICK_Garrafas de Elixir Sussurrante|r que estão no chão e nas paredes
    .complete 91316,1 << Paladin--|12/12 Sturdy Lumber
    .complete 95314,1 --|8/8 Bottle of Whispering Elixir
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto 1420/0,2037.100,2416.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hilda, a Devastadora|r
    .turnin 99152 >>Entregue Assim na terra como no céu
    .target Hilda the Breaker
step
    .goto 1420/0,2122.500,2436.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Efraim Barbaro|r
    .turnin 99153 >>Entregue E o sectário levou
    .target Ephram Barbaro
step << Paladin
    .goto 1420/0,2008.000,2491.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorin Croge|r
    .turnin 91316 >>Entregue Reformas
    .target Jorin Croge
step << Paladin
    .goto 1420/0,2035.100,2492.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 91317 >>Entregue Os manchados
    .accept 95803 >>Aceite Uma prova de boa-fé
    .accept 94427 >>Aceite Uma lição de divindade
    .target Danitha Morr
step << !Paladin
    #completewith BrillTurnin2
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step << !Paladin
    #completewith BrillTurnin2
    .subzone 159 >>Volte para Montalvo
    .subzoneskip 159
    .cooldown item,6948,<0
step << !Paladin
    .goto 1420/0,347.600,2265.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carolai Anise|r
    .turnin 95314 >>Entregue O elixir verde do Vale das Sombras
    .target Carolai Anise
step << Priest
    .goto 1420/0,251.14,2265.28--c:Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
	.trainer >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03--c:Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil de Mon|r
    .train 7384 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25--c:Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2270.70--c:Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r
    .train 1766 >>Treine suas magias de classe
    .target Marion Call
    .xp <12,1
step << Mage
    .goto 1420/0,233.52,2256.84--c:Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caio Cantígnea|r dentro da estalagem
    .train 145 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <12,1
step
    #optional
    #label BandarionKeepSkip
step << Rogue
    #completewith EnterUC2
    >>|cRXP_WARN_Se você vir|r |cRXP_FRIENDLY_Astolfo Hadren|r|cRXP_WARN_, fale com ele e mate-o. Saqueie-o pela carta. Ele patrula a estrada entre Montalvo e Sepulcro|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << !Paladin
    #label BrillTurnin2
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .turnin 356 >>Entregue Patrulha da retaguarda
    .target Deathguard Linnea
step << !Paladin
    #label EnterUC2
    #completewith Glix
    .goto 1420/0,240.75,1877.57,20 >>Entre em Cidade Baixa
    .zoneskip Undercity
step << !Paladin
    #completewith Glix
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >>Pegue o elevador até Cidade Baixa
step << !Paladin
    .goto 1458/0,223.31,1634.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Ronan|r
    .home >>Defina sua Pedra de Regresso em Cidade Baixa
    .target Innkeeper Norman
    .bindlocation 1497
step << Paladin
    #completewith Glix
    .hs >>Use sua Pedra de Regresso para ir a Cidade Baixa
    .cooldown item,6948,>0,1
    .bindlocation 1497,1
    .zoneskip Undercity
step << Paladin --trade quarter
    .goto 1458/0,245.300,1637.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tanis Amieiro|r
    >>|cRXP_WARN_Certifique-se de ter 10 unidades de|r |T132889:0|t[Linho] |cRXP_WARN_na bolsa|r
    .turnin 94427 >>Entregue Uma lição de divindade
    .accept 94434 >>Aceite Uma lição de divindade
    .turnin 94434 >>Entregue Uma lição de divindade
    .accept 94435 >>Aceite Uma lição de divindade
    .target Tanis Alderwood
step
    #label Glix
    .goto 1458/0,201.400,1575.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Glix Xizzix|r
    .turnin 98545 >>Entregue A carta de Leonid
    .target Glix Xizzix
step << Rogue
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Distrito dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Distrito dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Distrito dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Distrito dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_Equipe o|r |T135350:0|t[Espadão]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Cain|r
    >>|cRXP_BUY_Compre Três|r |T133884:0|t[Olhos de Murloc] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Pule isto se você quiser, é apenas uma pequena economia de tempo|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastácia Cordato|r no Distrito da Magia
    .turnin 1882 >>Entregue A Fazenda dos Balnir
    .target Anastasia Hartwell
step << Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1886 >>Entregue Os Sicários
    .target Mennet Carkad
    .isQuestComplete 1886
step << Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .accept 1898 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,347.07,1389.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andron Gante|r
    .turnin 1898 >>Entregue Os Sicários
    .accept 1899 >>Aceite Os Sicários
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,341.41,1385.90
    >>Pegue |cRXP_PICK_Estante de Livros de Andron|r atrás de |cRXP_FRIENDLY_Andron Gante|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,71.83,1435.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1899 >>Entregue Os Sicários
    .accept 1978 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1420/0,373.60,1464.85,40,0
    .goto 1420/0,333.38,1287.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varimatras|r
    .turnin 1978 >>Entregue Os Sicários
    .target Varimathras
    .isQuestTurnedIn 1886
step
    .goto 1458/0,399.800,1776.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Padre Gusmão|r
    .turnin 95328 >>Entregue Resíduo do Horror Sussurrante
    .target Father Lankester
    .isOnQuest 95328
step << Priest
    #ah
    .goto 1458/0,257.27,1560.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre uma|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Se você fez isso e estava coletando|r |T132889:0|t[Linho] |cRXP_WARN_anteriormente, você pode vender seu|r |T132889:0|t[Linho] |cRXP_WARN_na Casa de Leilões|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
step << Priest
    #optional
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >>Entregue Toque de Fraqueza
    .target Aelthalyste
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
    .train 2652,1 --Touch of Weakness not trained
step << Priest
    #optional
    .goto 1458/0,201.05,1686.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Victor|r
    .train 3908 >>Aprenda |T136249:0|t[Alfaiataria]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,194.34,1681.63
    >>|cRXP_WARN_Transforme todo seu|r |T132889:0|t[Linho] |cRXP_WARN_em|r |T132890:0|t[Peça de Linho]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,201.05,1686.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Victor|r
    .train 7623 >>Aprenda |T132662:0|t[Veste de Linho Marrom]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,196.16,1684.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Berta Gregório|r
    >>|cRXP_BUY_Compre |r |T132891:0|t[Fio Grosso] |cRXP_BUY_dela|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    >>|cRXP_WARN_Crie o máximo de|r |T132662:0|t[Vestes de Linho Marrom] |cRXP_WARN_que conseguir|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,273.87,1482.360
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lavínia Queiroz|r
    .train 7411 >>Aprenda |T136244:0|t[Encantamento]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,275.02,1487.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Tadeu Uchoa|r|cRXP_BUY_. Compre um|r |T133942:0|t[Bastão de Cobre] |cRXP_BUY_e|r |T135435:0|t[Madeira Simples] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Desencante todas as|r |T132662:0|t[Vestes de Linho Marrom] |cRXP_WARN_que você fez e crie um|r |T135225:0|t[Bastão Rúnico de Cobre]
    >>|cRXP_WARN_Se você não conseguiu uma|r |T132867:0|t[Essência Mágica Inferior] |cRXP_WARN_compre uma de|r |cRXP_FRIENDLY_Tadeu Uchoa|r |cRXP_WARN_se houver alguma disponível. Caso contrário, conclua esta etapa mais tarde|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,273.2,1491.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Augusto Incantum|r
    .train 14293 >>Aprenda |T135139:0|t[Varinha Mágica Inferior]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #label LesserMagicWand
    >>|cRXP_WARN_Crie uma|r |T135139:0|t[Varinha Mágica Inferior]
    >>|cRXP_WARN_Se você não conseguiu uma|r |T132867:0|t[Essência Mágica Inferior] |cRXP_WARN_compre uma de|r |cRXP_FRIENDLY_Tadeu Uchoa|r |cRXP_WARN_se houver alguma disponível. Caso contrário, conclua esta etapa mais tarde|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipe a|r |T135139:0|t[Varinha Mágica Inferior]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Paladin
    #completewith next
    .goto 1458/0,374.41,1464.82,10,0--c:Undercity,51.99,64.54
    .goto 1458/0,429.48,1409.26,10,0--c:Undercity,46.25,73.22
    .goto 1458/0,438.40,1376.62,10,0--c:Undercity,45.32,78.32
    .goto 1458/0,429.39,1340.83,10,0--c:Undercity,46.26,83.91
    .goto 1458/0,402.81,1315.17,10,0--c:Undercity,49.03,87.92
    .goto 1458/0,365.30,1304.41,10 >>Entre no Distrito Real--c:Undercity,52.94,89.60
step << Paladin
    .goto 1458/0,316.200,1290.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Grande Dama Sylvana Correventos|r
    .turnin 95803 >>Entregue Uma prova de boa-fé
    .target Lady Sylvanas Windrunner

    --Paladin Ressurrect chain route

step << Paladin
    #completewith
    .goto 1420/0,235.32,1883.89
    .zone Tirisfal Glades >>Saia de Cidade Baixa
    .zoneskip Tirisfal Glades
step << Paladin
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .turnin 356 >>Entregue Patrulha da retaguarda
    .target Deathguard Linnea
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shária Calmafonte|r
    .train 678 >>Treine suas magias de classe
    .target Shari Stilwell
    .xp <12,1
step << Paladin
    .goto 1420/0,347.600,2265.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carolai Anise|r
    .turnin 95314 >>Entregue O elixir verde do Vale das Sombras
    .target Carolai Anise
step << Paladin
    #completewith RessComplete
    +|cRXP_WARN_Agora você fará a sequência de missões para obter sua habilidade|r |T135955:0|t[Redenção]|cRXP_WARN_. Isso levará ~15 minutos e dará pouca experiência|r
    >>|cRXP_WARN_Fique à vontade para pular esta etapa por enquanto e voltar mais tarde se quiser|r
step << Paladin
    #completewith next
    .goto 1420/0,1732.500,2437.900,50,0
    .goto 1420/0,1834.300,2424.000,50,0
    .goto 1420/0,1963.100,2340.600,50,0
    .goto 1420/0,2041.000,2352.500,50,0
    .goto 1420/0,2049.900,2463.200,50 >>Vá para Bastilha de Bandarion
step << Paladin
    .goto 1420/0,2035.100,2492.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 94435 >>Entregue Uma lição de divindade
    .accept 94436 >>Aceite Uma lição de divindade
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2043.400,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Billmuth|r
    .turnin 94436 >>Entregue Uma lição de divindade
    .accept 94438 >>Aceite Uma lição de divindade
    .target Deathguard Billmuth
    .isOnQuest 94436
step << Paladin
    #optional
    .goto 1420/0,2043.400,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Billmuth|r
    .accept 94438 >>Aceite Uma lição de divindade
    .target Deathguard Billmuth
    .isQuestTurnedIn 94436

    --East Tirisfal south of SM

step << Paladin
    #completewith next
    .goto 1420/0,-885.200,2399.800,50 >>Siga para o leste das Clareiras de Tirisfal
step << Paladin
    #completewith next
    .cast 8593 >>|cRXP_WARN_Use o|r |T133439:0|t[Símbolo da Vida] |cRXP_WARN_no|r |cRXP_FRIENDLY_Necroguarda Falgan|r
    .use 6866
    .target Deathguard Falgan
step << Paladin
    .goto 1420/0,-885.200,2399.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Necroguarda Falgan|r
    .turnin 94438 >>Entregue Uma lição de divindade
    .accept 94440 >>Aceite Uma lição de divindade
    .target Deathguard Falgan
    .isQuestTurnedIn 94436
step << Paladin
    .goto 1420/0,-889.700,2531.400
    >>Mate |cRXP_ENEMY_Frades Escarlates|r e |cRXP_ENEMY_Zelotes Escarlates|r. Saqueie-os para pegar |cRXP_LOOT_Planos de Ataque da Cruzada Escarlate|r
    .complete 94440,1 --|1/1 Scarlet Crusade Attack Plans
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isQuestTurnedIn 94436

    --Back to Bandarion Keep

step << Paladin
    #completewith next
    .goto 1420/0,1732.500,2437.900,50,0
    .goto 1420/0,1834.300,2424.000,50,0
    .goto 1420/0,1963.100,2340.600,50,0
    .goto 1420/0,2041.000,2352.500,50,0
    .goto 1420/0,2049.900,2463.200,50 >>Vá para Bastilha de Bandarion
step << Paladin
    .goto 1420/0,2043.500,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Billmuth|r
    .turnin 94440 >>Entregue Uma lição de divindade
    .accept 94441 >>Aceite Uma lição de divindade
    .target Deathguard Billmuth
    .isQuestTurnedIn 94436
step << Paladin
    #label RessComplete
    .goto 1420/0,2034.900,2492.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 94441 >>Entregue Uma lição de divindade
    .target Danitha Morr
    .isQuestTurnedIn 94436
step << !Paladin
    #completewith Entersilverpine
    #optional
    .abandon 96899 >>Abandone Bastilha de Bandarion
step << !Paladin
    #completewith Entersilverpine
    #optional
    .abandon 95314 >>Abandone O elixir verde do Vale das Sombras
step << !Paladin
    #completewith next
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >>Saia de Cidade Baixa pelos Esgotos
step
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
]])


RXPGuides.RegisterGuide([[
#group Guia RestedXP Forever (H)
#subgroup Guia Speedrun 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#defaultfor !Hunter !Shaman !Tauren
#forever
#era/som--h
#name 12-14 Floresta de Pinhaprata
#displayname 13-15 Floresta de Pinhaprata << Paladin
#next 12-17 Sertões

step << Skyborne
    #optional
    .maxlevel 13,Silverpineskip
step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_Se você vir|r |cRXP_FRIENDLY_Astolfo Hadren|r|cRXP_WARN_, fale com ele e mate-o. Saque-o pela carta. Ele patrula a estrada entre Montalvo e Sepulcro|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    .goto 1421/0,1090.44,1409.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Orlando|r para começar a escolta
    >>|cRXP_WARN_Se ele não estiver lá, pule esta missão por enquanto|r
    .accept 435,1 >>Aceite Uma escolta para Orlando
    .target Deathstalker Erland
step
    .goto 1421/0,1087.50,1379.11,30,0
    .goto 1421/0,1087.50,1346.63,30,0
    .goto 1421/0,1090.86,1313.31,30,0
    .goto 1421/0,1204.68,1290.07
    >>Escolte o |cRXP_FRIENDLY_Sicário Orlando|r com segurança até |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_ENEMY_Worgs|r |cRXP_WARN_podem aparecer um em cima do outro, coma e beba sempre que puder|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
    .isOnQuest 435
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Entregue Uma escolta para Orlando
    .accept 429 >>Aceite Corações selvagens
    .accept 449 >>Aceite Relatório dos Sicários
    .target Rane Yorick
    .isQuestComplete 435
step
    #optional
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rane Yorick|r
    .accept 429 >>Aceite Corações selvagens
    .target Rane Yorick
step
    #completewith Escort2
    >>Mate |cRXP_ENEMY_Worgs|r. Saqueie-os para pegar seus |cRXP_LOOT_Corações|r
    .collect 3164,3,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto 1421/0,715.000,1335.400
    >>Mate |cRXP_ENEMY_Murlocs Pinavis|r. Saqueie-os para pegar |T133884:0|t[|cRXP_LOOT_Olhos de Murloc|r]
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .mob Vile Vin Shredder
    .mob Vile Vin Tidehunter
step
    .goto 1421/0,1090.44,1409.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Orlando|r para começar a escolta
    .accept 435,1 >>Aceite Uma escolta para Orlando
    .target Deathstalker Erland
step
    #label Escort2
    .goto 1421/0,1087.50,1379.11,30,0
    .goto 1421/0,1087.50,1346.63,30,0
    .goto 1421/0,1090.86,1313.31,30,0
    .goto 1421/0,1204.68,1290.07
    >>Escolte o |cRXP_FRIENDLY_Sicário Orlando|r com segurança até |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_ENEMY_Worgs|r |cRXP_WARN_podem aparecer um em cima do outro, coma e beba sempre que puder|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
    .isOnQuest 435
step
    #loop
    .goto 1421/0,1025.76,1384.71,0
    .goto 1421/0,1099.68,1213.63,50,0
    .goto 1421/0,998.46,1230.99,50,0
    .goto 1421/0,955.2,1286.43,50,0
    .goto 1421/0,925.38,1372.39,50,0
    .goto 1421/0,1025.76,1384.71,50,0
    >>Mate |cRXP_ENEMY_Worgs|r. Saqueie-os para pegar seus |cRXP_LOOT_Corações|r
    .collect 3164,3,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Entregue Uma escolta para Orlando
    .turnin 429 >>Entregue Corações selvagens
    .accept 449 >>Aceite Relatório dos Sicários
    .target Rane Yorick
step
    #softcore
    #completewith ProveyourWorth
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #hardcore
    #completewith next
    .goto 1421/0,1359.66,864.19,50,0
    .goto 1421/0,1359.66,741.27,50,0
    .goto 1421/0,1365.12,607.15,100,0
    .goto 1421/0,1538.58,511.39,100 >>Vá para o Sepulcro
    .subzoneskip 228
step
    #label ProveyourWorth
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar Tessalba|r
    .accept 421 >>Aceite Prove seu valor
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guida Farrow|r
    .vendor >>|cRXP_BUY_Compre|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dele|r
    >>|cRXP_WARN_NÃO venda seus|r |T133884:0|t[|cRXP_LOOT_Olhos de Murloc|r]
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eduíno Harly|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_Compre|r |T134830:0|t[Poção Inferior de Cura] |cRXP_BUY_dele, se estiverem disponíveis|r
    >>|cRXP_WARN_NÃO venda seus|r |T133884:0|t[|cRXP_LOOT_Olhos de Murloc|r]
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Allister|r e |cRXP_FRIENDLY_Necroguarda Rodrigo|r
    .accept 477 >>Aceite Cruzando fronteiras
    .target +Shadow Priest Allister
    .goto 1421/0,1602.84,520.63
    .accept 6321 >>Aceite Suprimentos para o Sepulcro
    .target +Deathguard Podrig
    .goto 1421/0,1625.94,499.91
step
    #label BorderCrossings
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Allister|r
    .accept 477 >>Aceite Cruzando fronteiras
    .target Shadow Priest Allister
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >>Entre na cripta
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alto-executor Hadrec|r na cripta
    .turnin 449 >>Entregue Relatório dos Sicários
    .accept 3221 >>Aceite Fale com Renferrel
    .accept 437 >>Aceite Os Campos Estéreis
    .target High Executor Hadrec
step
    .goto 1421/0,1652.82,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Renferrel|r
    .turnin 429 >>Entregue Corações selvagens
    .turnin 445 >>Entregue Entrega na Floresta de Pinhaprata
    .turnin 3221 >>Entregue Fale com Renferrel
    .accept 1359 >>Aceite Entrega para Zilda
    .accept 447 >>Aceite Receita mortal
    .accept 430 >>Aceite Reencontrando Quintino
    .target Apothecary Renferrel
    .addquestitem 3164,429
    .isOnQuest 445
step
    #optional
    .goto 1421/0,1652.82,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Renferrel|r
    .turnin 429 >>Entregue Corações selvagens
    .turnin 3221 >>Entregue Fale com Renferrel
    .accept 1359 >>Aceite Entrega para Zilda
    .accept 447 >>Aceite Receita mortal
    .accept 430 >>Aceite Reencontrando Quintino
    .target Apothecary Renferrel
    .addquestitem 3164,429
step
    #loop
    .goto 1421/0,1386.96,638.51,0
    .goto 1421/0,1336.56,568.51,50,0
    .goto 1421/0,1271.88,502.99,50,0
    .goto 1421/0,1285.74,460.99,50,0
    .goto 1421/0,1281.96,410.87,50,0
    .goto 1421/0,1274.4,361.87,50,0
    .goto 1421/0,1315.14,329.95,50,0
    .goto 1421/0,1386.96,638.51,50,0
    >>Mate |cRXP_ENEMY_Grenhalva Lunafúria|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar Tessalba|r
    .target Dalar Dawnweaver
    .turnin 421 >>Entregue Prove seu valor
    .accept 422 >>Aceite A loucura de Arugal
step
    #completewith Remedy
    .goto 1421/0,1234.92,891.070,80 >>Siga para o Sítio do Valgan
step
    #label Remedy
    .goto 1421/0,1234.92,891.070,8,0
    .goto 1421/0,1218.54,884.91,8,0
    .goto 1421/0,1226.52,886.03,8,0
    .goto 1421/0,1231.14,866.99
    >>Entre na casa e suba ao segundo andar. Pegue os |cRXP_PICK_Grimórios Empoeirados|r que estão no chão
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto 1421/0,1207.62,1293.71,80,0
    .subzone 239 >>Siga para a Plantação do Ivar
step
    #label QuinnYorick
    .goto 1421/0,1207.62,1293.71,8,0
    .goto 1421/0,1220.64,1299.59,8,0
    .goto 1421/0,1212.66,1298.19,8,0
    .goto 1421/0,1205.94,1314.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quintino Yorick|r no segundo andar da casa
    .turnin 430 >>Entregue Reencontrando Quintino
    .accept 91920 >>Aceite Olhos selvagens
    .target Quinn Yorick
step
    .goto 1421/0,715.000,1335.400
    >>Mate |cRXP_ENEMY_Murlocs Pinavis|r. Saqueie-os para pegar |T133884:0|t[|cRXP_LOOT_Olhos de Murloc|r]
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .mob Vile Vin Shredder
    .mob Vile Vin Tidehunter
step
    #completewith ArugalTurnin
    +|cRXP_WARN_Cuidado! Pode haver um|r |cRXP_ENEMY_Filho de Arugal|r |cRXP_WARN_na área! Ele é um elite de nível 25, mantenha distância dele!|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>Mate |cRXP_ENEMY_Ursos|r. Saqueie-os para pegar seus |cRXP_LOOT_Corações|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto 1421/0,1541.52,1078.39
    >>Mate |cRXP_ENEMY_Gnolls Putricouros|r ao redor do Campo Morto até |cRXP_ENEMY_Vergasta|r aparecer. Mate-a e pegue |cRXP_LOOT_Essência de Vergasta|r
    >>|cRXP_WARN_Eles são imunes a Medo!|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>Mate |cRXP_ENEMY_Ursos|r. Saqueie-os para pegar seus |cRXP_LOOT_Corações|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>Mate |cRXP_ENEMY_Aranhas|r. Saqueie-as para pegar seu |cRXP_LOOT_Sangue|r
    >>|cRXP_WARN_Tome cuidado com|r |cRXP_ENEMY_Krethis Umbrateia|r |cRXP_WARN_pois é praticamente impossível matá-la!|r << !Mage !Warlock
    >>|cRXP_WARN_Tome cuidado com|r |cRXP_ENEMY_Krethis Umbrateia|r |cRXP_WARN_pois é difícil matá-la, mas é possível. Ela tem um escudo que causa 130 de dano com recarga de 15s e uma habilidade de choque instantânea que causa 110 de dano|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto 1421/0,2064.0,1167.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quim Sanatha|r
    .vendor >>Venda os lixos
    .target Killian Sanatha
    .isOnQuest 447
step
    #loop
	.goto 1421/0,1924.14,1269.070,0
	.goto 1421/0,1885.50,1218.95,50,0
	.goto 1421/0,1951.86,1218.39,50,0
	.goto 1421/0,1981.68,1209.15,50,0
	.goto 1421/0,2022.42,1183.95,50,0
	.goto 1421/0,2016.12,1239.39,50,0
	.goto 1421/0,1977.48,1260.670,50,0
	.goto 1421/0,1944.30,1279.43,50,0
	.goto 1421/0,1924.14,1269.070,50,0
    >>Mate |cRXP_ENEMY_Aranhas|r. Saqueie-as para pegar seu |cRXP_LOOT_Sangue|r
    >>|cRXP_WARN_Tome cuidado com|r |cRXP_ENEMY_Krethis Umbrateia|r |cRXP_WARN_pois é praticamente impossível matá-la!|r << !Mage !Warlock
    >>|cRXP_WARN_Tome cuidado com|r |cRXP_ENEMY_Krethis Umbrateia|r |cRXP_WARN_pois é difícil matá-la, mas é possível. Ela tem um escudo que causa 130 de dano com recarga de 15s e uma habilidade de choque instantânea que causa 110 de dano|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspi
step
    #loop
    .goto 1421/0,1702.8,1060.47,0
    .goto 1421/0,1712.46,1116.75,50,0
    .goto 1421/0,1702.8,1060.47,50,0
    .goto 1421/0,1670.88,1001.11,50,0
    .goto 1421/0,1573.86,971.15,50,0
    .goto 1421/0,1514.64,921.31,50,0
    >>Acabe de matar |cRXP_ENEMY_Ursos|r. Saqueie-os para pegar seus |cRXP_LOOT_Corações|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step << skip
    #softcore
    #completewith ArugalTurnin
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    --#hardcore
    #completewith next
    .goto 1421/0,1538.58,511.39,100,0
    .subzone 228 >>Volte para o Sepulcro
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar Tessalba|r
    .turnin 422 >>Entregue A loucura de Arugal
    .accept 423 >>Aceite A loucura de Arugal
    .target Dalar Dawnweaver
step
    #optional
    #label ArugalTurnin
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >>Entre na cripta
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alto-executor Hadrec|r na cripta
    .turnin 437 >>Entregue Os Campos Estéreis
    .accept 438 >>Aceite Os Campos Apodrecidos
    .target High Executor Hadrec
step
    .goto 1421/0,1652.600,522.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Boticário Renferrel|r
    .turnin 91920 >>Entregue Olhos selvagens
    .accept 91921 >>Aceite Reencontrando Quintino (de novo)
    .target Apothecary Renferrel
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guida Farrow|r
    >>|cRXP_BUY_Compre|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r
    .vendor >>Venda os itens de lixo
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eduíno Harly|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_Compre|r |T134830:0|t[Poção Inferior de Cura] |cRXP_BUY_dele, se estiverem disponíveis|r
    .collect 1179,20,423,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto 1421/0,1568.4,567.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andrea|r
    .vendor >>Compre |T132491:0|t[|cRXP_FRIENDLY_Cinto do Homem Sábio|r] com ela se estiver disponível
    .target Andrea Boynton
    .money <0.1400
step << Rogue
    .goto 1421/0,1576.38,571.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alexandra Lefevre|r
    .vendor >>Compre |T132539:0|t[|cRXP_FRIENDLY_Botas Ágeis|r] dela se estiver disponível
    .target Alexandre Lefevre
    .money <0.2633
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipe o|r |T132491:0|t[|cRXP_FRIENDLY_Cinto do Homem Sábio|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipe as|r |T132539:0|t[|cRXP_FRIENDLY_Botas Ágeis|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step
    #completewith Shackles
    .goto 1421/0,1593.60,597.91,15,0--c:Silverpine Forest,44.20,38.17
    .goto 1421/0,1582.68,640.47,15,0--c:Silverpine Forest,44.46,36.65
    .goto 1421/0,1563.78,738.75,30 >>Desça a colina--c:Silverpine Forest,44.91,33.14
step
    #completewith DecrepitFerry
    +|cRXP_WARN_Cuidado! Pode haver um|r |cRXP_ENEMY_Filho de Arugal|r |cRXP_WARN_na área! Ele é um elite de nível 25, mantenha distância dele!|r
    .unitscan Son of Arugal
step
    #label Shackles
    #loop
    .goto 1421/0,1609.1399,798.6667,50,0,0
    .goto 1421/0,1609.1399,798.6667,50,0
    .goto 1421/0,1592.7599,783.2667,50,0
    .goto 1421/0,1622.5799,760.0267,50,0
    .goto 1421/0,1660.3799,795.3067,50,0
    .goto 1421/0,1716.2399,819.6667,50,0
    .goto 1421/0,1782.5999,819.9467,50,0
    .goto 1421/0,1813.6799,850.4667,50,0
    .goto 1421/0,1842.2399,907.8667,50,0
    .goto 1421/0,1870.7999,990.1867,50,0
    .goto 1421/0,1851.0599,1019.0267,50,0
    .goto 1421/0,1830.4799,1052.6267,50,0
    .goto 1421/0,1781.3399,1015.3867,50,0
    .goto 1421/0,1707.4199,1008.3867,50,0
    .goto 1421/0,1722.1199,952.6667,50,0
    .goto 1421/0,1720.8599,875.3867,50,0
    .goto 1421/0,1685.5799,847.1067,50,0
    .goto 1421/0,1609.1399,798.6667,50,0
    >>Mate |cRXP_ENEMY_Glutão Lunafúria|r e |cRXP_ENEMY_Almanegra Lunafúria|r. Saque-os para pegar seus |cRXP_LOOT_Grilhões|r
    >>|cRXP_WARN_Cuidado!|r |cRXP_ENEMY_Almanegras Lunafúrias|r |cRXP_WARN_entram em frenesi abaixo de 25% de vida. Mate-os rapidamente quando estiverem com pouca vida|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
    .unitscan Son of Arugal
step
    .goto 1421/0,1207.62,1293.71,8,0
    .goto 1421/0,1220.64,1299.59,8,0
    .goto 1421/0,1212.66,1298.19,8,0
    .goto 1421/0,1205.94,1314.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quintino Yorick|r no segundo andar da casa
    .turnin 91921 >>Entregue Reencontrando Quintino (de novo)
    .target Quinn Yorick
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rane Yorick|r do lado de fora
    .accept 425 >>Aceite Ivar, o Imundo
    .target Rane Yorick
step
    .goto 1421/0,1265.58,1274.11,6,0
    .goto 1421/0,1270.62,1279.71,6,0
    .goto 1421/0,1285.32,1277.19
    >>Mate |cRXP_ENEMY_Ivar, o Imundo|r. Saqueie-o para pegar sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Ivar está protegido por dois|r |cRXP_ENEMY_Escravos Corvinalle|r |cRXP_WARN_dentro do celeiro. Você pode puxar um deles sozinho quando ele patrulhar mais à frente|r
    >>|cRXP_WARN_Eles são imunes a Medo!|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Entregue Ivar, o Imundo
    .target Rane Yorick
step
    #label DecrepitFerry
    .goto 1421/0,997.62,692.55
    >>Clique no |cRXP_PICK_Barco|r ao lado do cais
    .turnin 438 >>Entregue Os Campos Apodrecidos
    .accept 439 >>Aceite Pistas dos Putricouro
step
    #completewith next
    .goto 1421/0,1538.58,511.39,100 >>Volte para o Sepulcro
    .subzoneskip 228
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar Tessalba|r
    .turnin 423 >>Entregue A loucura de Arugal
    .accept 424 >>Aceite A loucura de Arugal
    .target Dalar Dawnweaver
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >>Entre na cripta
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alto-executor Hadrec|r na cripta
    .turnin 439 >>Entregue Pistas dos Putricouro
    .target High Executor Hadrec
step
    #completewith next
    .goto 1421/0,1077.84,380.35,10 >>Entre na Mina--c:Silverpine Forest,56.48,45.94
step
    #label GrimsonthePale
    .goto 1421/0,990.48,410.87--c:Silverpine Forest,58.56,44.85
    >>Mate |cRXP_ENEMY_Severo, o Pálido|r. Saque-o para pegar sua |cRXP_LOOT_Cabeça|r
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
step
    #hardcore
    .goto 1421/0,1354.62,-22.57
    >>Clique no |cRXP_PICK_Caixote|r no acampamento
    >>|cRXP_WARN_Cuidado! Esses inimigos lançam|r |T135846:0|t[Seta de Gelo] |cRXP_WARN_e fogem com pouca vida. Puxe-os para trás e mate-os um de cada vez até que você consiga clicar com segurança no caixote|r
    .turnin 477 >>Entregue Cruzando fronteiras
    .accept 478 >>Aceite Mapas e runas
    .mob Dalaran Apprentice
step
    #label BorderCrossings
    #softcore
    .goto 1421/0,1354.62,-22.57
    >>Clique no |cRXP_PICK_Caixote|r no acampamento
    >>|cRXP_WARN_Cuidado, esses inimigos lançam|r |T135846:0|t[Seta de Gelo]|r
    .turnin 477 >>Entregue Cruzando fronteiras
    .accept 478 >>Aceite Mapas e runas
    .mob Dalaran Apprentice
step
    #completewith next
    #hardcore
    .goto 1421/0,1538.58,511.39,100 >>Volte para o Sepulcro--c:Silverpine Forest,45.51,41.26
    .subzoneskip 228
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Allister|r e |cRXP_FRIENDLY_Dalar Tessalba|r
    .turnin 478 >>Entregue Mapas e runas
    .accept 481 >>Aceite Análise de Dalar
    .target +Shadow Priest Allister
    .goto 1421/0,1602.84,520.63
    .turnin 424 >>Entregue A loucura de Arugal
    .turnin 481 >>Entregue Análise de Dalar
    .accept 482 >>Aceite As intenções de Dalaran
    .target +Dalar Dawnweaver
    .goto 1421/0,1593.6,554.23
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Allister|r
    .turnin 482 >>Entregue As intenções de Dalaran
    .target Shadow Priest Allister
step
    .goto 1421/0,1533.96,474.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carlos Razok|r
    .turnin 6321 >>Entregue Suprimentos para o Sepulcro << Undead
    .accept 6323 >>Aceite Carona para a Cidade Baixa << Undead
    .fp Sepulcher >>Pegue o ponto de voo do Sepulcro << !Undead
    .fly Undercity >>Voe para Cidade Baixa << !Undead
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    .hs >>Use sua Pedra de Regresso para ir a Cidade Baixa
    .use 6948
    .zoneskip Undercity
    .bindlocation 1497,1
step << Undead
    .goto 1458/0,283.37,1610.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Antônio Nunes|r
    .turnin 6323 >>Entregue Carona para a Cidade Baixa
    .accept 6322 >>Aceite Miguel Garreta
    .target Gordon Wendham
step << Rogue
    #ssf
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #ah
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Undead
    .goto 1458/0,266.20,1567.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .turnin 6322 >>Entregue Miguel Garreta
    .target Michael Garrett
step << Undead Warrior
    #optional
    .goto 1458/0,418.35,1767.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalto Flores|r
    .train 285 >>Treine suas magias de classe
    .target Baltus Fowler
    .dungeon RFC
    .xp <16,1
--XX 16+ Only for Heroic Strike, Undead only as other races train elsewhere more effectively. RFC So warriors have 16 spells for RFC
step << Rogue/Warrior
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Maria do Socorro|r no Distrito dos Ladinos
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Mary Edras
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,40 >>Faça |T133685:0|t[Bandagem de Linho] até alcançar nível de profissão 40 ou superior
    .itemcount 2589,1 --Linen Cloth (1+)
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Maria do Socorro|r no Distrito dos Ladinos
    .train 3276 >>Aprenda |T133688:0|t[Bandagem de Linho Grossa]
    .target Mary Edras
    .skill firstaid,<40,1
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,50 >>Faça |T133688:0|t[Bandagem de Linho Grossa] até alcançar nível de profissão 50 ou superior
    .itemcount 2589,2 --Linen Cloth (2+)
step << Rogue/Warrior
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Maria do Socorro|r no Distrito dos Ladinos
    .train 3274 >>Aprenda Socorrista Profissional
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1886 >>Entregue Os Sicários
    .accept 1898 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .accept 1898 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitolina Casmurro|r
    .train 1758 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .isOnQuest 1898 << Undead
--XX Only train if you were directed here for class quest as an Undead
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitolina Casmurro|r
    .train 6761 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <16,1
    .isOnQuest 1898 << Undead
step << Undead Rogue
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitolina Casmurro|r
    .train 1758 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Optional left out on purpose
--XX This whole section of training across 3 different areas, 2 different xp rates and RFC is solidly in the top 10 worst experiences of my life and im still not 100% happy with it xd
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitolina Casmurro|r
    .train 6761 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto 1458/0,347.07,1389.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andron Gante|r
    .turnin 1898 >>Entregue Os Sicários
    .accept 1899 >>Aceite Os Sicários
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto 1458/0,341.41,1385.90
    >>Pegue |cRXP_PICK_Estante de Livros de Andron|r atrás de |cRXP_FRIENDLY_Andron Gante|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step
    .goto 1458/0,310.900,1528.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alessandro Luca|r
    .accept 97891 >>Aceite Entrega expressa de poções
    .target Alessandro Luca
step
    #completewith next
    #optional
    .goto 1458,54.383,73.014,50,0 << !Undead/!Rogue
    .goto 1458,52.837,77.725,20,0
    .goto 1458,52.275,79.254,15,0
    .goto 1458,51.279,79.923,15,0
    .goto 1458,49.693,78.903,15,0
    .goto 1458,47.951,76.171,15,0
    .goto 1458/0,404.63,1434.67,12 >>Vá em direção a |cRXP_FRIENDLY_Mestre-boticário Faranello|r no Boticarium
step
    .goto 1458/0,426.100,1403.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doutor Martinho Nunes|r
    .complete 97891,1 --|1/1 Speak to Doctor Martin Felben
    .turnin 97891 >>Entregue Entrega expressa de poções
    .target Doctor Martin Felben
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre-boticário Faranello|r e |cRXP_FRIENDLY_Boticária Zilda|r no Boticarium
    .turnin 447 >>Entregue Receita mortal
    .target +Master Apothecary Faranell
    .goto 1458/0,404.63,1434.67
    .turnin 1359 >>Entregue Entrega para Zilda
    .accept 1358 >>Aceite Uma amostra para Hermógenes
    .target +Apothecary Zinge
    .goto 1458/0,391.97,1442.87
step << Undead Rogue
    .goto 1458/0,71.83,1435.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1899 >>Entregue Os Sicários
    .accept 1978 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitolina Casmurro|r
    .train 1758 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Duplicate if you ding from prev optional quests
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitolina Casmurro|r
    .train 6761 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto 1420/0,373.60,1464.85,40,0
    .goto 1420/0,333.38,1287.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varimatras|r
    .turnin 1978 >>Entregue Os Sicários
    .target Varimathras
    .isQuestTurnedIn 1886
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,40 >>Faça |T133685:0|t[Bandagem de Linho] até alcançar nível de profissão 40 ou superior
    .itemcount 2589,1 --Linen Cloth (1+)
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Maria do Socorro|r no Distrito dos Ladinos
    .train 3276 >>Aprenda |T133688:0|t[Bandagem de Linho Grossa]
    .target Mary Edras
    .skill firstaid,<40,1
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,50 >>Faça |T133688:0|t[Bandagem de Linho Grossa] até alcançar nível de profissão 50 ou superior
    .itemcount 2589,2 --Linen Cloth (2+)
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Maria do Socorro|r no Distrito dos Ladinos
    .train 3274 >>Aprenda Socorrista Profissional
    .target Mary Edras
    .skill firstaid,<50,1
step << Mage
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastácia Cordato|r
    .train 2137 >>Treine suas magias de classe
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Mage
    #optional
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastácia Cordato|r
    .train 2120 >>Treine suas magias de classe
    .target Anastasia Hartwell
    .xp <16,1
step << Undead Warlock
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricardo Curi|r
    .train 6222 >>Treine suas magias de classe
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Undead Warlock
    #optional
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricardo Curi|r
    .train 1455 >>Treine suas magias de classe
    .target Richard Kerwin
    .xp <16,1
step << Paladin
    .goto 1458/0,418.500,1782.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garen|r
    .train 647 >>Treine suas magias de classe
    .target Garen Largo
    .xp <14,1
    .xp >16,1
step << Paladin
    #optional
    .goto 1458/0,418.500,1782.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garen|r
    .train 7294 >>Treine suas magias de classe
    .target Garen Largo
    .xp <16,1
step << Priest/Mage/Warlock
    #ssf
    .goto 1458/0,206.04,1705.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zeno Valforte|r no Distrito da Magia
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dele|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #ah
    .goto 1458/0,206.04,1705.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zeno Valforte|r no Distrito da Magia
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 5208,1 --Smoldering Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equipe a|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_quando estiver no nível 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equipe a|r |T135468:0|t[Varinha Fumegante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Undead Priest
    #sticky
    #label TouchOW
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >>Entregue Toque de Fraqueza
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
step << !Undead Priest
    #sticky
    #label TouchOW
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >>Entregue Toque de Fraqueza
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
    .isOnQuest 5660
--XX Not going out of the way for this outside of this edge case to train for RFC, waste of a gcd
step << Undead Priest
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Padre Lázaro|r
	.train 6074 >>Treine suas magias de classe
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .dungeon RFC
step << Undead Priest
    #optional
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Padre Lázaro|r
	.train 8102 >>Treine suas magias de classe
    .target Father Lazarus
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    #optional
    #completewith Conscript
    >>Abandone Os Sicários, não haverá outra oportunidade de fazer
    .abandon 1886 >>Abandone Os Sicários
    .isOnQuest 1886
step << skip --Undead !Rogue !Warrior
    #requires TouchOW << Undead Priest
    .goto 1458/0,327.4,1770.6 << Priest
    .goto 1458/0,206.81,1712.48 << Mage/Warlock
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Faça um Atalho por Logout pulando sobre o triturador da Carroça Carniceira, depois, saia e entre novamente|r << Priest
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Faça um Atalho por Logout pulando sobre a pilha de barris, depois, saia e entre novamente|r << Mage/Warlock
    >>|cRXP_WARN_Se você não conseguir fazer isso, apenas saia de Cidade Baixa normalmente|r
    .zoneskip Undercity,1
    .dungeon RFC
step << skip --Undead !Rogue !Warrior
    .goto 1458/0,206.81,1712.48 << Priest/Mage/Warlock
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Faça um Atalho por Logout pulando sobre a pilha de barris, depois, saia e entre novamente|r << Priest/Mage/Warlock
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUE AQUI para ver um exemplo|r
    >>|cRXP_WARN_Se você não conseguir fazer isso, apenas saia de Cidade Baixa normalmente|r
    .zoneskip Undercity,1
    .dungeon !RFC
step << Undead/Skyborne
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>Agora você deve procurar um grupo para Cavernas Ígneas
    .dungeon RFC
step << Undead
    #completewith next
    .goto 1420/0,235.32,1883.89,50,0
    .zone Tirisfal Glades >>Saia de Cidade Baixa
    .zoneskip Tirisfal Glades
step << Undead
    #label ZeptoDurotar
    .goto 1420/0,278.70,2071.27,12,0
    .goto 1420/0,253.85,2059.82,10,0
    .goto 1420/0,264.70,2053.50,8,0
    .goto 1420/0,271.02,2064.94,8,0
    .goto 1420/0,259.72,2068.86,8,0
    .goto 1420/0,261.53,2055.00,8,0
    .goto 1420/0,299.04,2069.46,-1
    .goto 1420/0,279.61,2441.21,-1
    .zone Durotar >>Pegue o zepelim para Durotar
    >>Faça Pedras de Afiar/Bandagens enquanto espera << Warrior/Rogue
    >>Conjure comida/água enquanto espera << Mage
    .zoneskip Durotar
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Skyborne Druid
    .goto 1450/1,-2678.76,8019.94--c:Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 94913 >>Entregue Clareira da Lua
    .target Dendrite Starblaze
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 5178 >>Treine suas magias de classe
    .target Loganaar
    .xp <14,1
    .xp >16,1
step << Druid
    #label DruidTraining1
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >>Treine suas magias de classe
    .target Loganaar
    .xp <16,1
step << Skyborne
    .hs >>Use sua Pedra de Regresso para Orgrimmar
    .use 6948
    .zoneskip Orgrimmar
    .bindlocation 1637,1
step << Skyborne
    #optional
    #label Silverpineskip

    --Start Undead/Skyborne RFC

step << Undead
    #completewith HiddenEnemiesPickup
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >>Vá para Orgrimmar
    .dungeon RFC
step << Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    >>|cRXP_WARN_Não voe para lugar nenhum!|r
    .fp Orgrimmar >>Aprenda a rota de voo de Orgrimmar
    .target Doras
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Inimigos ocultos
    .target Thrall
    .dungeon RFC
step << Undead/Skyborne
    .goto 1411/1,-4769.10,1484.39,0
    >>Mate inimigos da |cRXP_ENEMY_Lâmina Ardente|r na Rocha da Caveira até cair a |cRXP_LOOT_Insígnia do Tenente|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entregue Inimigos ocultos
    .accept 5727 >>Aceite Inimigos ocultos
    .target Thrall
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .accept 5761 >>Aceite Mate a besta
    .target Neeru Fireblade
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << Undead/Skyborne
    #label HiddenEnemiesPickup
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Entregue Inimigos ocultos
    .accept 5728 >>Aceite Inimigos ocultos
    .target Thrall
    .dungeon RFC
step << Undead/Skyborne
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destrua|r |T134417:0|t[Insígnia do Tenente] |cRXP_WARN_pois você não precisa mais dela|r
    .dungeon RFC
step << Undead/Skyborne
    #label EnterRFC
    .goto 1454/1,-4420.76,1815.80
    .subzone 2437 >>Entre no portal da instância das Cavernas Ígneas e atravesse-o
    .dungeon RFC
step << Undead/Skyborne
    >>|cRXP_WARN_Se possível, peça aos membros do grupo que compartilhem as seguintes missões|r
    .accept 5722 >>Aceite Em busca da algibeira perdida
    .accept 5723 >>Aceite Testando a força do inimigo
    .disablecheckbox
    .dungeon RFC
step << Undead/Skyborne
    #completewith next
    >>Mate |cRXP_ENEMY_Troggs Iraflama|r e |cRXP_ENEMY_Xamãs Iraflama|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead/Skyborne
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mauren Temível Totem|r
    .turnin 5722 >>Entregue Em busca da algibeira perdida
    .accept 5724 >>Aceite Devolvendo a algibeira perdida
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead/Skyborne
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mauren Temível Totem|r
    .accept 5724 >>Aceite Devolvendo a algibeira perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead/Skyborne
    #label TroggsShamans
    >>Mate |cRXP_ENEMY_Troggs Iraflama|r e |cRXP_ENEMY_Xamãs Iraflama|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead/Skyborne
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mate |cRXP_ENEMY_Sectário da Lâmina Calcinante|r e |cRXP_ENEMY_Bruxo da Lâmina Calcinante|r. Saqueie-os para pegar os |cRXP_LOOT_Feitiços da Sombra|r e as |cRXP_LOOT_Encantamentos do Éter|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead/Skyborne
    >>Mate |cRXP_ENEMY_Taragaman, o Famélico|r. Saqueie-o para pegar seu |cRXP_LOOT_Coração|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << Undead/Skyborne
    #label BazzalanandJergosh
    >>Mate |cRXP_ENEMY_Bazzalan|r e |cRXP_ENEMY_Jergosh, o Invocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead/Skyborne
    >>Mate |cRXP_ENEMY_Sectário da Lâmina Calcinante|r e |cRXP_ENEMY_Bruxo da Lâmina Calcinante|r. Saqueie-os para pegar os |cRXP_LOOT_Feitiços da Sombra|r e as |cRXP_LOOT_Encantamentos do Éter|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5761 >>Entregue Mate a besta
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >>Entregue Inimigos ocultos
    .accept 5729 >>Aceite Inimigos ocultos
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >>Aceite Inimigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5729 >>Entregue Inimigos ocultos
    .accept 5730 >>Aceite Inimigos ocultos
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >>Entregue Inimigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Skyborne
    #completewith RFCTurninsTB1
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Doras
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Skyborne
    #completewith RFCTurninsTB1
    .goto 1456/1,-212.71,-1065.010,80 >>Siga para o Platô dos Anciãos
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Skyborne
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Entregue Devolvendo a algibeira perdida
    .turnin 5723 >>Complete Testando a força do inimigo
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Skyborne
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Entregue Devolvendo a algibeira perdida
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step << Skyborne
    #completewith Conscript
    .hs >>Use sua Pedra de Regresso para Orgrimmar
    .use 6948
    .zoneskip Thunder Bluff,1
    .bindlocation 1637,1
    .cooldown item,6948,>0,1
    .dungeon RFC
step << Skyborne
    #completewith Conscript
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,<0
    .dungeon RFC

    --End Undead/Skyborne RFC

step << Undead/Skyborne
    #completewith Conscript
    .subzone 362 >>Vá para Monte Navalha
step << !Undead !Skyborne
    .hs >>Use sua Pedra de Regresso para ir a Monte Navalha
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step << Rogue
    #optional << Undead
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >>Treine suas magias de classe
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >>Treine suas magias de classe
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
	.train 8122 >>Treine suas magias de classe
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >>Treine suas magias de classe
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw Zigatriz|r
    .train 285 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru Gostassangue|r
    .train 6222 >>Treine suas magias de classe
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru Gostassangue|r
    .train 1455 >>Treine suas magias de classe
    .target Dhugru Gorelust
    .xp <16,1
step
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >>Vá para o Posto Remoto
step
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento na Encruzilhada
    .target Kargal Battlescar
step << !Undead !Skyborne
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entregue Ak'Zeloth
    .accept 924 >>Aceite A Semente Demoníaca
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << !Undead !Skyborne
    .goto 1413/1,-3694.2,259.22
    >>|cRXP_WARN_Saqueie a|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_ao lado de|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. Este item tem um temporizador de 30 minutos, portanto certifique-se de ser rápido|r
    .turnin 926 >>Entregue Pedra do Poder Defeituosa
    .isOnQuest 924

]])
