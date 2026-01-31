if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name A_1_AT_Start
#displayname |cRXP_LOOT_1.0|r - Becoming a Champion

step
	#completewith next
	.goto IcecrownGlacier,69.66,22.86,200 >> Travel to the |T236690:0|tArgent Tournament Grounds in Icecrown
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Justicar Mariel Trueheart|r
	.goto IcecrownGlacier,69.66,22.86
	.accept 13667 >> Accept The Argent Tournament << Alliance
	.accept 13668 >> Accept The Argent Tournament << Horde
	.target Justicar Mariel Trueheart
step
	#completewith next
	.goto IcecrownGlacier,72.59,22.61
	.fp Argent Tournament Grounds >> Get the Argent Tournament Grounds flight path
	.target Helidan Lightwing
step
	>>Enter the Alliance Silver Covenant Pavilion << Alliance
	>>Enter the Horde Sunreaver Pavilion << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Edien|r Sunhollow << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13667 >> Turn in The Argent Tournament << Alliance
	.turnin 13668 >> Turn in The Argent Tournament << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Taelis|r, |cRXP_FRIENDLY_Avareth Swiftstrike|r and |cRXP_FRIENDLY_Scout Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Edien Sunhollow|r, |cRXP_FRIENDLY_Amariel Sunsworn|r and |cRXP_FRIENDLY_Galathia Brightdawn|r << Horde
	.accept 13828 >> Accept Mastery Of Melee << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.accept 13837 >> Accept Mastery Of The Charge << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.accept 13835 >> Accept Mastery Of The Shield-Breaker << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.accept 13829 >> Accept Mastery Of Melee << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.accept 13839 >> Accept Mastery Of The Charge << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.accept 13838 >> Accept Mastery Of The Shield-Breaker << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step
	#completewith next
	.goto IcecrownGlacier,75.93,20.37 << Alliance
	.goto IcecrownGlacier,75.63,23.66 << Horde
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Quel'dorei Steed|r << Alliance
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Sunreaver Hawkstrider|r << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valis Windchaser|r
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,73.20,19.23
	.complete 13835,1 << Alliance -- Valis Windchaser's advice
	.complete 13838,1 << Horde -- Valis Windchaser's advice
	.skipgossip 33974,1,1
	.target Valis Windchaser
step
	.isOnQuest 13835 << Alliance
	.isOnQuest 13838 << Horde
	>>Use |T132358:0|tShield-Breaker (2) on |cRXP_ENEMY_Ranged Targets|r and remove its layers of |T132360:0|tDefend. Once |T132360:0|tDefend stacks no longer remain continue using |T132358:0|tShield-Breaker on the vulnerable |cRXP_ENEMY_Ranged Target|r
	>>You must be at least 5 yards away from the |cRXP_ENEMY_Ranged Target|r when using |T132358:0|tShield-Breaker
	.goto IcecrownGlacier,73.13,19.01
	.complete 13835,2 << Alliance -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.complete 13838,2 << Horde -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.mob Ranged Target
step
	.isOnQuest 13837 << Alliance
	.isOnQuest 13839 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rugan Steelbelly|r
	.goto IcecrownGlacier,72.67,18.87
	.complete 13837,1 << Alliance -- Rugan Steelbelly's advice
	.complete 13839,1 << Horde -- Rugan Steelbelly's advice
	.skipgossip 33972,1,1
	.target Rugan Steelbelly
step
	.isOnQuest 13837 << Alliance
	.isOnQuest 13839 << Horde
	>>Use |T132358:0|tShield-Breaker (2) on |cRXP_ENEMY_Charge Targets|r to remove the layers of |T132360:0|tDefend. Use |T132226:0|tCharge (3) once no layers of |T132360:0|tDefend remain
	>>Be sure not to be too close or too far away from the |cRXP_ENEMY_Charge Target|r when using |T132226:0|tCharge
	.goto IcecrownGlacier,72.75,18.85
	.complete 13837,2 << Alliance -- Charge vulnerable Charge Target (2)
	.complete 13839,2 << Horde -- Charge vulnerable Charge Target (2)
	.mob Charge Target
step
	.isOnQuest 13828 << Alliance
	.isOnQuest 13829 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeran Lockwood|r
	.goto IcecrownGlacier,72.46,19.30
	.complete 13828,1 << Alliance -- Jeran Lockwood's advice
	.complete 13829,1 << Horde -- Jeran Lockwood's advice
	.skipgossip 33973,1,1
	.target Jeran Lockwood
step
	.isOnQuest 13828 << Alliance
	.isOnQuest 13829 << Horde
	>>Use |T132360:0|tDefend (4) |c99ffff99ALWAYS|r before attacking with |T135375:0|tThrust (1). |T132360:0|tDefend can stack upto 3 times. It is ideal to always have 3 stacks of |T132360:0|tDefend. Failure to have at least 1 stack of |T132360:0|tDefend will cause you to take significant damage when using |T135375:0|tThrust, potentially leading to being dismounted
	>>Use |T135375:0|tThrust (1) on the |cRXP_ENEMY_Melee Target Dummy|r 5 times
	>>You can also use |T134058:0|tRefresh Mount (5) to heal when not in combat
	.goto IcecrownGlacier,72.28,19.24
	.complete 13828,2 << Alliance -- Use Thrust on Melee Target (5)
	.complete 13829,2 << Horde -- Use Thrust on Melee Target (5)
	.mob Melee Target
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Taelis|r, |cRXP_FRIENDLY_Avareth Swiftstrike|r and |cRXP_FRIENDLY_Scout Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Edien Sunhollow|r, |cRXP_FRIENDLY_Amariel Sunsworn|r and |cRXP_FRIENDLY_Galathia Brightdawn|r << Horde
	.turnin 13828 >> Turn in Mastery Of Melee << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13837 >> Turn in Mastery Of The Charge << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13835 >> Turn in Mastery Of The Shield-Breaker << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13829 >> Turn in Mastery Of Melee << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13839 >> Turn in Mastery Of The Charge << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13838 >> Turn in Mastery Of The Shield-Breaker << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Edien Sunhollow|r << Horde
	.accept 13672 >> Accept Up To The Challenge << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.accept 13678 >> Accept Up To The Challenge << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Taelis|r. He has 1 out of 3 daily quests. Accept whichever is available << Alliance
	.daily 13669,13670,13666 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Edien Sunhollow|r. He has 1 out of 3 daily quests. Accept whichever is available << Horde
	.daily 13674,13675,13673 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avareth Swiftstrike|r and |cRXP_FRIENDLY_Scout Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amariel Sunsworn|r and |cRXP_FRIENDLY_Galathia Brightdawn|r << Horde
	.daily 13671 >> Accept Training In The Field << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.daily 13676 >> Accept Training In The Field << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.daily 13625 >> Accept Learning The Reins << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.daily 13677 >> Accept Learning The Reins << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestAvailable 13672 << Alliance
	.isQuestAvailable 13678 << Horde
step
	#completewith next
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	.goto IcecrownGlacier,75.93,20.37 << Alliance
	.goto IcecrownGlacier,75.63,23.66 << Horde
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Quel'dorei Steed|r << Alliance
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Sunreaver Hawkstrider|r << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Use |T132358:0|tShield-Breaker (2) on |cRXP_ENEMY_Ranged Targets|r and remove its layers of |T132360:0|tDefend. Once |T132360:0|tDefend stacks no longer remain continue using |T132358:0|tShield-Breaker on the vulnerable Ranged Target
	>>You must be at least 5 yards away from the |cRXP_ENEMY_Ranged Target|r when using |T132358:0|tShield-Breaker
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,73.13,19.01
	.complete 13625,2 << Alliance -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.complete 13677,2 << Horde -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.mob Ranged Target
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Use |T132358:0|tShield-Breaker (2) on |cRXP_ENEMY_Charge Targets|r to remove the layers of |T132360:0|tDefend. Use |T132226:0|tCharge (3) once no layers of |T132360:0|tDefend remain
	>>Be sure not to be too close or too far away from the |cRXP_ENEMY_Charge Target|r when using |T132226:0|tCharge
	.goto IcecrownGlacier,72.75,18.85
	.complete 13625,3 << Alliance -- Use Charge on vulnerable Charge Target (2)
	.complete 13677,3 << Horde -- Use Charge on vulnerable Charge Target (2)
	.mob Charge Target
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Use |T132360:0|tDefend (4) |c99ffff99ALWAYS|r before attacking with |T135375:0|tThrust (1). |T132360:0|tDefend can stack upto 3 times. It is ideal to always have 3 stacks of |T132360:0|tDefend. Failure to have at least 1 stack of |T132360:0|tDefend will cause you to take significant damage when using |T135375:0|tThrust, potentially leading to being dismounted
	>>Use |T135375:0|tThrust (1) on the |cRXP_ENEMY_Melee Target Dummy|r 5 times
	>>You can also use |T134058:0|tRefresh Mount (5) to heal when not in combat
	.goto IcecrownGlacier,72.28,19.24
	.complete 13625,1 << Alliance -- Use Thrust on Melee Target (5)
	.complete 13677,1 << Horde -- Use Thrust on Melee Target (5)
	.mob Melee Target
step
	.isOnQuest 13671 << Alliance
	.isOnQuest 13676 << Horde
	>>Kill |cRXP_ENEMY_Hulking Abominations|r, |cRXP_ENEMY_Malefic Necromancers|r and |cRXP_ENEMY_Undying Minions|r or |cRXP_ENEMY_any Scourge|r in Icecrown
	>>|cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	.goto IcecrownGlacier,70.79,62.08,40,0
	.goto IcecrownGlacier,69.99,65.26,40,0
	.goto IcecrownGlacier,67.91,69.43,40,0
	.goto IcecrownGlacier,71.42,68.86,40,0
	.goto IcecrownGlacier,70.79,62.08
	.complete 13671,1 << Alliance -- Icecrown Scourge slain (8)
	.complete 13676,1 << Horde -- Icecrown Scourge slain (8)
	.mob Hulking Abomination
	.mob Malefic Necromancer
	.mob Undying Minion
	.mob Risen Alliance Soldier
step
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
step
	#completewith next
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
step
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13669,1 << Alliance -- Blade of Drak'Mar (1)
	.complete 13674,1 << Horde -- Blade of Drak'Mar (1)
step
	#completewith next
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
step
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto CrystalsongForest,55.05,75.04
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
step
	#completewith next
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
step
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13670,1 << Alliance -- Winter's Edge (1)
	.complete 13675,1 << Horde -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
step
	#completewith next
	.isOnQuest 13666 << Alliance
	.isOnQuest 13673 << Horde
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
step
	.isOnQuest 13666 << Alliance
	.isOnQuest 13673 << Horde
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13666,1 << Alliance -- Ashwood Brand (1)
	.complete 13673,1 << Horde -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << Horde
	.isOnQuest 13666,13673,13675,13670,13674,13669
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Taelis|r, |cRXP_FRIENDLY_Avareth Swiftstrike|r and |cRXP_FRIENDLY_Scout Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Edien Sunhollow|r, |cRXP_FRIENDLY_Amariel Sunsworn|r and |cRXP_FRIENDLY_Galathia Brightdawn|r << Horde
	.turnin 13669 >> Turn in A Worthy Weapon << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13674 >> Turn in A Worthy Weapon << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >> Turn in Training In The Field << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >> Turn in Training In The Field << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >> Turn in Learning The Reins << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >> Turn in Learning The Reins << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13669 << Alliance -- A Worthy Weapon
	.isQuestComplete 13674 << Horde -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Taelis|r, |cRXP_FRIENDLY_Avareth Swiftstrike|r and |cRXP_FRIENDLY_Scout Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Edien Sunhollow|r, |cRXP_FRIENDLY_Amariel Sunsworn|r and |cRXP_FRIENDLY_Galathia Brightdawn|r << Horde
	.turnin 13670 >> Turn in The Edge Of Winter << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13675 >> Turn in The Edge Of Winter << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >> Turn In Training In The Field << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >> Turn in Training In The Field << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >> Turn in Learning The Reins << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >> Turn in Learning The Reins << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13670 << Alliance -- The Edge Of Winter
	.isQuestComplete 13675 << Horde -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Taelis|r, |cRXP_FRIENDLY_Avareth Swiftstrike|r and |cRXP_FRIENDLY_Scout Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Edien Sunhollow|r, |cRXP_FRIENDLY_Amariel Sunsworn|r and |cRXP_FRIENDLY_Galathia Brightdawn|r << Horde
	.turnin 13666 >> Turn in A Blade Fit For A Champion << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13673 >> Turn in A Blade Fit For A Champion << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >> Turn in Training In The Field << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >> Turn in Training In The Field << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >> Turn in Learning The Reins << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >> Turn in Learning The Reins << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13666 << Alliance -- A Blade Fit For A Champion
	.isQuestComplete 13673 << Horde -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avareth Swiftstrike|r and |cRXP_FRIENDLY_Scout Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amariel Sunsworn|r and |cRXP_FRIENDLY_Galathia Brightdawn|r << Horde
	.turnin -13671 >> Turn In Training In The Field << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin -13676 >> Turn in Training In The Field << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin -13625 >> Turn in Learning The Reins << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin -13677 >> Turn in Learning The Reins << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step -- Checking if they have 15 Aspirant's Seals after a set of turn ins.
	>>In order to complete the quest |cFFffff00Up To The Challenge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133443:0|t|c99CCFFFFAspirant's Seals|r
	>>You need |T133443:0|t|c99CCFFFF15 Aspirant's Seals|r. You will earn 5 per day if you complete the 3 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Edien Sunhollow|r << Horde
	.complete 13672,1 << Alliance -- Aspirant's Seal (15)
	.complete 13678,1 << Horde -- Aspirant's Seal (15)
	.turnin 13672 >> Turn in Up To The Challenge << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13678 >> Turn in Up To The Challenge << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Edien Sunhollow|r << Horde
	.accept 13679 >> Accept The Aspirant's Challenge << Alliance
	.accept 13680 >> Accept The Aspirant's Challenge << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
	.isQuestTurnedIn 13672 << Alliance
	.isQuestTurnedIn 13678 << Horde
step
	#completewith next
	>>Fly to the Aspirants' Ring on the northern side
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Quel'dorei Steed|r << Alliance
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Sunreaver Hawkstrider|r << Horde
	>>If you have misplaced your |T135128:0|t|c99ffff99Alliance Lance|r you can pick one up again just inside the Pavilion << Alliance
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion << Horde
	.goto IcecrownGlacier,71.84,19.87 << Alliance
	.goto IcecrownGlacier,71.84,19.98 << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
	.isOnQuest 13679 << Alliance
	.isOnQuest 13680 << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire David|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Valiant|r to arrive then defeat it
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,71.43,19.57
	.complete 13679,1 << Alliance -- Argent Valiant defeated (1)
	.complete 13680,1 << Horde -- Argent Valiant defeated (1)
	.skipgossip 2
	.timer 13,Argent Valiant Arrival
	.mob Argent Valiant
	.isOnQuest 13679 << Alliance
	.isOnQuest 13680 << Horde
step
	>>Jump off the |cRXP_FRIENDLY_Quel'dorei Steed|r << Alliance
	>>Jump off the |cRXP_FRIENDLY_Stabled Sunreaver Hawkstrider|r << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Edien Sunhollow|r << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13679 >> Turn in The Aspirant's Challenge << Alliance
	.turnin 13680 >> Turn in The Aspirant's Challenge << Horde
	.accept 13690 >> Accept A Valiant Of The Exodar << Draenei
	.accept 13685 >> Accept A Valiant Of Ironforge << Dwarf
	.accept 13688 >> Accept A Valiant Of Gnomeregan << Gnome
	.accept 13684 >> Accept A Valiant Of Stormwind	<< Human
	.accept 13689 >> Accept A Valiant Of Darnassus << NightElf
	.accept 13695 >> Accept A Valiant Of Undercity << Scourge
	.accept 13691 >> Accept A Valiant Of Orgrimmar << Orc
	.accept 13694 >> Accept A Valiant Of Thunder Bluff << Tauren
	.accept 13693 >> Accept A Valiant Of Sen'jin << Troll
	.accept 13696 >> Accept A Valiant Of Silvermoon << BloodElf
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.turnin 13690 >> Turn in A Valiant Of The Exodar << Draenei
	.turnin 13685 >> Turn in A Valiant Of Ironforge << Dwarf
	.turnin 13688 >> Turn in A Valiant Of Gnomeregan << Gnome
	.turnin 13684 >> Turn in A Valiant Of Stormwind	<< Human
	.turnin 13689 >> Turn in A Valiant Of Darnassus << NightElf
	.turnin 13695 >> Turn in A Valiant Of Undercity << Scourge
	.turnin 13691 >> Turn in A Valiant Of Orgrimmar << Orc
	.turnin 13694 >> Turn in A Valiant Of Thunder Bluff << Tauren
	.turnin 13693 >> Turn in A Valiant Of Sen'jin << Troll
	.turnin 13696 >> Turn in A Valiant Of Silvermoon << BloodElf
	.accept 13716 >> Accept The Valiant's Charge << Draenei
	.accept	13714 >> Accept The Valiant's Charge << Dwarf
	.accept 13715 >> Accept The Valiant's Charge << Gnome
	.accept	13718 >> Accept The Valiant's Charge << Human
	.accept 13717 >> Accept The Valiant's Charge << NightElf
	.accept	13721 >> Accept The Valiant's Charge << Scourge
	.accept 13697 >> Accept The Valiant's Charge << Orc
	.accept 13720 >> Accept The Valiant's Charge << Tauren
	.accept 13719 >> Accept The Valiant's Charge << Troll
	.accept 13722 >> Accept The Valiant's Charge << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf

step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r. He has 1 out of 3 daily quests. Accept whichever is available
	.daily 13603,13616,13600 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.60,19.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir Marcus Barlowe|r and |cRXP_FRIENDLY_Captain Joseph Holley|r
	.daily 13592 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.53,19.08
	.daily 13665 >> Accept The Grand Melee
	.daily 13847 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestAvailable 13718

step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r. He has 1 out of 3 daily quests. Accept whichever is available
	.daily 13752,13754,13753 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.10,19.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saandos|r and |cRXP_FRIENDLY_Ranii|r
	.daily 13755 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.08,19.19
	.daily 13756 >> Accept The Grand Melee
	.daily 13854 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestAvailable 13716

step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r. She has 1 out of 3 daily quests. Accept whichever is available
	.daily 13757,13759,13758 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.34,19.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illestria Bladesinger|r and |cRXP_FRIENDLY_Airae Starseeker|r
	.daily 13760 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.29,18.99
	.daily 13761 >> Accept The Grand Melee
	.daily 13855 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestAvailable 13717

step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r. She has 1 out of 3 daily quests. Accept whichever is available
	.daily 13741,13743,13742 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.64,19.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rollo Sureshot|r and |cRXP_FRIENDLY_Clara Tumblebrew|r
	.daily 13744 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.66,19.41
	.daily 13745 >> Accept The Grand Melee
	.daily 13851 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestAvailable 13714

step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r. He has 1 out of 3 daily quests. Accept whichever is available
	.daily 13746,13748,13747 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.55,19.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tickin Gearspanner|r and |cRXP_FRIENDLY_Flickin Gearspanner|r
	.daily 13749 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.60,19.79
	.daily 13750 >> Accept The Grand Melee
	.daily 13852 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestAvailable 13715

step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r. She has 1 out of 3 daily quests. Accept whichever is available
	.daily 13783,13785,13784 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.45,23.85
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kethiel Sunlance|r and |cRXP_FRIENDLY_Aneera Thuron|r
	.daily 13786 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.41,23.75
	.daily 13787 >> Accept The Grand Melee
	.daily 13859 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestAvailable 13722

step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r. He has 1 out of 3 daily quests. Accept whichever is available
	.daily 13778,13780,13779 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.53,24.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarah Chalke|r and |cRXP_FRIENDLY_Handler Dretch|r
	.daily 13781 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.56,24.11
	.daily 13782 >> Accept The Grand Melee
	.daily 13860 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestAvailable 13721

step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r. He has 1 out of 3 daily quests. Accept whichever is available
	.daily 13762,13764,13763 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.46,24.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akinos|r and |cRXP_FRIENDLY_Morah Worgsister|r
	.daily 13765 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.50,24.48
	.daily 13767 >> Accept The Grand Melee
	.daily 13856 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestAvailable 13697

step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r. He has 1 out of 3 daily quests. Accept whichever is available
	.daily 13773,13775,13774 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.20,24.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dern Ragetotem|r and |cRXP_FRIENDLY_Anka Clawhoof|r
	.daily 13776 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.26,24.66
	.daily 13777 >> Accept The Grand Melee
	.daily 13858 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestAvailable 13720

step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r. He has 1 out of 3 daily quests. Accept whichever is available
	.daily 13768,13770,13769 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,75.95,24.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Mezil-kree|r and |cRXP_FRIENDLY_Gahju|r
	.daily 13771 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.04,24.59
	.daily 13772 >> Accept The Grand Melee
	.daily 13857 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestAvailable 13719

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Exodar Elekk << Draenei
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Ironforge Ram << Dwarf
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Gnomeregan Mechanostrider << Gnome
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Stormwind Steed << Human
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Darnassian Nightsaber << NightElf
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Forsaken Warhorse << Scourge
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Orgrimmar Wolf << Orc
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Thunder Bluff Kodo << Tauren
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Darkspear Raptor << Troll
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Silvermoon Hawkstrider << BloodElf
	>>If you have misplaced your |T135128:0|t|c99ffff99Alliance Lance|r you can pick one up again just inside the Pavilion << Alliance
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion << Horde
	.goto IcecrownGlacier,76.36,20.51 << Draenei
	.goto IcecrownGlacier,76.25,20.51 << Dwarf
	.goto IcecrownGlacier,76.17,20.49 << Gnome
	.goto IcecrownGlacier,76.08,20.48 << Human
	.goto IcecrownGlacier,76.00,20.42 << NightElf
	.goto IcecrownGlacier,75.56,23.86 << Scourge
	.goto IcecrownGlacier,75.55,24.00 << Orc
	.goto IcecrownGlacier,75.53,24.26 << Tauren
	.goto IcecrownGlacier,75.58,23.76 << Troll
	.goto IcecrownGlacier,75.54,24.14 << BloodElf
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13665,13745,13750,13756,13761,13767,13772,13777,13782,13787
step -- THE GRAND MELEE
	>>Head to the Alliance Valiants' Ring << Alliance
	>>Head to the Horde Valiants' Ring << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Valiant|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Valiant|r 3 times in a Duel
	.goto IcecrownGlacier,75.31,19.05,10,0 << Alliance
	.goto IcecrownGlacier,75.66,18.72,10,0 << Alliance
	.goto IcecrownGlacier,75.73,18.12,10,0 << Alliance
	.goto IcecrownGlacier,75.08,17.70,10,0 << Alliance
	.goto IcecrownGlacier,74.82,18.39,10,0 << Alliance
	.goto IcecrownGlacier,75.31,19.05,10,0 << Alliance
	.goto IcecrownGlacier,75.66,18.72,10,0 << Alliance
	.goto IcecrownGlacier,75.73,18.12,10,0 << Alliance
	.goto IcecrownGlacier,75.08,17.70,10,0 << Alliance
	.goto IcecrownGlacier,74.82,18.39,10,0 << Alliance
	.goto IcecrownGlacier,75.31,19.05 << Alliance
	.goto IcecrownGlacier,75.48,25.39,10,0 << Horde
	.goto IcecrownGlacier,75.78,26.03,10,0 << Horde
	.goto IcecrownGlacier,75.53,26.69,10,0 << Horde
	.goto IcecrownGlacier,74.99,26.43,10,0 << Horde
	.goto IcecrownGlacier,75.00,25.65,10,0 << Horde
	.goto IcecrownGlacier,75.48,25.39,10,0 << Horde
	.goto IcecrownGlacier,75.78,26.03,10,0 << Horde
	.goto IcecrownGlacier,75.53,26.69,10,0 << Horde
	.goto IcecrownGlacier,74.99,26.43,10,0 << Horde
	.goto IcecrownGlacier,75.00,25.65,10,0 << Horde
	.goto IcecrownGlacier,75.48,25.39 << Horde
	.complete 13665,1 << Human -- Mark of the Valiant (3)
	.complete 13745,1 << Dwarf -- Mark of the Valiant (3)
	.complete 13750,1 << Gnome -- Mark of the Valiant (3)
	.complete 13756,1 << Draenei -- Mark of the Valiant (3)
	.complete 13761,1 << NightElf -- Mark of the Valiant (3)
	.complete 13767,1 << Orc -- Mark of the Valiant (3)
	.complete 13772,1 << Troll -- Mark of the Valiant (3)
	.complete 13777,1 << Tauren -- Mark of the Valiant (3)
	.complete 13782,1 << Scourge -- Mark of the Valiant (3)
	.complete 13787,1 << BloodElf -- Mark of the Valiant (3)
	.isOnQuest 13665,13745,13750,13756,13761,13767,13772,13777,13782,13787
	.skipgossip
	.mob Stormwind Valiant << Alliance
	.mob Ironforge Valiant << Alliance
	.mob Gnomeregan Valiant << Alliance
	.mob Darnassus Valiant << Alliance
	.mob Exodar Valiant << Alliance
	.mob Thunder Bluff Valiant << Horde
	.mob Silvermoon Valiant << Horde
	.mob Sen'jin Valiant << Horde
	.mob Orgrimmar Valiant << Horde
	.mob Undercity Valiant << Horde
step -- A Valiant's Field Training
	>>Jump off your Mount. |cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	>>Kill |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13592,1 << Human -- Converted Hero slain (10)
	.complete 13744,1 << Dwarf -- Converted Hero slain (10)
	.complete 13749,1 << Gnome -- Converted Hero slain (10)
	.complete 13755,1 << Draenei -- Converted Hero slain (10)
	.complete 13760,1 << NightElf -- Converted Hero slain (10)
	.complete 13765,1 << Orc -- Converted Hero slain (10)
	.complete 13771,1 << Troll -- Converted Hero slain (10)
	.complete 13776,1 << Tauren -- Converted Hero slain (10)
	.complete 13781,1 << Scourge -- Converted Hero slain (10)
	.complete 13786,1 << BloodElf -- Converted Hero slain (10)
	.isOnQuest 13592,13744,13749,13755,13760,13765,13771,13776,13781,13786
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r << Alliance
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r << Horde
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.complete 13847,2 << Human -- Boneguard Scout slain (10)
	.complete 13851,2 << Dwarf -- Boneguard Scout slain (10)
	.complete 13852,2 << Gnome -- Boneguard Scout slain (10)
	.complete 13854,2 << Draenei -- Boneguard Scout slain (10)
	.complete 13855,2 << NightElf -- Boneguard Scout slain (10)
	.complete 13856,2 << Orc -- Boneguard Scout slain (10)
	.complete 13857,2 << Troll -- Boneguard Scout slain (10)
	.complete 13858,2 << Tauren -- Boneguard Scout slain (10)
	.complete 13860,2 << Scourge -- Boneguard Scout slain (10)
	.complete 13859,2 << BloodElf -- Boneguard Scout slain (10)
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Scout
step
	>>Kill |cRXP_ENEMY_Boneguard Footmen|r by using your |cRXP_FRIENDLY_Warhorse|r to run over and kill them instantly
	>>Kill |cRXP_ENEMY_Boneguard Lieutenants|r. Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	.complete 13847,1 << Human -- Boneguard Footman slain (15)
	.complete 13847,3 << Human -- Boneguard Lieutenant (3)
	.complete 13851,1 << Dwarf -- Boneguard Footman slain (15)
	.complete 13851,3 << Dwarf -- Boneguard Lieutenant slain (3)
	.complete 13852,1 << Gnome -- Boneguard Footman slain (15)
	.complete 13852,3 << Gnome -- Boneguard Lieutenant slain (3)
	.complete 13854,1 << Draenei -- Boneguard Footman slain (15)
	.complete 13854,3 << Draenei -- Boneguard Lieutenant slain (3)
	.complete 13855,1 << NightElf -- Boneguard Footman slain (15)
	.complete 13855,3 << NightElf -- Boneguard Lieutenant slain (3)
	.complete 13856,1 << Orc -- Boneguard Footman slain (15)
	.complete 13856,3 << Orc -- Boneguard Lieutenant slain (3)
	.complete 13857,1 << Troll -- Boneguard Footman slain (15)
	.complete 13857,3 << Troll -- Boneguard Lieutenant slain (3)
	.complete 13858,1 << Tauren -- Boneguard Footman slain (15)
	.complete 13858,3 << Tauren -- Boneguard Lieutenant slain (3)
	.complete 13860,1 << Scourge -- Boneguard Footman slain (15)
	.complete 13860,3 << Scourge -- Boneguard Lieutenant slain (3)
	.complete 13859,1 << BloodElf -- Boneguard Footman slain (15)
	.complete 13859,3 << BloodElf -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13847,2 << Human -- Boneguard Scout slain (10)
	.complete 13851,2 << Dwarf -- Boneguard Scout slain (10)
	.complete 13852,2 << Gnome -- Boneguard Scout slain (10)
	.complete 13854,2 << Draenei -- Boneguard Scout slain (10)
	.complete 13855,2 << NightElf -- Boneguard Scout slain (10)
	.complete 13856,2 << Orc -- Boneguard Scout slain (10)
	.complete 13857,2 << Troll -- Boneguard Scout slain (10)
	.complete 13858,2 << Tauren -- Boneguard Scout slain (10)
	.complete 13860,2 << Scourge -- Boneguard Scout slain (10)
	.complete 13859,2 << BloodElf -- Boneguard Scout slain (10)
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13600,1 << Human -- Blade of Drak'Mar (1)
	.complete 13742,1 << Dwarf -- Blade of Drak'Mar (1)
	.complete 13747,1 << Gnome -- Blade of Drak'Mar (1)
	.complete 13753,1 << Draenei -- Blade of Drak'Mar (1)
	.complete 13758,1 << NightElf -- Blade of Drak'Mar (1)
	.complete 13763,1 << Orc -- Blade of Drak'Mar (1)
	.complete 13769,1 << Troll -- Blade of Drak'Mar (1)
	.complete 13774,1 << Tauren -- Blade of Drak'Mar (1)
	.complete 13779,1 << Scourge -- Blade of Drak'Mar (1)
	.complete 13784,1 << BloodElf -- Blade of Drak'Mar (1)
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13616,1 << Human -- Winter's Edge (1)
	.complete 13743,1 << Dwarf -- Winter's Edge (1)
	.complete 13748,1 << Gnome -- Winter's Edge (1)
	.complete 13754,1 << Draenei -- Winter's Edge (1)
	.complete 13759,1 << NightElf -- Winter's Edge (1)
	.complete 13764,1 << Orc -- Winter's Edge (1)
	.complete 13770,1 << Troll -- Winter's Edge (1)
	.complete 13775,1 << Tauren -- Winter's Edge (1)
	.complete 13780,1 << Scourge -- Winter's Edge (1)
	.complete 13785,1 << BloodElf -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13603,1 << Human -- Ashwood Brand (1)
	.complete 13741,1 << Dwarf -- Ashwood Brand (1)
	.complete 13746,1 << Gnome -- Ashwood Brand (1)
	.complete 13752,1 << Draenei -- Ashwood Brand (1)
	.complete 13757,1 << NightElf -- Ashwood Brand (1)
	.complete 13762,1 << Orc -- Ashwood Brand (1)
	.complete 13768,1 << Troll -- Ashwood Brand (1)
	.complete 13773,1 << Tauren -- Ashwood Brand (1)
	.complete 13778,1 << Scourge -- Ashwood Brand (1)
	.complete 13783,1 << BloodElf -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << Horde
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783,13616,13743,13748,13754,13759,13764,13770,13775,13780,13785,13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r and |cRXP_FRIENDLY_Captain Joseph Holley|r
	.turnin 13603 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Turn in The Grand Melee
	.turnin 13847 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13603 -- A Blade Fit For A Champion
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r and |cRXP_FRIENDLY_Captain Joseph Holley|r
	.turnin 13616 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Turn in The Grand Melee
	.turnin 13847 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13616 -- The Edge Of Winter
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r and |cRXP_FRIENDLY_Captain Joseph Holley|r
	.turnin 13600 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Turn in The Grand Melee
	.turnin 13847 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13600 -- A Worthy Weapon
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir Marcus Barlowe|r and |cRXP_FRIENDLY_Captain Joseph Holley|r
	.turnin -13592 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.53,19.08
	.turnin -13665 >> Turn in The Grand Melee
	.turnin -13847 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.62,19.21
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley

step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r and |cRXP_FRIENDLY_Ranii|r
	.turnin 13752 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Turn in The Grand Melee
	.turnin 13854 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13752 -- A Blade Fit For A Champion
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r and |cRXP_FRIENDLY_Ranii|r
	.turnin 13754 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Turn in The Grand Melee
	.turnin 13854 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13754 -- The Edge Of Winter
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r and |cRXP_FRIENDLY_Ranii|r
	.turnin 13753 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Turn in The Grand Melee
	.turnin 13854 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13753 -- A Worthy Weapon
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saandos|r and |cRXP_FRIENDLY_Ranii|r
	.turnin -13755 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.08,19.19
	.turnin -13756 >> Turn in The Grand Melee
	.turnin -13854 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.15,19.08
	.target Saandos
	.target Ranii

step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r, |cRXP_FRIENDLY_Illestria Bladesinger|r and |cRXP_FRIENDLY_Airae Starseeker|r
	.turnin 13757 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Turn in The Grand Melee
	.turnin 13855 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13757 -- A Blade Fit For A Champion
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r, |cRXP_FRIENDLY_Illestria Bladesinger|r and |cRXP_FRIENDLY_Airae Starseeker|r
	.turnin 13759 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Turn in The Grand Melee
	.turnin 13855 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13759 -- The Edge Of Winter
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r, |cRXP_FRIENDLY_Illestria Bladesinger|r and |cRXP_FRIENDLY_Airae Starseeker|r
	.turnin 13758 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Turn in The Grand Melee
	.turnin 13855 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13758 -- A Worthy Weapon
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illestria Bladesinger|r and |cRXP_FRIENDLY_Airae Starseeker|r
	.turnin -13760 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.29,18.99
	.turnin -13761 >> Turn in The Grand Melee
	.turnin -13855 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,19.00
	.target Illestria Bladesinger
	.target Airae Starseeker

step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r, |cRXP_FRIENDLY_Rollo Sureshot|r and |cRXP_FRIENDLY_Clara Tumblebrew|r
	.turnin 13741 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Turn in The Grand Melee
	.turnin 13851 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13741 -- A Blade Fit For A Champion
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r, |cRXP_FRIENDLY_Rollo Sureshot|r and |cRXP_FRIENDLY_Clara Tumblebrew|r
	.turnin 13743 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Turn in The Grand Melee
	.turnin 13851 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13743 -- The Edge Of Winter
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r, |cRXP_FRIENDLY_Rollo Sureshot|r and |cRXP_FRIENDLY_Clara Tumblebrew|r
	.turnin 13742 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Turn in The Grand Melee
	.turnin 13851 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13742 -- A Worthy Weapon
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rollo|r Sureshot and |cRXP_FRIENDLY_Clara Tumblebrew|r
	.turnin -13744 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.66,19.41
	.turnin -13745 >> Turn in The Grand Melee
	.turnin -13851 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.64,19.57
	.target Rollo Sureshot
	.target Clara Tumblebrew

step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r, |cRXP_FRIENDLY_Tickin Gearspanner|r and |cRXP_FRIENDLY_Flickin Gearspanner|r
	.turnin 13746 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Turn in The Grand Melee
	.turnin 13852 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13746 -- A Blade Fit For A Champion
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r, |cRXP_FRIENDLY_Tickin Gearspanner|r and |cRXP_FRIENDLY_Flickin Gearspanner|r
	.turnin 13748 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Turn in The Grand Melee
	.turnin 13852 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13748 -- The Edge Of Winter
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r, |cRXP_FRIENDLY_Tickin Gearspanner|r and |cRXP_FRIENDLY_Flickin Gearspanner|r
	.turnin 13747 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Turn in The Grand Melee
	.turnin 13852 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13747 -- A Worthy Weapon
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tickin Gearspanner|r and |cRXP_FRIENDLY_Flickin Gearspanner|r
	.turnin -13749 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.60,19.79
	.turnin -13750 >> Turn in The Grand Melee
	.turnin -13852 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,19.89
	.target Tickin Gearspanner
	.target Flickin Gearspanner

step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Shadow Hunter Mezil-kree|r and |cRXP_FRIENDLY_Gahju|r
	.turnin 13768 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Turn in The Grand Melee
	.turnin 13857 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13768 -- A Blade Fit For A Champion
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Shadow Hunter Mezil-kree|r and |cRXP_FRIENDLY_Gahju|r
	.turnin 13770 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Turn in The Grand Melee
	.turnin 13857 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13770 -- The Edge Of Winter
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Shadow Hunter Mezil-kree|r and |cRXP_FRIENDLY_Gahju|r
	.turnin 13769 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Turn in The Grand Melee
	.turnin 13857 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13769 -- A Worthy Weapon
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Mezil-kree|r and |cRXP_FRIENDLY_Gahju|r
	.turnin -13771 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.04,24.59
	.turnin -13772 >> Turn in The Grand Melee
	.turnin -13857 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,75.93,24.41
	.target Shadow Hunter Mezil-kree
	.target Gahju

step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r, |cRXP_FRIENDLY_Dern Ragetotem|r and |cRXP_FRIENDLY_Anka Clawhoof|r
	.turnin 13773 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Turn in The Grand Melee
	.turnin 13858 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13773 -- A Blade Fit For A Champion
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r, |cRXP_FRIENDLY_Dern Ragetotem|r and |cRXP_FRIENDLY_Anka Clawhoof|r
	.turnin 13775 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Turn in The Grand Melee
	.turnin 13858 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13775 -- The Edge Of Winter
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r, |cRXP_FRIENDLY_Dern Ragetotem|r and |cRXP_FRIENDLY_Anka Clawhoof|r
	.turnin 13774 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Turn in The Grand Melee
	.turnin 13858 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13774 -- A Worthy Weapon
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dern Ragetotem|r and |cRXP_FRIENDLY_Anka Clawhoof|r
	.turnin -13776 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.26,24.66
	.turnin -13777 >> Turn in The Grand Melee
	.turnin -13858 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.14,24.64
	.target Dern Ragetotem
	.target Anka Clawhoof

step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r, |cRXP_FRIENDLY_Akinos|r and |cRXP_FRIENDLY_Morah Worgsister|r
	.turnin 13762 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Turn in The Grand Melee
	.turnin 13856 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13762 -- A Blade Fit For A Champion
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r, |cRXP_FRIENDLY_Akinos|r and |cRXP_FRIENDLY_Morah Worgsister|r
	.turnin 13764 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Turn in The Grand Melee
	.turnin 13856 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13764 -- The Edge Of Winter
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r, |cRXP_FRIENDLY_Akinos|r and |cRXP_FRIENDLY_Morah Worgsister|r
	.turnin 13763 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Turn in The Grand Melee
	.turnin 13856 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13763 -- A Worthy Weapon
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akinos|r and |cRXP_FRIENDLY_Morah Worgsister|r
	.turnin -13765 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.50,24.48
	.turnin -13767 >> Turn in The Grand Melee
	.turnin -13856 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,24.59
	.target Akinos
	.target Morah Worgsister

step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r and |cRXP_FRIENDLY_Handler Dretch|r
	.turnin 13778 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Turn in The Grand Melee
	.turnin 13860 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13778 -- A Blade Fit For A Champion
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r and |cRXP_FRIENDLY_Handler Dretch|r
	.turnin 13780 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Turn in The Grand Melee
	.turnin 13860 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13780 -- The Edge Of Winter
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r and |cRXP_FRIENDLY_Handler Dretch|r
	.turnin 13779 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Turn in The Grand Melee
	.turnin 13860 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13779 -- A Worthy Weapon
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarah Chalke|r and |cRXP_FRIENDLY_Handler Dretch|r
	.turnin -13781 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.56,24.11
	.turnin -13782 >> Turn in The Grand Melee
	.turnin -13860 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.55,24.33
	.target Sarah Chalke
	.target Handler Dretch

step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r, |cRXP_FRIENDLY_Kethiel Sunlance|r and |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13783 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Turn in The Grand Melee
	.turnin 13859 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13783 -- A Blade Fit For A Champion
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r, |cRXP_FRIENDLY_Kethiel Sunlance|r and |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13785 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Turn in The Grand Melee
	.turnin 13859 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13785 -- The Edge Of Winter
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r, |cRXP_FRIENDLY_Kethiel Sunlance|r and |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13784 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Turn in The Grand Melee
	.turnin 13859 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13784 -- A Worthy Weapon
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kethiel Sunlance|r and |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin -13786 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.41,23.75
	.turnin -13787 >> Turn in The Grand Melee
	.turnin -13859 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,23.93
	.target Kethiel Sunlance
	.target Aneera Thuron

step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>In order to complete the quest |cFFffff00The Valiant's Charge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>You need |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. You will earn 5 per day if you complete the 4 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.complete 13716,1 >> Turn in The Valiant's Charge << Draenei -- Valiant's Seal (25)
	.complete 13714,1 >> Turn in The Valiant's Charge << Dwarf -- Valiant's Seal (25)
	.complete 13715,1 >> Turn in The Valiant's Charge << Gnome -- Valiant's Seal (25)
	.complete 13718,1 >> Turn in The Valiant's Charge << Human -- Valiant's Seal (25)
	.complete 13717,1 >> Turn in The Valiant's Charge << NightElf -- Valiant's Seal (25)
	.complete 13721,1 >> Turn in The Valiant's Charge << Scourge -- Valiant's Seal (25)
	.complete 13697,1 >> Turn in The Valiant's Charge << Orc -- Valiant's Seal (25)
	.complete 13720,1 >> Turn in The Valiant's Charge << Tauren -- Valiant's Seal (25)
	.complete 13719,1 >> Turn in The Valiant's Charge << Troll -- Valiant's Seal (25)
	.complete 13722,1 >> Turn in The Valiant's Charge << BloodElf -- Valiant's Seal (25)
	.turnin 13716 >> Turn in The Valiant's Charge << Draenei
	.turnin 13714 >> Turn in The Valiant's Charge << Dwarf
	.turnin 13715 >> Turn in The Valiant's Charge << Gnome
	.turnin 13718 >> Turn in The Valiant's Charge << Human
	.turnin 13717 >> Turn in The Valiant's Charge << NightElf
	.turnin 13721 >> Turn in The Valiant's Charge << Scourge
	.turnin 13697 >> Turn in The Valiant's Charge << Orc
	.turnin 13720 >> Turn in The Valiant's Charge << Tauren
	.turnin 13719 >> Turn in The Valiant's Charge << Troll
	.turnin 13722 >> Turn in The Valiant's Charge << BloodElf
	.accept 13724 >> Accept The Valiant's Challenge << Draenei
	.accept	13713 >> Accept The Valiant's Challenge << Dwarf
	.accept 13723 >> Accept The Valiant's Challenge << Gnome
	.accept	13699 >> Accept The Valiant's Challenge << Human
	.accept 13725 >> Accept The Valiant's Challenge << NightElf
	.accept	13729 >> Accept The Valiant's Challenge << Scourge
	.accept 13726 >> Accept The Valiant's Challenge << Orc
	.accept 13728 >> Accept The Valiant's Challenge << Tauren
	.accept 13727 >> Accept The Valiant's Challenge << Troll
	.accept 13731 >> Accept The Valiant's Challenge << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Exodar Elekk << Draenei
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Ironforge Ram << Dwarf
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Gnomeregan Mechanostrider << Gnome
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Stormwind Steed << Human
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Darnassian Nightsaber << NightElf
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Forsaken Warhorse << Scourge
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Orgrimmar Wolf << Orc
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Thunder Bluff Kodo << Tauren
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Darkspear Raptor << Troll
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Silvermoon Hawkstrider << BloodElf
	>>If you have misplaced your |T135128:0|t|c99ffff99Alliance Lance|r you can pick one up again just inside the Pavilion << Alliance
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion << Horde
	.goto IcecrownGlacier,76.36,20.51 << Draenei
	.goto IcecrownGlacier,76.25,20.51 << Dwarf
	.goto IcecrownGlacier,76.17,20.49 << Gnome
	.goto IcecrownGlacier,76.08,20.48 << Human
	.goto IcecrownGlacier,76.00,20.42 << NightElf
	.goto IcecrownGlacier,75.56,23.86 << Scourge
	.goto IcecrownGlacier,75.55,24.00 << Orc
	.goto IcecrownGlacier,75.53,24.26 << Tauren
	.goto IcecrownGlacier,75.58,23.76 << Troll
	.goto IcecrownGlacier,75.54,24.14 << BloodElf
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13724,13713,13723,13699,13725,13729,13726,13728,13727,13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Danny|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Champion|r to arrive then defeat it
	.goto IcecrownGlacier,68.60,20.99
	.complete 13724,1 << Draenei -- Argent Champion defeated (1)
	.complete 13713,1 << Dwarf -- Argent Champion defeated (1)
	.complete 13723,1 << Gnome -- Argent Champion defeated (1)
	.complete 13699,1 << Human -- Argent Champion defeated (1)
	.complete 13725,1 << NightElf -- Argent Champion defeated (1)
	.complete 13729,1 << Scourge -- Argent Champion defeated (1)
	.complete 13726,1 << Orc -- Argent Champion defeated (1)
	.complete 13728,1 << Tauren -- Argent Champion defeated (1)
	.complete 13727,1 << Troll -- Argent Champion defeated (1)
	.complete 13731,1 << BloodElf -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Argent Champion Arrival
	.mob Argent Champion
	.isOnQuest 13724,13713,13723,13699,13725,13729,13726,13728,13727,13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.turnin 13724 >> Turn in The Valiant's Challenge << Draenei
	.turnin	13713 >> Turn in The Valiant's Challenge << Dwarf
	.turnin 13723 >> Turn in The Valiant's Challenge << Gnome
	.turnin	13699 >> Turn in The Valiant's Challenge << Human
	.turnin 13725 >> Turn in The Valiant's Challenge << NightElf
	.turnin	13729 >> Turn in The Valiant's Challenge << Scourge
	.turnin 13726 >> Turn in The Valiant's Challenge << Orc
	.turnin 13728 >> Turn in The Valiant's Challenge << Tauren
	.turnin 13727 >> Turn in The Valiant's Challenge << Troll
	.turnin 13731 >> Turn in The Valiant's Challenge << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.accept 13734 >> Accept A Champion Rises << Draenei
	.accept	13732 >> Accept A Champion Rises << Dwarf
	.accept 13733 >> Accept A Champion Rises << Gnome
	.accept	13702 >> Accept A Champion Rises << Human
	.accept 13735 >> Accept A Champion Rises << NightElf
	.accept	13739 >> Accept A Champion Rises << Scourge
	.accept 13736 >> Accept A Champion Rises << Orc
	.accept 13738 >> Accept A Champion Rises << Tauren
	.accept 13737 >> Accept A Champion Rises << Troll
	.accept 13740 >> Accept A Champion Rises << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Justicar Mariel Trueheart|r
	.goto IcecrownGlacier,69.66,22.86
	.turnin 13734 >> Turn in A Champion Rises << Draenei
	.turnin	13732 >> Turn in A Champion Rises << Dwarf
	.turnin 13733 >> Turn in A Champion Rises << Gnome
	.turnin	13702 >> Turn in A Champion Rises << Human
	.turnin 13735 >> Turn in A Champion Rises << NightElf
	.turnin	13739 >> Turn in A Champion Rises << Scourge
	.turnin 13736 >> Turn in A Champion Rises << Orc
	.turnin 13738 >> Turn in A Champion Rises << Tauren
	.turnin 13737 >> Turn in A Champion Rises << Troll
	.turnin 13740 >> Turn in A Champion Rises << BloodElf
	.target Justicar Mariel Trueheart
step
	.goto IcecrownGlacier,76.33,19.48 << Alliance
	.goto IcecrownGlacier,76.17,24.21 << Horde
	+|cRXP_WARN_You are now a |T255137:0|tChampion of the Exodar!|r << Draenei
	+|cRXP_WARN_You are now a |T255139:0|tChampion of Gnomeregan!|r << Gnome
	+|cRXP_WARN_You are now a |T255138:0|tChampion of Ironforge!|r << Dwarf
	+|cRXP_WARN_You are now a |T255141:0|tChampion of Darnassus!|r << NightElf
	+|cRXP_WARN_You are now a |T255140:0|tChampion of Stormwind!|r << Human
	+|cRXP_WARN_You are now a |T255142:0|tChampion of Orgrimmar!|r << Orc
	+|cRXP_WARN_You are now a |T255145:0|tChampion of Sen'jin!|r << Troll
	+|cRXP_WARN_You are now a |T255136:0|tChampion of Silvermoon City!|r << BloodElf
	+|cRXP_WARN_You are now a |T255143:0|tChampion of the Undercity!|r << Scourge
	+|cRXP_WARN_You are now a |T255144:0|tChampion of Thunder Bluff!|r << Tauren
	>>|cRXP_LOOT_You are now finished with this introductory Becoming a Champion Guide!|r
	>>|cRXP_LOOT_You now have the choice to become a|r |cRXP_WARN_Champion|r |cRXP_LOOT_of another|r |cRXP_WARN_Race|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Load the |cRXP_FRIENDLY_2.0|r Guide to whichever|r |cRXP_WARN_Race|r |cRXP_LOOT_you choose to pursue next!|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Daily Quests|r
	.isQuestTurnedIn 13724 << Draenei
	.isQuestTurnedIn 13713 << Dwarf
	.isQuestTurnedIn 13723 << Gnome
	.isQuestTurnedIn 13699 << Human
	.isQuestTurnedIn 13725 << NightElf
	.isQuestTurnedIn 13729 << Scourge
	.isQuestTurnedIn 13726 << Orc
	.isQuestTurnedIn 13728 << Tauren
	.isQuestTurnedIn 13727 << Troll
	.isQuestTurnedIn 13731 << BloodElf
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name B_2_AT_Exodar
#displayname |cRXP_FRIENDLY_2.0|r - Exodar Champion
<< Alliance !Draenei

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r
	.goto IcecrownGlacier,76.10,19.10
	.accept 13705 >> Accept Valiant Of The Exodar
	.turnin 13705 >> Turn in Valiant Of The Exodar
	.target Colosos
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r. He has 1 out of 3 daily quests. Accept whichever is available
	.accept 13716 >> Accept The Valiant's Charge
	.daily 13752,13754,13753 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.10,19.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saandos|r and |cRXP_FRIENDLY_Ranii|r
	.daily 13755 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.08,19.19
	.daily 13756 >> Accept The Grand Melee
	.daily 13854 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestAvailable 13716
step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Exodar Elekk
	.goto IcecrownGlacier,76.36,20.51
	.use 46069
	.target Stabled Exodar Elekk
	.isOnQuest 13756
step -- THE GRAND MELEE
	>>Head to the Alliance Valiants' Ring << Alliance
	>>Head to the Horde Valiants' Ring << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Valiant|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Valiant|r 3 times in a Duel
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13756,1 -- Mark of the Valiant (3)
	.isOnQuest 13756
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Jump off your Mount. |cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	>>Kill |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13755,1 -- Converted Hero slain (10)
	.isOnQuest 13755
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r << Alliance
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13854
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.complete 13854,2 -- Boneguard Scout slain (10)
	.isOnQuest 13854
	.mob Boneguard Scout
step
	>>Kill |cRXP_ENEMY_Boneguard Footmen|r by using your |cRXP_FRIENDLY_Warhorse|r to run over and kill them instantly
	>>Kill |cRXP_ENEMY_Boneguard Lieutenants|r. Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	.complete 13854,1 -- Boneguard Footman slain (15)
	.complete 13854,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13854
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13854,2 -- Boneguard Scout slain (10)
	.isOnQuest 13854
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13753
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
	.isOnQuest 13753
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13753,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13753

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
	.isOnQuest 13754
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13754
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
	.isOnQuest 13754
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13754,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13754

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
	.isOnQuest 13752
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13752,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13752
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown
	.isOnQuest 13752,13754,13753,13755,13756,13854
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r and |cRXP_FRIENDLY_Ranii|r
	.turnin 13752 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Turn in The Grand Melee
	.turnin 13854 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13752 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r and |cRXP_FRIENDLY_Ranii|r
	.turnin 13754 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Turn in The Grand Melee
	.turnin 13854 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13754 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r and |cRXP_FRIENDLY_Ranii|r
	.turnin 13753 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Turn in The Grand Melee
	.turnin 13854 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13753 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saandos|r and |cRXP_FRIENDLY_Ranii|r
	.turnin -13755 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.08,19.19
	.turnin -13756 >> Turn in The Grand Melee
	.turnin -13854 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.15,19.08
	.target Saandos
	.target Ranii
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>In order to complete the quest |cFFffff00The Valiant's Charge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>You need |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. You will earn 5 per day if you complete the 4 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r
	.goto IcecrownGlacier,76.10,19.10
	.complete 13716,1 >> Turn in The Valiant's Charge -- Valiant's Seal (25)
	.turnin 13716 >> Turn in The Valiant's Charge
	.accept 13724 >> Accept The Valiant's Challenge
	.target Colosos
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Exodar Elekk
	>>If you have misplaced your |T135128:0|t|c99ffff99Alliance Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,76.36,20.51
	.use 46069
	.target Stabled Exodar Elekk
	.isOnQuest 13724
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Danny|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Champion|r to arrive then defeat it
	.goto IcecrownGlacier,68.60,20.99
	.complete 13724,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Argent Champion Arrival
	.mob Argent Champion
	.isOnQuest 13724
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colosos|r
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13724 >> Turn in The Valiant's Challenge
	.target Colosos
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_You are now a |T255137:0|tChampion of the Exodar!|r
	>>|cRXP_LOOT_You are now finished with the Exodar Champion Guide!|r
	>>|cRXP_LOOT_You now have the choice to become a|r |cRXP_WARN_Champion|r |cRXP_LOOT_of another|r |cRXP_WARN_Race|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Load the |cRXP_FRIENDLY_2.0|r Guide to whichever|r |cRXP_WARN_Race|r |cRXP_LOOT_you choose to pursue next!|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Daily Quests|r
	.isQuestTurnedIn 13724
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name C_2_AT_Stormwind
#displayname |cRXP_FRIENDLY_2.0|r - Stormwind Champion
<< Alliance !Human

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r
	.goto IcecrownGlacier,76.60,19.12
	.accept 13593 >> Accept Valiant Of Stormwind
	.turnin 13593 >> Turn in Valiant Of Stormwind
	.target Marshal Jacob Alerius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r. He has 1 out of 3 daily quests. Accept whichever is available
	.accept 13718 >> Accept The Valiant's Charge
	.daily 13603,13616,13600 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.60,19.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir Marcus Barlowe|r and |cRXP_FRIENDLY_Captain Joseph Holley|r
	.daily 13592 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.53,19.08
	.daily 13665 >> Accept The Grand Melee
	.daily 13847 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestAvailable 13718

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Stormwind Steed
	>>If you have misplaced your |T135128:0|t|c99ffff99Alliance Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,76.08,20.48
	.use 46069
	.target Stabled Stormwind Steed
	.isOnQuest 13665
step -- THE GRAND MELEE
	>>Head to the Alliance Valiants' Ring << Alliance
	>>Head to the Horde Valiants' Ring << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Valiant|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Valiant|r 3 times in a Duel
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13665,1 -- Mark of the Valiant (3)
	.isOnQuest 13665
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Jump off your Mount. |cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	>>Kill |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13592,1 -- Converted Hero slain (10)
	.isOnQuest 13592
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r << Alliance
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13847
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.complete 13847,2 -- Boneguard Scout slain (10)
	.isOnQuest 13847
	.mob Boneguard Scout
step
	>>Kill |cRXP_ENEMY_Boneguard Footmen|r by using your |cRXP_FRIENDLY_Warhorse|r to run over and kill them instantly
	>>Kill |cRXP_ENEMY_Boneguard Lieutenants|r. Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	.complete 13847,1 -- Boneguard Footman slain (15)
	.complete 13847,3 -- Boneguard Lieutenant (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13847
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13847,2 -- Boneguard Scout slain (10)
	.isOnQuest 13847
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13600
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
	.isOnQuest 13600
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13600,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13600

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
	.isOnQuest 13616
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13616
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
	.isOnQuest 13616
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13616,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13616

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
	.isOnQuest 13603
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13603,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13603
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown
	.isOnQuest 13603,13616,13600,13592,13665,13847
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r and |cRXP_FRIENDLY_Captain Joseph Holley|r
	.turnin 13603 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Turn in The Grand Melee
	.turnin 13847 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13603 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r and |cRXP_FRIENDLY_Captain Joseph Holley|r
	.turnin 13616 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Turn in The Grand Melee
	.turnin 13847 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13616 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r and |cRXP_FRIENDLY_Captain Joseph Holley|r
	.turnin 13600 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Turn in The Grand Melee
	.turnin 13847 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13600 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir Marcus Barlowe|r and |cRXP_FRIENDLY_Captain Joseph Holley|r
	.turnin -13592 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.53,19.08
	.turnin -13665 >> Turn in The Grand Melee
	.turnin -13847 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.62,19.21
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
step
	>>In order to complete the quest |cFFffff00The Valiant's Charge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>You need |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. You will earn 5 per day if you complete the 4 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r
	.complete 13718,1 >> Turn in The Valiant's Charge -- Valiant's Seal (25)
	.turnin 13718 >> Turn in The Valiant's Charge
	.accept	13699 >> Accept The Valiant's Challenge
	.target Marshal Jacob Alerius
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Stormwind Steed
	>>If you have misplaced your |T135128:0|t|c99ffff99Alliance Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,76.08,20.48
	.use 46069
	.target Stabled Stormwind Steed
	.isOnQuest 13699
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Danny|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Champion|r to arrive then defeat it
	.goto IcecrownGlacier,68.60,20.99
	.complete 13699,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Argent Champion Arrival
	.mob Argent Champion
	.isOnQuest 13699
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Jacob Alerius|r
	.goto IcecrownGlacier,76.60,19.12
	.turnin	13699 >> Turn in The Valiant's Challenge
	.target Marshal Jacob Alerius
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_You are now a |T255140:0|tChampion of Stormwind!|r
	>>|cRXP_LOOT_You are now finished with the Stormwind Champion Guide!|r
	>>|cRXP_LOOT_You now have the choice to become a|r |cRXP_WARN_Champion|r |cRXP_LOOT_of another|r |cRXP_WARN_Race|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Load the |cRXP_FRIENDLY_2.0|r Guide to whichever|r |cRXP_WARN_Race|r |cRXP_LOOT_you choose to pursue next!|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Daily Quests|r
	.isQuestTurnedIn 13699
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name D_2_AT_Ironforge
#displayname |cRXP_FRIENDLY_2.0|r - Ironforge Champion
<< Alliance !Dwarf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r
	.goto IcecrownGlacier,76.64,19.49
	.accept 13703 >> Accept Valiant Of Ironforge
	.turnin 13703 >> Turn in Valiant Of Ironforge
	.target Lana Stouthammer
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r. She has 1 out of 3 daily quests. Accept whichever is available
	.accept 13714 >> Accept The Valiant's Charge
	.daily 13741,13743,13742 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.64,19.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rollo Sureshot|r and |cRXP_FRIENDLY_Clara Tumblebrew|r
	.daily 13744 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.66,19.41
	.daily 13745 >> Accept The Grand Melee
	.daily 13851 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestAvailable 13714


step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Ironforge Ram
	>>If you have misplaced your |T135128:0|t|c99ffff99Alliance Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,76.25,20.51
	.use 46069
	.target Stabled Ironforge Ram
	.isOnQuest 13745
step -- THE GRAND MELEE
	>>Head to the Alliance Valiants' Ring
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Valiant|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Valiant|r 3 times in a Duel
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13745,1 -- Mark of the Valiant (3)
	.isOnQuest 13745
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant

step -- A Valiant's Field Training
	>>Jump off your Mount. |cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	>>Kill |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13744,1 -- Converted Hero slain (10)
	.isOnQuest 13744
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13851
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.complete 13851,2 -- Boneguard Scout slain (10)
	.isOnQuest 13851
	.mob Boneguard Scout
step
	>>Kill |cRXP_ENEMY_Boneguard Footmen|r by using your |cRXP_FRIENDLY_Warhorse|r to run over and kill them instantly
	>>Kill |cRXP_ENEMY_Boneguard Lieutenants|r. Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	.complete 13851,1 -- Boneguard Footman slain (15)
	.complete 13851,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13851
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13851,2 -- Boneguard Scout slain (10)
	.isOnQuest 13851
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13742
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
	.isOnQuest 13742
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13742,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13742

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
	.isOnQuest 13743
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13743
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
	.isOnQuest 13743
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13743,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13743

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
	.isOnQuest 13741
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13741,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13741
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << Horde
	.isOnQuest 13741,13743,13742,13744,13745,13851
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r, |cRXP_FRIENDLY_Rollo Sureshot|r and |cRXP_FRIENDLY_Clara Tumblebrew|r
	.turnin 13741 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Turn in The Grand Melee
	.turnin 13851 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13741 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r, |cRXP_FRIENDLY_Rollo Sureshot|r and |cRXP_FRIENDLY_Clara Tumblebrew|r
	.turnin 13743 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Turn in The Grand Melee
	.turnin 13851 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13743 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r, |cRXP_FRIENDLY_Rollo Sureshot|r and |cRXP_FRIENDLY_Clara Tumblebrew|r
	.turnin 13742 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Turn in The Grand Melee
	.turnin 13851 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13742 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rollo|r Sureshot and |cRXP_FRIENDLY_Clara Tumblebrew|r
	.turnin -13744 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.66,19.41
	.turnin -13745 >> Turn in The Grand Melee
	.turnin -13851 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.64,19.57
	.target Rollo Sureshot
	.target Clara Tumblebrew
step
	>>In order to complete the quest |cFFffff00The Valiant's Charge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>You need |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. You will earn 5 per day if you complete the 4 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r
	.goto IcecrownGlacier,76.64,19.49
	.complete 13714,1 >> Turn in The Valiant's Charge -- Valiant's Seal (25)
	.turnin 13714 >> Turn in The Valiant's Charge
	.accept	13713 >> Accept The Valiant's Challenge
	.target Lana Stouthammer
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Ironforge Ram
	>>If you have misplaced your |T135128:0|t|c99ffff99Alliance Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,76.25,20.51
	.use 46069
	.target Stabled Ironforge Ram
	.isOnQuest 13713
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Danny|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Champion|r to arrive then defeat it
	.goto IcecrownGlacier,68.60,20.99
	.complete 13713,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Argent Champion Arrival
	.mob Argent Champion
	.isOnQuest 13713
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana Stouthammer|r
	.goto IcecrownGlacier,76.64,19.49
	.turnin	13713 >> Turn in The Valiant's Challenge
	.target Lana Stouthammer
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_You are now a |T255138:0|tChampion of Ironforge!|r
	>>|cRXP_LOOT_You are now finished with the Ironforge Champion Guide!|r
	>>|cRXP_LOOT_You now have the choice to become a|r |cRXP_WARN_Champion|r |cRXP_LOOT_of another|r |cRXP_WARN_Race|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Load the |cRXP_FRIENDLY_2.0|r Guide to whichever|r |cRXP_WARN_Race|r |cRXP_LOOT_you choose to pursue next!|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Daily Quests|r
	.isQuestTurnedIn 13713
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name E_2_AT_Gnomeregan
#displayname |cRXP_FRIENDLY_2.0|r - Gnomeregan Champion
<< Alliance !Gnome

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r
	.goto IcecrownGlacier,76.55,19.82
	.accept 13704 >> Accept Valiant Of Gnomeregan
	.turnin 13704 >> Turn in Valiant Of Gnomeregan
	.target Ambrose Boltspark
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r. He has 1 out of 3 daily quests. Accept whichever is available
	.accept 13715 >> Accept The Valiant's Charge
	.daily 13746,13748,13747 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.55,19.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tickin Gearspanner|r and |cRXP_FRIENDLY_Flickin Gearspanner|r
	.daily 13749 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.60,19.79
	.daily 13750 >> Accept The Grand Melee
	.daily 13852 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestAvailable 13715

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Gnomeregan Mechanostrider
	>>If you have misplaced your |T135128:0|t|c99ffff99Alliance Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,76.17,20.49
	.use 46069
	.target Stabled Gnomeregan Mechanostrider
	.isOnQuest 13750
step -- THE GRAND MELEE
	>>Head to the Alliance Valiants' Ring
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Valiant|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Valiant|r 3 times in a Duel
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13750,1 -- Mark of the Valiant (3)
	.isOnQuest 13750
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Jump off your Mount. |cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	>>Kill |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13749,1 -- Converted Hero slain (10)
	.isOnQuest 13749
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13852
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.complete 13852,2 -- Boneguard Scout slain (10)
	.isOnQuest 13852
	.mob Boneguard Scout
step
	>>Kill |cRXP_ENEMY_Boneguard Footmen|r by using your |cRXP_FRIENDLY_Warhorse|r to run over and kill them instantly
	>>Kill |cRXP_ENEMY_Boneguard Lieutenants|r. Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	.complete 13852,1 -- Boneguard Footman slain (15)
	.complete 13852,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13852
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13852,2 -- Boneguard Scout slain (10)
	.isOnQuest 13852
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13747
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
	.isOnQuest 13747
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13747,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13747

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
	.isOnQuest 13748
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13748
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
	.isOnQuest 13748
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13748,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13748

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
	.isOnQuest 13746
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13746,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13746
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown
	.isOnQuest 13746,13748,13747,13749,13750,13852
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r, |cRXP_FRIENDLY_Tickin Gearspanner|r and |cRXP_FRIENDLY_Flickin Gearspanner|r
	.turnin 13746 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Turn in The Grand Melee
	.turnin 13852 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13746 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r, |cRXP_FRIENDLY_Tickin Gearspanner|r and |cRXP_FRIENDLY_Flickin Gearspanner|r
	.turnin 13748 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Turn in The Grand Melee
	.turnin 13852 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13748 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r, |cRXP_FRIENDLY_Tickin Gearspanner|r and |cRXP_FRIENDLY_Flickin Gearspanner|r
	.turnin 13747 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Turn in The Grand Melee
	.turnin 13852 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13747 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tickin Gearspanner|r and |cRXP_FRIENDLY_Flickin Gearspanner|r
	.turnin -13749 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.60,19.79
	.turnin -13750 >> Turn in The Grand Melee
	.turnin -13852 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,19.89
	.target Tickin Gearspanner
	.target Flickin Gearspanner
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>In order to complete the quest |cFFffff00The Valiant's Charge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>You need |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. You will earn 5 per day if you complete the 4 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r
	.goto IcecrownGlacier,76.55,19.82
	.complete 13715,1 >> Turn in The Valiant's Charge -- Valiant's Seal (25)
	.turnin 13715 >> Turn in The Valiant's Charge
	.accept 13723 >> Accept The Valiant's Challenge
	.target Ambrose Boltspark
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Gnomeregan Mechanostrider
	>>If you have misplaced your |T135128:0|t|c99ffff99Alliance Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,76.17,20.49
	.use 46069
	.target Stabled Gnomeregan Mechanostrider
	.isOnQuest 13723
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Danny|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Champion|r to arrive then defeat it
	.goto IcecrownGlacier,68.60,20.99
	.complete 13723,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Argent Champion Arrival
	.mob Argent Champion
	.isOnQuest 13723
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambrose Boltspark|r
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13723 >> Turn in The Valiant's Challenge
	.target Ambrose Boltspark
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_You are now a |T255139:0|tChampion of Gnomeregan!|r
	>>|cRXP_LOOT_You are now finished with the Gnomeregan Champion Guide!|r
	>>|cRXP_LOOT_You now have the choice to become a|r |cRXP_WARN_Champion|r |cRXP_LOOT_of another|r |cRXP_WARN_Race|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Load the |cRXP_FRIENDLY_2.0|r Guide to whichever|r |cRXP_WARN_Race|r |cRXP_LOOT_you choose to pursue next!|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Daily Quests|r
	.isQuestTurnedIn 13723
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name F_2_AT_Darnassus
#displayname |cRXP_FRIENDLY_2.0|r - Darnassus Champion
<< Alliance !NightElf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r
	.goto IcecrownGlacier,76.34,19.03
	.accept 13706 >> Accept Valiant Of Darnassus
	.turnin 13706 >> Turn in Valiant Of Darnassus
	.target Jaelyne Evensong
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r. She has 1 out of 3 daily quests. Accept whichever is available
	.accept 13717 >> Accept The Valiant's Charge
	.daily 13757,13759,13758 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.34,19.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illestria Bladesinger|r and |cRXP_FRIENDLY_Airae Starseeker|r
	.daily 13760 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.29,18.99
	.daily 13761 >> Accept The Grand Melee
	.daily 13855 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestAvailable 13717


step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Darnassian Nightsaber
	.goto IcecrownGlacier,76.00,20.42
	.use 46069
	.target Stabled Darnassian Nightsaber
	.isOnQuest 13761
step -- THE GRAND MELEE
	>>Head to the Alliance Valiants' Ring
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Valiant|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Valiant|r 3 times in a Duel
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13761,1 -- Mark of the Valiant (3)
	.isOnQuest 13761
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Jump off your Mount. |cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	>>Kill |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13760,1 -- Converted Hero slain (10)
	.isOnQuest 13760
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13855
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.complete 13855,2 -- Boneguard Scout slain (10)
	.isOnQuest 13855
	.mob Boneguard Scout
step
	>>Kill |cRXP_ENEMY_Boneguard Footmen|r by using your |cRXP_FRIENDLY_Warhorse|r to run over and kill them instantly
	>>Kill |cRXP_ENEMY_Boneguard Lieutenants|r. Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	.complete 13855,1 -- Boneguard Footman slain (15)
	.complete 13855,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13855
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13855,2 -- Boneguard Scout slain (10)
	.isOnQuest 13855
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13758
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
	.isOnQuest 13758
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13758,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13758

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
	.isOnQuest 13759
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13759
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
	.isOnQuest 13759
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13759,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13759

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
	.isOnQuest 13757
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13757,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13757
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown
	.isOnQuest 13757,13759,13758,13760,13761,13855
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r, |cRXP_FRIENDLY_Illestria Bladesinger|r and |cRXP_FRIENDLY_Airae Starseeker|r
	.turnin 13757 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Turn in The Grand Melee
	.turnin 13855 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13757 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r, |cRXP_FRIENDLY_Illestria Bladesinger|r and |cRXP_FRIENDLY_Airae Starseeker|r
	.turnin 13759 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Turn in The Grand Melee
	.turnin 13855 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13759 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r, |cRXP_FRIENDLY_Illestria Bladesinger|r and |cRXP_FRIENDLY_Airae Starseeker|r
	.turnin 13758 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Turn in The Grand Melee
	.turnin 13855 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13758 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illestria Bladesinger|r and |cRXP_FRIENDLY_Airae Starseeker|r
	.turnin -13760 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.29,18.99
	.turnin -13761 >> Turn in The Grand Melee
	.turnin -13855 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,19.00
	.target Illestria Bladesinger
	.target Airae Starseeker
step
	>>In order to complete the quest |cFFffff00The Valiant's Charge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>You need |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. You will earn 5 per day if you complete the 4 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r
	.goto IcecrownGlacier,76.34,19.03
	.complete 13717,1 >> Turn in The Valiant's Charge -- Valiant's Seal (25)
	.turnin 13717 >> Turn in The Valiant's Charge
	.accept 13725 >> Accept The Valiant's Challenge
	.target Jaelyne Evensong
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Darnassian Nightsaber
	>>If you have misplaced your |T135128:0|t|c99ffff99Alliance Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,76.00,20.42
	.use 46069
	.target Stabled Darnassian Nightsaber
	.isOnQuest 13725
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Danny|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Champion|r to arrive then defeat it
	.goto IcecrownGlacier,68.60,20.99
	.complete 13725,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Argent Champion Arrival
	.mob Argent Champion
	.isOnQuest 13725
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaelyne Evensong|r
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13725 >> Turn in The Valiant's Challenge
	.target Jaelyne Evensong
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_You are now a |T255141:0|tChampion of Darnassus!|r
	>>|cRXP_LOOT_You are now finished with the Darnassus Champion Guide!|r
	>>|cRXP_LOOT_You now have the choice to become a|r |cRXP_WARN_Champion|r |cRXP_LOOT_of another|r |cRXP_WARN_Race|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Load the |cRXP_FRIENDLY_2.0|r Guide to whichever|r |cRXP_WARN_Race|r |cRXP_LOOT_you choose to pursue next!|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Daily Quests|r
	.isQuestTurnedIn 13725
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name B_2_AT_Orgrimmar
#displayname |cRXP_FRIENDLY_2.0|r - Orgrimmar Champion
<< Horde !Orc


step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r
	.goto IcecrownGlacier,76.46,24.60
	.accept 13707 >> Accept Valiant Of Orgrimmar
	.turnin 13707 >> Turn in Valiant Of Orgrimmar
	.target Mokra the Skullcrusher
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r. He has 1 out of 3 daily quests. Accept whichever is available
	.accept 13697 >> Accept The Valiant's Charge
	.daily 13762,13764,13763 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.46,24.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akinos|r and |cRXP_FRIENDLY_Morah Worgsister|r
	.daily 13765 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.50,24.48
	.daily 13767 >> Accept The Grand Melee
	.daily 13856 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestAvailable 13697
step
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Orgrimmar Wolf
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,75.55,24.00
	.use 46070
	.target Stabled Orgrimmar Wolf
	.isOnQuest 13767
step
	>>Head to the Horde Valiants' Ring
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Valiant|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Valiant|r 3 times in a Duel
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13767,1 -- Mark of the Valiant (3)
	.isOnQuest 13767
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Jump off your Mount. |cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	>>Kill |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13765,1 -- Converted Hero slain (10)
	.isOnQuest 13765
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13856
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.complete 13856,2 -- Boneguard Scout slain (10)
	.isOnQuest 13856
	.mob Boneguard Scout
step
	>>Kill |cRXP_ENEMY_Boneguard Footmen|r by using your |cRXP_FRIENDLY_Warhorse|r to run over and kill them instantly
	>>Kill |cRXP_ENEMY_Boneguard Lieutenants|r. Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	.complete 13856,1 -- Boneguard Footman slain (15)
	.complete 13856,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13856
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13856,2 -- Boneguard Scout slain (10)
	.isOnQuest 13856
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13763
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
	.isOnQuest 13763
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13763,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13763

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
	.isOnQuest 13764
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13764
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
	.isOnQuest 13764
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13764,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13764

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
	.isOnQuest 13762
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13762,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13762
step
	.goto IcecrownGlacier,76.27,24.38,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown
	.isOnQuest 13762,13764,13763,13765,13767,13856
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r, |cRXP_FRIENDLY_Akinos|r and |cRXP_FRIENDLY_Morah Worgsister|r
	.turnin 13762 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Turn in The Grand Melee
	.turnin 13856 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13762 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r, |cRXP_FRIENDLY_Akinos|r and |cRXP_FRIENDLY_Morah Worgsister|r
	.turnin 13764 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Turn in The Grand Melee
	.turnin 13856 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13764 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r, |cRXP_FRIENDLY_Akinos|r and |cRXP_FRIENDLY_Morah Worgsister|r
	.turnin 13763 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Turn in The Grand Melee
	.turnin 13856 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13763 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akinos|r and |cRXP_FRIENDLY_Morah Worgsister|r
	.turnin -13765 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.50,24.48
	.turnin -13767 >> Turn in The Grand Melee
	.turnin -13856 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.40,24.59
	.target Akinos
	.target Morah Worgsister
step
	>>In order to complete the quest |cFFffff00The Valiant's Charge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>You need |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. You will earn 5 per day if you complete the 4 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r
	.goto IcecrownGlacier,76.46,24.60
	.complete 13697,1 >> Turn in The Valiant's Charge -- Valiant's Seal (25)
	.turnin 13697 >> Turn in The Valiant's Charge
	.accept 13726 >> Accept The Valiant's Challenge
	.target Mokra the Skullcrusher
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Orgrimmar Wolf
	.goto IcecrownGlacier,75.55,24.00
	.use 46070
	.target Stabled Orgrimmar Wolf
	.isOnQuest 13726
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Danny|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Champion|r to arrive then defeat it
	.goto IcecrownGlacier,68.60,20.99
	.complete 13726,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Argent Champion Arrival
	.mob Argent Champion
	.isOnQuest 13726
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13726 >> Turn in The Valiant's Challenge
	.target Mokra the Skullcrusher
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_You are now a |T255142:0|tChampion of Orgrimmar!|r
	>>|cRXP_LOOT_You are now finished with the Orgrimmar Champion Guide!|r
	>>|cRXP_LOOT_You now have the choice to become a|r |cRXP_WARN_Champion|r |cRXP_LOOT_of another|r |cRXP_WARN_Race|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Load the |cRXP_FRIENDLY_2.0|r Guide to whichever|r |cRXP_WARN_Race|r |cRXP_LOOT_you choose to pursue next!|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Daily Quests|r
	.isQuestTurnedIn 13726
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name C_2_AT_Sen'jin
#displayname |cRXP_FRIENDLY_2.0|r - Sen'jin Champion
<< Horde !Troll

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.accept 13708 >> Accept Valiant Of Sen'jin
	.turnin 13708 >> Turn in Valiant Of Sen'jin
	.target Zul'tore
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r. He has 1 out of 3 daily quests. Accept whichever is available
	.accept 13719 >> Accept The Valiant's Charge
	.daily 13768,13770,13769 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,75.95,24.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Mezil-kree|r and |cRXP_FRIENDLY_Gahju|r
	.daily 13771 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.04,24.59
	.daily 13772 >> Accept The Grand Melee
	.daily 13857 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestAvailable 13719

step
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Darkspear Raptor
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,75.58,23.76
	.use 46070
	.target Stabled Darkspear Raptor
	.isOnQuest 13772
step
	>>Head to the Horde Valiants' Ring
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Valiant|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Valiant|r 3 times in a Duel
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13772,1 -- Mark of the Valiant (3)
	.isOnQuest 13772
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Jump off your Mount. |cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	>>Kill |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13771,1 -- Converted Hero slain (10)
	.isOnQuest 13771
	.mob Converted Hero

step
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13857
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.complete 13857,2 -- Boneguard Scout slain (10)
	.isOnQuest 13857
	.mob Boneguard Scout
step
	>>Kill |cRXP_ENEMY_Boneguard Footmen|r by using your |cRXP_FRIENDLY_Warhorse|r to run over and kill them instantly
	>>Kill |cRXP_ENEMY_Boneguard Lieutenants|r. Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	.complete 13857,1 -- Boneguard Footman slain (15)
	.complete 13857,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13857
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13857,2 -- Boneguard Scout slain (10)
	.isOnQuest 13857
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13769
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
	.isOnQuest 13769
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13769,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13769

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
	.isOnQuest 13770
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13770
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
	.isOnQuest 13770
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13770,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13770

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
	.isOnQuest 13768
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13768,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13768
step
	.goto IcecrownGlacier,76.27,24.38,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown
	.isOnQuest 13768,13770,13769,13771,13772,13857
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Shadow Hunter Mezil-kree|r and |cRXP_FRIENDLY_Gahju|r
	.turnin 13768 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Turn in The Grand Melee
	.turnin 13857 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13768 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Shadow Hunter Mezil-kree|r and |cRXP_FRIENDLY_Gahju|r
	.turnin 13770 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Turn in The Grand Melee
	.turnin 13857 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13770 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Shadow Hunter Mezil-kree|r and |cRXP_FRIENDLY_Gahju|r
	.turnin 13769 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Turn in The Grand Melee
	.turnin 13857 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13769 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Mezil-kree|r and |cRXP_FRIENDLY_Gahju|r
	.turnin -13771 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.04,24.59
	.turnin -13772 >> Turn in The Grand Melee
	.turnin -13857 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,75.93,24.41
	.target Shadow Hunter Mezil-kree
	.target Gahju
step
	>>In order to complete the quest |cFFffff00The Valiant's Charge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>You need |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. You will earn 5 per day if you complete the 4 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.complete 13719,1 >> Turn in The Valiant's Charge -- Valiant's Seal (25)
	.turnin 13719 >> Turn in The Valiant's Charge
	.accept 13727 >> Accept The Valiant's Challenge
	.target Zul'tore
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Darkspear Raptor
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,75.58,23.76
	.use 46070
	.target Stabled Darkspear Raptor
	.isOnQuest 13727
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Danny|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Champion|r to arrive then defeat it
	.goto IcecrownGlacier,68.60,20.99
	.complete 13727,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Argent Champion Arrival
	.mob Argent Champion
	.isOnQuest 13727
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13727 >> Turn in The Valiant's Challenge
	.target Zul'tore
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_You are now a |T255145:0|tChampion of Sen'jin!|r
	>>|cRXP_LOOT_You are now finished with the Sen'jin Champion Guide!|r
	>>|cRXP_LOOT_You now have the choice to become a|r |cRXP_WARN_Champion|r |cRXP_LOOT_of another|r |cRXP_WARN_Race|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Load the |cRXP_FRIENDLY_2.0|r Guide to whichever|r |cRXP_WARN_Race|r |cRXP_LOOT_you choose to pursue next!|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Daily Quests|r
	.isQuestTurnedIn 13727
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name D_2_AT_Thunder Bluff
#displayname |cRXP_FRIENDLY_2.0|r - Thunder Bluff Champion
<< Horde !Tauren

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r
	.goto IcecrownGlacier,76.20,24.63
	.accept 13709 >> Accept Valiant Of Thunder Bluff
	.turnin 13709 >> Turn in Valiant Of Thunder Bluff
	.target Runok Wildmane
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r. He has 1 out of 3 daily quests. Accept whichever is available
	.accept 13720 >> Accept The Valiant's Charge
	.daily 13773,13775,13774 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.20,24.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dern Ragetotem|r and |cRXP_FRIENDLY_Anka Clawhoof|r
	.daily 13776 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.26,24.66
	.daily 13777 >> Accept The Grand Melee
	.daily 13858 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestAvailable 13720

step
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Thunder Bluff Kodo
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,75.53,24.26
	.use 46070
	.target Stabled Thunder Bluff Kodo
	.isOnQuest 13777
step
	>>Head to the Horde Valiants' Ring
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Valiant|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Valiant|r 3 times in a Duel
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13777,1 -- Mark of the Valiant (3)
	.isOnQuest 13777
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant

step -- A Valiant's Field Training
	>>Jump off your Mount. |cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	>>Kill |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13776,1 -- Converted Hero slain (10)
	.isOnQuest 13776
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13858
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.complete 13858,2 -- Boneguard Scout slain (10)
	.isOnQuest 13858
	.mob Boneguard Scout
step
	>>Kill |cRXP_ENEMY_Boneguard Footmen|r by using your |cRXP_FRIENDLY_Warhorse|r to run over and kill them instantly
	>>Kill |cRXP_ENEMY_Boneguard Lieutenants|r. Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	.complete 13858,1 -- Boneguard Footman slain (15)
	.complete 13858,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13858
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13858,2 -- Boneguard Scout slain (10)
	.isOnQuest 13858
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13774
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
	.isOnQuest 13774
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13774,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13774

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
	.isOnQuest 13775
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13775
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
	.isOnQuest 13775
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13775,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13775

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
	.isOnQuest 13773
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13773,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13773
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << Horde
	.isOnQuest 13773,13775,13774,13776,13777,13858
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r, |cRXP_FRIENDLY_Dern Ragetotem|r and |cRXP_FRIENDLY_Anka Clawhoof|r
	.turnin 13773 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Turn in The Grand Melee
	.turnin 13858 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13773 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r, |cRXP_FRIENDLY_Dern Ragetotem|r and |cRXP_FRIENDLY_Anka Clawhoof|r
	.turnin 13775 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Turn in The Grand Melee
	.turnin 13858 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13775 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r, |cRXP_FRIENDLY_Dern Ragetotem|r and |cRXP_FRIENDLY_Anka Clawhoof|r
	.turnin 13774 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Turn in The Grand Melee
	.turnin 13858 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13774 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dern Ragetotem|r and |cRXP_FRIENDLY_Anka Clawhoof|r
	.turnin -13776 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.26,24.66
	.turnin -13777 >> Turn in The Grand Melee
	.turnin -13858 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.14,24.64
	.target Dern Ragetotem
	.target Anka Clawhoof
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>In order to complete the quest |cFFffff00The Valiant's Charge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>You need |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. You will earn 5 per day if you complete the 4 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r
	.goto IcecrownGlacier,76.20,24.63
	.complete 13720,1 >> Turn in The Valiant's Charge -- Valiant's Seal (25)
	.turnin 13720 >> Turn in The Valiant's Charge
	.accept 13728 >> Accept The Valiant's Challenge
	.target Runok Wildmane
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Thunder Bluff Kodo
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,75.53,24.26
	.use 46070
	.target Stabled Thunder Bluff Kodo
	.isOnQuest 13728
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Danny|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Champion|r to arrive then defeat it
	.goto IcecrownGlacier,68.60,20.99
	.complete 13728,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Argent Champion Arrival
	.mob Argent Champion
	.isOnQuest 13728
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runok Wildmane|r
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13728 >> Turn in The Valiant's Challenge
	.target Runok Wildmane
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_You are now a |T255144:0|tChampion of Thunder Bluff!|r
	>>|cRXP_LOOT_You are now finished with the Thunder Bluff Champion Guide!|r
	>>|cRXP_LOOT_You now have the choice to become a|r |cRXP_WARN_Champion|r |cRXP_LOOT_of another|r |cRXP_WARN_Race|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Load the |cRXP_FRIENDLY_2.0|r Guide to whichever|r |cRXP_WARN_Race|r |cRXP_LOOT_you choose to pursue next!|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Daily Quests|r
	.isQuestTurnedIn 13728
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name E_2_AT_Undercity
#displayname |cRXP_FRIENDLY_2.0|r - Undercity Champion
<< Horde !Scourge

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r
	.goto IcecrownGlacier,76.53,24.21
	.accept 13710 >> Accept Valiant Of Undercity
	.turnin 13710 >> Turn in Valiant Of Undercity
	.target Deathstalker Visceri
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r. He has 1 out of 3 daily quests. Accept whichever is available
	.accept 13721 >> Accept The Valiant's Charge
	.daily 13778,13780,13779 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.53,24.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarah Chalke|r and |cRXP_FRIENDLY_Handler Dretch|r
	.daily 13781 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.56,24.11
	.daily 13782 >> Accept The Grand Melee
	.daily 13860 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestAvailable 13721
step
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Forsaken Warhorse
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,75.56,23.86
	.use 46070
	.target Stabled Forsaken Warhorse
	.isOnQuest 13782
step
	>>Head to the Horde Valiants' Ring
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Valiant|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Valiant|r 3 times in a Duel
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13782,1 -- Mark of the Valiant (3)
	.isOnQuest 13782
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Jump off your Mount. |cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	>>Kill |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13781,1 -- Converted Hero slain (10)
	.isOnQuest 13781
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13860
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.complete 13860,2 -- Boneguard Scout slain (10)
	.isOnQuest 13860
	.mob Boneguard Scout
step
	>>Kill |cRXP_ENEMY_Boneguard Footmen|r by using your |cRXP_FRIENDLY_Warhorse|r to run over and kill them instantly
	>>Kill |cRXP_ENEMY_Boneguard Lieutenants|r. Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	.complete 13860,1 -- Boneguard Footman slain (15)
	.complete 13860,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13860
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13860,2 -- Boneguard Scout slain (10)
	.isOnQuest 13860
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13779
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
	.isOnQuest 13779
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13779,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13779

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
	.isOnQuest 13780
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13780
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
	.isOnQuest 13780
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13780,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13780

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
	.isOnQuest 13778
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13778,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13778
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << Horde
	.isOnQuest 13778,13780,13779,13781,13782,13860
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r and |cRXP_FRIENDLY_Handler Dretch|r
	.turnin 13778 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Turn in The Grand Melee
	.turnin 13860 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13778 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r and |cRXP_FRIENDLY_Handler Dretch|r
	.turnin 13780 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Turn in The Grand Melee
	.turnin 13860 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13780 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r and |cRXP_FRIENDLY_Handler Dretch|r
	.turnin 13779 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Turn in The Grand Melee
	.turnin 13860 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13779 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarah Chalke|r and |cRXP_FRIENDLY_Handler Dretch|r
	.turnin -13781 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.56,24.11
	.turnin -13782 >> Turn in The Grand Melee
	.turnin -13860 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.55,24.33
	.target Sarah Chalke
	.target Handler Dretch
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>In order to complete the quest |cFFffff00The Valiant's Charge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>You need |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. You will earn 5 per day if you complete the 4 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r
	.goto IcecrownGlacier,76.53,24.21
	.complete 13721,1 >> Turn in The Valiant's Charge -- Valiant's Seal (25)
	.turnin 13721 >> Turn in The Valiant's Charge
	.accept	13729 >> Accept The Valiant's Challenge
	.target Deathstalker Visceri
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Forsaken Warhorse
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,75.56,23.86
	.use 46070
	.target Stabled Forsaken Warhorse
	.isOnQuest 13729
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Danny|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Champion|r to arrive then defeat it
	.goto IcecrownGlacier,68.60,20.99
	.complete 13729,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Argent Champion Arrival
	.mob Argent Champion
	.isOnQuest 13729
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Visceri|r
	.goto IcecrownGlacier,76.53,24.21
	.turnin	13729 >> Turn in The Valiant's Challenge
	.target Deathstalker Visceri
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_You are now a |T255143:0|tChampion of the Undercity!|r
	>>|cRXP_LOOT_You are now finished with the Undercity Champion Guide!|r
	>>|cRXP_LOOT_You now have the choice to become a|r |cRXP_WARN_Champion|r |cRXP_LOOT_of another|r |cRXP_WARN_Race|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Load the |cRXP_FRIENDLY_2.0|r Guide to whichever|r |cRXP_WARN_Race|r |cRXP_LOOT_you choose to pursue next!|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Daily Quests|r
	.isQuestTurnedIn 13729
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name F_2_AT_Silvermoon
#displayname |cRXP_FRIENDLY_2.0|r - Silvermoon Champion
#next Champion Side Quests
<< Horde !BloodElf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r
	.goto IcecrownGlacier,76.45,23.85
	.accept 13711 >> Accept Valiant Of Silvermoon
	.turnin 13711 >> Turn in Valiant Of Silvermoon
	.target Eressea Dawnsinger
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokra the Skullcrusher|r. She has 1 out of 3 daily quests. Accept whichever is available
	.accept 13722 >> Accept The Valiant's Charge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r. She has 1 out of 3 daily quests. Accept whichever is available
	.daily 13783,13785,13784 >>Accept A Blade Fit For A Champion |c99ffff99OR|r The Edge Of Winter |c99ffff99OR|r A Worthy Weapon
	.goto IcecrownGlacier,76.45,23.85
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kethiel Sunlance|r and |cRXP_FRIENDLY_Aneera Thuron|r
	.daily 13786 >> Accept A Valiant's Field Training
	.goto IcecrownGlacier,76.41,23.75
	.daily 13787 >> Accept The Grand Melee
	.daily 13859 >> Accept At The Enemy's Gates
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestAvailable 13722
step
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Silvermoon Hawkstrider
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,75.54,24.14
	.use 46070
	.target Stabled Silvermoon Hawkstrider
	.isOnQuest 13787
step
	>>Head to the Horde Valiants' Ring
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Valiant|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Valiant|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Valiant|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Valiant|r 3 times in a Duel
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13787,1 -- Mark of the Valiant (3)
	.isOnQuest 13787
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Jump off your Mount. |cRXP_WARN_Remember to Equip your Weapon|r. Do not destroy your |T135128:0|t|c99ffff99Lance|r. You will need it again
	>>Kill |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13786,1 -- Converted Hero slain (10)
	.isOnQuest 13786
	.mob Converted Hero


step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r << Alliance
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r << Horde
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13859
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.complete 13859,2 -- Boneguard Scout slain (10)
	.isOnQuest 13859
	.mob Boneguard Scout
step
	>>Kill |cRXP_ENEMY_Boneguard Footmen|r by using your |cRXP_FRIENDLY_Warhorse|r to run over and kill them instantly
	>>Kill |cRXP_ENEMY_Boneguard Lieutenants|r. Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	.complete 13859,1 -- Boneguard Footman slain (15)
	.complete 13859,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13859
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Kill |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r by using |T132358:0|tShield-Breaker (2) on them
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13859,2 -- Boneguard Scout slain (10)
	.isOnQuest 13859
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Collect |cRXP_PICK_Winter Hyacinth|r at the Ironwall Dam on the border of Icecrown and Crystalsong Forest
	>>They grow out of the rocks
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13784
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Travel to Drak'Mar Lake in northeastern Dragonblight
	.isOnQuest 13784
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Use the |T134195:0|t|cFFFFFF99Winter Hyacinth|r in your Bags while in the center of Drak'Mar Lake
	>>Wait for the Maiden of Drak'Mar Roleplay then Loot the |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13784,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13784

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Travel to Crystalsong Forest
	.isOnQuest 13785
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	>>Kill |cRXP_ENEMY_Lord Everblaze|r. Loot him for the |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13785
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Travel to Winter's Breath Lake in northern Howling Fjord
	.isOnQuest 13785
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Use the |T135488:0|t|c99ffff99Everburning Ember|r in your Bags to free the Maiden of Winter's Breath Lake
	.complete 13785,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13785

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Travel to Grizzly Hills
	.isOnQuest 13783
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Use the |T134721:0|t|c99ffff99Warts-B-Gone Lip Balm|r in your Bags |c99ffff99everytime|r before trying to /kiss Lake Frogs
	>>Target Lake Frogs to automatically kiss them. If this doesn't work, type /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventually one of the Lake Frogs will turn into a Human. Talk to it to receive the |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Weapon|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13783,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13783
step
	.goto IcecrownGlacier,76.27,24.38,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown
	.isOnQuest 13783,13785,13784,13786,13787,13859
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r, |cRXP_FRIENDLY_Kethiel Sunlance|r and |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13783 >> Turn in A Blade Fit For A Champion
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Turn in The Grand Melee
	.turnin 13859 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13783 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r, |cRXP_FRIENDLY_Kethiel Sunlance|r and |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13785 >> Turn in The Edge Of Winter
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Turn in The Grand Melee
	.turnin 13859 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13785 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r, |cRXP_FRIENDLY_Kethiel Sunlance|r and |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13784 >> Turn in A Worthy Weapon
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Turn in The Grand Melee
	.turnin 13859 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13784 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kethiel Sunlance|r and |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin -13786 >> Turn in A Valiant's Field Training
	.goto IcecrownGlacier,76.41,23.75
	.turnin -13787 >> Turn in The Grand Melee
	.turnin -13859 >> Turn in At The Enemy's Gates
	.goto IcecrownGlacier,76.52,23.93
	.target Kethiel Sunlance
	.target Aneera Thuron
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>In order to complete the quest |cFFffff00The Valiant's Charge|r and progress through the |T236690:0|tArgent Tournament Grounds you must complete daily quests and acquire |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>You need |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. You will earn 5 per day if you complete the 4 daily quests
	>>|c99ffff99RELOAD THE GUIDE THE NEXT DAY IF YOU STILL NEED TO COMPLETE THE DAILY QUESTS UNTIL YOU CAN TURN THIS QUEST IN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r
	.goto IcecrownGlacier,76.45,23.85
	.complete 13722,1 >> Turn in The Valiant's Charge -- Valiant's Seal (25)
	.turnin 13722 >> Turn in The Valiant's Charge
	.accept 13731 >> Accept The Valiant's Challenge
	.target Eressea Dawnsinger
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Silvermoon Hawkstrider
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r you can pick one up again just inside the Pavilion
	.goto IcecrownGlacier,75.54,24.14
	.use 46070
	.target Stabled Silvermoon Hawkstrider
	.isOnQuest 13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Danny|r
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>Wait for the |cRXP_ENEMY_Argent Champion|r to arrive then defeat it
	.goto IcecrownGlacier,68.60,20.99
	.complete 13731,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Argent Champion Arrival
	.mob Argent Champion
	.isOnQuest 13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eressea Dawnsinger|r
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13731 >> Turn in The Valiant's Challenge
	.target Eressea Dawnsinger
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_You are now a |T255136:0|tChampion of Silvermoon City!|r
	>>|cRXP_LOOT_You are now finished with the Silvermoon Champion Guide!|r
	>>|cRXP_LOOT_You now have the choice to become a|r |cRXP_WARN_Champion|r |cRXP_LOOT_of another|r |cRXP_WARN_Race|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Load the |cRXP_FRIENDLY_2.0|r Guide to whichever|r |cRXP_WARN_Race|r |cRXP_LOOT_you choose to pursue next!|r
	>>|cRXP_LOOT_OR
	>>|cRXP_LOOT_You may start|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Champion Daily Quests|r
	.isQuestTurnedIn 13731
]])



RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name G_2.1_AT_The_Black Knight's_Quest_Story
#displayname |cRXP_PICK_2.1|r - The Black Knight's Quest Story

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.accept 13633 >> Accept The Black Knight of Westfall? << Alliance
	.accept 13634 >> Accept The Black Knight of Silverpine? << Horde
	.target Crusader Rhydalla
step << Mage
	.zone Stormwind City >>Teleport to Stormwind << Alliance
	.zone Undercity >>Teleport to Undercity << Horde
	.isOnQuest 13633,13634
step << Alliance !Mage
    .goto Dalaran,40.11,62.81
	.zone Stormwind City >>Take the Portal from Dalaran to Stormwind
	.isOnQuest 13633
step << Alliance
	#completewith next
	.goto StormwindClassic,66.2,62.2
	.fly Westfall >> Fly to Westfall
	.isOnQuest 13633
step << Alliance
	>> Travel to Moonbrook. Loot the |cRXP_PICK_Dusty Journal|r inside the House
	.goto Westfall,42.09,69.66
	.complete 13633,1 -- Dusty Journal (1)
	.isOnQuest 13633
step << Horde !Mage
    .goto Dalaran,55.64,23.85
	.zone Undercity >>Take the Portal from Dalaran to Undercity
	.isOnQuest 13634
step << Horde
	#completewith next
	.goto Undercity,63.25,48.56
	.fly Silverpine >> Fly to Silverpine Forest
	.isOnQuest 13634
step << Horde
	>> Travel to Valgan's Field. Loot the |cRXP_PICK_Dusty Journal|r inside the House
	.goto Silverpine Forest,52.85,27.92,8,0
	.goto Silverpine Forest,53.17,28.10
	.complete 13634,1 -- Dusty Journal (1)
	.isOnQuest 13634
step << Mage
	#completewith next
	.zone Dalaran >>Teleport to Dalaran
	.isOnQuest 13633,13634
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown
	.isOnQuest 13633,13634
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13633 >> Turn in The Black Knight of Westfall? << Alliance
	.turnin 13634 >> Turn in The Black Knight of Silverpine? << Horde
	.accept 13641 >> Accept The Seer's Crystal
	.target Crusader Rhydalla
step << Mage
	#completewith next
	.zone Dalaran >>Teleport to Dalaran
	.isOnQuest 13641
step
	#completewith next
	.isOnQuest 13641
	.goto CrystalsongForest,43.90,40.07
	.zone CrystalsongForest >> Travel to Crystalsong Forest
step
	>>Kill |cRXP_ENEMY_Unbound Seers|r. Loot them for the |cRXP_LOOT_Seer's Crystal|r
	.goto CrystalsongForest,43.90,40.07,30,0
	.goto CrystalsongForest,46.04,40.87,30,0
	.goto CrystalsongForest,48.62,39.37,30,0
	.goto CrystalsongForest,42.57,49.12,30,0
	.goto CrystalsongForest,46.04,40.87
	.complete 13641,1 -- Seer's Crystal (1)
	.mob Unbound Seer
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown
	.isOnQuest 13641
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13641 >> Turn in The Seer's Crystal
	.accept 13643 >> Accept The Stories Dead Men Tell
	.target Crusader Rhydalla
step
	>>Head east to the Graveyard of the |T236690:0|tArgent Tournament Grounds
	.use 45070 >>Use the |T132775:0|t|cFFFFFF99Seer's Crystal|r in your Bags on the Graves
	.complete 13643,1 -- Sir Wendell Balfour's death investigated
	.goto IcecrownGlacier,79.37,23.09
	.complete 13643,3 -- Conall Irongrip's death investigated
	.goto IcecrownGlacier,79.64,22.85
	.complete 13643,2 -- Lorien Sunblaze's death investigated
	.goto IcecrownGlacier,79.63,23.57
	.isOnQuest 13643
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13643 >> Turn in The Stories Dead Men Tell
	.accept 13654 >> Accept There's Something About the Squire
	.target Crusader Rhydalla
step << Mage
	#completewith next
	.zone Dalaran >>Teleport to Dalaran
	.isOnQuest 13654
step
	#completewith next
	.isOnQuest 13654
	.goto CrystalsongForest,37.48,57.47
	.zone CrystalsongForest >> Travel to Crystalsong Forest
step
	>>Kill |cRXP_ENEMY_Skeletal Woodcutters|r. Loot them for a |cRXP_LOOT_Large Femur|r
	.goto CrystalsongForest,37.48,57.47,15,0
	.goto CrystalsongForest,36.68,61.93,15,0
	.goto CrystalsongForest,40.81,60.25,15,0
	.goto CrystalsongForest,38.17,57.37,15,0
	.goto CrystalsongForest,36.68,61.93
	.collect 45080,1 -- Large Femur
	.mob Skeletal Woodcutter
	.isOnQuest 13654
step
	>>|cRXP_WARN_STAND BEHIND MALORIC|r
	.use 45080 >>Use the |T133727:0|t|cFFFFFF99Large Femur|r in your Bags on |cRXP_ENEMY_Maloric|r
	>>Once he is incapacitated Loot him for the |cRXP_LOOT_Murderer's Toolkit|r
	.goto CrystalsongForest,38.19,59.49
	.complete 13654,1 -- Murderer's Toolkit (1)
	.isOnQuest 13654
	.mob Maloric
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown
	.isOnQuest 13654
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13654 >> Turn in There's Something About the Squire
	.accept 13663 >> Accept The Black Knight's Orders
	.target Crusader Rhydalla
step
	.use 45083 >>Use the |T133331:0|t|cFFFFFF99Enchanted Bridle|r in your Bags on the |cRXP_FRIENDLY_Black Knight's Gryphon|r
	>>The Gryphon RP takes roughly 1min40sec
	.goto IcecrownGlacier,77.77,21.61
	.cast 63163
	.timer 100,Black Knight's Gryphon RP
	.complete 13663,1 -- Black Knight's Gryphon taken
	.isOnQuest 13663
	.target Black Knight's Gryphon
step
	>>Loot the |cRXP_LOOT_Stolen Tournament Invitation|r and |cRXP_LOOT_Black Knight's Orders|r inside the small Hut
	.complete 13663,2 -- Stolen Tournament Invitation
	.goto IcecrownGlacier,54.07,8.66
	.complete 13663,3 -- Black Knight's Orders
	.goto IcecrownGlacier,54.10,8.63
	.isOnQuest 13663
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13663 >> Turn in The Black Knight's Orders
	.target Crusader Rhydalla
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Rhydalla|r
	>>NOTE: Accepting this quest requires you to be a |cRXP_WARN_Champion|r. If you cannot accept this quest you must complete the |cRXP_LOOT_1.0|r Becoming a Champion Guide
	.goto IcecrownGlacier,69.43,23.02
	.accept 13664 >> Accept The Black Knight's Fall
	.target Crusader Rhydalla
step
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Argent Warhorse|r << Alliance
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Argent Warhorse|r << Horde
	>>If you have misplayed your |T135128:0|t|c99ffff99Lance|r there are Racks throughout the Stables
	.use 46069 << Alliance
	.use 46070 << Horde
	.goto IcecrownGlacier,72.30,22.55
	.target Stabled Argent Warhorse
	.isOnQuest 13664
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cavin|r
	>>Remember to use |T132360:0|tDefend (4). Use |T132226:0|tCharge (3) along with |T135375:0|tThrust (1) and |T132358:0|tShield-Breaker (2) if at range
	>>|cRXP_ENEMY_The Black Knight|r will dismount you once his HP reaches 0
	>>|cRXP_WARN_Remember to Equip your Weapon!|r
	>>Kill |cRXP_ENEMY_The Black Knight|r
	.goto IcecrownGlacier,71.35,23.14
	.complete 13664,1 -- The Black Knight slain
	.skipgossip
	.timer 14,The Black Knight Arrival
	.target Squire Cavin
	.mob The Black Knight
	.isOnQuest 13664
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13664 >> Turn in The Black Knight's Fall
	.target Crusader Rhydalla

step -- 14016 and 14017 added in 3.2 - Add in Phase 3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.accept 14016 >> Accept The Black Knight's Curse
	.target Crusader Rhydalla
step
	>>Head east to the Graveyard of the |T236690:0|tArgent Tournament Grounds
	>>Kill the |cRXP_ENEMY_Cult Assassin|r after the short RP
	.goto IcecrownGlacier,79.50,23.27
	.complete 14016,1 -- Investigate the Black Knight's Grave
	.isOnQuest 14016
	.target Cult Assassin
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 14016 >> Turn in The Black Knight's Grave
	.accept 14017 >> Accept The Black Knight's Fate
	.target Crusader Rhydalla
step
	>>Fly east to Deathspeaker's Watch
	>>Kill |cRXP_ENEMY_Doctor Kolher|r. Loot him for his |cRXP_LOOT_Orders|r
	>>He patrols around on the platform
	.goto IcecrownGlacier,61.19,22.41
	.complete 14017,1 -- Doctor Kohler's Orders (1)
	.isOnQuest 14017
	.target Doctor Kolher
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 14017 >> Turn in The Black Knight's Grave
	.target Crusader Rhydalla
step
	+|cRXP_WARN_This is the end of |cRXP_ENEMY_The Black Knight's|r Story!
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name H_3_AT_Champion_Daily_Quests
#displayname |cRXP_ENEMY_3.0|r - Champion Daily Quests

step
	>>To access Champion Daily Quests you must have completed the |cRXP_LOOT_1.0|r Becoming a Champion Guide
	>>If you cannot accept any quests make sure it has been completed
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Justicar Mariel Trueheart|r
	.goto IcecrownGlacier,69.66,22.86
	.accept 13794 >> Accept Eadric the Pure << !DK
	.accept 13795 >> Accept The Scourgebane << DK
	.target Justicar Mariel Trueheart
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eadric the Pure|r
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13794 >> Turn in Eadric the Pure
	.target Eadric the Pure
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crok Scourgebane|r
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13795 >> Turn in The Scourgebane
	.target Crok Scourgebane
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eadric the Pure|r, |cRXP_FRIENDLY_Luuri|r and |cRXP_FRIENDLY_Cellian Daybreak|r
	.daily 13682 >> Accept Threat From Above << Alliance
	.daily 13809 >> Accept Threat From Above << Horde
	.daily 13861 >> Accept Battle Before The Citadel << Alliance
	.daily 13862 >> Accept Battle Before The Citadel << Horde
	.goto IcecrownGlacier,69.96,23.44
	.daily 13790 >> Accept Among the Champions << Alliance
	.daily 13811 >> Accept Among the Champions << Horde
	.goto IcecrownGlacier,69.93,23.33
	.daily 13789 >> Accept Taking Battle To The Enemy << Alliance
	.daily 13810 >> Accept Taking Battle To The Enemy << Horde
	.goto IcecrownGlacier,69.92,23.53
	.isQuestTurnedIn 13664 -- Must complete 13664 to accept Threat From Above
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eadric the Pure|r, |cRXP_FRIENDLY_Luuri|r and |cRXP_FRIENDLY_Cellian Daybreak|r
	.daily 13861 >> Accept Battle Before The Citadel << Alliance
	.daily 13862 >> Accept Battle Before The Citadel << Horde
	.goto IcecrownGlacier,69.96,23.44
	.daily 13790 >> Accept Among the Champions << Alliance
	.daily 13811 >> Accept Among the Champions << Horde
	.goto IcecrownGlacier,69.93,23.33
	.daily 13789 >> Accept Taking Battle To The Enemy << Alliance
	.daily 13810 >> Accept Taking Battle To The Enemy << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crok Scourgebane|r, |cRXP_FRIENDLY_Illyrie Nightfall|r and |cRXP_FRIENDLY_Zor'be the Bloodletter|r
	.daily 13788 >> Accept Threat From Above << Alliance
	.daily 13812 >> Accept Threat From Above << Horde
	.daily 13864 >> Accept Battle Before The Citadel << Alliance
	.daily 13863 >> Accept Battle Before The Citadel << Horde
	.goto IcecrownGlacier,73.80,20.06
	.daily 13793 >> Accept Among the Champions << Alliance
	.daily 13814 >> Accept Among the Champions << Horde
	.goto IcecrownGlacier,73.59,20.08
	.daily 13791 >> Accept Taking Battle To The Enemy << Alliance
	.daily 13813 >> Accept Taking Battle To The Enemy << Horde
	.goto IcecrownGlacier,73.80,19.45
	.isQuestTurnedIn 13664
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crok Scourgebane|r, |cRXP_FRIENDLY_Illyrie Nightfall|r and |cRXP_FRIENDLY_Zor'be the Bloodletter|r
	.daily 13864 >> Accept Battle Before The Citadel << Alliance
	.daily 13863 >> Accept Battle Before The Citadel << Horde
	.goto IcecrownGlacier,73.80,20.06
	.daily 13793 >> Accept Among the Champions << Alliance
	.daily 13814 >> Accept Among the Champions << Horde
	.goto IcecrownGlacier,73.59,20.08
	.daily 13791 >> Accept Taking Battle To The Enemy << Alliance
	.daily 13813 >> Accept Taking Battle To The Enemy << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step << !DK Alliance -- Among the Champions
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Exodar Elekk << Draenei
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Ironforge Ram << Dwarf
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Gnomeregan Mechanostrider << Gnome
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Stormwind Steed << Human
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Darnassian Nightsaber << NightElf
	>>If you have misplayed your |T135128:0|t|c99ffff99Alliance Lance|r there are Racks throughout the Stables
	.goto IcecrownGlacier,71.56,22.41 << Human
	.goto IcecrownGlacier,71.62,22.50 << NightElf
	.goto IcecrownGlacier,71.68,22.38 << Draenei
	.goto IcecrownGlacier,71.80,22.50 << Dwarf
	.goto IcecrownGlacier,71.93,22.51 << Gnome
	.use 46069
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.isOnQuest 13790
step << !DK Alliance -- Among the Champions
	>>Head to the Ring of Champions
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Champion|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Champion|r 4 times in a Duel
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13790,1 -- Mark of the Champion (4)
	.isOnQuest 13790
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << !DK Horde -- Among the Champions
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Forsaken Warhorse << Scourge
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Orgrimmar Wolf << Orc
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Thunder Bluff Kodo << Tauren
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Darkspear Raptor << Troll
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Silvermoon Hawkstrider << BloodElf
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r there are Racks throughout the Stables
	.goto IcecrownGlacier,72.04,22.54 << Troll
	.goto IcecrownGlacier,72.08,22.45 << Scourge
	.goto IcecrownGlacier,72.17,22.53 << Orc
	.goto IcecrownGlacier,72.20,22.46 << BloodElf
	.goto IcecrownGlacier,71.86,22.39 << Tauren
	.use 46070
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13811
step << !DK Horde -- Among the Champions
	>>Head to the Ring of Champions
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Champion|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Champion|r 4 times in a Duel
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13811,1 -- Mark of the Champion (4)
	.isOnQuest 13811
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << DK Alliance -- Among the Champions
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Exodar Elekk << Draenei
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Ironforge Ram << Dwarf
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Gnomeregan Mechanostrider << Gnome
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Stormwind Steed << Human
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the Stabled Darnassian Nightsaber << NightElf
	>>If you have misplayed your |T135128:0|t|c99ffff99Alliance Lance|r there are Racks throughout the Stables
	.goto IcecrownGlacier,71.56,22.41 << Human
	.goto IcecrownGlacier,71.62,22.50 << NightElf
	.goto IcecrownGlacier,71.68,22.38 << Draenei
	.goto IcecrownGlacier,71.80,22.50 << Dwarf
	.goto IcecrownGlacier,71.93,22.51 << Gnome
	.use 46069
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.isOnQuest 13793
step << DK Alliance -- Among the Champions
	>>Head to the Ring of Champions
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Champion|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Champion|r 4 times in a Duel
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13793,1 -- Mark of the Champion (4)
	.isOnQuest 13793
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << DK Horde -- Among the Champions
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Forsaken Warhorse << Scourge
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Orgrimmar Wolf << Orc
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Thunder Bluff Kodo << Tauren
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Darkspear Raptor << Troll
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the Stabled Silvermoon Hawkstrider << BloodElf
	>>If you have misplaced your |T135128:0|t|c99ffff99Horde Lance|r there are Racks throughout the Stables
	.goto IcecrownGlacier,72.04,22.54 << Troll
	.goto IcecrownGlacier,72.08,22.45 << Scourge
	.goto IcecrownGlacier,72.17,22.53 << Orc
	.goto IcecrownGlacier,72.20,22.46 << BloodElf
	.goto IcecrownGlacier,71.86,22.39 << Tauren
	.use 46070
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13814
step << DK Horde -- Among the Champions
	>>Head to the Ring of Champions
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to any |cRXP_ENEMY_Champion|r. They can all be challenged to a Duel
	>>Remember to use |T132360:0|tDefend (4) and maintain stacks of it during the Duel
	>>Use |T132358:0|tShield-Breaker (2) to remove |T132360:0|tDefend stacks from the |cRXP_ENEMY_Champion|r constantly
	>>Once no stacks of |T132360:0|tDefend remain on the |cRXP_ENEMY_Champion|r, use |T132226:0|tCharge (3) as well as |T135375:0|tThrust (1) while in melee range
	>>At the end of the Duel use |T134058:0|tRefresh Mount (5) to Heal to full HP
	>>Defeat a different |cRXP_ENEMY_Champion|r 4 times in a Duel
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13814,1 -- Mark of the Champion (4)
	.isOnQuest 13814
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step
	#completewith next
	.goto IcecrownGlacier,55.23,32.26,60 >>|cRXP_WARN_Remember to Equip your Weapon!|r
	.isOnQuest 13789,13810,13791,13813
step -- Taking Battle To The Enemy
	>>Kill any |cRXP_ENEMY_Cult of the Damned|r member
	>>These include |cRXP_ENEMY_Blackguards|r, |cRXP_ENEMY_Torturers|r, |cRXP_ENEMY_Alchemists|r or |cRXP_ENEMY_Apothecary|r
	.goto IcecrownGlacier,55.23,32.26,60,0
	.goto IcecrownGlacier,53.47,33.10,60,0
	.goto IcecrownGlacier,53.98,35.81,60,0
	.goto IcecrownGlacier,52.25,33.90,60,0
	.goto IcecrownGlacier,50.66,33.76,60,0
	.goto IcecrownGlacier,48.95,34.32,60,0
	.goto IcecrownGlacier,49.22,31.45,60,0
	.goto IcecrownGlacier,55.23,32.26
	.complete 13789,1 << !DK Alliance -- Cult of the Damned member slain (15)
	.complete 13810,1 << !DK Horde -- Cult of the Damned member slain (15)
	.complete 13791,1 << DK Alliance -- Cult of the Damned member slain (15)
	.complete 13813,1 << DK Horde -- Cult of the Damned member slain (15)
	.isOnQuest 13789,13810,13791,13813
	.mob Cult Blackguard
	.mob Overseer Jhaeqon
	.mob Vile Torturer
	.mob Damned Apothecary
	.mob Cult Alchemist
	.mob Overseer Savryn
step -- Threat From Above
	.goto IcecrownGlacier,47.12,33.26,65,0
	.goto IcecrownGlacier,45.72,35.25,65,0
	.goto IcecrownGlacier,43.85,33.47,65,0
	.goto IcecrownGlacier,45.42,31.95,65,0
	.goto IcecrownGlacier,47.12,33.26
    .line IcecrownGlacier,45.11,31.99,45.80,32.16,46.19,32.24,46.58,32.39,46.93,32.75,47.05,33.02,47.23,33.61,46.91,34.13,46.47,35.04,45.98,35.23,45.42,35.43,44.80,34.97,44.09,34.04,43.85,33.00,44.37,32.12,45.11,31.99
	>>Look for |cRXP_ENEMY_Chillmaw|r flying in the air
	>>Kill |cRXP_ENEMY_Chillmaw|r and |cRXP_ENEMY_Cultist Bombardiers|r. |cRXP_ENEMY_Cultist Bombardiers|r will jump off |cRXP_ENEMY_Chillmaw|r as his HP reduces to fight you also
	>>This quest is VERY difficult. Find a group for it if needed. Skip this step if you're unable to find a group or solo him.
	.complete 13682,1 << !DK Alliance -- Chillmaw slain (1)
	.complete 13682,2 << !DK Alliance -- Cultist Bombardier slain (3)
	.complete 13809,1 << !DK Horde -- Chillmaw slain (1)
	.complete 13809,2 << !DK Horde -- Cultist Bombardier slain (3)
	.complete 13788,1 << DK Alliance -- Chillmaw slain (1)
	.complete 13788,2 << DK Alliance -- Cultist Bombardier slain (3)
	.complete 13812,1 << DK Horde -- Chillmaw slain (1)
	.complete 13812,2 << DK Horde -- Cultist Bombardier slain (3)
	.isOnQuest 13682,13809,13788,13812
	.unitscan Boneguard Commander
	.mob Cultist Bombardier
step -- Battle Before The Citadel
	#completewith next
	.vehicle >>Equip the |T135128:0|t|c99ffff99Alliance Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r << Alliance
	.vehicle >>Equip the |T135128:0|t|c99ffff99Horde Lance|r in your Bags then Mount the |cRXP_FRIENDLY_Stabled Campaign Warhorse|r << Horde
	>>There is a |T135128:0|t|c99ffff99Lance Rack|r just beside the Barricade if you need another
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13861,13862,13864,13863
	.target Stabled Campaign Warhorse
step -- Battle Before The Citadel
	>>Kill |cRXP_ENEMY_Boneguard Commanders|r
	>>Gain stacks of |T132360:0|tDefend (4) and maintain it. Use |T132358:0|tShield-Breaker (2) to remove their shield then |T132226:0|tCharge (3) and |T135375:0|tThrust (1)
	>>You can use your |cRXP_FRIENDLY_Warhorse|r to run over and kill annoying |cRXP_ENEMY_Footmen|r instantly
	>>Use |T132358:0|tShield-Breaker (2) on any |cRXP_ENEMY_Boneguard Scouts (flying Gargoyles)|r that agro
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.complete 13861,1 << !DK Alliance -- Boneguard Commander slain (3)
	.complete 13862,1 << !DK Horde -- Boneguard Commander slain (3)
	.complete 13864,1 << DK Alliance -- Boneguard Commander slain (3)
	.complete 13863,1 << DK Horde -- Boneguard Commander slain (3)
	.isOnQuest 13861,13862,13864,13863
	.mob Boneguard Commander
step
	.goto IcecrownGlacier,69.96,23.44,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << !DK
	.isOnQuest 13682,13809,13861,13862,13790,13811,13789,13810
step
	.goto IcecrownGlacier,73.80,20.06,300 >> Return to the |T236690:0|tArgent Tournament Grounds in Icecrown << DK
	.isOnQuest 13788,13812,13864,13863,13793,13814,13791,13813
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eadric the Pure|r, |cRXP_FRIENDLY_Luuri|r and |cRXP_FRIENDLY_Cellian Daybreak|r
	.turnin 13682 >> Turn in Threat From Above << Alliance
	.turnin 13809 >> Turn in Threat From Above << Horde
	.turnin 13861 >> Turn in Battle Before The Citadel << Alliance
	.turnin 13862 >> Turn in Battle Before The Citadel << Horde
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13790 >> Turn in Among the Champions << Alliance
	.turnin 13811 >> Turn in Among the Champions << Horde
	.goto IcecrownGlacier,69.93,23.33
	.turnin 13789 >> Turn in Taking Battle To The Enemy << Alliance
	.turnin 13810 >> Turn in Taking Battle To The Enemy << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
	.isQuestComplete 13682 << Alliance
	.isQuestComplete 13809 << Horde
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eadric the Pure|r, |cRXP_FRIENDLY_Luuri|r and |cRXP_FRIENDLY_Cellian Daybreak|r
	.turnin 13861 >> Turn in Battle Before The Citadel << Alliance
	.turnin 13862 >> Turn in Battle Before The Citadel << Horde
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13790 >> Turn in Among the Champions << Alliance
	.turnin 13811 >> Turn in Among the Champions << Horde
	.goto IcecrownGlacier,69.93,23.33
	.turnin 13789 >> Turn in Taking Battle To The Enemy << Alliance
	.turnin 13810 >> Turn in Taking Battle To The Enemy << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crok Scourgebane|r, |cRXP_FRIENDLY_Illyrie Nightfall|r and |cRXP_FRIENDLY_Zor'be the Bloodletter|r
	.turnin 13788 >> Turn in Threat From Above << Alliance
	.turnin 13812 >> Turn in Threat From Above << Horde
	.turnin 13864 >> Turn in Battle Before The Citadel << Alliance
	.turnin 13863 >> Turn in Battle Before The Citadel << Horde
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13793 >> Turn in Among the Champions << Alliance
	.turnin 13814 >> Turn in Among the Champions << Horde
	.goto IcecrownGlacier,73.59,20.08
	.turnin 13791 >> Turn in Taking Battle To The Enemy << Alliance
	.turnin 13813 >> Turn in Taking Battle To The Enemy << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
	.isQuestComplete 13788 << Alliance
	.isQuestComplete 13812 << Horde
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crok Scourgebane|r, |cRXP_FRIENDLY_Illyrie Nightfall|r and |cRXP_FRIENDLY_Zor'be the Bloodletter|r
	.turnin 13864 >> Turn in Battle Before The Citadel << Alliance
	.turnin 13863 >> Turn in Battle Before The Citadel << Horde
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13793 >> Turn in Among the Champions << Alliance
	.turnin 13814 >> Turn in Among the Champions << Horde
	.goto IcecrownGlacier,73.59,20.08
	.turnin 13791 >> Turn in Taking Battle To The Enemy << Alliance
	.turnin 13813 >> Turn in Taking Battle To The Enemy << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step
	+|cRXP_WARN_You have finished all Champion Daily Quests for today! Reload this Guide tomorrow to continue them.|r
]])

-- The following are added in 3.2 - Implement in Phase 3

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name I_3.1_AT_Crusader_Daily_Quests
#displayname |cRXP_ENEMY_3.1|r - Crusader Daily Quests

step
	#completewith next
	+|cRXP_WARN_Phase 3 introduces the Crusader Daily Quests|r
	>>To access the Crusader Daily Quests, you must have the achievement:
	.achievement 2817 << Alliance
	.achievement 2816 << Horde
step
	>>Enter the Argent Pavilion
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Crusader Adelard|r and |cRXP_FRIENDLY_Crusader Silverdawn|r.
	.daily 14105,14101,14102,14104 >>Accept Deathspeaker Kharos
	>>|c99ffff99OR|r Drottinn Hrothgar
	>>|c99ffff99OR|r Mistcaller Yngvar
	>>|c99ffff99OR|r Ornolf The Scarred
	.daily 14108,14107 >>Accept Get Kraken!
	>>|c99ffff99OR|r The Fate Of The Fallen
	.goto Icecrown,69.51,23.15
	.target High Crusader Adelard
	.target Crusader Silverdawn
step
	.isOnQuest 14105
	>>Head to Deathspeaker's Watch
	>>Kill |cRXP_ENEMY_Deathspeaker Kharos|r
	.complete 14105,1
	.goto Icecrown,64.2,21.4
	.target Deathspeaker Kharos
step
	#completewith next
	.isOnQuest 14108
	.goto Icecrown,69.79,22.21,5 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Stabled Argent Hippogryph|r outside the Argent Pavilion.
	.skipgossip
step
	.isOnQuest 14108
	>>Throw |c99ffff99Flaming Spears|r at the |cRXP_ENEMY_North Sea Kraken|r and |cRXP_ENEMY_Kvaldir Deepcallers|r.
	.complete 14108,1
	.complete 14108,2
	.use 46954
	.mob North Sea Kraken
	.mob Kvaldir Deepcaller
step
	.isOnQuest 14101
	>>Head to the Tualiq Monuments at Hrothgar's Landing.
	>>Use the |c99ffff99Kvaldir War Horn|r
	>>Kill |cRXP_ENEMY_Drottinn Hrothgar|r
	.complete 14101,1
	.use 47006
	.goto Hrothgar's Landing,50.4,15.6
	.target Drottinn Hrothgar
step
	.isOnQuest 14102
	>>Head to the Mistcaller's Cave at Hrothgar's Landing.
	>>Use the |c99ffff99Mistcaller's Charm|r
	>>Kill |cRXP_ENEMY_Mistcaller Yngvar|r
	.complete 14102,1
	.use 47009
	.goto Hrothgar's Landing,43.8,24.6
	.target Mistcaller Yngvar
step
	.isOnQuest 14104
	>>Head to the deck of Bor's Fury at Hrothgar's Landing.
	>>Use the |c99ffff99Captured Kvaldir Banner|r
	>>Kill |cRXP_ENEMY_Ornolf The Scarred|r
	.complete 14104,1
	.use 47029
	.goto Hrothgar's Landing,58.6,31.6
step
	.isOnQuest 14107
	>>Loot |cRXP_PICK_Discarded Sould Crystals|r on the ground.
	>>Use the |c99ffff99Light-Blessed Relic|r on Fallen Hero's Spirits.
	.collect 47035,6,14107,1,-1
	.complete 14107,1
	.use 47033
	.goto Icecrown,49.19,40.42
	.target Fallen Hero's Spirit
step
	>>Return to the Argent Pavilion
	.dailyturnin 14105,14101,14102,14104 >>Turn in Deathspeaker Kharos
	>>|c99ffff99OR|r Drottinn Hrothgar
	>>|c99ffff99OR|r Mistcaller Yngvar
	>>|c99ffff99OR|r Ornolf The Scarred
	.dailyturnin 14108,14107 >>Turn in Get Kraken!
	>>|c99ffff99OR|r The Fate Of The Fallen
	.goto Icecrown,69.51,23.15
	.target High Crusader Adelard
	.target Crusader Silverdawn
step
	+|cRXP_WARN_You have finished all Silver Covenant Daily Quests for today! Reload this Guide tomorrow to continue them.|r
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name J_3.2_AT_Silver_Covenant_Daily_Quests
#displayname |cRXP_ENEMY_3.2|r - Silver Covenant Daily Quests
<< Alliance

step
	#completewith next
	+|cRXP_WARN_Phase 3 introduces the Silver Covenant Daily Quests|r
	>>To access Silver Covenant Daily Quests, you must be Exalted with the |cRXP_WARN_Silver Covenant|r and be a |cRXP_ENEMY_Champion|r which gives the achievement:
	.achievement 3676,1
step
	>>Enter the Alliance Silver Covenant Pavilion
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narasi Snowdawn|r and |cRXP_FRIENDLY_Savinia Loresong|r.
	.daily 14096 >>Accept You've Really Done It This Time, Kul
	.daily 14074,14152,14080,14077 >>Accept A Leg Up
	>>|c99ffff99OR|r Rescue at Sea
	>>|c99ffff99OR|r Stop The Aggressors
	>>|c99ffff99OR|r The Light's Mercy
	.daily 14076,14090,14112 >>Accept Breakfast of Champions
	>>|c99ffff99OR|r Gormok Wants His Snobolds
	>>|c99ffff99OR|r What Do You Feed a Yeti, Anyway?
	.goto Icecrown,76.26,19.62
	.target Narasi Snowdawn
	.target Savinia Loresong
step
	.isOnQuest 14074
	>>Head to Hrothgar's Landing
	>>Loot |cRXP_LOOT_Stolen Tallstrider Legs|r from the ground or kill |cRXP_ENEMY_Kvaldir mobs|r.
	.complete 14074,1
	.goto Hrothgar's Landing,43.4,29.8
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14152
	>>Head to the Alliance boat in Hrothgar's Landing.
	>>Kill |cRXP_ENEMY_Kvaldir Berserkers|r and |cRXP_ENEMY_Kvaldir Harpooners|r.
	.complete 14152,1
	.complete 14152,2
	.goto Hrothgar's Landing,49.97,49.45
	.mob Kvaldir Berserker
	.mob Kvaldir Harpooner
step
	.isOnQuest 14080
	>>Head to Hrothgar's Landing
	>>Kill |cRXP_ENEMY_Kvaldir Reavers|r or |cRXP_ENEMY_Kvaldir Mist Binder|r.
	.complete 14080,1
	.goto Hrothgar's Landing,48.65,32.64
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14077
	>>Head to Hrothgar's Landing
	>>Use the |c99ffff99Confessor's Prayer Book|r to perform last rites for |cRXP_FRIENDLY_Slain Tualiq Villagers|r.
	.complete 14077,1
	.use 46870
	.goto Hrothgar's Landing,51,30,10,0
	.goto Hrothgar's Landing,50.60,28.28,10,0
	.goto Hrothgar's Landing,51.84,26.61,10,0
	.goto Hrothgar's Landing,54.03,23.98,10,0
	.goto Hrothgar's Landing,55.65,25.20,10,0
	.goto Hrothgar's Landing,57.41,24.37,10,0
	.goto Hrothgar's Landing,57.10,21.39
	.target Slain Tualiq Villager
step
	.isOnQuest 14112
	#completewith next
	>>Loot |cRXP_PICK_Fresh Chum|r from the buckets on the Alliance boat.
	.collect 47036,5
	.goto Icecrown,67.11,7.89
step
	.isOnQuest 14112
	>>Jump into the water and use the |cRXP_PICK_Fresh Chum|r.
	>>Kill |cRXP_ENEMY_Sharks|r for |cRXP_LOOT_North Sea Shark Meat|r.
	.complete 14112,1
	.use 47036
step
	.isOnQuest 14096
	>>Kill |cRXP_ENEMY_Dark Zealots|r and |cRXP_ENEMY_Dark Ritualists|r for |cRXP_PICK_Black Cage Keys|r.
	>>Use the keys to free the |cRXP_FRIENDLY_Captive Aspirants|r from the cages.
	.collect 46895,5,14096,2,-1
    .complete 14096,2
	.goto Icecrown,65.17,22.19,15,0
	.goto Icecrown,64.66,21.74,15,0
	.goto Icecrown,63.04,21.32,15,0
	.goto Icecrown,61.42,20.74,15,0
	.goto Icecrown,60.25,21.08
	.mob Dark Zealot
	.mob Dark Ritualist
step
	.isOnQuest 14096
	>>Kill |cRXP_ENEMY_Dark Zealots|r and |cRXP_ENEMY_Dark Ritualists|r for |cRXP_PICK_Black Cage Keys|r.
	>>Free |cRXP_FRIENDLY_Kul the Reckless|r from his cage.
    .complete 14096,1
	.goto Icecrown,60.82,23.15
step
	.isOnQuest 14076
	>>Head to The Storm Peaks
	>>Use the |c99ffff99Earthshaker Drum|r next to the snow mounds.
	>>Kill |cRXP_ENEMY_Deep Jormungars|r that spawn for |cRXP_LOOT_Jormungar Egg Sacs|r.
	.complete 14076,1
	.use 46893
	.goto The Storm Peaks,43.33,57.74
	.target Deep Jormungar
step
	.isOnQuest 14090
	>>Head to The Storm Peaks
	>>Use the |c99ffff99Weighted Net|r to capture |cRXP_ENEMY_Snowblind Followers|r.
	.complete 14090,1
	.use 46885
	.goto The Storm Peaks,43.88,81.60
	.target Snowblind Follower
step
	>>Return to the Alliance Silver Covenant Pavilion
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narasi Snowdawn|r and |cRXP_FRIENDLY_Savinia Loresong|r.
	.dailyturnin 14096 >>Turn in You've Really Done It This Time, Kul
	.dailyturnin 14074,14152,14080,14077 >>Turn in A Leg Up
	>>|c99ffff99OR|r Rescue at Sea
	>>|c99ffff99OR|r Stop The Aggressors
	>>|c99ffff99OR|r The Light's Mercy
	.dailyturnin 14076,14090,14112 >>Turn in Breakfast of Champions
	>>|c99ffff99OR|r Gormok Wants His Snobolds
	>>|c99ffff99OR|r What Do You Feed a Yeti, Anyway?
	.goto Icecrown,76.26,19.62
	.target Narasi Snowdawn
	.target Savinia Loresong
step
	+|cRXP_WARN_You have finished all Silver Covenant Daily Quests for today! Reload this Guide tomorrow to continue them.|r
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group +Argent Tournament
#name J_3.2AT_Sunreavers_Daily_Quests
#displayname |cRXP_ENEMY_3.2|r - Sunreavers Daily Quests
<< Horde

step
	#completewith next
	+|cRXP_WARN_Phase 3 introduces the Sunreavers Daily Quests|r
	>>To access Sunreavers Daily Quests, you must be Exalted with the |cRXP_WARN_Sunreavers|r and be a |cRXP_ENEMY_Champion|r which gives the achievement:
	.achievement 3677,1
step
	>>Enter the Sunreaver Pavilion
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Girana the Blooded|r and |cRXP_FRIENDLY_Tylos Dawnrunner|r.
	.daily 14142 >>Accept You've Really Done It This Time, Kul
	.daily 14143,14136,14140,14144 >>Accept A Leg Up
	>>|c99ffff99OR|r Rescue at Sea
	>>|c99ffff99OR|r Stop The Aggressors
	>>|c99ffff99OR|r The Light's Mercy
	.daily 14092,14141,14145 >>Accept Breakfast of Champions
	>>|c99ffff99OR|r Gormok Wants His Snobolds
	>>|c99ffff99OR|r What Do You Feed a Yeti, Anyway?
	.goto Icecrown,76.09,24.08
	.target Girana the Blooded
	.target Tylos Dawnrunner
step
	.isOnQuest 14143
	>>Head to Hrothgar's Landing
	>>Loot |cRXP_LOOT_Stolen Tallstrider Legs|r from the ground or kill |cRXP_ENEMY_Kvaldir mobs|r.
	.complete 14143,1
	.goto Hrothgar's Landing,43.4,29.8
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14136
	>>Head to the Horde boat in Hrothgar's Landing.
	>>Kill |cRXP_ENEMY_Kvaldir Berserkers|r and |cRXP_ENEMY_Kvaldir Harpooners|r.
	.complete 14136,1
	.complete 14136,2
	.goto Hrothgar's Landing,44.14,54.22
	.mob Kvaldir Berserker
	.mob Kvaldir Harpooner
step
	.isOnQuest 14080
	>>Head to Hrothgar's Landing
	>>Kill |cRXP_ENEMY_Kvaldir Reavers|r or |cRXP_ENEMY_Kvaldir Mist Binder|r.
	.complete 14080,1
	.goto Hrothgar's Landing,48.65,32.64
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14144
	>>Head to Hrothgar's Landing
	>>Use the |c99ffff99Confessor's Prayer Book|r to perform last rites for |cRXP_FRIENDLY_Slain Tualiq Villagers|r.
	.complete 14144,1
	.use 46870
	.goto Hrothgar's Landing,51,30,10,0
	.goto Hrothgar's Landing,50.60,28.28,10,0
	.goto Hrothgar's Landing,51.84,26.61,10,0
	.goto Hrothgar's Landing,54.03,23.98,10,0
	.goto Hrothgar's Landing,55.65,25.20,10,0
	.goto Hrothgar's Landing,57.41,24.37,10,0
	.goto Hrothgar's Landing,57.10,21.39
	.target Slain Tualiq Villager
step
	.isOnQuest 14145
	#completewith next
	>>Loot |cRXP_PICK_Fresh Chum|r from the buckets on the Horde boat.
	.collect 47036,5
	.goto Icecrown,73.97,9.42
step
	.isOnQuest 14145
	>>Jump into the water and use the |cRXP_PICK_Fresh Chum|r.
	>>Kill |cRXP_ENEMY_Sharks|r for |cRXP_LOOT_North Sea Shark Meat|r.
	.complete 14145,1
	.use 47036
step
	.isOnQuest 14142
	>>Kill |cRXP_ENEMY_Dark Zealots|r and |cRXP_ENEMY_Dark Ritualists|r for |cRXP_PICK_Black Cage Keys|r.
	>>Use the keys to free the |cRXP_FRIENDLY_Captive Aspirants|r from the cages.
	.collect 46895,5,14142,2,-1
    .complete 14142,2
	.goto Icecrown,65.17,22.19,15,0
	.goto Icecrown,64.66,21.74,15,0
	.goto Icecrown,63.04,21.32,15,0
	.goto Icecrown,61.42,20.74,15,0
	.goto Icecrown,60.25,21.08
	.mob Dark Zealot
	.mob Dark Ritualist
step
	.isOnQuest 14142
	>>Kill |cRXP_ENEMY_Dark Zealots|r and |cRXP_ENEMY_Dark Ritualists|r for |cRXP_PICK_Black Cage Keys|r.
	>>Free |cRXP_FRIENDLY_Kul the Reckless|r from his cage.
    .complete 14142,1
	.goto Icecrown,60.82,23.15
step
	.isOnQuest 14092
	>>Head to The Storm Peaks
	>>Use the |c99ffff99Earthshaker Drum|r next to the snow mounds.
	>>Kill |cRXP_ENEMY_Deep Jormungars|r that spawn for |cRXP_LOOT_Jormungar Egg Sacs|r.
	.complete 14092,1
	.use 46893
	.goto The Storm Peaks,43.33,57.74
	.target Deep Jormungar
step
	.isOnQuest 14141
	>>Head to The Storm Peaks
	>>Use the |c99ffff99Weighted Net|r to capture |cRXP_ENEMY_Snowblind Followers|r.
	.complete 14141,1
	.use 46885
	.goto The Storm Peaks,43.88,81.60
	.target Snowblind Follower
step
	>>Return to the Sunreaver Pavilion
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Girana the Blooded|r and |cRXP_FRIENDLY_Tylos Dawnrunner|r.
	.dailyturnin 14142 >>Turn in You've Really Done It This Time, Kul
	.dailyturnin 14143,14136,14080,14144 >>Turn in A Leg Up
	>>|c99ffff99OR|r Rescue at Sea
	>>|c99ffff99OR|r Stop The Aggressors
	>>|c99ffff99OR|r The Light's Mercy
	.dailyturnin 14092,14141,14145 >>Turn in Breakfast of Champions
	>>|c99ffff99OR|r Gormok Wants His Snobolds
	>>|c99ffff99OR|r What Do You Feed a Yeti, Anyway?
	.goto Icecrown,76.09,24.08
	.target Girana the Blooded
	.target Tylos Dawnrunner
step
	+|cRXP_WARN_You have finished all Sunreaver Daily Quests for today! Reload this Guide tomorrow to continue them.|r
]])
