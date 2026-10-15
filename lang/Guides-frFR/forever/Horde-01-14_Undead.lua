if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#group RestedXP Guide Forever (H)
#subgroup Guide Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Clairières de Tirisfal
#next 6-12 Clairières de Tirisfal

step << !Undead
    #completewith next
    +Si vous avez sélectionné un guide prévu pour les Morts-vivants. Il est recommandé que vous choisissiez la même zone de départ que celle par laquelle vous commencez
step
    #completewith Zombies
	.destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire
step
    #completewith next
    .goto 1420/0,1675.90,1645.00,8,0
    .goto 1420/0,1665.51,1645.00,8,0
    .goto 1420/0,1667.77,1679.04,10 >> Sortez de la crypte vers  |cRXP_FRIENDLY_Mordo|r
step
    .goto 1420/0,1667.77,1679.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mordo|r
    .accept 363 >> Acceptez la quête Réveil brutal
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto 1420/0,1646.08,1750.44,0 << Warrior/Warlock
    .goto 1420/0,1681.32,1719.710,40,0
    .goto 1420/0,1646.08,1750.44,40,0
    .goto 1420/0,1714.76,1760.68,40,0 << Priest/Mage
    .goto 1420/0,1718.38,1799.24,40,0 << Priest/Mage
    .goto 1420/0,1669.12,1869.73,40,0 << Priest/Mage
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Young Scavengers|r et les |cRXP_ENEMY_Duskbats|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 60 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Mage
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Young Scavengers|r et les |cRXP_ENEMY_Duskbats|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 50 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Priest
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Young Scavengers|r et les |cRXP_ENEMY_Duskbats|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 10 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto 1420/0,1577.39,1860.09,8 >> Entrez dans le bâtiment
step << Priest/Mage
    #label Vendor
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Venya|r et à |cRXP_FRIENDLY_Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r << Mage
    .accept 1470 >>Acceptez la quête Lever le voile << Warlock
    .goto 1420/0,1633.42,1836.9 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >> Rendez la quête Réveil brutal
    .accept 364 >> Acceptez la quête Les Déchus
    .target +Shadow Priest Sarvis
    .goto 1420/0,1639.75,1843.220
step << Warlock/Mage
    .goto 1420/0,1616.71,1842.92,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acceptez la quête Les Maudits
    .goto 1420/0,1638.85,1847.74
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isabella|r
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .target Isabella
step << Warlock
    #label Vendor
    .goto 1420/0,1641.11,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kayla|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillion|r
    .train 348 >>Apprenez [Immolation]
    .target Maximillion
step << !Warlock !Mage
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r
    .turnin 363 >> Rendez la quête Réveil brutal
    .accept 364 >> Acceptez la quête Les Déchus
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acceptez la quête Les Maudits
    .goto 1420/0,1638.85,1847.74
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Apprenez [Cri de guerre]
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
    >>Tuez des |cRXP_ENEMY_Rattlecage Skeletons|r. Dépouillez-les pour leur |cRXP_LOOT_Rattlecage Skulls|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cRXP_WARN_Tuez des |cRXP_ENEMY_Mindless Zombies|r et des |cRXP_ENEMY_Wretched Zombies|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 25 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1633.42,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Venya|r
    .turnin 1470 >>Rendez la quête Lever le voile
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>Lancez [Invocation d'un diablotin]
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
    >>Tuez des |cRXP_ENEMY_Mindless Zombies|r et des |cRXP_ENEMY_Wretched Zombies|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob +Mindless Zombie
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cRXP_WARN_Tuez des |cRXP_ENEMY_Mindless Zombies|r et des |cRXP_ENEMY_Wretched Zombies|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 33 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r et à |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, et à |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, et à |cRXP_FRIENDLY_Maximillion|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, et à |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 364 >> Rendez la quête Lever le voile
    .accept 3095 >> Acceptez la quête Parchemin simple << Warrior
    .accept 3096 >> Acceptez la quête Parchemin codé << Rogue
    .accept 3097 >> Acceptez la quête Parchemin béni << Priest
    .accept 3098 >> Acceptez la quête Parchemin glyphé << Mage
    .accept 3099 >> Acceptez la quête Rouleau contaminé << Warlock
    .accept 98601 >>Acceptez la quête Un chemin tortueux << Paladin
    .accept 3901 >> Acceptez la quête Faites cliqueter les thorax !
    .target +Shadow Priest Sarvis
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    .accept 376 >> Acceptez la quête Les Maudits
    .target +Novice Elreth
    .goto 1420/0,1638.85,1847.74
    .turnin 3099 >> Rendez la quête Rouleau contaminé << Warlock
    .goto 1420/0,1636.59,1839.01 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >> Rendez la quête Parchemin glyphé << Mage
    .goto 1420/0,1635.23,1847.44 << Mage
    .target +Isabella << Mage
    .turnin 3097 >> Rendez la quête Parchemin béni << Priest
    .target +Dark Cleric Duesten << Priest
    .goto 1420/0,1627.55,1848.65 << Priest
step << Paladin
    .goto 1420/0,1628.400,1837.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aramis Mainmartel|r
    .turnin 98601 >>Rendez la quête Un chemin tortueux
    .accept 90902 >>Acceptez la quête Redécouverte de la Lumière
    .target Aramis Hammerhand
    --90902 only 85xp, not worth doing
step << Paladin
    #completewith XPcheck
    >>|cRXP_WARN_Lancez|r |T135920:0|t[Lumière sacrée] |cRXP_WARN_sur les|r |cRXP_FRIENDLY_Nécrogardes blessés|r
    .complete 90902,1 --|5/5 Injured Deathguard healed
    .target Injured Deathguard
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
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
    >>Tuez des |cRXP_ENEMY_Young Scavengers|r et des |cRXP_ENEMY_Ragged Scavengers|r. Dépouillez-les pour leur |cRXP_LOOT_Scavenger Paws|r
    >>Tuez des |cRXP_ENEMY_Duskbats|r et des |cRXP_ENEMY_Mangy Duskbats|r. Dépouillez-les pour leur |cRXP_LOOT_Duskbat Wings|r
    >>|cRXP_WARN_Essayez de ne pas tuer des |cRXP_ENEMY_Mangy Duskbats|r si vous le pouvez car si ils sont beaucoup plus dur à tuer que les |cRXP_ENEMY_Duskbats|r|r
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
    >>Tuez les |cRXP_ENEMY_Rattlecage Skeletons|r
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
    .xp 3+895 >>Montez votre expérience jusqu'à 895+/1400xp << Paladin
    .xp 3+940 >>Monter votre expérience jusqu'à 940+/1400xp << Warrior/Rogue
    .xp 3+980 >>Monter votre expérience jusqu'à 980+/1400xp << !Warrior !Rogue !Paladin
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Paladin
    .goto 1420/0,1593.500,1876.400
    >>|cRXP_WARN_Lancez|r |T135920:0|t[Lumière sacrée] |cRXP_WARN_sur les|r |cRXP_FRIENDLY_Nécrogardes blessés|r
    .complete 90902,1 --|5/5 Injured Deathguard healed
    .target Injured Deathguard
step << Mage/Warlock/Priest/Paladin
    .goto 1420/0,1576.04,1861.60,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r << !Paladin
    >>Ne descendez PAS à moins d'une pièce d'argent << Mage/Warlock/Priest
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r et à |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >> Rendez la quête Faites cliqueter les thorax !
    .target +Shadow Priest Sarvis
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    .turnin 376 >> Rendez la quête Les maudits
    .accept 6395 >> Acceptez la quête La dernière volonté de Marla
    .target +Novice Elreth
    .goto 1420/0,1638.85,1847.74
step << Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
    .money >0.1
    .isOnQuest 90902
step
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aramis Mainmartel|r
    .turnin 90902 >>Rendez la quête Redécouverte de la Lumière << Paladin
    .accept 91208 >>Acceptez la quête L'acceptation << Paladin
    .accept 91209 >>Acceptez la quête Poursuivre votre entraînement << Paladin
    .accept 98389 >>Acceptez la quête Une lumière dans les ténèbres
    .target Aramis Hammerhand
step << Paladin
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aramis Mainmartel|r
    .train 20271 >>Apprenez [Jugement]
    .train 19740 >>Apprenez [Bénédiction de puissance]
    .target Aramis Hammerhand
    .money <0.02
step << Paladin
    #optional
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aramis Mainmartel|r
    .train 20271 >>Apprenez [Jugement]
    .target Aramis Hammerhand
    .money <0.01
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Apprenez vos sorts de classe
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .train 2052 >> Apprenez [Soins inférieurs Rank 2]
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    #optional
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillion|r
    .train 172 >> Apprenez [Corruption]
    .target Maximillion
step << Mage
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isabella|r
    .train 116 >> Apprenez [Eclair de givre]
    .target Isabella
step
    .goto 1420/0,1616.71,1842.92,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deathguard Saltain|r et à |cRXP_FRIENDLY_Executor Arren|r
    .accept 3902 >> Acceptez la quête La chasse aux trésors
    .goto 1420/0,1604.96,1860.70
    .target +Deathguard Saltain
    .accept 380 >> Acceptez la quête Les grottes des Tisse-nuit
    .goto 1420/0,1580.56,1848.95
    .target +Executor Arren
step << Rogue/Warrior/Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #optional
    #label Training2
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #optional
    #label Training2
    .goto 1420/0,1563.38,1859.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Rendez la quête Parchemin codé
    .target David Trias
step << Rogue/Warrior/Paladin
    .goto 1420/0,1577.100,1854.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Walter Mason|r à l'étage
    >>|cRXP_BUY_Achetez-lui une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_|r |cRXP_BUY_|r
    .train 2575 >> Apprenez [Minage]
    .collect 2901,1,792,1 --Mining Pick (1)
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
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
    >>Ouvrez les |cRXP_PICK_Equipment Boxes|r sur le sol. Récupérez les |cRXP_LOOT_Scavenged Goods|r
    .complete 3902,1 --Collect Scavenged Goods (x6)
step << Paladin
    .goto 1420/0,1782.400,1914.700
    >>Parlez au |cRXP_FRIENDLY_Paladine effrayée|r, tuez-la lorsqu'elle passe hostile
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
    >>Tuez les |cRXP_ENEMY_Young Night Web Spiders|r
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
    >>Tuez les |cRXP_ENEMY_Young Night Web Spiders|r proche de l'entrée de la grotte
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto 1420/0,1822.31,2048.07,15,0
    .goto 1420/0,1844.45,2042.050,30 >>Entrez à l'intérieur de la grotte
step
    #completewith next
    >>Attaquez le |cRXP_ENEMY_Réprouvé entoilé|r
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
    >>Tuez les |cRXP_ENEMY_Night Web Spiders|r à l'intérieur de la grotte
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    .goto 1420/0,1921.500,2046.500
    >>Attaquez le |cRXP_ENEMY_Réprouvé entoilé|r
    .complete 98389,1 --|6/6 Webbed Forsaken freed
    .mob Webbed Forsaken
step
    #softcore
    #completewith Scavenging
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>Lancez [Invocation d'un diablotin]
step << skip
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto 1420/0,1628.91,1882.99,30 >>|cRXP_WARN_Effectuez un Logout skip à l'intérieur de la grotte en sautant sur un déchiqueteur, un puits ou la planche en bois coincée dans le mur, puis déconnectez-vous et reconnectez-vous|r
    >>|cRXP_WARN_Sinon, retournez au Glas|r
step
    #label Scavenging
    .goto 1420/0,1604.96,1860.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >> Rendez la quête La chasse aux trésors
    .target Deathguard Saltain
step
    #label NightWebH
    .goto 1420/0,1580.56,1848.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arren|r
    .turnin 380 >> Rendez la quête Les grottes des Tisse-nuit
    .accept 381 >> Acceptez la quête La Croisade écarlate
    .target Executor Arren
step
    .goto 1420/0,1628.400,1837.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aramis Mainmartel|r
    .turnin 91208 >>Rendez la quête L'acceptation << Paladin
    .turnin 98389 >>Rendez la quête Une lumière dans les ténèbres
    .target Aramis Hammerhand
step << Rogue/Warrior/Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
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
    >>Tuez des |cRXP_ENEMY_Scarlet Initiates|r et des |cRXP_ENEMY_Scarlet Converts|r. Dépouillez-les pour leur |cRXP_LOOT_Scarlet Armbands|r
    >>|cRXP_WARN_Ne tuez pas encore les |cRXP_ENEMY_Meven Korgal|r |r
    >>|cRXP_WARN_Essayez d'éviter les |cRXP_ENEMY_Scarlet Initiates|r si vous le pouvez car ils disposent de|r [Armure de glace] (réduit votre vitesse d'attaque) << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto 1420/0,1375.40,1979.69
    >>Tuez |cRXP_ENEMY_Samuel|r. Dépouillez-le pour ses |cRXP_LOOT_Samuel's Remains|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    .goto 1420/0,1624.84,1876.96
	>>Cliquez sur |cRXP_PICK_Marla's Grave|r sur le sol
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>Lancez [Invocation d'un diablotin]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r et à |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 6395 >> Rendez la quête La dernière volonté de Marla
    .target +Novice Elreth
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1638.85,1847.74
    .accept 5651 >> Acceptez la quête Au service des ténèbres << Priest
    .target +Dark Cleric Duesten << Priest
    .goto 1420/0,1627.55,1848.65 << Priest
step
    #sticky
    #label ScarletC
    .goto 1420/0,1580.56,1848.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arren|r
    .turnin 381 >> Rendez la quête La Croisade écarlate
    .accept 382 >> Acceptez la quête Le messager rouge
    .target Executor Arren
step
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
step
    #requires ScarletC
    .goto 1420/0,1383.99,1764.30
    >>Tuez |cRXP_ENEMY_Meven|r. Dépouillez-le pour les |cRXP_LOOT_Scarlet Crusade Documents|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto 1420/0,1580.56,1848.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arren|r
    .turnin 382 >> Rendez la quête Le messager rouge
    .accept 383 >> Acceptez la quête Informations décisives
    .accept 96656 >> Acceptez la quête L'aventurier
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
    .xp 5+1940 >>Montez votre expérience jusqu'à 1940+/2800xp << !Paladin
    .xp 5+1850 >>Montez votre expérience jusqu'à 1850+/2800xp << Paladin
step
    .goto 1420/0,1305.36,2127.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calvin|r
    .accept 8 >> Acceptez la quête Un marché de voleur
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Clairières de Tirisfal
#displayname 6-13 Clairières de Tirisfal << Paladin
#version 11
#group RestedXP Guide Forever (H)
#subgroup Guide Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Forêt des Pins argentés; 12-17 Les Tarides

step
    .goto 1420/0,1184.71,2205.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Simmer|r
    .accept 365 >>Acceptez la quête Les champs du Chagrin
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gordo|r.
    >>|cRXP_WARN_C'est une abomination qui patrouille le long de la route pour Brill|r
    .accept 5481 >>Acceptez la quête La tâche de Gordo
    .unitscan Gordo
step << Priest
    .goto 1420/0,656.92,2164.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bowen|r
    .train 3908 >> Apprenez |T136249:0|t[Couture]. Gardez vos |T132889:0|t[Etoffe de lin]. Cela vous permettra de fabriquer une baguette plus tard
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au  |cRXP_FRIENDLY_Spirit Healer|r ou allez jusqu'à Brill
    .target Gardien des âmes
step
    .goto 1420/0,391.400,2289.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garde noir Bartholomew|r
    >>|cRXP_WARN_Il peut patrouiller autour du cimetière|r
    .accept 86784 >>Acceptez la quête Bâtons et ossements
    .target Deathguard Bartholomew
step
    #completewith next
    >>Ramassez les |cRXP_PICK_Branches sèches|r au sol sous les arbres près de Brill
    .complete 86784,1 --|6/6 Dry Branch
step
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .accept 404 >>Acceptez la quête Une tâche putride
    .target Deathguard Dillinger
step
    #loop
    .goto 1420/0,603.600,2268.300,40,0
    .goto 1420/0,539.700,2220.400,40,0
    .goto 1420/0,305.600,2180.100,40,0
    .goto 1420/0,375.600,2246.400,40,0
    .goto 1420/0,442.800,2259.400,40,0
    >>Ramassez les |cRXP_PICK_Branches sèches|r au sol sous les arbres près de Brill
    .complete 86784,1 --|6/6 Dry Branch
step
    .goto 1420/0,445.500,2165.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eleanor Shackleton|r
    .turnin 86784 >>Rendez la quête Bâtons et ossements
    .turnin 96656 >>Rendez la quête L'aventurier
    .accept 96607 >>Acceptez la quête Les grands espaces sauvages
    .target Eleanor Shackleton
step
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Tapez /assis près du feu de camp et attendez une minute jusqu'à ce que vous obteniez le buff "Avantages du camp"|r
    .complete 96607,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Asseyez-vous 
    .timer 59, RP
    .complete 96607,2 --|Gain the Boosted Rest buff
step
    .goto 1420/0,445.400,2166.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eleanor Shackleton|r
    .turnin 96607 >>Rendez la quête Les grands espaces sauvages
    .target Eleanor Shackleton
    .accept 96658 >>Acceptez la quête Introduction au camping : la cuisine
    --.accept 97959 >>Accept Camping 101: Mining
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 367 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
    .xp <6,1
step
    .goto 1420/0,296.600,2278.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exécuteur Zygand|r
    .turnin 383 >>Rendez la quête Informations décisives
    .accept 427 >>Acceptez la quête En guerre avec la Croisade écarlate
    .accept 99141 >>Acceptez la quête Patience
    .accept 99134 >>Acceptez la quête Discipline
    .target Executor Zygand
step
    #completewith Claws
    .use 286176 >>|cRXP_WARN_Utilisez le|r |T133490:0|t[Motivateur d’exécuteur] |cRXP_WARN_sur un des |cRXP_FRIENDLY_Gardes noirs|r dans Brill et ses alentours|r
    .complete 99134,1 --|5/5 Deathguards motivated
    --too many .mobs, will cause clutter
step << Rogue
    .goto 1420/0,270.12,2253.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mrs. Winters|r|cRXP_BUY_. Achetez des |r [Weighted Throwing Axe] |cRXP_BUY_à Mrs. Winters|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour un |T135641:0|t[Stylet] (3 argent 81 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Stiletto] |cRXP_BUY_à Oliver|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +Équipez la [Hache de lancer équilibrée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Claws
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T135321:0|t[Gladius] (5 argent 10 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Gladius] |cRXP_BUY_à Oliver|r
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Claws
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shari Morpuits|r
    .complete 91209,1 --|1/1 Report to Shari Stilwell in Brill
    .turnin 91209 >>Rendez la quête Poursuivre votre entraînement
    .target Shari Stilwell
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shari Morpuits|r
    .train 679 >>Apprenez |T626003:0|t[Frappe sacrée]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T133053:0|t[Maillet en bois] (6 argent 66 cuivre). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez-lui un|r |T133053:0|t[Maillet en bois] |cRXP_BUY_|r
    .collect 2493,1,404,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith Claws
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    .turnin 8 >>Rendez la quête Un marché de voleur
    .home >> Liez votre Pierre de Foyer à Brill
    .target Innkeeper Renee
    .bindlocation 2119
step
    #optional
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    .turnin 8 >>Rendez la quête Un marché de voleur
    .target Innkeeper Renee
    .isOnQuest 8
step
    .goto 1420/0,243.200,2288.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William|r
    .train 2550 >>Apprenez la Cuisine
    .turnin 96658 >>Rendez la quête Introduction au camping : la cuisine
    .target William Pickman
    .money <0.001
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_se trouve au deuxième étage de l'auberge|r
    .accept 375 >>Acceptez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .xp <7,1
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
    .turnin 5651 >> Rendez la quête Au service des ténèbres
    .accept 5650 >> Acceptez la quête Vêtements des ténèbres
	.train 591 >>Apprenez [Châtiment]
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .train 2052 >>Apprenez [Soins inférieurs Rank 2]
    .target Dark Cleric Beryl
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .target Cain Firesong
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Apprenez [Parade]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto 1420/0,251.59,2252.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gina Lang|r au second étage
    >>|cRXP_BUY_Achetez un|r [Grimoire de Pacte de sang] |cRXP_BUY_ à Gina|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Gina Lang
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .train 1454 >> Apprenez [Connexion]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .target Rupert Boch
step << Priest/Warlock
    .goto 1420/0,242.55,2284.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vance Tristefosse|r
    .train 7411 >> Apprenez |T136244:0|t[Enchantement]
    >>|cRXP_WARN_L'enchantement, combiné avec la|r |T136249:0|t[Couture] |cRXP_WARN_vous permettra de fabriquer une baguette plus tard|r
    .target Vance Undergloom
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest/Paladin
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .collect 1179,15,367,1 << Mage/Priest/Paladin --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock/Paladin
    .target Innkeeper Renee
step
    .goto 1420/0,84.900,2023.500
    >>Parlez au |cRXP_FRIENDLY_Nécrogarde Kristof|r
    >>|cRXP_WARN_Sélectionnez "J'ai besoin d'un rapport pour Exécuteur Zygand"|r
    .complete 99141,2 --|1/1 Kristof's Report
    .skipgossipid 142730
    .target Deathguard Kristof
step
    .goto 1420/0,77.200,2026.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shelene Rhobart|r
    .accept 97558 >>Acceptez la quête Des peaux pour les Réprouvés
    .target Shelene Rhobart
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 367 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
step << Priest
    .goto 1420/0,359.14,2436.99
    >>Lancez |T135929:0|t[Soins inférieurs] et |T135987:0|t[Mot de pouvoir : Robustesse] sur le |cRXP_FRIENDLY_Nécrogarde Kel|r
    >>|cRXP_WARN_Vous avez besoin de Soins inférieurs (Rang 2) pour cette quête|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Gordo2
    >>Ramassez l' |cRXP_PICK_Herbe des ténèbres|r sur le sol
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith Pumkpins
    >>Tuez les |cRXP_ENEMY_Sombredogues|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r et leur |cRXP_LOOT_Peau|r
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
    >>Tuez les |cRXP_ENEMY_Morts pourrissants|r et |cRXP_ENEMY_Cadavres décomposés|r. Dépouillez-les pour leurs |cRXP_LOOT_Griffes|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gordo|r.
    >>|cRXP_WARN_C'est une abomination qui patrouille le long de la route pour Brill|r
    >>|cRXP_WARN_Sélectionnez "J'ai besoin d'un rapport pour Exécuteur Zygand"|r
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
    >>Terminez de ramasser l' |cRXP_PICK_Herbe des ténèbres|r sur le sol
    .complete 5481,1 --Gloom Weed (3)
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_Commencez à récolter 3 stacks d'|r |T132889:0|t[Etoffe de lin]|cRXP_WARN_. Ils seront utilisés pour fabriquer une|r |T135139:0|t[Baguette magique inférieure] |cRXP_WARN_plus tard|r
    >>|cRXP_WARN_Si vous ne voulez pas le faire ou si vous préférez l'acheter à l'Hôtel des ventes plus tard, passez cette étape|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_Commencez à récolter 3 stacks d'|r |T132889:0|t[Etoffe de lin]|cRXP_WARN_. Ils seront utilisés pour fabriquer une|r |T135139:0|t[Baguette magique inférieure] |cRXP_WARN_plus tard|r
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
    >>Ramassez les |cRXP_LOOT_Citrouilles|r dans le champ.
    .complete 365,1 --Tirisfal Pumpkin (10)
step
    #completewith Tescort
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r.
    >>|cRXP_WARN_Faites attention comme ils ont 50 % de parade augmentée pendant 8 secondes après leur animation de posture défensive|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    .goto 1420/0,1587.700,2439.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bareth Dawnstone|r en haut de la tour
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    >>|cRXP_WARN_Attention ! En haut de la tour, vous pouvez facilement aggro 3 |cRXP_ENEMY_Guerriers écarlates|r en même temps|r
    .accept 99144,1 >>Acceptez la quête Demande d'asile
    .target Bareth Dawnstone
step
    #label Tescort
    .goto 1420/0,1268.000,2368.200
    >>Escortez |cRXP_FRIENDLY_Bareth Dawnstone|r hors de la ferme des Solliden
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
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r.
    >>|cRXP_WARN_Faites attention comme ils ont 50 % de parade augmentée pendant 8 secondes après leur animation de posture défensive|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    #loop
    .goto 1420/0,1238.600,2424.900,0
    .goto 1420/0,1238.600,2424.900,60,0
    .goto 1420/0,1204.800,2543.000,60,0
    .goto 1420/0,1122.600,2396.800 ,60,0
    >>Tuez les |cRXP_ENEMY_Sombredogues|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r et leur |cRXP_LOOT_Peau|r
    .complete 367,1 --Darkhound Blood (5)
    .complete 97558,2 --|6/6 Darkhound Hide
    .mob Decrepit Darkhound
step
    #hardcore
    #completewith BrillTurnin1
    .hs >> Utilisez votre Pierre de foyer pour revenir à Brill
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #softcore
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_Il patrouille autour du cimetière|r
    .turnin 5481 >>Rendez la quête La tâche de Gordo
    .accept 5482 >>Acceptez la quête Herbe maléfique
    .target Junior Apothecary Holland
step
    #optional
    #completewith MetaBook
    .use 286176 >>|cRXP_WARN_Utilisez le|r |T133490:0|t[Motivateur d’exécuteur] |cRXP_WARN_sur un des |cRXP_FRIENDLY_Gardes noirs|r dans Brill et ses alentours|r
    .complete 99134,1 --|5/5 Deathguards motivated
step
    .goto 1420/0,403.300,2287.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Dillinger|r.
    >>|cRXP_WARN_Sélectionnez "I need a report for Exécuteur Zygand|r
    .turnin 404 >>Rendez la quête Une tâche putride
    .accept 426 >>Acceptez la quête La chute des moulins
    .complete 99141,1 --|1/1 Dillinger's Report
    .target Deathguard Dillinger
    .skipgossipid 142723
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 367 >>Rendez la quête Une Peste nouvelle
    .turnin 365 >>Rendez la quête Les champs du Chagrin
    .accept 368 >>Acceptez la quête Une Peste nouvelle
    .accept 407 >>Acceptez la quête Les champs du Chagrin
    .target +Apothecary Johaan
step
    .goto 1420/0,347.600,2265.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolai Anise|r
    .accept 95314 >>Acceptez la quête Cet élixir vert d’Ombreval
    .target Carolai Anise
    .xp <7,1
step << Mage
    #label MetaBook
    >>Ramassez le |cRXP_PICK_Livre|r dans l'étagère
    .collect 208185,1 --The Apothecary's Metaphysical Primer (x1
step
    #optional
    #loop
    .goto 1420/0,290.400,2272.900,30,0
    .goto 1420/0,257.200,2239.500,30,0
    .goto 1420/0,313.400,2259.400,30,0
    .use 286176 >>|cRXP_WARN_Utilisez le|r |T133490:0|t[Motivateur d’exécuteur] |cRXP_WARN_sur un des |cRXP_FRIENDLY_Gardes noirs|r dans Brill et ses alentours|r
    .complete 99134,1 --|5/5 Deathguards motivated
step
    #label BrillTurnin1
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 427 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 370 >>Acceptez la quête En guerre avec la Croisade écarlate
    .turnin 99141 >>Rendez la quête Patience
    .turnin 99134 >>Rendez la quête Discipline
    .target Executor Zygand
step
    #completewith Doomweed
    #optional
    .destroy 286176 >>|cRXP_WARN_Détruisez le|r |T133490:0|t[Motivateur d'exécuteur] |cRXP_WARN_comme vous n'en avez plus besoin pour quoi que ce soit|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Burgess|r, à l' |cRXP_FRIENDLY_Affiche de recherche|r et à |cRXP_FRIENDLY_Sevren|r dans le bâtiment
    .accept 374 >>Acceptez la quête Preuves de la mort
    .target +Deathguard Burgess
    .goto 1420/0,280.06,2270.70
    .accept 398 >>Acceptez la quête On recherche: Œil-de-ver
    .goto 1420/0,288.64,2285.46
    .accept 358 >>Acceptez la quête Les Profanateurs
    .target +Magistrate Sevren
    .goto 1420/0,265.15,2305.94
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shari Morpuits|r
    .turnin 99144 >>Rendez la quête Demande d'asile
    .train 853 >>Apprenez vos sorts de classe
    .target Shari Stilwell
    .xp <8,1
step
    #optional << Paladin
    .goto 1420/0,311.900,2250.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shari Morpuits|r
    .turnin 99144 >>Rendez la quête Demande d'asile
    .target Shari Stilwell
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
    .turnin 5650 >>Rendez la quête Vêtements des ténèbres
    .train 591 >>Apprenez [Châtiment]
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .target Dark Cleric Beryl
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_se trouve au deuxième étage de l'auberge|r
    .accept 375 >>Acceptez la quête Le frisson de la mort
    .target Gretchen Dedmar
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 139 >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 205 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 284 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 6760 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <8,1
step
    .goto 1420/0,243.200,2288.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William|r
    .train 2550 >>Apprenez la Cuisine
    .turnin 96658 >>Rendez la quête Introduction au camping : la cuisine
    .target William Pickman
step << Rogue/Warrior
    .goto 1420/0,240.29,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Infirmière Neela|r
    >>|cRXP_WARN_Essayez d'en fabriquer pendant les temps d'attente, par exemple pour les Zeppelins|r
    .train 3273 >>Apprenez [Premiers soins]
    .target Nurse Neela
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour un |T135641:0|t[Stylet] (3 argent 81 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Stiletto] |cRXP_BUY_à Oliver|r
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Doomweed
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T135321:0|t[Gladius] (5 argent 10 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Gladius] |cRXP_BUY_à Oliver|r
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Doomweed
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shari Morpuits|r
    .train 679 >>Apprenez |T626003:0|t[Frappe sacrée]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T133053:0|t[Maillet en bois] (6 argent 66 cuivre). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez-lui un|r |T133053:0|t[Maillet en bois] |cRXP_BUY_|r
    .collect 2493,1,367,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith Doomweed
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    .goto 1420/0,270.12,2253.23--c:Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mme Winters|r
    >>|cRXP_BUY_Achetez-lui une|r |T133634:0|t[Petite sacoche marron] |cRXP_BUY_|r|cRXP_FRIENDLY_|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_Il patrouille autour du cimetière|r
    .turnin 5481 >>Rendez la quête La tâche de Gordo
    .accept 5482 >>Acceptez la quête Herbe maléfique
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
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peau|r et leur |cRXP_LOOT_Membrane d’aile|r
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
    .xp 7+3260 >> Montez votre expérience jusqu'à 3260+/4500xp
--XX 700 (375)+540 (367)
step << Rogue/Warrior
    #optional
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step << Rogue/Warrior
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 284 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 6760 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <8,1
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour un |T135641:0|t[Stylet] (3 argent 81 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Stiletto] |cRXP_BUY_à Oliver|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Doomweed
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T135321:0|t[Gladius] (5 argent 10 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Gladius] |cRXP_BUY_à Oliver|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Doomweed
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #completewith next
    >>Ramassez l' |cRXP_PICK_Herbe maléfique|r sur le sol
    >>|cRXP_WARN_Ils se trouvent près des arbres dans la zone des Gnolls|r.
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
    >>Tuez les |cRXP_ENEMY_Profanateurs Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bâtards Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
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
    >>Ramassez l' |cRXP_PICK_Herbe maléfique|r sur le sol
    >>|cRXP_WARN_Ils se trouvent près des arbres dans la zone des Gnolls|r.
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #completewith MaggotEye
    >>Tuez les |cRXP_ENEMY_Bâtards Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto 1420/0,382.63,2910.55
    >>Tuez |cRXP_ENEMY_Oeil-de-ver|r. Dépouillez-le pour sa |cRXP_LOOT_Patte|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto 1420/0,332.48,2862.35,0
    .goto 1420/0,380.38,2768.97,50,0
    .goto 1420/0,332.48,2862.35,50,0
    .goto 1420/0,401.16,2895.19,50,0
    .goto 1420/0,318.47,2696.36,50,0
    >>Tuez les |cRXP_ENEMY_Bâtards Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
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
    >>Tuez les |cRXP_ENEMY_Gnolls Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
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
    >>Tuez les |cRXP_ENEMY_Murlocs Ailerons noirs|r. Dépouillez-les pour leurs |cRXP_LOOT_Ecailles|r et leur |cRXP_LOOT_Peau de murloc|r
    >>Les |cRXP_ENEMY_Bondisseurs Ailerons noirs|r |cRXP_WARN_ne laissent PAS tomber de|r |cRXP_LOOT_Peau de Murloc aileron noir|r
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
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peau|r et leur |cRXP_LOOT_Membrane d’aile|r
    .complete 375,1 --Duskbat Pelt (5)
    .complete 97558,1 --|8/8 Duskbat Wing Membrane
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #completewith Brill3
    .hs >> Utilisez votre Pierre de foyer pour revenir à Brill
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #completewith Brill3
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step << skip
    #softcore
    #completewith Brill3
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .accept 354 >>Acceptez la quête Morts dans la famille
    .accept 362 >>Acceptez la quête Les moulins hantés
    .target Coleman Farthing
step
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Rendez la quête On recherche: Œil-de-ver
    .target Executor Zygand
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 358 >>Rendez la quête Les Profanateurs
    .accept 405 >>Acceptez la quête La Liche prodigue << Mage/Warlock
    .accept 359 >>Acceptez la quête En mission pour les Réprouvés
    .target Magistrate Sevren
step
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 139 >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 205 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 284 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 6760 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto 1420/0,240.29,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Infirmière Neela|r
    >>|cRXP_WARN_Essayez d'en fabriquer pendant les temps d'attente, par exemple pour les Zeppelins|r
    .train 3273 >>Apprenez [Premiers soins]
    .target Nurse Neela
step
    #label Brill3
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest/Paladin
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .collect 1179,20,426,1 << Mage/Priest/Paladin --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock/Paladin
    .target Innkeeper Renee
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shari Morpuits|r
    .train 853 >>Apprenez vos sorts de classe
    .target Shari Stilwell
    .xp <8,1
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre camelote. Vendez votre arme si elle vous donne assez d'argent pour un |T135641:0|t[Stylet] (3 argent 81 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Stiletto] |cRXP_BUY_à Oliver|r
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith MillsOverun
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T135321:0|t[Gladius] (5 argent 10 cuivre). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Gladius] |cRXP_BUY_à Oliver|r
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith MillsOverun
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shari Morpuits|r
    .train 679 >>Apprenez |T626003:0|t[Frappe sacrée]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T133053:0|t[Maillet en bois] (6 argent 66 cuivre). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez-lui un|r |T133053:0|t[Maillet en bois] |cRXP_BUY_|r
    .collect 2493,1,354,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith MillsOverun
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << skip --Rogue/Warrior
    #softcore
    .goto 1420/0,308.08,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eliza Callen|r
    .vendor >>Réparez votre arme
    .target Eliza Callen
step
    .goto 1420/0,76.000,2026.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shelene Rhobart|r
    .turnin 97558 >>Rendez la quête Des peaux pour les Réprouvés
    .target Shelene Rhobart
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 359 >>Rendez la quête En mission pour les Réprouvés
    .accept 360 >>Acceptez la quête Retourner voir le Magistrat
    .accept 356 >>Acceptez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 368 >>Rendez la quête Une Peste nouvelle
    .accept 369 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
step
    #label DoomedWeed
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_Il patrouille autour du cimetière|r
    .turnin 5482 >>Rendez la quête Herbe maléfique
    .accept 99142 >>Acceptez la quête Herbes sépulcrales
    .target Junior Apothecary Holland
step
    #label AgamandStart
    .goto 1420/0,882.41,2511.1,100,0
    .goto 1420/0,892.80,2520.74
    .subzone 157 >> Voyagez vers le nord/ouest en direction des Moulins d'Agamand
    .isOnQuest 362
step
    #completewith ThurmanGregor
    >>La |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r] |cRXP_WARN_peut tomber sur ces mobs. Acceptez la quête si vous la récupérez|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
step
    #completewith ThurmanGregor
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour leur |cRXP_LOOT_Côtes|r et leurs |cRXP_LOOT_Crânes|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #label KillDevlin
    .goto 1420/0,894.16,2609.00
    >>Tuez |cRXP_ENEMY_Devlin|r. Dépouillez-le pour ses |cRXP_LOOT_Restes|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto 1420/0,803.78,2752.40
    >>Tuez |cRXP_ENEMY_Nissa|r. Dépouillez-la pour ses |cRXP_LOOT_Restes|r. Elle peut être à l'intérieur du bâtiment
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
    >>Tuez |cRXP_ENEMY_Thurman|r et |cRXP_ENEMY_Gregor|r. Dépouillez-les pour leur |cRXP_LOOT_Cadavre|r
    >>|cRXP_WARN_Ils peuvent être en patrouille aux alentours|r
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
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour leur |cRXP_LOOT_Côtes|r et leurs |cRXP_LOOT_Crânes|r
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
    .xp 9+3840 >> Montez votre expérience jusqu'à 4320+/6500xp
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
    .xp 9+3360 >> Montez votre expérience jusqu'à 3360+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
step
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >> Retournez à Brill
step
    #softcore
    #completewith FoodandWater2
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto 1420/0,403.42,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Rendez la quête La chute des moulins
    .target Deathguard Dillinger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r et à |cRXP_FRIENDLY_Coleman|r
    .turnin 361 >>Rendez la quête Une lettre perdue
    .target +Yvette Farthing
    .goto 1420/0,250.69,2252.920
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto 1420/0,244.36,2262.26
    .isOnQuest 361
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target Coleman Farthing
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 360 >>Rendez la quête Retourner voir le Magistrat
    .turnin 355 >>Rendez la quête Parler à Sevren
    .target Magistrate Sevren
    .xp >10,1 --turnin later if lvl 10 already
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.trainer >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
step << Warrior
    #optional
    .abandon 1505 >>Abandonnez Le vétéran Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandonnez La voie de la défense
    .isOnQuest 1498
step << Warrior
    .goto 1420/0,238.49,2254.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .trainer >> Apprenez vos sorts de classe
    .accept 1818 >> Acceptez la quête Parler à Dillinger
    .target Austil de Mon << Warrior
    .isQuestAvailable 1498
step << Warlock
    .goto 1420/0,248.88,2251.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ageron|r à l'intérieur de l'auberge
    .accept 1478 >> Acceptez la quête Les invocations de Halgar
    .target Ageron Kargal
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 707 >> Apprenez vos sorts de classe
    .target Rupert Boch
step << Rogue
    .goto 1420/0,243.01,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r à l'intérieur de l'auberge
    .trainer >> Apprenez vos sorts de classe
    .accept 1885 >>Acceptez la quête Mennet Carkad
    .target Marion Call
step << Mage
    .goto 1420/0,233.52,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r à l'intérieur de l'auberge
    .accept 1881 >> Acceptez la quête Parler à Anastasia
    .target Cain Firesong
step
    #label FoodandWater2
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r <<Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Rendez la quête Parler à Dillinger
    .accept 1819 >> Acceptez la quête Ulag le Fendeur
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,360.04,2376.14
    >>|cRXP_WARN_Cliquez sur le crâne sur le sol. Cela invoquera|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Tuez-le|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Rendez la quête Ulag le Fendeur
    .accept 1820 >> Acceptez la quête Parler à Coleman
    .target Deathguard Dillinger
step
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garde noir Terrence|r
    .accept 96895 >>Acceptez la quête L’émissaire de l’Aube d’argent
    .target Deathguard Terrence
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shari Morpuits|r
    .accept 91282 >>Acceptez la quête Un second foyer
    .trainer >>Apprenez vos sorts de classe
    .target Shari Stilwell
step << Warlock
    #completewith next
    .goto 1420/0,240.75,1877.57,20 >> Entrez dans Undercity
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r dans le Quartier Magique
    .turnin 1478 >> Rendez la quête Les invocations de Halgar
    .accept 1473 >> Acceptez la quête La créature du Vide
step << Warlock
    .goto 1458/0,66.74,1766.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor|r dans le Quartier magique
    .turnin 405 >>Rendez la quête La Liche prodigue
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
    .zone Tirisfal Glades >> Quittez Undercity par les Égouts
    .zoneskip Tirisfal Glades
step << Warlock
    #completewith next
    .goto 1420/0,726.06,1801.95
    >>Ouvrez le |cRXP_PICK_Coffre de Perrine|r sur le sol pour le |T133733:0|t[Grimoire d'Egalin]
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
    >>Tuez le |cRXP_ENEMY_Capitaine Perrine|r, les |cRXP_ENEMY_Zélotes écarlates|r et les |cRXP_ENEMY_Missionnaires écarlates|r. Dépouillez-les pour leur |cRXP_LOOT_Chevalières de lieutenant écarlate|r
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
    >>Ramassez le |cRXP_PICK_Perrine's Chest|r sur le sol pour le [Grimoire d'Egalin]
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
    .zone Undercity >> Retournez dans Fossoyeuse par les égoûts
    .zoneskip Undercity
step << Rogue
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Archibald|r au Quartier de la Guerre
    .train 201 >>Achetez la compétence pour porter des épées à une main
    .target Archibald
step << Warrior/Rogue
    .goto 1458/0,335.37,1638.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brom|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Brom Killian
step << Warrior/Rogue
    .goto 1458/0,329.04,1641.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarah|r
    >>|cRXP_BUY_Achetez une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_auprès de|r |cRXP_FRIENDLY_Sarah|r.
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto 1458/0,295.94,1691.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Basil Frye|r
    .train 2018 >> Apprenez [Forge]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r dans le Quartier Magique
    .turnin 1473 >> Rendez la quête La créature du Vide
    .accept 1471 >> Acceptez la quête Le lien
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>Utilisez les [Runes d'invocation] au cercle d'invocation
    .use 6284
step << Warlock
    .goto 1458/0,41.99,1704.480
    >>Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto 1458/0,57.34,1711.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Rendez la quête Le lien
    .target Carendin Halgar
step << Warrior
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +Équipez la [Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto 1458/0,129.68,1560.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nathaniel Steenwick|r dans le Quartier des voleurs
    >>|cRXP_BUY_Achetez-lui un|r |T135425:0|t[Couteau de lancer effilé] |cRXP_BUY_|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Rappelez-vous d'équiper les|r |T135425:0|t[Couteaux de lancer effilé] |cRXP_WARN_lorsque vous passez au niveau 11|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    .goto 1458/0,71.92,1435.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1885 >>Rendez la quête Mennet Carkad
    .accept 1886 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
step << Mage
    .goto 1458/0,168.600,1662.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Owen Thadd|r
    .turnin 79095 >>Rendez la quête L’Abécédaire métaphysique de l’apothicaire
    .target Owen Thadd
    .itemcount 208185,1
step << Mage
    #optional
    .abandon 1883 >> Abandonnez la quête Parler à Un'thuwa, sinon vous ne pourrez pas accepter la quête suivante
    .isOnQuest 1883
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r au Quartier Magique
    .turnin 1881 >> Rendez la quête Parler à Anastasia
    .accept 1882 >> Acceptez la quête La ferme des Balnir
    .target Anastasia Hartwell
step << Mage
    .goto 1458/0,66.74,1766.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor|r dans le Quartier magique
    .turnin 405 >>Rendez la quête La Liche prodigue
    --.accept 357 >>Accept The Lich's Identity
    .target Bethor Iceshard
step << Paladin
    #label UCHome
    .goto 1458/0,223.31,1634.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Norman|r
    .home >> Liez votre Pierre de foyer à Fossoyeuse
    .target Innkeeper Norman
    .bindlocation 1497
step
    #optional
    #label LogoutSkip1
step << skip
    .goto 1458/0,59.07,1747.75
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage sur la partie la plus élevée de l'escalier le plus bas jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
step
    #completewith AtWarS
    .goto 1420/0,235.32,1883.89
    .zone Tirisfal Glades >> Quittez Undercity
    .zoneskip Tirisfal Glades
step << Undead Rogue
    #sticky
    #completewith ArriveBalnir
    >>|cRXP_WARN_Si vous voyez|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, parlez-lui et tuez-le. Dépouillez-le pour la lettre. Il patrouille la route entre Brill et le Sépulcre|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step
    #optional
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler au |cRXP_FRIENDLY_Nécrogarde Burgess|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #label AtWarS
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 371 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
step
    .goto 1420/0,270.12,2253.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mme Winters|r
    >>|cRXP_BUY_Achetez-lui une|r |T133634:0|t[Petite sacoche marron] |cRXP_BUY_|r|cRXP_FRIENDLY_|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1820 >>Rendez la quête Parler à Coleman
    .target Coleman Farthing
step
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96895 >>Rendez la quête L’émissaire de l’Aube d’argent
    .accept 96897 >>Acceptez la quête Le Culte des damnés
    .accept 96898 >>Acceptez la quête Les vestiges de la guerre
    .target Hadric Harlson
step
    .goto 1420/0,-130.500,1907.800
    >>Tuez les |cRXP_ENEMY_Massacreurs sombres|r et les |cRXP_ENEMY_Néophytes sombres|r. Dépouillez-les pour leur |cRXP_LOOT_Fragment de cristal nécrotique|r
    >>Les |cRXP_LOOT_Fragments de cristal nécrotiques|r |cRXP_WARN_peuvent aussi se ramasser au sol|r
    >>|cRXP_WARN_Soyez prudent ! Ces mobs frappent fort. Les |cRXP_ENEMY_Massacreurs sombres|r ont aussi une capacité instantanée infligeant 50-70 dégâts|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96897 >>Rendez la quête Le Culte des damnés
    .turnin 96898 >>Rendez la quête Les vestiges de la guerre
    .accept 96899 >>Acceptez la quête La forteresse de Bandarion
    .target Hadric Harlson
step
    #label ArriveBalnir
    .goto 1420/0,-423.96,1976.68
    .subzone 165 >>Allez à la Ferme des Balnir
    .isOnQuest 356
step
    #completewith HorrorsandSpirits
    >>Ramassez l' |cRXP_PICK_Herbe sépulcrale|r au sol
    .complete 99142,1 --|5/5 Tomb Weed
step << Mage
    #completewith next
    >>Tuez les |cRXP_ENEMY_Horreurs sanguinolentes|r et les |cRXP_ENEMY_Esprits vagabonds|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    .goto 1420/0,-467.79,1969.75
    >>Cueillez n'importe laquelle des plantes au sol pour obtenir les |cRXP_PICK_Gueules-de-loup de Balnir|r
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
    >>Tuez les |cRXP_ENEMY_Horreurs sanguinolentes|r et les |cRXP_ENEMY_Esprits vagabonds|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step
    .goto 1420/0,-354.800,2049.000
    >>Ramassez l' |cRXP_PICK_Herbe sépulcrale|r au sol
    .complete 99142,1 --|5/5 Tomb Weed
step << Paladin
    #completewith ViciousVenom
    >>|cRXP_WARN_Gardez 10|r |T132889:0|t[Etoffes de lin] |cRXP_WARN_pour une quête à venir. Ne les vendez pas|r
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
    >>Tuez les |cRXP_ENEMY_Frères écarlates|r et les |cRXP_ENEMY_Zélotes écarlates|r. Dépouillez-les pour leur |cRXP_LOOT_Anneaux de la Croisade écarlate|r
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
    >>Tuez les |cRXP_ENEMY_Frères écarlates|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    .goto 1420/0,-528.35,2146.28
    >>Tuez le |cRXP_ENEMY_Capitaine Vachon|r à l'intérieur de la tour
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
    >>Tuez les |cRXP_ENEMY_Tisse-nuits vicieuses|r. Dépouillez-les pour leur |cRXP_LOOT_Toxines|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step << skip
    .goto 1420/0,-38.06,2569.54
    >>Ramassez les |cRXP_PICK_Livres de Gunther|r pour |cRXP_LOOT_Le grimoire de la liche|r sur l'île dans le Lac Étincelant
    .complete 357,1 --The Lich's Spellbook (1)
step
    --#hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
step << skip
    #softcore
    #completewith ANewPlagueFinal
    .goto 1420/0,23.85,2483.38
    .deathskip >> Mourez |cRXP_WARN_SUR L'ÎLE LA PLUS PETITE|r et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto 1420/0,346.94,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target Apothecary Johaan
step
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    --.accept 372 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 360 >>Rendez la quête Retourner voir le Magistrat
    .turnin 355 >>Rendez la quête Parler à Sevren
    .target Magistrate Sevren
step
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler au |cRXP_FRIENDLY_Nécrogarde Burgess|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target Deathguard Burgess
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Renee
step
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Zélote écarlate capturé|r et au |cRXP_FRIENDLY_Montagnard capturé|r en bas des escaliers au fond de l'auberge
    .turnin 407 >>Rendez la quête Les champs du Chagrin
    .goto 1420/0,233.06,2292.39
    .target +Captured Scarlet Zealot
    .turnin 492 >> Rendez la quête Une Peste nouvelle
    .goto 1420/0,234.42,2289.070
    .target +Captured Mountaineer
step << Priest
    .goto 1420/0,251.14,2265.28--c:Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.trainer >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03--c:Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25--c:Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2270.70--c:Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r
    .train 1766 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <12,1
step << Mage
    .goto 1420/0,233.52,2256.84--c:Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r à l'intérieur de l'auberge
    .train 145 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <12,1
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shari Morpuits|r
    .train 678 >> Apprenez vos sorts de classe
    .target Shari Stilwell
    .xp <12,1
step
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_Il patrouille autour du cimetière|r
    .turnin 99142 >>Rendez la quête Herbes sépulcrales
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
    .goto 1420/0,2049.900,2463.200,50 >>Voyagez à la forteresse de Bandarion
step << Paladin
    .goto 1420/0,2045.900,2475.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Breton Samuels|r
    .turnin 91282 >>Rendez la quête Un second foyer
    .accept 91285 >>Acceptez la quête Des Murlocs à nos portes
    .target Breton Samuels
step
    .goto 1420/0,2038.000,2490.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Leonid Barthalomew le Révéré|r à l'étage
    .turnin 96899 >>Rendez la quête La forteresse de Bandarion
    .accept 96896 >>Acceptez la quête Une juste cause
    .target Leonid Barthalomew the Revered
step
    .goto 1420/0,2038.000,2490.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Leonid Barthalomew le Révéré|r à l'étage
    .turnin 96896 >>Rendez la quête Une juste cause
    .accept 98545 >>Acceptez la quête La lettre de Leonid
    .target Leonid Barthalomew the Revered
step
    .goto 1420/0,2041.200,2416.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilda la Briseuse|r à l'extérieur
    .accept 99152 >>Acceptez la quête L’ombre sous le val
    .target Hilda the Breaker
step
    .goto 1420/0,2122.100,2436.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ephram Barbaro|r à l'extérieur
    .accept 99153 >>Acceptez la quête Celui qui s’échappa
    .target Ephram Barbaro
step << Paladin
    #loop
    .goto 1420/0,2424.200,2151.900,0
    .goto 1420/0,2212.000,2022.600,0
    .goto 1420/0,2424.200,2151.900,50,0
    .goto 1420/0,2212.000,2022.600,50,0
    >>Tuez les |cRXP_ENEMY_Oracles ailerons noirs|r et les |cRXP_ENEMY_Attaquants ailerons noirs|r
    .complete 91285,2 --|8/8 Vile Fin Seer slain
    .mob +Vile Fin Seer
    .complete 91285,1 --|8/8 Vile Fin Attacker slain
    .mob +Vile Fin Attacker
step << Paladin
    .goto 1420/0,2045.800,2475.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Breton Samuels|r
    .turnin 91285 >>Rendez la quête Des Murlocs à nos portes
    .accept 91294 >>Acceptez la quête En patrouille
    .target Breton Samuels
    --very good weapon upgrade 8.9 dps (Wooden Mallet 5.0 dps)
step << Paladin -- paladin trainer outside
    .goto 1420/0,2038.800,2415.900
    >>Parlez à |cRXP_FRIENDLY_Hilda la Briseuse|r
    .complete 91294,1 --|1/1 Speak with Hilda the Breaker
    .target Hilda the Breaker
step << Paladin --patrols the road
    .goto 1420/0,1961.100,2334.600
    >>Parlez à |cRXP_FRIENDLY_Ander Solliden|r
    >>|cRXP_WARN_Il patrouille sur la route|r
    .complete 91294,3 --|1/1 Speak with Ander Solliden
    .target Ander Solliden
    --TODO: Patrol path
step << Paladin --inside keep
    .goto 1420/0,2007.900,2491.200
    >>Parlez à |cRXP_FRIENDLY_Jorin Croge|r
    .complete 91294,2 --|1/1 Speak with Jorin Croge
    .target Jorin Croge
step << Paladin --upstairs in keep
    .goto 1420/0,2035.100,2492.200
    >>Parlez à |cRXP_FRIENDLY_Danitha Morr|r
    .complete 91294,4 --|1/1 Speak with Danitha Morr
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2035.100,2492.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 91294 >>Rendez la quête En patrouille
    .accept 91317 >>Acceptez la quête Les ternis
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2007.800,2491.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorin Croge|r
    .accept 91316 >>Acceptez la quête Procéder aux réparations
    .target Jorin Croge
step << Paladin
    #completewith next
    >>Tuez les |cRXP_ENEMY_Zélotes ternis|r et les |cRXP_ENEMY_Manoeuvres ternis|r
    .complete 91317,3 --|6/6 Tarnished Zealot slain
    .mob +Tarnished Zealot
    .complete 91317,2 --|8/8 Tarnished Drudge slain
    .mob +Tarnished Drudge
step << Paladin
    .goto 1420/0,2514.600,1903.600
    >>Tuez |cRXP_ENEMY_Rudolph Gelhardt|r à l'étage. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 91317,1 --|1/1 Rudolph Gelhardt's Head
    .mob Rudolph Gelhardt
step << Paladin
    .goto 1420/0,2487.700,1910.000
    >>Tuez les |cRXP_ENEMY_Zélotes ternis|r et les |cRXP_ENEMY_Manoeuvres ternis|r
    .complete 91317,3 --|6/6 Tarnished Zealot slain
    .mob +Tarnished Zealot
    .complete 91317,2 --|8/8 Tarnished Drudge slain
    .mob +Tarnished Drudge
step
    #label ShadowValeCrypt
    .goto 1420/0,2449.500,1857.600,10 >>Entrez dans la crypte d'Ombreval
    .isOnQuest 99152,95314,99153
step
    #requires ShadowValeCrypt
    #completewith GlowingFragment
    >>Tuez les |cRXP_ENEMY_Titubeurs d'Ombreval|r et les |cRXP_ENEMY_Mystiques d'Ombreval|r. Dépouillez-les pour leur |cRXP_LOOT_Os faiblement luminescents|r
    .complete 99152,1 --|6/6 Faintly Glowing Bone
    .mob Shadowvale Lurcher
    .mob Shadowvale Mystic
step
    #requires ShadowValeCrypt
    #completewith GlowingBones
    >>Récupérez les |cRXP_PICK_Tas de bois|r par terre << Paladin
    >>Récupérez les |cRXP_PICK_Bouteilles d’élixir des murmures|r au sol et sur les murs
    .complete 91316,1 << Paladin--|12/12 Sturdy Lumber
    .complete 95314,1 --|8/8 Bottle of Whispering Elixir
step
    .goto 1420/0,2648.100,2027.200
    .use 268812 >>Tuez l' |cRXP_ENEMY_Horreur murmurante|r (élite). Dépouillez-la pour le |T134438:0|t[|cRXP_LOOT_Résidu d’horreur murmurante|r]
    >>|cRXP_WARN_Cette étape est difficile ! Faites-la au sein d'un groupe si possible. Elle a 700 pv mais ses dégâts sont gérables. Passez cette étape si vous n'arrivez pas à la tuer|r
    .collect 268812,1,95328 --Whispering Horror Residue (x1)
    .accept 95328 >>Acceptez la quête Résidu d’horreur murmurante
    .mob Whispering Horror
step
    #requires ShadowValeCrypt
    #label GlowingFragment
    .goto 1420/0,2592.400,1748.400
    >>Récupérez le |cRXP_PICK_Fragment de cristal luminescent|r par terre
    .complete 99153,1 --|1/1 Glowing Crystal Fragment
step
    #requires ShadowValeCrypt
    #label GlowingBones
    .goto 1420/0,2556.100,1868.800
    >>Tuez les |cRXP_ENEMY_Titubeurs d'Ombreval|r et les |cRXP_ENEMY_Mystiques d'Ombreval|r. Dépouillez-les pour leur |cRXP_LOOT_Os faiblement luminescents|r
    .complete 99152,1 --|6/6 Faintly Glowing Bone
    .mob Shadowvale Lurcher
    .mob Shadowvale Mystic
step
    #requires ShadowValeCrypt
    .goto 1420/0,2647.800,1815.500
    >>Récupérez les |cRXP_PICK_Tas de bois|r par terre << Paladin
    >>Récupérez les |cRXP_PICK_Bouteilles d’élixir des murmures|r au sol et sur les murs
    .complete 91316,1 << Paladin--|12/12 Sturdy Lumber
    .complete 95314,1 --|8/8 Bottle of Whispering Elixir
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto 1420/0,2037.100,2416.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilda la Briseuse|r
    .turnin 99152 >>Rendez la quête L’ombre sous le val
    .target Hilda the Breaker
step
    .goto 1420/0,2122.500,2436.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ephram Barbaro|r
    .turnin 99153 >>Rendez la quête Celui qui s’échappa
    .target Ephram Barbaro
step << Paladin
    .goto 1420/0,2008.000,2491.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorin Croge|r
    .turnin 91316 >>Rendez la quête Procéder aux réparations
    .target Jorin Croge
step << Paladin
    .goto 1420/0,2035.100,2492.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 91317 >>Rendez la quête Les ternis
    .accept 95803 >>Acceptez la quête Un gage de bonne volonté
    .accept 94427 >>Acceptez la quête Une leçon de divinité
    .target Danitha Morr
step << !Paladin
    #completewith BrillTurnin2
    .hs >> Utilisez votre Pierre de foyer pour revenir à Brill
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step << !Paladin
    #completewith BrillTurnin2
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step << !Paladin
    .goto 1420/0,347.600,2265.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolai Anise|r
    .turnin 95314 >>Rendez la quête Cet élixir vert d’Ombreval
    .target Carolai Anise
step << Priest
    .goto 1420/0,251.14,2265.28--c:Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.trainer >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03--c:Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25--c:Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2270.70--c:Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r
    .train 1766 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <12,1
step << Mage
    .goto 1420/0,233.52,2256.84--c:Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r à l'intérieur de l'auberge
    .train 145 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <12,1
step
    #optional
    #label BandarionKeepSkip
step << Rogue
    #completewith EnterUC2
    >>|cRXP_WARN_Si vous voyez|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, parlez-lui et tuez-le. Dépouillez-le pour la lettre. Il patrouille la route entre Brill et le Sépulcre|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << !Paladin
    #label BrillTurnin2
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 356 >>Rendez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
step << !Paladin
    #label EnterUC2
    #completewith Glix
    .goto 1420/0,240.75,1877.57,20 >> Entrez dans Undercity
    .zoneskip Undercity
step << !Paladin
    #completewith Glix
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << !Paladin
    .goto 1458/0,223.31,1634.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Norman|r
    .home >> Liez votre Pierre de foyer à Fossoyeuse
    .target Innkeeper Norman
    .bindlocation 1497
step << Paladin
    #completewith Glix
    .hs >> Utilisez votre Pierre de foyer pour revenir à Fossoyeuse
    .cooldown item,6948,>0,1
    .bindlocation 1497,1
    .zoneskip Undercity
step << Paladin --trade quarter
    .goto 1458/0,245.300,1637.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tanis Aulnebois|r
    >>|cRXP_WARN_Gardez bien 10|r |T132889:0|t[Étoffes de lin] |cRXP_WARN_dans vos sacs|r
    .turnin 94427 >>Rendez la quête Une leçon de divinité
    .accept 94434 >>Acceptez la quête Une leçon de divinité
    .turnin 94434 >>Rendez la quête Une leçon de divinité
    .accept 94435 >>Acceptez la quête Une leçon de divinité
    .target Tanis Alderwood
step
    #label Glix
    .goto 1458/0,201.400,1575.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Glix Xizzix|r
    .turnin 98545 >>Rendez la quête La lettre de Leonid
    .target Glix Xizzix
step << Rogue
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith CaptainMelrache
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith CaptainMelrache
    +Équipez la [Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Cain|r
    >>|cRXP_BUY_Achetez trois|r |T133884:0|t[Oeil de murloc] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r au Quartier Magique
    .turnin 1882 >>Rendez la quête La ferme des Balnir
    .target Anastasia Hartwell
step << Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1886 >>Rendez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestComplete 1886
step << Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .accept 1898 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,347.07,1389.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andron Gant|r
    .turnin 1898 >>Rendez la quête Les nécrotraqueurs
    .accept 1899 >>Acceptez la quête Les nécrotraqueurs
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,341.41,1385.90
    >>Ramassez les |cRXP_PICK_Livres d'Andron|r derrière |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,71.83,1435.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1899 >>Rendez la quête Les nécrotraqueurs
    .accept 1978 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1420/0,373.60,1464.85,40,0
    .goto 1420/0,333.38,1287.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Rendez la quête Les nécrotraqueurs
    .target Varimathras
    .isQuestTurnedIn 1886
step
    .goto 1458/0,399.800,1776.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Père Lankester|r
    .turnin 95328 >>Rendez la quête Résidu d’horreur murmurante
    .target Father Lankester
    .isOnQuest 95328
step << Priest
    #ah
    .goto 1458/0,257.27,1560.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez une|r |T135139:0|t[Baguette magique inférieure] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Si vous le faites et aviez gardez vos|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_plus tôt, vous pouvez vendre votre|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_à l'Hôtel des ventes|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
step << Priest
    #optional
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >> Rendez la quête Toucher de faiblesse
    .target Aelthalyste
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
    .train 2652,1 --Touch of Weakness not trained
step << Priest
    #optional
    .goto 1458/0,201.05,1686.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Victor|r
    .train 3908 >> Apprenez |T136249:0|t[Couture]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,194.34,1681.63
    >>|cRXP_WARN_Transformez toutes vos|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_en|r |T132890:0|t[Rouleaux d'étoffe de lin]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,201.05,1686.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Victor|r
    .train 7623 >> Apprenez |T132662:0|t[Robe marron en lin]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,196.16,1684.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Millie Gregorian|r
    >>|cRXP_BUY_Achetez-lui des|r |T132891:0|t[Bobines de fil grossier] |cRXP_BUY_|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    >>|cRXP_WARN_Fabriquez autant de|r |T132662:0|t[Robes marron en lin] |cRXP_WARN_que possible|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,273.87,1482.360
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lavinia Crowe|r
    .train 7411 >> Apprenez |T136244:0|t[Enchantement]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,275.02,1487.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Achetez-lui un|r |T133942:0|t[Bâtonnet en cuivre] |cRXP_BUY_et du|r |T135435:0|t[Simple Bois] |cRXP_BUY_|r
    >>|cRXP_WARN_Désenchantez tous les|r |T132662:0|t[Robe marron en lin] |cRXP_WARN_que vous avez tissé et fabriqué un|r |T135225:0|t[Bâtonnet runique en cuivre]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,273.2,1491.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malcomb Wynn|r
    .train 14293 >> Apprenez |T135139:0|t[Baguette magique inférieure]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #label LesserMagicWand
    >>|cRXP_WARN_Créez une|r |T135139:0|t[Baguette magique inférieure]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Équipez la|r |T135139:0|t[Baguette magique inférieure]
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
    .goto 1458/0,365.30,1304.41,10 >>Entrez dans le Quartier Royal--c:Undercity,52.94,89.60
step << Paladin
    .goto 1458/0,316.200,1290.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Dame Sylvanas Windrunner|r.
    .turnin 95803 >>Rendez la quête Un gage de bonne volonté
    .target Lady Sylvanas Windrunner

    --Paladin Ressurrect chain route

step << Paladin
    #completewith
    .goto 1420/0,235.32,1883.89
    .zone Tirisfal Glades >> Quittez Undercity
    .zoneskip Tirisfal Glades
step << Paladin
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 356 >>Rendez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shari Morpuits|r
    .train 678 >> Apprenez vos sorts de classe
    .target Shari Stilwell
    .xp <12,1
step << Paladin
    .goto 1420/0,347.600,2265.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolai Anise|r
    .turnin 95314 >>Rendez la quête Cet élixir vert d’Ombreval
    .target Carolai Anise
step << Paladin
    #completewith RessComplete
    +|cRXP_WARN_Vous allez maintenant commencer la suite de quête pour le sort|r |T135955:0|t[Rédemption] |cRXP_WARN_. Elle vous prendra environ 15 minutes et ne vous donnera pas beaucoup d'expérience|r
    >>|cRXP_WARN_N'hésitez pas à passer cette étape pour le moment et à revenir plus tard si vous préférez|r
step << Paladin
    #completewith next
    .goto 1420/0,1732.500,2437.900,50,0
    .goto 1420/0,1834.300,2424.000,50,0
    .goto 1420/0,1963.100,2340.600,50,0
    .goto 1420/0,2041.000,2352.500,50,0
    .goto 1420/0,2049.900,2463.200,50 >>Voyagez à la forteresse de Bandarion
step << Paladin
    .goto 1420/0,2035.100,2492.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 94435 >>Rendez la quête Une leçon de divinité
    .accept 94436 >>Acceptez la quête Une leçon de divinité
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2043.400,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Billmuth|r
    .turnin 94436 >>Rendez la quête Une leçon de divinité
    .accept 94438 >>Acceptez la quête Une leçon de divinité
    .target Deathguard Billmuth
    .isOnQuest 94436
step << Paladin
    #optional
    .goto 1420/0,2043.400,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Billmuth|r
    .accept 94438 >>Acceptez la quête Une leçon de divinité
    .target Deathguard Billmuth
    .isQuestTurnedIn 94436

    --East Tirisfal south of SM

step << Paladin
    #completewith next
    .goto 1420/0,-885.200,2399.800,50 >>Voyagez à l'est de Tirisfal
step << Paladin
    #completewith next
    .cast 8593 >>|cRXP_WARN_Utilisez le|r |T133439:0|t[Symbole de vie] |cRXP_WARN_sur le|r |cRXP_FRIENDLY_Nécrogarde Falgan|r
    .use 6866
    .target Deathguard Falgan
step << Paladin
    .goto 1420/0,-885.200,2399.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Falgan|r
    .turnin 94438 >>Rendez la quête Une leçon de divinité
    .accept 94440 >>Acceptez la quête Une leçon de divinité
    .target Deathguard Falgan
    .isQuestTurnedIn 94436
step << Paladin
    .goto 1420/0,-889.700,2531.400
    >>Tuez les |cRXP_ENEMY_Frères écarlates|r et les |cRXP_ENEMY_Zélotes écarlates|r. Dépouillez-les pour les |cRXP_LOOT_Plans d’attaque de la Croisade écarlate|r
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
    .goto 1420/0,2049.900,2463.200,50 >>Voyagez à la forteresse de Bandarion
step << Paladin
    .goto 1420/0,2043.500,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Billmuth|r
    .turnin 94440 >>Rendez la quête Une leçon de divinité
    .accept 94441 >>Acceptez la quête Une leçon de divinité
    .target Deathguard Billmuth
    .isQuestTurnedIn 94436
step << Paladin
    #label RessComplete
    .goto 1420/0,2034.900,2492.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 94441 >>Rendez la quête Une leçon de divinité
    .target Danitha Morr
    .isQuestTurnedIn 94436
step << !Paladin
    #completewith Entersilverpine
    #optional
    .abandon 96899 >>Abandonnez la quête La forteresse de Bandarion
step << !Paladin
    #completewith Entersilverpine
    #optional
    .abandon 95314 >>Abandonnez la quête Cet élixir vert d’Ombreval
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
    .zone Tirisfal Glades >> Quittez Undercity par les Égouts
step
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
]])


RXPGuides.RegisterGuide([[
#group RestedXP Guide Forever (H)
#subgroup Guide Speedrun 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#defaultfor !Hunter !Shaman !Tauren
#forever
#name 12-14 Forêt des Pins argentés
#displayname 13-15 Forêt des Pins argentés << Paladin
#next 12-17 Les Tarides

step << Skyborne
    #optional
    .maxlevel 13,Silverpineskip
step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_Si vous voyez|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, parlez-lui et tuez-le. Dépouillez-le pour la lettre. Il patrouille la route entre Brill et le Sépulcre|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    .goto 1421/0,1090.44,1409.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrotraqueur Erland|r pour commencer l'escorte
    >>|cRXP_WARN_S'il n'est pas présent, passez cette quête pour le moment|r
    .accept 435,1 >>Acceptez la quête Une escorte pour Erland
    .target Deathstalker Erland
step
    .goto 1421/0,1087.50,1379.11,30,0
    .goto 1421/0,1087.50,1346.63,30,0
    .goto 1421/0,1090.86,1313.31,30,0
    .goto 1421/0,1204.68,1290.07
    >>Escortez |cRXP_FRIENDLY_Erland|r en toute sécurité auprès de |cRXP_FRIENDLY_Rane Yorick|r
    >>Les |cRXP_ENEMY_Worgs|r |cRXP_WARN_peuvent apparaître les uns sur les autres, mangez et buvez dès que possible|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
    .isOnQuest 435
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Rendez la quête Une escorte pour Erland
    .accept 429 >>Acceptez la quête Cœurs sauvages
    .accept 449 >>Acceptez la quête Le rapport des nécrotraqueurs
    .target Rane Yorick
    .isQuestComplete 435
step
    #optional
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rane Yorick|r
    .accept 429 >>Acceptez la quête Cœurs sauvages
    .target Rane Yorick
step
    #completewith Escort2
    >>Tuez les |cRXP_ENEMY_Worgs|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .collect 3164,3,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto 1421/0,715.000,1335.400
    >>Tuez les |cRXP_ENEMY_Murlocs Ailerons noirs|r. Dépouillez-les pour leur |T133884:0|t[|cRXP_LOOT_Œil de murloc|r]
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .mob Vile Vin Shredder
    .mob Vile Vin Tidehunter
step
    .goto 1421/0,1090.44,1409.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrotraqueur Erland|r pour commencer l'escorte
    .accept 435,1 >>Acceptez la quête Une escorte pour Erland
    .target Deathstalker Erland
step
    #label Escort2
    .goto 1421/0,1087.50,1379.11,30,0
    .goto 1421/0,1087.50,1346.63,30,0
    .goto 1421/0,1090.86,1313.31,30,0
    .goto 1421/0,1204.68,1290.07
    >>Escortez |cRXP_FRIENDLY_Erland|r en toute sécurité auprès de |cRXP_FRIENDLY_Rane Yorick|r
    >>Les |cRXP_ENEMY_Worgs|r |cRXP_WARN_peuvent apparaître les uns sur les autres, mangez et buvez dès que possible|r
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
    >>Tuez les |cRXP_ENEMY_Worgs|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .collect 3164,3,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Rendez la quête Une escorte pour Erland
    .accept 449 >>Acceptez la quête Le rapport des nécrotraqueurs
    .target Rane Yorick
step << skip
    #softcore
    #completewith ProveyourWorth
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    --#hardcore
    #completewith next
    .goto 1421/0,1359.66,864.19,50,0
    .goto 1421/0,1359.66,741.27,50,0
    .goto 1421/0,1365.12,607.15,100,0
    .goto 1421/0,1538.58,511.39,100 >> Voyagez au Sépulcre
    .subzoneskip 228
step
    #label ProveyourWorth
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .accept 421 >>Acceptez la quête Prouver votre valeur
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwyn Farrow|r
    .vendor >> |cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r
    >>|cRXP_WARN_Ne vendez PAS vos|r |T133884:0|t[|cRXP_LOOT_Yeux de murloc|r]
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    >>|cRXP_WARN_Ne vendez PAS vos|r |T133884:0|t[|cRXP_LOOT_Yeux de murloc|r]
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r et au |cRXP_FRIENDLY_Nécrogarde Podrig|r
    .accept 477 >>Acceptez la quête Frontières
    .target +Shadow Priest Allister
    .goto 1421/0,1602.84,520.63
    .accept 6321 >>Acceptez la quête Approvisionner le Sépulcre
    .target +Deathguard Podrig
    .goto 1421/0,1625.94,499.91
step
    #label BorderCrossings
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r
    .accept 477 >>Acceptez la quête Frontières
    .target Shadow Priest Allister
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >> Entrez dans la crypte
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grand exécuteur Hadrec|r dans la crypte
    .turnin 449 >>Rendez la quête Le rapport des nécrotraqueurs
    .accept 3221 >>Acceptez la quête Parler à Renferrel
    .accept 437 >>Acceptez la quête Le Champ des morts
    .target High Executor Hadrec
step
    .goto 1421/0,1652.82,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renferrel|r
    .turnin 429 >>Rendez la quête Cœurs sauvages
    .turnin 445 >>Rendez la quête Livraison dans la forêt des Pins argentés
    .turnin 3221 >>Rendez la quête Parler à Renferrel
    .accept 1359 >>Acceptez la quête Une livraison pour Zinge
    .accept 447 >>Acceptez la quête Une recette mortelle
    .accept 430 >>Acceptez la quête Retour vers Quinn
    .target Apothecary Renferrel
    .addquestitem 3164,429
    .isOnQuest 445
step
    #optional
    .goto 1421/0,1652.82,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renferrel|r
    .turnin 429 >>Rendez la quête Cœurs sauvages
    .turnin 3221 >>Rendez la quête Parler à Renferrel
    .accept 1359 >>Acceptez la quête Une livraison pour Zinge
    .accept 447 >>Acceptez la quête Une recette mortelle
    .accept 430 >>Acceptez la quête Retour vers Quinn
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
    >>Tuez les |cRXP_ENEMY_Poil-blancs Ragelunes|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .target Dalar Dawnweaver
    .turnin 421 >>Rendez la quête Prouver votre valeur
    .accept 422 >>Acceptez la quête La folie d'Arugal
step
    #completewith Remedy
    .goto 1421/0,1234.92,891.070,80 >> Voyagez jusqu'au champ de Valgan
step
    #label Remedy
    .goto 1421/0,1234.92,891.070,8,0
    .goto 1421/0,1218.54,884.91,8,0
    .goto 1421/0,1226.52,886.03,8,0
    .goto 1421/0,1231.14,866.99
    >>Entrez dans la maison et allez au deuxième étage. Ramassez les |cRXP_PICK_Livres de sorts poussiéreux|r sur le sol
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto 1421/0,1207.62,1293.71,80,0
    .subzone 239 >>Voyagez jusqu'au lopin d'Ivar
step
    #label QuinnYorick
    .goto 1421/0,1207.62,1293.71,8,0
    .goto 1421/0,1220.64,1299.59,8,0
    .goto 1421/0,1212.66,1298.19,8,0
    .goto 1421/0,1205.94,1314.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quinn Yorick|r au deuxième étage de la maison
    .turnin 430 >>Rendez la quête Retour vers Quinn
    .accept 91920 >>Acceptez la quête Yeux sauvages
    .target Quinn Yorick
step
    .goto 1421/0,715.000,1335.400
    >>Tuez les |cRXP_ENEMY_Murlocs Ailerons noirs|r. Dépouillez-les pour leur |T133884:0|t[|cRXP_LOOT_Œil de murloc|r]
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .mob Vile Vin Shredder
    .mob Vile Vin Tidehunter
step
    #completewith ArugalTurnin
    +|cRXP_WARN_Soyez prudent ! Il peut y avoir un|r |cRXP_ENEMY_Fils d'Arugal|r |cRXP_WARN_dans la zone ! C'est un élite de niveau 25, éloignez-vous de lui !|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>Tuez les |cRXP_ENEMY_Ours|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto 1421/0,1541.52,1078.39
    >>Tuez les |cRXP_ENEMY_Gnolls Poil-Putride|r autour du champ des Morts jusqu'à ce que |cRXP_ENEMY_Cinglenuit|r apparaisse. Tuez-la et dépouillez-la pour son |cRXP_LOOT_Essence|r
    >>|cRXP_WARN_Ils sont immunisés contre la peur !|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>Tuez les |cRXP_ENEMY_Ours|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Araignées|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    >>|cRXP_WARN_Faites attention à|r |cRXP_ENEMY_Krethis Tisse-l'ombre|r |cRXP_WARN_comme elle est quasiment impossible à tuer !|r << !Mage !Warlock
    >>|cRXP_WARN_Faites attention à|r |cRXP_ENEMY_Krethis Tisse-l'ombre|r |cRXP_WARN_comme elle est très difficile mais tuable. Elle a un bouclier de 130 dégâts toutes les 15s, et une capacité de choc instantané de 110 dégâts|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto 1421/0,2064.0,1167.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Killian|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
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
    >>Tuez les |cRXP_ENEMY_Araignées|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    >>|cRXP_WARN_Faites attention à|r |cRXP_ENEMY_Krethis Tisse-l'ombre|r |cRXP_WARN_comme elle est quasiment impossible à tuer !|r << !Mage !Warlock
    >>|cRXP_WARN_Faites attention à|r |cRXP_ENEMY_Krethis Tisse-l'ombre|r |cRXP_WARN_comme elle est très difficile mais tuable. Elle a un bouclier de 130 dégâts toutes les 15s, et une capacité de choc instantané de 110 dégâts|r << Mage/Warlock
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
    >>Finissez de tuer les |cRXP_ENEMY_Ours|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step << skip
    #softcore
    #completewith ArugalTurnin
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    --#hardcore
    #completewith next
    .goto 1421/0,1538.58,511.39,100,0
    .subzone 228 >>Retournez au Sépulcre
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >> Rendez la quête La folie d'Arugal
    .accept 423 >> Acceptez la quête La folie d'Arugal
    .target Dalar Dawnweaver
step
    #optional
    #label ArugalTurnin
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >> Entrez dans la crypte
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grand exécuteur Hadrec|r dans la crypte
    .turnin 437 >> Rendez la quête Le Champ des morts
    .accept 438 >> Acceptez la quête Le bac délabré
    .target High Executor Hadrec
step
    .goto 1421/0,1652.600,522.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Renferrel|r
    .turnin 91920 >>Rendez la quête Yeux sauvages
    .accept 91921 >>Acceptez la quête Retour vers Quinn (encore une fois)
    .target Apothecary Renferrel
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwyn Farrow|r
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .collect 1179,20,423,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto 1421/0,1568.4,567.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andrea|r
    .vendor >> Achetez-lui une |T132491:0|t[|cRXP_FRIENDLY_Ceinture de grand sage|r] si elle est disponible
    .target Andrea Boynton
    .money <0.1400
step << Rogue
    .goto 1421/0,1576.38,571.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alexandra Lefevre|r
    .vendor >> Achetez-lui des |T132539:0|t[|cRXP_FRIENDLY_Bottes agiles|r] si elles sont disponibles
    .target Alexandre Lefevre
    .money <0.2633
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_Équipez la|r |T132491:0|t[|cRXP_FRIENDLY_Ceinture de grand sage|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_Équipez les|r |T132539:0|t[|cRXP_FRIENDLY_Bottes agiles|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step
    #completewith Shackles
    .goto 1421/0,1593.60,597.91,15,0--c:Silverpine Forest,44.20,38.17
    .goto 1421/0,1582.68,640.47,15,0--c:Silverpine Forest,44.46,36.65
    .goto 1421/0,1563.78,738.75,30 >> Descendez la colline--c:Silverpine Forest,44.91,33.14
step
    #completewith DecrepitFerry
    +|cRXP_WARN_Soyez prudent ! Il peut y avoir un|r |cRXP_ENEMY_Fils d'Arugal|r |cRXP_WARN_dans la zone ! C'est un élite de niveau 25, éloignez-vous de lui !|r
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
    >>Tuez les |cRXP_ENEMY_Gloutons Ragelunes|r et les |cRXP_ENEMY_Ténébreux Ragelunes|r. Dépouillez-les pour leurs |cRXP_LOOT_Bracelets|r
    >>|cRXP_WARN_Attention !|r Les |cRXP_ENEMY_Ténébreux Ragelunes|r |cRXP_WARN_s'enragent quand ils sont en dessous de 25% de points de vie. Tuez-les rapidement quand ils sont affaiblis.|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quinn Yorick|r au deuxième étage de la maison
    .turnin 91921 >>Rendez la quête Retour vers Quinn (encore une fois)
    .target Quinn Yorick
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rane Yorick|r à l'extérieur
    .accept 425 >>Acceptez la quête Ivar l'Infect
    .target Rane Yorick
step
    .goto 1421/0,1265.58,1274.11,6,0
    .goto 1421/0,1270.62,1279.71,6,0
    .goto 1421/0,1285.32,1277.19
    >>Tuez |cRXP_ENEMY_Ivar l'Infect|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_WARN_Ivar est protégé par deux|r |cRXP_ENEMY_Esclaves Serres-de-corbeau|r |cRXP_WARN_dans la grange. Vous pouvez en engager un seul à la fois lorsqu'il patrouille|r
    >>|cRXP_WARN_Ils sont immunisés contre la peur !|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Rendez la quête Ivar l'Infect
    .target Rane Yorick
step
    #label DecrepitFerry
    .goto 1421/0,997.62,692.55
    >>Cliquez sur le |cRXP_PICK_Bateau|r sur le côté des quais
    .turnin 438 >>Rendez la quête Le bac délabré
    .accept 439 >>Acceptez la quête Un indice vers les Poils-putrides
step
    #completewith next
    .goto 1421/0,1538.58,511.39,100 >> Retournez au Sépulcre
    .subzoneskip 228
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .turnin 423 >>Rendez la quête La folie d'Arugal
    .accept 424 >>Acceptez la quête La folie d'Arugal
    .target Dalar Dawnweaver
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >> Entrez dans la crypte
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grand exécuteur Hadrec|r dans la crypte
    .turnin 439 >>Rendez la quête Un indice vers les Poils-putrides
    .accept 440 >>Acceptez la quête L'anneau ciselé
    .target High Executor Hadrec
step
    #completewith next
    .goto 1421/0,1077.84,380.35,10 >> Entrez dans la mine--c:Silverpine Forest,56.48,45.94
step
    #label GrimsonthePale
    .goto 1421/0,990.48,410.87--c:Silverpine Forest,58.56,44.85
    >>Tuez |cRXP_ENEMY_Grimson le Pâle|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r.
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
step
    #hardcore
    .goto 1421/0,1354.62,-22.57
    >>Cliquez sur la |cRXP_PICK_Caisse|r dans le camp
    >>|cRXP_WARN_Attention ! Ces mobs lancent|r |T135846:0|t[Eclair de givre] |cRXP_WARN_et s'enfuient lorsqu'ils ont peu de vie. Engagez-les et tuez-les un par un jusqu'à ce que vous puissiez cliquer en toute sécurité sur la caisse.|r
    .turnin 477 >>Rendez la quête Frontières
    .accept 478 >>Acceptez la quête Des cartes et des runes
    .mob Dalaran Apprentice
step
    #label BorderCrossings
    #softcore
    .goto 1421/0,1354.62,-22.57
    >>Cliquez sur la |cRXP_PICK_Caisse|r dans le camp
    >>|cRXP_WARN_Faites attention, ces créatures lancent|r |T135846:0|t[Eclair de givre]|r
    .turnin 477 >>Rendez la quête Frontières
    .accept 478 >>Acceptez la quête Des cartes et des runes
    .mob Dalaran Apprentice
step
    #completewith next
    #hardcore
    .goto 1421/0,1538.58,511.39,100 >> Retournez au Sépulcre--c:Silverpine Forest,45.51,41.26
    .subzoneskip 228
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r et à |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Rendez la quête Des cartes et des runes
    .accept 481 >>Acceptez la quête L'analyse de Dalar
    .target +Shadow Priest Allister
    .goto 1421/0,1602.84,520.63
    .turnin 424 >>Rendez la quête La folie d'Arugal
    .turnin 481 >>Rendez la quête L'analyse de Dalar
    .accept 482 >>Acceptez la quête Les intentions de Dalaran
    .target +Dalar Dawnweaver
    .goto 1421/0,1593.6,554.23
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r
    .turnin 482 >>Rendez la quête Les intentions de Dalaran
    .target Shadow Priest Allister
step
    .goto 1421/0,1533.96,474.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Rendez la quête Approvisionner le Sépulcre << Undead
    .accept 6323 >>Acceptez la quête Voyage vers Fossoyeuse << Undead
    .fp Sepulcher >> Prenez le chemin de vol pour le Sépulcre << !Undead
    .fly Undercity >> Volez à Undercity << !Undead
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    .hs >> Utilisez votre Pierre de foyer pour revenir à Fossoyeuse
    .use 6948
    .zoneskip Undercity
    .bindlocation 1497,1
step << Undead
    .goto 1458/0,283.37,1610.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >> Rendez la quête Voyage vers Fossoyeuse
    .accept 6322 >> Acceptez la quête Michael Garrett
    .target Gordon Wendham
step << Rogue
    #ssf
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez une|r [Cimeterre] |cRXP_BUY_au marchand|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #ah
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez une|r [Cimeterre] |cRXP_BUY_au marchand|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith Conscript
    +Équipez la [Cimeterre]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Undead
    .goto 1458/0,266.20,1567.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Rendez la quête Michael Garrett
    .target Michael Garrett
step << Undead Warrior
    #optional
    .goto 1458/0,418.35,1767.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baltus Fowler|r
    .train 285 >> Apprenez vos sorts de classe
    .target Baltus Fowler
    .dungeon RFC
    .xp <16,1
--XX 16+ Only for Heroic Strike, Undead only as other races train elsewhere more effectively. RFC So warriors have 16 spells for RFC
step << Rogue/Warrior
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r dans le Quartier des voleurs
    .train 3273 >>Apprenez [Premiers soins]
    .target Mary Edras
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,40 >> Fabriquez des |T133685:0|t[Bandages en lin] jusqu'à ce que votre compétence soit de 40 ou plus
    .itemcount 2589,1 --Linen Cloth (1+)
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r dans le Quartier des voleurs
    .train 3276 >> Apprenez [Bandage épais en lin]
    .target Mary Edras
    .skill firstaid,<40,1
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,50 >> Fabriquez des |T133688:0|t[Bandages épais en lin] jusqu'à ce que votre compétence soit de 50 ou plus
    .itemcount 2589,2 --Linen Cloth (2+)
step << Rogue/Warrior
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r dans le Quartier des voleurs
    .train 3274 >> Apprenez Premiers soins compagnon
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1886 >>Rendez la quête Les nécrotraqueurs
    .accept 1898 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .accept 1898 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .isOnQuest 1898 << Undead
--XX Only train if you were directed here for class quest as an Undead
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <16,1
    .isOnQuest 1898 << Undead
step << Undead Rogue
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Optional left out on purpose
--XX This whole section of training across 3 different areas, 2 different xp rates and RFC is solidly in the top 10 worst experiences of my life and im still not 100% happy with it xd
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto 1458/0,347.07,1389.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andron Gant|r
    .turnin 1898 >>Rendez la quête Les nécrotraqueurs
    .accept 1899 >>Acceptez la quête Les nécrotraqueurs
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto 1458/0,341.41,1385.90
    >>Ramassez les |cRXP_PICK_Livres d'Andron|r derrière |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step
    .goto 1458/0,310.900,1528.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alessandro Luca|r
    .accept 97891 >>Acceptez la quête Livraison de potion express
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
    .goto 1458/0,404.63,1434.67,12 >> Voyagez vers |cRXP_FRIENDLY_Faranell|r dans l'Apothicarium
step
    .goto 1458/0,426.100,1403.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Docteur Martin Felben|r
    .complete 97891,1 --|1/1 Speak to Doctor Martin Felben
    .turnin 97891 >>Rendez la quête Livraison de potion express
    .target Doctor Martin Felben
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître apothicaire Faranell|r et à l' |cRXP_FRIENDLY_Apothicaire Zinge|r à l'Apothicarium
    .turnin 447 >>Rendez la quête Une recette mortelle
    .target +Master Apothecary Faranell
    .goto 1458/0,404.63,1434.67
    .turnin 1359 >> Rendez la quête Une livraison pour Zinge
    .accept 1358 >> Acceptez la quête Un échantillon pour Helbrim
    .target +Apothecary Zinge
    .goto 1458/0,391.97,1442.87
step << Undead Rogue
    .goto 1458/0,71.83,1435.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1899 >>Rendez la quête Les nécrotraqueurs
    .accept 1978 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Duplicate if you ding from prev optional quests
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto 1420/0,373.60,1464.85,40,0
    .goto 1420/0,333.38,1287.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Rendez la quête Les nécrotraqueurs
    .target Varimathras
    .isQuestTurnedIn 1886
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,40 >> Fabriquez des |T133685:0|t[Bandages en lin] jusqu'à ce que votre compétence soit de 40 ou plus
    .itemcount 2589,1 --Linen Cloth (1+)
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r dans le Quartier des voleurs
    .train 3276 >> Apprenez [Bandage épais en lin]
    .target Mary Edras
    .skill firstaid,<40,1
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,50 >> Fabriquez des |T133688:0|t[Bandages épais en lin] jusqu'à ce que votre compétence soit de 50 ou plus
    .itemcount 2589,2 --Linen Cloth (2+)
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r dans le Quartier des voleurs
    .train 3274 >> Apprenez Premiers soins compagnon
    .target Mary Edras
    .skill firstaid,<50,1
step << Mage
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r
    .train 2137 >> Apprenez vos sorts de classe
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Mage
    #optional
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r
    .train 2120 >> Apprenez vos sorts de classe
    .target Anastasia Hartwell
    .xp <16,1
step << Undead Warlock
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Richard|r
    .train 6222 >> Apprenez vos sorts de classe
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Undead Warlock
    #optional
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Richard|r
    .train 1455 >> Apprenez vos sorts de classe
    .target Richard Kerwin
    .xp <16,1
step << Paladin
    .goto 1458/0,418.500,1782.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garen|r
    .train 647 >>Apprenez vos sorts de classe
    .target Garen Largo
    .xp <14,1
    .xp >16,1
step << Paladin
    #optional
    .goto 1458/0,418.500,1782.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garen|r
    .train 7294 >>Apprenez vos sorts de classe
    .target Garen Largo
    .xp <16,1
step << Priest/Mage/Warlock
    #ssf
    .goto 1458/0,206.04,1705.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zane Bradford|r dans le Quartier magique
    >>|cRXP_BUY_Achetez une|r [Baguette de fonte] |cRXP_BUY_à Harick|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #ah
    .goto 1458/0,206.04,1705.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zane Bradford|r dans le Quartier magique
    >>|cRXP_BUY_Achetez une|r [Baguette de fonte] |cRXP_BUY_à Harick|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 5208,1 --Smoldering Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Équipez la|r |T135468:0|t[Baguette fumante] |cRXP_WARN_lorsque vous êtes au niveau 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +Équipez la [Baguette de fonte]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Undead Priest
    #sticky
    #label TouchOW
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >> Rendez la quête Toucher de faiblesse
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
step << !Undead Priest
    #sticky
    #label TouchOW
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Rendez la quête Toucher de faiblesse
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
    .isOnQuest 5660
--XX Not going out of the way for this outside of this edge case to train for RFC, waste of a gcd
step << Undead Priest
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Père Lazarus|r
	.train 6074 >> Apprenez vos sorts de classe
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .dungeon RFC
step << Undead Priest
    #optional
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Père Lazarus|r
	.train 8102 >> Apprenez vos sorts de classe
    .target Father Lazarus
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    #optional
    #completewith Conscript
    >>Abandonnez la quête Les nécrotraqueurs, vous n'aurez plus l'occasion de la faire
    .abandon 1886 >> Abandonnez la quête Les nécrotraqueurs
    .isOnQuest 1886
step << skip --Undead !Rogue !Warrior
    #requires TouchOW << Undead Priest
    .goto 1458/0,327.4,1770.6 << Priest
    .goto 1458/0,206.81,1712.48 << Mage/Warlock
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur le broyeur du Chariot à viande, puis en vous déconnectant et en vous reconnectant|r << Priest
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur les tonneaux, puis en vous déconnectant et en vous reconnectant|r << Mage/Warlock
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
    .dungeon RFC
step << skip --Undead !Rogue !Warrior
    .goto 1458/0,206.81,1712.48 << Priest/Mage/Warlock
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur les tonneaux, puis en vous déconnectant et en vous reconnectant|r << Priest/Mage/Warlock
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
    .dungeon !RFC
step << Undead/Skyborne
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Maintenant vous devez trouver un groupe pour le Gouffre de Ragefeu
    .dungeon RFC
step << Undead
    #completewith next
    .goto 1420/0,235.32,1883.89,50,0
    .zone Tirisfal Glades >> Quittez Undercity
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
    .zone Durotar >>Prenez le Zeppelin pour Durotar
    >>Fabriquez des Pierres à aiguiser/Bandages pendant l'attente << Warrior/Rogue
    >>Invoquez de la nourriture/eau pendant l'attente << Mage
    .zoneskip Durotar
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Skyborne Druid
    .goto 1450/1,-2678.76,8019.94--c:Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite|r
    .turnin 94913 >>Rendez la quête Reflet-de-Lune
    .target Dendrite Starblaze
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 5178 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <14,1
    .xp >16,1
step << Druid
    #label DruidTraining1
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <16,1
step << Skyborne
    .hs >> Utilisez votre Pierre de foyer pour revenir à Orgrimmar
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
    .zone Orgrimmar >> Voyagez à Orgrimmar
    .dungeon RFC
step << Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    >>N'achetez pas de trajet en vol !
    .fp Orgrimmar >> Prenez le chemin de vol d'Orgrimmar
    .target Doras
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << Undead/Skyborne
    .goto 1411/1,-4769.10,1484.39,0
    >>Tuez les membres de la |cRXP_ENEMY_Lame Ardente|r au Rocher du Crâne jusqu'à ce que l' |cRXP_LOOT_Insigne de lieutenant|r tombe
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Rendez la quête Ennemis cachés
    .accept 5727 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Acceptez la quête Tuer la bête
    .target Neeru Fireblade
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << Undead/Skyborne
    #label HiddenEnemiesPickup
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Rendez la quête Ennemis cachés
    .accept 5728 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << Undead/Skyborne
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Détruisez l'|r |T134417:0|t[Insigne de lieutenant] |cRXP_WARN_comme vous n'en avez plus besoin|r
    .dungeon RFC
step << Undead/Skyborne
    #label EnterRFC
    .goto 1454/1,-4420.76,1815.80
    .subzone 2437 >> Entrez dans le portail de l'instance du Gouffre de Ragefeu
    .dungeon RFC
step << Undead/Skyborne
    >>|cRXP_WARN_Si possible, faites en sorte que les membres du groupe vous partagent les quêtes suivantes|r
    .accept 5722 >> Acceptez la quête À la recherche de la sacoche perdue
    .accept 5723 >> Acceptez la quête Tester la force de l'ennemi
    .disablecheckbox
    .dungeon RFC
step << Undead/Skyborne
    #completewith next
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead/Skyborne
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Rendez la quête À la recherche de la sacoche perdue
    .accept 5724 >> Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead/Skyborne
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead/Skyborne
    #label TroggsShamans
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead/Skyborne
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead/Skyborne
    >>Tuez |cRXP_ENEMY_Taragaman the Hungerer|r. Dépouillez-le pour son |cRXP_LOOT_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << Undead/Skyborne
    #label BazzalanandJergosh
    >>Tuez |cRXP_ENEMY_Bazzalan|r et |cRXP_ENEMY_Jergosh l'Invocateur|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead/Skyborne
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Rendez la quête Tuer la bête
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Rendez la quête Ennemis cachés
    .accept 5729 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >> Rendez la quête Ennemis cachés
    .accept 5730 >> Acceptez la quête Ennemis cachés
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Rendez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Skyborne
    #completewith RFCTurninsTB1
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Doras
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Skyborne
    #completewith RFCTurninsTB1
    .goto 1456/1,-212.71,-1065.010,80 >> Voyagez à la Cime des Anciens
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Skyborne
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .turnin 5723 >> Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Skyborne
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Rendez la quête Rapporter la sacoche perdue
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step << Skyborne
    #completewith Conscript
    .hs >> Utilisez votre Pierre de foyer pour revenir à Orgrimmar
    .use 6948
    .zoneskip Thunder Bluff,1
    .bindlocation 1637,1
    .cooldown item,6948,>0,1
    .dungeon RFC
step << Skyborne
    #completewith Conscript
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,<0
    .dungeon RFC

    --End Undead/Skyborne RFC

step << Undead/Skyborne
    #completewith Conscript
    .subzone 362 >> Voyagez jusqu'à Tranchecolline
step << !Undead !Skyborne
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step << Rogue
    #optional << Undead
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >> Apprenez vos sorts de classe
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
	.train 8122 >>Apprenez vos sorts de classe
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >>Apprenez vos sorts de classe
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >>Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
    .xp <16,1
step
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >> Voyagez jusqu'au poste de Guet-Lointain
step
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << !Undead !Skyborne
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Rendez la quête Ak'Zeloth
    .accept 924 >>Acceptez la quête La Graine démoniaque
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << !Undead !Skyborne
    .goto 1413/1,-3694.2,259.22
    >>Ramassez la [Pierre de puissance imparfaite] près de |cRXP_FRIENDLY_Ak'Zeloth|r. Cet objet a une durée de 30 minutes, donc soyez sûr d'être rapide
    .turnin 926 >>Rendez la quête Pierre de puissance imparfaite
    .isOnQuest 924

]])
