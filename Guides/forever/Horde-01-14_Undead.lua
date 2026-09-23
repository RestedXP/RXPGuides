local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Tirisfal Glades
#next 6-12 Tirisfal Glades

step << !Undead
    #completewith next
    +|cRXP_WARN_You have selected a guide meant for Undead. It is recommended you choose the same starter zone that you start in|r
step
    #completewith Zombies
	.destroy 6948 >> Destroy the |T134414:0|t[Hearthstone] in your bags, as it's no longer needed
step
    #completewith next
    .goto 1420/0,1675.90,1645.00,8,0
    .goto 1420/0,1665.51,1645.00,8,0
    .goto 1420/0,1667.77,1679.04,10 >> Run up out of the crypt toward |cRXP_FRIENDLY_Mordo|r
step
    .goto 1420/0,1667.77,1679.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordo|r
    .accept 363 >> Accept Rude Awakening
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto 1420/0,1646.08,1750.44,0 << Warrior/Warlock
    .goto 1420/0,1681.32,1719.710,40,0
    .goto 1420/0,1646.08,1750.44,40,0
    .goto 1420/0,1714.76,1760.68,40,0 << Priest/Mage
    .goto 1420/0,1718.38,1799.24,40,0 << Priest/Mage
    .goto 1420/0,1669.12,1869.73,40,0 << Priest/Mage
    +|cRXP_WARN_Kill |cRXP_ENEMY_Young Scavengers|r and |cRXP_ENEMY_Duskbats|r. Loot them until you have 60 copper worth of vendor items (including your armor)|r << Mage
    +|cRXP_WARN_Kill |cRXP_ENEMY_Young Scavengers|r and |cRXP_ENEMY_Duskbats|r. Loot them until you have 50 copper worth of vendor items (including your armor)|r << Priest
    +|cRXP_WARN_Kill |cRXP_ENEMY_Young Scavengers|r and |cRXP_ENEMY_Duskbats|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto 1420/0,1577.39,1860.09,8 >> Go inside the building
step << Priest/Mage
    #label Vendor
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venya|r and |cRXP_FRIENDLY_Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r << Mage
    .accept 1470 >>Accept Piercing the Veil << Warlock
    .goto 1420/0,1633.42,1836.9 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
    .target +Shadow Priest Sarvis
    .goto 1420/0,1639.75,1843.220
step << Warlock/Mage
    .goto 1420/0,1616.71,1842.92,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Accept The Damned
    .goto 1420/0,1638.85,1847.74
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Isabella
step << Warlock
    #label Vendor
    .goto 1420/0,1641.11,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayla|r
    .vendor >>Vendor Trash
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Maximillion
step << !Warlock !Mage
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Accept The Damned
    .goto 1420/0,1638.85,1847.74
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
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
    >>Kill |cRXP_ENEMY_Rattlecage Skeletons|r. Loot them for their |cRXP_LOOT_Rattlecage Skulls|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cRXP_WARN_Kill |cRXP_ENEMY_Mindless Zombies|r and |cRXP_ENEMY_Wretched Zombies|r. Loot them until you have 25 copper worth of vendor items (including your armor)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1633.42,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venya|r
    .turnin 1470 >>Turn in Piercing the Veil
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[Summon Imp]
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
    >>Kill |cRXP_ENEMY_Mindless Zombies|r and |cRXP_ENEMY_Wretched Zombies|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob +Mindless Zombie
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cRXP_WARN_Kill |cRXP_ENEMY_Mindless Zombies|r and |cRXP_ENEMY_Wretched Zombies|r. Loot them until you have 33 copper worth of vendor items (including your armor)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r and |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, and |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, and |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, and |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 364 >> Turn in The Mindless Ones
    .accept 3095 >> Accept Simple Scroll << Warrior
    .accept 3096 >> Accept Encrypted Scroll << Rogue
    .accept 3097 >> Accept Hallowed Scroll << Priest
    .accept 3098 >> Accept Glyphic Scroll << Mage
    .accept 3099 >> Accept Tainted Scroll << Warlock
    .accept 98601 >>Accept A Difficult Path << Paladin
    .accept 3901 >> Accept Rattling the Rattlecages
    .target +Shadow Priest Sarvis
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    .accept 376 >> Accept The Damned
    .target +Novice Elreth
    .goto 1420/0,1638.85,1847.74
    .turnin 3099 >> Turn in Tainted Scroll << Warlock
    .goto 1420/0,1636.59,1839.01 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >> Turn in Glyphic Scroll << Mage
    .goto 1420/0,1635.23,1847.44 << Mage
    .target +Isabella << Mage
    .turnin 3097 >> Turn in Hallowed Scroll << Priest
    .target +Dark Cleric Duesten << Priest
    .goto 1420/0,1627.55,1848.65 << Priest
step << Paladin
    .goto 1420/0,1628.400,1837.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aramis Hammerhand|r
    .turnin 98601 >>Turn in A Difficult Path
    .accept 90902 >>Accept Rediscovering the Light
    .target Aramis Hammerhand
    --90902 only 85xp, not worth doing
step << Paladin
    #completewith XPcheck
    >>|cRXP_WARN_Cast|r |T135920:0|t[Holy Light] |cRXP_WARN_on|r |cRXP_FRIENDLY_Injured Deathguards|r
    .complete 90902,1 --|5/5 Injured Deathguard healed
    .target Injured Deathguard
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
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
    >>Kill |cRXP_ENEMY_Young Scavengers|r and |cRXP_ENEMY_Ragged Scavengers|r. Loot them for their |cRXP_LOOT_Scavenger Paws|r
    >>Kill |cRXP_ENEMY_Duskbats|r and |cRXP_ENEMY_Mangy Duskbats|r. Loot them for their |cRXP_LOOT_Duskbat Wings|r
    >>|cRXP_WARN_Try to avoid |cRXP_ENEMY_Mangy Duskbats|r if you can due to them being much tougher to kill than |cRXP_ENEMY_Duskbats|r|r
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
    >>Kill |cRXP_ENEMY_Rattlecage Skeletons|r
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
    .xp 3+895 >>Grind to 895+/1400xp << Paladin
    .xp 3+940 >>Grind to 940+/1400xp << Warrior/Rogue
    .xp 3+980 >>Grind to 980+/1400xp << !Warrior !Rogue !Paladin
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Paladin
    .goto 1420/0,1593.500,1876.400
    >>|cRXP_WARN_Cast|r |T135920:0|t[Holy Light] |cRXP_WARN_on|r |cRXP_FRIENDLY_Injured Deathguards|r
    .complete 90902,1 --|5/5 Injured Deathguard healed
    .target Injured Deathguard
step << Mage/Warlock/Priest/Paladin
    .goto 1420/0,1576.04,1861.60,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r << !Paladin
    >>|cRXP_WARN_Do NOT go below 1 Silver|r << Mage/Warlock/Priest
    .vendor >> Vendor Trash
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r and |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >> Turn in Rattling the Rattlecages
    .target +Shadow Priest Sarvis
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    .turnin 376 >> Turn in The Damned
    .accept 6395 >> Accept Marla's Last Wish
    .target +Novice Elreth
    .goto 1420/0,1638.85,1847.74
step << Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .money >0.1
    .isOnQuest 90902
step
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aramis Hammerhand|r
    .turnin 90902 >>Turn in Rediscovering the Light << Paladin
    .accept 91208 >>Accept Coming to Terms << Paladin
    .accept 91209 >>Accept Continue Your Training << Paladin
    .accept 98389 >>Accept A Light in the Darkness
    .target Aramis Hammerhand
step << Paladin
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aramis Hammerhand|r
    .train 20271 >>Train |T135959:0|t[Judgement]
    .train 19740 >>Train |T135906:0|t[Blessing of Might]
    .target Aramis Hammerhand
    .money <0.02
step << Paladin
    #optional
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aramis Hammerhand|r
    .train 20271 >>Train |T135959:0|t[Judgement]
    .target Aramis Hammerhand
    .money <0.01
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Train your class spells
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    #optional
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .train 172 >> Train |T136118:0|t[Corruption]
    .target Maximillion
step << Mage
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Isabella
step
    .goto 1420/0,1616.71,1842.92,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r and |cRXP_FRIENDLY_Executor Arren|r
    .accept 3902 >> Accept Scavenging Deathknell
    .goto 1420/0,1604.96,1860.70
    .target +Deathguard Saltain
    .accept 380 >> Accept Night Web's Hollow
    .goto 1420/0,1580.56,1848.95
    .target +Executor Arren
step << Rogue/Warrior/Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Turn in Simple Scroll
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #optional
    #label Training2
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Turn in Simple Scroll
    .train 772 >> Train |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #optional
    #label Training2
    .goto 1420/0,1563.38,1859.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Turn in Encrypted Scroll
    .target David Trias
step << Rogue/Warrior/Paladin
    .goto 1420/0,1577.100,1854.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Walter Mason|r upstairs
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .train 2575 >> Train |T136248:0|t[Mining]
    .collect 2901,1,792,1 --Mining Pick (1)
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
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
    >>Open the |cRXP_PICK_Equipment Boxes|r on the ground. Loot them for the |cRXP_LOOT_Scavenged Goods|r
    .complete 3902,1 --Collect Scavenged Goods (x6)
step << Paladin
    >>Talk to the |cRXP_FRIENDLY_Frightened Paladin|r, kill her as she becomes hostile
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
    >>Kill |cRXP_ENEMY_Young Night Web Spiders|r
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
    >>Kill |cRXP_ENEMY_Young Night Web Spiders|r close to the cave entrance
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto 1420/0,1822.31,2048.07,15,0
    .goto 1420/0,1844.45,2042.050,30 >>Go inside the cave
step
    #completewith next
    >>Attack the |cRXP_ENEMY_Webbed Forsaken|r
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
    >>Kill |cRXP_ENEMY_Night Web Spiders|r inside the cave
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    .goto 1420/0,1921.500,2046.500
    >>Attack the |cRXP_ENEMY_Webbed Forsaken|r
    .complete 98389,1 --|6/6 Webbed Forsaken freed
    .mob Webbed Forsaken
step
    #softcore
    #completewith Scavenging
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[Summon Imp]
step << skip
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto 1420/0,1628.91,1882.99,30 >>|cRXP_WARN_Perform a Logout Skip inside the cave by jumping on top of a shredder, well, or the wooden plank stuck in the wall, then log out and back in|r
    >>|cRXP_WARN_Alternatively, run back to Deathknell|r
step
    #label Scavenging
    .goto 1420/0,1604.96,1860.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >> Turn in Scavenging Deathknell
    .target Deathguard Saltain
step
    #label NightWebH
    .goto 1420/0,1580.56,1848.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arren|r
    .turnin 380 >> Turn in Night Web's Hollow
    .accept 381 >> Accept The Scarlet Crusade
    .target Executor Arren
step
    .goto 1420/0,1628.400,1837.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aramis Hammerhand|r
    .turnin 91208 >>Turn in Coming to Terms << Paladin
    .turnin 98389 >>Turn in A Light in the Darkness
    .target Aramis Hammerhand
step << Rogue/Warrior/Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >> Vendor Trash
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
    >>Kill |cRXP_ENEMY_Scarlet Initiates|r and |cRXP_ENEMY_Scarlet Converts|r. Loot them for their |cRXP_LOOT_Scarlet Armbands|r
    >>|cRXP_WARN_Don't kill |cRXP_ENEMY_Meven Korgal|r yet|r
    >>|cRXP_WARN_Try to avoid |cRXP_ENEMY_Scarlet Initiates|r if you can as they have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows your attack speed)|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto 1420/0,1375.40,1979.69
    >>Kill |cRXP_ENEMY_Samuel|r. Loot him for |cRXP_LOOT_Samuel's Remains|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step
    .goto 1420/0,1624.84,1876.96
	>>Click |cRXP_PICK_Marla's Grave|r on the ground
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[Summon Imp]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elreth|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elreth|r and |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 6395 >> Turn in Marla's Last Wish
    .target +Novice Elreth
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1638.85,1847.74
    .accept 5651 >> Accept In Favor of Darkness << Priest
    .target +Dark Cleric Duesten << Priest
    .goto 1420/0,1627.55,1848.65 << Priest
step
    #sticky
    #label ScarletC
    .goto 1420/0,1580.56,1848.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arren|r
    .turnin 381 >> Turn in The Scarlet Crusade
    .accept 382 >> Accept The Red Messenger
    .target Executor Arren
step
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
step
    #requires ScarletC
    .goto 1420/0,1383.99,1764.30
    >>Kill |cRXP_ENEMY_Meven|r. Loot him for the |cRXP_LOOT_Scarlet Crusade Documents|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto 1420/0,1580.56,1848.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arren|r
    .turnin 382 >> Turn in The Red Messenger
    .accept 383 >> Accept Vital Intelligence
    .accept 96656 >> Accept The Adventurer
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
    .xp 5+1940 >>Grind to 1940+/2800xp << !Paladin
    .xp 5+1850 >>Grind to 1850+/2800xp << Paladin
step
    .goto 1420/0,1305.36,2127.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calvin|r
    .accept 8 >> Accept A Rogue's Deal
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Tirisfal Glades
#displayname 6-13 Tirisfal Glades << Paladin
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Silverpine Forest; 12-17 The Barrens

step
    .goto 1420/0,1184.71,2205.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Accept Fields of Grief
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordo|r
    >>|cRXP_WARN_He's an abomination that patrols along the road to Brill|r
    .accept 5481 >>Accept Gordo's Task
    .unitscan Gordo
step << Priest
    .goto 1420/0,656.92,2164.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowen|r
    .train 3908 >> Train |T136249:0|t[Tailoring]. Save up your |T132889:0|t[Linen Cloth]. This will allow you to create a wand later
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r or run to Brill
    .target Spirit Healer
step
    .goto 1420/0,391.400,2289.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Bartholomew|r
    .accept 86784 >>Accept Sticks and Bones
    .target Deathguard Bartholomew
step
    #completewith next
    >>Loot |cRXP_PICK_Dry Branches|r on the ground underneath trees near Brill
    .complete 86784,1 --|6/6 Dry Branch
step
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .accept 404 >>Accept A Putrid Task
    .target Deathguard Dillinger
step
    #loop
    .goto 1420/0,603.600,2268.300,40,0
    .goto 1420/0,539.700,2220.400,40,0
    .goto 1420/0,305.600,2180.100,40,0
    .goto 1420/0,375.600,2246.400,40,0
    .goto 1420/0,442.800,2259.400,40,0
    >>Loot |cRXP_PICK_Dry Branches|r on the ground underneath trees near Brill
    .complete 86784,1 --|6/6 Dry Branch
step
    .goto 1420/0,445.500,2165.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eleanor Shackleton|r
    .turnin 86784 >>Turn in Sticks and Bones
    .turnin 96656 >>Turn in The Adventurer
    .accept 96607 >>Accept The Great Outdoors
    .target Eleanor Shackleton
step
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Type /sit at the campfire and wait for one minute until you get the "Camp Benefits" buff|r
    .complete 96607,1 --|1/1 Use the /sit emote near the campfire
    .complete 96607,2 --|Gain the Boosted Rest buff
step
    .goto 1420/0,445.400,2166.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eleanor Shackleton|r
    .turnin 96607 >>Turn in The Great Outdoors
    .target Eleanor Shackleton
    .isQuestComplete 96607
    --.accept 96658 >>Accept Camping 101: Cooking
    --.accept 97959 >>Accept Camping 101: Mining
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Accept A New Plague
    .target Apothecary Johaan
    .xp <6,1
step
    .goto 1420/0,296.600,2278.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .turnin 383 >>Turn in Vital Intelligence
    .accept 427 >>Accept At War With The Scarlet Crusade
    .accept 99141 >>Accept Patience
    .accept 99134 >>Accept Discipline
    .target Executor Zygand
step
    #completewith Claws
    .use 286176 >>|cRXP_WARN_Use|r |T133490:0|t[Executor's Motivator] |cRXP_WARN_on any |cRXP_FRIENDLY_Deathguard|r in and around Brill|r
    .complete 99134,1 --|5/5 Deathguards motivated
    --too many .mobs, will cause clutter
step << Rogue
    .goto 1420/0,270.12,2253.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mrs. Winters|r|cRXP_BUY_. Buy |r |T135421:0|t[Weighted Throwing Axe] |cRXP_BUY_from her|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equip the|r |T135421:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 36c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from him|r
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Claws
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shari Stilwell|r
    .complete 91209,1 --|1/1 Report to Shari Stilwell in Brill
    .turnin 91209 >>Turn in Continue Your Training
    .target Shari Stilwell
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shari Stilwell|r
    .train 679 >>Train |T626003:0|t[Holy Strike]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from him|r
    .collect 2493,1,404,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith Claws
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    .turnin 8 >>Turn in A Rogue's Deal
    .home >> Set your Hearthstone to Brill
    .target Innkeeper Renee
    .bindlocation 2119
step
    #optional
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    .turnin 8 >>Turn in A Rogue's Deal
    .target Innkeeper Renee
    .isOnQuest 8
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_is on the second floor of the inn|r
    .accept 375 >>Accept The Chill of Death
    .target Gretchen Dedmar
    .xp <7,1
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
    .turnin 5651 >> Turn in In Favor of Darkness
    .accept 5650 >> Accept Garments of Darkness
	.train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .train 2052 >>Train |T135929:0|t[Lesser Heal Rank 2]
    .target Dark Cleric Beryl
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Cain Firesong
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto 1420/0,251.59,2252.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gina Lang|r on the second floor
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact] |cRXP_BUY_from her|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Vendor Trash
    .target Gina Lang
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .target Rupert Boch
step << Priest/Warlock
    .goto 1420/0,242.55,2284.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vance|r
    .train 7411 >> Train |T136244:0|t[Enchanting]
    >>|cRXP_WARN_This together with|r |T136249:0|t[Tailoring] |cRXP_WARN_will allow you to create a wand later|r
    .target Vance Undergloom
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Mage/Priest/Paladin
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warrior/Rogue
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_and|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warlock
    .collect 1179,15,367,1 << Mage/Priest/Paladin --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock/Paladin
    .target Innkeeper Renee
step
    .goto 1420/0,84.900,2023.500
    >>Talk to |cRXP_FRIENDLY_Deathguard Kristof|r
    >>|cRXP_WARN_Select "I need a report for Executor Zygand"|r
    .complete 99141,2 --|1/1 Kristof's Report
    .target Deathguard Kristof
step
    .goto 1420/0,77.200,2026.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shelene Rhobart|r
    .accept 97558 >>Accept Hides for the Forsaken
    .target Shelene Rhobart
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Accept A New Plague
    .target Apothecary Johaan
step << Priest
    .goto 1420/0,359.14,2436.99
    >>Cast |T135929:0|t[Lesser Heal] and |T135987:0|t[Power Word: Fortitude] on |cRXP_FRIENDLY_Deathguard Kel|r
    >>|cRXP_WARN_You need Lesser Heal Rank 2 for this quest|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Gordo2
    >>Loot the |cRXP_PICK_Gloom Weed|r on the ground
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith Pumkpins
    >>Kill |cRXP_ENEMY_Darkhounds|r. Loot them for their |cRXP_LOOT_Blood|r and |cRXP_LOOT_Hides|r
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
    >>Kill |cRXP_ENEMY_Rotting Dead|r and |cRXP_ENEMY_Ravaged Corpses|r. Loot them for their |cRXP_LOOT_Claws|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordo|r
    >>|cRXP_WARN_He's an abomination that patrols along the road to Brill|r
    >>|cRXP_WARN_Select "I need a report for Executor Zygand|r
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
    >>Finish looting the |cRXP_PICK_Gloom Weed|r on the ground
    .complete 5481,1 --Gloom Weed (3)
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_Start collecting 3 stacks of|r |T132889:0|t[Linen Cloth]|cRXP_WARN_. This will be used to make a|r |T135139:0|t[Lesser Magic Wand] |cRXP_WARN_later|r
    >>|cRXP_WARN_If you don't want to do this or you'd rather buy it from the Auction House later, skip this step|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_Start collecting 3 stacks of|r |T132889:0|t[Linen Cloth]|cRXP_WARN_. This will be used to make a|r |T135139:0|t[Lesser Magic Wand] |cRXP_WARN_later|r
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
    >>Loot the |cRXP_LOOT_Pumpkins|r found in the field
    .complete 365,1 --Tirisfal Pumpkin (10)
step
    #completewith Tescort
    >>Kill |cRXP_ENEMY_Scarlet Warriors|r
    >>|cRXP_WARN_Be careful as they have 50% increased parry for 8 seconds after they do their defense stance animation|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    .goto 1420/0,1587.700,2439.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bareth Dawnstone|r at the top of the tower
    >>|cRXP_WARN_This starts an escort quest|r
    >>|cRXP_WARN_Be careful!. At the top of the tower you can easily agro 3 |cRXP_ENEMY_Scarlet Warriors|r at the same time|r
    .accept 99144,1 >>Accept Seeking Refuge
    .target Bareth Dawnstone
step
    #label Tescort
    .goto 1420/0,1268.000,2368.200
    >>Escort |cRXP_FRIENDLY_Bareth Dawnstone|r out of Solliden Farmstead
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
    >>Kill |cRXP_ENEMY_Scarlet Warriors|r
    >>|cRXP_WARN_Be careful as they have 50% increased parry for 8 seconds after they do their defense stance animation|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    #loop
    .goto 1420/0,1238.600,2424.900,0
    .goto 1420/0,1238.600,2424.900,60,0
    .goto 1420/0,1204.800,2543.000,60,0
    .goto 1420/0,1122.600,2396.800 ,60,0
    >>Kill |cRXP_ENEMY_Darkhounds|r. Loot them for their |cRXP_LOOT_Blood|r and |cRXP_LOOT_Hides|r
    .complete 367,1 --Darkhound Blood (5)
    .complete 97558,2 --|6/6 Darkhound Hide
    .mob Decrepit Darkhound
step
    #hardcore
    #completewith BrillTurnin1
    .hs >> Hearth to Brill
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >> Travel back to Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_ Spirit Healer|r
step
    #softcore
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_He patrols around the graveyard|r
    .turnin 5481 >>Turn in Gordo's Task
    .accept 5482 >>Accept Doom Weed
    .target Junior Apothecary Holland
step
    #optional
    #completewith MetaBook
    .use 286176 >>|cRXP_WARN_Use|r |T133490:0|t[Executor's Motivator] |cRXP_WARN_on any |cRXP_FRIENDLY_Deathguard|r in and around Brill|r
    .complete 99134,1 --|5/5 Deathguards motivated
step
    .goto 1420/0,403.300,2287.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    >>|cRXP_WARN_Select "I need a report for Executor Zygand|r
    .turnin 404 >>Turn in A Putrid Task
    .accept 426 >>Accept The Mills Overrun
    .complete 99141,1 --|1/1 Dillinger's Report
    .target Deathguard Dillinger
    --.gossipoption 142723
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Turn in A New Plague
    .turnin 365 >>Turn in Fields of Grief
    .accept 368 >>Accept A New Plague
    .accept 407 >>Accept Fields of Grief
    .target +Apothecary Johaan
step
    .goto 1420/0,347.600,2265.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolai Anise|r
    .accept 95314 >>Accept That Shadowvale Green Elixir
    .target Carolai Anise
    .xp <7,1
step << Mage
    #label MetaBook
    >>Loot the |cRXP_PICK_Book|r in the shelf
    .collect 208185,1 --The Apothecary's Metaphysical Primer (x1
step
    #optional
    #loop
    .goto 1420/0,290.400,2272.900,30,0
    .goto 1420/0,257.200,2239.500,30,0
    .goto 1420/0,313.400,2259.400,30,0
    .use 286176 >>|cRXP_WARN_Use|r |T133490:0|t[Executor's Motivator] |cRXP_WARN_on any |cRXP_FRIENDLY_Deathguard|r in and around Brill|r
    .complete 99134,1 --|5/5 Deathguards motivated
step
    #label BrillTurnin1
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 427 >>Turn in At War With The Scarlet Crusade
    .accept 370 >>Accept At War With The Scarlet Crusade
    .turnin 99141 >>Turn in Patience
    .turnin 99134 >>Turn in Discipline
    .target Executor Zygand
step
    #completewith Doomweed
    #optional
    .destroy 286176 >>|cRXP_WARN_Destroy the|r |T133490:0|t[Executor's Motivator] |cRXP_WARN_as it's no longed needed for anything|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Wanted Poster|r and |cRXP_FRIENDLY_Sevren|r inside the building
    .accept 374 >>Accept Proof of Demise
    .target +Deathguard Burgess
    .goto 1420/0,280.06,2270.70
    .accept 398 >>Accept Wanted: Maggot Eye
    .goto 1420/0,288.64,2285.46
    .accept 358 >>Accept Graverobbers
    .target +Magistrate Sevren
    .goto 1420/0,265.15,2305.94
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shari Stilwell|r
    .turnin 99144 >>Turn in Seeking Refuge
    .train 853 >>Train your class spells
    .target Shari Stilwell
    .xp <8,1
step
    #optional << Paladin
    .goto 1420/0,311.900,2250.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shari Stilwell|r
    .turnin 99144 >>Turn in Seeking Refuge
    .target Shari Stilwell
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
    .turnin 5650 >>Turn in Garments of Darkness
    .train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Dark Cleric Beryl
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_is on the second floor of the inn|r
    .accept 375 >>Accept The Chill of Death
    .target Gretchen Dedmar
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 139 >> Train your class spells
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 205 >> Train your class spells
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 284 >> Train your class spells
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 6760 >> Train your class spells
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Train your class spells
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto 1420/0,240.29,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Try to make them during points at which you're waiting for things, such as Zeppelins|r
    .train 3273 >>Train |T135966:0|t[First Aid]
    .target Nurse Neela
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 36c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from him|r
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shari Stilwell|r
    .train 679 >>Train |T626003:0|t[Holy Strike]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from him|r
    .collect 2493,1,367,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mrs. Winters|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_from|r |cRXP_FRIENDLY_her|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_He patrols around the graveyard|r
    .turnin 5481 >>Turn in Gordo's Task
    .accept 5482 >>Accept Doom Weed
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
    >>Kill |cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Pelts|r and |cRXP_LOOT_Wing Membranes|r
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
    .xp 7+3260 >> Grind to 3260+/4500
--XX 700 (375)+540 (367)
step << Rogue/Warrior
    #optional
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Buy a|r |T132891:0|t[Coarse Thread] |cRXP_BUY_from her|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step << Rogue/Warrior
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Turn in The Chill of Death
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 284 >> Train your class spells
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 6760 >> Train your class spells
    .target Marion Call
    .xp <8,1
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 36c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from him|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #completewith next
    >>Loot the |cRXP_PICK_Doom Weed|r on the ground
    >>|cRXP_WARN_They are found near trees in the Gnoll area|r
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
    >>Kill |cRXP_ENEMY_Rot Hide Graverobbers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rot Hide Mongrels|r. Loot them for their |cRXP_LOOT_Ichor|r
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
    >>Loot the |cRXP_PICK_Doom Weed|r on the ground
    >>|cRXP_WARN_They are found near trees in the Gnoll area|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #completewith MaggotEye
    >>Kill |cRXP_ENEMY_Rot Hide Mongrels|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto 1420/0,382.63,2910.55
    >>Kill |cRXP_ENEMY_Maggot Eye|r. Loot him for his |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto 1420/0,332.48,2862.35,0
    .goto 1420/0,380.38,2768.97,50,0
    .goto 1420/0,332.48,2862.35,50,0
    .goto 1420/0,401.16,2895.19,50,0
    .goto 1420/0,318.47,2696.36,50,0
    >>Kill |cRXP_ENEMY_Rot Hide Mongrels|r. Loot them for their |cRXP_LOOT_Ichor|r
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
    >>Kill |cRXP_ENEMY_Rot Hide Gnolls|r. Loot them for their |cRXP_LOOT_Ichor|r
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
    >>Kill |cRXP_ENEMY_Vile Fin Murlocs|r. Loot them for their |cRXP_LOOT_Scales|r and |cRXP_LOOT_Murloc Skin|r
    >>|cRXP_ENEMY_Vile Fin Puddlejumpers|r |cRXP_WARN_do NOT drop|r |cRXP_LOOT_Vile Fin Murloc Skin|r
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
    >>Kill |cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Pelts|r and |cRXP_LOOT_Wing Membranes|r
    .complete 375,1 --Duskbat Pelt (5)
    .complete 97558,1 --|8/8 Duskbat Wing Membrane
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #completewith Brill3
    .hs >> Hearth to Brill
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #completewith Brill3
    .subzone 159 >> Travel back to Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step << skip
    #softcore
    #completewith Brill3
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r
    .accept 354 >>Accept Deaths in the Family
    .accept 362 >>Accept The Haunted Mills
    .target Coleman Farthing
step
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Buy a|r |T132891:0|t[Coarse Thread] |cRXP_BUY_from her|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto 1420/0,295.87,2277.93+
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Turn in Wanted: Maggot Eye
    .target Executor Zygand
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r
    .turnin 358 >>Turn in Graverobbers
    .accept 405 >>Accept The Prodigal Lich << Mage/Warlock
    .accept 359 >>Accept Forsaken Duties
    .target Magistrate Sevren
step
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Turn in The Chill of Death
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 139 >> Train your class spells
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 205 >> Train your class spells
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 284 >> Train your class spells
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 6760 >> Train your class spells
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Train your class spells
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto 1420/0,240.29,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Try to make them during points at which you're waiting for things, such as Zeppelins|r
    .train 3273 >>Train |T135966:0|t[First Aid]
    .target Nurse Neela
step
    #label Brill3
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Mage/Priest/Paladin
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warrior/Rogue
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_and|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warlock
    .collect 1179,20,426,1 << Mage/Priest/Paladin --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock/Paladin
    .target Innkeeper Renee
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shari Stilwell|r
    .train 853 >>Train your class spells
    .target Shari Stilwell
    .xp <8,1
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 36c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from him|r
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shari Stilwell|r
    .train 679 >>Train |T626003:0|t[Holy Strike]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from him|r
    .collect 2493,1,354,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << skip --Rogue/Warrior
    #softcore
    .goto 1420/0,308.08,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eliza Callen|r
    .vendor >>Repair your weapon
    .target Eliza Callen
step
    .goto 1420/0,76.000,2026.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shelene Rhobart|r
    .turnin 97558 >>Turn in Hides for the Forsaken
    .target Shelene Rhobart
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linnea|r
    .turnin 359 >>Turn in Forsaken Duties
    .accept 360 >>Accept Return to the Magistrate
    .accept 356 >>Accept Rear Guard Patrol
    .target Deathguard Linnea
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .turnin 368 >>Turn in A New Plague
    .accept 369 >>Accept A New Plague
    .target Apothecary Johaan
step
    #label DoomedWeed
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_He patrols around the graveyard|r
    .turnin 5482 >>Turn in Doom Weed
    .accept 99142 >>Accept Tomb Weed
    .target Junior Apothecary Holland
step
    #label AgamandStart
    .goto 1420/0,882.41,2511.1,100,0
    .goto 1420/0,892.80,2520.74
    .subzone 157 >> Travel North/West toward Agamand Mills
    .isOnQuest 362
step
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Thurman's Letter|r] |cRXP_WARN_may drop from these mobs. Accept the quest if it does|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Accept A Letter Undelivered
    .use 2839
step
    #completewith ThurmanGregor
    >>Kill |cRXP_ENEMY_Soldiers|r and |cRXP_ENEMY_Bonecasters|r. Loot them for their |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #label KillDevlin
    .goto 1420/0,894.16,2609.00
    >>Kill |cRXP_ENEMY_Devlin|r. Loot him for his |cRXP_LOOT_Remains|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto 1420/0,803.78,2752.40
    >>Kill |cRXP_ENEMY_Nissa|r. Loot her for her |cRXP_LOOT_Remains|r. She can be inside the building
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
    >>Kill |cRXP_ENEMY_Thurman|r and |cRXP_ENEMY_Gregor|r. Loot them for their |cRXP_LOOT_Remains|r
    >>|cRXP_WARN_They can patrol around|r
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
    >>Kill |cRXP_ENEMY_Soldiers|r and |cRXP_ENEMY_Bonecasters|r. Loot them for their |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Skulls|r
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
    .xp 9+3840 >> Grind to 4320+/6500xp
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
    .xp 9+3360 >> Grind to 3360+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
step
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >> Travel back to Brill
step
    #softcore
    #completewith FoodandWater2
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    .goto 1420/0,403.42,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Turn in The Mills Overrun
    .target Deathguard Dillinger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yvette|r and |cRXP_FRIENDLY_Coleman|r
    .turnin 361 >>Turn in A Letter Undelivered
    .target +Yvette Farthing
    .goto 1420/0,250.69,2252.920
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .target +Coleman Farthing
    .goto 1420/0,244.36,2262.26
    .isOnQuest 361
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .target Coleman Farthing
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r
    .turnin 360 >>Turn in Return to the Magistrate
    .turnin 355 >>Turn in Speak with Sevren
    .target Magistrate Sevren
    .xp >10,1 --turnin later if lvl 10 already
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.trainer >> Train your class spells
    .target Dark Cleric Beryl
step << Warrior
    #optional
    .abandon 1505 >>Abandon Veteran Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandon Path of Defense
    .isOnQuest 1498
step << Warrior
    .goto 1420/0,238.49,2254.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .trainer >> Train your class spells
    .accept 1818 >> Accept Speak with Dillinger
    .target Austil de Mon << Warrior
    .isQuestAvailable 1498
step << Warlock
    .goto 1420/0,248.88,2251.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ageron|r inside the inn
    .accept 1478 >> Accept Halgar's Summons
    .target Ageron Kargal
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 707 >> Train your class spells
    .target Rupert Boch
step << Rogue
    .goto 1420/0,243.01,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r inside the inn
    .trainer >> Train your class spells
    .accept 1885 >>Accept Mennet Carkad
    .target Marion Call
step << Mage
    .goto 1420/0,233.52,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r inside the inn
    .accept 1881 >> Accept Speak with Anastasia
    .target Cain Firesong
step
    #label FoodandWater2
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r <<Warrior/Rogue
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_and|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warlock
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Turn in Speak with Dillinger
    .accept 1819 >> Accept Ulag the Cleaver
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,360.04,2376.14
    >>|cRXP_WARN_Click on the skull on the ground. This will summon|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Kill him|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Turn in Ulag the Cleaver
    .accept 1820 >> Accept Speak with Coleman
    .target Deathguard Dillinger
step
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Terrence|r
    .accept 96895 >>Accept The Argent Emissary
    .target Deathguard Terrence
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shari Stilwell|r
    .accept 91282 >>Accept A Second Home
    .trainer >>Train your class spells
    .target Shari Stilwell
step << Warlock
    #completewith next
    .goto 1420/0,240.75,1877.57,20 >> Enter Undercity
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r in the Magic Quarter
    .turnin 1478 >> Turn in Halgar's Summons
    .accept 1473 >> Accept Creature of the Void
step << Warlock
    .goto 1458/0,66.74,1766.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethor|r in the Magic Quarter
    .turnin 405 >>Turn in The Prodigal Lich
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
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Tirisfal Glades
step << Warlock
    #completewith next
    .goto 1420/0,726.06,1801.95
    >>Loot |cRXP_PICK_Perrine's Chest|r for |T133733:0|t[Egalin's Grimoire]
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
    >>Kill |cRXP_ENEMY_Captain Perrine|r, |cRXP_ENEMY_Scarlet Zealots|r and |cRXP_ENEMY_Scarlet Missionaries|r. Loot them for their |cRXP_LOOT_Scarlet Insignia Rings|r
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
    >>Loot |cRXP_PICK_Perrine's Chest|r on the ground for |T133733:0|t[Egalin's Grimoire]
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
    .zone Undercity >> Travel into the Undercity through the sewers
    .zoneskip Undercity
step << Rogue
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Archibald|r in the War Quarter
    .train 201 >>Train 1h Swords
    .target Archibald
step << Warrior/Rogue
    .goto 1458/0,335.37,1638.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brom|r
    .train 2575 >> Train |T136248:0|t[Mining]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target Brom Killian
step << Warrior/Rogue
    .goto 1458/0,329.04,1641.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarah|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_Sarah|r
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto 1458/0,295.94,1691.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Basil Frye|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r in the Magic Quarter
    .turnin 1473 >> Turn in Creature of the Void
    .accept 1471 >> Accept The Binding
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Use the|r |T134416:0|t[Runes of Summoning] |cRXP_WARN_at the Summoning Circle|r
    .use 6284
step << Warlock
    .goto 1458/0,41.99,1704.480
    >>Kill the |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto 1458/0,57.34,1711.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Turn in The Binding
    .target Carendin Halgar
step << Warrior
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Charles Seaton|r in the Rogue Quarter
    >>|cRXP_BUY_Buy a|r |T135350:0|t[Claymore] |cRXP_BUY_from him|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2676
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Charles Seaton|r in the Rogue Quarter
    >>|cRXP_BUY_Buy a|r |T135350:0|t[Claymore] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equip the|r |T135350:0|t[Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Charles Seaton|r in the Rogue Quarter
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Charles Seaton|r in the Rogue Quarter
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equip the|r |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto 1458/0,129.68,1560.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Steenwick|r in the Rogue Quarter
    >>|cRXP_BUY_Buy|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_from him|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Remember to equip the|r |T135425:0|t[Keen Throwing Knives] |cRXP_WARN_when you are level 11|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equip the|r |T135425:0|t[Keen Throwing Knives]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    .goto 1458/0,71.92,1435.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Turn in Mennet Carkad
    .accept 1886 >>Accept The Deathstalkers
    .target Mennet Carkad
step << Mage
    .goto 1458/0,168.600,1662.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Owen Thadd|r
    .turnin 79095 >>Turn in The Apothecary's Metaphysical Primer
    .target Owen Thadd
    .itemcount 208185,1
step << Mage
    #optional
    .abandon 1883 >> Abandon Speak with Un'thuwa, otherwise you won't be able to accept the upcoming quest
    .isOnQuest 1883
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r in the Magic Quarter
    .turnin 1881 >> Turn in Speak with Anastasia
    .accept 1882 >> Accept The Balnir Farmstead
    .target Anastasia Hartwell
step << Mage
    .goto 1458/0,66.74,1766.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethor|r in the Magic Quarter
    .turnin 405 >>Turn in The Prodigal Lich
    --.accept 357 >>Accept The Lich's Identity
    .target Bethor Iceshard
step << Paladin
    #label UCHome
    .goto 1458/0,223.31,1634.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norman|r
    .home >> Set your Hearthstone to Undercity
    .target Innkeeper Norman
    .bindlocation 1497
step
    #optional
    #label LogoutSkip1
step << skip
    .goto 1458/0,59.07,1747.75
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLICK HERE for an example|r
    >>|cRXP_WARN_If you can't do this, just run out of Undercity normally|r
step
    #completewith AtWarS
    .goto 1420/0,235.32,1883.89
    .zone Tirisfal Glades >> Exit Undercity
    .zoneskip Tirisfal Glades
step << Undead Rogue
    #sticky
    #completewith ArriveBalnir
    >>|cRXP_WARN_If you see|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, talk to him and kill him. Loot him for the letter. He patrols the road between Brill and The Sepulcher|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step
    #optional
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Turn in Proof of Demise
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #label AtWarS
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Turn in At War With The Scarlet Crusade
    .accept 371 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
step
    .goto 1420/0,270.12,2253.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mrs. Winters|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_from|r |cRXP_FRIENDLY_her|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Turn in Speak with Coleman
    .target Coleman Farthing
step
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96895 >>Turn in The Argent Emissary
    .accept 96897 >>Accept The Cult of the Damned
    .accept 96898 >>Accept Remnants of War
    .target Hadric Harlson
step
    .goto 1420/0,-130.500,1907.800
    >>Kill |cRXP_ENEMY_Dark Enforcers|r and |cRXP_ENEMY_Dark Neophytes|r. Loot them for |cRXP_LOOT_Necrotic Crystal Fragments|r
    >>|cRXP_LOOT_Necrotic Crystal Fragments|r |cRXP_WARN_can also be looted on the ground|r
    >>|cRXP_WARN_Be careful! These mobs hit hard. |cRXP_ENEMY_Dark Enforcers|r also have an instant cast 50-70 damage ability|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96897 >>Turn in The Cult of the Damned
    .turnin 96898 >>Turn in Remnants of War
    .accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson
step
    #label ArriveBalnir
    .goto 1420/0,-423.96,1976.68
    .subzone 165 >>Travel to Balnir Farmstead
    .isOnQuest 356
step
    #completewith HorrorsandSpirits
    >>Loot the |cRXP_PICK_Tomb Weed|r on the ground
    .complete 99142,1 --|5/5 Tomb Weed
step << Mage
    #completewith next
    >>Kill |cRXP_ENEMY_Bleeding Horrors|r and |cRXP_ENEMY_Wandering Spirits|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    .goto 1420/0,-467.79,1969.75
    >>Loot any of the plants on the ground for a |cRXP_PICK_Balnir Snapdragon|r
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
    >>Kill |cRXP_ENEMY_Bleeding Horrors|r and |cRXP_ENEMY_Wandering Spirits|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step
    .goto 1420/0,-354.800,2049.000
    >>Loot the |cRXP_PICK_Tomb Weed|r on the ground
    .complete 99142,1 --|5/5 Tomb Weed
step << Paladin
    #completewith ViciousVenom
    >>|cRXP_WARN_Save 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for a quest later. Make sure you do not sell it|r
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
    >>Kill |cRXP_ENEMY_Scarlet Friars|r and |cRXP_ENEMY_Scarlet Zealots|r. Loot them for their |cRXP_LOOT_Scarlet Insignia Rings|r
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
    >>Kill |cRXP_ENEMY_Scarlet Friars|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    .goto 1420/0,-528.35,2146.28
    >>Kill |cRXP_ENEMY_Captain Vachon|r inside the tower
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
    >>Kill |cRXP_ENEMY_Vicious Night Web Spiders|r. Loot them for their |cRXP_LOOT_Venom|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step << skip
    .goto 1420/0,-38.06,2569.54
    >>Loot |cRXP_PICK_Gunther's Books|r for |cRXP_LOOT_The Lich's Spellbook|r on the island in Brightwater Lake
    .complete 357,1 --The Lich's Spellbook (1)
step
    --#hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >> Travel back to Brill
    .subzoneskip 159
step << skip
    #softcore
    #completewith ANewPlagueFinal
    .goto 1420/0,23.85,2483.38
    .deathskip >> Die |cRXP_WARN_ON THE SMALLER ISLAND|r and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    .goto 1420/0,346.94,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Turn in A New Plague
    .accept 492 >>Accept A New Plague
    .accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Turn in At War With The Scarlet Crusade
    --.accept 372 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r
    .turnin 360 >>Turn in Return to the Magistrate
    .turnin 355 >>Turn in Speak with Sevren
    .target Magistrate Sevren
step
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Turn in Proof of Demise
    .target Deathguard Burgess
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Renee
step
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Captured Scarlet Zealot|r and the |cRXP_FRIENDLY_Captured Mountaineer|r downstairs in the back of the inn
    .turnin 407 >>Turn in Fields of Grief
    .goto 1420/0,233.06,2292.39
    .target +Captured Scarlet Zealot
    .turnin 492 >> Turn in A New Plague
    .goto 1420/0,234.42,2289.070
    .target +Captured Mountaineer
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.trainer >> Train your class spells
    .target Dark Cleric Beryl
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Train Train your class spells
    .target Austil de Mon
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Train your class spells
    .target Rupert Boch
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r
    .train 1766 >> Train your class spells
    .target Marion Call
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r inside the inn
    .train 145 >> Train your class spells
    .target Cain Firesong
    .xp <12,1
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shari Stilwell|r
    .train 678 >> Train your class spells
    .target Shari Stilwell
    .xp <12,1
step
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r
    >>|cRXP_WARN_He patrols around the graveyard|r
    .turnin 99142 >>Turn in Tomb Weed
    .target Junior Apothecary Holland

    --Bandarion Keep section

step
    #completewith next
    .goto 1420/0,1732.500,2437.900,50,0
    .goto 1420/0,1834.300,2424.000,50,0
    .goto 1420/0,1963.100,2340.600,50,0
    .goto 1420/0,2041.000,2352.500,50,0
    .goto 1420/0,2049.900,2463.200,50 >>Travel to Bandarion Keep
step << Paladin
    .goto 1420/0,2045.900,2475.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breton Samuels|r
    .turnin 91282 >>Turn in A Second Home
    .accept 91285 >>Accept Murlocs at the Gates
    .target Breton Samuels
step
    .goto 1420/0,2038.000,2490.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r upstairs
    .turnin 96899 >>Turn in Bandarion Keep
    .accept 96896 >>Accept A Righteous Cause
    .target Leonid Barthalomew the Revered
step
    .goto 1420/0,2038.000,2490.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r upstairs
    .turnin 96896 >>Turn in A Righteous Cause
    .accept 98545 >>Accept Leonid's Letter
    .target Leonid Barthalomew the Revered
step
    .goto 1420/0,2041.200,2416.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda the Breaker|r outside
    .accept 99152 >>Accept As Above, So Below
    .target Hilda the Breaker
step
    .goto 1420/0,2122.100,2436.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ephram Barbaro|r outside
    .accept 99153 >>Accept The One That Got Away
    .target Ephram Barbaro
step << Paladin
    #loop
    .goto 1420/0,2424.200,2151.900,0
    .goto 1420/0,2212.000,2022.600,0
    .goto 1420/0,2424.200,2151.900,50,0
    .goto 1420/0,2212.000,2022.600,50,0
    >>Kill |cRXP_ENEMY_Vile Fin Seers|r and |cRXP_ENEMY_Vile Fin Attackers|r
    .complete 91285,2 --|8/8 Vile Fin Seer slain
    .mob +Vile Fin Seer
    .complete 91285,1 --|8/8 Vile Fin Attacker slain
    .mob +Vile Fin Attacker
step << Paladin
    .goto 1420/0,2045.800,2475.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breton Samuels|r
    .turnin 91285 >>Turn in Murlocs at the Gates
    .accept 91294 >>Accept Touring the Grounds
    .target Breton Samuels
    --very good weapon upgrade 8.9 dps (Wooden Mallet 5.0 dps)
step << Paladin -- paladin trainer outside
    .goto 1420/0,2038.800,2415.900
    >>Talk to |cRXP_FRIENDLY_Hilda the Breaker|r
    .complete 91294,1 --|1/1 Speak with Hilda the Breaker
    .target Hilda the Breaker
step << Paladin --patrols the road
    .goto 1420/0,1961.100,2334.600
    >>Talk to |cRXP_FRIENDLY_Ander Solliden|r
    >>|cRXP_WARN_He patrols the road|r
    .complete 91294,3 --|1/1 Speak with Ander Solliden
    .target Ander Solliden
    --TODO: Patrol path
step << Paladin --inside keep
    .goto 1420/0,2007.900,2491.200
    >>Talk to |cRXP_FRIENDLY_Jorin Croge|r
    .complete 91294,2 --|1/1 Speak with Jorin Croge
    .target Jorin Croge
step << Paladin --upstairs in keep
    .goto 1420/0,2035.100,2492.200
    >>Talk to |cRXP_FRIENDLY_Danitha Morr|r
    .complete 91294,4 --|1/1 Speak with Danitha Morr
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2035.100,2492.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 91294 >>Turn in Touring the Grounds
    .accept 91317 >>Accept The Tarnished
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2007.800,2491.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorin Croge|r
    .accept 91316 >>Accept Making Repairs
    .target Jorin Croge
step << Paladin
    #completewith next
    >>Kill |cRXP_ENEMY_Tarnished Zealots|r and |cRXP_ENEMY_Tarnished Drudges|r
    .complete 91317,3 --|6/6 Tarnished Zealot slain
    .mob +Tarnished Zealot
    .complete 91317,2 --|8/8 Tarnished Drudge slain
    .mob +Tarnished Drudge
step << Paladin
    .goto 1420/0,2514.600,1903.600
    >>Kill |cRXP_ENEMY_Rudolph Gelhardt|r upstairs. Loot him for his |cRXP_LOOT_Head|r
    .complete 91317,1 --|1/1 Rudolph Gelhardt's Head
    .mob Rudolph Gelhardt
step << Paladin
    .goto 1420/0,2487.700,1910.000
    >>Kill |cRXP_ENEMY_Tarnished Zealots|r and |cRXP_ENEMY_Tarnished Drudges|r
    .complete 91317,3 --|6/6 Tarnished Zealot slain
    .mob +Tarnished Zealot
    .complete 91317,2 --|8/8 Tarnished Drudge slain
    .mob +Tarnished Drudge
step
    #label ShadowValeCrypt
    .goto 1420/0,2449.500,1857.600,10 >>Enter the Shadowvale Crypt
    .isOnQuest 99152,95314,99153
step
    #requires ShadowValeCrypt
    #completewith GlowingFragment
    >>Kill |cRXP_ENEMY_Shadowvale Lurchers|r and |cRXP_ENEMY_Shadowvale Mystics|r. Loot them for their |cRXP_LOOT_Faintly Glowing Bones|r
    .complete 99152,1 --|6/6 Faintly Glowing Bone
    .mob Shadowvale Lurcher
    .mob Shadowvale Mystic
step
    #requires ShadowValeCrypt
    #completewith GlowingBones
    >>Loot the |cRXP_PICK_Lumber Piles|r on the ground << Paladin
    >>Loot the |cRXP_PICK_Bottles of Whispering Elixir|r on the ground and on the walls
    .complete 91316,1 << Paladin--|12/12 Sturdy Lumber
    .complete 95314,1 --|8/8 Bottle of Whispering Elixir
step
    .goto 1420/0,2648.100,2027.200
    .use 268812 >>Kill the |cRXP_ENEMY_Whispering Horror|r (elite). Loot him for |T134438:0|t[|cRXP_LOOT_Whispering Horror Residue|r]
    >>|cRXP_WARN_This is hard! Group up if possible. It has 700 health but his damage is manageable. Skip this step if you can't kill it|r
    .collect 268812,1,95328 --Whispering Horror Residue (x1)
    .accept 95328 >>Accept Whispering Horror Residue
    .mob Whispering Horror
step
    #requires ShadowValeCrypt
    #label GlowingFragment
    .goto 1420/0,2592.400,1748.400
    >>Loot the |cRXP_PICK_Glowing Crystal Fragment|r on the ground
    .complete 99153,1 --|1/1 Glowing Crystal Fragment
step
    #requires ShadowValeCrypt
    #label GlowingBones
    .goto 1420/0,2556.100,1868.800
    >>Kill |cRXP_ENEMY_Shadowvale Lurchers|r and |cRXP_ENEMY_Shadowvale Mystics|r. Loot them for their |cRXP_LOOT_Faintly Glowing Bones|r
    .complete 99152,1 --|6/6 Faintly Glowing Bone
    .mob Shadowvale Lurcher
    .mob Shadowvale Mystic
step
    #requires ShadowValeCrypt
    .goto 1420/0,2647.800,1815.500
    >>Loot the |cRXP_PICK_Lumber Piles|r on the ground << Paladin
    >>Loot the |cRXP_PICK_Bottles of Whispering Elixir|r on the ground and on the walls
    .complete 91316,1 << Paladin--|12/12 Sturdy Lumber
    .complete 95314,1 --|8/8 Bottle of Whispering Elixir
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    .goto 1420/0,2037.100,2416.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda the Breaker|r
    .turnin 99152 >>Turn in As Above, So Below
    .target Hilda the Breaker
step
    .goto 1420/0,2122.500,2436.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ephram Barbaro|r
    .turnin 99153 >>Turn in The One That Got Away
    .target Ephram Barbaro
step << Paladin
    .goto 1420/0,2008.000,2491.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorin Croge|r
    .turnin 91316 >>Turn in Making Repairs
    .target Jorin Croge
step << Paladin
    .goto 1420/0,2035.100,2492.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 91317 >>Turn in The Tarnished
    .accept 95803 >>Accept A Token of Good Faith
    .accept 94427 >>Accept A Lesson in Divinity
    .target Danitha Morr
step << !Paladin
    #completewith BrillTurnin2
    .hs >> Hearth to Brill
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step << !Paladin
    #completewith BrillTurnin2
    .subzone 159 >> Travel back to Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step << !Paladin
    .goto 1420/0,347.600,2265.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolai Anise|r
    .turnin 95314 >>Turn in That Shadowvale Green Elixir
    .target Carolai Anise
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.trainer >> Train your class spells
    .target Dark Cleric Beryl
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Train Train your class spells
    .target Austil de Mon
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Train your class spells
    .target Rupert Boch
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r
    .train 1766 >> Train your class spells
    .target Marion Call
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r inside the inn
    .train 145 >> Train your class spells
    .target Cain Firesong
    .xp <12,1
step << Rogue
    #completewith EnterUC2
    >>|cRXP_WARN_If you see|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, talk to him and kill him. Loot him for the letter. He patrols the road between Brill and The Sepulcher|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << !Paladin
    #label BrillTurnin2
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Turn in Rear Guard Patrol
    .target Deathguard Linnea
step << !Paladin
    #label EnterUC2
    #completewith Glix
    .goto 1420/0,240.75,1877.57,20 >> Enter Undercity
    .zoneskip Undercity
step << !Paladin
    #completewith Glix
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
step << !Paladin
    .goto 1458/0,223.31,1634.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norman|r
    .home >> Set your Hearthstone to Undercity
    .target Innkeeper Norman
    .bindlocation 1497
step << Paladin
    #completewith Glix
    .hs >> Hearth to Undercity
    .cooldown item,6948,>0,1
    .bindlocation 1497,1
    .zoneskip Undercity
step << Paladin --trade quarter
    .goto 1458/0,245.300,1637.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tanis Alderwood|r
    >>|cRXP_WARN_Make sure you have 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_in your bag|r
    .turnin 94427 >>Turn in A Lesson in Divinity
    .accept 94434 >>Accept A Lesson in Divinity
    .turnin 94434 >>Turn in A Lesson in Divinity
    .accept 94435 >>Accept A Lesson in Divinity
    .target Tanis Alderwood
step
    #label Glix
    .goto 1458/0,201.400,1575.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glix Xizzix|r
    .turnin 98545 >>Turn in Leonid's Letter
    .target Glix Xizzix
step << Rogue
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Charles Seaton|r in the Rogue Quarter
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Charles Seaton|r in the Rogue Quarter
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_Equip the|r |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Charles Seaton|r in the Rogue Quarter
    >>|cRXP_BUY_Buy a|r |T135350:0|t[Claymore] |cRXP_BUY_from him|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Charles Seaton|r in the Rogue Quarter
    >>|cRXP_BUY_Buy a|r |T135350:0|t[Claymore] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_Equip the|r |T135350:0|t[Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
    >>|cRXP_BUY_Buy Three|r |T133884:0|t[Murloc Eyes] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Skip this if you want, it's only a small time saver|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Rhyker
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r in the Magic Quarter
    .turnin 1882 >>Turn in The Balnir Farmstead
    .target Anastasia Hartwell
step << Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .turnin 1886 >>Turn in The Deathstalkers
    .target Mennet Carkad
    .isQuestComplete 1886
step << Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .accept 1898 >>Accept The Deathstalkers
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,347.07,1389.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Turn in The Deathstalkers
    .accept 1899 >>Accept The Deathstalkers
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,341.41,1385.90
    >>Loot |cRXP_PICK_Andron's Bookshelf|r behind |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,71.83,1435.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .turnin 1899 >>Turn in The Deathstalkers
    .accept 1978 >>Accept The Deathstalkers
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1420/0,373.60,1464.85,40,0
    .goto 1420/0,333.38,1287.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Turn in The Deathstalkers
    .target Varimathras
    .isQuestTurnedIn 1886
step
    .goto 1458/0,399.800,1776.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Lankester|r
    .turnin 95328 >>Turn in Whispering Horror Residue
    .target Father Lankester
    .isOnQuest 95328
step << Priest
    #ah
    .goto 1458/0,257.27,1560.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[Lesser Magic Wand] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_If you do this and were gathering|r |T132889:0|t[Linen Cloth] |cRXP_WARN_earlier, you can sell your|r |T132889:0|t[Linen Cloth] |cRXP_WARN_on the Auction House|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
step << Priest
    #optional
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >> Turn in Touch of Weakness
    .target Aelthalyste
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
    .train 2652,1 --Touch of Weakness not trained
step << Priest
    #optional
    .goto 1458/0,201.05,1686.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Victor|r
    .train 3908 >> Train |T136249:0|t[Tailoring]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,194.34,1681.63
    >>|cRXP_WARN_Turn all your|r |T132889:0|t[Linen Cloth] |cRXP_WARN_into|r |T132890:0|t[Bolt of linen Linen Cloth]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,201.05,1686.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Victor|r
    .train 7623 >> Train |T132662:0|t[Brown Linen Robe]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,196.16,1684.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Buy|r |T132891:0|t[Coarse Thread] |cRXP_BUY_from her|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    >>|cRXP_WARN_Create as many|r |T132662:0|t[Brown Linen Robes] |cRXP_WARN_as you can|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,273.87,1482.360
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >> Train |T136244:0|t[Enchanting]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,275.02,1487.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Buy a|r |T133942:0|t[Copper Rod] |cRXP_BUY_and|r |T135435:0|t[Simple Wood] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Disenchant all the|r |T132662:0|t[Brown Linen Robes] |cRXP_WARN_that you made and create a|r |T135225:0|t[Runed Copper Rod]
    >>|cRXP_WARN_If you did not get a|r |T132867:0|t[Lesser Magic Essence] |cRXP_WARN_then buy one from|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_if there is one available. Otherwise finish this step later|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,273.2,1491.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malcomb|r
    .train 14293 >> Train |T135139:0|t[Lesser Magic Wand]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #label LesserMagicWand
    >>|cRXP_WARN_Create a|r |T135139:0|t[Lesser Magic Wand]
    >>|cRXP_WARN_If you did not get a|r |T132867:0|t[Lesser Magic Essence] |cRXP_WARN_then buy one from|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_if there is one available. Otherwise finish this step later|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equip the|r |T135139:0|t[Lesser Magic Wand]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Paladin
    #completewith next
    .goto Undercity,51.99,64.54,10,0
    .goto Undercity,46.25,73.22,10,0
    .goto Undercity,45.32,78.32,10,0
    .goto Undercity,46.26,83.91,10,0
    .goto Undercity,49.03,87.92,10,0
    .goto Undercity,52.94,89.60,10 >>Enter the Royal Quarter
step << Paladin
    .goto 1458/0,316.200,1290.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 95803 >>Turn in A Token of Good Faith
    .target Lady Sylvanas Windrunner

    --Paladin Ressurrect chain route

step << Paladin
    #completewith 
    .goto 1420/0,235.32,1883.89
    .zone Tirisfal Glades >> Exit Undercity
    .zoneskip Tirisfal Glades
step << Paladin
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Turn in Rear Guard Patrol
    .target Deathguard Linnea
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shari Stilwell|r
    .train 678 >> Train your class spells
    .target Shari Stilwell
    .xp <12,1
step << Paladin
    .goto 1420/0,347.600,2265.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolai Anise|r
    .turnin 95314 >>Turn in That Shadowvale Green Elixir
    .target Carolai Anise
step << Paladin
    #completewith RessComplete
    +|cRXP_WARN_You will now do the quest chain for your|r |T135955:0|t[Redemption] |cRXP_WARN_ability. This will take ~15 minutes and won't give much exp|r
    >>|cRXP_WARN_Feel free to skip this for now and come back later if you wish|r
step << Paladin
    #completewith next
    .goto 1420/0,1732.500,2437.900,50,0
    .goto 1420/0,1834.300,2424.000,50,0
    .goto 1420/0,1963.100,2340.600,50,0
    .goto 1420/0,2041.000,2352.500,50,0
    .goto 1420/0,2049.900,2463.200,50 >>Travel to Bandarion Keep
step << Paladin
    .goto 1420/0,2035.100,2492.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 94435 >>Turn in A Lesson in Divinity
    .accept 94436 >>Accept A Lesson in Divinity
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2043.400,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Billmuth|r
    .turnin 94436 >>Turn in A Lesson in Divinity
    .accept 94438 >>Accept A Lesson in Divinity
    .target Deathguard Billmuth
    .isOnQuest 94436
step << Paladin
    #optional
    .goto 1420/0,2043.400,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Billmuth|r
    .accept 94438 >>Accept A Lesson in Divinity
    .target Deathguard Billmuth
    .isQuestTurnedIn 94436

    --East Tirisfal south of SM

step << Paladin
    #completewith next
    .goto 1420/0,-885.200,2399.800,50 >>Travel to Eastern Tirisfal
step << Paladin
    #completewith next
    .cast 8593 >>|cRXP_WARN_Use the|r |T133439:0|t[Symbol of Life] |cRXP_WARN_on|r |cRXP_FRIENDLY_Deathguard Falgan|r
    .use 6866 
    .target Deathguard Falgan
step << Paladin
    .goto 1420/0,-885.200,2399.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Falgan|r
    .turnin 94438 >>Turn in A Lesson in Divinity
    .accept 94440 >>Accept A Lesson in Divinity
    .target Deathguard Falgan
    .isQuestTurnedIn 94436
step << Paladin
    .goto 1420/0,-889.700,2531.400
    >>Kill |cRXP_ENEMY_Scarlet Friars|r and |cRXP_ENEMY_Scarlet Zealots|r. Loot them for the |cRXP_LOOT_Scarlet Crusade Attack Plans|r
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
    .goto 1420/0,2049.900,2463.200,50 >>Travel to Bandarion Keep
step << Paladin
    .goto 1420/0,2043.500,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Billmuth|r
    .turnin 94440 >>Turn in A Lesson in Divinity
    .accept 94441 >>Accept A Lesson in Divinity
    .target Deathguard Billmuth
    .isQuestTurnedIn 94436
step << Paladin
    #label RessComplete
    .goto 1420/0,2034.900,2492.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 94441 >>Turn in A Lesson in Divinity
    .target Danitha Morr
    .isQuestTurnedIn 94436
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
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
step
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Travel to Silverpine Forest
]])


RXPGuides.RegisterGuide([[
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#defaultfor !Hunter !Shaman !Tauren !Skyborne
#forever
#era/som--h
#name 12-14 Silverpine Forest
#displayname 13-15 Silverpine Forest << Paladin
#next 12-17 The Barrens


step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_If you see|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, talk to him and kill him. Loot him for the letter. He patrols the road between Brill and The Sepulcher|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    .goto 1421/0,1090.44,1409.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Erland|r to begin the escort
    >>|cRXP_WARN_If he is not there, skip this quest for now|r
    .accept 435,1 >>Accept Escorting Erland
    .target Deathstalker Erland
step
    .goto 1421/0,1087.50,1379.11,30,0
    .goto 1421/0,1087.50,1346.63,30,0
    .goto 1421/0,1090.86,1313.31,30,0
    .goto 1421/0,1204.68,1290.07
    >>Escort |cRXP_FRIENDLY_Erland|r safely to |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_ENEMY_Worgs|r |cRXP_WARN_can spawn on top of each other, eat and drink whenever you are able to|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
    .isOnQuest 435
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Turn in Escorting Erland
    .accept 429 >>Accept Wild Hearts
    .accept 449 >>Accept The Deathstalkers' Report
    .target Rane Yorick
    .isQuestComplete 435
step
    #optional
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r
    .accept 429 >>Accept Wild Hearts
    .target Rane Yorick
step
    #completewith Escort2
    >>Kill |cRXP_ENEMY_Worgs|r. Loot them for their |cRXP_LOOT_Hearts|r
    .collect 3164,3,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto 1421/0,715.000,1335.400
    >>Kill |cRXP_ENEMY_Vile Vin Murlocs|r. Loot them for their |T133884:0|t[|cRXP_LOOT_Murloc Eyes|r]
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .mob Vile Vin Shredder
    .mob Vile Vin Tidehunter
step
    .goto 1421/0,1090.44,1409.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Erland|r to begin the escort
    .accept 435,1 >>Accept Escorting Erland
    .target Deathstalker Erland
step
    #label Escort2
    .goto 1421/0,1087.50,1379.11,30,0
    .goto 1421/0,1087.50,1346.63,30,0
    .goto 1421/0,1090.86,1313.31,30,0
    .goto 1421/0,1204.68,1290.07
    >>Escort |cRXP_FRIENDLY_Erland|r safely to |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_ENEMY_Worgs|r |cRXP_WARN_can spawn on top of each other, eat and drink whenever you are able to|r
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
    >>Kill |cRXP_ENEMY_Worgs|r. Loot them for their |cRXP_LOOT_Hearts|r
    .collect 3164,3,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Turn in Escorting Erland
    .Turn in 429 >>Turn in Wild Hearts
    .accept 449 >>Accept The Deathstalkers' Report
    .target Rane Yorick
step
    #softcore
    #completewith ProveyourWorth
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #hardcore
    #completewith next
    .goto 1421/0,1359.66,864.19,50,0
    .goto 1421/0,1359.66,741.27,50,0
    .goto 1421/0,1365.12,607.15,100,0
    .goto 1421/0,1538.58,511.39,100 >> Travel to The Sepulcher
    .subzoneskip 228
step
    #label ProveyourWorth
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
    .accept 421 >>Accept Prove Your Worth
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwyn|r
    .vendor >> |cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushroom] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Do NOT sell your|r |T133884:0|t[|cRXP_LOOT_Murloc Eyes|r]
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him if they're up|r
    >>|cRXP_WARN_Do NOT sell your|r |T133884:0|t[|cRXP_LOOT_Murloc Eyes|r]
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r and |cRXP_FRIENDLY_Podrig|r
    .accept 477 >>Accept Border Crossings
    .target +Shadow Priest Allister
    .goto 1421/0,1602.84,520.63
    .accept 6321 >>Accept Supplying the Sepulcher
    .target +Deathguard Podrig
    .goto 1421/0,1625.94,499.91
step
    #label BorderCrossings
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r
    .accept 477 >>Accept Border Crossings
    .target Shadow Priest Allister
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >> Enter the crypt
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadrec|r in the crypt
    .turnin 449 >>Turn in The Deathstalkers' Report
    .accept 3221 >>Accept Speak with Renferrel
    .accept 437 >>Accept The Dead Fields
    .target High Executor Hadrec
step
    .goto 1421/0,1652.82,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renferrel|r
    .turnin 429 >>Turn in Wild Hearts
    .turnin 445 >>Turn in Delivery to Silverpine Forest
    .turnin 3221 >>Turn in Speak with Renferrel
    .accept 1359 >>Accept Zinge's Delivery
    .accept 447 >>Accept A Recipe For Death
    .accept 430 >>Accept Return to Quinn
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
    >>Kill |cRXP_ENEMY_Moonrage Whitescalps|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
    .target Dalar Dawnweaver
    .turnin 421 >>Turn in Prove Your Worth
    .accept 422 >>Accept Arugal's Folly
step
    #completewith Remedy
    .goto 1421/0,1234.92,891.070,80 >> Travel to Valgan's Field
step
    #label Remedy
    .goto 1421/0,1234.92,891.070,8,0
    .goto 1421/0,1218.54,884.91,8,0
    .goto 1421/0,1226.52,886.03,8,0
    .goto 1421/0,1231.14,866.99
    >>Enter the house and go to the second floor. Loot the |cRXP_PICK_Dusty Spellbooks|r on the ground
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto 1421/0,1207.62,1293.71,80,0
    .subzone 239 >>Travel to The Ivar Patch
step
    #label QuinnYorick
    .goto 1421/0,1207.62,1293.71,8,0
    .goto 1421/0,1220.64,1299.59,8,0
    .goto 1421/0,1212.66,1298.19,8,0
    .goto 1421/0,1205.94,1314.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quinn Yorick|r on the second floor of the house
    .turnin 430 >>Turn in Return to Quinn
    .accept 91920 >>Accept Wild Eyes
    .target Quinn Yorick
step
    .goto 1421/0,715.000,1335.400
    >>Kill |cRXP_ENEMY_Vile Vin Murlocs|r. Loot them for their |T133884:0|t[|cRXP_LOOT_Murloc Eyes|r]
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .mob Vile Vin Shredder
    .mob Vile Vin Tidehunter
step
    #completewith ArugalTurnin
    +|cRXP_WARN_Be careful! There may be a|r |cRXP_ENEMY_Son of Arugal|r |cRXP_WARN_in the area! This is a level 25 elite, steer clear from him!|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>Kill |cRXP_ENEMY_Bears|r. Loot them for their |cRXP_LOOT_Hearts|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto 1421/0,1541.52,1078.39
    >>Kill |cRXP_ENEMY_Rot Hide Gnolls|r around The Dead Field until |cRXP_ENEMY_Nightlash|r spawns. Kill and loot her for her |cRXP_LOOT_Essence|r
    >>|cRXP_WARN_They are immune to fear!|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>Kill |cRXP_ENEMY_Bears|r. Loot them for their |cRXP_LOOT_Hearts|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>Kill |cRXP_ENEMY_Spiders|r. Loot them for their |cRXP_LOOT_Blood|r
    >>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Krethis Shadowspinner|r |cRXP_WARN_as it's impossibly difficult to kill her!|r << !Mage !Warlock
    >>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Krethis Shadowspinner|r |cRXP_WARN_as it's difficult but doable. She has a 130 damage shield on a 15s cooldown, and 110 damage instant shock ability|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto 1421/0,2064.0,1167.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Killian|r
    .vendor >> Vendor trash
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
    >>Kill |cRXP_ENEMY_Spiders|r. Loot them for their |cRXP_LOOT_Blood|r
    >>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Krethis Shadowspinner|r |cRXP_WARN_as it's impossibly difficult to kill her!|r << !Mage !Warlock
    >>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Krethis Shadowspinner|r |cRXP_WARN_as it's difficult but doable. She has a 130 damage shield on a 15s cooldown, and 110 damage instant shock ability|r << Mage/Warlock
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
    >>Finish killing |cRXP_ENEMY_Bears|r. Loot them for their |cRXP_LOOT_Hearts|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step << skip
    #softcore
    #completewith ArugalTurnin
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    --#hardcore
    #completewith next
    .goto 1421/0,1538.58,511.39,100,0
    .subzone 228 >>Travel back to The Sepulcher
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >> Turn in Arugal's Folly
    .accept 423 >> Accept Arugal's Folly
    .target Dalar Dawnweaver
step
    #optional
    #label ArugalTurnin
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >> Enter the crypt
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadrec|r in the crypt
    .turnin 437 >> Turn in The Dead Fields
    .accept 438 >> Accept The Decrepit Ferry
    .target High Executor Hadrec
step
    .goto 1421/0,1652.600,522.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .turnin 91920 >>Turn in Wild Eyes
    .accept 91921 >>Accept Return to Quinn (Again)
    .target Apothecary Renferrel
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwyn|r
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r
    .vendor >> Vendor trash
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him if they're up|r
    .collect 1179,20,423,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto 1421/0,1568.4,567.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrea|r
    .vendor >> Buy |T132491:0|t[|cRXP_FRIENDLY_Wise Man's Belt|r] from her if it's up
    .target Andrea Boynton
    .money <0.1400
step << Rogue
    .goto 1421/0,1576.38,571.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandre|r
    .vendor >> Buy |T132539:0|t[|cRXP_FRIENDLY_Agile Boots|r] from her if it's up
    .target Alexandre Lefevre
    .money <0.2633
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equip the|r |T132491:0|t[|cRXP_FRIENDLY_Wise Man's Belt|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equip the|r |T132539:0|t[|cRXP_FRIENDLY_Agile Boots|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step
    #completewith Shackles
    .goto Silverpine Forest,44.20,38.17,15,0
    .goto Silverpine Forest,44.46,36.65,15,0
    .goto Silverpine Forest,44.91,33.14,30 >> Travel down the hill
step
    #completewith DecrepitFerry
    +|cRXP_WARN_Be careful! There may be a|r |cRXP_ENEMY_Son of Arugal|r |cRXP_WARN_in the area! This is a level 25 elite, steer clear from him!|r
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
    >>Kill |cRXP_ENEMY_Moonrage Gluttons|r and |cRXP_ENEMY_Moonrage Darksouls|r. Loot them for their |cRXP_LOOT_Shackles|r
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Moonrage Darksouls|r |cRXP_WARN_enrage when they are below 25% health. Kill them quickly when they are low|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quinn Yorick|r on the second floor of the house
    .turnin 91921 >>Turn in Return to Quinn (Again)
    .target Quinn Yorick
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r outside
    .accept 425 >>Accept Ivar the Foul
    .target Rane Yorick
step
    .goto 1421/0,1265.58,1274.11,6,0
    .goto 1421/0,1270.62,1279.71,6,0
    .goto 1421/0,1285.32,1277.19
    >>Kill |cRXP_ENEMY_Ivar the Foul|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Ivar is protected by two|r |cRXP_ENEMY_Ravenclaw Slaves|r |cRXP_WARN_inside the barn. You can solopull one of them as he patrols forward|r
    >>|cRXP_WARN_They are immune to fear!|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Turn in Ivar the Foul
    .target Rane Yorick
step
    #label DecrepitFerry
    .goto 1421/0,997.62,692.55
    >>Click the |cRXP_PICK_Boat|r at the side of the docks
    .turnin 438 >>Turn in The Decrepit Ferry
    .accept 439 >>Accept Rot Hide Clues
step
    #completewith next
    .goto 1421/0,1538.58,511.39,100 >> Travel back to The Sepulcher
    .subzoneskip 228
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
    .turnin 423 >>Turn in Arugal's Folly
    .accept 424 >>Accept Arugal's Folly
    .target Dalar Dawnweaver
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >> Enter the crypt
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadrec|r in the crypt
    .turnin 439 >>Turn in Rot Hide Clues
    .target High Executor Hadrec
step
    #completewith next
    .goto Silverpine Forest,56.48,45.94,10 >> Enter the Mine
step
    #label GrimsonthePale
    .goto Silverpine Forest,58.56,44.85
    >>Kill |cRXP_ENEMY_Grimson the Pale|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
step
    #hardcore
    .goto 1421/0,1354.62,-22.57
    >>Click the |cRXP_PICK_Crate|r in the camp
    >>|cRXP_WARN_Be careful! These mobs cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and flee at low health. Pull them back and kill them one by one until you can safely click on the crate|r
    .turnin 477 >>Turn in Border Crossings
    .accept 478 >>Accept Maps and Runes
    .mob Dalaran Apprentice
step
    #label BorderCrossings
    #softcore
    .goto 1421/0,1354.62,-22.57
    >>Click the |cRXP_PICK_Crate|r in the camp
    >>|cRXP_WARN_Be careful, these mobs cast|r |T135846:0|t[Frostbolt]|r
    .turnin 477 >>Turn in Border Crossings
    .accept 478 >>Accept Maps and Runes
    .mob Dalaran Apprentice
step
    #completewith next
    #hardcore
    .goto Silverpine Forest,45.51,41.26,100 >> Travel back to The Sepulcher
    .subzoneskip 228
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r and |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Turn in Maps and Runes
    .accept 481 >>Accept Dalar's Analysis
    .target +Shadow Priest Allister
    .goto 1421/0,1602.84,520.63
    .turnin 424 >>Turn in Arugal's Folly
    .turnin 481 >>Turn in Dalar's Analysis
    .accept 482 >>Accept Dalaran's Intentions
    .target +Dalar Dawnweaver
    .goto 1421/0,1593.6,554.23
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>Turn in Dalaran's Intentions
    .target Shadow Priest Allister
step
    .goto 1421/0,1533.96,474.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Turn in Supplying the Sepulcher << Undead
    .accept 6323 >>Accept Ride to the Undercity << Undead
    .fp Sepulcher >> Get the Sepulcher flight path << !Undead
    .fly Undercity >> Fly to the Undercity << !Undead
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    .hs >> Hearth to the Undercity
    .use 6948
    .zoneskip Undercity
    .bindlocation 1497,1
step << Undead
    .goto 1458/0,283.37,1610.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >> Turn in Ride to the Undercity
    .accept 6322 >> Accept Michael Garrett
    .target Gordon Wendham
step << Rogue
    #ssf
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis Warren|r in the Trade Quarter
    >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from him|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #ah
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis Warren|r in the Trade Quarter
    >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equip the|r |T135343:0|t[Scimitar]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Undead
    .goto 1458/0,266.20,1567.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Turn in Michael Garrett
    .target Michael Garrett
step << Undead Warrior
    #optional
    .goto 1458/0,418.35,1767.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baltus Fowler|r
    .train 285 >> Train your class spells
    .target Baltus Fowler
    .dungeon RFC
    .xp <16,1
--XX 16+ Only for Heroic Strike, Undead only as other races train elsewhere more effectively. RFC So warriors have 16 spells for RFC
step << Rogue/Warrior
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Mary|r in the Rogues' Quarter
    .train 3273 >>Train |T135966:0|t[First Aid]
    .target Mary Edras
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,40 >> Create |T133685:0|t[Linen Bandages] until your skill is 40 or higher
    .itemcount 2589,1 --Linen Cloth (1+)
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Mary|r in the Rogues' Quarter
    .train 3276 >> Train |T133688:0|t[Heavy Linen Bandage]
    .target Mary Edras
    .skill firstaid,<40,1
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,50 >> Create |T133688:0|t[Heavy Linen Bandages] until your skill is 50 or higher
    .itemcount 2589,2 --Linen Cloth (2+)
step << Rogue/Warrior
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Mary|r in the Rogues' Quarter
    .train 3274 >> Train Journeyman First Aid
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .turnin 1886 >>Turn in The Deathstalkers
    .accept 1898 >>Accept The Deathstalkers
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .accept 1898 >>Accept The Deathstalkers
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Train your class spells
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .isOnQuest 1898 << Undead
--XX Only train if you were directed here for class quest as an Undead
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Train your class spells
    .target Carolyn Ward
    .xp <16,1
    .isOnQuest 1898 << Undead
step << Undead Rogue
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Train your class spells
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Optional left out on purpose
--XX This whole section of training across 3 different areas, 2 different xp rates and RFC is solidly in the top 10 worst experiences of my life and im still not 100% happy with it xd
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Train your class spells
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto 1458/0,347.07,1389.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Turn in The Deathstalkers
    .accept 1899 >>Accept The Deathstalkers
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto 1458/0,341.41,1385.90
    >>Loot |cRXP_PICK_Andron's Bookshelf|r behind |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step
    .goto 1458/0,310.900,1528.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alessandro Luca|r 
    .accept 97891 >>Accept Prompt Potion Runner
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
    .goto 1458/0,404.63,1434.67,12 >> Travel toward |cRXP_FRIENDLY_Faranell|r in The Apothecarium
step
    .goto 1458/0,426.100,1403.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Martin Felben|r
    .complete 97891,1 --|1/1 Speak to Doctor Martin Felben
    .turnin 97891 >>Turn in Prompt Potion Runner
    .target Doctor Martin Felben
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faranell|r and |cRXP_FRIENDLY_Zinge|r in The Apothecarium
    .turnin 447 >>Turn in A Recipe For Death
    .target +Master Apothecary Faranell
    .goto 1458/0,404.63,1434.67
    .turnin 1359 >> Turn in Zinge's Delivery
    .accept 1358 >> Accept Sample for Helbrim
    .target +Apothecary Zinge
    .goto 1458/0,391.97,1442.87
step << Undead Rogue
    .goto 1458/0,71.83,1435.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .turnin 1899 >>Turn in The Deathstalkers
    .accept 1978 >>Accept The Deathstalkers
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Train your class spells
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Duplicate if you ding from prev optional quests
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Train your class spells
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto 1420/0,373.60,1464.85,40,0
    .goto 1420/0,333.38,1287.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Turn in The Deathstalkers
    .target Varimathras
    .isQuestTurnedIn 1886
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Mary|r in the Rogues' Quarter
    .train 3273 >>Train |T135966:0|t[First Aid]
    .target Mary Edras
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,40 >> Create |T133685:0|t[Linen Bandages] until your skill is 40 or higher
    .itemcount 2589,1 --Linen Cloth (1+)
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Mary|r in the Rogues' Quarter
    .train 3276 >> Train |T133688:0|t[Heavy Linen Bandage]
    .target Mary Edras
    .skill firstaid,<40,1
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,50 >> Create |T133688:0|t[Heavy Linen Bandages] until your skill is 50 or higher
    .itemcount 2589,2 --Linen Cloth (2+)
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Mary|r in the Rogues' Quarter
    .train 3274 >> Train Journeyman First Aid
    .target Mary Edras
    .skill firstaid,<50,1
step << Mage
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
    .train 2137 >> Train your class spells
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Mage
    #optional
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
    .train 2120 >> Train your class spells
    .target Anastasia Hartwell
    .xp <16,1
step << Undead Warlock
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
    .train 6222 >> Train your class spells
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Undead Warlock
    #optional
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
    .train 1455 >> Train your class spells
    .target Richard Kerwin
    .xp <16,1
step << Priest/Mage/Warlock
    #ssf
    .goto 1458/0,206.04,1705.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zane Bradford|r in the Magic Quarter
    >>|cRXP_BUY_Buy a|r |T135468:0|t[Smoldering Wand] |cRXP_BUY_from him|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #ah
    .goto 1458/0,206.04,1705.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zane Bradford|r in the Magic Quarter
    >>|cRXP_BUY_Buy a|r |T135468:0|t[Smoldering Wand] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 5208,1 --Smoldering Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equip the|r |T135468:0|t[Smoldering Wand] |cRXP_WARN_when you are level 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equip the|r |T135468:0|t[Smoldering Wand]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Undead Priest
    #sticky
    #label TouchOW
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >> Turn in Touch of Weakness
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
step << !Undead Priest
    #sticky
    #label TouchOW
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Turn in Touch of Weakness
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
    .isOnQuest 5660
--XX Not going out of the way for this outside of this edge case to train for RFC, waste of a gcd
step << Undead Priest
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lazarus|r
	.train 6074 >> Train your class spells
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .dungeon RFC
step << Undead Priest
    #optional
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lazarus|r
	.train 8102 >> Train your class spells
    .target Father Lazarus
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    #optional
    #completewith Conscript
    >>Abandon The Deathstalkers, there's no opportunity left to do it
    .abandon 1886 >> Abandon The Deathstalkers
    .isOnQuest 1886
step << skip --Undead !Rogue !Warrior
    #requires TouchOW << Undead Priest
    .goto 1458/0,327.4,1770.6 << Priest
    .goto 1458/0,206.81,1712.48 << Mage/Warlock
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Perform a Logout Skip by jumping on top of the grinder of the Meat Wagon, then logging out and back in|r << Priest
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Perform a Logout Skip by jumping on top of the stack of barrels, then logging out and back in|r << Mage/Warlock
    >>|cRXP_WARN_If you can't do this, just run out of Undercity normally|r
    .zoneskip Undercity,1
    .dungeon RFC
step << skip --Undead !Rogue !Warrior
    .goto 1458/0,206.81,1712.48 << Priest/Mage/Warlock
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Perform a Logout Skip by jumping on top of the stack of barrels, then logging out and back in|r << Priest/Mage/Warlock
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLICK HERE for an example|r
    >>|cRXP_WARN_If you can't do this, just run out of Undercity normally|r
    .zoneskip Undercity,1
    .dungeon !RFC
step << Undead
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Now you should be looking for a group to Ragefire Chasm
    .dungeon RFC
step << Undead
    #completewith next
    .goto 1420/0,235.32,1883.89,50,0
    .zone Tirisfal Glades >> Exit Undercity
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
    .zone Durotar >>Take the Zeppelin to Durotar
    >>Make Sharpening Stones/Bandages while you wait << Warrior/Rogue
    >>Conjure Food/water while you wait << Mage
    .zoneskip Durotar
step << Undead
    #completewith HiddenEnemiesPickup
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Travel to Orgrimmar
    .dungeon RFC
step << Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >> Get the Orgrimmar flight path
    .target Doras
    .dungeon RFC
step << Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step << Undead
    .goto 1411/1,-4769.10,1484.39,0
    >>Kill |cRXP_ENEMY_Burning Blade|r mobs in Skull Rock until |cRXP_LOOT_Lieutenant's Insignia|r drops
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Turn in Hidden Enemies
    .accept 5727 >> Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step << Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Accept Slaying the Beast
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    #label HiddenEnemiesPickup
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Turn in Hidden Enemies
    .accept 5728 >> Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step << Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destroy|r |T134417:0|t[Lieutenant's Insignia] |cRXP_WARN_as you no longer need it|r
    .dungeon RFC
step << Undead
    #label EnterRFC
    .goto 1454/1,-4420.76,1815.80
    .subzone 2437 >> Enter the RFC Instance portal. Zone in
    .dungeon RFC
step << Undead
    >>|cRXP_WARN_If possible, have party members share the following quests|r
    .accept 5722 >> Accept Searching for the Lost Satchel
    .accept 5723 >> Accept Testing an Enemy's Strength
    .disablecheckbox
    .dungeon RFC
step << Undead
    #completewith next
    >>Kill |cRXP_ENEMY_Ragefire Troggs|r and |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Turn in Searching for the Lost Satchel
    .accept 5724 >> Accept Returning the Lost Satchel
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Accept Returning the Lost Satchel
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead
    #label TroggsShamans
    >>Kill |cRXP_ENEMY_Ragefire Troggs|r and |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Kill |cRXP_ENEMY_Searing Blade Cultists|r and |cRXP_ENEMY_Searing Blade Warlocks|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    >>Kill |cRXP_ENEMY_Taragaman the Hungerer|r. Loot him for his |cRXP_LOOT_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << Undead
    #label BazzalanandJergosh
    >>Kill |cRXP_ENEMY_Bazzalan|r and |cRXP_ENEMY_Jergosh the Invoker|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead
    >>Kill |cRXP_ENEMY_Searing Blade Cultists|r and |cRXP_ENEMY_Searing Blade Warlocks|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Turn in Slaying the Beast
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Turn in Hidden Enemies
    .accept 5729 >> Accept Hidden Enemies
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Accept Hidden Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >> Turn in Hidden Enemies
    .accept 5730 >> Accept Hidden Enemies
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Turn in Hidden Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    #completewith Conscript
    .subzone 362 >> Travel to Razor Hill
step << !Undead
    .hs >> Hearth to Razor Hill
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step << Rogue
    #optional << Undead
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >> Train your class spells
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >> Train your class spells
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
	.train 8122 >>Train your class spells
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >>Train your class spells
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >>Train your class spells
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >> Train your class spells
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >> Train your class spells
    .target Dhugru Gorelust
    .xp <16,1
step
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >> Travel to Far Watch Post
step
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << !Undead
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Turn in Ak'Zeloth
    .accept 924 >>Accept The Demon Seed
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << !Undead
    .goto 1413/1,-3694.2,259.22
    >>|cRXP_WARN_Loot the|r |T134095:0|t[Flawed Power Stone] |cRXP_WARN_next to|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. This item has a 30 minute timer, so be sure to be quick|r
    .turnin 926 >>Turn in Flawed Power Stone
    .isOnQuest 924

]])
