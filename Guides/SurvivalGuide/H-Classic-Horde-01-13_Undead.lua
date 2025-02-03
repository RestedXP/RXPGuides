local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 1-6 Undead
#version 1
#group RestedXP Survival Guide (H)
#subgroup RXP Survival Guide 1-20
#defaultfor Undead
#next 6-13 Undead

step << !Undead
    #completewith next
    +|cRXP_WARN_You have selected a guide meant for Undead. It is recommended you choose the same starter zone that you start in|r
step
    #completewith Zombies
	.destroy 6948 >> Destroy the |T134414:0|t[Hearthstone] in your bags, as it's no longer needed
step
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >> Run up out of the crypt toward |cRXP_FRIENDLY_Mordo|r
step
    .goto Tirisfal Glades,30.22,71.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordo|r
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
    +|cRXP_WARN_Kill |cRXP_ENEMY_Young Scavengers|r and |cRXP_ENEMY_Duskbats|r. Loot them until you have 60 copper worth of vendor items (including your armor)|r << Mage
    +|cRXP_WARN_Kill |cRXP_ENEMY_Young Scavengers|r and |cRXP_ENEMY_Duskbats|r. Loot them until you have 50 copper worth of vendor items (including your armor)|r << Priest
    +|cRXP_WARN_Kill |cRXP_ENEMY_Young Scavengers|r and |cRXP_ENEMY_Duskbats|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >> Go inside the building
step << Priest/Mage
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
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
    .goto Tirisfal Glades,30.98,66.41 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,30.84,66.20
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Accept The Damned
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Isabella
step << Warlock
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayla|r
    .vendor >>Vendor Trash
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Maximillion
step << !Warlock !Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Accept The Damned
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Dannal Stern
step << Warlock
    #requires Piercing
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
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
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.98,66.41
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
	.goto Tirisfal Glades,31.72,63.98,0
	.goto Tirisfal Glades,31.72,63.98,40,0
	.goto Tirisfal Glades,30.69,63.88,40,0
	.goto Tirisfal Glades,30.90,62.20,40,0
	.goto Tirisfal Glades,30.73,61.66,40,0
	.goto Tirisfal Glades,31.14,61.41,40,0
	.goto Tirisfal Glades,31.80,61.83,40,0
	.goto Tirisfal Glades,32.85,63.02,40,0
	.goto Tirisfal Glades,32.90,63.54,40,0
	.goto Tirisfal Glades,33.41,63.06,40,0
	.goto Tirisfal Glades,33.75,62.86,40,0
	.goto Tirisfal Glades,33.51,63.82,40,0
	.goto Tirisfal Glades,33.55,64.57,40,0
	.goto Tirisfal Glades,33.29,64.96,40,0
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
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
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
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
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
    .accept 3901 >> Accept Rattling the Rattlecages
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >> Accept The Damned
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >> Turn in Tainted Scroll << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >> Turn in Glyphic Scroll << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >> Turn in Hallowed Scroll << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    #loop
    .goto Tirisfal Glades,34.32,56.79,0
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
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    >>Kill |cRXP_ENEMY_Rattlecage Skeletons|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #som--xpgate
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .xp 3+480 >>Grind to 480+/1400xp << Warrior/Rogue
    .xp 3+560 >>Grind to 560+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step
    #era
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .xp 3+940 >>Grind to 940+/1400xp << Warrior/Rogue
    .xp 3+980 >>Grind to 980+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Do NOT go below 1 Silver|r << Mage/Warlock/Priest
    .collect 159,15,380,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .money >0.0075
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r and |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >> Turn in Rattling the Rattlecages
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >> Turn in The Damned
    .accept 6395 >> Accept Marla's Last Wish
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Train your class spells
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .train 172 >> Train |T136118:0|t[Corruption]
    .target Maximillion
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Isabella
step
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saltain|r and |cRXP_FRIENDLY_Arren|r
    .accept 3902 >> Accept Scavenging Deathknell
    .target +Deathguard Saltain
    .goto Tirisfal Glades,31.61,65.62
    .accept 380 >> Accept Night Web's Hollow
    .target +Executor Arren
    .goto Tirisfal Glades,32.15,66.01
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Turn in Simple Scroll
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Turn in Simple Scroll
    .train 772 >> Train |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Turn in Encrypted Scroll
    .train 53 >> Train |T132090:0|t[Backstab]
    .money <0.04
    .target David Trias
step << Rogue
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Turn in Encrypted Scroll
    .target David Trias
step
    #loop
	.goto Tirisfal Glades,32.37,64.37,0
	.goto Tirisfal Glades,32.37,64.37,12,0
	.goto Tirisfal Glades,32.81,64.39,12,0
	.goto Tirisfal Glades,32.89,64.60,12,0
	.goto Tirisfal Glades,33.01,65.38,12,0
	.goto Tirisfal Glades,33.79,64.57,12,0
	.goto Tirisfal Glades,33.13,63.08,12,0
	.goto Tirisfal Glades,32.79,63.11,12,0
	.goto Tirisfal Glades,31.86,61.49,12,0
	.goto Tirisfal Glades,31.75,61.96,12,0
	.goto Tirisfal Glades,31.70,62.53,12,0
	.goto Tirisfal Glades,31.34,62.44,12,0
    >>Open the |cRXP_PICK_Equipment Boxes|r on the ground. Loot them for the |cRXP_LOOT_Scavenged Goods|r
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
    #loop
	.goto Tirisfal Glades,29.94,57.33,0
	.goto Tirisfal Glades,29.94,57.33,40,0
	.goto Tirisfal Glades,29.82,56.03,40,0
	.goto Tirisfal Glades,29.25,55.77,40,0
	.goto Tirisfal Glades,28.40,56.51,40,0
	.goto Tirisfal Glades,27.68,57.10,40,0
	.goto Tirisfal Glades,28.29,58.31,40,0
	.goto Tirisfal Glades,28.25,59.41,40,0
	.goto Tirisfal Glades,28.80,59.53,40,0
	.goto Tirisfal Glades,29.29,59.40,40,0
	.goto Tirisfal Glades,29.67,58.53,40,0
    >>Kill |cRXP_ENEMY_Young Night Web Spiders|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #loop
	.goto Tirisfal Glades,28.25,58.27,0
	.goto Tirisfal Glades,28.25,58.27,25,0
	.goto Tirisfal Glades,28.42,59.07,25,0
	.goto Tirisfal Glades,27.86,60.57,25,0
	.goto Tirisfal Glades,27.17,59.18,25,0
	.goto Tirisfal Glades,27.30,57.97,25,0
	.goto Tirisfal Glades,26.94,56.42,25,0
	.goto Tirisfal Glades,27.51,56.00,25,0
    >>Kill |cRXP_ENEMY_Young Night Web Spiders|r close to the cave entrance
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>Go inside the cave
step
    #loop
    .goto Tirisfal Glades,24.68,59.54,0
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54,20,0
    >>Kill |cRXP_ENEMY_Night Web Spiders|r inside the cave
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[Summon Imp]
step << skip
    #hardcore
    #completewith next
    >>|cRXP_WARN_Perform a jumping Logout Skip by jumping off something in the cave, then pressing your Camp macro|r
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >> |cRXP_WARN_CLICK HERE for a guide|r
    .link /camp >> |cRXP_WARN_CLICK HERE for the macro|r
    >>|cRXP_WARN_To create a macro, type /macro ingame. Click "New", give it a name, then copy paste "/camp" into the box. Drag the new macro onto your Action Bars|r
    .goto Tirisfal Glades,31.08,64.88,30 >> Return to Deathknell
step
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >> Turn in Scavenging Deathknell
    .target Deathguard Saltain
step
    #sticky
    #label NightWebH
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arren|r
    .turnin 380 >> Turn in Night Web's Hollow
    .accept 381 >> Accept The Scarlet Crusade
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
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
	.goto Tirisfal Glades,36.13,68.74,0
	.goto Tirisfal Glades,36.13,68.74,40,0
	.goto Tirisfal Glades,36.46,69.49,40,0
	.goto Tirisfal Glades,36.85,70.02,40,0
	.goto Tirisfal Glades,37.42,69.58,40,0
	.goto Tirisfal Glades,38.05,69.79,40,0
	.goto Tirisfal Glades,37.91,69.22,40,0
	.goto Tirisfal Glades,38.03,68.77,40,0
	.goto Tirisfal Glades,38.49,68.28,40,0
	.goto Tirisfal Glades,38.72,67.07,40,0
	.goto Tirisfal Glades,38.59,66.25,40,0
	.goto Tirisfal Glades,38.65,65.07,40,0
	.goto Tirisfal Glades,37.62,65.36,40,0
	.goto Tirisfal Glades,36.93,65.38,40,0
	.goto Tirisfal Glades,36.51,65.42,40,0
	.goto Tirisfal Glades,36.85,66.59,40,0
	.goto Tirisfal Glades,37.45,67.95,40,0
	.goto Tirisfal Glades,36.93,68.16,40,0
    >>Kill |cRXP_ENEMY_Scarlet Initiates|r and |cRXP_ENEMY_Scarlet Converts|r. Loot them for their |cRXP_LOOT_Scarlet Armbands|r
    >>|cRXP_WARN_Don't kill |cRXP_ENEMY_Meven Korgal|r yet|r
    >>|cRXP_WARN_Try to avoid |cRXP_ENEMY_Scarlet Initiates|r if you can as they have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows your attack speed)|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >>Kill |cRXP_ENEMY_Samuel|r. Loot him for |cRXP_LOOT_Samuel's Remains|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    .goto Tirisfal Glades,31.17,65.08
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
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 >> Accept In Favor of Darkness << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arren|r
    .turnin 381 >> Turn in The Scarlet Crusade
    .accept 382 >> Accept The Red Messenger
    .target Executor Arren
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
step
    #requires ScarletC
    .goto Tirisfal Glades,36.50,68.82
    >>Kill |cRXP_ENEMY_Meven|r. Loot him for the |cRXP_LOOT_Scarlet Crusade Documents|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto Tirisfal Glades,32.15,66.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arren|r
    .turnin 382 >> Turn in The Red Messenger
    .accept 383 >> Accept Vital Intelligence
    .target Executor Arren
step
    #loop
    .goto Tirisfal Glades,34.08,59.51,50,0
    .goto Tirisfal Glades,35.34,56.55,50,0
    .goto Tirisfal Glades,36.83,56.85,50,0
    .goto Tirisfal Glades,37.76,59.38,50,0
    .goto Tirisfal Glades,37.51,62.99,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
	.goto Tirisfal Glades,36.46,69.49,50,0
	.goto Tirisfal Glades,36.85,70.02,50,0
	.goto Tirisfal Glades,37.42,69.58,50,0
	.goto Tirisfal Glades,38.05,69.79,50,0
	.goto Tirisfal Glades,37.91,69.22,50,0
	.goto Tirisfal Glades,38.03,68.77,50,0
	.goto Tirisfal Glades,38.49,68.28,50,0
	.goto Tirisfal Glades,38.72,67.07,50,0
	.goto Tirisfal Glades,38.59,66.25,50,0
	.goto Tirisfal Glades,38.65,65.07,50,0
	.goto Tirisfal Glades,37.62,65.36,50,0
	.goto Tirisfal Glades,36.93,65.38,50,0
	.goto Tirisfal Glades,36.51,65.42,50,0
	.goto Tirisfal Glades,36.85,66.59,50,0
	.goto Tirisfal Glades,37.45,67.95,50,0
	.goto Tirisfal Glades,36.93,68.16,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
    .xp 5+2350 >>Grind to 2350+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calvin|r
    .accept 8 >> Accept A Rogue's Deal
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 6-13 Undead
#version 1
#group RestedXP Survival Guide (H)
#subgroup RXP Survival Guide 1-20
#defaultfor Undead
#next 13-15 Silverpine Forest

step
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Accept Fields of Grief
    .target Deathguard Simmer
step
    #loop
    .goto Tirisfal Glades,56.13,52.48,0
    .goto Tirisfal Glades,40.77,54.42,0
    .goto Tirisfal Glades,40.77,54.42,40,0
    .goto Tirisfal Glades,42.04,55.11,40,0
    .goto Tirisfal Glades,43.59,54.30,40,0
    .goto Tirisfal Glades,46.21,56.78,40,0
    .goto Tirisfal Glades,48.88,57.93,40,0
    .goto Tirisfal Glades,50.73,57.27,40,0
    .goto Tirisfal Glades,52.52,54.48,40,0
    .goto Tirisfal Glades,54.49,52.65,40,0
    .goto Tirisfal Glades,56.13,52.48,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordo|r. He's an abomination that patrols along the road to Brill
    .accept 5481 >>Accept Gordo's Task
    .target Gordo
    .unitscan Gordo
step << Priest/Warlock
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowen|r
    .train 3908 >> Train |T136249:0|t[Tailoring]. Save up your |T132889:0|t[Linen Cloth]. This will allow you to create a wand later
    .target Bowen Brisboise
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r and |cRXP_FRIENDLY_Zygand|r
    .accept 404 >>Accept A Putrid Task
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.45
    .turnin 383 >>Turn in Vital Intelligence
    .accept 427 >>Accept At War With The Scarlet Crusade
    .target +Executor Zygand
    .goto Tirisfal Glades,60.59,51.77
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mrs. Winters|r|cRXP_BUY_. Buy |r |T135421:0|t[Weighted Throwing Axe] |cRXP_BUY_from her|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith Claws
    +Equip the |T135421:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #completewith Claws
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 36c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from him|r
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #completewith Claws
    +Equip the |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    .turnin 8 >>Turn in A Rogue's Deal
    .home >> Set your Hearthstone to Brill
    .target Innkeeper Renee
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
    .turnin 5651 >> Turn in In Favor of Darkness
    .accept 5650 >> Accept Garments of Darkness
	.train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .train 2052 >>Train |T135929:0|t[Lesser Heal Rank 2]
    .target Dark Cleric Beryl
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Cain Firesong
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,61.56,52.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gina Lang|r on the second floor
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact] |cRXP_BUY_from her|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Vendor Trash
    .target Gina Lang
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .target Rupert Boch
step << Warlock
    #completewith Claws
    .train 20397 >> Use the |T133738:0|t[Grimoire of Blood Pact]
    .itemcount 16321,1
    .use 16321
step << Priest/Warlock
    .goto Tirisfal Glades,61.76,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vance|r
    .train 7411 >> Train |T136244:0|t[Enchanting]. This together with |T136249:0|t[Tailoring] will allow you to create a wand later
    .target Vance Undergloom
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Mage/Priest
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warrior/Rogue
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_and|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warlock
    .vendor >> Vendor Trash
    .collect 1179,15,367,1 << Mage/Priest --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
 step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Accept A New Plague
    .target Apothecary Johaan
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>Cast |T135929:0|t[Lesser Heal] and |T135987:0|t[Power Word: Fortitude] on |cRXP_FRIENDLY_Deathguard Kel|r
    >>|cRXP_WARN_You need|r |T135929:0|t[Lesser Heal Rank 2] |cRXP_WARN_for this quest|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Claws
    >>Loot the |cRXP_PICK_Gloom Weed|r on the ground
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Decrepit Darkhound|r you see. Loot them for their |cRXP_LOOT_Blood|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #label Claws
    #loop
    .goto Tirisfal Glades,52.63,56.98,0
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98,50,0
    >>Kill |cRXP_ENEMY_Rotting Dead|r and |cRXP_ENEMY_Ravaged Corpses|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step
    #completewith next
    >>Loot the |cRXP_PICK_Gloom Weed|r on the ground
    .complete 5481,1 --Gloom Weed (3)
step
    #loop
    .goto Tirisfal Glades,41.70,44.01,0
    .goto Tirisfal Glades,44.41,56.83,100,0
    .goto Tirisfal Glades,42.64,53.40,100,0
    .goto Tirisfal Glades,40.84,46.59,100,0
    .goto Tirisfal Glades,38.69,44.10,100,0
    .goto Tirisfal Glades,38.63,39.44,100,0
    .goto Tirisfal Glades,41.70,44.01,100,0
    >>Kill any |cRXP_ENEMY_Decrepit Darkhound|r you see. Loot them for their |cRXP_LOOT_Blood|r
    >>|cRXP_WARN_Avoid the|r |cRXP_ENEMY_Cursed Darkhounds|r|cRXP_WARN_. They are higher level|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33
    >>Finish looting the |cRXP_PICK_Gloom Weed|r on the ground
    .complete 5481,1 --Gloom Weed (3)
step << Priest/Warlock
    #sticky
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Start collecting 3 stacks of|r |T132889:0|t[Linen Cloth]|cRXP_WARN_. This will be used to make your wand later|r
    .collect 2589,60 --Linen Cloth (60)
step
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Loot the |cRXP_LOOT_Pumpkins|r found in the field.
    .complete 365,1 --Tirisfal Pumpkin (10)
step
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Kill |cRXP_ENEMY_Scarlet Warriors|r
    >>|cRXP_WARN_Be careful as they have 50% increased parry for 8 seconds after they do their defense stance animation|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    #completewith BrillTurnin1
    .hs >> Hearth to Brill
    .use 6948
    .subzoneskip 159
    .cooldown item,6948,>0
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
    .turnin 5650 >>Turn in Garments of Darkness
    .train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Dark Cleric Beryl
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r, |cRXP_FRIENDLY_Johaan|r and |cRXP_FRIENDLY_Dillinger|r
    .turnin 427 >>Turn in At War With The Scarlet Crusade
    .accept 370 >>Accept At War With The Scarlet Crusade
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 367 >>Turn in A New Plague
    .turnin 365 >> Turn in Fields of Grief
    .accept 368 >>Accept A New Plague
    .accept 407 >> Accept Fields of Grief
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 404 >>Turn in A Putrid Task
    .accept 426 >>Accept The Mills Overrun
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
step
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r, he patrols around the graveyard.
    .turnin 5481 >>Turn in Gordo's Task
    .accept 5482 >>Accept Doom Weed
    .target Junior Apothecary Holland
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith ZeptoDurotar
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 36c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from him|r
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #completewith ZeptoDurotar
    +Equip the |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Mage/Priest
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warrior/Rogue
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_and|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warlock
    .vendor >> Vendor Trash
    .collect 1179,20,818,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,10,818,1 << Rogue/Warrior/Warlock --Red-speckled Mushroom (10)
    .collect 1179,10,818,1 << Warlock --Ice Cold Milk (10)
    .money <0.025 << Rogue/Warrior
    .money <0.050 << Warlock/Mage/Priest
    .target Innkeeper Renee
step
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>Go up the Zeppelin Tower
    .zone Durotar >>Take the Zeppelin to Durotar. You will come back to finish Tirisfal later
    .zoneskip Durotar
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
    .target Rezlak
step
    #completewith next
    .goto Durotar,47.40,22.57,60,0
    .goto Durotar,49.08,28.48,60,0
    .goto Durotar,52.19,33.49,120,0
    .goto Durotar,52.25,40.17,60 >> Travel to Razor Hill
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]. This will allow you to find |T135232:0|t|cRXP_LOOT_[Rough Stones]|r from nodes in order to craft |T135248:0|t[Sharpening Stones] (+2 Weapon Damage for 30 minutes)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    .home >> Set your Hearthstone to Razor Hill
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Rogue/Warrior
    .vendor >> Vendor Trash
    .target Innkeeper Grosk
step
    >>|cRXP_WARN_You can talk to|r |cRXP_FRIENDLY_Gar'thok|r |cRXP_WARN_from outside or on top of the bunker|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r and |cRXP_FRIENDLY_Torka|r
    .accept 784 >>Accept Vanquish the Betrayers
    .accept 837 >>Accept Encroachment
    .target +Gar'thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Accept Break a Few Eggs
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Travel toward the tower
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Travel up the tower toward Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Accept Carry Your Weight
    .target Furl Scornbrow
step
    #completewith TravelToTiragarde
    +|cRXP_WARN_Cast|r |T136025:0|t[Find Minerals] |cRXP_WARN_and mine any Copper Vein you find for|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r|cRXP_WARN_. Make|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_from them|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    .goto Durotar,52.06,68.30,50 >> Travel toward Sen'jin Village
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Accept A Peon's Burden
    .target Ukor
step
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .accept 786 >>Accept Thwarting Kolkar Aggression
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r and |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Accept Practical Prey
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Accept A Solvent Spirit
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .accept 808 >>Accept Minshina's Skull
    .accept 826 >>Accept Zalazane
    .accept 823 >>Accept Report to Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Buy |r |T135421:0|t[Weighted Throwing Axe] |cRXP_BUY_from her|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 84c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 40c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith Bonfire
    +Equip the |T135421:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #completewith Bonfire
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Bonfire
    +Equip the |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Bonfire
    +Equip the |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Un'Thuwa
step
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0 >>Run down the beach. Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r. You do not have to finish this step here.
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,52.20,83.00,75 >> Reach the end of the beach
    .isOnQuest 818
step
    .goto Durotar,50.9,79.2,40 >>Enter the Kolkar base
    .isOnQuest 786
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_is up, he is a level 9 rare. You may have to use a |r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it|r
    .unitscan Warlord Kolkanis
step
    >>Burn the |cRXP_PICK_Attack Plan|r inside the tent, on the ground
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Burn the |cRXP_PICK_Attack Plan|r on the ground
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Burn the |cRXP_PICK_Attack Plan|r on the ground
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith next
    .goto Durotar,50.95,79.14,30 >>Leave the Kolkar base
    .isQuestComplete 786
step
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .turnin 786 >>Turn in Thwarting Kolkar Aggression
    .target Lar Prowltusk
step
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Turn in A Solvent Spirit
    .target Master Vornal
    .isQuestComplete 818
step
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai'zan|r
    .vendor 3933 >> Sell your trash
    .target Hai'zan
    .money >0.025 << Warrior/Rogue/Shaman
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r
    .vendor >> Vendor trash
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 84c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 40c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith TravelToTiragarde
    +Equip the |T135421:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #completewith TravelToTiragarde
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith TravelToTiragarde
    +Equip the |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith TravelToTiragarde
    +Equip the |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step
    #label TravelToTiragarde
    .goto Durotar,54.42,62.64,60,0
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> Travel to Tiragarde Keep
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Watch Commander Zalaphil|r |cRXP_WARN_is up, as he is a level 9 rare. You may have to use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have one|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Move toward the second floor of the keep
step
    #completewith AgedEnvelope
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Kill |cRXP_ENEMY_Lieutenant Benedict|r. Loot him for his |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>Move upstairs and loot |cRXP_PICK_Benedict's Chest|r for an |T133471:0|t[|cRXP_LOOT_Aged Envelope|r] and accept the quest from the item
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Accept The Admiral's Orders
    .use 4881
step
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r. Loot them for their |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #label ScrapsFinished
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r. Loot them for their |cRXP_LOOT_Canvas Scraps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Priest !Mage
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2180 >> Grind to 2200+/4500xp
step << Priest
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1730 >> Grind to 1750+/4500xp
step
    #completewith next
    .goto Durotar,52.38,43.77,120 >> Travel to Razor Hill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r and |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Turn in Report to Orgnil
    .accept 806 >>Accept Dark Storms
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 784 >>Turn in Vanquish the Betrayers
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 825 >>Accept From The Wreckage....
    .accept 831 >>Accept The Admiral's Orders
    .accept 837 >>Accept Encroachment
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Accept Break a Few Eggs
    .target +Cook Torka
    .goto Durotar,51.09,42.49
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r and |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Turn in Report to Orgnil
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 784 >>Turn in Vanquish the Betrayers
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 825 >>Accept From The Wreckage....
    .accept 831 >>Accept The Admiral's Orders
    .accept 837 >>Accept Encroachment
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Accept Break a Few Eggs
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Travel toward the tower
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Travel up the tower toward Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Turn in Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]. This will allow you to find |T135232:0|t|cRXP_LOOT_[Rough Stones]|r from nodes in order to craft |T135248:0|t[Sharpening Stones] (+2 Weapon Damage for 30 minutes)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Dwukk
    .skill blacksmithing,1,1
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,818,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 84c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,818,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 40c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,818,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith Toolboxes
    +Equip the |T135421:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #completewith Toolboxes
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Toolboxes
    +Equip the |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Toolboxes
    +Equip the |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Rogue/Warrior
    >>|cRXP_WARN_Save 4 silver for your class spells!|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_Save 2 silver for your class spells!|r << Priest
    .vendor >> Vendor Trash
    .home >> Set your Hearthstone to Razor Hill
    .turnin 2161 >>Turn in A Peon's Burden
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
step << !Mage !Hunter !Druid
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Rogue/Warrior
    .vendor >> Vendor Trash
    .home >> Set your Hearthstone to Razor Hill
    .turnin 2161 >>Turn in A Peon's Burden
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Train your class spells
    .target Tarshaw Jaggedscar
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 980 >> Train your class spells
    .target Dhugru Gorelust
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    #completewith Tools
    .train 20270 >> Use the |T133738:0|t[Grimoire of Firebolt Rank 2]
    .use 16302
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Train your class spells
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .train 139 >> Train your class spells
    .target Tai'jin
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Train |T135966:0|t[First Aid]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_from|r |cRXP_FRIENDLY_him|r
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r and |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    >>Kill |cRXP_ENEMY_Makrura Spellhides|r and |cRXP_ENEMY_Makrura Clackers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto Durotar,61.96,55.46,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    .goto Durotar,62.25,56.34,20,0
    >>Loot the |cRXP_PICK_Gnomish Toolboxes|r inside and around the boats
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> Swim to the Island
step
    #completewith Fur
    >>Kill |cRXP_ENEMY_Tigers|r. Loot them for their |cRXP_LOOT_Fur|r. This does not need to be finished now
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r and |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    >>Kill |cRXP_ENEMY_Makrura Spellhides|r and |cRXP_ENEMY_Makrura Clackers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label TaillasherEggs
    #loop
    .goto Durotar,67.04,71.40,0
    .goto Durotar,70.23,70.84,0
    .goto Durotar,67.74,69.86,40,0
    .goto Durotar,67.04,71.40,40,0
    .goto Durotar,67.66,73.86,40,0
    .goto Durotar,68.67,74.47,40,0
    .goto Durotar,69.76,74.69,40,0
    .goto Durotar,70.29,73.31,40,0
    .goto Durotar,70.23,70.84,40,0
    .goto Durotar,69.69,70.35,40,0
    .goto Durotar,69.21,69.69,40,0
    >>Loot the |cRXP_PICK_Taillasher Eggs|r on the ground. They're usually guarded by a |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r and |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    >>Kill |cRXP_ENEMY_Makrura Spellhides|r and |cRXP_ENEMY_Makrura Clackers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,66.94,84.41,150 >>Swim to the main island
step
    #completewith MinshinasSkull
    >>Kill |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r.
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Voodoo Trolls|r |cRXP_WARN_can cast|r |T136052:0|t[Healing Wave]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[Earth Shock] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Rogue
    >>|cRXP_WARN_Be careful. He can cast|r |T136052:0|t[Healing Wave]|cRXP_WARN_. Use your|r |T134829:0|t[Potion] |cRXP_WARN_if needed|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>Loot one of the |cRXP_LOOT_Skulls|r on the ground
    .complete 808,1 --Minshina's Skull (1)
step
    .goto Durotar,67.4,87.8
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[Earth Shock] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Rogue
    >>|cRXP_WARN_Be careful. He can cast|r |T136052:0|t[Healing Wave]|cRXP_WARN_. Use your|r |T134829:0|t[Potion] |cRXP_WARN_if needed|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Kill |cRXP_ENEMY_Tigers|r. Loot them for their |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
    .goto Durotar,67.23,88.76,0
    .goto Durotar,67.23,88.76,40,0
    .goto Durotar,66.52,87.74,40,0
    .goto Durotar,65.94,86.72,40,0
    .goto Durotar,65.90,84.04,40,0
    .goto Durotar,65.88,82.85,40,0
    .goto Durotar,67.38,82.61,40,0
    .goto Durotar,68.42,82.43,40,0
    .goto Durotar,68.50,84.32,40,0
    .goto Durotar,68.47,86.77,40,0
    .goto Durotar,67.23,88.00,40,0
    >>Kill |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r.
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Voodoo Trolls|r |cRXP_WARN_can cast|r |T136052:0|t[Healing Wave]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r and |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    >>Kill |cRXP_ENEMY_Makrura Spellhides|r and |cRXP_ENEMY_Makrura Clackers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #loop
    .goto Durotar,59.79,83.44,0
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44,50,0
    >>Kill |cRXP_ENEMY_Tigers|r. Loot them for their |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto Durotar,59.64,73.84,0
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    >>Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >> Travel to Sen'Jin Village
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash and repair. You can talk to him from outside the hut
    .target Trayexir
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >> Train your class spells
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r and |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Turn in Minshina's Skull
    .turnin 826 >>Turn in Zalazane
    .target +Master Gadrin
    .goto Durotar,55.95,74.73
    .turnin 818 >>Turn in A Solvent Spirit
    .target +Master Vornal
    .goto Durotar,55.95,74.39
    .turnin 817 >>Turn in Practical Prey
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
step
    #completewith Stolensupplies
    +|cRXP_WARN_Bind your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_and|r |T134712:0|t[Really Sticky Glue]|cRXP_WARN_. Save them for emergency situations|r
step
    #loop
    .goto Durotar,49.22,48.96,0
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96,30,0
    >>Kill |cRXP_ENEMY_Razormane Quilboars|r and |cRXP_ENEMY_Razormane Scouts|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step
    #completewith next
    .goto Durotar,51.12,42.46,150 >> Run to Razor Hill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Torka|r and |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Turn in Break a Few Eggs
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Turn in From The Wreckage....
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Train |T135966:0|t[First Aid]
    .target Rawrk
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Train your class spells
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Train your class spells
    .target Dhugru Gorelust
    .xp <10,1
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    .train 20270 >> Use the |T133738:0|t[Grimoire of Firebolt Rank 2]
    .use 16302
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Train your class spells
    .target Kaplak
    .xp <10,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Accept Hex of Weakness << Troll
    .accept 5660 >> Accept Touch of Weakness << Undead
    .trainer >> Train your class spells
    .target Tai'jin
    .xp <10,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
    .xp <10,1
step
    #loop
    .goto Durotar,44.45,39.74,0
    .goto Durotar,44.45,39.74,50,0
    .goto Durotar,44.49,37.47,50,0
    .goto Durotar,43.30,37.32,50,0
    .goto Durotar,41.70,37.09,50,0
    .goto Durotar,41.64,38.27,50,0
    .goto Durotar,41.94,40.46,50,0
    .goto Durotar,43.30,40.40,50,0
    >>Kill |cRXP_ENEMY_Razormane Dustrunners|r and |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step
    #label Stolensupplies
    #loop
    .goto Durotar,47.92,33.10,0
    .goto Durotar,47.34,33.38,30,0
    .goto Durotar,47.92,33.10,30,0
    .goto Durotar,49.11,33.11,30,0
    .goto Durotar,48.53,32.00,30,0
    .goto Durotar,47.36,30.98,30,0
    .goto Durotar,47.14,29.68,30,0
    .goto Durotar,46.49,34.67,30,0
    .goto Durotar,50.13,32.35,30,0
    .goto Durotar,49.78,28.26,30,0
    .goto Durotar,50.83,25.94,30,0
    .goto Durotar,49.68,24.38,30,0
    .goto Durotar,49.05,22.49,30,0
    >>Loot the |cRXP_PICK_Stolen Supply Sacks|r from the ground
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Travel to Rezlak
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
    .target Rezlak
step
    #loop
    .goto Durotar,47.92,33.10,0
    .goto Durotar,47.34,33.38,30,0
    .goto Durotar,47.92,33.10,30,0
    .goto Durotar,49.11,33.11,30,0
    .goto Durotar,48.53,32.00,30,0
    .goto Durotar,47.36,30.98,30,0
    .goto Durotar,47.14,29.68,30,0
    .goto Durotar,46.49,34.67,30,0
    .goto Durotar,50.13,32.35,30,0
    .goto Durotar,49.78,28.26,30,0
    .goto Durotar,50.83,25.94,30,0
    .goto Durotar,49.68,24.38,30,0
    .goto Durotar,49.05,22.49,30,0
    >>Loot the |cRXP_PICK_Stolen Supply Sacks|r from the ground
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
    .accept 835 >>Accept Securing the Lines
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> Travel through the cave
    .solo
step
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Kill |cRXP_ENEMY_Dustwind Savages|r and |cRXP_ENEMY_Dustwind Storm Witches|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .solo
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_Pick the|r |T135158:0|t[Blemished Wooden Staff] |cRXP_WARN_as your quest reward and save it. You will get staff training in Orgrimmar|r
    .solo
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Turn in Securing the Lines
    .target Rezlak
    .solo
step
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>Jump into Thunder Ridge << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_Cast|r |T136095:0|t[Dismiss Pet] |cRXP_WARN_and then jump into Thunder Ridge|r << Hunter
    +|cRXP_WARN_Dismiss your imp and then jump into Thunder Ridge|r << Warlock
    .group
step
    .goto Durotar,42.13,26.67
    >>Kill |cRXP_ENEMY_Fizzle Darkstorm|r and loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Be very careful. Kill the patrolling|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_and the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_in the back before you pull him|r
    >>|cRXP_WARN_Pull him backwards towards the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_you just killed. Otherwise you may bodypull additional burning blade mobs|r
    >>|cRXP_WARN_Kill the imp first. Use|r |T132155:0|t[Gouge] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Rogue
    >>|cRXP_WARN_Kill the imp first. Use|r |T136026:0|t[Earth Shock] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Shaman
    >>|cRXP_WARN_You can cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_and kill the|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_Kill the imp first.|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << !Warlock
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion], |T133728:0|t[Minor Healthstone] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
    .group 2
    --VV Add video / description for Druid / tell priest/lock to fear if pulled back and area is clear?
step
    .hs >> Hearth to Razor Hill
    .use 6948
    .cooldown item,6948,>0
    .subzoneskip 362
    .isQuestComplete 806
    .group
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Rogue/Warrior
    .vendor >> Vendor Trash
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
    .group
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Turn in Dark Storms
    .accept 828 >>Accept Margoz
    .target Orgnil Soulscar
    .isQuestComplete 806
    .group
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil|r
    .accept 828 >>Accept Margoz
    .target Orgnil Soulscar
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Turn in Encroachment
    .target Gar'Thok
    .group
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Train your class spells
    .target Tarshaw Jaggedscar
    .group
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Train your class spells
    .target Dhugru Gorelust
    .group
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .group
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Train your class spells
    .target Kaplak
    .group
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .train 8092 >> Train your class spells
    .target Tai'jin
    .group
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >> Travel to |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
    .group
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Turn in Margoz
    .accept 827 >>Accept Skull Rock
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> Travel toward Dustwind Cave
    .isQuestTurnedIn 806
    .group
step
    #label Collars1
    #loop
    .goto Durotar,52.70,27.97,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    >>Kill |cRXP_ENEMY_ Burning Blade Thugs|r, |cRXP_ENEMY_Neophytes|r and |cRXP_ENEMY_Cultists|r. Loot them for their |cRXP_LOOT_Collars|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Travel to |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Turn in Skull Rock
    .accept 829 >>Accept Neeru Fireblade
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> Travel through the cave
    .group
step
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Kill |cRXP_ENEMY_Dustwind Savages|r and |cRXP_ENEMY_Dustwind Storm Witches|r
    >>|cRXP_WARN_These mobs flee. Be careful not to double pull|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .group
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_Pick the|r |T135158:0|t[Blemished Wooden Staff] |cRXP_WARN_as your quest reward and save it. You will get staff training in Orgrimmar|r
    .group
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Turn in Securing the Lines
    .target Rezlak
    .group
step
--    .loop
    .xp 10 >> Grind to level 10
    --VV Enter loop coords
step
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50 >> Enter Orgrimmar
    .zoneskip Orgrimmar
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Buy |r |T135419:0|t[Sharp Throwing Axe] |cRXP_BUY_from him|r
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #completewith ZeptoUC1
    +Equip the |T135421:0|t[Sharp Throwing Axe] when you are level 11
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >> Turn in Hex of Weakness
    .trainer >> Train your class spells
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >> Turn in Hex of Weakness
    .trainer >> Train your class spells
    .target Ur'kyo
step << Mage
    .goto Orgrimmar,38.33,85.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pephredo|r
    .train 122 >> Train your class spells
    .target Pephredo
step << Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >> Get the Orgrimmar flight path
    .target Doras
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Turn in The Admiral's Orders
    .target Nazgrel
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Accept The Shattered Hand << Orc Rogue/Troll Rogue
    .target Therzok
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Turn in Neeru Fireblade
    .accept 809 >>Accept Ak'Zeloth
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Train your class spells
    .target Mirket
step << Troll Warrior/Undead Warrior
    #completewith StaveTraining1
    .goto Orgrimmar,68.02,38.69,30 >> Travel to the Valley of Honor
step << Warrior
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 6546 >> Train your class spells
    .target Grezz Ragefist
step << Troll Warrior/Undead Warrior
    #label StaveTraining1
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Train Staves
    .target Hanashi
step << Troll Warrior/Undead Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from him|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Troll Warrior/Undead Warrior
    #completewith ZeptoUC1
    +Equip the |T135154:0|t[Quarter Staff] when you are level 11
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132395:0|t[Tabar] (22s 14c). You'll come back later if you don't have enough yet
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Buy a|r |T132395:0|t[Tabar] |cRXP_BUY_from him|r
    .collect 1196,1,398,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    #completewith ZeptoUC1
    +Equip the |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step
    #label LeaveOrg2
    #completewith ZeptoUC1
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
step
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
    .zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
    >>Conjure water while waiting << Mage
    .zoneskip Tirisfal Glades
step
    #completewith next
    .goto Tirisfal Glades,61.52,53.20,80 >> Travel to Brill
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r and |cRXP_FRIENDLY_Gretchen|r inside the inn
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_is on the second floor|r
    .accept 354 >>Accept Deaths in the Family
    .accept 362 >>Accept The Haunted Mills
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>Accept The Chill of Death
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .maxlevel 12
step << Warrior
    #optional
    .abandon 1505 >>Abandon Veteran Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandon Path of Defense
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .accept 1818 >> Accept Speak with Dillinger
    .target Austil de Mon << Warrior
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ageron|r inside the inn
    .accept 1478 >> Accept Halgar's Summons
    .target Ageron Kargal
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r inside the inn
    .accept 1885 >>Accept Mennet Carkad
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r inside the inn
    .accept 1881 >> Accept Speak with Anatasia
    .target Cain Firesong
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warrior/Rogue
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_and|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warlock
    .vendor >> Vendor Trash
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Wanted Poster|r and |cRXP_FRIENDLY_Sevren|r inside the building
    .accept 374 >>Accept Proof of Demise
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Accept Wanted: Maggot Eye
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>Accept Graverobbers
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Turn in Speak with Dillinger
    .accept 1819 >> Accept Ulag the Cleaver
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Click on the skull on the ground. This will summon|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Kill him|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Turn in Ulag the Cleaver
    .accept 1820 >> Accept Speak with Coleman
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warlock/Mage/Priest
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >> Enter Undercity
    .zoneskip Undercity
    .zoneskip Undercity
step << Warlock/Mage/Priest
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
step << Warlock/Mage/Priest
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
    .collect 3164,6,429,1 >>|cRXP_BUY_Buy Six|r |T134339:0|t[Discolored Worg Hearts] |cRXP_BUY_from the Auction House|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r in the Magic Quarter
    .turnin 1478 >> Turn in Halgar's Summons
    .accept 1473 >> Accept Creature of the Void
step << Mage
    #optional
    .abandon 1883 >> Abandon Speak with Un'thuwa, otherwise you won't be able to accept the upcoming quest
    .isOnQuest 1883
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r in the Magic Quarter
    .turnin 1881 >> Turn in Speak with Anatasia
    .accept 1882 >> Accept The Balnir Farmstead
    .target Anastasia Hartwell
step << Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Turn in Touch of Weakness
    .target Aelthalyste
    .isOnQuest 5660
step << Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .accept 5658 >> Accept Touch of Weakness
    .turnin 5658 >> Turn in Touch of Weakness
    .target Aelthalyste
step << Rogue
    #optional
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20 >> Enter Undercity
    .zoneskip Undercity
    .zoneskip Undercity
    .money <0.3023
step << Rogue
    #optional
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
    .money <0.3023
step << Undead Rogue
    #optional
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Turn in Mennet Carkad
    .accept 1886 >>Accept The Deathstalkers
    .target Mennet Carkad
    .money <0.3023
step << Rogue
    #optional
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Archibald|r in the War Quarter
    .train 201 >>Train 1h Swords
    .target Archibald
    .money <0.3023
step << Rogue
    #optional
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_ in the Rogue's Quarter. Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith ScarletCrusade1
    +Equip the |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    #optional
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_If you see|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, talk to him and kill him. Loot him for the letter. He patrols the road between Brill and The Sepulcher|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
    .collect 3164,6,429,1 >>|cRXP_BUY_Buy Six|r |T134339:0|t[Discolored Worg Hearts] |cRXP_BUY_from the Auction House|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock/Mage/Rogue/Priest
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Tirisfal Glades
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Loot |cRXP_PICK_Perrine's Chest|r for |T133733:0|t[Egalin's Grimoire]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
    #loop
	.goto Tirisfal Glades,50.07,68.87,40,0
	.goto Tirisfal Glades,50.23,66.94,40,0
	.goto Tirisfal Glades,51.16,65.73,40,0
	.goto Tirisfal Glades,51.75,66.04,40,0
	.goto Tirisfal Glades,52.93,67.62,40,0
	.goto Tirisfal Glades,52.72,69.33,40,0
	.goto Tirisfal Glades,51.96,69.57,40,0
	.goto Tirisfal Glades,51.03,69.55,40,0
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
    .goto Tirisfal Glades,51.06,67.57
    >>Loot |cRXP_PICK_Perrine's Chest|r on the ground for |T133733:0|t[Egalin's Grimoire]
    .complete 1473,1 --Egalin's Grimoire (1)
step << Warlock
    #completewith next
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Travel back into the Undercity through the sewers
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r in the Magic Quarter
    .turnin 1473 >> Turn in Creature of the Void
    .accept 1471 >> Accept The Binding
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>Use the |T134416:0|t[Runes of Summoning] at the Summoning Circle
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Kill the |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Turn in The Binding
    .target Carendin Halgar
step << skip --Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLICK HERE for an example|r
    >>|cRXP_WARN_If you can't do this, just run out of Undercity normally|r
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> Exit Undercity
    .zoneskip Tirisfal Glades
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    .goto Tirisfal Glades,47.60,44.03,150 >> Travel northwest toward Agamand Mills
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
    .goto Tirisfal Glades,47.34,40.78
    >>Kill |cRXP_ENEMY_Devlin|r. Loot him for his |cRXP_LOOT_Remains|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto Tirisfal Glades,49.34,36.02
    >>Kill |cRXP_ENEMY_Nissa|r. Loot her for her |cRXP_LOOT_Remains|r. She can be inside the building
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Kill |cRXP_ENEMY_Thurman|r and |cRXP_ENEMY_Gregor|r. Loot them for their |cRXP_LOOT_Remains|r. They can patrol around
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
step
    #loop
    #label MillsOverun
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Kill |cRXP_ENEMY_Soldiers|r and |cRXP_ENEMY_Bonecasters|r. Loot them for their |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #requires MillsOverun
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >> Travel down the hills.
    >>|cRXP_WARN_Be careful. Don't take too much fall damage. Follow the waypoint for safety|r
step
    #requires MillsOverun
    #completewith next
    >>Kill |cRXP_ENEMY_Gnolls|r and |cRXP_ENEMY_Mongrels|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Mongrel
step
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Kill |cRXP_ENEMY_Maggot Eye|r. Loot him for his |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    >>Kill |cRXP_ENEMY_Murlocs|r. Loot them for their |cRXP_LOOT_Scales|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step
    #completewith RotHideGnolls
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #completewith next
    >>Kill |cRXP_ENEMY_Mongrels|r and |cRXP_ENEMY_Graverobbers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
step
    #optional
    #loop
    .goto Tirisfal Glades,57.48,35.95,0
    .goto Tirisfal Glades,57.68,34.37,30,0
    .goto Tirisfal Glades,57.45,35.96,30,0
    .goto Tirisfal Glades,56.79,37.79,30,0
    .goto Tirisfal Glades,56.05,38.76,30,0
    .goto Tirisfal Glades,55.09,38.74,30,0
    .goto Tirisfal Glades,55.25,40.16,30,0
    .goto Tirisfal Glades,54.68,42.12,30,0
    .goto Tirisfal Glades,55.29,41.51,30,0
    .goto Tirisfal Glades,56.58,41.99,30,0
    .goto Tirisfal Glades,58.29,42.93,30,0
    .goto Tirisfal Glades,58.83,40.68,30,0
    .goto Tirisfal Glades,58.36,38.55,30,0
    .goto Tirisfal Glades,57.48,35.95,30,0
    >>Loot the |cRXP_PICK_Doom Weed|r on the ground. They are found near trees in the Gnoll area
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #label RotHideGnolls
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>Kill |cRXP_ENEMY_Mongrels|r and |cRXP_ENEMY_Graverobbers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
step
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r, he patrols around the graveyard.
    .turnin 5482 >>Turn in Doom Weed
    .target Junior Apothecary Holland
    .isOnQuest 5482
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r and |cRXP_FRIENDLY_Sevren|r
    .turnin 426 >>Turn in The Mills Overrun
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.19,51.44
    .turnin 368 >>Turn in A New Plague
    .accept 369 >>Accept A New Plague
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Turn in Wanted: Maggot Eye
    .turnin 370 >>Turn in At War With The Scarlet Crusade
    .accept 371 >>Accept At War With The Scarlet Crusade
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Turn in Graverobbers
    .accept 359 >>Accept Forsaken Duties
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #completewith HorrorsandSpirits
    +|cRXP_WARN_Bind your|r |T133849:0|t[Slumber Sand]|cRXP_WARN_. Save it for emergency situations|r
step
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Buy a|r |T132891:0|t[Coarse Thread] |cRXP_BUY_from|r |cRXP_FRIENDLY_her|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yvette|r, |cRXP_FRIENDLY_Coleman|r and |cRXP_FRIENDLY_Gretchen|r inside the inn
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_is on the second floor|r
    .turnin 361 >>Turn in A Letter Undelivered
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Turn in The Chill of Death
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r and |cRXP_FRIENDLY_Gretchen|r inside the inn
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_is on the second floor|r
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Turn in The Chill of Death
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yvette|r and |cRXP_FRIENDLY_Coleman|r inside the inn
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_is on the second floor|r
    .turnin 361 >>Turn in A Letter Undelivered
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r inside the inn
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yvette|r, |cRXP_FRIENDLY_Coleman|r and |cRXP_FRIENDLY_Gretchen|r inside the inn
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_is on the second floor|r
    .turnin 361 >>Turn in A Letter Undelivered
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Turn in The Chill of Death
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r and |cRXP_FRIENDLY_Gretchen|r inside the inn
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_is on the second floor|r
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Turn in The Chill of Death
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yvette|r and |cRXP_FRIENDLY_Coleman|r inside the inn
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_is on the second floor|r
    .turnin 361 >>Turn in A Letter Undelivered
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r inside the inn
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r inside the inn
    .turnin 1820 >>Turn in Speak with Coleman
    .accept 1821 >>Accept Agamand Heirlooms
    .group
    .isQuestTurnedIn 1819
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r inside the inn
    .turnin 1820 >>Turn in Speak with Coleman
    .solo
    .isQuestTurnedIn 1819
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588 >>Train |T135926:0|t[Inner Fire]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145 >> Train |T135812:0|t[Fireball Rank 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Train |T132223:0|t[Overpower]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766 >> Train |T132219:0|t[Kick]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Train |T136168:0|t[Health Funnel]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Mage/Priest
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushroom] |cRXP_BUY_from her|r <<Warrior/Rogue
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_and|r |T134532:0|t[Red-speckled Mushroom] |cRXP_BUY_from her|r << Warlock
    .vendor >> Vendor Trash
    .collect 1179,20,359,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,359,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,359,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,359,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock
    .money <0.075 << Warlock
    .target Innkeeper Renee
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linnea|r
    .turnin 359 >>Turn in Forsaken Duties
    .accept 360 >>Accept Return to the Magistrate
    .accept 356 >>Accept Rear Guard Patrol
    .target Deathguard Linnea
step
    #completewith HorrorsandSpirits
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Mage
    #completewith next
    >>Kill |cRXP_ENEMY_Bleeding Horrors|r and |cRXP_ENEMY_Wandering Spirits|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>Loot any of the plants on the ground for a |cRXP_PICK_Balnir Snapdragon|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #label HorrorsandSpirits
    #loop
	.goto Tirisfal Glades,74.31,60.98,0
	.goto Tirisfal Glades,74.31,60.98,50,0
	.goto Tirisfal Glades,74.45,59.64,50,0
	.goto Tirisfal Glades,75.08,58.56,50,0
	.goto Tirisfal Glades,76.45,58.67,50,0
	.goto Tirisfal Glades,77.41,58.66,50,0
	.goto Tirisfal Glades,78.55,60.43,50,0
	.goto Tirisfal Glades,77.45,61.46,50,0
	.goto Tirisfal Glades,76.79,62.60,50,0
	.goto Tirisfal Glades,74.99,61.98,50,0
    >>Kill |cRXP_ENEMY_Bleeding Horrors|r and |cRXP_ENEMY_Wandering Spirits|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Priest/Warlock
    #completewith Scarletrings
    >>|cRXP_WARN_Collect 3 stacks of|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your Lesser Magic Wand. This is the last chance to get enough before Silverpine Forest|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #completewith next
    >>Collect |cRXP_LOOT_Scarlet Insignia Rings|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,78.82,56.14,20,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Kill |cRXP_ENEMY_Captain Vachon|r and |cRXP_ENEMY_Scarlet Friars|r
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Scarlet Friars|r |cRXP_WARN_can cast|r |T135929:0|t[Lesser Heal]
    .complete 371,1 --Captain Vachon (1)
    .mob +Captain Vachon
    .complete 371,2 --Scarlet Friar (5)
    .mob +Scarlet Friar
    .isOnQuest 371
step
    #label ScarletRings
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Collect |cRXP_LOOT_Scarlet Insignia Rings|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest/Warlock
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_Collect 3 stacks of|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your wand. This is the last chance to get enough before Silverpine Forest|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #loop
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>Kill |cRXP_ENEMY_Vicious Night Web Spiders|r. Loot them for their |cRXP_LOOT_Venom|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >> Travel back to Linnea
step
    #completewith next
    >>Finish killing |cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_You can skip this quest if your rng has been bad|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Turn in Rear Guard Patrol
    .target Deathguard Linnea
step
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Buy a|r |T132891:0|t[Coarse Thread] |cRXP_BUY_from|r |cRXP_FRIENDLY_her|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Zygand|r, |cRXP_FRIENDLY_Sevren|r and |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Turn in Proof of Demise
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Turn in At War With The Scarlet Crusade
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>Turn in Return to the Magistrate
    .turnin 355 >>Turn in Speak with Sevren
    .accept 408 >>Accept The Family Crypt
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Turn in A New Plague
    .accept 445 >>Accept Delivery to Silverpine Forest
    .accept 492 >>Accept A New Plague
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Zygand|r, |cRXP_FRIENDLY_Sevren|r and |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Turn in Proof of Demise
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Turn in At War With The Scarlet Crusade
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>Turn in Return to the Magistrate
    .turnin 355 >>Turn in Speak with Sevren
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Turn in A New Plague
    .accept 445 >>Accept Delivery to Silverpine Forest
    .accept 492 >>Accept A New Plague
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r upstairs
    .turnin 375 >>Turn in The Chill of Death
    .target Gretchen Dedmar
    .isOnQuest 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588 >>Train |T135926:0|t[Inner Fire]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145 >> Train |T135812:0|t[Fireball Rank 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Train |T132223:0|t[Overpower]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766 >> Train |T132219:0|t[Kick]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Train |T136168:0|t[Health Funnel]
    .target Rupert Boch
    .xp <12,1
step
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> Travel to the crypt in Agamand Mills
    .isOnQuest 408
    .group
step << Warrior
    #completewith CaptainDargol
    >>Loot the |cRXP_PICK_Agamand Weapon Racks|r on the ground
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #completewith next
    >>Kill |cRXP_ENEMY_Wailing Ancestors|r and |cRXP_ENEMY_Rotting Ancestors|r
    >>|cRXP_WARN_Be careful! The mobs in this crypt respawn dynamically!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .group 2
step
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>Kill |cRXP_ENEMY_Captain Dargol|r. Loot him for his |cRXP_LOOT_Skull|r. He is at the bottom of the crypt
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
    .group 2
step << Warrior
    #completewith next
    >>Loot the |cRXP_PICK_Agamand Weapon Racks|r on the ground
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #loop
	.goto Tirisfal Glades,51.90,26.87,0
	.goto Tirisfal Glades,51.88,25.86,25,0
	.goto Tirisfal Glades,52.61,25.85,25,0
	.goto Tirisfal Glades,52.60,26.88,25,0
	.goto Tirisfal Glades,51.90,26.87,25,0
    >>Kill |cRXP_ENEMY_Wailing Ancestors|r and |cRXP_ENEMY_Rotting Ancestors|r
    >>|cRXP_WARN_Be careful! The mobs in this crypt respawn dynamically!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
    .group 2
step << Warrior
    #loop
    .goto Tirisfal Glades,52.66,25.87,0
    .goto Tirisfal Glades,51.70,25.69,12,0
    .goto Tirisfal Glades,52.62,25.62,12,0
    .goto Tirisfal Glades,52.65,27.02,12,0
    .goto Tirisfal Glades,51.89,27.10,12,0
    .goto Tirisfal Glades,52.66,25.87,12,0
    >>Loot the |cRXP_PICK_Agamand Weapon Racks|r on the ground
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step << skip
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_Jump onto one of the weapon racks. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_CLICK HERE for an example|r
    .isQuestComplete 408
    .group
step
    #completewith NewPlagueFinal
    .subzone 159 >>Travel to Brill
    .isQuestComplete 408
    .group
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r
    .turnin 408 >>Turn in The Family Crypt
    .target Magistrate Sevren
    .isQuestComplete 408
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r inside the inn
    .turnin 1821 >>Turn in Agamand Heirlooms
    .turnin 1822 >>Heirloom Weapon
    .target Coleman Farthing
    .isQuestComplete 1821
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r inside the inn
    .turnin 1822 >>Heirloom Weapon
    .target Coleman Farthing
    .isQuestTurnedIn 1821
    .group
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Scarlet Zealot|r downstairs in the back of the inn
    .turnin 407 >>Turn in Fields of Grief
    .target Captured Scarlet Zealot
    .isQuestTurnedIn 365
step
    #label NewPlagueFinal
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Captured Mountaineer|r downstairs in the back of the inn
    .turnin 492 >> Turn in A New Plague
    .target Captured Mountaineer
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588,1 >>Train |T135926:0|t[Inner Fire]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 6074 >> Train your class spells
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145,1 >> Train |T135812:0|t[Fireball Rank 3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 2137 >> Train your class spells
    .target Cain Firesong
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Train |T132223:0|t[Overpower]
    .target Austil de Mon
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 1160 >> Train your class spells
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766,1 >> Train |T132219:0|t[Kick]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1758 >> Train your class spells
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >> Train |T136168:0|t[Health Funnel]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 6222 >> Train your class spells
    .target Rupert Boch
    .xp <14,1
step << Mage
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >> Enter Undercity
    .zoneskip Undercity
    .zoneskip Undercity
step << Mage
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r in the Magic Quarter
    .turnin 1882 >>Turn in The Balnir Farmstead
    .target Anastasia Hartwell
step << Undead Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20 >> Enter Undercity
    .zoneskip Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    #completewith Swordtraining2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead
    #completewith UCflightpath
    .goto Tirisfal Glades,61.80,65.06,20 >> Enter Undercity
    .zoneskip Undercity
step << !Undead
    #completewith UCflightpath
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
step << !Undead
    #label UCflightpath
    .goto Undercity,63.25,48.56
    .fp Undercity >> Get the Undercity flight path
    .target Michael Garrett
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Turn in Mennet Carkad
    .accept 1886 >>Accept The Deathstalkers
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Archibald|r in the War Quarter
    .train 201 >>Train 1h Swords
    .target Archibald
step << Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_ in the Rogue's Quarter. Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #completewith Entersilverpine
    +Equip the |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20 >> Enter Undercity
    .zoneskip Undercity
    .zoneskip Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Undead Warrior
    #completewith Entersilverpine
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto Undercity,58.82,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from him|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #completewith Entersilverpine
    +Equip the |T135154:0|t[Quarter Staff]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
    .collect 3164,6,429,1 >>|cRXP_BUY_Buy Six|r |T134339:0|t[Discolored Worg Hearts] |cRXP_BUY_from the Auction House|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Priest/Warlock
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >> Train |T136244:0|t[Enchanting]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Victor|r
    .train 3908 >> Train |T136249:0|t[Tailoring]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Turn all your|r |T132889:0|t[Linen Cloth] |cRXP_WARN_into|r |T132890:0|t[Bolt of linen Linen Cloth]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Victor|r
    .train 7623 >> Train |T132662:0|t[Brown Linen Robe]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Buy|r |T132891:0|t[Coarse Thread] |cRXP_BUY_from her|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_Create as many|r |T132662:0|t[Brown Linen Robes] |cRXP_WARN_as you can|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Buy a|r |T133942:0|t[Copper Rod] |cRXP_BUY_and|r |T135435:0|t[Simple Wood] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Disenchant all the|r |T132662:0|t[Brown Linen Robes] |cRXP_WARN_that you made and create a|r |T135225:0|t[Runed Copper Rod]
    >>|cRXP_WARN_If you did not get a|r |T132867:0|t[Lesser Magic Essence] |cRXP_WARN_then buy one from|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_if there is one available. Otherwise finish this step later|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malcomb|r
    .train 14293 >> Train |T135139:0|t[Lesser Magic Wand]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_Create a|r |T135139:0|t[Lesser Magic Wand]
    >>|cRXP_WARN_If you did not get a|r |T132867:0|t[Lesser Magic Essence] |cRXP_WARN_then buy one from|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_if there is one available. Otherwise finish this step later|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    #completewith Entersilverpine
    +Equip the |T135139:0|t[Lesser Magic Wand]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #optional
    .abandon 806 >> Abandon Dark Storms
    .isOnQuest 806
step
    #optional
    .abandon 408 >> Abandon The Family Crypt
    .isOnQuest 408
step << Warrior
    #optional
    .abandon 1821 >> Abandon Agamand Heirlooms
    .isOnQuest 1821
step
    #label LeaveUndercity3
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50 >> Leave Undercity through the Sewers
    .zoneskip Tirisfal Glades
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .zone Silverpine Forest >> Travel to Silverpine Forest
    .zoneskip Silverpine Forest

]])
