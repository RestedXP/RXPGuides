RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Orc Starting Zones << Orc
#subgroup Troll Starting Zones << Troll
#subgroup Durotar Starting Zones << !Orc !Troll
#name 1Orc Starting Zone << Orc
#name 2Orc Starting Zone << Troll
#name Valley of Trials << !Orc !Troll
#displayname Chapter 2 - Valley of Trials << Troll
#displayname Chapter 1 - Orc Starting Zone << Orc
#displayname Valley of Trials (Orc) << !Orc !Troll
#next 2Troll Starting Zone << Orc
#next RestedXP Horde 10-60\1 BfA Intro << Troll
#defaultfor Orc/Troll
    
<< Horde !DK

step << Orc
    .zoneskip 1727
    #completewith DurotarFirstQuestCheck
    +Welcome to the |cfff78300Orc Starting Zone|r Guide of RestedXP.
    *Without consumables/heirlooms this route is roughly 5 minutes slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
    *With consumables/heirlooms this route is just as fast or up to 15% faster.
step << Orc
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the Orc Starting Zone.
    +Please choose the Exiles Reach Guide.
step << Troll
	#completewith ValleyofTrialsShortcut
	+Take the shortcut to the Valley of Trials
step << Troll
	#completewith next
    .goto 1,49.42,70.56,4,0
    .goto 461,68.14,75.44,6 >>Jump when you reach a wall
step << Troll
	#label ValleyofTrialsShortcut
	#completewith next
    .goto 461,67.83,74.52,6,0
    .goto 461,67.01,74.53,6,0
    .goto 461,64.89,71.70,12 >>Hug the left wall and climb the mountain
step
    #label DurotarFirstQuestCheck
    .goto 461,45.20,68.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kaltunk
    .accept 25152 >>Accept Your Place In The World
step
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gornek
    .turnin 25152 >>Turn in Your Place In The World
    .accept 25126 >>Accept Cutting Teeth
step
    .goto 461,48.08,54.03,40,0
    .goto 461,46.68,52.16
	>>Kill Mottled Boars
    .complete 25126,1 --6/6 Mottled Boar slain
step
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gornek
    .turnin 25126 >>Turn in Cutting Teeth
    .accept 25172 >>Accept Invaders in Our Home
step
    .goto 461,50.69,76.52,40,0
    .goto 461,46.45,87.24,55,0
    .goto 461,42.75,78.98
	>>Kill the stealthed Northwatch Scouts
    .complete 25172,1 --7/7 Northwatch Scout slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gornek
    .goto 461,44.93,66.42
    .turnin 25172 >>Turn in Invaders in Our Home
    .accept 25127 >>Accept Invaders in Our Home
step << Warlock
	#completewith ValleyOfTrialsSarkoth
	.cast 688 >> Cast "Summon Imp" to summon your Imp
	.xp <3,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Galgar and Foreman Thazz'ril
    .accept 25136 >>Accept Galgar's Cactus Apple Surprise
    .goto 461,42.98,62.41
    .accept 37446 >>Accept Lazy Peons
    .goto 461,46.16,63.27
step
    #completewith ValleyOfTrialsSarkoth
    >>Kill Scorpid Workers. Loot them for their Tails
    .complete 25127,1 --8/8 Scorpid Worker Tail
step
    #completewith ValleyOfTrialsBackDen
    >>Use the |T133486:0|t[Foreman's Blackjack] on sleeping Lazy Peons
	*NOTE: You can keybind the "Active Items" window in RestedXP by pressing escape, then going under Options->Keybindings->RestedXP Guides.
    .complete 37446,1 --4/4 Sleeping Lazy Peons awakened
    .use 16114
step
    #completewith ValleyTurnins
    >>Loot the Cactus Apple plants
    .complete 25136,1 --6/6 Cactus Apple
step
	#label Sarkoth
    >>Leave the town heading north
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hana'zua
    .goto 461,34.62,44.23
    .accept 25129 >>Accept Sarkoth
step
    #label ValleyOfTrialsSarkoth
	>>Kill Sarkoth. Loot him for his Claw
    .goto 461,32.7,61.9
    .complete 25129,1 --1/1 Sarkoth's Mangled Claw
step
    >>Kill Scorpid Workers. Loot them for their Tails
    .loop 40,461,37.38,65.09,34.90,67.58,32.93,66.72,32.45,61.81,32.11,57.46,34.97,57.14,39.82,56.48,37.38,65.09
    .complete 25127,1 --8/8 Scorpid Worker Tail
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tJump down back to town. Talk to Galgar, Gornek, Zureetha, and Foreman Thazz'ril
    .turnin 25136 >>Turn in Galgar's Cactus Apple Surprise
    .goto 461,42.95,62.42
    .turnin 25127 >>Turn in Sting of the Scorpid
    .goto 461,44.93,66.42
    .accept 25131 >>Accept Vile Familiars
    .goto 461,45.81,63.42
    .turnin 37446 >>Turn in Lazy Peons
    .goto 461,46.15,63.28
	.isQuestComplete 25136
	.isQuestComplete 37446
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tJump down back to town. Talk to Galgar, Gornek, and Zureetha
    .turnin 25136 >>Turn in Galgar's Cactus Apple Surprise
    .goto 461,42.95,62.42
    .turnin 25127 >>Turn in Sting of the Scorpid
    .goto 461,44.93,66.42
    .accept 25131 >>Accept Vile Familiars
    .goto 461,45.81,63.42
	.isQuestComplete 25136
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gornek, Zureetha, and Foreman Thazz'ril
    .turnin 25127 >>Turn in Sting of the Scorpid
    .goto 461,44.93,66.42
    .accept 25131 >>Accept Vile Familiars
    .goto 461,45.81,63.42
    .turnin 37446 >>Turn in Lazy Peons
    .goto 461,46.15,63.28
	.isQuestComplete 37446
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gornek and Zureetha
    .turnin 25127 >>Turn in Sting of the Scorpid
    .goto 461,44.91,66.41
    .accept 25131 >>Accept Vile Familiars
    .goto 461,45.81,63.42
step
    #label ValleyOfTrialsBackDen
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hana'zua
    .goto 461,34.62,44.23
    .turnin 25129 >>Turn in Sarkoth
    .accept 25130 >>Accept Back to the Den
step
    #completewith next
    >>Use the |T133486:0|t[Foreman's Blackjack] on sleeping Lazy Peons
    .goto 461,36.22,35.30,20,0
    .goto 461,37.20,29.67,20,0
    .complete 37446,1 --4/4 Sleeping Lazy Peons awakened
    .use 16114
step
    .goto 461,49.86,25.11,50,0
    .goto 461,56.34,31.92,50,0
    .goto 461,48.90,37.40
	>>Kill Vile Familiars
    .complete 25131,1 --8/8 Vile Familiar slain
step
    .goto 461,58.79,36.66,35,0
    .goto 461,54.42,57.33,20,0
    .goto 461,52.01,69.59,20,0
    .goto 461,48.28,71.90
    >>Use the |T133486:0|t[Foreman's Blackjack] on sleeping Lazy Peons
    .complete 37446,1 --4/4 Sleeping Lazy Peons awakened
    .use 16114
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zureetha Fargaze and Foreman Thazz'ril
    .turnin 25131 >>Turn in Vile Familiars
    .accept 25132 >>Accept Burning Blade Medallion
    .goto 461,45.81,63.42
    .turnin 37446 >>Turn in Lazy Peons
    .accept 25135 >>Accept Thazz'ril's Pick
    .goto 461,46.15,63.28
	.isOnQuest 37446
step
	#label ValleyTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zureetha Fargaze and Foreman Thazz'ril
    .turnin 25131 >>Turn in Vile Familiars
    .accept 25132 >>Accept Burning Blade Medallion
    .goto 461,45.81,63.42
    .accept 25135 >>Accept Thazz'ril's Pick
    .goto 461,46.15,63.28
step << Hunter
    #completewith next
    .goto 461,52.42,52.84,20,0
    .goto 461,50.50,53.00,20,0
    >>Loot the Cactus Apple plants
    .complete 25136,1 --6/6 Cactus Apple
step << Hunter Orc
    .goto 461,47.61,47.66
    .cast 1515 >>Target a Mottled Boar, cast and then channel 'Tame Beast' to tame it
    .isOnQuest 25135
step
    .goto 461,50.50,53.00,18,0 << !Hunter
    .goto 461,51.34,32.89,18,0
    .goto 461,50.28,27.29,18,0
    .goto 461,53.63,28.29
    >>Loot the Cactus Apple plants
    .complete 25136,1 --6/6 Cactus Apple
step
    #completewith Yarrog
	>>Kill Felstalkers within the cave
    .complete 25132,1 --5/5 Felstalker slain
step
    >>Loot Thazz'ril's Pick on the ground
    .goto 1,45.37,56.22,15,0
    .goto 2,75.04,80.08,15,0
    .goto 2,40.75,52.56
    .complete 25135,1 --1/1 Thazz'ril's Pick
step
	#label Yarrog
    >>Kill Yarrog Baneshadow. Loot him for his Medallion
    .goto 2,39.21,88.42,15,0
    .goto 2,14.96,46.80
    .complete 25132,2 --1/1 Bruning Blade Medallion
step
    .goto 2,39.21,88.42,15,0
    .goto 2,75.04,80.08,15,0
    .goto 1,45.37,56.22
	>>Kill Felstalkers within the cave
    .complete 25132,1 --5/5 Felstalker slain
step
    #completewith next
    .goto 2,14.96,46.80,-1
    .goto 461,48.47,70.89,-1
    .deathskip >>Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint or around the mouth of the cave << !Hunter !Warlock
    .deathskip >>|cfff78300Set your pet to passive.|r Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint or around the mouth of the cave << Hunter/Warlock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gornek, Galgar, Zureetha Fargaze, and Foreman Thazz'ril
    .turnin 25130 >>Turn in Back to the Den
    .goto 461,44.93,66.42
    .turnin 25136 >>Turn in Galgar's Cactus Apple Surprise
    .goto 461,42.95,62.42
    .turnin 25132 >>Turn in Burning Blade Medallion
    .accept 25133 >>Accept Report to Sen'jin Village << Orc
    .goto 461,45.82,63.42
    .turnin 25135 >>Turn in Thazz'rils Pick
    .goto 461,46.19,63.29
	.isOnQuest 25136
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gornek, Zureetha Fargaze, and Foreman Thazz'ril
    .turnin 25130 >>Turn in Back to the Den
    .goto 461,44.93,66.42
    .turnin 25132 >>Turn in Burning Blade Medallion
    .accept 25133 >>Accept Report to Sen'jin Village << Orc
    .goto 461,45.82,63.42
    .turnin 25135 >>Turn in Thazz'rils Pick
    .goto 461,46.19,63.29
step << Troll
    .goto 461,46.68,52.16
    .xp 10
step << Troll
    #completewith next
    .goto 1,45.34,56.40,10,0
    .goto 2,57.97,30.96
    .deathskip >>Go back inside the cave. Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint << !Hunter !Warlock
    .deathskip >>Go back inside the cave. |cfff78300Set your pet to passive.|r Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint << Hunter/Warlock
step << Troll
    #completewith next
    .goto 1,53.10,43.58
    .fly Orgrimmar >>Fly to Orgrimmar
step << Troll
    >>Talk to Maztha
    .goto 85,48.92,59.23
    .train 33388 >>Train Apprentice Riding
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#name 1Troll Starting Zone << Troll
#name 2Troll Starting Zone << Orc
#name Echo Isles << !Troll !Orc
#displayname Chapter 1 - Echo Isles << Troll
#displayname Chapter 2 - Echo Isles << Orc
#displayname Echo Isles (Troll) << !Troll !Orc
#next 2Orc Starting Zone << Troll
#next RestedXP Horde 10-60\1 BfA Intro << Orc
#subgroup Troll Starting Zones << Troll
#subgroup Orc Starting Zones << Orc
#subgroup Durotar Starting Zones << !Troll !Orc
#defaultfor Orc/Troll

<< Horde !DK

step << Orc
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step << Troll
    .zoneskip 1727
    #completewith EchoIslesFirstQuestCheck
    +Welcome to the |cfff78300Troll Starting Zone|r Guide of RestedXP.
    *Without consumables/heirlooms this route is roughly 5 minutes slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
    *With consumbales/heirlooms this route is just as fast or up to 15% faster.
step << Troll
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the Troll Starting Zone.
    +Please choose the Exiles Reach Guide.
step
    #label EchoIslesFirstQuestCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jin'thala
    .goto 463,42.82,53.43
    .accept 24607 >>Accept The Rise of the Darkspear << Warrior
    .accept 24750 >>Accept The Rise of the Darkspear << Mage
    .accept 24758 >>Accept The Rise of the Darkspear << Shaman
    .accept 24764 >>Accept The Rise of the Darkspear << Druid
    .accept 24770 >>Accept The Rise of the Darkspear << Rogue
    .accept 24776 >>Accept The Rise of the Darkspear << Hunter
    .accept 24782 >>Accept The Rise of the Darkspear << Priest
    .accept 26272 >>Accept The Rise of the Darkspear << Warlock
    .accept 31159 >>Accept The Rise of the Darkspear << Monk
step << Warrior
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nortet
    .turnin 24607 >>Turn in The Rise of the Darkspear
    .accept 24639 >>Accept The Basics: Hitting Things
step << Mage
    .goto 463,59.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soratha
    .turnin 24750 >>Turn in The Rise of the Darkspear
    .accept 24751 >>Accept The Basics: Hitting Things
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nekali
    .goto 463,50.06,52.75
    .turnin 24758 >>Turn in The Rise of the Darkspear
    .accept 24759 >>Accept The Basics: Hitting Things
step << Druid
    .goto 463,58.06,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zen'tabra
    .turnin 24764 >>Turn in The Rise of the Darkspear
    .accept 24765 >>Accept The Basics: Hitting Things
step << Rogue
    .goto 463,52.90,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Legati
    .turnin 24770 >>Turn in The Rise of the Darkspear
    .accept 24771 >>Accept The Basics: Hitting Things
step << Hunter
    .goto 463,56.4,50.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ortezza
    .turnin 24776 >>Turn in The Rise of the Darkspear
    .accept 24777 >>Accept The Basics: Hitting Things
step << Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tunari
    .turnin 24782 >>Turn in The Rise of the Darkspear
    .accept 24783 >>Accept The Basics: Hitting Things
step << Warlock
    .goto 463,50.04,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Voldreka
    .turnin 26272 >>Turn in The Rise of the Darkspear
    .accept 26273 >>Accept The Basics: Hitting Things
--X Currently has phasing issues, need to relog to make him show
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zabrax
    .turnin 31159 >>Turn in The Rise of the Darkspear
    .accept 31158 >>Accept The Basics: Hitting Things
step
    .goto 463,52.20,54.49,15,0 << Warrior
    .goto 463,51.67,53.56 << Warrior
    .goto 463,60.90,52.87,20,0 << Mage
    .goto 463,58.92,53.59 << Mage
    .goto 463,49.82,54.17,20,0 << Shaman
    .goto 463,50.35,48.82,20,0 << Warlock
    .goto 463,58.83,53.72,20,0 << Druid
    .goto 463,57.35,55.29 << Druid
    .goto 463,52.97,49.26,15,0 << Rogue
    .goto 463,52.89,50.69 << Rogue
    .goto 463,56.65,49.54,15,0 << Hunter
    .goto 463,55.92,50.76 << Hunter
    .goto 463,58.78,47.98 << Priest
    .goto 463,49.44,52.23 << Warlock/Shaman
    .goto 463,52.89,50.69,15,0 << Monk
    .goto 463,52.96,53.08 << Monk
    >>Kill the Tiki Targets
    .complete 24639,1 << Warrior --6/6 Tiki Target slain
    .complete 24751,1 << Mage --6/6 Tiki Target slain
    .complete 24759,1 << Shaman --6/6 Tiki Target slain
    .complete 24765,1 << Druid --6/6 Tiki Target slain
    .complete 24771,1 << Rogue --6/6 Tiki Target slain
    .complete 24777,1 << Hunter --6/6 Tiki Target slain
    .complete 24783,1 << Priest --6/6 Tiki Target slain
    .complete 26273,1 << Warlock --6/6 Tiki Target slain
    .complete 31158,1 << Monk --6/6 Tiki Target slain
step << Warrior
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nortet
    .turnin 24639 >>Turn in The Basics: Hitting Things
    .accept 24641 >>Accept A Rough Start
step << Mage
    .goto 463,59.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soratha
    .turnin 24751 >>Turn in The Basics: Hitting Things
    .accept 24753 >>Accept A Rough Start
step << Shaman
    .goto 463,50.06,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nekali
    .turnin 24759 >>Turn in The Basics: Hitting Things
    .accept 24761 >>Accept A Rough Start
step << Druid
    .goto 463,58.06,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zen'tabra
    .turnin 24765 >>Turn in The Basics: Hitting Things
    .accept 24767 >>Accept A Rough Start
step << Rogue
    .goto 463,52.90,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Legati
    .turnin 24771 >>Turn in The Basics: Hitting Things
    .accept 24773 >>Accept A Rough Start
step << Hunter
    .goto 463,56.4,50.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ortezza
    .turnin 24777 >>Turn in The Basics: Hitting Things
    .accept 24779 >>Accept A Rough Start
step << Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tunari
    .turnin 24783 >>Turn in The Basics: Hitting Things
    .accept 24785 >>Accept A Rough Start
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Voldreka
    .goto 463,50.04,49.93
    .turnin 26273 >>Turn in The Basics: Hitting Things
    .accept 26275 >>Accept A Rough Start
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zabrax
    .turnin 31158 >>Turn in The Basics: Hitting Things
    .accept 31160 >>Accept A Rough Start
step << Warrior
    .goto 463,49.55,59.41,20,0
    .goto 463,52.07,61.40,20,0
    .goto 463,55.33,59.93
    >>Kill Wildmane Cats. Loot them for their Pelts
    .complete 24641,1 --6/6 Wildmane Cat Pelt
step << Mage
    .goto 463,62.91,48.23,10,0
    .goto 463,62.71,56.70
    >>Kill Wildmane Cats. Loot them for their Pelts
    .complete 24753,1 --6/6 Wildmane Cat Pelt
step << Shaman
    .goto 463,47.46,51.74,10,0
    .goto 463,48.06,46.84,10,0
    .goto 463,49.87,41.43,10,0
    >>Kill Wildmane Cats. Loot them for their Pelts
    .complete 24761,1 --6/6 Wildmane Cat Pelt
step << Druid
    .goto 463,63.12,57.25,10,0
    .goto 463,62.68,50.67,10,0
    .goto 463,62.87,47.90
    >>Kill Wildmane Cats. Loot them for their Pelts
    .complete 24767,1 --6/6 Wildmane Cat Pelt
step << Rogue
    .goto 463,48.82,43.95,10,0
    .goto 463,50.89,40.74
    >>Kill Wildmane Cats. Loot them for their Pelts
    .complete 24773,1 --6/6 Wildmane Cat Pelt
step << Hunter
    .goto 463,55.41,41.56
    >>Kill Wildmane Cats. Loot them for their Pelts
    .complete 24779,1 --6/6 Wildmane Cat Pelt
step << Priest
    .goto 463,55.42,41.49
    >>Kill Wildmane Cats. Loot them for their Pelts
    .complete 24785,1 --6/6 Wildmane Cat Pelt
step << Warlock
    .goto 463,49.05,44.40,10,0
    .goto 463,50.84,41.86
    >>Kill Wildmane Cats. Loot them for their Pelts
    .complete 26275,1 --6/6 Wildmane Cat Pelt
step << Monk
    .goto 463,48.82,43.95,10,0
    .goto 463,50.89,40.74
    >>Kill Wildmane Cats. Loot them for their Pelts
    .complete 31160,1 --6/6 Wildmane Cat Pelt
step << Warrior
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nortet
    .turnin 24641 >>Turn in A Rough Start
    .accept 24642 >>Accept Proving Pit
step << Mage
    .goto 463,59.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soratha
    .turnin 24753 >>Turn in A Rough Start
    .accept 24754 >>Accept Proving Pit
step << Shaman
    .goto 463,50.06,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nekali
    .turnin 24761 >>Turn in A Rough Start
    .accept 24762 >>Accept Proving Pit
step << Druid
    .goto 463,58.06,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zen'tabra
    .turnin 24767 >>Turn in A Rough StartMage
    .accept 24768 >>Accept Proving Pit
step << Rogue
    .goto 463,52.90,49.92
    >>Talk to Legati
    .turnin 24773 >>Turn in A Rough Start
    .accept 24774 >>Accept Proving Pit
step << Hunter
    .goto 463,56.4,50.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ortezza
    .turnin 24779 >>Turn in A Rough Start
    .accept 24780 >>Accept Proving Pit
step << Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tunari
    .turnin 24785 >>Turn in A Rough Start
    .accept 24786 >>Accept Proving Pit
step << Warlock
    .goto 463,50.04,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Voldreka
    .turnin 26275 >>Turn in A Rough Start
    .accept 26276 >>Accept Proving Pit
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zabrax
    .turnin 31160 >>Turn in A Rough Start
    .accept 31161 >>Accept Proving Pit
step << Troll Warlock
    #completewith next
    .cast 688 >> Cast "Summon Imp" to summon your Imp
step << Warrior
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Darkspear Jailor
    .complete 24642,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
step << Mage
    .goto 463,57.50,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Darkspear Jailor
    .complete 24754,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
step << Shaman
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Darkspear Jailor
    .complete 24762,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
step << Druid
    .goto 463,57.49,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Darkspear Jailor
    .complete 24768,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
step << Rogue
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Darkspear Jailor
    .complete 24774,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
step << Hunter
    .goto 463,57.49,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Darkspear Jailor
    .complete 24780,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
step << Priest
    .goto 463,57.47,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Darkspear Jailor
    .complete 24786,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
step << Warlock
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Darkspear Jailor
    .complete 26276,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
step << Monk
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Darkspear Jailor
    .complete 31161,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
    step << Warrior
    >>Kill the Captive Spitescale Scout
    .goto 463,51.15,51.29
    .complete 24642,2 --1/1 Captive Spitescale Scout slain
step << Mage
    >>Kill the Captive Spitescale Scout
    .goto 463,57.28,51.84,10,0
    .goto 463,58.06,51.54
    .complete 24754,2 --1/1 Captive Spitescale Scout slain
step << Shaman
    >>Kill the Captive Spitescale Scout
    .goto 463,50.68,51.91
    .complete 24762,2 --1/1 Captive Spitescale Scout slain
step << Druid
    >>Kill the Captive Spitescale Scout
    .goto 463,57,28,51.82
    .complete 24768,2 --1/1 Captive Spitescale Scout slain
step << Rogue
    >>Kill the Captive Spitescale Scout
    .goto 463,51.15,51.28
    .complete 24774,2 --1/1 Captive Spitescale Scout slain
step << Hunter
    >>Kill the Captive Spitescale Scout
    .goto 463,57.29,51.80
    .complete 24780,2 --1/1 Captive Spitescale Scout slain
step << Priest
    >>Kill the Captive Spitescale Scout
    .goto 463,57.29,51.82
    .complete 24786,2 --1/1 Captive Spitescale Scout slain
step << Warlock
    >>Kill the Captive Spitescale Scout
    .goto 463,50.69,51.88
    .complete 26276,2 --1/1 Captive Spitescale Scout slain
step << Warrior
    .goto 463,51.45,52.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nortet
    .turnin 24642 >>Turn in Proving Pit
    .accept 24643 >>Accept More Than Expected
step << Mage
    .goto 463,58.20,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soratha
    .turnin 24754 >>Turn in Proving Pit
    .accept 24755 >>Accept More Than Expected
step << Shaman
    .goto 463,50.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nekali
    .turnin 24762 >>Turn in Proving Pit
    .accept 24763 >>Accept More Than Expected
step << Druid
    .goto 463,57.66,52.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zen'tabra
    .turnin 24768 >>Turn in Proving PitMage
    .accept 24769 >>Accept More Than Expected
step << Rogue
    .goto 463,51.95,51.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Legati
    .turnin 24774 >>Turn in Proving Pit
    .accept 24775 >>Accept More Than Expected
step << Hunter
    .goto 463,57.22,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ortezza
    .turnin 24780 >>Turn in Proving Pit
    .accept 24781 >>Accept More Than Expected
step << Priest
    .goto 463,57.38,50.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tunari
    .turnin 24786 >>Turn in Proving Pit
    .accept 24787 >>Accept More Than Expected
step << Warlock
    .goto 463,50.69,51.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Voldreka
    .turnin 26276 >>Turn in Proving Pit
    .accept 26277 >>Accept More Than Expected
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zabrax
    .turnin 31161 >>Turn in Proving Pit
    .accept 31163 >>Accept More Than Expected
step
    .goto 463,61.57,65.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Vol'jin
    .turnin 24643 >>Turn in More Than Expected << Warrior
    .turnin 24755 >>Turn in More Than Expected << Mage
    .turnin 24763 >>Turn in More Than Expected << Shaman
    .turnin 24769 >>Turn in More Than Expected << Druid
    .turnin 24775 >>Turn in More Than Expected << Rogue
    .turnin 24781 >>Turn in More Than Expected << Hunter
    .turnin 24787 >>Turn in More Than Expected << Priest
    .turnin 26277 >>Turn in More Than Expected << Warlock
    .turnin 31163 >>Turn in More Than Expected << Monk
    .accept 25064 >>Accept Moraya
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tora'jin and Moraya
    .accept 25037 >>Accept Crab Fishin'
    .goto 463,60.52,62.87
    .turnin 25064 >>Turn in Moraya
    .accept 24622 >>Accept A Troll's Truest Companion
    .goto 463,56.82,63.69
step
    .itemcount 132516,1
    #completwith next
    .cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kijara (she patrols around), then talk to Tegashi
    .turnin 24622 >>Turn in A Troll's Truest Companion
    .accept 24623 >>Accept Saving the Young
    .goto 463,50.42,66.82,30,0
    .goto 463,45.27,85.38
    .accept 24624 >>Accept Mercy for the Lost
    .accept 24625 >>Accept Consort of the Sea Witch
    .goto 463,45.73,85.00
step
    #completewith Bloodtalons
    #label EchoIslesBloodtalonsRescued
    .goto 463,38.01,67.58,25,0
    >>Use the |T132161:0|t[Bloodtalon Whistle] near Bloodtalon Hatchlings to rescue them
    .complete 24623,1 --12/12 Bloodtalon Hatchlings rescued
    .use 52283
step
	#completewith next
    .goto 463,38.82,72.57,0
    >>Kill Corrupted Bloodtalons
    .complete 24624,1 --8/8 Corrupted Bloodtalon slain
step
    .goto 463,36.72,69.04
    >>Kill Naj'tess. Loot him for his Orb
    .complete 24625,1 --1/1 Naj'tess' Orb of Corruption
step
	#label Bloodtalons
    .loop 30,463,34.04,70.60,36.60,69.56,38.51,66.20,40.18,69.15,40.05,71.23,39.37,74.83,38.41,73.07,36.67,73.48,35.14,73.49,36.60,69.56
    >>Kill Corrupted Bloodtalons
    .complete 24624,1 --8/8 Corrupted Bloodtalon slain
step
    .loop 30,463,36.60,69.56,38.51,66.20,40.18,69.15,40.05,71.23,39.37,74.83,38.41,73.07,36.67,73.48,35.14,73.49,36.60,69.56
    >>Use the |T132161:0|t[Bloodtalon Whistle] near Bloodtalon Hatchlings to rescue them
    .complete 24623,1 --12/12 Bloodtalon Hatchlings rescued
    .use 52283
step
	#completewith next
    >>Kill Pygmy Surf Crawlers. Loot them for their Meat
    .complete 25037,1 --5/5 Fresh Crawler Meat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tegashi and Kijara
    .turnin 24625 >>Turn in Consort of the Sea Witch
    .turnin 24624 >>Turn in Mercy for the Lost
    .goto 463,45.73,85.00
    .turnin 24623 >>Turn in Saving the Young
    .accept 24626 >>Accept Young and Vicious
    .goto 463,45.27,85.38
step
	.line 463,45.93,86.53,46.15,88.00,43.81,88.49,43.46,91.82,44.25,91.93,45.27,89.85,45.95,89.71,46.91,93.18,47.68,92.85,47.84,88.58,48.45,90.12,47.51,88.96,47.42,86.91,46.21,85.10,46.03,83.83,44.17,82.86,42.43,83.12,41.15,85.98,40.87,88.56,42.30,88.10,43.60,85.27,44.56,85.10,45.93,86.53
    .goto 463,45.93,86.53,30,0
    .goto 463,44.56,85.10,30,0
    .goto 463,43.60,85.27,30,0
    .goto 463,42.30,88.10,30,0
    .goto 463,40.87,88.56,30,0
    .goto 463,41.15,85.98,30,0
    .goto 463,42.43,83.12,30,0
    .goto 463,44.17,82.86,30,0
    .goto 463,46.03,83.83,30,0
    .goto 463,46.21,85.10,30,0
    .goto 463,47.42,86.91,30,0
    .goto 463,47.51,88.96,30,0
    .goto 463,48.45,90.12,30,0
    .goto 463,47.84,88.58,30,0
    .goto 463,47.68,92.85,30,0
    .goto 463,46.91,93.18,30,0
    .goto 463,45.95,89.71,30,0
    .goto 463,45.27,89.85,30,0
    .goto 463,44.25,91.93,30,0
    .goto 463,43.46,91.82,30,0
    .goto 463,43.81,88.49,30,0
    .goto 463,46.15,88.00,30,0
    .goto 463,45.93,86.53
    >>Use the |T134326:0|t[Bloodtalon Lasso] on Swiftclaw. He spawns next to you and then runs counter-clockwise around the island
    .complete 24626,1 --1/1 Capture Swiftclaw
	.unitscan Swiftclaw
    .use 50053
step
    .goto 463,50.42,66.82,40,0
    .goto 463,53.21,65.40
    >>Ride Swiftclaw back to the Raptor Pen
    .complete 24626,2 --1/1 Return Swiftclaw to the Raptor Pens
step << Hunter Troll
    .goto 463,53.03,65.42
    .tame 37956 >>Tame a Bloodtalon Raptor with your 'Tame Beast' ability
step
    .goto 463,52.87,71.28,40,0
    .goto 463,58.36,70.75
    >>Kill Pygmy Surf Crawlers. Loot them for their Meat
    .complete 25037,1 --5/5 Fresh Crawler Meat
step << Troll
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Moraya, Tortunga, and Tora'jin
    .turnin 24626 >>Turn in Young and Vicious
    .goto 463,56.82,63.69
    .accept 25035 >>Accept Breaking the Line
    .goto 463,58.97,66.85
    .turnin 25037 >>Turn in Crab Fishin'
    .goto 463,60.52,62.87
    .xp >10-1400,1
--XX was 1600
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Moraya and Tora'jin
    .turnin 24626 >>Turn in Young and Vicious
    .goto 463,56.82,63.69
    .accept 25035 >>Accept Breaking the Line << Orc
    .goto 463,58.97,66.85 << Orc
    .turnin 25037 >>Turn in Crab Fishin'
    .goto 463,60.52,62.87
step
    .goto 463,58.90,23.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Morakki
    .turnin 25035 >>Turn in Breaking the Line
    .accept 24812 >>Accept No More Mercy
    .accept 24813 >>Accept Territorial Fetish
	.isOnQuest 25035
    .xp 10,1
step
    .goto 463,58.90,23.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Morakki
    .accept 24812 >>Accept No More Mercy
    .accept 24813 >>Accept Territorial Fetish
	.isQuestTurnedIn 25035
step
    #sticky
    #label EchoingIslesSpitescaleNagas
    >>Kill Spitescale Nagas while placing the fetishes
    >>|cfff78300Don't jump down|r
    .goto 464,58.0,46.3,0,0
    .complete 24812,1 --12/12 Spitescale Naga
	.isQuestTurnedIn 25035
step
    >>Use the |T132482:0|t[Territorial Fetish] next to Spitescale Flags. The fetishes despawn after a while and you place them again
    .goto 464,61.97,71.50,6,0
    .goto 464,66.21,58.45,6,0
    .goto 464,68.96,40.94,6,0
    .goto 464,61.30,39.97,6,0
    .goto 464,56.63,44.08,6,0
    .goto 464,61.97,71.50,6,0
    .use 52065
    .complete 24813,1 --8/8 Territorial Fetish placed
	.isQuestTurnedIn 25035
step
    #requires EchoingIslesSpitescaleNagas
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Morakki
    .goto 463,58.90,23.08
    .turnin 24812 >>Turn in No More Mercy
    .turnin 24813 >>Turn in Territorial Fetish
	.isQuestTurnedIn 25035
step << Orc
    .nodmf
    #completewith next
    .hs >>Hearth to Valley of Trials
step << Orc
    .nodmf
    #completewith next
    .goto 1,45.37,56.22,20,0
    .goto 2,61.50,65.13,20,0
    .goto 2,57.97,30.96,-1
    .goto 1,53.50,44.43,-1
    >>Run to the end of the cave
    .deathskip >>Pull as many mobs as you can, then die and respawn at the Spirit Healer << !Hunter !Warlock
    .deathskip >>Set your pet to passive. Pull as many mobs as you can, then die and respawn at the Spirit Healer << Hunter/Warlock
step << Orc
    #completewith next
    .goto 1,53.10,43.58,-1
    .goto 1,55.38,63.34,-1
    .fly Orgrimmar >>Fly to Orgrimmar
step << Orc
    .nodmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
    .goto 85,48.92,59.23
    .train 33388 >>Train Apprentice Riding
]])
