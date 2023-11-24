local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 1-6 Tirisfal Glades
#version 1
#group RestedXP Horde 1-30
#defaultfor Scourge
#next 6-10 Eversong Woods

step << !Undead
    #completewith next
    +|cFFFCDC00You have selected a guide meant for Undead. It is recommended you choose the same starter zone that you start in|r
step
    #completewith Zombies
	.destroy 6948 >> Destroy the |T134414:0|t[Hearthstone] in your bags, as it's no longer needed
step << tbc
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >> Run up out of the crypt toward |cFF00FF25Mordo|r
step
    .goto Tirisfal Glades,30.22,71.65 << tbc
    .goto Tirisfal Glades,29.99,71.89 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mordo|r
    .accept 363 >> Accept Rude Awakening
    .target Undertaker Mordo
step << wotlk
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.32,72.32,10 >> Run up out of the crypt
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0 
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    +|cFFFCDC00Kill |cFFFF5722Young Scavengers|r and |cFFFF5722Duskbats|r. Loot them until you have 60 copper worth of vendor items (including your armor)|r << Mage tbc
    +|cFFFCDC00Kill |cFFFF5722Young Scavengers|r and |cFFFF5722Duskbats|r. Loot them until you have 50 copper worth of vendor items (including your armor)|r << Priest tbc
    +|cFFFCDC00Kill |cFFFF5722Young Scavengers|r and |cFFFF5722Duskbats|r. Loot them until you have 34 copper worth of vendor items (including your armor)|r << Mage wotlk/Warlock wotlk
    +|cFFFCDC00Kill |cFFFF5722Young Scavengers|r and |cFFFF5722Duskbats|r. Loot them until you have 24 copper worth of vendor items (including your armor)|r << Priest wotlk
    +|cFFFCDC00Kill |cFFFF5722Young Scavengers|r and |cFFFF5722Duskbats|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Warlock tbc
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage/Warlock wotlk
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >> Go inside the building
step << Priest/Mage/Warlock wotlk
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from him|r 
    .vendor >> Vendor Trash 
	.collect 159,10,383,1 << tbc --Collect Refreshing Spring Water (10)
	.collect 159,5,383,1 << wotlk --Collect Refreshing Spring Water (5)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Venya|r and |cFF00FF25Sarvis|r << Warlock tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sarvis|r << Warlock wotlk/Mage
    .accept 1470 >>Accept Piercing the Veil << Warlock tbc
    .goto Tirisfal Glades,30.98,66.41,0,0 << Warlock tbc
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
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Isabella|r
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Isabella
step << Warlock tbc
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
    .goto Tirisfal Glades,32.68,65.56 << tbc
    .goto Tirisfal Glades,32.66,65.61 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dannal|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Dannal Stern
step << Warlock tbc
    #requires Piercing
    .goto Tirisfal Glades,31.35,66.21,10,0
    .loop 40,Tirisfal Glades,31.82,61.48,31.11,60.71,32.07,60.17,32.26,59.21,33.28,59.53,33.66,60.76,33.94,61.81,34.21,63.05,33.01,63.01,31.82,61.48
    >>Kill |cFFFF5722Rattlecage Skeletons|r. Loot them for their |cFF00BCD4Rattlecage Skulls|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock tbc
    #completewith next
    +|cFFFCDC00Kill |cFFFF5722Mindless Zombies|r and |cFFFF5722Wretched Zombies|r. Loot them until you have 24 copper worth of vendor items (including your armor)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0024
step << Warlock tbc
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from him|r 
	.collect 159,5,383,1 --Collect Refreshing Spring Water (10)
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
    >>Kill |cFFFF5722Mindless Zombies|r and |cFFFF5722Wretched Zombies|r << tbc
    >>Kill |cFFFF5722Mindless Zombies|r and |cFFFF5722Wretched Ghouls|r << wotlk
    .complete 364,1 --Kill Mindless Zombie (x8) // --Kill Mindless Zombie (x5) wotlk
    .complete 364,2 --Kill Wretched Zombie (x8) // --Kill Wretched Ghoul (x5) wotlk
    .mob Mindless Zombie
    .mob Wretched Zombie << tbc
    .mob Wretched Ghoul << wotlk
step << Mage/Warlock tbc/Priest
    #completewith Vendor2
    +|cFFFCDC00Kill |cFFFF5722Mindless Zombies|r and |cFFFF5722Wretched Zombies|r. Loot them until you have 33 copper worth of vendor items (including your armor)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock tbc/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from him|r 
    .collect 159,10,383,1 --Collect Refreshing Spring Water (5)
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock tbc/Priest
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
step << Warlock wotlk
    #completewith next
    >>Kill |cFFFF5722Young Scavengers|r. Loot them for their |cFF00BCD4Scavenger Paws|r 
    >>Kill |cFFFF5722Duskbats|r. Loot them for their |cFF00BCD4Duskbat Wings|r 
    .complete 376,1 --Collect Scavenger Paw (x6)
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob Young Scavenger
    .mob Duskbat
    .isOnQuest 376
step << Warlock wotlk
    #completewith next
    .goto Tirisfal Glades,30.19,65.32,40,0
    .goto Tirisfal Glades,29.10,67.66,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0 
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.19,65.32,40,0
    .goto Tirisfal Glades,29.10,67.66,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0 
    .goto Tirisfal Glades,29.92,70.30
    +|cFFFCDC00Grind |cFFFF5722Young Scavengers|r and |cFFFF5722Duskbats|r. Loot them until you have 78 copper worth of vendor items (including your armor)|r
    >>|cFFFCDC00Skip this step once you have 78 copper|r
    .mob Young Scavenger
    .mob Duskbat
	.money >0.0078
    .isOnQuest 364
step << Warlock wotlk
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFFFCDC00Do NOT buy any|r |T132794:0|t[Refreshing Spring Water]
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 364
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
	.train 688 >> Train |T136218:0|t[Summon Imp] << Warlock wotlk
    .goto Tirisfal Glades,30.91,66.34 << Warlock wotlk
    .turnin 3098 >> Turn in Glyphic Scroll << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >> Turn in Hallowed Scroll << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .target Maximillion << Warlock
    .target Isabella << Mage
    .target Dark Cleric Duesten << Priest
step << Warlock wotlk
	#completewith next
	.cast 688 >>|cFFFCDC00Cast|r |T136218:0|t[Summon Imp]
step << Mage/Warlock tbc/Priest
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
    .loop 40,Tirisfal Glades,31.72,63.98,30.69,63.88,30.90,62.20,30.73,61.66,31.14,61.41,31.80,61.83,32.85,32.38,63.02,32.90,63.54,33.41,63.06,33.75,62.86,33.51,63.82,33.55,64.57,33.29,64.96,31.72,63.98
    .xp 3+980 >>Grind to 980+/1400xp
    .mob Mindless Zombie
    .mob Wretched Zombie << tbc
    .mob Wretched Ghoul << wotlk
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Joshua|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from him|r
    >>|cFFFCDC00Do NOT go below 95 Copper|r << Mage/Warlock/Priest
    .vendor >> Vendor Trash
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
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
    .goto Tirisfal Glades,32.68,65.56 << tbc
    .goto Tirisfal Glades,32.66,65.61 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dannal|r
    .turnin 3095 >> Turn in Simple Scroll
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #label Training2
    .goto Tirisfal Glades,32.68,65.56 << tbc
    .goto Tirisfal Glades,32.66,65.61 << wotlk
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
    .complete 380,1,5 << WOTLK --Kill Young Night Web Spider (8)
    .complete 380,1,6 << TBC --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    .goto Tirisfal Glades,27.86,58.98,40,0
    .loop 40,Tirisfal Glades,28.25,58.27,28.42,59.07,27.86,60.57,27.17,59.18,27.30,57.97,26.94,56.42,27.51,56.00,28.25,58.27
    >>Kill |cFFFF5722Young Night Web Spiders|r close to the cave entrance
    .complete 380,1 << WOTLK --Kill Young Night Web Spider (8)
    .complete 380,1 << TBC --Kill Young Night Web Spider (10)
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
    #completewith ScarletC
    .cast 688 >>|cFFFCDC00Cast|r |T136218:0|t[Summon Imp]
step
    #completewith next
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
step
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
	.collect 159,15,383,1 << Warlock tbc/Mage tbc/Priest tbc --Collect Refreshing Spring Water (15)
	.collect 159,5,383,1 << warlock wotlk/Mage wotlk/Priest wotlk --Collect Refreshing Spring Water (5)
    .vendor >> Vendor Trash 
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15 << tbc
    .itemcount 159,<5 << wotlk
step
    #requires NightWebH
    .loop 40,Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
    >>Kill |cFFFF5722Scarlet Initiates|r and |cFFFF5722Scarlet Converts|r. Loot them for their |cFF00BCD4Scarlet Armbands|r
    >>|cFFFCDC00Don't kill |cFFFF5722Meven Korgal|r yet|r
    >>|cFFFCDC00Try to avoid |cFFFF5722Scarlet Converts|r if you can as they have|r |T135843:0|t[Frost Armor] |cFFFCDC00(slows your attack speed)|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >>Kill |cFFFF5722Samuel|r. Loot him for |cFF00BCD4Samuel's Remains|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #completewith next
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
step
    .goto Tirisfal Glades,31.17,65.08
	>>Click |cFFDB2EEFMarla's Grave|r on the ground 
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
	#completewith ScarletC
	.cast 688 >>|cFFFCDC00Cast|r |T136218:0|t[Summon Imp]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Elreth|r << !Priest/Priest wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Elreth|r and |cFF00FF25Duesten|r << Priest tbc
    .turnin 6395 >> Turn in Marla's Last Wish
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 >> Accept In Favor of Darkness << Priest tbc
    .goto Tirisfal Glades,31.11,66.02 << Priest tbc
    .target Novice Elreth
    .target Dark Cleric Duesten << Priest tbc
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
step << Warrior
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
----
step
    .goto Tirisfal Glades,38.96,55.74,20,0
    .goto Tirisfal Glades,41.57,57.66,110 >>Run out toward Tirisfal Glades
    .isOnQuest 8
step
    #completewith next
    >>|cFFFCDC00Make sure your subzone is Nightmare Vale|r
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
step
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zygand|r
    .turnin 383 >> Turn in Vital Intelligence
    .target Executor Zygand
step
    #completewith next
    .goto Tirisfal Glades,61.58,52.99,8,0
    .goto Tirisfal Glades,61.75,52.72,8 >>Go inside the Inn
step
    .goto Tirisfal Glades,61.71,52.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Renee|r
    .turnin 8 >>Turn in A Rogue's Deal
    .home << Set your Hearthstone to Brill << Priest tbc
    .vendor >>Vendor Trash << Warrior
    .isQuestAvailable 8463 << Warrior
step << Warrior
    .xp 6 >> Grind to 6
step << Warrior
    .goto Tirisfal Glades,61.85,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Austil|r
    .trainer >>Train your class spells
    .target Austil de Mon
step << Priest tbc
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Beryl|r upstairs
    .turnin 5651 >> Turn in In Favor of Darkness
    .accept 5650 >> Accept Garments of Darkness
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .target Dark Cleric Beryl
    .train 2052,1
    .train 1243,1
step << Priest tbc
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Beryl|r upstairs
    .turnin 5651 >> Turn in In Favor of Darkness
    .accept 5650 >> Accept Garments of Darkness
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .target Dark Cleric Beryl
    .train 1243,1
 step << Priest tbc
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Beryl|r upstairs
    .turnin 5651 >> Turn in In Favor of Darkness
    .accept 5650 >> Accept Garments of Darkness
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .target Dark Cleric Beryl
    .train 2052,1
step << Priest tbc
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Beryl|r upstairs
    .turnin 5651 >> Turn in In Favor of Darkness
    .accept 5650 >> Accept Garments of Darkness
    .target Dark Cleric Beryl
step << Priest tbc
    #completewith next
    .goto Tirisfal Glades,61.75,52.72,8,0
    .goto Tirisfal Glades,61.58,52.99,8 >>Exit the Inn
step << Priest tbc
    .goto Tirisfal Glades,59.18,46.49,50 >>Travel toward |cFF00FF25Kel|r
    .isOnQuest 5650
step << Priest tbc
    #sticky
    #label Kel1
    .goto Tirisfal Glades,59.18,46.49
    .cast 2052 >> Cast |T135929:0|t[Lesser Heal Rank 2] on |cFF00FF25Kel|r
    .isOnQuest 5650
step << Priest tbc
    #sticky
    #requires Kel1
    #completewith next
    .goto Tirisfal Glades,59.18,46.49
    .cast 1243 >> Cast |T135987:0|t[Power Word: Fortitude] on |cFF00FF25Kel|r
step << Priest tbc
    .goto Tirisfal Glades,59.18,46.49
    >>Heal and then Fortify |cFF00FF25Kel|r
    .complete 5650,1 --Heal and fortify Deathguard Kel
    .target Deathguard Kel
step << Priest tbc
    #completewith next
    .hs >> Hearth to Brill
step << Priest tbc
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Beryl|r upstairs
    .turnin 5650 >> Turn in Garments of Darkness
    .target Dark Cleric Beryl
step
    #completewith next
    .goto Tirisfal Glades,61.75,52.72,8,0
    .goto Tirisfal Glades,61.58,52.99,8 >>Exit the Inn
step
    #completewith next
    .goto Undercity,65.87,1.48,15,0
    .goto Undercity,65.82,5.44,15,0
    .goto Undercity,62.76,11.02,12,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the Orb of Translocation to Silvermoon City
 step
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Exit Silvermoon
step
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gloaming|r
    .fp Silvermoon >> Get the Silvermoon City flight path
    .target Skymistress Gloaming
step
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jaela|r
    .accept 8475 >> Accept The Dead Scar
    .target Ranger Jaela
step
    .goto Eversong Woods,46.68,49.10,40 >>Travel to Falconwing Square
    .isQuestAvailable 8463
]])

