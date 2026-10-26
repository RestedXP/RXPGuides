if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#version 11
#group RestedXP Forever Dungeonführer (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Tirisfal
#next 6-12 Tirisfal

step << !Undead
    #completewith next
    +|cRXP_WARN_Ihr habt eine Anleitung für Untote ausgewählt. Es wird empfohlen, dass ihr die gleiche Startzone wählt, in der ihr startet|r
step
    #completewith Zombies
	.destroy 6948 >> Zerstört |T134414:0|t[Ruhestein] aus eurer Tasche, da er nicht mehr benötigt wird
step
    #completewith next
    .goto 1420/0,1675.90,1645.00,8,0
    .goto 1420/0,1665.51,1645.00,8,0
    .goto 1420/0,1667.77,1679.04,10 >> Lauft aus der Gruft hinauf zu |cRXP_FRIENDLY_Mordo|r
step
    .goto 1420/0,1667.77,1679.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mordo|r
    .accept 363 >> Akzeptiert die Quest Unsanftes Erwachen
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto 1420/0,1646.08,1750.44,0 << Warrior/Warlock
    .goto 1420/0,1681.32,1719.710,40,0
    .goto 1420/0,1646.08,1750.44,40,0
    .goto 1420/0,1714.76,1760.68,40,0 << Priest/Mage
    .goto 1420/0,1718.38,1799.24,40,0 << Priest/Mage
    .goto 1420/0,1669.12,1869.73,40,0 << Priest/Mage
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Junger Aasfresser|r und |cRXP_ENEMY_Nachtsauger|r. Plündert sie, bis ihr Gegenstände im Wert von 60 Kupfer habt (einschließlich der rüstung von Euch)|r << Mage
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Junger Aasfresser|r und |cRXP_ENEMY_Nachtsauger|r. Plündert sie, bis ihr Gegenstände im Wert von 50 Kupfer habt (einschließlich der rüstung von Euch)|r << Priest
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Junger Aasfresser|r und |cRXP_ENEMY_Nachtsauger|r. Plündert sie, bis ihr Gegenstände im Wert von 10 Kupfer habt (einschließlich der rüstung von Euch)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto 1420/0,1577.39,1860.09,8 >> Geht ins Gebäude
step << Priest/Mage
    #label Vendor
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .vendor >> Verkauft Müll
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Venya|r und |cRXP_FRIENDLY_Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r << Mage
    .accept 1470 >>Akzeptiert die Quest Der zerrissene Schleier << Warlock
    .goto 1420/0,1633.42,1836.9 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >> Gebt die Quest Unsanftes Erwachen ab
    .accept 364 >> Akzeptiert die Quest Die Hirnlosen
    .target +Shadow Priest Sarvis
    .goto 1420/0,1639.75,1843.220
step << Warlock/Mage
    .goto 1420/0,1616.71,1842.92,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Akzeptiert die Quest Die Verdammten
    .goto 1420/0,1638.85,1847.74
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Isabella|r
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .target Isabella
step << Warlock
    #label Vendor
    .goto 1420/0,1641.11,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kayla|r
    .vendor >>Verkauft Müll
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillion|r
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand]
    .target Maximillion
step << !Warlock !Mage
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r
    .turnin 363 >> Gebt die Quest Unsanftes Erwachen ab
    .accept 364 >> Akzeptiert die Quest Die Hirnlosen
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Akzeptiert die Quest Die Verdammten
    .goto 1420/0,1638.85,1847.74
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archibald|r
    .vendor >> Verkauft Müll
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
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
    >>Tötet |cRXP_ENEMY_Klappernde Skelette|r. Plündert sie für |cRXP_LOOT_Schädel eines klappernden Skeletts|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Hirnloser Zombie|r und |cRXP_ENEMY_Elender Zombie|r. Plündert sie, bis ihr 25 Kupfer wert an Händler-Gegenständen (einschließlich eurer Rüstung) habt|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1633.42,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Venya|r
    .turnin 1470 >>Gebt die Quest Der zerrissene Schleier ab
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_Wirkt|r |T136218:0|t[Wichtel beschwören]
step << Priest
    #completewith next
    +|cRXP_WARN_Sammelt euren|r |T132889:0|t[Leinenstoff]|cRXP_WARN_. Damit könnt ihr später einen Zauberstab herstellen|r
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
    >>Tötet |cRXP_ENEMY_Hirnloser Zombie|r und |cRXP_ENEMY_Elender Zombie|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob +Mindless Zombie
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Hirnloser Zombie|r und |cRXP_ENEMY_Elender Zombie|r. Plündert sie, bis ihr 33 Kupfer wert an Händler-Gegenständen (einschließlich eurer Rüstung) habt|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >> Verkauft Müll
    .target Joshua Kien
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >> Verkauft Müll
    .target Joshua Kien
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r und |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, und |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, und |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, und |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 364 >> Gebt die Quest Die Hirnlosen ab
    .accept 3095 >> Akzeptiert die Quest Einfache Rolle << Warrior
    .accept 3096 >> Akzeptiert die Quest Verschlüsselte Rolle << Rogue
    .accept 3097 >> Akzeptiert die Quest Geheiligte Rolle << Priest
    .accept 3098 >> Akzeptiert die Quest Glyphen-Rolle << Mage
    .accept 3099 >> Akzeptiert die Quest Besudelte Rolle << Warlock
    .accept 98601 >>Akzeptiert die Quest Ein schwieriger Pfad << Paladin
    .accept 3901 >> Akzeptiert die Quest Klappernde Skelette
    .target +Shadow Priest Sarvis
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    .accept 376 >> Akzeptiert die Quest Die Verdammten
    .target +Novice Elreth
    .goto 1420/0,1638.85,1847.74
    .turnin 3099 >> Gebt die Quest Besudelte Rolle ab << Warlock
    .goto 1420/0,1636.59,1839.01 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >> Gebt die Quest Glyphenrolle ab << Mage
    .goto 1420/0,1635.23,1847.44 << Mage
    .target +Isabella << Mage
    .turnin 3097 >> Gebt die Quest Geheiligte Rolle ab << Priest
    .target +Dark Cleric Duesten << Priest
    .goto 1420/0,1627.55,1848.65 << Priest
step << Paladin
    .goto 1420/0,1628.400,1837.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aramis Hammerhand|r
    .turnin 98601 >>Gebt die Quest Ein schwieriger Pfad ab
    .accept 90902 >>Akzeptiert die Quest Das Licht wiederentdecken
    .target Aramis Hammerhand
    --90902 only 85xp, not worth doing
step << Paladin
    #completewith XPcheck
    >>|cRXP_WARN_Wirkt|r |T135920:0|t[Heiliges Licht] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Verletzte Todeswachen|r
    .complete 90902,1 --|5/5 Injured Deathguard healed
    .target Injured Deathguard
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Klapperndes Skelett|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
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
    >>Tötet |cRXP_ENEMY_Junger Aasfresser|r und |cRXP_ENEMY_Struppiger Aasfresser|r. Plündert sie für |cRXP_LOOT_Aasfressertatze|r
    >>Tötet |cRXP_ENEMY_Nachtsauger|r und |cRXP_ENEMY_Räudiger Nachtsauger|r. Plündert sie für |cRXP_LOOT_Nachtsaugerflügel|r
    >>|cRXP_WARN_Vermeidet wenn möglich |cRXP_ENEMY_Räudiger Nachtsauger|r, da sie viel zäher zu töten sind als |cRXP_ENEMY_Nachtsauger|r|r
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
    >>Tötet |cRXP_ENEMY_Klapperndes Skelett|r
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
    .xp 3+895 >>Farmt bis 895+/1400xp << Paladin
    .xp 3+940 >>Farmt bis 940+/1400XP << Warrior/Rogue
    .xp 3+980 >>Farmt bis 980+/1400xp << !Warrior !Rogue !Paladin
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Paladin
    .goto 1420/0,1593.500,1876.400
    >>|cRXP_WARN_Wirkt|r |T135920:0|t[Heiliges Licht] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Verletzte Todeswachen|r
    .complete 90902,1 --|5/5 Injured Deathguard healed
    .target Injured Deathguard
step << Mage/Warlock/Priest/Paladin
    .goto 1420/0,1576.04,1861.60,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r << !Paladin
    >>|cRXP_WARN_Fallt NICHT unter 1 Silber|r << Mage/Warlock/Priest
    .vendor >> Verkauft Müll
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r und |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >> Gebt die Quest Klappernde Skelette ab
    .target +Shadow Priest Sarvis
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    .turnin 376 >> Gebt die Quest Die Verdammten ab
    .accept 6395 >> Akzeptiert die Quest Marlas letzter Wunsch
    .target +Novice Elreth
    .goto 1420/0,1638.85,1847.74
step << Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archibald|r
    .vendor >> Verkauft Müll
    .target Archibald Kava
    .money >0.1
    .isOnQuest 90902
step
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aramis Hammerhand|r
    .turnin 90902 >>Gebt die Quest Das Licht wiederentdecken ab << Paladin
    .accept 91208 >>Akzeptiert die Quest Trauerbewältigung << Paladin
    .accept 91209 >>Akzeptiert die Quest Setzt Eure Ausbildung fort << Paladin
    .accept 98389 >>Akzeptiert die Quest Ein Licht in der Dunkelheit
    .target Aramis Hammerhand
step << Paladin
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aramis Hammerhand|r
    .train 20271 >>Erlernt |T135959:0|t[Richturteil]
    .train 19740 >>Erlernt |T135906:0|t[Segen der Macht]
    .target Aramis Hammerhand
    .money <0.02
step << Paladin
    #optional
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aramis Hammerhand|r
    .train 20271 >>Erlernt |T135959:0|t[Richturteil]
    .target Aramis Hammerhand
    .money <0.01
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Trainiere deine Klassenfähigkeiten
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .train 2052 >> Erlernt |T135929:0|t[Geringes Heilen] (Rang 2)
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    #optional
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillion|r
    .train 172 >> Erlernt |T136118:0|t[Verderbnis]
    .target Maximillion
step << Mage
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Isabella|r
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Isabella
step
    .goto 1420/0,1616.71,1842.92,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todeswache Saltain|r und |cRXP_FRIENDLY_Exekutor Arren|r
    .accept 3902 >> Akzeptiert die Quest Beutesuche in Deathknell
    .goto 1420/0,1604.96,1860.70
    .target +Deathguard Saltain
    .accept 380 >> Akzeptiert die Quest Nachtweber
    .goto 1420/0,1580.56,1848.95
    .target +Executor Arren
step << Rogue/Warrior/Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archibald|r
    .vendor >> Verkauft Müll
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Gebt die Quest Einfache Rolle ab
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #optional
    #label Training2
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Gebt die Quest Einfache Rolle ab
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #optional
    #label Training2
    .goto 1420/0,1563.38,1859.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Gebt die Quest Verschlüsselte Rolle ab
    .target David Trias
step << Rogue/Warrior/Paladin
    .goto 1420/0,1577.100,1854.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Walter Mason|r oben
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    .collect 2901,1,792,1 --Mining Pick (1)
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
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
    >>Öffnet die |cRXP_PICK_Ausrüstungskästen|r auf dem Boden. Sammelt sie für die |cRXP_LOOT_Aufgestöberte Waren|r
    .complete 3902,1 --Collect Scavenged Goods (x6)
step << Paladin
    .goto 1420/0,1782.400,1914.700
    >>Sprecht mit den |cRXP_FRIENDLY_Verängstigter Paladin|r, tötet sie, wenn sie feindselig wird
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
    >>Tötet |cRXP_ENEMY_Junger Nachtweber|r
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
    >>Tötet die |cRXP_ENEMY_Junger Nachtweber|r in der Nähe des Höhleneingangs
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto 1420/0,1822.31,2048.07,15,0
    .goto 1420/0,1844.45,2042.050,30 >>Geht in die Höhle
step
    #completewith next
    >>Greift den |cRXP_ENEMY_Eingesponnener Verlassener|r an
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
    >>Tötet die |cRXP_ENEMY_Nachtweber|r in der Höhle
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    .goto 1420/0,1921.500,2046.500
    >>Greift den |cRXP_ENEMY_Eingesponnener Verlassener|r an
    .complete 98389,1 --|6/6 Webbed Forsaken freed
    .mob Webbed Forsaken
step
    #softcore
    #completewith Scavenging
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Wirkt|r |T136218:0|t[Wichtel beschwören]
step << skip
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto 1420/0,1628.91,1882.99,30 >>|cRXP_WARN_Führt einen Logout-Skip in der Höhle durch, indem ihr auf einen Shredder, einen Brunnen oder die in der Wand steckende Holzplanke springt, dann meldet euch ab und wieder an|r
    >>|cRXP_WARN_Oder lauft zurück nach Todesend|r
step
    #label Scavenging
    .goto 1420/0,1604.96,1860.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >> Gebt die Quest Beutesuche in Deathknell ab
    .target Deathguard Saltain
step
    #label NightWebH
    .goto 1420/0,1580.56,1848.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arren|r
    .turnin 380 >> Gebt die Quest Nachtweber ab
    .accept 381 >> Akzeptiert die Quest Der Scharlachrote Kreuzzug
    .target Executor Arren
step
    .goto 1420/0,1628.400,1837.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aramis Hammerhand|r
    .turnin 91208 >>Gebt die Quest Trauerbewältigung ab << Paladin
    .turnin 98389 >>Gebt die Quest Ein Licht in der Dunkelheit ab
    .target Aramis Hammerhand
step << Rogue/Warrior/Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archibald|r
    .vendor >> Verkauft Müll
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >> Verkauft Müll
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
    >>Tötet |cRXP_ENEMY_Scharlachroter Initiand|r und |cRXP_ENEMY_Scharlachroter Konvertit|r. Plündert sie für |cRXP_LOOT_Scharlachrote Armbinde|r
    >>|cRXP_WARN_Tötet |cRXP_ENEMY_Meven Korgal|r noch nicht|r
    >>|cRXP_WARN_Versucht, die |cRXP_ENEMY_Scharlachroter Initiand|r zu vermeiden, wenn ihr könnt, da sie|r |T135843:0|t[Frostrüstung] |cRXP_WARN_(verlangsamt von Euch die Angriffsgeschwindigkeit)|r haben << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto 1420/0,1375.40,1979.69
    >>Tötet |cRXP_ENEMY_Samuel|r. Plündert ihn für |cRXP_LOOT_Samuels sterbliche Überreste|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step
    .goto 1420/0,1624.84,1876.96
	>>Klickt |cRXP_PICK_Marlas Grab|r auf dem Boden
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_Wirkt|r |T136218:0|t[Wichtel beschwören]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elreth|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elreth|r und |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 6395 >> Gebt die Quest Marlas letzter Wunsch ab
    .target +Novice Elreth
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1638.85,1847.74
    .accept 5651 >> Akzeptiert die Quest Der Dunkelheit geneigt << Priest
    .target +Dark Cleric Duesten << Priest
    .goto 1420/0,1627.55,1848.65 << Priest
step
    #sticky
    #label ScarletC
    .goto 1420/0,1580.56,1848.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arren|r
    .turnin 381 >> Gebt die Quest Der Scharlachrote Kreuzzug ab
    .accept 382 >> Akzeptiert die Quest Der Rote Bote
    .target Executor Arren
step
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archibald|r
    .vendor >> Verkauft Müll
    .target Archibald Kava
step
    #requires ScarletC
    .goto 1420/0,1383.99,1764.30
    >>Tötet |cRXP_ENEMY_Meven|r. Plündert ihn für |cRXP_LOOT_Dokumente des Scharlachroten Kreuzzugs|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto 1420/0,1580.56,1848.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arren|r
    .turnin 382 >> Gebt die Quest Der Rote Bote ab
    .accept 383 >> Akzeptiert die Quest Entscheidende Informationen
    .accept 96656 >> Akzeptiert die Quest Der Abenteurer
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
    .xp 5+1940 >>Farmt bis 1940+/2800xp << !Paladin
    .xp 5+1850 >>Farmt bis 1850+/2800xp << Paladin
step
    .goto 1420/0,1305.36,2127.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calvin|r
    .accept 8 >> Akzeptiert die Quest Ein Schurkenhandel
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 6-12 Tirisfal
#displayname 6-13 Tirisfal << Paladin
#version 11
#group RestedXP Forever Dungeonführer (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Silberwald; 12-17 das Brachland

step
    .goto 1420/0,1184.71,2205.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Akzeptiert die Quest Felder des Kummers
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gordo|r
    >>|cRXP_WARN_Er ist eine Abscheulichkeit, welches die Straße nach Brill patrouilliert.|r
    .accept 5481 >>Akzeptiert die Quest Gordos Aufgabe
    .unitscan Gordo
step << Priest
    .goto 1420/0,656.92,2164.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bowen|r
    .train 3908 >> Erlernt |T136249:0|t[Schneiderei].Behaltet euren |T132889:0|t[Leinenstoff].Dies wird es euch ermöglichen, später einen Zauberstab Herzustellen
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >> Sterbt und respawnt am |cRXP_FRIENDLY_Geistheiler|r oder lauft nach Brill
    .target Geistheiler
step
    .goto 1420/0,391.400,2289.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todeswache Bartholomew|r
    >>|cRXP_WARN_Er könnte rund um den Friedhof patrouillieren|r
    .accept 86784 >>Akzeptiert die Quest Stöcke und Knochen
    .target Deathguard Bartholomew
step
    #completewith next
    >>Plündert |cRXP_PICK_Trockener Ast|r auf dem Boden unter Bäumen in der Nähe von Brill
    .complete 86784,1 --|6/6 Dry Branch
step
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .accept 404 >>Akzeptiert die Quest Eine eitrige Aufgabe
    .target Deathguard Dillinger
step
    #loop
    .goto 1420/0,603.600,2268.300,40,0
    .goto 1420/0,539.700,2220.400,40,0
    .goto 1420/0,305.600,2180.100,40,0
    .goto 1420/0,375.600,2246.400,40,0
    .goto 1420/0,442.800,2259.400,40,0
    >>Plündert |cRXP_PICK_Trockener Ast|r auf dem Boden unter Bäumen in der Nähe von Brill
    .complete 86784,1 --|6/6 Dry Branch
step
    .goto 1420/0,445.500,2165.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eleanor Shackleton|r
    .turnin 86784 >>Gebt die Quest Stöcke und Knochen ab
    .turnin 96656 >>Gebt die Quest Die Abenteurerin ab
    .accept 96607 >>Akzeptiert die Quest Die große weite Welt
    .target Eleanor Shackleton
step
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Tippt am Lagerfeuer /sitzen und wartet eine Minute, bis ihr den Buff "Camp Belohnungen" bekommt|r
    .complete 96607,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sitzen
    .timer 59, RP
    .complete 96607,2 --|Gain the Boosted Rest buff
step
    .goto 1420/0,445.400,2166.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eleanor Shackleton|r
    .turnin 96607 >>Gebt die Quest Die große weite Welt
    .target Eleanor Shackleton
    .accept 96658 >>Akzeptiert die QuestGrundlagen des Zeltens: Kochkunst
    --.accept 97959 >>Accept Camping 101: Mining
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Akzeptiert die Quest Eine neue Seuche
    .target Apothecary Johaan
    .xp <6,1
step
    .goto 1420/0,296.600,2278.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Exekutor Zygand|r
    .turnin 383 >>Gebt die Quest Entscheidende Informationen ab
    .accept 427 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .accept 99141 >>Akzeptiert die Quest Geduld
    .accept 99134 >>Akzeptiert die Quest Disziplin
    .target Executor Zygand
step
    #completewith Claws
    .use 286176 >>|cRXP_WARN_Benutzt|r |T133490:0|t[Motivator des Exekutors] |cRXP_WARN_gegen jeden |cRXP_FRIENDLY_Todeswache|r in und um Brill|r
    .complete 99134,1 --|5/5 Deathguards motivated
    --too many .mobs, will cause clutter
step << Rogue
    .goto 1420/0,270.12,2253.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mrs. Winters|r|cRXP_BUY_. Kauft|r |T135421:0|t[Beschwerte Wurfaxt] |cRXP_BUY_von ihr|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
    .money <0.07
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (3s 81c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft ein|r |T135641:0|t[Stilett] |cRXP_BUY_von ihm|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Legt die|r |T135421:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie genug für ein |T135321:0|t[Gladius] (5s 10c) wert ist. Kommt später zurück, wenn ihr noch nicht genug Geld habt.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft ein|r |T135321:0|t[Gladius] |cRXP_BUY_von ihm|r
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Claws
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shari Stilwell|r
    .complete 91209,1 --|1/1 Report to Shari Stilwell in Brill
    .turnin 91209 >>Gebt die Quest Setzt Eure Ausbildung fort ab
    .target Shari Stilwell
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shari Stilwell|r
    .train 679 >>Erlernt |T626003:0|t[Heiliger Stoß]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkaufttrash. Verkauft eure Waffe, wenn es euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (6s 66c) gibt. Ihr kommt später zurück, wenn ihr noch nicht genug habt.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihm|r
    .collect 2493,1,404,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith Claws
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    .turnin 8 >>Gebt die Quest Ein Schurkenhandel ab
    .home >> Setzt euren Ruhestein in Brill
    .target Innkeeper Renee
    .bindlocation 2119
step
    #optional
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    .turnin 8 >>Gebt die Quest Ein Schurkenhandel ab
    .target Innkeeper Renee
    .isOnQuest 8
step
    .goto 1420/0,243.200,2288.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William|r
    .train 2550 >>Erlerne Kochkunst
    .turnin 96658 >>Gebt die Quest Grundlagen des Zeltens: Kochkunst ab
    .target William Pickman
    .money <0.001
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_ist im zweiten Stock des Gasthauses|r
    .accept 375 >>Akzeptiert die Quest Die Kälte des Todes
    .target Gretchen Dedmar
    .xp <7,1
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
    .turnin 5651 >> Gebt die Quest Der Dunkelheit geneigt ab
    .accept 5650 >> Akzeptiert die Quest Gewänder der Dunkelheit
	.train 591 >>Erlernt |T135924:0|t[Heilige Pein]
    .train 17 >>Erlernt |T135940:0|t[Machtwort: Schild]
    .train 2052 >>Erlernt |T135929:0|t[Geringes Heilen] (Rang 2)
    .target Dark Cleric Beryl
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r auf der zweiten Etage
    .train 143 >> Erlernt |T135812:0|t[Feuerball]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .target Cain Firesong
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r auf der zweiten Etage
    .train 1757 >> Erlernt |T136189:0|t[Finsterer Stoß]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto 1420/0,251.59,2252.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gina Lang|r auf der zweiten Etage
    >>|cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Blutpakts] |cRXP_BUY_von ihr|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Verkauft Müll
    .target Gina Lang
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .train 1454 >> Erlernt |T136126:0|t[Aderlass]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .target Rupert Boch
step << Priest/Warlock
    .goto 1420/0,242.55,2284.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vance|r
    .train 7411 >> Erlernt |T136244:0|t[Verzauberkunst]
    >>|cRXP_WARN_Dies zusammen mit|r |T136249:0|t[Schneiderei] |cRXP_WARN_wird es euch ermöglichen, später einen Stab zu erstellen|r
    .target Vance Undergloom
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    .vendor >>|cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihr, wie ihr könnt|r << Mage/Priest/Paladin
    .vendor >>|cRXP_BUY_Kauft so viel|r |T134532:0|t[Rot-speckled Mushrooms] |cRXP_BUY_von ihr, wie ihr könnt|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T134532:0|t[Rot-speckled Mushrooms] |cRXP_BUY_von ihr, wie ihr könnt|r << Warlock
    .money <0.0125
    .target Innkeeper Renee
step
    .goto 1420/0,84.900,2023.500
    >>Sprecht mit |cRXP_FRIENDLY_Todeswache Kristof|r
    >>|cRXP_WARN_Wählt „Ich benötige einen Bericht für Executor Zygand aus|r
    .complete 99141,2 --|1/1 Kristof's Report
    .skipgossipid 142730
    .target Deathguard Kristof
step
    .goto 1420/0,77.200,2026.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shelene Rhobart|r
    .accept 97558 >>Akzeptiert die Quest Hides for the Forsaken
    .target Shelene Rhobart
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Akzeptiert die Quest Eine neue Seuche
    .target Apothecary Johaan
step << Priest
    .goto 1420/0,359.14,2436.99
    >>Wirkt |T135929:0|t[Geringes Heilen] und |T135987:0|t[Machtwort: Seelenstärke] auf |cRXP_FRIENDLY_Todeswache Kel|r
    >>|cRXP_WARN_Ihr benötigt Geringes Heilen Rang 2 für diese Quest|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Gordo2
    >>Sammelt das |cRXP_PICK_Düsterkraut|r vom Boden
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith Pumkpins
    >>Tötet |cRXP_ENEMY_Schattenhunde|r. Plündert sie für |cRXP_LOOT_Blut|r und |cRXP_LOOT_Bälge|r
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
    >>Tötet |cRXP_ENEMY_Faulender Toter|r und |cRXP_ENEMY_Verheerter Kadaver|r. Plündert sie für |cRXP_LOOT_Eitrige Klaue|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gordo|r
    >>|cRXP_WARN_Er ist eine Abscheulichkeit, welches die Straße nach Brill patrouilliert.|r
    >>|cRXP_WARN_Wählt „Ich benötige einen Bericht für Executor Zygand aus|r
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
    >>Beendet das Sammeln von |cRXP_PICK_Düsterkraut|r vom Boden
    .complete 5481,1 --Gloom Weed (3)
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_Sammelt 3 Stapel|r |T132889:0|t[Leinenstoff]|cRXP_WARN_. Dies wird benutzt, um einen|r |T135139:0|t[Geringer Magiezauberstab] |cRXP_WARN_später herzustellen|r
    >>|cRXP_WARN_Falls ihr das nicht tun möchtet oder lieber später vom Auktionshaus kaufen möchtet, überspringt diesen Schritt|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_Sammelt 3 Stapel|r |T132889:0|t[Leinenstoff]|cRXP_WARN_. Dies wird benutzt, um einen|r |T135139:0|t[Geringer Magiezauberstab] |cRXP_WARN_später herzustellen|r
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
    >>Sammelt die |cRXP_LOOT_Kürbisse|r im Feld
    .complete 365,1 --Tirisfal Pumpkin (10)
step
    #completewith Tescort
    >>Tötet |cRXP_ENEMY_Scharlachroter Krieger|r.
    >>|cRXP_WARN_Seid vorsichtig, da sie 8 Sek. lang eine um 50% erhöhte Parierchance nach ihrer Abwehrhaltungsanimation haben|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    .goto 1420/0,1587.700,2439.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bareth Dawnstone|r oben auf dem Turm
    >>|cRXP_WARN_Dies startet eine Begleitquest|r
    >>|cRXP_WARN_Seid vorsichtig! Oben auf dem Turm könnt ihr leicht 3 |cRXP_ENEMY_Scharlachroter Krieger|r gleichzeitig pullen|r
    .accept 99144,1 >>Akzeptiert die Quest Auf der Suche nach Sicherheit
    .target Bareth Dawnstone
step
    #label Tescort
    .goto 1420/0,1268.000,2368.200
    >>Eskortiert |cRXP_FRIENDLY_Bareth Dämmerstein|r aus Sollidens Bauernhof
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
    >>Tötet |cRXP_ENEMY_Scharlachroter Krieger|r.
    >>|cRXP_WARN_Seid vorsichtig, da sie 8 Sek. lang eine um 50% erhöhte Parierchance nach ihrer Abwehrhaltungsanimation haben|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    #loop
    .goto 1420/0,1238.600,2424.900,0
    .goto 1420/0,1238.600,2424.900,60,0
    .goto 1420/0,1204.800,2543.000,60,0
    .goto 1420/0,1122.600,2396.800 ,60,0
    >>Tötet |cRXP_ENEMY_Schattenhunde|r. Plündert sie für |cRXP_LOOT_Blut|r und |cRXP_LOOT_Bälge|r
    .complete 367,1 --Darkhound Blood (5)
    .complete 97558,2 --|6/6 Darkhound Hide
    .mob Decrepit Darkhound
step
    #hardcore
    #completewith BrillTurnin1
    .hs >> Benutzt euren Ruhestein nach Brill
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >> Reist zurück nach Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #softcore
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_Er patrouilliert um den Friedhof herum|r
    .turnin 5481 >>Gebt die Quest Gordos Aufgabe ab
    .accept 5482 >>Akzeptiert die Quest Verdammniskraut
    .target Junior Apothecary Holland
step
    #optional
    #completewith MetaBook
    .use 286176 >>|cRXP_WARN_Benutzt|r |T133490:0|t[Motivator des Exekutors] |cRXP_WARN_gegen jeden |cRXP_FRIENDLY_Todeswache|r in und um Brill|r
    .complete 99134,1 --|5/5 Deathguards motivated
step
    .goto 1420/0,403.300,2287.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todeswache Dillinger|r
    >>|cRXP_WARN_Wählt „Ich benötige einen Bericht für Executor Zygand aus|r
    .turnin 404 >>Gebt die Quest Eine eitrige Aufgabe ab
    .accept 426 >>Akzeptiert die Quest Die überrannte Mühle
    .complete 99141,1 --|1/1 Dillinger's Report
    .target Deathguard Dillinger
    .skipgossipid 142723
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Gebt die Quest Eine neue Seuche ab
    .turnin 365 >>Gebt die Quest Felder des Kummers ab
    .accept 368 >>Akzeptiert die Quest Eine neue Seuche
    .accept 407 >>Akzeptiert die Quest Felder des Kummers
    .target +Apothecary Johaan
step
    .goto 1420/0,347.600,2265.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carolai Anise|r
    .accept 95314 >>Akzeptiert die Quest Ein Elixier so grün wie das Schattental
    .target Carolai Anise
    .xp <7,1
step << Mage
    #label MetaBook
    >>Sammelt das |cRXP_PICK_Buch|r im Regal
    .collect 208185,1 --The Apothecary's Metaphysical Primer (x1
step
    #optional
    #loop
    .goto 1420/0,290.400,2272.900,30,0
    .goto 1420/0,257.200,2239.500,30,0
    .goto 1420/0,313.400,2259.400,30,0
    .use 286176 >>|cRXP_WARN_Benutzt|r |T133490:0|t[Motivator des Exekutors] |cRXP_WARN_gegen jeden |cRXP_FRIENDLY_Todeswache|r in und um Brill|r
    .complete 99134,1 --|5/5 Deathguards motivated
step
    #label BrillTurnin1
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .turnin 427 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .accept 370 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .turnin 99141 >>Gebt die Quest Geduld ab
    .turnin 99134 >>Gebt die Quest Disziplin ab
    .target Executor Zygand
step
    #completewith Doomweed
    #optional
    .destroy 286176 >>|cRXP_WARN_Zerstört den|r |T133490:0|t[Motivator des Exekutors] |cRXP_WARN_da es nicht mehr für irgendetwas benötigt wird|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Gesucht Poster|r und |cRXP_FRIENDLY_Sevren|r im Gebäude
    .accept 374 >>Akzeptiert die Quest Beweise des Ablebens
    .target +Deathguard Burgess
    .goto 1420/0,280.06,2270.70
    .accept 398 >>Akzeptiert die Quest GESUCHT: Madenauge
    .goto 1420/0,288.64,2285.46
    .accept 358 >>Akzeptiert die Quest Grabräuber
    .target +Magistrate Sevren
    .goto 1420/0,265.15,2305.94
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shari Stilwell|r
    .turnin 99144 >>Gebt die Quest Auf der Suche nach Sicherheit ab
    .train 853 >>Trainiere deine Klassenfähigkeiten
    .target Shari Stilwell
    .xp <8,1
step
    #optional << Paladin
    .goto 1420/0,311.900,2250.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shari Stilwell|r
    .turnin 99144 >>Gebt die Quest Auf der Suche nach Sicherheit ab
    .target Shari Stilwell
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
    .turnin 5650 >>Gebt die Quest Gewänder der Dunkelheit ab
    .train 591 >>Erlernt |T135924:0|t[Heilige Pein]
    .train 17 >>Erlernt |T135940:0|t[Machtwort: Schild]
    .target Dark Cleric Beryl
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_ist im zweiten Stock des Gasthauses|r
    .accept 375 >>Akzeptiert die Quest Die Kälte des Todes
    .target Gretchen Dedmar
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
	.train 139 >> Trainiere deine Klassenfähigkeiten
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r auf der zweiten Etage
    .train 205 >> Trainiere deine Klassenfähigkeiten
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r auf der zweiten Etage
    .train 6760 >> Trainiere deine Klassenfähigkeiten
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Trainiere deine Klassenfähigkeiten
    .target Rupert Boch
    .xp <8,1
step << Mage/Priest/Warlock
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    .vendor >>|cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihr, wie ihr könnt|r << Mage/Priest
    .vendor >>|cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T134532:0|t[Rot-speckled Mushrooms] |cRXP_BUY_von ihr, wie ihr könnt|r << Warlock
    .money <0.0125
    .target Innkeeper Renee
step
    .goto 1420/0,243.200,2288.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William|r
    .train 2550 >>Erlerne Kochkunst
    .turnin 96658 >>Gebt die Quest Grundlagen des Zeltens: Kochkunst ab
    .target William Pickman
step << Rogue/Warrior
    .goto 1420/0,240.29,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Versucht sie während der Zeit zu machen, in denen ihr auf Dinge wartet, wie Zeppeline.|r
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .target Nurse Neela
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (3s 81c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft ein|r |T135641:0|t[Stilett] |cRXP_BUY_von ihm|r
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie genug für ein |T135321:0|t[Gladius] (5s 10c) wert ist. Kommt später zurück, wenn ihr noch nicht genug Geld habt.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft ein|r |T135321:0|t[Gladius] |cRXP_BUY_von ihm|r
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shari Stilwell|r
    .train 679 >>Erlernt |T626003:0|t[Heiliger Stoß]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn es euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (6s 66c) gibt. Ihr kommt später zurück, wenn ihr noch nicht genug habt.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihm|r
    .collect 2493,1,367,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith Doomweed
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    .goto 1420/0,270.12,2253.23--c:Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mrs. Winters|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_bei|r |cRXP_FRIENDLY_ihr|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_Er patrouilliert um den Friedhof herum|r
    .turnin 5481 >>Gebt die Quest Gordos Aufgabe ab
    .accept 5482 >>Akzeptiert die Quest Verdammniskraut
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
    >>Tötet |cRXP_ENEMY_Nachtsauger|r. Plündert sie für |cRXP_LOOT_Pelze|r und |cRXP_LOOT_Nachtsaugerflügelmembran|r
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
    .xp 7+3260 >> Farmt bis 3260+/4500
--XX 700 (375)+540 (367)
step << Rogue/Warrior
    #optional
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Kauft einen|r |T132891:0|t[Grober Faden] |cRXP_BUY_von ihr|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step << Rogue/Warrior
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Gebt die Quest Die Kälte des Todes ab
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r auf der zweiten Etage
    .train 6760 >> Trainiere deine Klassenfähigkeiten
    .target Marion Call
    .xp <8,1
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (3s 81c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft ein|r |T135641:0|t[Stilett] |cRXP_BUY_von ihm|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie genug für ein |T135321:0|t[Gladius] (5s 10c) wert ist. Kommt später zurück, wenn ihr noch nicht genug Geld habt.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft ein|r |T135321:0|t[Gladius] |cRXP_BUY_von ihm|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #completewith next
    >>Plündert das |cRXP_PICK_Verdammniskraut|r vom Boden
    >>|cRXP_WARN_Sie befinden sich in der Nähe von Bäumen im Gnoll-Gebiet|r
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
    >>Tötet |cRXP_ENEMY_Grabräuber der Moderfelle|r. Plündert sie für |cRXP_LOOT_Einbalsamierungssekret|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Bastarde der Moderfelle|r. Plündert sie für |cRXP_LOOT_Einbalsamierungssekret|r
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
    >>Plündert das |cRXP_PICK_Verdammniskraut|r vom Boden
    >>|cRXP_WARN_Sie befinden sich in der Nähe von Bäumen im Gnoll-Gebiet|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #completewith MaggotEye
    >>Tötet |cRXP_ENEMY_Bastarde der Moderfelle|r. Plündert sie für |cRXP_LOOT_Einbalsamierungssekret|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto 1420/0,382.63,2910.55
    >>Tötet |cRXP_ENEMY_Madenauge|r. Plündert ihn für seine |cRXP_LOOT_Tatze|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto 1420/0,332.48,2862.35,0
    .goto 1420/0,380.38,2768.97,50,0
    .goto 1420/0,332.48,2862.35,50,0
    .goto 1420/0,401.16,2895.19,50,0
    .goto 1420/0,318.47,2696.36,50,0
    >>Tötet |cRXP_ENEMY_Bastarde der Moderfelle|r. Plündert sie für |cRXP_LOOT_Einbalsamierungssekret|r
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
    >>Tötet |cRXP_ENEMY_Bastarde der Moderfelle|r. Plündert sie für |cRXP_LOOT_Einbalsamierungssekret|r
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
    >>Tötet |cRXP_ENEMY_Murloc der Finsterflossen|r. Plündert sie für |cRXP_LOOT_Schuppen|r und |cRXP_LOOT_Murlochaut|r
    >>|cRXP_ENEMY_Pfützenspringer der Finsterflossen|r |cRXP_WARN_droppen nicht|r |cRXP_LOOT_Haut eines Murlocs der Finsterflossen|r fallen
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
    >>Tötet |cRXP_ENEMY_Nachtsauger|r. Plündert sie für |cRXP_LOOT_Pelze|r und |cRXP_LOOT_Nachtsaugerflügelmembran|r
    .complete 375,1 --Duskbat Pelt (5)
    .complete 97558,1 --|8/8 Duskbat Wing Membrane
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #completewith Brill3
    .hs >> Benutzt euren Ruhestein nach Brill
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #completewith Brill3
    .subzone 159 >> Reist zurück nach Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step << skip
    #softcore
    #completewith Brill3
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r
    .accept 354 >>Akzeptiert die Quest Todesfälle in der Familie
    .accept 362 >>Akzeptiert die Quest Die Spuk-Mühle
    .target Coleman Farthing
step
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Kauft einen|r |T132891:0|t[Grober Faden] |cRXP_BUY_von ihr|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .isQuestAvailable 375
step
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Gebt die Quest GESUCHT: Madenauge ab
    .target Executor Zygand
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sevren|r
    .turnin 358 >>Gebt die Quest Grabräuber ab
    .accept 405 >>Akzeptiert die Quest Der abtrünnige Lich << Mage/Warlock
    .accept 359 >>Akzeptiert die Quest Verlassenen-Pflichten
    .target Magistrate Sevren
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Gebt die Quest Die Kälte des Todes ab
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
	.train 139 >> Trainiere deine Klassenfähigkeiten
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r auf der zweiten Etage
    .train 205 >> Trainiere deine Klassenfähigkeiten
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r auf der zweiten Etage
    .train 6760 >> Trainiere deine Klassenfähigkeiten
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Trainiere deine Klassenfähigkeiten
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto 1420/0,240.29,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Versucht sie während der Zeit zu machen, in denen ihr auf Dinge wartet, wie Zeppeline.|r
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .target Nurse Neela
step
    #label Brill3
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Mage/Priest/Paladin
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warrior/Rogue
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warlock
    .collect 1179,20,426,1 << Mage/Priest/Paladin --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock/Paladin
    .target Innkeeper Renee
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shari Stilwell|r
    .train 853 >>Trainiere deine Klassenfähigkeiten
    .target Shari Stilwell
    .xp <8,1
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (3s 81c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft ein|r |T135641:0|t[Stilett] |cRXP_BUY_von ihm|r
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie genug für ein |T135321:0|t[Gladius] (5s 10c) wert ist. Kommt später zurück, wenn ihr noch nicht genug Geld habt.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft ein|r |T135321:0|t[Gladius] |cRXP_BUY_von ihm|r
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shari Stilwell|r
    .train 679 >>Erlernt |T626003:0|t[Heiliger Stoß]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkaufttrash. Verkauft eure Waffe, wenn es euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (6s 66c) gibt. Ihr kommt später zurück, wenn ihr noch nicht genug habt.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihm|r
    .collect 2493,1,354,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith MillsOverun
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << skip --Rogue/Warrior
    #softcore
    .goto 1420/0,308.08,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eliza Callen|r
    .vendor >>Repariert eure Waffe
    .target Eliza Callen
step
    .goto 1420/0,76.000,2026.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shelene Rhobart|r
    .turnin 97558 >>Gebt die Quest Häute für die Forsaken ab
    .target Shelene Rhobart
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Linnea|r
    .turnin 359 >>Gebt die Quest Verlassenen-Pflichten ab
    .accept 360 >>Akzeptiert die Quest Rückkehr zum Magistrat
    .accept 356 >>Akzeptiert die Quest Patrouille zur Rückendeckung
    .target Deathguard Linnea
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .turnin 368 >>Gebt die Quest Eine neue Seuche ab
    .accept 369 >>Akzeptiert die Quest Eine neue Seuche
    .target Apothecary Johaan
step
    #label DoomedWeed
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_Er patrouilliert um den Friedhof herum|r
    .turnin 5482 >>Gebt die Quest Verdammniskraut ab
    .accept 99142 >>Akzeptiert die Quest Grabkraut
    .target Junior Apothecary Holland
step
    #label AgamandStart
    .goto 1420/0,882.41,2511.1,100,0
    .goto 1420/0,892.80,2520.74
    .subzone 157 >> Reist Nord-West zu Agamands Mühlen
    .isOnQuest 362
step
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Thurman's Brief|r] |cRXP_WARN_kann von diesen Mobs fallen. Akzeptiert die Quest, wenn ihr sie plündert.|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Akzeptiert die Quest Ein nie zugestellter Brief
    .use 2839
step
    #completewith ThurmanGregor
    >>Tötet |cRXP_ENEMY_Soldaten|r und |cRXP_ENEMY_Skelettmagier|r. Plündert sie für |cRXP_LOOT_Schartige Rippe|r und |cRXP_LOOT_Geschwärzter Schädel|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #label KillDevlin
    .goto 1420/0,894.16,2609.00
    >>Tötet |cRXP_ENEMY_Devlin|r. Plündert ihn für |cRXP_LOOT_Devlins sterbliche Überreste|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto 1420/0,803.78,2752.40
    >>Tötet |cRXP_ENEMY_Nissa|r. Plündert sie für |cRXP_LOOT_Nissas sterbliche Überreste|r. Sie kann sich im Gebäude befinden
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
    >>Tötet |cRXP_ENEMY_Thurman|r und |cRXP_ENEMY_Gregor|r. Plündert sie für ihre |cRXP_LOOT_Überreste|r
    >>|cRXP_WARN_Sie können in der Gegend herumpatrouillieren|r
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
    >>Tötet |cRXP_ENEMY_Soldaten|r und |cRXP_ENEMY_Skelettmagier|r. Plündert sie für |cRXP_LOOT_Schartige Rippe|r und |cRXP_LOOT_Geschwärzter Schädel|r
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
    .xp 9+3840 >> Farmt bis 4320+/6500 XP
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
    .xp 9+3360 >> Farmt bis 3360+/6500 XP
    .itemcount 2839,1 --A Letter to Yvette (1)
step
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >> Reist zurück nach Brill
step
    #softcore
    #completewith FoodandWater2
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .xp <10,1
step
    #softcore
    #completewith FoodandWater2
    .subzone 159 >> Reist zurück nach Brill
    .xp >10,1
step
    .goto 1420/0,403.42,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Gebt die Quest Überrannte Mühle ab
    .target Deathguard Dillinger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yvette|r und |cRXP_FRIENDLY_Coleman|r
    .turnin 361 >>Gebt die Quest Ein nie zugestellter Brief ab
    .target +Yvette Farthing
    .goto 1420/0,250.69,2252.920
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target +Coleman Farthing
    .goto 1420/0,244.36,2262.26
    .isOnQuest 361
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target Coleman Farthing
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sevren|r
    .turnin 360 >>Gebt die Quest Rückkehr zum Magistrat ab
    .turnin 355 >>Gebt die Quest Sprecht mit Sevren ab
    .target Magistrate Sevren
    .xp >10,1 --turnin later if lvl 10 already
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Dark Cleric Beryl
step << Warrior
    #optional
    .abandon 1505 >>Brecht die Quest Veteran Uzzek ab
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Brecht die Quest Weg der Verteidigung ab
    .isOnQuest 1498
step << Warrior
    .goto 1420/0,238.49,2254.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1818 >> Akzeptiert die Quest Gespräch mit Dillinger
    .target Austil de Mon << Warrior
    .isQuestAvailable 1498
step << Warlock
    .goto 1420/0,248.88,2251.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ageron|r im Gasthaus
    .accept 1478 >> Akzeptiert die Quest Halgars Beschwörung
    .target Ageron Kargal
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 707 >> Trainiere deine Klassenfähigkeiten
    .target Rupert Boch
step << Rogue
    .goto 1420/0,243.01,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r im Gasthaus
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1885 >>Akzeptiert die Quest Mennet Carkad
    .target Marion Call
step << Mage
    .goto 1420/0,233.52,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r im Gasthaus
    .accept 1881 >> Akzeptiert die Quest Gespräch mit Anastasia
    .target Cain Firesong
step
    #label FoodandWater2
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r <<Warrior/Rogue
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warlock
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Gebt die Quest Gespräch mit Dillinger ab
    .accept 1819 >> Akzeptiert die Quest Ulag der Spalter
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,360.04,2376.14
    >>|cRXP_WARN_Klickt auf den Schädel auf dem Boden. Dies wird|r |cRXP_ENEMY_Ulag.|r beschwören |cRXP_WARN_Tötet ihn|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Gebt die Quest Ulag der Spalter ab
    .accept 1820 >> Akzeptiert die Quest Gespräch mit Coleman
    .target Deathguard Dillinger
step
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todeswache Terrence|r
    .accept 96895 >>Akzeptiert die Quest Der Argentumabgesandte
    .target Deathguard Terrence
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shari Stilwell|r
    .accept 91282 >>Akzeptiert die Quest Ein zweites Zuhause
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Shari Stilwell
step << Warlock
    #completewith next
    .goto 1420/0,240.75,1877.57,20 >> Betrete Unterstadt
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Nehmt den Aufzug hinab nach Unterstadt
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carendin|r im Magierviertel
    .turnin 1478 >> Gebt die Quest Halgars Beschwörung ab
    .accept 1473 >> Akzeptiert die Quest Kreatur der Leere
step << Warlock
    .goto 1458/0,66.74,1766.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bethor|r im Magierviertel
    .turnin 405 >>Gebt die Quest Der abtrünnige Lich ab
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
    .zone Tirisfal Glades >> Verlasst die Unterstadt durch die Kanalisation
    .zoneskip Tirisfal Glades
step << Warlock
    #completewith next
    .goto 1420/0,726.06,1801.95
    >>Beute |cRXP_PICK_Perrines Truhe|r für |T133733:0|t[Egalins Zauberfoliant]
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
    >>Tötet |cRXP_ENEMY_Captain Perrine|r, |cRXP_ENEMY_Scharlachroter Zelot|r und |cRXP_ENEMY_Scharlachroter Missionar|r. Plündert sie für ihre |cRXP_LOOT_Scharlachroter Insignienring|r
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
    >>Beute |cRXP_PICK_Perrine's Truhe|r auf dem Boden für |T133733:0|t[Egalins Zauberfoliant]
    .complete 1473,1 --Egalin's Grimoire (1)
step << !Priest
    #completewith UCHome
    .goto 1458/0,714.8,1604.24,35,0
    .goto 1458/0,652.73,1623.44,35,0
    .goto 1458/0,634.02,1669.66,35,0
    .goto 1458/0,539.52,1665.17,10,0
    .goto 1458/0,481.48,1659.8,10,0
    .goto 1458/0,476.49,1632.15,10,0
    .goto 1458/0,439.08,1627.02,10,0
    .goto 1458/0,435.05,1598.86,10,0
    .zone Undercity >> Reist nach Unterstadt durch die Kanalisation
    .zoneskip Undercity
step << Rogue
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archibald|r im Kriegsviertel
    .train 201 >>Erlernt 1h Schwerter
    .target Archibald
step << Warrior/Rogue
    .goto 1458/0,335.37,1638.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brom|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Brom Killian
step << Warrior/Rogue
    .goto 1458/0,329.04,1641.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarah|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_FRIENDLY_Sarah|r
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto 1458/0,295.94,1691.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Basil Frye|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carendin|r im Magierviertel
    .turnin 1473 >> Gebt die Quest Kreatur der Leere ab
    .accept 1471 >> Die Bindung annehmen
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Benutzt die|r |T134416:0|t[Runen der Beschwörung] |cRXP_WARN_am Beschwörungskreis|r
    .use 6284
step << Warlock
    .goto 1458/0,41.99,1704.480
    >>Tötet den |cRXP_ENEMY_Beschworenen Leerwandler|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto 1458/0,57.34,1711.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Gebt die Quest Die Bindung ab
    .target Carendin Halgar
step << Warrior
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Charles Seaton|r im Schurken-Viertel
    >>|cRXP_BUY_Kauft eine|r |T135350:0|t[Claymore] |cRXP_BUY_von ihm|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Charles Seaton|r im Schurken-Viertel
    >>|cRXP_BUY_Kauft eine|r |T135350:0|t[Claymore] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Rüstet das|r |T135350:0|t[Claymore] aus
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Charles Seaton|r im Schurken-Viertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Charles Seaton|r im Schurken-Viertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Rüstet aus:|r |T135346:0|t[Entersäbel]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto 1458/0,129.68,1560.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nathaniel Steenwick|r im Schurken-Viertel
    >>|cRXP_BUY_Kauft|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihm|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .money <0.03
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Vergesst nicht, die |r|T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_auszurüsten, wenn ihr Stufe 11 seid|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    .goto 1458/0,71.92,1435.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Gebt die Quest Mennet Carkad ab
    .accept 1886 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
step << Mage
    .goto 1458/0,168.600,1662.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Owen Thadd|r
    .turnin 79095 >>Gebt die Quest Metaphysische Fibel des Apothekers ab
    .target Owen Thadd
    .itemcount 208185,1
step << Mage
    #optional
    .abandon 1883 >> Brecht die Quest ab, sprecht mit Un'thuwa; andernfalls könnt ihr die nächste Quest nicht annehmen
    .isOnQuest 1883
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anastasia|r im Magierviertel
    .turnin 1881 >> Gebt die Quest Gespräch mit Anastasia ab
    .accept 1882 >> Akzeptiert die Quest Balnirs Bauernhof
    .target Anastasia Hartwell
step << Mage
    .goto 1458/0,66.74,1766.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bethor|r im Magierviertel
    .turnin 405 >>Gebt die Quest Der abtrünnige Lich ab
    --.accept 357 >>Accept The Lich's Identity
    .target Bethor Iceshard
step << Paladin
    #label UCHome
    .goto 1458/0,223.31,1634.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Norman|r
    .home >> Setzt euren Ruhestein in Unterstadt
    .target Innkeeper Norman
    .bindlocation 1497
step
    #optional
    #label LogoutSkip1
step << skip
    .goto 1458/0,59.07,1747.75
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Führt einen Logout-Skip durch: Positioniert den Character von Euch auf der höchsten Stelle der niedrigsten Treppenstufe, bis er zu schweben scheint. Meldet euch dann ab und wieder an|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
    >>|cRXP_WARN_Falls ihr das nicht könnt, lauft einfach normal aus der Unterstadt|r
step << !Priest
    #completewith AtWarS
    .goto 1420/0,235.32,1883.89
    .zone Tirisfal Glades >> Verlasst Unterstadt
    .zoneskip Tirisfal Glades
step << Undead Rogue
    #sticky
    #completewith ArriveBalnir
    >>|cRXP_WARN_Falls ihr|r |cRXP_FRIENDLY_Astor|r seht|cRXP_WARN_, sprecht mit ihm und tötet ihn. Plündert ihn für den Brief. Er patrouilliert die Straße zwischen Brill und dem Grabmal|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step
    #optional
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Gebt die Quest Todesbeweise ab
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #label AtWarS
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .accept 371 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target Executor Zygand
step
    .goto 1420/0,270.12,2253.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mrs. Winters|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_bei|r |cRXP_FRIENDLY_ihr|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Gebt die Quest Gespräch mit Coleman ab
    .target Coleman Farthing
step
    #label Brill33
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Mage/Priest/Paladin
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warrior/Rogue
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warlock
    .collect 1179,20,96898,1 << Mage/Priest/Paladin --Ice Cold Milk (20)
    .collect 4605,20,96898,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,96898,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,96898,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock/Paladin
    .target Innkeeper Renee
step
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96895 >>Gebt die Quest Der Argentumabgesandte ab
    .accept 96897 >>Akzeptiert die Quest Der Kult der Verdammten
    .accept 96898 >>Akzeptiert die Quest Überreste des Krieges
    .target Hadric Harlson
step
    .goto 1420/0,-130.500,1907.800
    >>Tötet |cRXP_ENEMY_Dunkler Vollstrecker|r und |cRXP_ENEMY_Dunkler Neophyt|r. Plündert sie für |cRXP_LOOT_Nekrotisches Kristallfragment|r
    >>|cRXP_LOOT_Nekrotisches Kristallfragment|r |cRXP_WARN_kann auch vom Boden gelootet werden|r
    >>|cRXP_WARN_Passt auf! Diese Mobs schlagen hart zu. |cRXP_ENEMY_Dunkler Vollstrecker|r haben auch eine sofort wirkende Fähigkeit mit 50-70 Schaden.|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96897 >>Gebt die Quest Der Kult der Verdammten ab
    .turnin 96898 >>Gebt die Quest Überreste des Krieges ab
    .accept 96899 >>Akzeptiert die Quest Die Bandarionfestung
    .target Hadric Harlson
step
    #label ArriveBalnir
    .goto 1420/0,-423.96,1976.68
    .subzone 165 >>Reist zu Balnirs Bauernhof
    .isOnQuest 356
step
    #completewith HorrorsandSpirits
    >>Plündert das |cRXP_PICK_Grabkraut|r vom Boden
    .complete 99142,1 --|5/5 Tomb Weed
step << Mage
    #completewith next
    >>Tötet |cRXP_ENEMY_Blutender Schrecken|r und |cRXP_ENEMY_Wandernder Geist|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    .goto 1420/0,-467.79,1969.75
    >>Plündert eine der Pflanzen am Boden für einen |cRXP_PICK_Balnirlöwenmäulchen|r
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
    >>Tötet |cRXP_ENEMY_Blutender Schrecken|r und |cRXP_ENEMY_Wandernder Geist|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step
    .goto 1420/0,-354.800,2049.000
    >>Plündert das |cRXP_PICK_Grabkraut|r vom Boden
    .complete 99142,1 --|5/5 Tomb Weed
step << Paladin
    #completewith ViciousVenom
    >>|cRXP_WARN_Behaltet 10|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für eine Quest später. Stellt sicher, dass ihr es nicht verkauft|r
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
    >>Tötet |cRXP_ENEMY_Scharlachrotes Ordensmitglied|r und |cRXP_ENEMY_Scharlachroter Zelot|r. Plündert sie für |cRXP_LOOT_Scharlachroter Insignienring|r
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
    >>Tötet |cRXP_ENEMY_Scharlachrotes Ordensmitglied|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    .goto 1420/0,-528.35,2146.28
    >>Tötet |cRXP_ENEMY_Captain Vachon|r im Turm
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
    >>Tötet |cRXP_ENEMY_Heimtückischer Nachtweber|r. Plündert sie für |cRXP_LOOT_Heimtückisches Nachtweberspinnengift|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step << skip
    .goto 1420/0,-38.06,2569.54
    >>Plündert |cRXP_PICK_Gunthers Bücher|r für |cRXP_LOOT_Das Zauberbuch des Lichs|r auf der Insel im Blendwassersee
    .complete 357,1 --The Lich's Spellbook (1)
step
    --#hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >> Reist zurück nach Brill
    .subzoneskip 159
step << skip
    #softcore
    #completewith ANewPlagueFinal
    .goto 1420/0,23.85,2483.38
    .deathskip >> Sterbt |cRXP_WARN_AUF DER KLEINEREN INSEL|r und belebt euch bei dem |cRXP_FRIENDLY_Geistheiler|r wieder
step
    .goto 1420/0,346.94,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Gebt die Quest Eine neue Seuche ab
    .accept 492 >>Akzeptiert die Quest Eine neue Seuche
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .target Apothecary Johaan
step
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    --.accept 372 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sevren|r
    .turnin 360 >>Gebt die Quest Rückkehr zum Magistrat ab
    .turnin 355 >>Gebt die Quest Sprecht mit Sevren ab
    .target Magistrate Sevren
step
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Gebt die Quest Todesbeweise ab
    .target Deathguard Burgess
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Renee
step
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Gefangenen Scharlachroten Zelot|r und dem |cRXP_FRIENDLY_Gefangenen Gebirgsjäger|r unten im hinteren Teil des Gasthauses
    .turnin 407 >>Gebt die Quest Felder des Kummers ab
    .goto 1420/0,233.06,2292.39
    .target +Captured Scarlet Zealot
    .turnin 492 >> Gebt die Quest Eine neue Seuche ab
    .goto 1420/0,234.42,2289.070
    .target +Captured Mountaineer
step << Priest
    .goto 1420/0,251.14,2265.28--c:Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Dark Cleric Beryl
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03--c:Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Trainiere deine Klassenfähigkeiten
    .target Austil de Mon
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25--c:Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Trainiere deine Klassenfähigkeiten
    .target Rupert Boch
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2270.70--c:Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r
    .train 1766 >> Trainiere deine Klassenfähigkeiten
    .target Marion Call
    .xp <12,1
step << Mage
    .goto 1420/0,233.52,2256.84--c:Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r im Gasthaus
    .train 145 >> Trainiere deine Klassenfähigkeiten
    .target Cain Firesong
    .xp <12,1
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shari Stilwell|r
    .train 678 >> Trainiere deine Klassenfähigkeiten
    .target Shari Stilwell
    .xp <12,1
step
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_Er patrouilliert um den Friedhof herum|r
    .turnin 99142 >>Gebt die Quest Grabkraut ab
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
    .goto 1420/0,2049.900,2463.200,50 >>Reist zur Bandarionfestung
step << Paladin
    .goto 1420/0,2045.900,2475.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Breton Samuels|r
    .turnin 91282 >>Gebt die Quest Ein zweites Zuhause ab
    .accept 91285 >>Akzeptiert die Quest Murlocs vor den Toren
    .target Breton Samuels
step
    .goto 1420/0,2038.000,2490.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Leonidas Bartholomäus der Geachtete|r oben
    .turnin 96899 >>Gebt die Quest Die Bandarionfestung ab
    .accept 96896 >>Akzeptiert die Quest Für die gerechte Sache
    .target Leonid Barthalomew the Revered
step
    .goto 1420/0,2038.000,2490.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Leonidas Bartholomäus der Geachtete|r oben
    .turnin 96896 >>Gebt die Quest Für die gerechte Sache ab
    .accept 98545 >>Akzeptiert die Quest Leonids Brief
    .target Leonid Barthalomew the Revered
step
    .goto 1420/0,2041.200,2416.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilda the Breaker|r draußen
    .accept 99152 >>Akzeptiert die Quest Wie oben, so unten
    .target Hilda the Breaker
step
    .goto 1420/0,2122.100,2436.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ephram Barbaro|r außerhalb
    .accept 99153 >>Akzeptiert die Quest Das Eine, das entkam
    .target Ephram Barbaro
step << Paladin
    #loop
    .goto 1420/0,2424.200,2151.900,0
    .goto 1420/0,2212.000,2022.600,0
    .goto 1420/0,2424.200,2151.900,50,0
    .goto 1420/0,2212.000,2022.600,50,0
    >>Tötet |cRXP_ENEMY_Seher der Finsterflossen|r und |cRXP_ENEMY_Angreifer der Finsterflossen|r
    .complete 91285,2 --|8/8 Vile Fin Seer slain
    .mob +Vile Fin Seer
    .complete 91285,1 --|8/8 Vile Fin Attacker slain
    .mob +Vile Fin Attacker
step << Paladin
    .goto 1420/0,2045.800,2475.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Breton Samuels|r
    .turnin 91285 >>Gebt die Quest Murlocs vor den Toren ab
    .accept 91294 >>Akzeptiert die Quest Ein Rundgang durch die Anlage
    .target Breton Samuels
    --very good weapon upgrade 8.9 dps (Wooden Mallet 5.0 dps)
step << Paladin -- paladin trainer outside
    .goto 1420/0,2038.800,2415.900
    >>Sprecht mit |cRXP_FRIENDLY_Hilda die Brecherin|r
    .complete 91294,1 --|1/1 Speak with Hilda the Breaker
    .target Hilda the Breaker
step << Paladin --patrols the road
    .goto 1420/0,1961.100,2334.600
    >>Sprecht mit |cRXP_FRIENDLY_Ander Solliden|r
    >>|cRXP_WARN_Er patrouilliert auf der Straße|r
    .complete 91294,3 --|1/1 Speak with Ander Solliden
    .target Ander Solliden
    --TODO: Patrol path
step << Paladin --inside keep
    .goto 1420/0,2007.900,2491.200
    >>Sprecht mit |cRXP_FRIENDLY_Jorin Croge|r
    .complete 91294,2 --|1/1 Speak with Jorin Croge
    .target Jorin Croge
step << Paladin --upstairs in keep
    .goto 1420/0,2035.100,2492.200
    >>Sprecht mit |cRXP_FRIENDLY_Danitha Morr|r
    .complete 91294,4 --|1/1 Speak with Danitha Morr
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2035.100,2492.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 91294 >>Gebt die Quest Ein Rundgang durch die Anlage ab
    .accept 91317 >>Akzeptiert die Quest Der Befleckte
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2007.800,2491.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jorin Croge|r
    .accept 91316 >>Akzeptiert die Quest Reparaturen
    .target Jorin Croge
step << Paladin
    #completewith next
    >>Tötet |cRXP_ENEMY_Befleckter Fanatiker|r und |cRXP_ENEMY_Befleckter Akkordarbeiter|r
    .complete 91317,3 --|6/6 Tarnished Zealot slain
    .mob +Tarnished Zealot
    .complete 91317,2 --|8/8 Tarnished Drudge slain
    .mob +Tarnished Drudge
step << Paladin
    .goto 1420/0,2514.600,1903.600
    >>Tötet |cRXP_ENEMY_Rudolph Gelhardt|r oben. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 91317,1 --|1/1 Rudolph Gelhardt's Head
    .mob Rudolph Gelhardt
step << Paladin
    .goto 1420/0,2487.700,1910.000
    >>Tötet |cRXP_ENEMY_Befleckter Fanatiker|r und |cRXP_ENEMY_Befleckter Akkordarbeiter|r
    .complete 91317,3 --|6/6 Tarnished Zealot slain
    .mob +Tarnished Zealot
    .complete 91317,2 --|8/8 Tarnished Drudge slain
    .mob +Tarnished Drudge
step
    #label ShadowValeCrypt
    .goto 1420/0,2449.500,1857.600,10 >>BETRETET die Schattental-Krypta
    .isOnQuest 99152,95314,99153
step
    #requires ShadowValeCrypt
    #completewith GlowingFragment
    >>Tötet |cRXP_ENEMY_Schattentalschlinger|r und |cRXP_ENEMY_Schattentalmystiker|r. Plündert sie für ihre |cRXP_LOOT_Schwach leuchtender Knochen|r
    .complete 99152,1 --|6/6 Faintly Glowing Bone
    .mob Shadowvale Lurcher
    .mob Shadowvale Mystic
step
    #requires ShadowValeCrypt
    #completewith GlowingBones
    >>Plündert die |cRXP_PICK_Holzstapel|r vom Boden << Paladin
    >>Plündert die |cRXP_PICK_Flasche mit flüsterndem Elixier|r auf dem Boden und an den Wänden
    .complete 91316,1 << Paladin--|12/12 Sturdy Lumber
    .complete 95314,1 --|8/8 Bottle of Whispering Elixir
step
    .goto 1420/0,2648.100,2027.200
    .use 268812 >>Tötet die |cRXP_ENEMY_Flüsternder Schrecken|r (elite). Plündert ihn für |T134438:0|t[|cRXP_LOOT_Überreste des flüsternden Schreckens|r]
    >>|cRXP_WARN_Das ist schwierig! Macht eine Gruppt, falls möglich. Er hat 700 Leben, aber sein Schaden ist bewältigbar. Überspringt diesen Schritt, wenn ihr ihn nicht töten könnt|r
    .collect 268812,1,95328 --Whispering Horror Residue (x1)
    .accept 95328 >>Akzeptiert die Quest Überreste des flüsternden Schreckens
    .mob Whispering Horror
step
    #requires ShadowValeCrypt
    #label GlowingFragment
    .goto 1420/0,2592.400,1748.400
    >>Plünder das |cRXP_PICK_Leuchtendes Kristallfragment|r vom Boden
    .complete 99153,1 --|1/1 Glowing Crystal Fragment
step
    #requires ShadowValeCrypt
    #label GlowingBones
    .goto 1420/0,2556.100,1868.800
    >>Tötet |cRXP_ENEMY_Schattentalschlinger|r und |cRXP_ENEMY_Schattentalmystiker|r. Plündert sie für ihre |cRXP_LOOT_Schwach leuchtender Knochen|r
    .complete 99152,1 --|6/6 Faintly Glowing Bone
    .mob Shadowvale Lurcher
    .mob Shadowvale Mystic
step
    #requires ShadowValeCrypt
    .goto 1420/0,2647.800,1815.500
    >>Plündert die |cRXP_PICK_Holzstapel|r vom Boden << Paladin
    >>Plündert die |cRXP_PICK_Flasche mit flüsterndem Elixier|r auf dem Boden und an den Wänden
    .complete 91316,1 << Paladin--|12/12 Sturdy Lumber
    .complete 95314,1 --|8/8 Bottle of Whispering Elixir
step << skip
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    .goto 1420/0,2037.100,2416.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilda die Brecherin|r
    .turnin 99152 >>Gebt die Quest Wie oben, so auch unten ab
    .target Hilda the Breaker
step
    .goto 1420/0,2122.500,2436.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ephram Barbaro|r
    .turnin 99153 >>Gebt die Quest Das Eine, das entkam ab
    .target Ephram Barbaro
step << Paladin
    .goto 1420/0,2008.000,2491.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jorin Croge|r
    .turnin 91316 >>Gebt die Quest Reparaturen ab
    .target Jorin Croge
step << Paladin
    .goto 1420/0,2035.100,2492.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 91317 >>Gebt die Quest Der Befleckte ab
    .accept 95803 >>Akzeptiert die Quest Ein Zeichen des guten Glaubens
    .accept 94427 >>Akzeptiert die Quest Eine Lektion in Sachen Göttlichkeit
    .target Danitha Morr
step << !Paladin
    #completewith BrillTurnin2
    .hs >> Benutzt euren Ruhestein nach Brill
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step << !Paladin
    #completewith BrillTurnin2
    .subzone 159 >> Reist zurück nach Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step << Priest
    .goto 1420/0,251.14,2265.28--c:Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Dark Cleric Beryl
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03--c:Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Trainiere deine Klassenfähigkeiten
    .target Austil de Mon
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25--c:Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Trainiere deine Klassenfähigkeiten
    .target Rupert Boch
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2270.70--c:Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r
    .train 1766 >> Trainiere deine Klassenfähigkeiten
    .target Marion Call
    .xp <12,1
step << Mage
    .goto 1420/0,233.52,2256.84--c:Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r im Gasthaus
    .train 145 >> Trainiere deine Klassenfähigkeiten
    .target Cain Firesong
    .xp <12,1
step << !Paladin
    .goto 1420/0,347.600,2265.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carolai Anise|r
    .turnin 95314 >>Gebt die Quest Ein Elixier so grün wie das Schattental ab
    .target Carolai Anise
step << Priest
    #optional
    .goto 1420/0,251.14,2265.28--c:Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Dark Cleric Beryl
    .xp <12,1
step << Warrior
    #optional
    .goto 1420/0,238.49,2255.03--c:Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Trainiere deine Klassenfähigkeiten
    .target Austil de Mon
    .xp <12,1
step << Warlock
    #optional
    .goto 1420/0,250.24,2259.25--c:Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Trainiere deine Klassenfähigkeiten
    .target Rupert Boch
    .xp <12,1
step << Rogue
    #optional
    .goto 1420/0,243.01,2270.70--c:Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r
    .train 1766 >> Trainiere deine Klassenfähigkeiten
    .target Marion Call
    .xp <12,1
step << Mage
    #optional
    .goto 1420/0,233.52,2256.84--c:Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r im Gasthaus
    .train 145 >> Trainiere deine Klassenfähigkeiten
    .target Cain Firesong
    .xp <12,1
step
    #optional
    #label BandarionKeepSkip
step << Rogue
    #completewith EnterUC2
    >>|cRXP_WARN_Falls ihr|r |cRXP_FRIENDLY_Astor|r seht|cRXP_WARN_, sprecht mit ihm und tötet ihn. Plündert ihn für den Brief. Er patrouilliert die Straße zwischen Brill und dem Grabmal|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << !Paladin
    #label BrillTurnin2
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Gebt die Quest Patrouille zur Rückendeckung ab
    .target Deathguard Linnea
step << !Paladin
    #label EnterUC2
    #completewith Glix
    .goto 1420/0,240.75,1877.57,20 >> Betrete Unterstadt
    .zoneskip Undercity
step << !Paladin
    #completewith Glix
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Nehmt den Aufzug hinab nach Unterstadt
step << !Paladin
    .goto 1458/0,223.31,1634.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Norman|r
    .home >> Setzt euren Ruhestein in Unterstadt
    .target Innkeeper Norman
    .bindlocation 1497
step << Paladin
    #completewith Glix
    .hs >> Benutzt euren Ruhestein nach Unterstadt
    .cooldown item,6948,>0,1
    .bindlocation 1497,1
    .zoneskip Undercity
step << Paladin --trade quarter
    .goto 1458/0,245.300,1637.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tanis Erlenwald|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 10|r |T132889:0|t[Leinenstoff] |cRXP_WARN_im Beutel habt|r
    .turnin 94427 >>Gebt die Quest Eine Lektion in Sachen Göttlichkeit ab
    .accept 94434 >>Akzeptiert die Quest Eine Lektion in Sachen Göttlichkeit
    .turnin 94434 >>Gebt die Quest Eine Lektion in Sachen Göttlichkeit ab
    .accept 94435 >>Akzeptiert die Quest Eine Lektion in Sachen Göttlichkeit
    .target Tanis Alderwood
step
    #label Glix
    .goto 1458/0,201.400,1575.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Glix Xizzix|r
    .turnin 98545 >>Gebt die Quest Leonids Brief ab
    .target Glix Xizzix
step << Rogue
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Charles Seaton|r im Schurken-Viertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Charles Seaton|r im Schurken-Viertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_Rüstet aus:|r |T135346:0|t[Entersäbel]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Charles Seaton|r im Schurken-Viertel
    >>|cRXP_BUY_Kauft eine|r |T135350:0|t[Claymore] |cRXP_BUY_von ihm|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Charles Seaton|r im Schurken-Viertel
    >>|cRXP_BUY_Kauft eine|r |T135350:0|t[Claymore] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_Rüstet das|r |T135350:0|t[Claymore] aus
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Cain|r
    >>|cRXP_BUY_Kauft Drei|r |T133884:0|t[Murloc Augen] |cRXP_BUY_vom Auktionshaus|r
    >>|cRXP_WARN_Überspringt dies, wenn ihr wollt, es spart nur wenig Zeit|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anastasia|r im Magierviertel
    .turnin 1882 >>Gebt die Quest Balnirs Bauernhof ab
    .target Anastasia Hartwell
step << Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1886 >>Gebt die Quest Die Todespirscher ab
    .target Mennet Carkad
    .isQuestComplete 1886
step << Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .accept 1898 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,347.07,1389.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Gebt die Quest Die Todespirscher ab
    .accept 1899 >>Akzeptiert die Quest Die Todespirscher
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,341.41,1385.90
    >>Plündert |cRXP_PICK_Andron's Bücherregal|r hinter |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,71.83,1435.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1899 >>Gebt die Quest Die Todespirscher ab
    .accept 1978 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1420/0,373.60,1464.85,40,0
    .goto 1420/0,333.38,1287.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Gebt die Quest Die Todespirscher ab
    .target Varimathras
    .isQuestTurnedIn 1886
step
    .goto 1458/0,399.800,1776.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vater Lankester|r
    .turnin 95328 >>Gebt die Quest Überreste des flüsternden Schreckens ab
    .target Father Lankester
    .isOnQuest 95328
step << Priest
    #ah
    .goto 1458/0,257.27,1560.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Rhyker|r
    >>|cRXP_BUY_Kauft einen|r |T135139:0|t[Geringer Magiezauberstab] |cRXP_BUY_aus dem Auktionshaus|r
    >>|cRXP_WARN_Falls ihr das macht und vorher|r |T132889:0|t[Leinenstoff] |cRXP_WARN_gesammelt habt, könnt ihr euren|r |T132889:0|t[Leinenstoff] |cRXP_WARN_im Auktionshaus verkaufen|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
step << Priest
    #optional
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >> Gebt die Quest Berührung der Schwäche ab
    .target Aelthalyste
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
    .train 2652,1 --Touch of Weakness not trained
step << Priest
    #optional
    .goto 1458/0,201.05,1686.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Victor|r
    .train 3908 >> Erlernt |T136249:0|t[Schneiderei]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,194.34,1681.63
    >>|cRXP_WARN_Verarbeitet all euren|r |T132889:0|t[Leinenstoff] |cRXP_WARN_in|r |T132890:0|t[Leinenstoffballen]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,201.05,1686.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Victor|r
    .train 7623 >> Erlernt |T132662:0|t[Braune Leinenrobe]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,196.16,1684.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Kauft|r |T132891:0|t[Grober Faden] |cRXP_BUY_von ihr|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    >>|cRXP_WARN_Stellt so viele|r |T132662:0|t[Braune Leinenrobe] |cRXP_WARN_wie ihr könnt|r her
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,273.87,1482.360
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >> Erlernt |T136244:0|t[Verzauberkunst]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,275.02,1487.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Kauft|r |T133942:0|t[Kupferrute] |cRXP_BUY_und|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Entzaubert alle|r |T132662:0|t[Braune Leinenrobe] |cRXP_WARN_die ihr gemacht habt und erstellt eine|r |T135225:0|t[Runenverzierte Kupferrute]
    >>|cRXP_WARN_Falls ihr|r |T132867:0|t[Geringe Magieessenz] nicht bekommen habt |cRXP_WARN_dann kauft eine bei|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_wenn eine verfügbar ist. Sonst beendet diesen Schritt später|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,273.2,1491.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malcomb|r
    .train 14293 >> Erlernt |T135139:0|t[Geringer Magiezauberstab]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #label LesserMagicWand
    >>|cRXP_WARN_Stellt einen |r |T135139:0|t[Geringer Magiezauberstab] her
    >>|cRXP_WARN_Falls ihr|r |T132867:0|t[Geringe Magieessenz] nicht bekommen habt |cRXP_WARN_dann kauft eine bei|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_wenn eine verfügbar ist. Sonst beendet diesen Schritt später|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +Legt |T135139:0|t[Geringer Magiezauberstab] |cRXP_WARN_an|r
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
    .goto 1458/0,365.30,1304.41,10 >>BETRETET das Königsviertel--c:Undercity,52.94,89.60
step << Paladin
    .goto 1458/0,316.200,1290.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fürstin Sylvanas Windrunner|r
    .turnin 95803 >>Gebt die Quest Ein Zeichen des guten Glaubens ab
    .target Lady Sylvanas Windrunner

    --Paladin Ressurrect chain route

step << Paladin
    #completewith
    .goto 1420/0,235.32,1883.89
    .zone Tirisfal Glades >> Verlasst Unterstadt
    .zoneskip Tirisfal Glades
step << Paladin
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Gebt die Quest Patrouille zur Rückendeckung ab
    .target Deathguard Linnea
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shari Stilwell|r
    .train 678 >> Trainiere deine Klassenfähigkeiten
    .target Shari Stilwell
    .xp <12,1
step << Paladin
    .goto 1420/0,347.600,2265.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carolai Anise|r
    .turnin 95314 >>Gebt die Quest Ein Elixier so grün wie das Schattental ab
    .target Carolai Anise
step << Paladin
    #completewith RessComplete
    +|cRXP_WARN_Ihr werdet jetzt die Questreihe für|r |T135955:0|t[Erlösung] |cRXP_WARN_Fähigkeit durchführen. Dies wird etwa 15 Minuten dauern und gibt wenig Erfahrung.|r
    >>|cRXP_WARN_Ihr könnt diesen Schritt gerne überspringen und später zurückkommen, wenn ihr möchtet.|r
step << Paladin
    #completewith next
    .goto 1420/0,1732.500,2437.900,50,0
    .goto 1420/0,1834.300,2424.000,50,0
    .goto 1420/0,1963.100,2340.600,50,0
    .goto 1420/0,2041.000,2352.500,50,0
    .goto 1420/0,2049.900,2463.200,50 >>Reist zur Bandarionfestung
step << Paladin
    .goto 1420/0,2035.100,2492.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 94435 >>Gebt die Quest Eine Lektion in Sachen Göttlichkeit ab
    .accept 94436 >>Akzeptiert die Quest Eine Lektion in Sachen Göttlichkeit
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2043.400,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todeswache Billmuth|r
    .turnin 94436 >>Gebt die Quest Eine Lektion in Sachen Göttlichkeit ab
    .accept 94438 >>Akzeptiert die Quest Eine Lektion in Sachen Göttlichkeit
    .target Deathguard Billmuth
    .isOnQuest 94436
step << Paladin
    #optional
    .goto 1420/0,2043.400,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todeswache Billmuth|r
    .accept 94438 >>Akzeptiert die Quest Eine Lektion in Sachen Göttlichkeit
    .target Deathguard Billmuth
    .isQuestTurnedIn 94436

    --East Tirisfal south of SM

step << Paladin
    #completewith next
    .goto 1420/0,-885.200,2399.800,50 >>Reist nach Östliches Tirisfal
step << Paladin
    #completewith next
    .cast 8593 >>|cRXP_WARN_Benutzt das|r |T133439:0|t[Symbol des Lebens] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Todeswache Falgan|r
    .use 6866
    .target Deathguard Falgan
step << Paladin
    .goto 1420/0,-885.200,2399.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todeswache Falgan|r
    .turnin 94438 >>Gebt die Quest Eine Lektion in Sachen Göttlichkeit ab
    .accept 94440 >>Akzeptiert die Quest Eine Lektion in Sachen Göttlichkeit
    .target Deathguard Falgan
    .isQuestTurnedIn 94436
step << Paladin
    .goto 1420/0,-889.700,2531.400
    >>Tötet |cRXP_ENEMY_Scharlachrotes Ordensmitglied|r und |cRXP_ENEMY_Scharlachroter Zelot|r. Plündert sie für |cRXP_LOOT_Angriffspläne des Scharlachroten Kreuzzugs|r
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
    .goto 1420/0,2049.900,2463.200,50 >>Reist zur Bandarionfestung
step << Paladin
    .goto 1420/0,2043.500,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todeswache Billmuth|r
    .turnin 94440 >>Gebt die Quest Eine Lektion in Sachen Göttlichkeit ab
    .accept 94441 >>Akzeptiert die Quest Eine Lektion in Sachen Göttlichkeit
    .target Deathguard Billmuth
    .isQuestTurnedIn 94436
step << Paladin
    #label RessComplete
    .goto 1420/0,2034.900,2492.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 94441 >>Gebt die Quest Eine Lektion in Sachen Göttlichkeit ab
    .target Danitha Morr
    .isQuestTurnedIn 94436
step << !Paladin
    #completewith Entersilverpine
    #optional
    .abandon 96899 >>Brecht die Quest Die Bandarionfestung ab
step << !Paladin
    #completewith Entersilverpine
    #optional
    .abandon 95314 >>Brecht die Quest „Ein Elixier so grün wie das Schattental" ab
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
    .zone Tirisfal Glades >> Verlasst die Unterstadt durch die Kanalisation
step
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Reist nach Silberwald
]])


RXPGuides.RegisterGuide([[
#group RestedXP Forever Dungeonführer (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#defaultfor !Hunter !Shaman !Tauren
#forever
#disabledungeons
#name 12-14 Silberwald
#displayname 13-15 Silberwald << Paladin
#next 12-17 das Brachland

step << Skyborne
    #optional
    .maxlevel 13,Silverpineskip
step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_Falls ihr|r |cRXP_FRIENDLY_Astor|r seht|cRXP_WARN_, sprecht mit ihm und tötet ihn. Plündert ihn für den Brief. Er patrouilliert die Straße zwischen Brill und dem Grabmal|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    .goto 1421/0,1090.44,1409.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todespirscher Erland|r, um die Eskorte zu beginnen
    >>|cRXP_WARN_Falls er nicht da ist, überspringt diese Quest für jetzt.|r
    .accept 435,1 >>Akzeptiert die Quest Eskorte für Erland
    .target Deathstalker Erland
step
    .goto 1421/0,1087.50,1379.11,30,0
    .goto 1421/0,1087.50,1346.63,30,0
    .goto 1421/0,1090.86,1313.31,30,0
    .goto 1421/0,1204.68,1290.07
    >>Eskortiert |cRXP_FRIENDLY_Erland|r sicher zu |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_ENEMY_Worgen|r |cRXP_WARN_können übereinander spawnen. Esst und trinkt, wann immer ihr könnt|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
    .isOnQuest 435
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Gebt die Quest Eskorte für Erland ab
    .accept 429 >>Akzeptiert die Quest Wilde Herzen
    .accept 449 >>Akzeptiert die Quest Der Bericht der Todespirscher
    .target Rane Yorick
    .isQuestComplete 435
step
    #optional
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rane Yorick|r
    .accept 429 >>Akzeptiert die Quest Wilde Herzen
    .target Rane Yorick
step
    #completewith Escort2
    >>Tötet |cRXP_ENEMY_Worgen|r. Plündert sie für ihre |cRXP_LOOT_Herzen|r
    .collect 3164,3,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    #loop
    .goto 1421/0,941.300,1210.400,0
    .goto 1421/0,706.700,1317.400,0
    .goto 1421/0,941.300,1210.400,50,0
    .goto 1421/0,830.000,1309.400,50,0
    .goto 1421/0,706.700,1317.400,50,0
    >>Tötet |cRXP_ENEMY_Murloc der Finsterflossen|r. Plündert sie für ihre |T133884:0|t[|cRXP_LOOT_Murlocaugen|r]
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .mob Vile Vin Shredder
    .mob Vile Vin Tidehunter
step
    .goto 1421/0,1090.44,1409.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todespirscher Erland|r, um die Eskorte zu beginnen
    .accept 435,1 >>Akzeptiert die Quest Eskorte für Erland
    .target Deathstalker Erland
step
    #label Escort2
    .goto 1421/0,1087.50,1379.11,30,0
    .goto 1421/0,1087.50,1346.63,30,0
    .goto 1421/0,1090.86,1313.31,30,0
    .goto 1421/0,1204.68,1290.07
    >>Eskortiert |cRXP_FRIENDLY_Erland|r sicher zu |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_ENEMY_Worgen|r |cRXP_WARN_können übereinander spawnen. Esst und trinkt, wann immer ihr könnt|r
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
    >>Tötet |cRXP_ENEMY_Worgen|r. Plündert sie für ihre |cRXP_LOOT_Herzen|r
    .collect 3164,3,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Gebt die Quest Eskorte für Erland ab
    .accept 449 >>Akzeptiert die Quest Der Bericht der Todespirscher
    .target Rane Yorick
step << skip
    #softcore
    #completewith ProveyourWorth
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    --#hardcore
    #completewith next
    .goto 1421/0,1359.66,864.19,50,0
    .goto 1421/0,1359.66,741.27,50,0
    .goto 1421/0,1365.12,607.15,100,0
    .goto 1421/0,1538.58,511.39,100 >> Lauf nach Das Grabmal
    .subzoneskip 228
step
    #label ProveyourWorth
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dalar|r
    .accept 421 >>Akzeptiert die Quest Wertbeweis
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwyn|r
    .vendor >> |cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Verkauft nicht eure|r |T133884:0|t[|cRXP_LOOT_Murlocaugen|r]
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    >>|cRXP_WARN_Verkauft nicht eure|r |T133884:0|t[|cRXP_LOOT_Murlocaugen|r]
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Allister|r und |cRXP_FRIENDLY_Podrig|r
    .accept 477 >>Akzeptiert die Quest Grenzübergänge
    .target +Shadow Priest Allister
    .goto 1421/0,1602.84,520.63
    .accept 6321 >>Akzeptiert die Quest Nachschub für das Grabmal
    .target +Deathguard Podrig
    .goto 1421/0,1625.94,499.91
step
    #label BorderCrossings
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Allister|r
    .accept 477 >>Akzeptiert die Quest Grenzübergänge
    .target Shadow Priest Allister
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >> Betretet die Gruft
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadrec|r in der Gruft
    .turnin 449 >>Gebt die Quest Der Bericht der Todespirscher ab
    .accept 3221 >>Akzeptiert die Quest Sprecht mit Renferrel
    .accept 437 >>Akzeptiert die Quest Das Todesfeld
    .target High Executor Hadrec
step
    .goto 1421/0,1652.82,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Renferrel|r
    .turnin 429 >>Gebt die Quest Wilde Herzen ab
    .turnin 445 >>Gebt die Quest Lieferung in den Silberwald ab
    .turnin 3221 >>Gebt die Quest Sprecht mit Renferrel ab
    .accept 1359 >>Akzeptiert die Quest Zinges Lieferung
    .accept 447 >>Akzeptiert die Quest Rezept für den Tod
    .accept 430 >>Akzeptiert die Quest Rückkehr zu Quinn
    .target Apothecary Renferrel
    .addquestitem 3164,429
    .isOnQuest 445
step
    #optional
    .goto 1421/0,1652.82,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Renferrel|r
    .turnin 429 >>Gebt die Quest Wilde Herzen ab
    .turnin 3221 >>Gebt die Quest Sprecht mit Renferrel ab
    .accept 1359 >>Akzeptiert die Quest Zinges Lieferung
    .accept 447 >>Akzeptiert die Quest Rezept für den Tod
    .accept 430 >>Akzeptiert die Quest Rückkehr zu Quinn
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
    >>Tötet |cRXP_ENEMY_Moonrage-Weißskalp|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dalar|r
    .target Dalar Dawnweaver
    .turnin 421 >>Gebt die Quest Wertbeweis ab
    .accept 422 >>Akzeptiert die Quest Arugals Torheit
step
    #completewith Remedy
    .goto 1421/0,1234.92,891.070,80 >> Reist zu Valgans Feld
step
    #label Remedy
    .goto 1421/0,1234.92,891.070,8,0
    .goto 1421/0,1218.54,884.91,8,0
    .goto 1421/0,1226.52,886.03,8,0
    .goto 1421/0,1231.14,866.99
    >>Betretet das Haus und geht in den zweiten Stock. Plündert die |cRXP_PICK_Staubige Zauberbücher|r vom Boden
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto 1421/0,1207.62,1293.71,80,0
    .subzone 239 >>Reist zum Ivarfeld
step
    #label QuinnYorick
    .goto 1421/0,1207.62,1293.71,8,0
    .goto 1421/0,1220.64,1299.59,8,0
    .goto 1421/0,1212.66,1298.19,8,0
    .goto 1421/0,1205.94,1314.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quinn Yorick|r im zweiten Stockwerk des Hauses
    .turnin 430 >>Gebt die Quest Rückkehr zu Quinn ab
    .accept 91920 >>Akzeptiert die Quest Wilde Augen
    .target Quinn Yorick
step
    #loop
    .goto 1421/0,941.300,1210.400,0
    .goto 1421/0,706.700,1317.400,0
    .goto 1421/0,941.300,1210.400,50,0
    .goto 1421/0,830.000,1309.400,50,0
    .goto 1421/0,706.700,1317.400,50,0
    >>Tötet |cRXP_ENEMY_Murloc der Finsterflossen|r. Plündert sie für ihre |T133884:0|t[|cRXP_LOOT_Murlocaugen|r]
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .mob Vile Vin Shredder
    .mob Vile Vin Tidehunter
step
    #completewith ArugalTurnin
    +|cRXP_WARN_Passt auf! Es könnte ein|r |cRXP_ENEMY_Sohn des Arugal|r |cRXP_WARN_im Gebiet sein! Das ist ein Elitegegner der Stufe 25. Haltet euch von ihn fern!|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>Tötet |cRXP_ENEMY_Bären|r. Plündert sie für ihre |cRXP_LOOT_Herzen|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto 1421/0,1541.52,1078.39
    >>Tötet |cRXP_ENEMY_Gnoll der Moderfelle|r rund um das Todesfeld, bis |cRXP_ENEMY_Nachtseele|r erscheint. Tötet sie und plündert ihre |cRXP_LOOT_Essenz|r
    >>|cRXP_WARN_Sie sind immun gegen Furcht!|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>Tötet |cRXP_ENEMY_Bären|r. Plündert sie für ihre |cRXP_LOOT_Herzen|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Spinnen|r. Plündert sie für ihr |cRXP_LOOT_Blut|r
    >>|cRXP_WARN_Seid vorsichtig vor|r |cRXP_ENEMY_Krethis Shadowspinner|r |cRXP_WARN_da sie extrem schwierig zu töten ist!|r << !Mage !Warlock
    >>|cRXP_WARN_Seid vorsichtig vor|r |cRXP_ENEMY_Krethis Shadowspinner|r |cRXP_WARN_- es ist schwierig, aber machbar. Sie hat einen Schutzschild mit 130 Schaden (15s Cooldown) und eine sofortige Schockfähigkeit mit 110 Schaden|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto 1421/0,2064.0,1167.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Killian|r
    .vendor >> Verkauft Müll
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
    >>Tötet |cRXP_ENEMY_Spinnen|r. Plündert sie für ihr |cRXP_LOOT_Blut|r
    >>|cRXP_WARN_Seid vorsichtig vor|r |cRXP_ENEMY_Krethis Shadowspinner|r |cRXP_WARN_da sie extrem schwierig zu töten ist!|r << !Mage !Warlock
    >>|cRXP_WARN_Seid vorsichtig vor|r |cRXP_ENEMY_Krethis Shadowspinner|r |cRXP_WARN_- es ist schwierig, aber machbar. Sie hat einen Schutzschild mit 130 Schaden (15s Cooldown) und eine sofortige Schockfähigkeit mit 110 Schaden|r << Mage/Warlock
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
    >>Beenden das töten von |cRXP_ENEMY_Bären|r. Plündert sie für ihre |cRXP_LOOT_Herzen|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step << skip
    #softcore
    #completewith ArugalTurnin
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    --#hardcore
    #completewith next
    .goto 1421/0,1538.58,511.39,100,0
    .subzone 228 >>Reist zurück zum Grabmal
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >> Gebt die Quest Arugals Torheit ab
    .accept 423 >> Akzeptiert die Quest Arugals Torheit
    .target Dalar Dawnweaver
step
    #optional
    #label ArugalTurnin
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >> Betretet die Gruft
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadrec|r in der Gruft
    .turnin 437 >> Gebt die Quest Das Todesfeld ab
    .accept 438 >> Akzeptiert die Quest Die verfallene Fähre
    .target High Executor Hadrec
step
    .goto 1421/0,1652.600,522.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Apotheker Renferrel|r
    .turnin 91920 >>Gebt die Quest Wilde Augen ab
    .accept 91921 >>Akzeptiert die Quest Rückkehr zu Quinn (erneut)
    .target Apothecary Renferrel
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwyn|r
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r
    .vendor >> Verkauft Müll
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .collect 1179,20,423,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto 1421/0,1568.4,567.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Andrea|r
    .vendor >> Kauft |T132491:0|t[|cRXP_FRIENDLY_Weisengürtel|r] von ihr, wenn er verfügbar ist
    .target Andrea Boynton
    .money <0.1400
step << Rogue
    .goto 1421/0,1576.38,571.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alexandre|r
    .vendor >> Kauft |T132539:0|t[|cRXP_FRIENDLY_Bewegliche Stiefel|r] von ihr, wenn sie verfügbar sind
    .target Alexandre Lefevre
    .money <0.2633
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_Legt den|r |T132491:0|t[|cRXP_FRIENDLY_Weisengürtel|r] an
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_Legt|r |T132539:0|t[|cRXP_FRIENDLY_Agile Stiefel|r] an
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step
    #completewith Shackles
    .goto 1421/0,1593.60,597.91,15,0--c:Silverpine Forest,44.20,38.17
    .goto 1421/0,1582.68,640.47,15,0--c:Silverpine Forest,44.46,36.65
    .goto 1421/0,1563.78,738.75,30 >> Reist den Hügel hinunter--c:Silverpine Forest,44.91,33.14
step
    #completewith Yorick3
    +|cRXP_WARN_Passt auf! Es könnte ein|r |cRXP_ENEMY_Sohn des Arugal|r |cRXP_WARN_im Gebiet sein! Das ist ein Elitegegner der Stufe 25. Haltet euch von ihn fern!|r
    .unitscan Son of Arugal
step
    #label Shackles
    #completewith Yorick3
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
    >>Tötet |cRXP_ENEMY_Moonrage-Nimmersatt|r und |cRXP_ENEMY_Moonrage-Dunkelseele|r. Plündert sie für |cRXP_LOOT_Dunkelseelenfessel|r
    >>|cRXP_WARN_Passt auf!|r |cRXP_ENEMY_Moonrage-Dunkelseele|r |cRXP_WARN_werden rasend, wenn ihre Gesundheit unter 25% fällt. Tötet sie schnell, wenn sie wenig Leben haben.|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
    .unitscan Son of Arugal
step
    #label Yorick3
    .goto 1421/0,1207.62,1293.71,8,0
    .goto 1421/0,1220.64,1299.59,8,0
    .goto 1421/0,1212.66,1298.19,8,0
    .goto 1421/0,1205.94,1314.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quinn Yorick|r im zweiten Stockwerk des Hauses
    .turnin 91921 >>Gebt die Quest Rückkehr zu Quinn (erneut) ab
    .target Quinn Yorick
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rane Yorick|r außerhalb
    .accept 425 >>Akzeptiert die Quest Ivar der Verfaulte
    .target Rane Yorick
step
    .goto 1421/0,1265.58,1274.11,6,0
    .goto 1421/0,1270.62,1279.71,6,0
    .goto 1421/0,1285.32,1277.19
    >>Tötet |cRXP_ENEMY_Ivar der Verfaulte|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Ivar ist durch zwei|r |cRXP_ENEMY_Sklave von Rabenklaue|r |cRXP_WARN_in der Scheune geschützt. Ihr könnt eine von ihnen solo pullen, wenn sie nach vorne patrouilliert|r
    >>|cRXP_WARN_Sie sind immun gegen Furcht!|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Gebt die Quest Ivar der Verfaulte ab
    .target Rane Yorick
step
    #label DecrepitFerry
    .goto 1421/0,997.62,692.55
    >>Klickt das |cRXP_PICK_Boot|r am Rand der Docks
    .turnin 438 >>Gebt die Quest Die verfallene Fähre ab
    .accept 439 >>Akzeptiert die Quest Auf den Spuren der Moderfelle
step
    #loop
    .goto 1421/0,1079.000,375.000,0
    .goto 1421/0,1079.000,375.000,30,0
    .goto 1421/0,1015.900,417.200,20,0
    .goto 1421/0,1134.400,301.200,40,0
    >>Tötet |cRXP_ENEMY_Moonrage-Nimmersatt|r und |cRXP_ENEMY_Moonrage-Dunkelseele|r. Plündert sie für |cRXP_LOOT_Dunkelseelenfessel|r
    >>|cRXP_WARN_Passt auf!|r |cRXP_ENEMY_Moonrage-Dunkelseele|r |cRXP_WARN_werden rasend, wenn ihre Gesundheit unter 25% fällt. Tötet sie schnell, wenn sie wenig Leben haben.|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
    .unitscan Son of Arugal
step
    #completewith next
    .goto 1421/0,1538.58,511.39,100 >> Reist zurück zum Grabmal
    .subzoneskip 228
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dalar|r
    .turnin 423 >>Gebt die Quest Arugals Torheit ab
    .accept 424 >>Akzeptiert die Quest Arugals Torheit
    .target Dalar Dawnweaver
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >> Betretet die Gruft
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadrec|r in der Gruft
    .turnin 439 >>Gebt die Quest Auf den Spuren der Moderfelle ab
    .accept 440 >>Akzeptiert die Quest Der gravierte Läuten
    .target High Executor Hadrec
step
    #completewith next
    .goto 1421/0,1077.84,380.35,10 >> Betretet die Mine--c:Silverpine Forest,56.48,45.94
step
    #label GrimsonthePale
    .goto 1421/0,990.48,410.87--c:Silverpine Forest,58.56,44.85
    >>Tötet |cRXP_ENEMY_Grimson der Blasse|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
step
    #hardcore
    .goto 1421/0,1354.62,-22.57
    >>Klickt die |cRXP_PICK_Kiste|r im Lager
    >>|cRXP_WARN_Passt auf! Diese Mobs wirken|r |T135846:0|t[Frostblitz] |cRXP_WARN_und fliehen bei niedriger Gesundheit. Zieht sie zurück und tötet sie einzeln, bis ihr sicher auf die Kiste klicken könnt.|r
    .turnin 477 >>Gebt die Quest Grenzübergänge ab
    .accept 478 >>Akzeptiert die Quest Karten und Runen
    .mob Dalaran Apprentice
step
    #label BorderCrossings
    #softcore
    .goto 1421/0,1354.62,-22.57
    >>Klickt die |cRXP_PICK_Kiste|r im Lager
    >>|cRXP_WARN_Seid vorsichtig die mobs wirken|r |T135846:0|t[Frostblitz]|r
    .turnin 477 >>Gebt die Quest Grenzübergänge ab
    .accept 478 >>Akzeptiert die Quest Karten und Runen
    .mob Dalaran Apprentice
step
    #completewith next
    #hardcore
    .goto 1421/0,1538.58,511.39,100 >> Reist zurück zum Grabmal--c:Silverpine Forest,45.51,41.26
    .subzoneskip 228
step
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Allister|r und |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Gebt die Quest Karten und Runen ab
    .accept 481 >>Akzeptiert die Quest Dalars Analyse
    .target +Shadow Priest Allister
    .goto 1421/0,1602.84,520.63
    .turnin 424 >>Gebt die Quest Arugals Torheit ab
    .turnin 481 >>Gebt die Quest Dalars Analyse ab
    .accept 482 >>Akzeptiert die Quest Dalaran Absichten
    .target +Dalar Dawnweaver
    .goto 1421/0,1593.6,554.23
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>Gebt die Quest Dalaran Absichten ab
    .target Shadow Priest Allister
step
    .goto 1421/0,1579.600,461.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tabitha Heartweaver::250686|r
    .accept 92401 >>Akzeptiert die Quest Eine erschrockene Bitte
    .target Tabitha Heartweaver::250686
    .xp <15,1
    .dungeon ROL
step
    .goto 1421/0,1533.96,474.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Gebt die Quest Nachschub für das Grabmal ab << Undead
    .accept 6323 >>Akzeptiert die Quest Flug nach Unterstadt << Undead
    .fp Sepulcher >> Erlernt die Flugroute am Grabmal << !Undead
    .fly Undercity >> Fliegt nach Unterstadt << !Undead
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    .hs >> Benutzt euren Ruhestein nach Unterstadt
    .use 6948
    .zoneskip Undercity
    .bindlocation 1497,1
step << Undead
    .goto 1458/0,283.37,1610.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >> Gebt die Quest Flug nach Unterstadt ab
    .accept 6322 >> Akzeptiert die Quest Michael Garrett
    .target Gordon Wendham
step << Rogue
    #ssf
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Louis Warren|r im Handelsviertel
    >>|cRXP_BUY_Kauft einen|r |T135343:0|t[Krummsäbel] |cRXP_BUY_bei ihm|r
    .collect 2027,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #ah
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Louis Warren|r im Handelsviertel
    >>|cRXP_BUY_Kauft einen|r |T135343:0|t[Krummsäbel] |cRXP_BUY_bei ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 2027,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith Conscript
    +|cRXP_WARN_Legt den|r |T135343:0|t[Krummsäbel] an
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Undead
    .goto 1458/0,266.20,1567.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Gebt die Quest Michael Garrett ab
    .target Michael Garrett
step << Rogue/Warrior
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Mary|r im Schurkenviertel
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .target Mary Edras
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,40 >> Stellt |T133685:0|t[Leinenverband] her bis euer skill 40 oder höher ist
    .itemcount 2589,1 --Linen Cloth (1+)
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Mary|r im Schurkenviertel
    .train 3276 >> Erlernt |T133688:0|t[Schwerer Leinenverband]
    .target Mary Edras
    .skill firstaid,<40,1
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,50 >> Stellt |T133688:0|t[Schwerer Leinenverband] her bis euer skill 50 oder höher ist
    .itemcount 2589,2 --Linen Cloth (2+)
step << Rogue/Warrior
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Mary|r im Schurkenviertel
    .train 3274 >> Erlernt Geselle für Erste Hilfe
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1886 >>Gebt die Quest Die Todespirscher ab
    .accept 1898 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .accept 1898 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Trainiere deine Klassenfähigkeiten
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .isOnQuest 1898 << Undead
--XX Only train if you were directed here for class quest as an Undead
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Trainiere deine Klassenfähigkeiten
    .target Carolyn Ward
    .xp <16,1
    .isOnQuest 1898 << Undead
step << Undead Rogue
    .goto 1458/0,347.07,1389.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Gebt die Quest Die Todespirscher ab
    .accept 1899 >>Akzeptiert die Quest Die Todespirscher
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto 1458/0,341.41,1385.90
    >>Plündert |cRXP_PICK_Andron's Bücherregal|r hinter |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step
    .goto 1458/0,310.900,1528.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alessandro Luca|r
    .accept 97891 >>Akzeptiert die Quest Zügige Tranklieferung
    .target Alessandro Luca
step
    #completewith next
    #optional
    .goto 1458,54.383,73.014,50,0 << !Undead/!Rogue
    .goto 1458,52.837,77.725,20,0
    .goto 1458,52.275,79.254,15,0
    .goto 1458,51.279,79.923,15,0
    .goto 1458,49.693,78.903,15,0
    .goto 1458,47.951,76.171,15 >>Reist zum Apothecarium
step
    .goto 1458/0,426.100,1403.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Doctor Martin Felben|r
    .complete 97891,1 --|1/1 Speak to Doctor Martin Felben
    .turnin 97891 >>Gebt die Quest Zügige Tranklieferung ab
    .target Doctor Martin Felben
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faranell|r und |cRXP_FRIENDLY_Zinge|r im Apothekarium
    .turnin 447 >>Gebt die Quest Rezept für den Tod ab
    .target +Master Apothecary Faranell
    .goto 1458/0,404.63,1434.67
    .turnin 1359 >> Gebt die Quest Zinges Lieferung ab
    .accept 1358 >> Akzeptiert die Quest Probe für Helbrim
    .target +Apothecary Zinge
    .goto 1458/0,391.97,1442.87
step
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Varimathras|r
    .accept 5725 >>Akzeptiert die Quest Die Macht zu Zerstören...
    .target Varimathras
    .dungeon RFC
step << Undead Rogue
    .goto 1458/0,71.83,1435.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1899 >>Gebt die Quest Die Todespirscher ab
    .accept 1978 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto 1420/0,373.60,1464.85,40,0
    .goto 1420/0,333.38,1287.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Gebt die Quest Die Todespirscher ab
    .target Varimathras
    .isQuestTurnedIn 1886
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,40 >> Stellt |T133685:0|t[Leinenverband] her bis euer skill 40 oder höher ist
    .itemcount 2589,1 --Linen Cloth (1+)
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Mary|r im Schurkenviertel
    .train 3276 >> Erlernt |T133688:0|t[Schwerer Leinenverband]
    .target Mary Edras
    .skill firstaid,<40,1
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,50 >> Stellt |T133688:0|t[Schwerer Leinenverband] her bis euer skill 50 oder höher ist
    .itemcount 2589,2 --Linen Cloth (2+)
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Mary|r im Schurkenviertel
    .train 3274 >> Erlernt Geselle für Erste Hilfe
    .target Mary Edras
    .skill firstaid,<50,1
step << Mage
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anastasia|r
    .train 2137 >> Trainiere deine Klassenfähigkeiten
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Mage
    #optional
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anastasia|r
    .train 2120 >> Trainiere deine Klassenfähigkeiten
    .target Anastasia Hartwell
    .xp <16,1
step << Undead Warlock
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Richard|r
    .train 6222 >> Trainiere deine Klassenfähigkeiten
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Undead Warlock
    #optional
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Richard|r
    .train 1455 >> Trainiere deine Klassenfähigkeiten
    .target Richard Kerwin
    .xp <16,1
step << Paladin
    .goto 1458/0,418.500,1782.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garen|r
    .train 647 >>Trainiere deine Klassenfähigkeiten
    .target Garen Largo
    .xp <14,1
    .xp >16,1
step << Paladin
    #optional
    .goto 1458/0,418.500,1782.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garen|r
    .train 7294 >>Trainiere deine Klassenfähigkeiten
    .target Garen Largo
    .xp <16,1
step << Priest/Mage/Warlock
    #ssf
    .goto 1458/0,206.04,1705.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zane Bradford|r im Magieviertel
    >>|cRXP_BUY_Kauft einen|r |T135468:0|t[Glimmender Zauberstab] |cRXP_BUY_von ihm|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #ah
    .goto 1458/0,206.04,1705.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zane Bradford|r im Magieviertel
    >>|cRXP_BUY_Kauft einen|r |T135468:0|t[Glimmender Zauberstab] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 5208,1 --Smoldering Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Legt den|r |T135468:0|t[Glimmender Zauberstab] |cRXP_WARN_an, wenn ihr Stufe 15 seid|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Legt den|r |T135468:0|t[Glimmender Zauberstab] an
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Undead Rogue
    #optional
    #completewith Conscript
    >>Brecht die Quest Die Todespirscher ab, es gibt keine Gelegenheit mehr, sie abzuschließen
    .abandon 1886 >> Brecht die Quest Die Todespirscher ab
    .isOnQuest 1886
step << Undead
    #completewith next
    .goto 1420/0,235.32,1883.89,50,0
    .zone Tirisfal Glades >> Verlasst Unterstadt
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
    .zone Durotar >>Nehmt den Zeppelin nach Durotar
    >>Macht Wetzsteine/Bandagen, während ihr wartet << Warrior/Rogue
    >>Zaubert Nahrung/Wasser herbei, während ihr wartet << Mage
    .zoneskip Durotar
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Skyborne Druid
    .goto 1450/1,-2678.76,8019.94--c:Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .turnin 94913 >>Gebt die Quest Mondlichtung ab
    .target Dendrite Starblaze
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 5178 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <14,1
    .xp >16,1
step << Druid
    #label DruidTraining1
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <16,1
step << Skyborne
    .hs >> Ruhestein nach Orgrimmar
    .use 6948
    .zoneskip Orgrimmar
    .bindlocation 1637,1
step << Skyborne
    #optional
    #label Silverpineskip
step << Undead
    #completewith HiddenEnemiesPickup
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Reist nach Orgrimmar
    .dungeon RFC
step << Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_Fliegt nicht irgendwohin!|r
    .fp Orgrimmar >> Erlernt die Orgrimmar-Flugroute
    .target Doras
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .dungeon RFC
step << Undead/Skyborne
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Durotar >> Verlasst Orgrimmar
    .dungeon RFC
step << Undead/Skyborne
    .goto 1411/1,-4769.10,1484.39,0
    >>Tötet |cRXP_ENEMY_Burning Blade|r Gegner in  der Knochenhöhle, bis |cRXP_LOOT_Insignien des Lieutenants|r dropt
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead/Skyborne
    #completewith Conscript
    .subzone 362 >> Reist nach Klingenhügel
step << !Undead !Skyborne
    .hs >> Benutzt euren Ruhestein zum Klingenhügel
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step << Rogue
    #optional << Undead
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
	.train 8122 >>Trainiere deine Klassenfähigkeiten
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >>Trainiere deine Klassenfähigkeiten
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >>Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
    .xp <16,1
step
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >> Reist zur Fernwacht
step
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step << !Undead !Skyborne
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Gebt die Quest Ak'zeloth ab
    .accept 924 >>Akzeptiert die Quest Die Dämonensaat
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << !Undead !Skyborne
    .goto 1413/1,-3694.2,259.22
    >>|cRXP_WARN_Plündert den|r |T134095:0|t[Fehlerhaften Kraftstein] |cRXP_WARN_neben|r |cRXP_FRIENDLY_Ak'zeloth|r|cRXP_WARN_. Dieser Gegenstand hat einen 30-Minuten-Timer, daher müsst ihr schnell sein|r
    .turnin 926 >>Gebt die Quest Fehlerhafter Kraftstein ab
    .isOnQuest 924

]])
