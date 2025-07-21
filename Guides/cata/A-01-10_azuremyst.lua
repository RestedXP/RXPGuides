local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
--TODO: skip the furbolg quests if xp rate is greater than 1x
RXPGuides.RegisterGuide([[
<< Alliance
#name 1-10 Azuremyst Isle
#version 1
#group RXP Cataclysm 1-80 (A) << cata
#group RXP MoP 1-60 (A) << mop
#cata
#mop
#defaultfor Draenei
#next 10-18 Darkshore
step
    .goto Azuremyst Isle,84.19,43.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >> Accept You Survived!
    .target Megelon
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >> Turn in You Survived!
    .accept 9280 >> Accept Replenishing the Healing Crystals
    .target Proenitus
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    >>Kill |cRXP_ENEMY_Vale Moths|r. Loot them for their |cRXP_LOOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >> Turn in Replenishing the Healing Crystals
    .accept 9409 >> Accept Urgent Delivery!
    .target Proenitus
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .accept 10302 >> Accept Volatile Mutations
    .target Botanist Taerix
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>Kill |cRXP_ENEMY_Volatile Mutations|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob Volatile Mutation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r and |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 10302 >> Turn in Volatile Mutations
    .accept 9293 >> Accept What Must Be Done...
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >> Accept Botanical Legwork
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>Kill |cRXP_ENEMY_Mutated Root Lashers|r. Loot them for their |cRXP_LOOT_Lasher Samples|r
    >>Loot the |cRXP_LOOT_Corrupted Flowers|r on the ground
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob Mutated Root Lasher
step << cata Priest/Shaman
    .goto Azuremyst Isle,79.1,46.5
	.xp 4-470 >>Grind until you are 470xp away from level 4 (930/1400)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r and |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 9293 >> Turn in What Must Be Done...
    .accept 9294 >> Accept Healing the Lake
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >> Turn in Botanical Legwork
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vendor trash
    .target Aurok
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .turnin 9409 >> Turn in Urgent Delivery!
    .accept 9283 >> Accept Rescue the Survivors!
    .accept 26970 >> Accept Aiding the Injured << cata Priest
    .accept 26970 >> Accept Learning the Word << !cata Priest
    .train 2061 >> Train |T135907:0|t[Flash Heal] << cata Priest
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain] << cata Priest
    .target Zalduun
step << Priest cata
    .goto Azuremyst Isle,80.32,48.30,10,0
    .goto Azuremyst Isle,80.12,49.23
    >>|cRXP_WARN_Cast|r |T135907:0|t[Flash Heal] |cRXP_WARN_5 times on an |cRXP_FRIENDLY_Injured Draenei|r beside you|r
    .complete 26970,1 -- Heal Injured Draenei
    .target Injured Draenei
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .turnin 26970 >> Turn in Aiding the Injured
    .target Zalduun
step << Mage cata
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valaatu|r
    .accept 26968 >> Accept Arcane Missiles
	.train 5143 >> Train |T136096:0|t[Arcane Missiles]
    .target Valaatu
step << Paladin cata
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_may patrol slightly|r
    .accept 26966 >> Accept The Light's Power
    .train 20154 >> Train |T135960:0|t[Seal of Righteousness]
	.train 20271 >> Train |T135959:0|t[Judgement]
    .target Aurelon
step << Warrior cata
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .accept 26958 >> Accept Your First Lesson
	.train 100 >> Train |T132337:0|t[Charge]
    .target Kore
step << Shaman cata
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .accept 26969 >> Accept Primal Strike
    .train 8075 >> Train |T136023:0|t[Strength of Earth Totem]
    .train 73899 >> Train |T460956:0|t[Primal Strike]
    .target Firmanvaar
step << Hunter cata
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keilnei|r
	.accept 26963 >> Accept Steadying Your Shot
    .train 56641 >> Train |T132213:0|t[Steady Shot]
    .target Keilnei
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .accept 9305 >> Accept Spare Parts
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .accept 9303 >> Accept Inoculation
    .target Vindicator Aldar
step
    #completewith Owlkininoculated
    >>|cRXP_WARN_Cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a|r |cRXP_FRIENDLY_Draenei Survivor|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>Click the |cRXP_PICK_Irradiated Power Crystal|r in the lake
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_Channel the|r |T132775:0|t[Inoculating Crystal] |cRXP_WARN_on |cRXP_ENEMY_Nestlewood Owlkins|r for 4 seconds|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>Loot the |cRXP_LOOT_Emitter Spare Parts|r on the ground
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>|cRXP_WARN_Channel the|r |T132775:0|t[Inoculating Crystal] |cRXP_WARN_on |cRXP_ENEMY_Nestlewood Owlkins|r for 4 seconds|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
	#completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9294 >> Turn in Healing the Lake
    .target Botanist Taerix
step << Mage
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Cast|r |T135812:0|t[Fireball] |cRXP_WARN_on the |cRXP_ENEMY_Training Dummy|r until you get a|r |T135731:0|t[Arcane Missles!] |cRXP_WARN_proc, then cast|r |T136096:0|t[Arcane Missiles]|cRXP_WARN_. Repeat this twice|r
    .complete 26968,1 << cata -- Practice Arcane Missles (1)
    .complete 26968,2 << !cata -- Practice Arcane Missles (1)
    .mob Training Dummy
step << Shaman
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Cast|r |T460956:0|t[Primal Strike] |cRXP_WARN_on the |cRXP_ENEMY_Training Dummy|r 3 times|r
    .complete 26969,1 << cata -- Practice Primal Strike (1)
    .complete 26969,2 << !cata -- Practice Primal Strike (1)
    .mob Training Dummy
step << Hunter
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Cast|r |T132213:0|t[Steady Shot] |cRXP_WARN_on the |cRXP_ENEMY_Training Dummy|r 5 times|r
    .complete 26963,1 << cata -- Practice Steady Shot (1)
    .complete 26963,2 << !cata -- Practice Steady Shot (1)
    .mob Training Dummy
step << Warrior
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Cast|r |T132337:0|t[Charge] |cRXP_WARN_on the|r |cRXP_ENEMY_Training Dummy|r
    .complete 26958,1 << cata -- Practice Charge (1)
    .complete 26958,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Paladin
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Cast|r |T135960:0|t[Seal of Righteousness] |cRXP_WARN_followed by|r |T135959:0|t[Judgement] |cRXP_WARN_on the|r |cRXP_ENEMY_Training Dummy|r
    .complete 26966,1 << cata -- Practice Charge (1)
    .complete 26966,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Priest !cata
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Cast|r |T136207:0|t[Shadow Word: Pain] |cRXP_WARN_on a |cRXP_ENEMY_Training Dummy|r 5 times|r
    .complete 26970,2 -- Shadow Word: Pain (5)
    .mob Training Dummy
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vendor trash
    .target Aurok
step
    .isQuestComplete 9283
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .turnin 9283 >> Turn in Rescue the Survivors!
    .target Zalduun
step << !cata Priest
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .turnin 26970 >> Turn in Learning the Word
    .target Zalduun
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valaatu|r
    .turnin 26968 >> Turn in Arcane Missiles
    .target Valaatu
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 26969 >> Turn in Primal Strike
    .target Firmanvaar
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keilnei|r
	.turnin 26963 >> Turn in Steadying Your Shot
    .target Keilnei
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .turnin 26958 >> Turn in Your First Lesson
    .target Kore
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_may patrol slightly|r
    .turnin 26966 >> Turn in The Light's Power
    .target Aurelon
step
    #label SpareParts
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9305 >> Turn in Spare Parts
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9303 >> Turn in Inoculation
    .accept 9309 >> Accept The Missing Scout
    .target Vindicator Aldar
step
    #completewith SurveyorCandress
    >>|cRXP_WARN_Cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a|r |cRXP_FRIENDLY_Draenei Survivor|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r
    .turnin 9309 >> Turn in The Missing Scout
    .accept 10303 >> Accept The Blood Elves
    .target Tolaan
step
    .goto Azuremyst Isle,69.420,64.608
    >>Kill |cRXP_ENEMY_Blood Elf Scouts|r
    .complete 10303,1 --Kill Blood Elf Scout (x10)
    .mob Blood Elf Scout
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r
    .turnin 10303 >> Turn in The Blood Elves
    .accept 9311 >> Accept Blood Elf Spy
    .target Tolaan
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>Kill |cRXP_ENEMY_Surveyor Candress|r. Loot her for the |T132319:0|t[|cRXP_LOOT_Blood Elf Plans|r]
    .use 24414 >>|cRXP_WARN_Use the|r |T132319:0|t[|cRXP_LOOT_Blood Elf Plans|r] |cRXP_WARN_to start the quest|r
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >> Accept Blood Elf Plans
    .mob Surveyor Candress
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>|cRXP_WARN_Cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a|r |cRXP_FRIENDLY_Draenei Survivor|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
	#completewith BloodElfSpy
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .turnin 9283 >> Turn in Rescue the Survivors!
    .target Zalduun
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9311 >> Turn in Blood Elf Spy
    .turnin 9798 >> Turn in Blood Elf Plans
    .accept 9312 >> Accept The Emitter
    .target Vindicator Aldar
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9312 >> Turn in The Emitter
    .accept 9313 >> Accept Travel to Azure Watch
    .target Technician Zhanaa
step << Mage cata
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valaatu|r
	.train 2136 >> Train |T135807:0|t[Fire Blast]
    .target Valaatu
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .train 17 >> Train |T135940:0|t[Power Word: Shield]
    .target Zalduun
step << Paladin cata
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_may patrol slightly|r
	.train 465 >> Train |T135893:0|t[Devotion Aura]
    .target Aurelon
step << Warrior cata
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
	.train 34428 >> Train |T132342:0|t[Victory Rush]
    .target Kore
step << Shaman cata
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
	.train 8042 >> |T136026:0|t[Earth Shock]
    .target Firmanvaar
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeun|r
    .accept 9314 >> Accept Word from Azure Watch
    .target Aeun
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diktynna|r
    .accept 9452 >> Accept Red Snapper - Very Tasty!
    .target Diktynna
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >> |cRXP_WARN_Swim north up the river|r
    .use 23654 >>|cRXP_WARN_Use the|r |T134325:0|t[Draenei Fishing Net] |cRXP_WARN_on|r |cRXP_PICK_Schools of Red Snapper|r |cRXP_WARN_you see along the way. Skip this step once you get to the top of the river, you'll complete it later|r
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_Keep an eye out for a|r |cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_While they are in combat, cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >> Accept A Hearty Thanks!
	.unitscan Draenei Youngling
step
    .goto Azuremyst Isle,53.9,34.4
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r. Loot them for a |T134072:0|t[|cRXP_LOOT_Faintly Glowing Crystal|r]
    .use 23678 >>|cRXP_WARN_Use the|r |T134072:0|t[|cRXP_LOOT_Faintly Glowing Crystal|r] |cRXP_WARN_to start the quest|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >> Accept Strange Findings
    .mob Infected Nightstalker Runt
step
	#completewith NightstalkerCleanUp
    .goto Azuremyst Isle,56.1,39.3
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    >>|cRXP_WARN_Ensure to die near the pond close to the mountain side|r
step
    #completewith NightstalkerCleanUp
    .subzone 3576 >> Travel to Azure Watch
--not sure what the deal with weapons are
step << Shaman
    .goto Azuremyst Isle,49.577,53.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    +Equip the |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step
    .goto Azuremyst Isle,48.960,51.063
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dulvi|r
    .train 2575 >>Train |T134708:0|t[Mining]
    .target Dulvi
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r
    .accept 9463 >> Accept Medicinal Purpose
    .target Anchorite Fateema
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
	.turnin 9612 >> Turn in A Hearty Thanks!
    .turnin 9455 >> Turn in Strange Findings
    .accept 9456 >> Accept Nightstalker Clean Up, Isle 2...
    .target Exarch Menelaous
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9455 >> Turn in Strange Findings
    .accept 9456 >> Accept Nightstalker Clean Up, Isle 2...
    .target Exarch Menelaous
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .train 331 >> Train |T136052:0|t[Healing Wave]
    .target Tuluun
    .xp <7,1
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Dyvuun|r
    .turnin 9313 >> Turn in Travel to Azure Watch
    .target Technician Dyvuun
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r
    .turnin 9314 >> Turn in Word from Azure Watch
    .accept 9603 >>Accept Beds, Bandages, and Beyond
    .target Caregiver Chellan
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r
    .home >> Set your Hearthstone to Azure Watch
    .target Caregiver Chellan
step
    .goto Azuremyst Isle,49.67,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldaan|r
    .turnin 9603 >>Turn in Beds, Bandages, and Beyond
    .target Zaldaan
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tullas|r
    .train 635 >> Train |T135920:0|t[Holy Light]
    .target Tullas
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Accept Help Tavara
    .train 588 >> Train |T135926:0|t[Inner Fire]
    .target Guvan
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Accept Help Tavara
    .target Guvan
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Train |T132155:0|t[Rend]
    .target Ruada
    .xp <7,1
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .train 2973 >> Train |T132223:0|t[Raptor Strike]
    .target Acteon
step
	#completewith level8
    >>|cRXP_WARN_Keep an eye out for a|r |cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_While they are in combat, cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >> Accept A Hearty Thanks!
	.unitscan Draenei Youngling
step
    #completewith LeavesTree
    >>Kill |cRXP_ENEMY_Root Trappers|r. Loot them for their |cRXP_LOOT_Vines|r
    >>Kill |cRXP_ENEMY_Moongraze Stags|r. Loot them for their |cRXP_LOOT_Tenderloins|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    >>|cRXP_WARN_Cast|r |T135907:0|t[Flash Heal] |cRXP_WARN_on|r |cRXP_FRIENDLY_Tavara|r
    .complete 9586,1 --Heal Tavara
    .target Tavara
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .accept 9506 >> Accept A Small Start
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .accept 9512 >> Accept Cookie's Jumbo Gumbo
    .target "Cookie" McWeaksauce
step << Warrior/Rogue/Paladin
    .goto Azuremyst Isle,46.355,71.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blacksmith Calypso|r
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_which increase your melee damage by 2|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_which increase your melee damage by 2|r << Paladin
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Blacksmith Calypso
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>Loot the |cRXP_LOOT_Nautical Map|r on the small cage
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>Loot the |cRXP_LOOT_Nautical Compass|r on the small box
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>Kill |cRXP_ENEMY_Skittering Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Meat|r
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
    .mob Skittering Crawler
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .turnin 9512 >> Turn in Cookie's Jumbo Gumbo
    .target "Cookie" McWeaksauce
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r and |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9506 >> Turn in A Small Start
    .target +Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
    .accept 9530 >> Accept I've Got a Plant
    .accept 9513 >> Accept Reclaiming the Ruins
    .target +Priestess Kyleen Il'dinare
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .accept 9523 >> Accept Precious and Fragile Things Need Special Handling
    .target Archaeologist Adamant Ironheart
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>Loot a |cRXP_LOOT_Hollowed Out Tree|r on the ground
    >>Loot |cRXP_LOOT_Piles of Leaves|r on the ground
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>Kill |cRXP_ENEMY_Root Trappers|r. Loot them for their |cRXP_LOOT_Vines|r
    >>Kill |cRXP_ENEMY_Moongraze Stags|r. Loot them for their |cRXP_LOOT_Tenderloins|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9530 >> Turn in I've Got a Plant
    .accept 9531 >> Accept Tree's Company
    .target Admiral Odesyus
step
    #label level8
	.xp 8-950 >> Grind until you are 950xp away from level 8 (3550/4500)
    >>|cRXP_WARN_Try to finish near Azure Watch|r
step
	#completewith next
    .goto Azuremyst Isle,50.43,63.70
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    >>|cRXP_WARN_Skip this step if you are already close to Azure Watch|r
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
	.accept 9454 >> Accept The Great Moongraze Hunt
    .turnin 9454 >> Turn in The Great Moongraze Hunt
    .accept 10324 >> Accept The Great Moongraze Hunt
    .target Acteon
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .train 5116 >> Train |T135860:0|t[Concussive Shot]
    .train 82243 >> Train |T132269:0|t[Parry]
    .target Acteon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r and |cRXP_FRIENDLY_Daedal|r
    .turnin 9463 >> Turn in Medicinal Purpose
    .target +Anchorite Fateema
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >> Accept An Alternative Alternative
    .target +Daedal
    .goto Azuremyst Isle,48.392,51.482
step << Shaman cata
    .train 331,1
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .train 331 >> Train |T136052:0|t[Healing Wave]
    .train 324 >> Train |T136051:0|t[Lightning Shield]
    .target Tuluun
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .train 324 >> Train |T136051:0|t[Lightning Shield]
    .target Tuluun
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tullas|r
    .train 635 >> Train |T135920:0|t[Holy Light]
    .target Tullas
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .turnin 9586 >> Turn in Help Tavara
    .trainer >> Train your class spells
    .target Guvan
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Semid|r
    .trainer >> Train your class spells
    .target Semid
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Train |T132155:0|t[Rend]
    .target Ruada
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dulvi|r
    .accept 10428 >> Accept The Missing Fisherman
    .target Dulvi
step
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cryptographer Aurren|r
    .accept 9538 >> Accept Learning the Language
    .target Cryptographer Aurren
step
	.use 23818 >>|cRXP_WARN_Use the|r |T133741:0|t[Stillpine Furbolg Language Primer]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Totem of Akida|r
    .turnin 9538 >> Turn in Learning the Language
    .accept 9539 >> Accept Totem of Coo
    .target Totem of Akida
step
	#completewith AncientRelics
    >>|cRXP_WARN_Keep an eye out for a|r |cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_While they are in combat, cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >> Accept A Hearty Thanks!
	.unitscan Draenei Youngling
step
	#completewith TotemofTikti
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r
	>>Kill |cRXP_ENEMY_Moongraze Bucks|r. Loot them for their |cRXP_LOOT_Hides|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Totem of Coo|r
    .turnin 9539 >> Turn in Totem of Coo
    .accept 9540 >> Accept Totem of Tikti
    .target Totem of Coo
step
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >> |cRXP_WARN_Carefully drop down the side of the mountain here|r
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>Loot the |cRXP_LOOT_Azure Snapdragons|r on the ground
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Totem of Tikti|r
    .turnin 9540 >> Turn in Totem of Tikti
    .accept 9541 >> Accept Totem of Yor
    .timer 30,Totem of Yor RP
    .target Totem of Tikti
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >> |cRXP_WARN_Follow|r |cRXP_FRIENDLY_Stillpine Ancestor Tikti|r|cRXP_WARN_. He will buff you with|r |T132107:0|t[Embrace of the Serpent] |cRXP_WARN_which grants 150% increased swim speed and water breathing|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_Use the|r |T134325:0|t[Draenei Fishing Net] |cRXP_WARN_on|r |cRXP_PICK_Schools of Red Snapper|r
    >>|cRXP_WARN_If a |cRXP_ENEMY_Murloc|r spawns out of the pool, swim away fast! Casting any hostils spells will cause you to lose the|r |T132107:0|t[Embrace of the Serpent] |cRXP_WARN_buff|r
    .complete 9452,1 --Collect Red Snapper (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diktynna|r
    .turnin 9452 >> Turn in Red Snapper - Very Tasty!
    .accept 9453 >> Accept Find Acteon!
    .target Diktynna
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Totem of Yor|r underwater
    .turnin 9541 >> Turn in Totem of Yor
    .accept 9542 >> Accept Totem of Vark
    .timer 71,Totem of Vark RP
    .target Totem of Yor
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >> |cRXP_WARN_Follow|r |cRXP_FRIENDLY_Stillpine Ancestor Yor|r|cRXP_WARN_. He will buff you with|r |T132142:0|t[Shadow of the Forest] |cRXP_WARN_which grants increased movement speed and invisibility|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >> |cRXP_WARN_Travel to western Azuremyst Isle|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Totem of Vark|r
    .turnin 9542 >> Turn in Totem of Vark
    .accept 9544 >> Accept The Prophecy of Akida
    .target Totem of Vark
step
    .aura -30448
    +|cRXP_WARN_Click off the|r |T132142:0|t[Shadow of the Forest] |cRXP_WARN_buff|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>Kill |cRXP_ENEMY_Bristlelimb Furbolgs|r, |cRXP_ENEMY_Bristlelimb Windcallers|r and |cRXP_ENEMY_Bristlelimb Ursas|r. Loot them for their |cRXP_LOOT_Bristlelimb Keys|r
    >>Open the |cRXP_PICK_Bristlelimb Cages|r to free |cRXP_FRIENDLY_Stillpine Captives|r
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r
	>>Kill |cRXP_ENEMY_Moongraze Bucks|r. Loot them for their |cRXP_LOOT_Hides|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
    #completewith next
    >>Loot the |cRXP_LOOT_Ancient Relics|r on the ground
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Kill |cRXP_ENEMY_Wrathscale Nagas|r, |cRXP_ENEMY_Wrathscale Myrmidons|r and |cRXP_ENEMY_Wrathscale Sirens|r. Loot them for the |T134462:0|t[|cRXP_LOOT_Rune Covered Tablet|r]
    .use 23759 >>|cRXP_WARN_Use the|r |T134462:0|t[|cRXP_LOOT_Rune Covered Tablet|r] |cRXP_WARN_to start the quest|r
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
    .accept 9514>> Rune Covered Tablet
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .mob +Wrathscale Myrmidon
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .mob +Wrathscale Naga
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .mob +Wrathscale Siren
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Loot the |cRXP_LOOT_Ancient Relics|r on the ground
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >> Swim across to Traitor's Cove
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >> |cRXP_WARN_Use the|r |T132288:0|t[Tree Disguise Kit] |cRXP_WARN_at the naga flag|r
    .timer 73,Tree's Company RP
    .use 23792
step
    >>|cRXP_WARN_Wait out the RP|r
    .complete 9531,1 -- The Traitor Uncovered
step
    +|cRXP_WARN_Click off the|r |T132288:0|t[Tree Disguise] |cRXP_WARN_buff|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 10428 >> Turn in The Missing Fisherman
    .accept 9527 >> Accept All That Remains
    .target Cowlen
step
    .goto Azuremyst Isle,13.209,89.742
	>>Kill |cRXP_ENEMY_Owlbeasts|r. Loot them for the |cRXP_LOOT_Remains of Cowlen's Family|r
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
    .mob Aberrant Owlbeast
    .mob Raving Owlbeast
    .mob Deranged Owlbeast
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 9527 >> Turn in All That Remains
    .target Cowlen
step
	#completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .turnin 9523 >> Turn in Precious and Fragile Things Need Special Handling
    .target Archaeologist Adamant Ironheart
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9531 >> Turn in Tree's Company
    .accept 9537 >> Accept Show Gnomercy
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9513 >> Turn in Reclaiming the Ruins
    .target Priestess Kyleen Il'dinare
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9514 >> Turn in Rune Covered Tablet
    .target Priestess Kyleen Il'dinare
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>Talk to |cRXP_FRIENDLY_Engineer "Spark" Overgrind|r patrolling the beach
    >>Kill |cRXP_ENEMY_Engineer "Spark" Overgrind|r after the short RP. Loot him for the |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,Traitor's Communication RP
    .unitscan Engineer "Spark" Overgrind
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9537 >> Turn in Show Gnomercy
    .accept 9602 >> Accept Deliver Them From Evil...
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+2430 >> Grind until 2430+/6500xp
step
    #completewith next
    .hs >> Hearth to Azure Watch
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arugoo of the Stillpine|r
    .turnin 9544 >> Turn in The Prophecy of Akida
    .target Arugoo of the Stillpine
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .turnin 9453 >> Turn in Find Acteon!
    .turnin 10324 >> Turn in The Great Moongraze Hunt
    .target Acteon
step
    .goto Azuremyst Isle,48.392,51.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r
    .turnin 9473 >> Turn in An Alternative Alternative
    .target Daedal
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9456 >> Turn in Nightstalker Clean Up, Isle 2...
    .turnin 9602 >> Turn in Deliver Them From Evil...
    .target Exarch Menelaous
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >> Turn in A Hearty Thanks!
    .target Exarch Menelaous
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Train your class spells
    .target Tuluun
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tullas|r
    .trainer >> Train your class spells
    .target Tullas
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .trainer >> Train your class spells
    .target Guvan
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Semid|r
    .trainer >> Train your class spells
    .target Semid
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .trainer >> Train your class spells
    .target Ruada
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .trainer >> Train your class spells
    .target Acteon
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldaan|r
    .accept 9604 >>Accept On the Wings of a Hippogryph
    .target Zaldaan
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldaan|r
    .fly The Exodar >> Fly to The Exodar
    .target Zaldaan
step
    .goto The Exodar,57.016,50.081
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >> Turn in On the Wings of a Hippogryph
    .accept 9605 >> Accept Hippogryph Master Stephanos
    .target Nurguni
step << Warrior/Paladin
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Buy a|r |T135350:0|t[Claymore] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Shaman
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Buy a|r |T132402:0|t[Hatchet] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ven
step << Hunter
    .goto The Exodar,47.904,89.780
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Buy a|r |T135499:0|t[Laminated Recurve Bow] |cRXP_BUY_from her|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ven
step << Warrior/Paladin
    #optional
    #completewith end
    +|cRXP_WARN_Equip the|r |T135350:0|t[Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman
    #optional
    #completewith end
    +|cRXP_WARN_Equip the|r |T132402:0|t[Hatchet] |cRXP_WARN_in your mainhand|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Equip the|r |T135499:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .goto The Exodar,54.488,36.285
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
    .target Stephanos
step
    #label end
    .goto The Exodar,54.488,36.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .fly Lor'danel >> Fly to Lor'danel
    .target Stephanos
]])
