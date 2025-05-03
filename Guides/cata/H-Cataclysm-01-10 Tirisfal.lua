local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction ~= 'Horde' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Tirisfal Glades
#next 6-10 Eversong Woods
#version 1
--#group RXP Cataclysm (H)
#defaultfor Undead
#group RXP Cataclysm 1-80 (H)
#subweight 10000

step << !Undead
    #completewith next
    +|cRXP_WARN_You have selected a guide meant for Undead. It is recommended you choose the same starter zone that you start in|r
step
    .goto 18,29.36,70.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agatha|r
    .accept 24959 >>Accept Fresh out of the Grave
    .target Agatha
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordo|r
    .turnin 24959 >>Turn in Fresh out of the Grave
    .accept 28608 >>Accept The Shadow Grave
    .target Undertaker Mordo
step
    #completewith next
    .goto 18,30.33,72.31,8,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,29.94,72.45,5 >>Enter the shadow grave
step
    .goto 18,29.67,71.98
    >>Loot the |cRXP_LOOT_Corpse-Stitching Twine|r and |cRXP_LOOT_Thick Embalming Fluid|r on the table
    .complete 28608,2 --Corpse-Stitching Twine (1)
    .complete 28608,1 --Thick Embalming Fluid (1)
step
    #completewith next
    .goto 18,29.94,72.45,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.33,72.31,8,0 >>Leave the grave
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordo|r
    .turnin 28608 >>Turn in The Shadow Grave
    .accept 26799 >>Accept Those That Couldn't Be Saved
    .target Undertaker Mordo
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caice|r
    .accept 24960 >>Accept The Wakenin
    .target Caretaker Caice
step
    #completewith ValdredMoray
    >>Kill |cRXP_ENEMY_Mindless Zombies|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    .goto 1420/0,1640.59998,1753.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Redpath|r
    .complete 24960,2 --1/1 Speak with Marshal Redpath
    .skipgossip
    .target Marshal Redpath
step
    .goto 18,30.24,69.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian|r
    .complete 24960,1 --1/1 Speak with Lilian Voss
    .skipgossip
    .target Lilian Voss
step
    #label ValdredMoray
    .goto 1420/0,1704.70007,1740.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valdred|r
    .complete 24960,3 --1/1 Speak with Valdred Moray
    .skipgossip
    .target Valdred Moray
step
    #loop
    .goto 18,30.39,69.59,0
    .waypoint 18,30.81,69.74,30,0
    .waypoint 18,30.42,70.07,30,0
    .waypoint 18,29.76,69.98,30,0
    .waypoint 18,29.27,70.03,30,0
    .waypoint 18,29.50,71.75,30,0
    .waypoint 18,30.39,69.59,30,0
    >>Kill |cRXP_ENEMY_Mindless Zombies|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordo|r
    .turnin 26799 >>Turn in Those That Couldn't Be Saved
    .target Undertaker Mordo
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caice|r
    .turnin 24960 >>Turn in The Wakening
    .accept 25089 >>Accept Beyond the Graves
    .target Caretaker Caice
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Enter the church
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r
    .accept 26801 >>Accept Scourge on our Perimeter
    .target Shadow Priest Sarvis
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saltain|r
    .turnin 25089 >>Turn in Beyond the Graves
    .accept 26800 >>Accept Recruitment
    .target Deathguard Saltain
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rattlecage Skeletons|r and |cRXP_ENEMY_Wretches Ghouls|r
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Rattlecage Skeleton
    .mob Wretches Ghoul
step
    #loop
    .goto 18,31.03,63.10,0
    .waypoint 18,31.79,64.38,20,0
    .waypoint 18,31.25,64.05,20,0
    .waypoint 18,31.97,61.99,20,0
    .waypoint 18,33.11,63.07,20,0
    .waypoint 18,33.34,63.87,20,0
    .waypoint 18,33.32,64.56,20,0
    .waypoint 18,32.87,64.62,20,0
    .waypoint 18,31.97,61.99,20,0
    >>Click on the |cRXP_ENEMY_Scarlet Corpses|r on the ground
    .complete 26800,1 --6/6 Scarlet Corpses gathered
    .mob Scarlet Corpse
step
    #loop
    .goto 18,31.24,63.43,0
    .waypoint 18,31.64,63.93,30,0
    .waypoint 18,32.18,63.21,30,0
    .waypoint 18,32.29,61.30,30,0
    .waypoint 18,31.26,61.24,30,0
    .waypoint 18,30.95,62.35,30,0
    .waypoint 18,31.24,63.43,30,0
    >>Kill |cRXP_ENEMY_Rattlecage Skeletons|r and |cRXP_ENEMY_Wretches Ghouls|r
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Rattlecage Skeleton
    .mob Wretches Ghoul
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saltain|r
    .turnin 26800 >>Turn in Recruitment
    .target Deathguard Saltain
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Enter the church
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r
    .turnin 26801 >>Turn in Scourge on our Perimeter
    .accept 3096 >>Accept Encrypted Scroll << Rogue
    .accept 3095 >>Accept Simple Scroll << Warrior
    .accept 24962 >>Accept Trail-Worn Scroll << Hunter
    .accept 3098 >>Accept Glyphic Scroll << Mage
    .accept 3097 >>Accept Hallowed Scroll << Priest
    .accept 3099 >>Accept Tainted Scroll << Warlock
    .target Shadow Priest Sarvis
step
    .goto 1420/0,1638.70007,1847.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elreth|r
    .accept 24961 >>Accept The Truth of the Grave
    .target Novice Elreth



step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .turnin 3098 >>Turn in Glyphic Scroll
    .accept 24965 >>Accept Magic Training
    .train 5143 >>Train |T136096:0|t[Arcane Missiles]
    .target Isabella
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Turn in Encrypted Scroll
    .accept 24967 >>Accept Stab!
    .train 2098 >>Train |T132292:0|t[Eviscerate]
    .target David Trias
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Turn in Simple Scroll
    .accept 24969 >>Accept Charging into Battle
    .train 100 >>Train |T132337:0|t[Charge]
    .target Dannal Stern
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xavier|r
    .turnin 24962 >>Turn in Trail-Worn Scroll
    .accept 24964 >>Accept The Thrill of the Hunt
    .train 56641 >>Train |T132213:0|t[Steady Shot]
    .target Xavier the Huntsman
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .turnin 3097 >>Turn in Hallowed Scroll
    .accept 24966 >>Accept Of Light and Shadows
    .train 2061 >>Train |T135907:0|t[Flash Heal]
    .target Dark Cleric Duesten
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .turnin 3099 >>Turn in Tainted Scroll
    .accept 24968 >>Accept Dark Deeds
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Maximillion
step << Mage
    .goto 18,31.64,66.91
	>>Cast |T136096:0|t[Arcane Missiles] on a |cRXP_ENEMY_Training Dummy|r
	.complete 24965,1 --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Priest
    .goto 18,31.20,66.02
	>>Cast |T135907:0|t[Flash Heal] on a |cRXP_FRIENDLY_Wounded Deathguard|r
	.complete 24966,1 --Cast Flash Heal (x5)
	.target Wounded Deathguard
step << Warlock
    .goto 18,31.64,66.91
	>>Cast |T135817:0|t[Immolate] on a |cRXP_ENEMY_Training Dummy|r
	.complete 24968,1 --Cast Immolate (x3)
	.mob Training Dummy
step
    #completewith next
    .goto 18,32.40,65.56,8 >>Enter the house
step
    .goto 18,32.69,65.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian|r
    >>|cRXP_WARN_She might be upstairs. Do not wait for the RP|r
    .complete 24961,1 --1/1 Show Lilian her reflection
    .skipgossip
    .target Lilian Voss
    --VV TODO: Roleplay timer
step << Rogue
    .goto 18,31.64,66.91
	>>Cast |T132292:0|t[Eviscerate] on a |cRXP_ENEMY_Training Dummy|r
	.complete 24967,1 --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 18,31.64,66.91
    >>Cast |T132337:0|t[Charge] on a |cRXP_ENEMY_Training Dummy|r
	.complete 24969,1 --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 18,31.64,66.91
	>>Cast |T132213:0|t[Steady Shot] on a |cRXP_ENEMY_Training Dummy|r
	.complete 24964,1 --Steady Shot (x3)
	.mob Training Dummy
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Enter the church
step
    .goto 18,30.86,66.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elreth|r
    .turnin 24961 >>Turn in The Truth of the Grave
    .accept 28672 >>Accept The Executor In the Field
    .target Novice Elreth
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to ||cRXP_FRIENDLY_Isabella|r
    .turnin 24965 >>Turn in Magic Training
    .target Isabella
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .turnin 24966 >>Turn in Of Light and Shadows
    .target Dark Cleric Duesten
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .turnin 24968 >>Turn in Dark Deeds
    .target Maximillion
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 24967 >>Turn in Stab!
    .target David Trias
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .turnin 24969 >>Turn in Simple Scroll
    .target Dannal Stern
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xavier|r
    .turnin 24964 >>Turn in The Thrill of the Hunt
    .target Xavier the Huntsman
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arren|r
    .turnin 28672 >>Turn in The Executor In the Field
    .accept 26802 >>Accept The Damned
    .target Executor Arren
step
    #loop
    .goto 18,32.00,57.83,0
    .waypoint 18,31.47,58.41,40,0
    .waypoint 18,32.00,57.83,40,0
    .waypoint 18,31.54,56.21,40,0
    .waypoint 18,32.39,56.15,40,0
    .waypoint 18,33.70,57.30,40,0
    .waypoint 18,35.11,56.22,40,0
    .waypoint 18,35.69,58.25,40,0
    .waypoint 18,34.92,59.39,40,0
    .waypoint 18,34.92,59.39,40,0
    .waypoint 18,34.19,59.64,40,0
    .waypoint 18,32.90,58.08,40,0
    >>Kill |cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Wings|r
    >>Kill |cRXP_ENEMY_Wolves|r. Loot them for their |cRXP_LOOT_Paws|r
    .complete 26802,2 --4/4 Duskbat Wing
    .mob +Duskbat
    .mob +Mangy Duskbat
    .complete 26802,1 --4/4 Scavenger Paw
    .mob +Young Scavenger
    .mob +Ragged Scavenger
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arren|r
    .turnin 26802 >>Turn in The Damned
    .accept 24973 >>Accept Night Web's Hollow
    .target Executor Arren
step
    #completewith NWSpiders
    .subzone 155 >>Travel to the Night's Web Hollow cave
step
    #completewith next
    >>Kill |cRXP_ENEMY_Young Night Web Spiders|r |cRXP_WARN_outside the mine|r
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    #label NWSpiders
    #loop
    .goto 18,25.43,59.80,0
    .waypoint 18,26.83,59.39,8,0
    .waypoint 18,26.01,59.65,8,0
    .waypoint 18,25.43,59.80,8,0
    .waypoint 18,25.04,60.35,8,0
    .waypoint 18,24.15,60.82,8,0
    .waypoint 18,23.23,60.06,8,0
    .waypoint 18,23.68,58.52,8,0
    >>Kill |cRXP_ENEMY_Night Web Spiders|r |cRXP_WARN_inside the mine|r
    .complete 24973,2 --5/5 Night Web Spider slain
    .mob Night Web Spider
step
    #loop
    .goto 18,29.44,58.33,0
    .waypoint 18,27.47,59.05,40,0
    .waypoint 18,28.13,57.32,40,0
    .waypoint 18,29.77,56.26,40,0
    .waypoint 18,29.44,58.33,40,0
    .waypoint 18,28.63,59.20,40,0
    >>Kill |cRXP_ENEMY_Young Night Web Spiders|r outside the mine
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arren|r
    .turnin 24973 >>Turn in Night Web's Hollow
    .accept 24970 >>Accept No Better Than the Zombies
    .target Executor Arren
step
    .goto 18,35.76,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darnell|r
    .turnin 24970 >>Turn in No Better Than the Zombies
    .accept 24971 >>Accept Assault on the Rotbrain Encampment
    .target Darnell
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rotbrain Magus|r and |cRXP_ENEMY_Rotbrain Berserkers|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserker
step
    .goto 18,36.50,68.82
    >>Kill |cRXP_ENEMY_Marshal Redpath|r
    .complete 24971,1 --1/1 Marshal Redpath slain
    .mob Marshal Redpath
step
    #loop
    .goto 18,37.07,67.02,0
    .waypoint 18,37.57,68.77,40,0
    .waypoint 18,38.07,67.55,40,0
    .waypoint 18,37.07,67.02,40,0
    .waypoint 18,35.94,68.27,40,0
    >>Kill |cRXP_ENEMY_Rotbrain Magus|r and |cRXP_ENEMY_Rotbrain Berserkers|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserkers
step
    #completewith next
    .subzone 154 >>Travel to Deathknell
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarvis|r
    .turnin 24971 >>Turn in Assault on the Rotbrain Encampment
    .accept 24972 >>Accept Vital Intelligence
    .target Shadow Priest Sarvis
step
    #completewith next
    .goto 18,38.09,56.48,20,0
    .goto 18,38.41,55.69,20,0
    .goto 18,38.78,55.57,20 >>Leave Deathknell
step
    #completewith next
    .subzone 4916 >>Travel to Calston Estate
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Simmer|r
    .turnin 24972 >>Turn in Vital Intelligence
    .accept 24978 >>Accept Reaping the Reapers
    .target Deathguard Simmer
step
    #xprate >1.19
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Simmer|r
    .turnin 24972 >>Turn in Vital Intelligence
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 24975 >>Accept Fields of Grief
    .target Apothecary Johaan
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >> Go upstairs
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sedrick|r
    .accept 24974 >>Accept Ever So Lonely
    .target Sedrick Calston
step << Hunter
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darna|r outside
    .train 2973 >>Train your class spells
    .target Darna Woad
    .xp <6,1
step << Warrior
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karla|r outside
    .train 34428 >>Train your class spells
    .target Karla Fain
    .xp <5,1
step << Mage
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah|r outside
    .train 2136 >>Train your class spells
    .target Larah Firesong
    .xp <5,1
step << Priest
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Claressa|r outside
    .train 589 >>Train your class spells
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maressa|r outside
    .train 87389 >>Train your class spells
    .target Maressa Milner
    .xp <5,1
step
    #xprate <1.2
    #completewith next
    >>Kill |cRXP_ENEMY_Tirisfal Farmers|r
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    #xprate <1.2
    #loop
    .goto 18,41.12,51.69,0
    .goto 18,35.25,50.90,0
    .waypoint 18,41.12,51.69,30,0
    .waypoint 18,39.67,51.55,30,0
    .waypoint 18,36.95,51.78,30,0
    .waypoint 18,35.25,50.90,30,0
    .waypoint 18,36.88,49.70,30,0
    >>Loot the |cRXP_LOOT_Tirisfal Pumpkins|r on the ground
    .complete 24975,1 --10/10 Tirisfal Pumpkin
step
    #xprate <1.2
    #loop
    .goto 18,41.12,51.69,0
    .goto 18,35.25,50.90,0
    .waypoint 18,41.12,51.69,30,0
    .waypoint 18,39.67,51.55,30,0
    .waypoint 18,36.95,51.78,30,0
    .waypoint 18,35.25,50.90,30,0
    .waypoint 18,36.88,49.70,30,0
    >>Kill |cRXP_ENEMY_Tirisfal Farmers|r
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    #xprate <1.2
    .goto 18,34.37,43.68,40,0
    .goto 18,35.90,42.92,40,0
    .goto 18,36.66,40.40,40,0
    .goto 18,35.91,43.85
    .use 52059 >>Attack a |cRXP_ENEMY_Vile Fin Murloc|r until it begins to flee, then use your |T133802:0|t[Murloc Leash] to capture it
    .complete 24974,1 --1/1 Vile Fin captured
    .mob File Vin Puddlejumper
    .mob File Vin Minor Oracle
step
    #xprate <1.2
    #completewith next
    .subzone 4916 >>Travel to Calston Estate
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Simmer|r
    .turnin 24978 >>Turn in Reaping the Reapers
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .turnin 24975 >>Turn in Fields of Grief
    .target Apothecary Johaan
step
    #xprate <1.2
    #completewith MurlocDelivery
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >> Go upstairs
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>Deliver the |cRXP_FRIENDLY_Murloc|r
    .complete 24974,2 --1/1 Vile Fin returned
    .target Sedrick Calston
step
    #xprate <1.2
    #label MurlocDelivery
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sedrick|r
    .turnin 24974 >>Turn in Ever So Lonely
    .target Sedrick Calston
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.86,5,0
    .goto 18,44.75,53.65 >> Go upstairs to return the |cRXP_FRIENDLY_Murloc|r
    .complete 24974,2 --1/1 Vile Fin returned
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sedrick|r
    .turnin 24974 >>Turn in Ever So Lonely
    .target Sedrick Calston
step << Hunter
    #xprate <1.2
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darna|r outside
    .train 2973 >>Train your class spells
    .target Darna Woad
    .xp <6,1
step << Warrior
    #xprate <1.2
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karla|r outside
    .train 34428 >>Train your class spells
    .target Karla Fain
    .xp <5,1
step << Mage
    #xprate <1.2
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah|r outside
    .train 2136 >>Train your class spells
    .target Larah Firesong
    .xp <5,1
step << Priest
    #xprate <1.2
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Claressa|r outside
    .train 589 >>Train your class spells
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock
    #xprate <1.2
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maressa|r outside
    .train 87389 >>Train your class spells
    .target Maressa Milner
    .xp <5,1
step
    #completewith next
    .goto 18,45.86,48.38,40,0
    .goto 18,46.61,47.42,40,0
    .goto 18,47.75,47.67
    .deathskip >>Pull as many mobs as you can to die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r, or travel to Brill
step << Undead
    .goto 18,60.13,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morris|r
    .accept 6321 >>Accept Supplying Brill
    .target Deathguard Morris
step
    .goto 18,60.87,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    .home >>Set your hearthstone to Brill
    .target Innkeeper Renee
    .isQuestAvailable 6323
step << Undead
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anette|r
    .turnin 6321 >>Turn in Supplying Brill
    .accept 6323 >>Accept Ride to the Undercity
    .target Anette Williams
step
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anette|r
    .fly Undercity >>Fly to Undercity
    .target Anette Williams
step << Undead
    .goto 90,61.49,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >>Turn in Ride to the Undercity
    .accept 6322 >>Accept Michael Garrett
    .target Gordon Wendham
step << Undead
    .goto 90,63.28,48.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Turn in Michael Garrett
    .accept 6324 >>Accept Return to Morris
    .target Michael Garrett
step << Undead
    #completewith SilvermoonPort
    .goto 90,59.98,47.60,10,0
    .goto 90,59.16,44.02,8,0
    .goto 90,65.87,43.99,15 >>Take the elevator upstairs
step << !Undead
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>Travel to Undercity
step
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>Click the |cRXP_PICK_Orb of Translocation|r to Silvermoon City
step
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059
    .zone Eversong Woods >>Exit Silvermoon City
step
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r
    .accept 8475 >>Accept The Dead Scar
    .target Ranger Jaela
    ]])
