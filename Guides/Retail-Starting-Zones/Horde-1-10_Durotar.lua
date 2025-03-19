RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#subgroup Orc Starting Zones << Orc
#subgroup Troll Starting Zones << Troll
#subgroup Durotar Starting Zones << !Orc !Troll
#name 1Orc Starting Zone << !Troll --Orc
#name 2Orc Starting Zone << Troll
-- #name Valley of Trials << !Orc !Troll
#displayname Chapter 2 - Valley of Trials << Troll
#displayname Chapter 1 - Valley of Trials << !Troll --Orc
-- #displayname Valley of Trials (Orc) << !Orc !Troll
#next 2Troll Starting Zone << !Troll --Orc
#next RestedXP Speedrun Guide\a) BfA Intro;RestedXP Speedrun Guide\a) The Waking Shores Fresh (H) << Troll
#defaultfor Orc !DK/Troll !DK

<< Horde

step << Orc
    .zoneskip 1727
    #completewith DurotarFirstQuestCheck
    +Welcome to the |cfff78300Orc Starting Zone|r. Guide of RestedXP.
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
	#completewith DurotarFirstQuestCheck
    .goto 461,67.83,74.52,6,0
    .goto 461,67.01,74.53,6,0
    .goto 461,64.89,71.70,12 >>Hug the left wall and climb the mountain
step << Orc
    #completewith next
    +|cRXP_WARN_If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets|r.
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step
    #label DurotarFirstQuestCheck
    .goto 461,45.20,68.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r.
    .accept 25152 >>Accept Your Place In The World
    .target Kaltunk
step
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r.
    .turnin 25152 >>Turn in Your Place In The World
    .accept 25126 >>Accept Cutting Teeth
    .target Gornek
step
    .goto 461,48.08,54.03,40,0
    .goto 461,46.68,52.16
	>>Kill |cRXP_ENEMY_Mottled Boars|r.
    .complete 25126,1 --6/6 Mottled Boar slain
    .mob Mottles Boar
step
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r.
    .turnin 25126 >>Turn in Cutting Teeth
    .accept 25172 >>Accept Invaders in Our Home
    .target Gornek
step
    #loop
    .goto 461,51.95,75.86,40,0
    .goto 461,46.75,87.23,55,0
    .goto 461,36.46,78.09,45,0
	>>Kill the stealthed |cRXP_ENEMY_Northwatch Scouts|r.
    .complete 25172,1 --7/7 Northwatch Scout slain
    .mob Northwatch Scout
step
    .goto 461,46.95,72.89,40,0
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r.
    .turnin 25172 >>Turn in Invaders in Our Home
    .accept 25127 >>Accept Invaders in Our Home
    .target Gornek
step << Warlock
	#completewith ValleyOfTrialsSarkoth
	.cast 688 >> Cast |T136218:0|r.[Summon Imp] to summon your Imp
	.xp <3,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .accept 25136 >>Accept Galgar's Cactus Apple Surprise
    .goto 461,42.98,62.41
    .accept 37446 >>Accept Lazy Peons
    .goto 461,46.16,63.27
    .target Galgar
    .target Foreman Thazz'ril
step
    #completewith ValleyOfTrialsSarkoth
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for their |T132274:0|t[Scorpid Worker Tails].
    .complete 25127,1 --8/8 Scorpid Worker Tail
    .mob Scorpid Worker
step
    #completewith ValleyOfTrialsBackDen
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the sleeping |cRXP_FRIENDLY_Lazy Peons|r.
    .complete 37446,1 --4/4 Sleeping Lazy Peons awakened
    .use 16114
    .target Lazy Peon
step
    #completewith ValleyTurnins
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cactus Apples|r.
    .complete 25136,1 --6/6 Cactus Apple
step
    #optional
    #completewith next
    #label SarkothRoute
    .goto 461,46.52,58.50,10,0
    .goto 461,34.62,44.23
    >>Leave the town heading north
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r.
    .accept 25129 >>Accept Sarkoth
    .target Hana'zua
step
    #hidewindow
    #completewith SarkothRoute
    .goto 461,34.62,44.23,15 >>1
step
    #requires SarkothRoute
	#label Sarkoth
    .goto 461,34.62,44.23
    >>Leave the town heading north
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r.
    .accept 25129 >>Accept Sarkoth
    .target Hana'zua
step
    #label ValleyOfTrialsSarkoth
    .goto 461,32.7,61.9
	>>Kill |cRXP_ENEMY_Sarkoth|r. Loot him for |T134294:0|t[|cRXP_LOOT_Sarkoth's Mangled Claw|r].
    .complete 25129,1 --1/1 Sarkoth's Mangled Claw
    .mob Sarkoth
step
    #title Finish |T132274:0|t[Scorpid Worker Tails]
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for their |T132274:0|t[Scorpid Worker Tails].
    #loop
	.goto 461,37.38,65.09,40,0
	.goto 461,34.90,67.58,40,0
	.goto 461,32.93,66.72,40,0
	.goto 461,32.45,61.81,40,0
	.goto 461,32.11,57.46,40,0
	.goto 461,34.97,57.14,40,0
	.goto 461,39.82,56.48,40,0
	.goto 461,37.38,65.09,40,0
    .complete 25127,1 --8/8 Scorpid Worker Tail
    .mob Scorpid Worker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Jump down back to town|r. Talk to |cRXP_FRIENDLY_Galgar|r, |cRXP_FRIENDLY_Gornek|r, |cRXP_FRIENDLY_Zureetha|r, and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
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
    .target Galgar
    .target Gornek
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tJump down back to town. Talk to |cRXP_FRIENDLY_Galgar|r, |cRXP_FRIENDLY_Gornek|r, and |cRXP_FRIENDLY_Zureetha|r.
    .turnin 25136 >>Turn in Galgar's Cactus Apple Surprise
    .goto 461,42.95,62.42
    .turnin 25127 >>Turn in Sting of the Scorpid
    .goto 461,44.93,66.42
    .accept 25131 >>Accept Vile Familiars
    .goto 461,45.81,63.42
	.isQuestComplete 25136
    .target Galgar
    .target Gornek
    .target Zureetha Fargaze
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r, |cRXP_FRIENDLY_Zureetha|r, and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .turnin 25127 >>Turn in Sting of the Scorpid
    .goto 461,44.93,66.42
    .accept 25131 >>Accept Vile Familiars
    .goto 461,45.81,63.42
    .turnin 37446 >>Turn in Lazy Peons
    .goto 461,46.15,63.28
	.isQuestComplete 37446
    .target Gornek
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r and |cRXP_FRIENDLY_Zureetha|r.
    .turnin 25127 >>Turn in Sting of the Scorpid
    .goto 461,44.91,66.41
    .accept 25131 >>Accept Vile Familiars
    .goto 461,45.81,63.42
    .target Gornek
    .target Zureetha Fargaze
step
    #completewith next
    #label ValleyOfTrialsBackDenRoute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r.
    .goto 461,46.45,57.83,15,0
    .goto 461,34.62,44.23
    .turnin 25129 >>Turn in Sarkoth
    .accept 25130 >>Accept Back to the Den
    .target Hana'zua
step
    #hidewindow
    #completewith ValleyOfTrialsBackDenRoute
    .goto 461,34.62,44.23,20 >>1
step
    #requires ValleyOfTrialsBackDenRoute
    #label ValleyOfTrialsBackDen
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r.
    .goto 461,34.62,44.23
    .turnin 25129 >>Turn in Sarkoth
    .accept 25130 >>Accept Back to the Den
    .target Hana'zua
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the sleeping |cRXP_FRIENDLY_Lazy Peons|r.
    .goto 461,36.22,35.30,20,0
    .goto 461,37.20,29.67,20,0
    .complete 37446,1 --4/4 Sleeping Lazy Peons awakened
    .use 16114
    .target Lazy Peon
step
    #loop
    .goto 461,49.86,25.11,50,0
    .goto 461,56.34,31.92,50,0
    .goto 461,48.90,37.40,50,0
	>>Kill |cRXP_ENEMY_Vile Familiars|r.
    .complete 25131,1 --8/8 Vile Familiar slain
    .mob Vile Familiar
step
    #loop
    .goto 461,58.79,36.66,25,0
    .goto 461,61.15,56.34,30,0
    .goto 461,54.42,57.33,20,0
    .goto 461,52.01,69.59,20,0
    .goto 461,48.28,71.90,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the sleeping |cRXP_FRIENDLY_Lazy Peons|r.
    .complete 37446,1 --4/4 Sleeping Lazy Peons awakened
    .use 16114
    .target Lazy Peon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha Fargaze|r and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .turnin 25131 >>Turn in Vile Familiars
    .goto 461,45.81,63.42
    .turnin 37446 >>Turn in Lazy Peons
    .accept 25135 >>Accept Thazz'ril's Pick
    .goto 461,46.15,63.28
    .accept 25132 >>Accept Burning Blade Medallion
    .goto 461,45.81,63.42
	.isOnQuest 37446
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step
	#label ValleyTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha Fargaze|r and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .turnin 25131 >>Turn in Vile Familiars
    .accept 25132 >>Accept Burning Blade Medallion
    .goto 461,45.81,63.42
    .accept 25135 >>Accept Thazz'ril's Pick
    .goto 461,46.15,63.28
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step << Hunter
    #completewith next
    .goto 461,52.42,52.84,20,0
    .goto 461,50.50,53.00,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cactus Apples|r.
    .complete 25136,1 --6/6 Cactus Apple
step << Hunter Orc
    .goto 461,47.61,47.66
    .cast 1515 >>Target a |cRXP_ENEMY_Mottled Boar|r,cast and then channel |T132164:0|t[Tame Beast] to tame it
    .isOnQuest 25135
    .mob Mottled Boar
step
    #loop
    .goto 461,50.50,53.00,18,0 << !Hunter
    .goto 461,51.34,32.89,18,0
    .goto 461,50.28,27.29,18,0
    .goto 461,53.63,28.29,18,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cactus Apples|r.
    .complete 25136,1 --6/6 Cactus Apple
step
    #completewith Yarrog
	>>Kill |cRXP_ENEMY_Felstalkers|r within the cave.
    .complete 25132,1 --5/5 Felstalker slain
    .mob Felstalker
step
    #label ThazzrilsPickA
    #completewith next
    >>Loot [|cRXP_LOOT_Thazz'ril's Pick|r]. on the ground
    .complete 25135,1 --1/1 Thazz'ril's Pick
step
    #title Enter the cave
    #completewith ThazzrilsPickA
    .goto 1,45.37,56.22,15 >>Enter the cave
step
    #requires ThazzrilsPickA
    .goto 2,75.04,80.08,15,0
    .goto 2,40.75,52.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_LOOT_Thazz'ril's Pick|r
    .complete 25135,1 --1/1 Thazz'ril's Pick
step
	#label Yarrog
    >>Kill |cRXP_ENEMY_Yarrog Baneshadow|r. Loot him for the |T133434:0|t[|cRXP_LOOT_Burning Blade Medallion|r].
    .goto 2,39.21,88.42,15,0
    .goto 2,26.73,83.52,15,0
    .goto 2,14.96,46.80
    .complete 25132,2 --1/1 Burning Blade Medallion
    .mob Yarrog Baneshadow
step
    .goto 2,39.21,88.42,15,0
    .goto 2,75.04,80.08,15,0
    .goto 1,45.37,56.22
	>>Kill |cRXP_ENEMY_Felstalkers|r within the cave.
    .complete 25132,1 --5/5 Felstalker slain
    .mob Felstalker
step
    #completewith next
    .goto 2,14.96,46.80,-1
    .goto 461,48.47,70.89,-1
    .deathskip >>Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint or around the mouth of the cave << !Hunter !Warlock
    .deathskip >>|cfff78300Set your pet to passive|r. Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint or around the mouth of the cave << Hunter/Warlock
step
    #hidewindow
    #completewith next
    .goto 461,48.45,70.92,20 >>1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r, |cRXP_FRIENDLY_Galgar|r, |cRXP_FRIENDLY_Zureetha Fargaze|r, and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
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
    .target Galgar
    .target Gornek
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r, |cRXP_FRIENDLY_Zureetha Fargaze|r, and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .turnin 25130 >>Turn in Back to the Den
    .goto 461,44.93,66.42
    .turnin 25132 >>Turn in Burning Blade Medallion
    .accept 25133 >>Accept Report to Sen'jin Village << Orc
    .goto 461,45.82,63.42
    .turnin 25135 >>Turn in Thazz'rils Pick
    .goto 461,46.19,63.29
    .target Gornek
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step << Troll
    .goto 461,46.68,52.16
    .xp 10
step << Troll
    #completewith next
    .goto 1,45.34,56.40,10,0
    .goto 2,57.97,30.96
    .deathskip >>Go back inside the cave. Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint << !Hunter !Warlock
    .deathskip >>Go back inside the cave. |cfff78300Set your pet to passive|r. Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint << Hunter/Warlock
step << Troll
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burok|r.
    .goto 1,53.10,43.58
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Burok
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#subgroup Troll Starting Zones << Troll
#subgroup Orc Starting Zones << Orc
#subgroup Durotar Starting Zones << !Orc !Troll
#name 1Troll Starting Zone << Troll
#name 2Troll Starting Zone << !Troll --Orc
-- #name Echo Isles << !Troll !Orc
#displayname Chapter 1 - Echo Isles << Troll
#displayname Chapter 2 - Echo Isles << !Troll --Orc
-- #displayname Echo Isles (Troll) << !Troll !Orc
#next 2Orc Starting Zone << Troll
#next RestedXP Speedrun Guide\a) BfA Intro;RestedXP Speedrun Guide\a) The Waking Shores Fresh (H) << !Troll --Orc
#defaultfor Orc !DK/Troll !DK

<< Horde

step << Orc
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step << Troll
    .zoneskip 1727
    #completewith EchoIslesFirstQuestCheck
    +Welcome to the |cfff78300Troll Starting Zone|r. Guide of RestedXP.
    *Without consumables/heirlooms this route is roughly 5 minutes slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
    *With consumbales/heirlooms this route is just as fast or up to 15% faster.
step << Troll
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the Troll Starting Zone.
    +Please choose the Exiles Reach Guide.
step << Troll
    #completewith next
    +|cRXP_WARN_If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets|r.
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step << Orc
    #completewith next
    #label ReportToSenjinVillage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r.
    .turnin 25133 >>Turn in Report to Sen'jin Village
    .target Master Gadrin
step << Orc
    #completwith ReportToSenjinVillage
    .goto 461,68.14,69.72,20,0
    .goto 461,71.74,67.17,20 >>Leave the Valley of Trials
step << Orc
    #requires ReportToSenjinVillage
    .goto 1,55.95,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r.
    .turnin 25133 >>Turn in Report to Sen'jin Village
    .target Master Gadrin
step
    #requires EchoIslesFirstQuestCheckA
    #label EchoIslesFirstQuestCheckB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r.
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
    .target Jin'thala
step << Warrior
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r.
    .turnin 24607 >>Turn in The Rise of the Darkspear
    .accept 24639 >>Accept The Basics: Hitting Things
    .target Nortet
step << Mage
    .goto 463,59.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r.
    .turnin 24750 >>Turn in The Rise of the Darkspear
    .accept 24751 >>Accept The Basics: Hitting Things
    .target Soratha
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r.
    .goto 463,50.06,52.75
    .turnin 24758 >>Turn in The Rise of the Darkspear
    .accept 24759 >>Accept The Basics: Hitting Things
    .target Nekali
step << Druid
    .goto 463,58.06,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r.
    .turnin 24764 >>Turn in The Rise of the Darkspear
    .accept 24765 >>Accept The Basics: Hitting Things
    .target Zen'tabra
step << Rogue
    .goto 463,52.90,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r.
    .turnin 24770 >>Turn in The Rise of the Darkspear
    .accept 24771 >>Accept The Basics: Hitting Things
    .target Legati
step << Hunter
    .goto 463,56.4,50.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r.
    .turnin 24776 >>Turn in The Rise of the Darkspear
    .accept 24777 >>Accept The Basics: Hitting Things
    .target Ortezza
step << Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r.
    .turnin 24782 >>Turn in The Rise of the Darkspear
    .accept 24783 >>Accept The Basics: Hitting Things
    .target Tunari
step << Warlock
    .goto 463,50.04,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r.
    .turnin 26272 >>Turn in The Rise of the Darkspear
    .accept 26273 >>Accept The Basics: Hitting Things
    .target Voldreka
--X Currently has phasing issues, need to relog to make him show
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r.
    .turnin 31159 >>Turn in The Rise of the Darkspear
    .accept 31158 >>Accept The Basics: Hitting Things
    .target Zabrax
step
    #loop
    .goto 463,52.20,54.49,15,0 << Warrior
    .goto 463,51.67,53.56,15,0 << Warrior
    .goto 463,60.90,52.87,20,0 << Mage
    .goto 463,58.92,53.59,15,0 << Mage
    .goto 463,49.82,54.17,20,0 << Shaman
    .goto 463,50.35,48.82,20,0 << Warlock
    .goto 463,58.83,53.72,20,0 << Druid
    .goto 463,57.35,55.29,20,0 << Druid
    .goto 463,52.97,49.26,15,0 << Rogue
    .goto 463,52.89,50.69,15,0 << Rogue
    .goto 463,56.65,49.54,15,0 << Hunter
    .goto 463,55.92,50.76,15,0 << Hunter
    .goto 463,58.78,47.98 << Priest
    .goto 463,49.44,52.23 << Warlock/Shaman
    .goto 463,52.89,50.69,15,0 << Monk
    .goto 463,52.96,53.08,15,0 << Monk
    >>Kill the |cRXP_ENEMY_Tiki Targets|r.
    .complete 24639,1 << Warrior --6/6 Tiki Target slain
    .complete 24751,1 << Mage --6/6 Tiki Target slain
    .complete 24759,1 << Shaman --6/6 Tiki Target slain
    .complete 24765,1 << Druid --6/6 Tiki Target slain
    .complete 24771,1 << Rogue --6/6 Tiki Target slain
    .complete 24777,1 << Hunter --6/6 Tiki Target slain
    .complete 24783,1 << Priest --6/6 Tiki Target slain
    .complete 26273,1 << Warlock --6/6 Tiki Target slain
    .complete 31158,1 << Monk --6/6 Tiki Target slain
    .mob Tiki Target
step << Warrior
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r.
    .turnin 24639 >>Turn in The Basics: Hitting Things
    .accept 24641 >>Accept A Rough Start
    .target Nortet
step << Mage
    .goto 463,59.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r.
    .turnin 24751 >>Turn in The Basics: Hitting Things
    .accept 24753 >>Accept A Rough Start
    .target Soratha
step << Shaman
    .goto 463,50.06,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r.
    .turnin 24759 >>Turn in The Basics: Hitting Things
    .accept 24761 >>Accept A Rough Start
step << Druid
    .goto 463,58.06,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r.
    .turnin 24765 >>Turn in The Basics: Hitting Things
    .accept 24767 >>Accept A Rough Start
    .target Zen'tabra
step << Rogue
    .goto 463,52.90,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r.
    .turnin 24771 >>Turn in The Basics: Hitting Things
    .accept 24773 >>Accept A Rough Start
    .target Legati
step << Hunter
    .goto 463,56.4,50.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r.
    .turnin 24777 >>Turn in The Basics: Hitting Things
    .accept 24779 >>Accept A Rough Start
    .target Ortezza
step << Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r.
    .turnin 24783 >>Turn in The Basics: Hitting Things
    .accept 24785 >>Accept A Rough Start
    .target Tunari
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r.
    .goto 463,50.04,49.93
    .turnin 26273 >>Turn in The Basics: Hitting Things
    .accept 26275 >>Accept A Rough Start
    .target Voldreka
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r.
    .turnin 31158 >>Turn in The Basics: Hitting Things
    .accept 31160 >>Accept A Rough Start
    .target Zabrax
step << Warrior
    .goto 463,49.55,59.41,20,0
    .goto 463,52.07,61.40,20,0
    .goto 463,55.33,59.93
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24641,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Mage
    .goto 463,62.91,48.23,10,0
    .goto 463,62.71,56.70
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24753,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Shaman
    .goto 463,47.46,51.74,10,0
    .goto 463,48.06,46.84,10,0
    .goto 463,49.87,41.43,10,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24761,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Druid
    .goto 463,63.12,57.25,10,0
    .goto 463,62.68,50.67,10,0
    .goto 463,62.87,47.90
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24767,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Rogue
    .goto 463,48.82,43.95,10,0
    .goto 463,50.89,40.74
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24773,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Hunter
    .goto 463,55.41,41.56
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24779,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Priest
    .goto 463,55.42,41.49
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24785,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Warlock
    .goto 463,49.05,44.40,10,0
    .goto 463,50.84,41.86
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 26275,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Monk
    .goto 463,48.82,43.95,10,0
    .goto 463,50.89,40.74
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 31160,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Warrior
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r.
    .turnin 24641 >>Turn in A Rough Start
    .accept 24642 >>Accept Proving Pit
    .target Nortet
step << Mage
    .goto 463,59.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r.
    .turnin 24753 >>Turn in A Rough Start
    .accept 24754 >>Accept Proving Pit
    .target Soratha
step << Shaman
    .goto 463,50.06,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r.
    .turnin 24761 >>Turn in A Rough Start
    .accept 24762 >>Accept Proving Pit
    .target Nekali
step << Druid
    .goto 463,58.06,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r.
    .turnin 24767 >>Turn in A Rough StartMage
    .accept 24768 >>Accept Proving Pit
    .target Zen'tabra
step << Rogue
    .goto 463,52.90,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r.
    .turnin 24773 >>Turn in A Rough Start
    .accept 24774 >>Accept Proving Pit
    .target Legati
step << Hunter
    .goto 463,56.4,50.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r.
    .turnin 24779 >>Turn in A Rough Start
    .accept 24780 >>Accept Proving Pit
    .target Ortezza
step << Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r.
    .turnin 24785 >>Turn in A Rough Start
    .accept 24786 >>Accept Proving Pit
    .target Tunari
step << Warlock
    .goto 463,50.04,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r.
    .turnin 26275 >>Turn in A Rough Start
    .accept 26276 >>Accept Proving Pit
    .target Voldreka
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r.
    .turnin 31160 >>Turn in A Rough Start
    .accept 31161 >>Accept Proving Pit
    .target Zabrax
step << Warrior
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24642,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Mage
    .goto 463,57.50,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24754,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Shaman
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24762,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Druid
    .goto 463,57.49,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24768,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Rogue
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24774,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Hunter
    .goto 463,57.49,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24780,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Priest
    .goto 463,57.47,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24786,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
    .target Darkspear Jailor
step << Troll Warlock
    #completewith next
    .cast 688 >> Cast "Summon Imp" to summon your Imp
step << Warlock
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 26276,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
    .target Darkspear Jailor
step << Monk
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 31161,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
    .target Darkspear Jailor
step << Warrior
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,51.15,51.29
    .complete 24642,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Mage
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,57.28,51.84,10,0
    .goto 463,58.06,51.54
    .complete 24754,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Shaman
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,50.68,51.91
    .complete 24762,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Druid
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,57,28,51.82
    .complete 24768,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Rogue
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,51.15,51.28
    .complete 24774,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Hunter
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,57.29,51.80
    .complete 24780,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Priest
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,57.29,51.82
    .complete 24786,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Warlock
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,50.69,51.88
    .complete 26276,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Monk
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,50.69,51.88
    .complete 26276,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Warrior
    .goto 463,51.45,52.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r.
    .turnin 24642 >>Turn in Proving Pit
    .accept 24643 >>Accept More Than Expected
    .target Nortet
step << Mage
    .goto 463,58.20,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r.
    .turnin 24754 >>Turn in Proving Pit
    .accept 24755 >>Accept More Than Expected
    .target Soratha
step << Shaman
    .goto 463,50.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r.
    .turnin 24762 >>Turn in Proving Pit
    .accept 24763 >>Accept More Than Expected
    .target Nekali
step << Druid
    .goto 463,57.66,52.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r.
    .turnin 24768 >>Turn in Proving PitMage
    .accept 24769 >>Accept More Than Expected
    .target Zen'tabra
step << Rogue
    .goto 463,51.95,51.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r.
    .turnin 24774 >>Turn in Proving Pit
    .accept 24775 >>Accept More Than Expected
    .target Legati
step << Hunter
    .goto 463,57.22,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r.
    .turnin 24780 >>Turn in Proving Pit
    .accept 24781 >>Accept More Than Expected
    .target Ortezza
step << Priest
    .goto 463,57.38,50.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r.
    .turnin 24786 >>Turn in Proving Pit
    .accept 24787 >>Accept More Than Expected
    .target Tunari
step << Warlock
    .goto 463,50.69,51.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r.
    .turnin 26276 >>Turn in Proving Pit
    .accept 26277 >>Accept More Than Expected
    .target Voldreka
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r.
    .turnin 31161 >>Turn in Proving Pit
    .accept 31163 >>Accept More Than Expected
    .target Zabrax
step
    .goto 463,61.57,65.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r.
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
    .target Vol'jin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tora'jin|r and |cRXP_FRIENDLY_Moraya|r.
    .accept 25037 >>Accept Crab Fishin'
    .goto 463,60.52,62.87
    .turnin 25064 >>Turn in Moraya
    .accept 24622 >>Accept A Troll's Truest Companion
    .goto 463,56.82,63.69
    .target Tora'jin
    .target Moraya
step
    .itemcount 132516,1
    #completewith next
    .cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kijara|r. (she patrols around), then talk to |cRXP_FRIENDLY_Tegashi|r.
    .turnin 24622 >>Turn in A Troll's Truest Companion
    .accept 24623 >>Accept Saving the Young
    .goto 463,50.42,66.82,30,0
    .goto 463,45.27,85.38
    .accept 24624 >>Accept Mercy for the Lost
    .accept 24625 >>Accept Consort of the Sea Witch
    .goto 463,45.73,85.00
    .target Kijara
    .target Tegashi
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
    >>Kill |cRXP_ENEMY_Corrupted Bloodtalons|r.
    .complete 24624,1 --8/8 Corrupted Bloodtalon slain
    .mob Corrupted Bloodtalon
step
    .goto 463,36.72,69.04
    >>Kill |cRXP_ENEMY_Naj'tess|r. Loot him for the |T332402:0|t[|cRXP_LOOT_Naj'tess' Orb of Corruption|r].
    .complete 24625,1 --1/1 Naj'tess' Orb of Corruption
    .mob Naj'tess
step
	#label Bloodtalons
    #loop
	.line 463,34.04,70.60,36.60,69.56,38.51,66.20,40.18,69.15,40.05,71.23,39.37,74.83,38.41,73.07,36.67,73.48,35.14,73.49,36.60,69.56
	.goto 463,34.04,70.60,30,0
	.goto 463,36.60,69.56,30,0
	.goto 463,38.51,66.20,30,0
	.goto 463,40.18,69.15,30,0
	.goto 463,40.05,71.23,30,0
	.goto 463,39.37,74.83,30,0
	.goto 463,38.41,73.07,30,0
	.goto 463,36.67,73.48,30,0
	.goto 463,35.14,73.49,30,0
	.goto 463,36.60,69.56,30,0
    >>Kill |cRXP_ENEMY_Corrupted Bloodtalons|r.
    .complete 24624,1 --8/8 Corrupted Bloodtalon slain
    .mob Corrupted Bloodtalon
step
#loop
	.line 463,36.60,69.56,38.51,66.20,40.18,69.15,40.05,71.23,39.37,74.83,38.41,73.07,36.67,73.48,35.14,73.49,36.60,69.56
	.goto 463,36.60,69.56,30,0
	.goto 463,38.51,66.20,30,0
	.goto 463,40.18,69.15,30,0
	.goto 463,40.05,71.23,30,0
	.goto 463,39.37,74.83,30,0
	.goto 463,38.41,73.07,30,0
	.goto 463,36.67,73.48,30,0
	.goto 463,35.14,73.49,30,0
	.goto 463,36.60,69.56,30,0
    >>Use the |T132161:0|t[Bloodtalon Whistle] near Bloodtalon Hatchlings to rescue them
    .complete 24623,1 --12/12 Bloodtalon Hatchlings rescued
    .use 52283
step
	#completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r on your way back. Loot them for the |T134007:0|t[|cRXP_LOOT_Fresh Crawler Meat|r].
    .complete 25037,1 --5/5 Fresh Crawler Meat
    .mob Pygmy Surf Crawler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tegashi|r and |cRXP_FRIENDLY_Kijara|r.
    .turnin 24625 >>Turn in Consort of the Sea Witch
    .turnin 24624 >>Turn in Mercy for the Lost
    .goto 463,45.73,85.00
    .turnin 24623 >>Turn in Saving the Young
    .accept 24626 >>Accept Young and Vicious
    .goto 463,45.27,85.38
    .target Tegashi
    .target Kijara
step
    #loop
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
    >>Use the |T134326:0|t[Bloodtalon Lasso] on |cRXP_FRIENDLY_Swiftclaw|r. He spawns next to you and then runs counter-clockwise around the island.
    .complete 24626,1 --1/1 Capture Swiftclaw
	.unitscan Swiftclaw
    .use 50053
step
    .goto 463,50.42,66.82,40,0
    .goto 463,53.21,65.40
    >>Ride |cRXP_FRIENDLY_Swiftclaw|r back to the |cRXP_PICK_Raptor Pen|r.
    .complete 24626,2 --1/1 Return Swiftclaw to the Raptor Pens
step << Hunter Troll
    #completewith TrollBreakingtheLine
    .goto 463,53.03,65.42
    .cast 1515 >>|cRXP_WARN_Tame a |cRXP_ENEMY_Bloodtalon Raptor|r with your |T132164:0|t[Tame Beast] ability|r.
    .mob Bloodtalon Raptor
step
    #loop
    .goto 463,52.87,71.28,40,0
    .goto 463,58.36,70.75,30,0
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r. Loot them for their [|cRXP_LOOT_Meat|r].
    .complete 25037,1 --5/5 Fresh Crawler Meat
    .mob Pygmy Surf Crawler
step << Troll
    #label TrollBreakingtheLine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moraya|r, |cRXP_FRIENDLY_Tortunga|r, and |cRXP_FRIENDLY_Tora'jin|r.
    .turnin 24626 >>Turn in Young and Vicious
    .goto 463,56.82,63.69
    .accept 25035 >>Accept Breaking the Line
    .goto 463,58.97,66.85
    .turnin 25037 >>Turn in Crab Fishin'
    .goto 463,60.52,62.87
    .xp >10-1400,1
    .target Moraya
    .target Tortunga
    .target Tora'jin
--XX was 1600
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moraya|r, |cRXP_FRIENDLY_Tortunga|r, and |cRXP_FRIENDLY_Tora'jin|r. << Orc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moraya|r and |cRXP_FRIENDLY_Tora'jin|r. << Troll
    .turnin 24626 >>Turn in Young and Vicious
    .goto 463,56.82,63.69
    .accept 25035 >>Accept Breaking the Line << Orc
    .goto 463,58.97,66.85 << Orc
    .turnin 25037 >>Turn in Crab Fishin'
    .goto 463,60.52,62.87
    .target Moraya
    .target Tora'jin
step
    .goto 463,58.90,23.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r.
    .turnin 25035 >>Turn in Breaking the Line
    .accept 24812 >>Accept No More Mercy
    .accept 24813 >>Accept Territorial Fetish
	.isOnQuest 25035
    .xp 10,1
    .target Morakki
step
    .goto 463,58.90,23.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r.
    .accept 24812 >>Accept No More Mercy
    .accept 24813 >>Accept Territorial Fetish
	.isQuestTurnedIn 25035
    .target Morakki
step
    #sticky
    #label EchoingIslesSpitescaleNagas
    >>Kill |cRXP_ENEMY_Spitescale Nagas|r while placing the [|cRXP_LOOT_Territorial Fetishes|r].
    .goto 464,58.0,46.3,0,0
    .complete 24812,1 --12/12 Spitescale Naga
	.isQuestTurnedIn 25035
step
    >>Use the |T132482:0|t[Territorial Fetish] next to |cRXP_PICK_Spitescale Flags|r. The fetishes despawn after a while and you can place them again.
    .goto 464,61.97,71.50,10,0
    .goto 464,66.21,58.45,10,0
    .goto 464,68.96,40.94,10,0
    .goto 464,61.30,39.97,10,0
    .goto 464,56.63,44.08,10,0
    .goto 464,61.97,71.50,10,0
    .goto 464,62.32,28.54,10,0
    .goto 464,70.05,27.89,10,0
    .goto 464,77.46,16.94,10,0
    .goto 464,72.44,43.92,10,0
    .goto 464,77.81,47.26,10,0
    .goto 464,73.25,55.40,10,0
    .goto 464,76.82,63.45,10,0
    .goto 464,67.34,78.51,10,0
    .goto 464,52.47,61.80,10,0
    .goto 464,71.26,73.84,15,0
    .goto 464,69.36,30.91,15,0
    .use 52065
    .complete 24813,1 --8/8 Territorial Fetish placed
	.isQuestTurnedIn 25035
step
    #requires EchoingIslesSpitescaleNagas
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r.
    .goto 463,58.90,23.08
    .turnin 24812 >>Turn in No More Mercy
    .turnin 24813 >>Turn in Territorial Fetish
	.isQuestTurnedIn 25035
    .target Morakki
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
    .deathskip >>|cRXP_WARN_Set your pet to passive|r. Pull as many mobs as you can, then die and respawn at the Spirit Healer << Hunter/Warlock
step << Orc
    #completewith next
    .goto 1,53.10,43.58,-1
    .goto 1,55.38,63.34,-1
    .fly Orgrimmar >>Fly to Orgrimmar
]])
