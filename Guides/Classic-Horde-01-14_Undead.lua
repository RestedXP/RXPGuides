local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group RestedXP Horde 1-22
#defaultfor Undead
#name 1-6 Tirisfal Glades
#next 6-11 Tirisfal Glades

step << !Undead
    #completewith next
    +|cFFFCDC00You have selected a guide meant for Undead. It is recommended you choose the same starter zone that you start in|r
step
    #completewith Zombies
	.destroy 6948 >> Destroy the |T134414:0|t[Hearthstone] in your bags, as it's no longer needed
step
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >> Run up out of the crypt toward |cFF00FF25Mordo|r
step
    .goto Tirisfal Glades,30.22,71.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mordo|r
    .accept 363 >> Accept Rude Awakening
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0 
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    +|cFFFCDC00Kill |cFFFF5722Young Scavengers|r and |cFFFF5722Duskbats|r. Loot them until you have 60 copper worth of vendor items (including your armor)|r << Mage
    +|cFFFCDC00Kill |cFFFF5722Young Scavengers|r and |cFFFF5722Duskbats|r. Loot them until you have 50 copper worth of vendor items (including your armor)|r << Priest
    +|cFFFCDC00Kill |cFFFF5722Young Scavengers|r and |cFFFF5722Duskbats|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >> Go inside the building
step << Priest/Mage
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from him|r 
    .vendor >> Vendor Trash 
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Venya|r and |cFF00FF25Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sarvis|r << Mage
    .accept 1470 >>Accept Piercing the Veil << Warlock
    .goto Tirisfal Glades,30.98,66.41,0,0 << Warlock
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
    .goto Tirisfal Glades,30.84,66.20,0,0
    .target Venya Marthand << tbc
    .target Shadow Priest Sarvis
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Elreth|r
    .accept 376 >> Accept The Damned
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Isabella|r
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Isabella
step << Warlock
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kayla|r
    .vendor >>Vendor Trash
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maximillion|r
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Maximillion
step << !Warlock !Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sarvis|r
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Elreth|r
    .accept 376 >> Accept The Damned
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dannal|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Dannal Stern
step << Warlock
    #requires Piercing
    .goto Tirisfal Glades,31.35,66.21,10,0
    .loop 40,Tirisfal Glades,31.82,61.48,31.11,60.71,32.07,60.17,32.26,59.21,33.28,59.53,33.66,60.76,33.94,61.81,34.21,63.05,33.01,63.01,31.82,61.48
    >>Kill |cFFFF5722Rattlecage Skeletons|r. Loot them for their |cFF00BCD4Rattlecage Skulls|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cFFFCDC00Kill |cFFFF5722Mindless Zombies|r and |cFFFF5722Wretched Zombies|r. Loot them until you have 25 copper worth of vendor items (including your armor)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock tbc
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from him|r 
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock tbc
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.98,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Venya|r
    .turnin 1470 >>Turn in Piercing the Veil
    .target Venya Marthand
step << Warlock tbc
    #completewith next
    .cast 688 >>|cFFFCDC00Cast|r |T136218:0|t[Summon Imp]
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .loop 40,Tirisfal Glades,31.72,63.98,30.69,63.88,30.90,62.20,30.73,61.66,31.14,61.41,31.80,61.83,32.85,63.02,32.90,63.54,33.41,63.06,33.75,62.86,33.51,63.82,33.55,64.57,33.29,64.96,31.72,63.98
    >>Kill |cFFFF5722Mindless Zombies|r and |cFFFF5722Wretched Zombies|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cFFFCDC00Kill |cFFFF5722Mindless Zombies|r and |cFFFF5722Wretched Zombies|r. Loot them until you have 33 copper worth of vendor items (including your armor)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from him|r 
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from him|r 
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sarvis|r and |cFF00FF25Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sarvis|r, |cFF00FF25Elreth|r, and |cFF00FF25Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sarvis|r, |cFF00FF25Elreth|r, and |cFF00FF25Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sarvis|r, |cFF00FF25Elreth|r, and |cFF00FF25Duesten|r << Priest
    .turnin 364 >> Turn in The Mindless Ones
    .accept 3095 >> Accept Simple Scroll << Warrior
    .accept 3096 >> Accept Encrypted Scroll << Rogue
    .accept 3097 >> Accept Hallowed Scroll << Priest
    .accept 3098 >> Accept Glyphic Scroll << Mage
    .accept 3099 >> Accept Tainted Scroll << Warlock
    .accept 3901 >> Accept Rattling the Rattlecages
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >> Accept The Damned
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >> Turn in Tainted Scroll << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >> Turn in Glyphic Scroll << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >> Turn in Hallowed Scroll << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .target Maximillion << Warlock
    .target Isabella << Mage
    .target Dark Cleric Duesten << Priest
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from him|r 
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79,40,0
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79
    >>Kill |cFFFF5722Young Scavengers|r and |cFFFF5722Ragged Scavengers|r. Loot them for their |cFF00BCD4Scavenger Paws|r 
    >>Kill |cFFFF5722Duskbats|r and |cFFFF5722Mangy Duskbats|r. Loot them for their |cFF00BCD4Duskbat Wings|r
    >>|cFFFCDC00Try to avoid |cFFFF5722Mangy Duskbats|r if you can due to them being much tougher to kill than |cFFFF5722Duskbats|r|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob Young Scavenger
    .mob Ragged Scavenger
    .mob Duskbat
    .mob Mangy Duskbat
step
    .loop 40,Tirisfal Glades,31.82,61.48,31.11,60.71,32.07,60.17,32.26,59.21,33.28,59.53,33.66,60.76,33.94,61.81,34.21,63.05,33.01,63.01,31.82,61.48
    >>Kill |cFFFF5722Rattlecage Skeletons|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #som
    .loop 40,Tirisfal Glades,31.72,63.98,30.69,63.88,30.90,62.20,30.73,61.66,31.14,61.41,31.80,61.83,32.85,32.38,63.02,32.90,63.54,33.41,63.06,33.75,62.86,33.51,63.82,33.55,64.57,33.29,64.96,31.72,63.98
    .xp 3+480 >>Grind to 480+/1400xp << Warrior/Rogue
    .xp 3+560 >>Grind to 560+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step
    #era
    .loop 40,Tirisfal Glades,31.72,63.98,30.69,63.88,30.90,62.20,30.73,61.66,31.14,61.41,31.80,61.83,32.85,32.38,63.02,32.90,63.54,33.41,63.06,33.75,62.86,33.51,63.82,33.55,64.57,33.29,64.96,31.72,63.98
    .xp 3+940 >>Grind to 940+/1400xp << Warrior/Rogue
    .xp 3+980 >>Grind to 980+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from him|r
    >>|cFFFCDC00Do NOT go below 1 Silver|r << Mage/Warlock/Priest
    .vendor >> Vendor Trash
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sarvis|r and |cFF00FF25Elreth|r
    .turnin 3901 >> Turn in Rattling the Rattlecages
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >> Turn in The Damned
    .accept 6395 >> Accept Marla's Last Wish
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duesten|r
    .train 589 >> Train your class spells
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duesten|r
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duesten|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duesten|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maximillion|r
    .train 172 >> Train |T136118:0|t[Corruption]
    .target Maximillion
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Isabella|r
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Isabella
step
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Saltain|r and |cFF00FF25Arren|r
    .accept 3902 >> Accept Scavenging Deathknell
    .goto Tirisfal Glades,31.61,65.62
    .accept 380 >> Accept Night Web's Hollow
    .goto Tirisfal Glades,32.15,66.01
    .target Deathguard Saltain
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dannal|r
    .turnin 3095 >> Turn in Simple Scroll
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dannal|r
    .turnin 3095 >> Turn in Simple Scroll
    .train 772 >> Train |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25David|r
    .turnin 3096 >> Turn in Encrypted Scroll
    .train 53 >> Train |T132090:0|t[Backstab]
    .money <0.04
    .target David Trias
step << Rogue
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25David|r
    .turnin 3096 >> Turn in Encrypted Scroll
    .target David Trias
step
    >>Open the |cFFDB2EEFEquipment Boxes|r on the ground. Loot them for the |cFF00BCD4Scavenged Goods|r
    .loop 12,Tirisfal Glades,32.37,64.37,32.81,64.39,32.89,64.60,33.01,65.38,33.79,64.57,33.13,63.08,32.79,63.11,31.86,61.49,31.75,61.96,31.70,62.53,31.34,62.44,32.37,64.37
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
    .goto Tirisfal Glades,29.29,59.38,50,0
    .goto Tirisfal Glades,29.94,57.33,50,0
    .loop 40,Tirisfal Glades,29.94,57.33,29.82,56.03,29.25,55.77,28.40,56.51,27.68,57.10,28.29,58.31,28.25,59.41,28.80,59.53,29.29,59.40,29.67,58.53,29.94,57.33
    >>Kill |cFFFF5722Young Night Web Spiders|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    .goto Tirisfal Glades,27.86,58.98,40,0
    .loop 40,Tirisfal Glades,28.25,58.27,28.42,59.07,27.86,60.57,27.17,59.18,27.30,57.97,26.94,56.42,27.51,56.00,28.25,58.27
    >>Kill |cFFFF5722Young Night Web Spiders|r close to the cave entrance
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>Go inside the cave
step
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54,20,0
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54
    >>Kill |cFFFF5722Young Night Web Spiders|r inside the cave
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cFFFCDC00Cast|r |T136218:0|t[Summon Imp]
step
    #softcore
    #completewith Scavenging
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
step
    #hardcore
    #completewith next
    >>|cFFFCDC00Perform a jumping Logout Skip by jumping off something in the cave, then pressing your Camp macro|r
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >> |cFFFCDC00CLICK HERE for a guide|r
    .link /camp >> |cFFFCDC00CLICK HERE for the macro|r
    >>|cFFFCDC00To create a macro, type /macro ingame. Click "New", give it a name, then copy paste "/camp" into the box. Drag the new macro onto your Action Bars|r
    .goto Tirisfal Glades,31.08,64.88,30 >> Return to Deathknell
step
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Saltain|r
    .turnin 3902 >> Turn in Scavenging Deathknell
    .target Deathguard Saltain
step
    #sticky
    #label NightWebH
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Arren|r
    .turnin 380 >> Turn in Night Web's Hollow
    .accept 381 >> Accept The Scarlet Crusade
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from him|r 
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >> Vendor Trash 
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step
    #requires NightWebH
    .loop 40,Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
    >>Kill |cFFFF5722Scarlet Initiates|r and |cFFFF5722Scarlet Converts|r. Loot them for their |cFF00BCD4Scarlet Armbands|r
    >>|cFFFCDC00Don't kill |cFFFF5722Meven Korgal|r yet|r
    >>|cFFFCDC00Try to avoid |cFFFF5722Scarlet Initiates|r if you can as they have|r |T135843:0|t[Frost Armor] |cFFFCDC00(slows your attack speed)|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >>Kill |cFFFF5722Samuel|r. Loot him for |cFF00BCD4Samuel's Remains|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
step
    .goto Tirisfal Glades,31.17,65.08
	>>Click |cFFDB2EEFMarla's Grave|r on the ground 
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cFFFCDC00Cast|r |T136218:0|t[Summon Imp]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Elreth|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Elreth|r and |cFF00FF25Duesten|r << Priest
    .turnin 6395 >> Turn in Marla's Last Wish
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 >> Accept In Favor of Darkness << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Novice Elreth
    .target Dark Cleric Duesten << Priest
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Arren|r
    .turnin 381 >> Turn in The Scarlet Crusade
    .accept 382 >> Accept The Red Messenger
    .target Executor Arren 
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
step
    #requires ScarletC
    .goto Tirisfal Glades,36.50,68.82
    >>Kill |cFFFF5722Meven|r. Loot him for the |cFF00BCD4Scarlet Crusade Documents|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto Tirisfal Glades,32.15,66.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Arren|r
    .turnin 382 >> Turn in The Red Messenger
    .accept 383 >> Accept Vital Intelligence
    .target Executor Arren
step
    .goto Tirisfal Glades,34.08,59.51,40,0
    .goto Tirisfal Glades,35.34,56.55,40,0
    .goto Tirisfal Glades,36.83,56.85,40,0
    .goto Tirisfal Glades,37.76,59.38,40,0
    .goto Tirisfal Glades,37.51,62.99,40,0
    .loop 40,Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
    .xp 5+2350 >>Grind to 2350+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Calvin|r
    .accept 8 >> Accept A Rogue's Deal
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 6-11 Tirisfal Glades
#version 1
#group RestedXP Horde 1-22
#defaultfor Undead
#next 11-14 Silverpine Forest
#next 12-17 Barrens

step
    .goto Tirisfal Glades,40.91,54.17
.target Deathguard Simmer
>>Talk to |cFF00FF25Deathguard Simmer|r
    .accept 365 >>Accept Fields of Grief
step
    #era/som
    .unitscan Gordo
    .goto Tirisfal Glades,40.79,54.47,40,0
    .goto Tirisfal Glades,42.67,54.97,40,0
    .goto Tirisfal Glades,43.75,54.29,40,0
    .goto Tirisfal Glades,45.27,56.45,40,0
    .goto Tirisfal Glades,49.19,58.07,40,0
    .goto Tirisfal Glades,50.87,59.01,60,0
    .goto Tirisfal Glades,51.84,55.31,40,0
    .goto Tirisfal Glades,54.20,52.72,40,0
    .goto Tirisfal Glades,55.67,52.46,40,0
    .goto Tirisfal Glades,54.20,52.72,40,0
    .goto Tirisfal Glades,51.84,55.31,40,0
    .goto Tirisfal Glades,50.87,59.01,60,0
    .goto Tirisfal Glades,49.19,58.07,40,0
    .goto Tirisfal Glades,45.27,56.45,40,0
    .goto Tirisfal Glades,43.75,54.29,40,0
    .goto Tirisfal Glades,42.67,54.97,40,0
    .goto Tirisfal Glades,40.79,54.47,40,0
    >>Talk to Gordo. He's an abomination that patrols along the road to Brill
.target Gordo
>>Talk to |cFF00FF25Gordo|r
    .accept 5481 >>Accept Gordo's Task
step << Priest
    #softcore
    .goto Tirisfal Glades,52.59,55.51
    .trainer >> Train Tailoring. Save your linen to skill up, then create greens later for disenchanting for a Wand
    >> You can skip this step if you're an alt/think it'd be easier to buy one from the AH later
step << Priest
    #hardcore
    .goto Tirisfal Glades,52.59,55.51
    .trainer >> Train Tailoring. Save your linen to skill up, then create greens later for disenchanting for a Wand
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at Brill if you found Gordo pretty early
step
    .goto Tirisfal Glades,60.586,51.765
>>Talk to |cFF00FF25Executor Zygand|r
    .turnin 383 >> Turn in Vital Intelligence
.target Executor Zygand
    .accept 427 >>Accept At War With The Scarlet Crusade
step << Rogue
    .goto Tirisfal Glades,61.16,52.59
    .vendor >> Buy the level 3 thrown from Mrs. Winters. Equip it
step
    .goto Tirisfal Glades,61.707,52.049
.target Innkeeper Renee
>>Talk to |cFF00FF25Innkeeper Renee|r
    .turnin 8 >>Turn in A Rogue's Deal
    .home >> Set your Hearthstone to Brill
    .vendor >> vendor trash. Buy some level 5 food << !Mage !Priest !Warlock
    .vendor >> Vendor trash. Buy some level 5 water << Mage/Priest/Warlock
    >>Save at least 1.3 silver for training << Warrior
    >>Save at least 2 silver for training << Mage
    >>Save at least 2.3 silver for training << Rogue
    >>Save at least 3 silver for training << Warlock/Priest
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    .trainer >> Train your class spells
step << Mage
    .goto Tirisfal Glades,61.97,52.48
    .trainer >> Go upstairs and train your class spells
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    .trainer >> Go upstairs and train your class spells
    .goto Tirisfal Glades,61.55,52.61
    .vendor >> Buy the Blood Pact book if you have money after training (otherwise buy it later)
step << Priest
    .goto Tirisfal Glades,61.77,51.56
    .trainer >> Train Enchanting. Disenchant Greens you find (or craft through tailoring) to eventually make a Wand
    >> You can skip this step if you're an alt/think it'd be easier to buy one from the AH later
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    .trainer >> Go upstairs and train your class spells
>>Talk to |cFF00FF25Dark Cleric Beryl|r
    .turnin 5651 >> Turn in In Favor of Darkness
.target Dark Cleric Beryl
    .accept 5650 >> Accept Garments of Darkness
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    .trainer >> Go upstairs and train your class spells
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >> Use Lesser Heal (Rank 2) on Deathguard Kel. Then buff him with Power Word: Fortitude
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
step << Rogue
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Oliver. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Warrior
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Oliver. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step
    .goto Tirisfal Glades,59.45,52.40
.target Apothecary Johaan
>>Talk to |cFF00FF25Apothecary Johaan|r
    .accept 367 >>Accept A New Plague
step
    .goto Tirisfal Glades,58.20,51.45
.target Deathguard Dillinger
>>Talk to |cFF00FF25Deathguard Dillinger|r
    .accept 404 >>Accept A Putrid Task
step
    #era/som
    #sticky
    #completewith next
    >>Loot the small purple Weeds on the ground
    .complete 5481,1 --Gloom Weed (3)
step
    .goto Tirisfal Glades,52.14,52.39
    >> Kill Zombies in the area. Loot them for their Claws
    .complete 404,1 --Putrid Claw (7)
step
    #sticky
    #completewith Warriors
    >>Kill any Decrepit Darkhounds you see. Loot them for their Blood
    .complete 367,1 --Darkhound Blood (5)
step
    #era/som
    .goto Tirisfal Glades,40.06,51.10
    >>Finish looting the small purple Weeds on the ground. They can be found all the way en route west to the field
    .complete 5481,1 --Gloom Weed (3)
step
    >>Loot the Pumpkins found in the field. Try to also save a Minor Healing Potion you get from now on too for later
    .goto Tirisfal Glades,35.92,50.61
    .complete 365,1 --Tirisfal Pumpkin (10)
step
    #label Warriors
    >>Kill Scarlet Warriors << !Rogue !Warrior
    >>Kill Scarlet Warriors. Be careful as they have 50% increased parry for 8 seconds after they do their defense stance animation << Rogue/Warrior
    .goto Tirisfal Glades,30.26,50.70
    .complete 427,1 --Scarlet Warrior (10)
step
    #softcore
    #completewith next
     .deathskip >> Die and respawn at Brill
step
    #hardcore
    #completewith next
     .hs >> Hearth to Brill
step
    #era/som
    >>Turn in at the Junior Apothecary. He patrols around the Graveyard
    .goto Tirisfal Glades,57.68,48.96
>>Talk to |cFF00FF25Junior Apothecary Holland|r
    .turnin 5481 >>Turn in Gordo's Task
.target Junior Apothecary Holland
    .accept 5482 >>Accept Doom Weed
step
    .goto Tirisfal Glades,58.20,51.45
>>Talk to |cFF00FF25Deathguard Dillinger|r
    .turnin 404 >>Turn in A Putrid Task
.target Deathguard Dillinger
    .accept 426 >>Accept The Mills Overrun
step
    .goto Tirisfal Glades,59.45,52.40
>>Talk to |cFF00FF25Apothecary Johaan|r
    .turnin 365 >> Turn in Fields of Grief
.target Apothecary Johaan
    .accept 407 >> Accept Fields of Grief
step
    .goto Tirisfal Glades,59.45,52.40
    .isQuestComplete 367
.target Apothecary Johaan
>>Talk to |cFF00FF25Apothecary Johaan|r
    .turnin 367 >>Turn in A New Plague
step
    .goto Tirisfal Glades,59.45,52.40
.target Apothecary Johaan
>>Talk to |cFF00FF25Apothecary Johaan|r
    .accept 368 >>Accept A New Plague
	.isQuestTurnedIn 367
step
    .goto Tirisfal Glades,59.45,52.40
>>Talk to |cFF00FF25Apothecary Johaan|r
    .turnin 365 >> Turn in Fields of Grief
.target Apothecary Johaan
    .accept 407 >> Accept Fields of Grief
step
    .goto Tirisfal Glades,60.58,51.77
>>Talk to |cFF00FF25Executor Zygand|r
    .turnin 427 >>Turn in At War With The Scarlet Crusade
.target Executor Zygand
    .accept 370 >>Accept At War With The Scarlet Crusade
step
    .goto Tirisfal Glades,60.73,51.52
    .accept 398 >>Accept Wanted: Maggot Eye
step
    >>Go inside the building
    .goto Tirisfal Glades,61.26,50.84
.target Magistrate Sevren
>>Talk to |cFF00FF25Magistrate Sevren|r
    .accept 358 >>Accept Graverobbers
step
    .goto Tirisfal Glades,60.93,52.01
.target Deathguard Burgess
>>Talk to |cFF00FF25Deathguard Burgess|r
    .accept 374 >>Accept Proof of Demise
step
    .xp 7
    .goto Tirisfal Glades,59.47,56.40
step
    .goto Tirisfal Glades,61.72,52.29
.target Coleman Farthing
>>Talk to |cFF00FF25Coleman Farthing|r
    .accept 354 >>Accept Deaths in the Family
    .accept 362 >>Accept The Haunted Mills
step
    #completewith next
    .vendor >> Buy food/water if needed
step
    >>Go in the room behind the innkeeper, then go downstairs
    .goto Tirisfal Glades,61.97,51.29
.target Captured Scarlet Zealot
>>Talk to |cFF00FF25Captured Scarlet Zealot|r
    .turnin 407 >>Turn in Fields of Grief
step
    #era/som
    >>Go upstairs
    .goto Tirisfal Glades,61.89,52.73
.target Gretchen Dedmar
>>Talk to |cFF00FF25Gretchen Dedmar|r
    .accept 375 >>Accept The Chill of Death
step << Priest
    #level 8
    .goto Tirisfal Glades,61.57,52.19
.target Dark Cleric Beryl
>>Talk to |cFF00FF25Dark Cleric Beryl|r
    .turnin 5650 >>Turn in Garments of Darkness
    .trainer >> Train your class spells.
step << Priest
    .goto Tirisfal Glades,61.57,52.19
.target Dark Cleric Beryl
>>Talk to |cFF00FF25Dark Cleric Beryl|r
    .turnin 5650 >>Turn in Garments of Darkness
step << Warrior
    #level 8
    .goto Tirisfal Glades,61.85,52.55
    .trainer >> Train your class spells
step << Mage
    #level 8
    .goto Tirisfal Glades,61.97,52.48
    .trainer >> Train your class spells
step << Warlock
    #level 8
    .goto Tirisfal Glades,61.59,52.39
    .trainer >> Train your class spells
    .goto Tirisfal Glades,61.55,52.61
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step << Rogue
    #level 8
    .goto Tirisfal Glades,61.75,52.00
    .trainer >> Train your class spells
step << Rogue
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Oliver. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Warrior
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Oliver. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step
    #era/som
    #sticky
    #completewith NewPlague
    >>Kill Duskbats that you see. Loot them for their Pelts
    .complete 375,1 --Duskbat Pelt (5)
step
    >>Finish killing Darkhounds and looting them for their blood
    .complete 367,1 --Darkhound Blood (5)
    .goto Tirisfal Glades,59.47,56.40,100,0
    .goto Tirisfal Glades,64.35,55.26,100,0
    .goto Tirisfal Glades,67.48,54.85,100,0
    .goto Tirisfal Glades,63.34,50.88,100,0
       .goto Tirisfal Glades,59.47,56.40
step
    #label NewPlague
    .goto Tirisfal Glades,59.45,52.40
>>Talk to |cFF00FF25Apothecary Johaan|r
    .turnin 367 >>Turn in A New Plague
.target Apothecary Johaan
    .accept 368 >>Accept A New Plague
step
    #era/som
    >>Kill Duskbats that you see. Loot them for their Pelts
    .goto Tirisfal Glades,58.60,57.13,100,0
    .goto Tirisfal Glades,66.16,53.62,100,0
    .goto Tirisfal Glades,62.17,35.64,100,0
       .goto Tirisfal Glades,58.60,57.13
    .complete 375,1 --Duskbat Pelt (5)
step << Rogue/Warrior
    #era/som
    .xp 7+3800 >> Grind to 3800+/4500
step << Rogue/Warrior
    #era/som
    .goto Tirisfal Glades,61.03,52.38
    >>Purchase a Coarse Thread from Abigail
    .complete 375,2 --Coarse Thread (1)
step << Rogue/Warrior
    #era/som
    >>Go upstairs
    .goto Tirisfal Glades,61.89,52.73
.target Gretchen Dedmar
>>Talk to |cFF00FF25Gretchen Dedmar|r
    .turnin 375 >>Turn in The Chill of Death
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    .trainer >> Train your level 8 spells
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    .trainer >> Train your level 8 spells
step
    #era/som
    #sticky
    #completewith Eye
    >>Loot the small purple Weeds on the ground. They're found near trees in the Gnoll area
    .complete 5482,1 --Doom Weed (10)
step
    #sticky
    #completewith Eye
    >>Kill any type of Gnoll. Loot them for their Ichor
    .complete 358,3 --Embalming Ichor (8)
step
    .goto Tirisfal Glades,55.15,42.26
    .complete 358,1 --Rot Hide Graverobber (8)
step
    .goto Tirisfal Glades,58.86,31.41
    .complete 358,2 --Rot Hide Mongrel (5)
step
    #label Eye
    >>Kill Maggot Eye. Be careful as he can be VERY difficult. Use health potions here if you got one earlier
    .goto Tirisfal Glades,58.66,30.76
    .complete 398,1 --Maggot Eye's Paw (1)
step
   #sticky
    #label IchorAndy
    .goto Tirisfal Glades,59.61,37.09
    >>Kill any type of Gnoll. Loot them for their Ichor
    .complete 358,3 --Embalming Ichor (8)
step
    #era/som
   .goto Tirisfal Glades,56.81,40.19
    >>Finish looting the small purple Weeds on the ground. They're found near trees in the Gnoll area
    .complete 5482,1 --Doom Weed (10)
step
    #requires IchorAndy
    >>Kill Murlocs. Loot them for their Scales - Take care around here, these mobs are semi-difficult
       .goto Tirisfal Glades,58.68,27.35,0
    .goto Tirisfal Glades,58.68,27.35,100,0
    .goto Tirisfal Glades,64.25,29.66,100,0
       .goto Tirisfal Glades,58.68,27.35
    .complete 368,1 --Vile Fin Scale (5)
step
    #softcore
    #completewith next
     .deathskip >> Die and respawn at Brill
step
    #hardcore
    #completewith next
    .goto Tirisfal Glades,58.40,47.76,250 >> Run back to Brill. Hearth if its up
step
    #era/som
    .goto Tirisfal Glades,58.40,47.76
.target Junior Apothecary Holland
>>Talk to |cFF00FF25Junior Apothecary Holland|r
    .turnin 5482 >>Turn in Doom Weed
step
    .goto Tirisfal Glades,59.45,52.40
>>Talk to |cFF00FF25Apothecary Johaan|r
    .turnin 368 >>Turn in A New Plague
.target Apothecary Johaan
    .accept 369 >>Accept A New Plague
step
    .goto Tirisfal Glades,60.58,51.77
.target Executor Zygand
>>Talk to |cFF00FF25Executor Zygand|r
    .turnin 398 >>Turn in Wanted: Maggot Eye
step
    .goto Tirisfal Glades,61.26,50.84
>>Talk to |cFF00FF25Magistrate Sevren|r
    .turnin 358 >>Turn in Graverobbers
.target Magistrate Sevren
    .accept 405 >>Accept The Prodigal Lich
    .accept 359 >>Accept Forsaken Duties
step
    #era/som
    .goto Tirisfal Glades,61.03,52.38
    >>Purchase a Coarse Thread from Abigail
    .complete 375,2 --Coarse Thread (1)
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    .trainer >> Train your level 8 spells
step
    #era/som
    >>Go upstairs
    .goto Tirisfal Glades,61.89,52.73
.target Gretchen Dedmar
>>Talk to |cFF00FF25Gretchen Dedmar|r
    .turnin 375 >>Turn in The Chill of Death
step << !Warrior !Rogue
    #completewith next
    +Buy Food and Water if needed
step << Warrior/Rogue
    #completewith next
    +Buy Food if needed
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    .trainer >> Train your level 8 spells
step << Mage
    .goto Tirisfal Glades,61.97,52.48
    .trainer >> Train your level 8 spells
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    .trainer >> Train your level 8 spells
    .goto Tirisfal Glades,61.55,52.61
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    .trainer >> Train your class spells
step << Rogue/Warrior
    .goto Tirisfal Glades,61.82,52.82
    .trainer >> Train First Aid to make Bandages. Try to make them during points at which you're waiting for things, such as Zeppelins
step
    .goto Tirisfal Glades,61.707,52.049
    .vendor >> vendor trash. Buy food/water if needed
step << Rogue
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Oliver. Otherwise, skip this step
    .collect 2494,1
step << Warrior
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Oliver. Otherwise, skip this step
    .collect 2488,1
step
    #sticky
    #completewith Letter
    >>Keep an eye out for a rare quest start drop from mobs in the area
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Accept A Letter Undelivered
step
    #sticky
    #label RibSkull
    >>Kill Skeleton Warriors for Ribs, kill Skeleton Casters for Skulls
    .complete 426,1 --Notched Rib (5)
    .complete 426,2 --Blackened Skull (3)
step
    >>Grind to Agamand Mills. Kill Devlin and loot him for his remains
    .complete 362,1 --Devlin's Remains (1)
    .goto Tirisfal Glades,47.34,40.78
step
    >>Kill Nissa. She can be inside the building
    .goto Tirisfal Glades,49.34,36.02
    .complete 354,2 --Nissa's Remains (1)
step
   .unitscan Gregor Agamand
    >>Kill Gregor (a ghoul). He can patrol around a bit
    .goto Tirisfal Glades,45.85,29.23
    .complete 354,1 --Gregor's Remains (1)
step
    #label Letter
    .unitscan Thurman Agamand
    >>Kill Thurman (a zombie). He can patrol around a bit
    .goto Tirisfal Glades,42.89,32.26
    .complete 354,3 --Thurman's Remains (1)
step
    .isOnQuest 361
    .xp 9+3765 >> Grind to 9 3765+/6500xp
step
    .xp 9+4245 >> Grind to 9 4245+/6500xp
--N needs fixing
step
    #requires RibSkull
    #softcore
     .deathskip >> Die and respawn at Brill
step
    #hardcore
    #completewith next
    .goto Tirisfal Glades,58.20,51.44,250 >> Run back to Brill. Hearth if its up
step
    .goto Tirisfal Glades,58.20,51.44
.target Deathguard Dillinger
>>Talk to |cFF00FF25Deathguard Dillinger|r
    .turnin 426 >>Turn in The Mills Overrun
step
    .isOnQuest 361
    .goto Tirisfal Glades,61.58,52.60
.target Yvette Farthing
>>Talk to |cFF00FF25Yvette Farthing|r
    .turnin 361 >>Turn in A Letter Undelivered
step
    .goto Tirisfal Glades,61.72,52.29
>>Talk to |cFF00FF25Coleman Farthing|r
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
.target Coleman Farthing
    .accept 355 >>Accept Speak with Sevren
step
    .xp 10
step
    .goto Tirisfal Glades,61.707,52.049
    .vendor >> vendor trash. Buy food/water if needed
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    .trainer >> Train your class spells
.target Baltus Fowler
.target Austil de Mon
>>Talk to |cFF00FF25Austil de Mon|r
-->>Talk to |cFF00FF25Baltus Fowler|r
    .accept 1818 >> Accept Speak with Dillinger
step << Warrior
    .goto Tirisfal Glades,58.20,51.44
>>Talk to |cFF00FF25Deathguard Dillinger|r
    .turnin 1818 >> Turn in Speak with Dillinger
.target Deathguard Dillinger
    .accept 1819 >> Accept Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>Click on the skull on the ground. This will summon Ulag. Kill him
    .complete 1819,1 --Ulag the Cleaver (1)
step << Warrior
    .goto Tirisfal Glades,58.20,51.44
>>Talk to |cFF00FF25Deathguard Dillinger|r
    .turnin 1819 >> Turn in Ulag the Cleaver
.target Deathguard Dillinger
    .accept 1820 >> Accept Speak with Coleman
step << Mage
    .goto Tirisfal Glades,61.97,52.48
    .trainer >> Go upstairs and train your class spells
.target Cain Firesong
>>Talk to |cFF00FF25Cain Firesong|r
    .accept 1881 >> Accept Speak with Anatasia
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    .trainer >> Go upstairs and train your class spells
     .goto Tirisfal Glades,61.62,52.68
.target Ageron Kargal
>>Talk to |cFF00FF25Ageron Kargal|r
    .accept 1478 >> Accept Halgar's Summons
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    .trainer >> Go upstairs and train your class spells
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    .trainer >> Go upstairs and train your class spells
.target Marion Call
>>Talk to |cFF00FF25Marion Call|r
    .accept 1885 >> Accept Mennet Carkad
step << Rogue
    .goto Tirisfal Glades,60.12,53.39
    .vendor >> Repair your weapon. If you have enough money (4s 1c) buy another Stiletto from Oliver.
step << Warrior
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Oliver. Otherwise, skip this step
    .collect 2488,1
step << !Warlock
    #sticky
    #completewith next
    >>Loot rings from scarlet mobs in the area. You'll finish this later
    .complete 374,1 --Scarlet Insignia Ring (10)
step << !Warlock
    .goto Tirisfal Glades,51.13,67.80
    .complete 370,1 --Captain Perrine (1)
    .complete 370,2 --Scarlet Zealot (3)
    .complete 370,3 --Scarlet Missionary (3)
step
    .goto Undercity,15.06,32.86,50 >> Go into Undercity via the Sewers
step
    >>Take one of the lifts down to the main part of Undercity
    .goto Undercity,67.72,37.88
    .home >> Set your Hearthstone to Undercity
step << Warlock
    .goto Undercity,85.07,25.99
>>Talk to |cFF00FF25Carendin Halgar|r
    .turnin 1478 >> Turn in Halgar's Summons
.target Carendin Halgar
    .accept 1473 >> Accept Creature of the Void
step << Rogue
    .goto Undercity,83.53,69.09
.target Mennet Carkad
>>Talk to |cFF00FF25Mennet Carkad|r
    .turnin 1885 >> Turn in Mennet Carkad
    .accept 1886 >> Accept The Deathstalkers
step << Rogue
    .goto Undercity,77.50,49.63
    .vendor >> Buy your level 11 thrown from Nathaniel. Equip it when you're level 11
step << Rogue
    .money <0.3200
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Cutlass from him (20s 23c). You'll train Swords soon. Skip this if your weapon is better, or there's something better on the AH
    .collect 851,1 --Collect Cutlass (1)
step << Warrior
    .money <0.3950
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Claymore from him (26s 76c). You'll train 2h Swords soon. Skip this if your weapon is better, or there's something better on the AH
    .collect 1198,1 --Collect Claymore (1)
step << Warrior/Rogue
    .goto Undercity,60.18,29.10
    .trainer >> Train Blacksmithing. This will allow you to make +2 damage sharpening stones for your weapon which are very strong.
    >> If you want to go for your own professions, skip this step
step << Warrior/Rogue
    .goto Undercity,61.41,30.06
     >> Buy a Mining Pick from Samuel
    .collect 2901,1 --Mining Pick (1)
    >> If you want to go for your own professions, skip this step
step << Warrior
    .goto Undercity,57.32,32.77
    .trainer >> Train 2h Swords
step << Rogue
    .goto Undercity,57.32,32.77
    .trainer >> Train Swords
step << Warrior/Rogue
    .goto Undercity,56.04,37.47
    .trainer >> Train Mining. This will allow you to make +2 damage sharpening stones for your weapon which are very strong.
    >> If you want to go for your own professions, skip this step
step << Mage
    .goto Undercity,85.13,10.03
>>Talk to |cFF00FF25Anastasia Hartwell|r
    .turnin 1881 >> Turn in Speak with Anatasia
.target Anastasia Hartwell
    .accept 1882 >> Accept The Balnir Farmstead
step
    >>Remember to turn on Find Minerals after every death/logout if you trained Mining << Rogue/Warrior
    .goto Undercity,84.06,17.44
>>Talk to |cFF00FF25Bethor Iceshard|r
    .turnin 405 >>Turn in The Prodigal Lich
.target Bethor Iceshard
    .accept 357 >>Accept The Lich's Identity
step
    #sticky
    #completewith next
    .goto Undercity,82.36,15.31
    +Go to the Reagent Vendor on your right and perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << Rogue
    #sticky
    #completewith UnluckyRogue
    .unitscan Astor Hadren
    >>If you see Astor, talk to him and kill him. Loot him for the letter. He patrols the road between Brill and The Sepulcher
    .complete 1886,1 --Astor's Letter of Introduction (1)
step << Warlock
    #sticky
    #completewith next
    >>Loot rings from scarlet mobs in the area. You'll finish this later
    .complete 374,1 --Scarlet Insignia Ring (10)
step << Warlock
    .goto Tirisfal Glades,51.13,67.80
    >> Loot the chest inside. Kill Scarlet mobs
    .complete 370,1 --Captain Perrine (1)
    .complete 370,2 --Scarlet Zealot (3)
    .complete 370,3 --Scarlet Missionary (3)
    .complete 1473,1 --Egalin's Grimoire (1)
step << Warlock
    >>Go back into Undercity
    .goto Undercity,85.07,25.99
>>Talk to |cFF00FF25Carendin Halgar|r
    .turnin 1473 >> Turn in Creature of the Void
.target Carendin Halgar
    .accept 1471 >> Accept The Binding
step << Warlock
    >>Use the Runes of Summoning in your bag on top of the summoning circle. Kill the Voidwalker
    .goto Undercity,86.60,26.95
    .complete 1471,1 --Summoned Voidwalker (1)
step << Warlock
    >>It's recommended to use Voidwalker until you get your Succubus
    .goto Undercity,85.07,25.99
.target Carendin Halgar
>>Talk to |cFF00FF25Carendin Halgar|r
    .turnin 1471 >> Turn in The Binding
step << Warlock
    #sticky
    #completewith next
    .goto Undercity,85.26,19.89
    +Go above the Relic Vendor and perform a Logout Skip by positioning your character until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << Warlock
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step
    .goto Tirisfal Glades,60.58,51.76
>>Talk to |cFF00FF25Executor Zygand|r
    .turnin 370 >>Turn in At War With The Scarlet Crusade
.target Executor Zygand
    .accept 371 >>Accept At War With The Scarlet Crusade
step
    #completewith next
    .vendor >> If you have spare money and need bags, you can buy 6 slots from Mrs.Winters next to the Inn entrance. Otherwise, skip this step
step
    .goto Tirisfal Glades,61.707,52.049
    .vendor 5688 >> Buy food/water inside the Inn if needed
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
>>Talk to |cFF00FF25Deathguard Linnea|r
    .turnin 359 >>Turn in Forsaken Duties
.target Deathguard Linnea
    .accept 360 >>Accept Return to the Magistrate
    .accept 356 >>Accept Rear Guard Patrol
step << Mage
    #sticky
    #label Snapdragon
    >>Click any of the plants nearby
    .goto Tirisfal Glades,77.53,61.83
    .complete 1882,1 --Balnir Snapdragons (1)
step
    .goto Tirisfal Glades,75.88,60.90
    >>Kill Undead in the field
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
step
    #sticky
    #completewith next
    >>Loot rings from scarlet mobs in the area. You'll finish this later
    .complete 374,1 --Scarlet Insignia Ring (10)
step
    >>Be careful as the Friars heal. Kill Captain Vachon inside
    .complete 371,1 --Captain Vachon (1)
    .complete 371,2 --Scarlet Friar (5)
    .goto Tirisfal Glades,79.47,55.92
step
    >>Kill Spiders. Loot them for their venom
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .goto Tirisfal Glades,86.19,52.00
step
    .complete 357,1 --The Lich's Spellbook (1)
    .goto Tirisfal Glades,67.97,42.09
step
    #softcore
    #completewith next
    .goto Tirisfal Glades,66.60,44.95
    .deathskip >> Die ON THE SMALLER ISLAND and respawn at Brill
step
    #softcore
    #era/som
    .goto Tirisfal Glades,59.45,52.39
>>Talk to |cFF00FF25Apothecary Johaan|r
    .turnin 369 >>Turn in A New Plague
.target Apothecary Johaan
    .accept 492 >>Accept A New Plague
    .accept 445 >>Accept Delivery to Silverpine Forest
step
    #hardcore
    #era/som
    >>Run back to Brill
    .goto Tirisfal Glades,59.45,52.39
>>Talk to |cFF00FF25Apothecary Johaan|r
    .turnin 369 >>Turn in A New Plague
.target Apothecary Johaan
    .accept 492 >>Accept A New Plague
    .accept 445 >>Accept Delivery to Silverpine Forest
step
    #softcore
    #som
    #phase 3-6
    .goto Tirisfal Glades,59.45,52.39
>>Talk to |cFF00FF25Apothecary Johaan|r
    .turnin 369 >>Turn in A New Plague
.target Apothecary Johaan
    .accept 492 >>Accept A New Plague
--  .accept 445 >>Accept Delivery to Silverpine Forest
step
    #hardcore
    #som
    #phase 3-6
    >>Run back to Brill
    .goto Tirisfal Glades,59.45,52.39
>>Talk to |cFF00FF25Apothecary Johaan|r
    .turnin 369 >>Turn in A New Plague
.target Apothecary Johaan
    .accept 492 >>Accept A New Plague
--   .accept 445 >>Accept Delivery to Silverpine Forest
step
    .goto Tirisfal Glades,60.58,51.77
>>Talk to |cFF00FF25Executor Zygand|r
    .turnin 371 >>Turn in At War With The Scarlet Crusade
.target Executor Zygand
    .accept 372 >>Accept At War With The Scarlet Crusade
step
    .goto Tirisfal Glades,61.26,50.84
.target Magistrate Sevren
>>Talk to |cFF00FF25Magistrate Sevren|r
    .turnin 360 >>Turn in Return to the Magistrate
    .turnin 355 >>Turn in Speak with Sevren
step
    .isQuestComplete 374
    .goto Tirisfal Glades,60.93,52.01
.target Deathguard Burgess
>>Talk to |cFF00FF25Deathguard Burgess|r
    .turnin 374 >>Turn in Proof of Demise
step
    #completewith next
    .vendor >> If you have spare money and need bags, you can buy 6 slots from Mrs.Winters next to the Inn entrance. Otherwise, skip this step
step
    .goto Tirisfal Glades,61.707,52.049
    .vendor 5688 >> Buy food/water inside the Inn if needed
step
    .goto Tirisfal Glades,61.94,51.40
.target Captured Mountaineer
>>Talk to |cFF00FF25Captured Mountaineer|r
    .turnin 492 >>Turn in A New Plague
step
    .hs >> Hearth to Undercity
step << Mage
    >>Choose any reward. Personal preference
    .goto Undercity,85.15,10.04
.target Anastasia Hartwell
>>Talk to |cFF00FF25Anastasia Hartwell|r
    .turnin 1882 >>Turn in The Balnir Farmstead
step << Rogue
    .isQuestComplete 1886
    .goto Undercity,84.06,17.46
>>Talk to |cFF00FF25Bethor Iceshard|r
    .turnin 357 >>Turn in The Lich's Identity
.target Bethor Iceshard
    .accept 366 >>Accept Return the Book
step << Rogue
    .money <0.2200
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Cutlass from him (20s 23c). Skip this if your weapon is better, or there's something better on the AH
    .collect 851,1 --Collect Cutlass (1)
step << Warrior
    .money <0.2950
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Claymore from him (26s 76c). Skip this if your weapon is better, or there's something better on the AH
    .collect 1198,1 --Collect Claymore (1)
step << Rogue
    .goto Undercity,83.52,69.10
.target Mennet Carkad
>>Talk to |cFF00FF25Mennet Carkad|r
    .turnin 1886 >> Turn in The Deathstalkers
    .isQuestComplete 1886
step
    .goto Undercity,83.52,69.10
.target Mennet Carkad
>>Talk to |cFF00FF25Mennet Carkad|r
    .accept 1898 >>Accept The Deathstalkers
    .isQuestTurnedIn 1886
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,54.84,76.31
>>Talk to |cFF00FF25Andron Gant|r
    .turnin 1898 >> Turn in The Deathstalkers
.target Andron Gant
    .accept 1899 >> Accept The Deathstalkers
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,55.43,76.87
    >>Loot the Bookshelf behind Andron
    .complete 1899,1
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,83.53,69.12
    .turnin 1899 >> Turn in The Deathstalkers
.target Mennet Carkad
>>Talk to |cFF00FF25Mennet Carkad|r
    .accept 1978 >> Accept The Deathstalkers
step << Rogue
    .isQuestTurnedIn 1886
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
.target Varimathras
>>Talk to |cFF00FF25Varimathras|r
    .turnin 1978 >>Turn in The Deathstalkers
    >>Go to the edge of the main platform and perform a Logout Skip by positioning your character until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=jj85AXyF1XE >> Open this tab when running to the turn in. CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << Rogue
    .isQuestTurnedIn 1886
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step
    .goto Undercity,84.06,17.46
>>Talk to |cFF00FF25Bethor Iceshard|r
    .turnin 357 >>Turn in The Lich's Identity
.target Bethor Iceshard
    .accept 366 >>Accept Return the Book
step
    #sticky
    #completewith next
    .goto Undercity,82.36,15.31
    +Go to the Reagent Vendor on your right and perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step
    .goto Tirisfal Glades,65.49,60.25
.target Deathguard Linnea
>>Talk to |cFF00FF25Deathguard Linnea|r
    .turnin 356 >>Turn in Rear Guard Patrol
step
    #sticky
    #label Rings
    >>Loot rings from scarlet mobs you see
    .complete 374,1 --Scarlet Insignia Ring (10)
step
    .goto Tirisfal Glades,79.52,25.14
    >>Kill Captain Melrache and his guards in the tower
    >>Grind mobs en route << Warrior/Mage
    .complete 372,1 --Captain Melrache (1)
    .complete 372,2 --Scarlet Bodyguard (2)
step << Mage/Warrior
    .isOnQuest 374
    .xp 11+5300 >> Grind to 5300+/8800xp
step << Mage/Warrior
    .isQuestTurnedIn 374
    .xp 11+5925 >> Grind to 5925+/8800xp
step
    #requires Rings
    .goto Tirisfal Glades,68.19,41.92
>>Talk to |cFF00FF25Gunther Arcanus|r
    .turnin 366 >>Turn in Return the Book
.target Gunther Arcanus
    .accept 409 >>Accept Proving Allegiance
step
    .goto Tirisfal Glades,68.16,42.01
    >>Loot the box of candles on the ground
    .collect 3080,1 --Collect Candle of Beckoning (1)
step
    .goto Tirisfal Glades,66.64,44.89
    >>Right click on the table in the middle of the island. Kill Nefara when she spawns
    .turnin 410 >> Turn in The Dormant Shade
    .complete 409,1 --Lillith Nefara (1)
step << Mage/Warrior
    .isOnQuest 374
    .xp 11+5900 >> Grind to 5900+/8800xp
step << Mage/Warrior
    .isQuestTurnedIn 374
    .xp 11+6525 >> Grind to 6525+/8800xp
step
    .goto Tirisfal Glades,68.20,41.92
>>Talk to |cFF00FF25Gunther Arcanus|r
    .turnin 409 >>Turn in Proving Allegiance
.target Gunther Arcanus
    .accept 411 >>Accept The Prodigal Lich Returns
step
    #softcore
    #completewith next
    .deathskip >> Swim west, die to mobs, and respawn at Brill
    .goto Tirisfal Glades,64.40,42.65
step
    #softcore
    .goto Tirisfal Glades,60.58,51.77
.target Executor Zygand
>>Talk to |cFF00FF25Executor Zygand|r
    .turnin 372 >>Turn in At War With The Scarlet Crusade
step
    #hardcore
    >>Run back to Brill
    .goto Tirisfal Glades,60.58,51.77
.target Executor Zygand
>>Talk to |cFF00FF25Executor Zygand|r
    .turnin 372 >>Turn in At War With The Scarlet Crusade
step
    .goto Tirisfal Glades,60.93,52.01
.target Deathguard Burgess
>>Talk to |cFF00FF25Deathguard Burgess|r
    .turnin 374 >>Turn in Proof of Demise
step << Rogue
    #sticky
    #completewith next
    .unitscan Astor Hadren
    >>If you see Astor, talk to him and kill him. Loot him for the letter. He patrols the road between Brill and The Sepulcher
    .complete 1886,1 --Astor's Letter of Introduction (1)
step
    .goto Undercity,66.36,0.36
    .zone Undercity >> Run to Undercity
step << Rogue/Warrior
    .isQuestComplete 1886 << Rogue
    .goto Undercity,84.06,17.46
.target Bethor Iceshard
>>Talk to |cFF00FF25Bethor Iceshard|r
    .turnin 411 >>Turn in The Prodigal Lich Returns
step << Rogue
    .money <0.2200
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Cutlass from him (20s 23c). Skip this if your weapon is better, or there's something better on the AH
    .collect 851,1 --Collect Cutlass (1)
step << Warrior
    #level 12
    .goto Undercity,46.93,15.23
    .trainer >> Train your class spells
step << Warrior
    .money <0.2950
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Claymore from him (26s 76c). Skip this if your weapon is better, or there's something better on the AH
    .collect 1198,1 --Collect Claymore (1)
step << Warrior
    #sticky
    #completewith next
    .goto Undercity,82.36,15.31
    +Perform a Logout Skip by positioning your character until it looks like they're floating on the edge of a bridge, then logging out and back in.
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << Warrior
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << Rogue
    .goto Undercity,83.52,69.10
.target Mennet Carkad
>>Talk to |cFF00FF25Mennet Carkad|r
    .turnin 1886 >> Turn in The Deathstalkers
    .isQuestComplete 1886
step << Rogue
    .goto Undercity,83.52,69.10
.target Mennet Carkad
>>Talk to |cFF00FF25Mennet Carkad|r
    .accept 1898 >>Accept The Deathstalkers
    .isQuestTurnedIn 1886
step << Rogue
    #level 12
    .goto Undercity,83.87,72.08
    .trainer >> Train your class spells
step << Priest
     #level 12
    .goto Undercity,48.98,18.33
    .trainer >> Train your class spells
.target Aelthalyste
>>Talk to |cFF00FF25Aelthalyste|r
    .turnin 5663 >> Turn in Touch of Weakness
step << Priest
    .goto Undercity,48.98,18.33
.target Aelthalyste
>>Talk to |cFF00FF25Aelthalyste|r
    .turnin 5663 >> Turn in Touch of Weakness
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,54.84,76.31
>>Talk to |cFF00FF25Andron Gant|r
    .turnin 1898 >> Turn in The Deathstalkers
.target Andron Gant
    .accept 1899 >> Accept The Deathstalkers
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,55.43,76.87
    >>Loot the Bookshelf behind Andron
    .complete 1899,1
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,83.53,69.12
    .turnin 1899 >> Turn in The Deathstalkers
.target Mennet Carkad
>>Talk to |cFF00FF25Mennet Carkad|r
    .accept 1978 >> Accept The Deathstalkers
step << Rogue
    .isQuestTurnedIn 1886
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
.target Varimathras
>>Talk to |cFF00FF25Varimathras|r
    .turnin 1978 >>Turn in The Deathstalkers
    >>Go to the edge of the main platform and perform a Logout Skip by positioning your character until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=jj85AXyF1XE >> Open this tab when running to the turn in. CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << Rogue
    .isQuestTurnedIn 1886
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << !Warrior
    .goto Undercity,84.07,17.45
.target Bethor Iceshard
>>Talk to |cFF00FF25Bethor Iceshard|r
    .turnin 411 >>Turn in The Prodigal Lich Returns
step << Mage
    #level 12
    .goto Undercity,85.14,10.04
    .trainer >> Train your class spells
step << Warlock
    #level 12
    .goto Undercity,86.20,15.92
    .trainer >> Train your class spells inside the building
step << !Warrior
    #era/som
    .goto Undercity,46.16,43.97,50,0
    .goto Undercity,41.04,33.26,50,0
    .goto Undercity,23.86,35.90,50,0
    .goto Undercity,15.06,32.86,50 >> Exit Undercity via the Sewers
step << !Warrior
    #som
    #phase 3-6
    #sticky
    #completewith next
    .goto Undercity,82.36,15.31
    +Perform a Logout Skip by positioning your character until it looks like they're floating on the edge of a bridge, then logging out and back in.
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << !Warrior
    #som
    #phase 3-6
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << Undead
    #som
    #phase 3-6
    #sticky
    #completewith next
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. Make Sharpening Stones/Bandages while you wait << Warrior/Rogue
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. Conjure Food/water while you wait << Mage
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. << !Warrior !Rogue !Mage
    .goto Tirisfal Glades,60.74,58.74
step << Undead
    #som
    #phase 3-6
    .goto Tirisfal Glades,60.89,59.06,30,0
    .goto Tirisfal Glades,60.73,58.76
    .zone Durotar >> Take the zeppelin to Durotar
step << Undead
    #som
    #phase 3-6
    >>Run to Razor Hill
    .goto Durotar,50.85,43.59
.target Takrin Pathseeker
>>Talk to |cFF00FF25Takrin Pathseeker|r
    .accept 840 >>Accept Conscript of the Horde
step << Undead
    #som
    #phase 3-6
    >>Run to The Barrens
    .goto The Barrens,62.26,19.38
>>Talk to |cFF00FF25Kargal Battlescar|r
    .turnin 840 >>Turn in Conscript of the Horde
.target Kargal Battlescar
    .accept 842 >>Accept Crossroads Conscription
step << Undead
    #som
    #phase 3-6
    .goto The Barrens,52.23,31.01
>>Talk to |cFF00FF25Sergra Darkthorn|r
    .turnin 842 >>Turn in Crossroads Conscription
.target Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
step << Mage
    #som
    #phase 3-6
    +If you're planning on leveling via AoE, choose the Barrens AoE Guide manually. Otherwise, complete this step
]])

RXPGuides.RegisterGuide([[
#group RestedXP Horde 1-22
<< Horde
#version 1
#defaultfor Undead/Troll Rogue/Orc Rogue
#classic
#era/som
#name 11-14 Silverpine Forest
#next 12-17 The Barrens

step << !Undead Rogue
    .goto Tirisfal Glades,61.87,65.02,40 >> Run to Undercity
step << !Undead Rogue
    .goto Tirisfal Glades,61.81,74.42,30 >> Run to the Elevator room
step << !Undead Rogue
    >>Take one of the elevators down
    .goto Undercity,63.25,48.56
    .fp Undercity >> Get the Undercity flight path
step << !Undead Rogue
    .money <0.3023
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Cutlass from him (20s 23c). You'll train Swords soon. Skip this if your weapon is better, or there's something better on the AH
    .collect 851,1 --Collect Cutlass (1)
step << !Undead Rogue
    #softcore
    .goto Undercity,57.32,32.77
    .trainer >> Train Swords. If you didn't have enough to buy a cutlass earlier, check the AH for a weapon after
step << !Undead Rogue
    #hardcore
    .goto Undercity,57.32,32.77
    .trainer >> Train Swords. If you didn't have enough to buy a cutlass earlier, then buy a cheap weapon from the next vendor you see or wait for one to drop whilst questing
step << !Undead Rogue
    .goto Undercity,46.5,44.0,90 >> Exit Undercity via the Sewers
step
    .goto Tirisfal Glades,54.90,72.42,120,0
    .zone Silverpine Forest >> Run to Silverpine
step
    #sticky
    #completewith Rane
    .goto Silverpine Forest,57.42,9.80
    >>Kill Worgs, loot them for their hearts.
    .collect 3164,6 --Collect Discolored Worg Heart (x6)
step
    .unitscan Gorefang
    >>Talk to Erland to start his escort. Start at full health/mana
    .goto Silverpine Forest,56.19,9.18
.target Deathstalker Erland
>>Talk to |cFF00FF25Deathstalker Erland|r
    .accept 435 >>Accept Escorting Erland
step
    >>Be careful as up to 2 wolves can pull at once. Eat/drink as soon as you're out of combat
    .goto Silverpine Forest,54.12,13.45
    .complete 435,1 --Erland must reach Rane Yorick (1)
step
    #label Rane
    .goto Silverpine Forest,53.46,13.43
>>Talk to |cFF00FF25Rane Yorick|r
    .turnin 435 >>Turn in Escorting Erland
.target Rane Yorick
    .accept 429 >> Accept Wild Hearts
    .accept 449 >>Accept The Deathstalkers' Report
step
    >>Kill Worgs, loot them for their hearts.
    .goto Silverpine Forest,57.42,9.80
    .collect 3164,6 --Collect Discolored Worg Heart (6)
step
    #completewith next
    .goto Silverpine Forest,45.01,39.30
    .vendor >> vendor trash. Repair
step
    #sticky
    #completewith next
    #softcore
    .deathskip >> Die and respawn at The Sepulcher
step
    .goto Silverpine Forest,44.21,39.81
.target Dalar Dawnweaver
>>Talk to |cFF00FF25Dalar Dawnweaver|r
    .accept 421 >>Accept Prove Your Worth
    #softcore
step
    >>Run to The Sepulcher
    .goto Silverpine Forest,44.21,39.81
.target Dalar Dawnweaver
>>Talk to |cFF00FF25Dalar Dawnweaver|r
    .accept 421 >>Accept Prove Your Worth
    #hardcore
step
    .goto Silverpine Forest,43.98,40.93
.target Shadow Priest Allister
>>Talk to |cFF00FF25Shadow Priest Allister|r
    .accept 477 >>Accept Border Crossings
step << Undead
    .goto Silverpine Forest,43.43,41.67
.target Deathguard Podrig
>>Talk to |cFF00FF25Deathguard Podrig|r
    .accept 6321 >>Accept Supplying the Sepulcher
step
    #sticky
    #completewith next
    .goto Silverpine Forest,43.17,41.28
    .vendor >> Buy food/water if needed
step
    >>Go downstairs into the Crypt
    .goto Silverpine Forest,43.43,40.87
>>Talk to |cFF00FF25High Executor Hadrec|r
    .turnin 449 >>Turn in The Deathstalkers' Report
.target High Executor Hadrec
    .accept 3221 >>Accept Speak with Renferrel
    .accept 437 >>Accept The Dead Fields
step
    .goto Silverpine Forest,42.80,40.86
>>Talk to |cFF00FF25Apothecary Renferrel|r
    .turnin 429 >> Turn in Wild Hearts
    .turnin 445 >>Turn in Delivery to Silverpine Forest
    .turnin 3221 >>Turn in Speak with Renferrel
.target Apothecary Renferrel
    .accept 1359 >>Accept Zinge's Delivery
    .accept 447 >>Accept A Recipe For Death
    .accept 430 >>Accept Return to Quinn
step
    .goto Silverpine Forest,43.98,39.89
    .vendor >> Finish filling your bag slots with 6 slots from Edwin. Buy potions if you have spare money
step << Warlock/Mage/Priest
    #completewith next
    .money <0.1400
    .goto Silverpine Forest,44.80,39.24
    .vendor >> Talk to Andrea and check for a Wise Man's Belt. Buy it if its up
step
    .unitscan Son of Arugal
    .goto Silverpine Forest,50.00,39.46,70,0
    .goto Silverpine Forest,49.19,34.42,70,0
    .goto Silverpine Forest,50.00,39.46
    >>Kill Moonrage Whitescalps in the area. Avoid Sons of Arugal
    .complete 421,1 --Moonrage Whitescalp (5)
step
    .goto Silverpine Forest,44.19,39.78
>>Talk to |cFF00FF25Dalar Dawnweaver|r
    .turnin 421 >>Turn in Prove Your Worth
.target Dalar Dawnweaver
    .accept 422 >>Accept Arugal's Folly
step
    #sticky
    #completewith Nightlash
    >>Kill Bears. Loot them for their hearts
    .complete 447,1 --Grizzled Bear Heart (6)
step
    >>Go into the 2nd floor of the house in Valgan's Field. Loot the books on the floor
    .goto Silverpine Forest,52.82,28.58
    .complete 422,1 --Remedy of Arugal (1)
step
    >>Go upstairs in the building
    .goto Silverpine Forest,53.43,12.59
.target Quinn Yorick
>>Talk to |cFF00FF25Quinn Yorick|r
    .turnin 430 >>Turn in Return to Quinn
step
    >>Go back outside
    .goto Silverpine Forest,53.46,13.43
.target Rane Yorick
>>Talk to |cFF00FF25Rane Yorick|r
    .accept 425 >>Accept Ivar the Foul
step
    >>Kill Ivar in the Barn. Loot his Head
    .goto Silverpine Forest,51.51,13.90
    .complete 425,1 --Ivar's Head (1)
step
    .goto Silverpine Forest,53.46,13.43
.target Rane Yorick
>>Talk to |cFF00FF25Rane Yorick|r
    .turnin 425 >>Turn in Ivar the Foul
step
    #label Nightlash
    .unitscan Nightlash
    >>Kill Gnolls around The Dead Field until Nightlash spawns. Kill and Loot her for her Essence
    .goto Silverpine Forest,45.44,21.01
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
step
    .unitscan Son of Arugal
    >>Kill Bears in the area. Loot them for their hearts. Avoid Sons of Arugal
    .goto Silverpine Forest,41.73,17.83
    .complete 447,1 --Grizzled Bear Heart (6)
step
    .unitscan Krethis Shadowspinner
    >>Kill Spiders in the area. Loot them for their Blood.
    >> Be careful of the rare in the area, as it's impossibly difficult << !Mage !Warlock
    >> Be careful of the rare in the area, as it's difficult but doable. She has a 130 damage shield on a 15s cooldown, and 110 damage instant shock ability << Mage/Warlock
    .goto Silverpine Forest,35.81,14.44
    .complete 447,2 --Skittering Blood (6)
step
    #softcore
    .deathskip >> Die and respawn at The Sepulcher
step
    #era
    #hardcore
    >>Run back to The Sepulcher
    .goto Silverpine Forest,44.20,39.75
>>Talk to |cFF00FF25Dalar Dawnweaver|r
    .turnin 422 >> Turn in Arugal's Folly
.target Dalar Dawnweaver
    .accept 423 >> Accept Arugal's Folly
step
    #som
    #hardcore
    >>Run back to The Sepulcher
    .goto Silverpine Forest,44.20,39.75
.target Dalar Dawnweaver
>>Talk to |cFF00FF25Dalar Dawnweaver|r
    .turnin 422 >> Turn in Arugal's Folly
step << Warlock/Mage/Priest
    #completewith next
    .money <0.1400
    .goto Silverpine Forest,44.80,39.24
    >> Talk to Andrea and check for a Wise Man's Belt. Buy it if its up
    .collect 4786,1
step
    #era
    #softcore
    .goto Silverpine Forest,44.20,39.75
>>Talk to |cFF00FF25Dalar Dawnweaver|r
    .turnin 422 >> Turn in Arugal's Folly
.target Dalar Dawnweaver
    .accept 423 >> Accept Arugal's Folly
step
    #som
    #softcore
    .goto Silverpine Forest,44.20,39.75
.target Dalar Dawnweaver
>>Talk to |cFF00FF25Dalar Dawnweaver|r
    .turnin 422 >> Turn in Arugal's Folly
step
    >>Go down into the Crypt
    .goto Silverpine Forest,43.43,40.87
>>Talk to |cFF00FF25High Executor Hadrec|r
    .turnin 437 >> Turn in The Dead Fields
.target High Executor Hadrec
    .accept 438 >> Accept The Decrepit Ferry
step << Undead
    .goto Silverpine Forest,45.62,42.60
    >>DO NOT go Undercity yet
>>Talk to |cFF00FF25Karos Razok|r
    .turnin 6321 >>Turn in Supplying the Sepulcher
.target Karos Razok
    .accept 6323 >>Accept Ride to the Undercity
    .fp Sepulcher >> Get the Sepulcher flight path
step
    >>Click on the Boat
    .goto Silverpine Forest,58.39,34.79
    .turnin 438 >>Turn in The Decrepit Ferry
    .accept 439 >>Accept Rot Hide Clues
step
    #era
    #label Shackles
    >>Kill Worgen in the area. Loot them for their Shackles
    .goto Silverpine Forest,56.24,46.61
    .complete 423,1 --Glutton Shackle (6)
    .complete 423,2 --Darksoul Shackle (3)
step
    #softcore
    .goto Silverpine Forest,49.89,60.33
    >>Run into the camp and click on the crate. Turn in, pick up the quest, and die. Be careful as the mobs cast Frostbolt
    .turnin 477 >>Turn in Border Crossings
    .accept 478 >>Accept Maps and Runes
    .deathskip >> Die and respawn in The Sepulcher
step
    #hardcore
    .goto Silverpine Forest,49.89,60.33
    >>Click on the crate in the camp. Be careful killing the mobs in the area, as they cast Frostbolt and can easily run away and aggro other mobs
    .turnin 477 >>Turn in Border Crossings
    .accept 478 >>Accept Maps and Runes
step
    #softcore
    .goto Silverpine Forest,43.98,40.93
>>Talk to |cFF00FF25Shadow Priest Allister|r
    .turnin 478 >>Turn in Maps and Runes
.target Shadow Priest Allister
    .accept 481 >>Accept Dalar's Analysis
step
    #hardcore
    >>Run back to The Sepulcher
    .goto Silverpine Forest,43.98,40.93
>>Talk to |cFF00FF25Shadow Priest Allister|r
    .turnin 478 >>Turn in Maps and Runes
.target Shadow Priest Allister
    .accept 481 >>Accept Dalar's Analysis
step
    #era
    .goto Silverpine Forest,44.18,39.77
>>Talk to |cFF00FF25Dalar Dawnweaver|r
    .turnin 423 >>Turn in Arugal's Folly
    .turnin 481 >>Turn in Dalar's Analysis
.target Dalar Dawnweaver
    .accept 482 >>Accept Dalaran's Intentions
--    .accept 424 >>Accept Arugal's Folly
step
    #som
    .goto Silverpine Forest,44.18,39.77
>>Talk to |cFF00FF25Dalar Dawnweaver|r
    .turnin 481 >>Turn in Dalar's Analysis
.target Dalar Dawnweaver
    .accept 482 >>Accept Dalaran's Intentions
--    .accept 424 >>Accept Arugal's Folly
step
    .goto Silverpine Forest,43.98,40.93
.target Shadow Priest Allister
>>Talk to |cFF00FF25Shadow Priest Allister|r
    .turnin 482 >>Turn in Dalaran's Intentions
--   .accept 479 >>Accept Ambermill Investigations
step
    >>Go downstairs into the crypt
    .goto Silverpine Forest,43.43,40.87
>>Talk to |cFF00FF25High Executor Hadrec|r
    .turnin 439 >>Turn in Rot Hide Clues
.target High Executor Hadrec
    .accept 440 >>Accept The Engraved Ring << Undead
--   .accept 443 >>Accept Rot Hide Ichor
-- Engraved ring q line worth it depending on class?
step << Undead
    .xp 14
step << Undead
    .hs >> Hearth to Undercity
step << !Undead Rogue
   .goto Silverpine Forest,45.62,42.60
    .fp Sepulcher >> Get the Sepulcher flight path
    .fly Undercity >> Fly to Undercity
step << Undead
    .goto Undercity,61.48,41.81
>>Talk to |cFF00FF25Gordon Wendham|r
    .turnin 6323 >> Turn in Ride to the Undercity
.target Gordon Wendham
    .accept 6322 >> Accept Michael Garrett
step << Undead
    .goto Undercity,63.27,48.55
.target Michael Garrett
>>Talk to |cFF00FF25Michael Garrett|r
    .turnin 6322 >>Turn in Michael Garrett
--    .accept 6324 >>Accept Return to Podrig
step << Warrior
    .goto Undercity,46.93,15.23
    .trainer >> Train your class spells
step << Undead Rogue
    .isQuestComplete 1886
    .goto Undercity,83.52,69.10
.target Mennet Carkad
>>Talk to |cFF00FF25Mennet Carkad|r
    .turnin 1886 >> Turn in The Deathstalkers
step << Undead Rogue
    .goto Undercity,83.52,69.10
.target Mennet Carkad
>>Talk to |cFF00FF25Mennet Carkad|r
    .accept 1898 >>Accept The Deathstalkers
    .isQuestTurnedIn 1886
step << Rogue
    .goto Undercity,83.87,72.08
    .trainer >> Train your class spells
step << Priest
    .goto Undercity,48.98,18.33
    .trainer >> Train your class spells
step << Undead Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,54.84,76.31
>>Talk to |cFF00FF25Andron Gant|r
    .turnin 1898 >> Turn in The Deathstalkers
.target Andron Gant
    .accept 1899 >> Accept The Deathstalkers
step << Undead Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,55.43,76.87
    >>Loot the Bookshelf behind Andron
    .complete 1899,1
step << Undead Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,83.53,69.12
    .turnin 1899 >> Turn in The Deathstalkers
.target Mennet Carkad
>>Talk to |cFF00FF25Mennet Carkad|r
    .accept 1978 >> Accept The Deathstalkers
step << Mage
    .goto Undercity,85.15,10.04
    .trainer >> Train your class spells
step << Warlock
    .goto Undercity,86.20,15.92
    .trainer >> Train your class spells inside the building
step
    .goto Undercity,52.86,77.72,40,0
    .goto Undercity,48.83,69.28
.target Master Apothecary Faranell
>>Talk to |cFF00FF25Master Apothecary Faranell|r
    .turnin 447 >>Turn in A Recipe For Death
step
    .goto Undercity,50.15,67.98
>>Talk to |cFF00FF25Apothecary Zinge|r
    .turnin 1359 >> Turn in Zinge's Delivery
.target Apothecary Zinge
    .accept 1358 >> Accept Sample for Helbrim
step << Undead Rogue
    .isQuestTurnedIn 1886
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
.target Varimathras
>>Talk to |cFF00FF25Varimathras|r
    .turnin 1978 >>Turn in The Deathstalkers
    >>Go to the edge of the main platform and perform a Logout Skip by positioning your character until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=jj85AXyF1XE >> Open this tab when running to the turn in. CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << Undead Rogue
    .isOnQuest 1886
    >>Abandon The Deathstalkers, there's no opportunity left to do it
    .abandon 1886 >> Abandon The Deathstalkers
step << Undead !Rogue
    #sticky
    #completewith next
    +Perform a Logout Skip by jumping on the Bookshelf behind you, then logging out and back in.
    .link https://www.youtube.com/watch?v=c0DFOlRQrKs >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << !Undead Rogue
    .hs >> Hearth to Crossroads
step << Undead
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << Undead
    .goto Tirisfal Glades,61.26,50.84
>>Talk to |cFF00FF25Magistrate Sevren|r
    .turnin 440 >>Turn in The Engraved Ring
.target Magistrate Sevren
    .accept 441 >>Accept Raleigh and the Undercity
step << Undead
    #sticky
    #completewith next
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. Make Sharpening Stones/Bandages while you wait << Warrior/Rogue
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. Conjure Food/water while you wait << Mage
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. << !Warrior !Rogue !Mage
    .goto Tirisfal Glades,60.74,58.74
step << Undead
    .zone Durotar >> Take the zeppelin to Durotar
step << Undead
    .goto Durotar,50.85,43.59
.target Takrin Pathseeker
>>Talk to |cFF00FF25Takrin Pathseeker|r
    .accept 840 >>Accept Conscript of the Horde
step << Undead
    .goto The Barrens,62.26,19.38
>>Talk to |cFF00FF25Kargal Battlescar|r
    .turnin 840 >>Turn in Conscript of the Horde
.target Kargal Battlescar
    .accept 842 >>Accept Crossroads Conscription
step << Undead
    >>Grind mobs en route << Warrior/Rogue
    .goto The Barrens,52.23,31.01
>>Talk to |cFF00FF25Sergra Darkthorn|r
    .turnin 842 >>Turn in Crossroads Conscription
.target Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
step << Mage
    +If you're planning on leveling via AoE, choose the Barrens AoE Guide manually. Otherwise, complete this step
]])
