local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A) << cata
#group RXP MoP 1-60 (A) << mop
#cata
#mop
#name 1-10 Gilneas
#displayname 1-10 Gilneas
#next 10-18 Darkshore
#defaultfor !DK
#next 10-18 Darkshore

<< Worgen

step
    .goto 202,59.130,23.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .accept 14078 >>Accept Lockdown!
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,56.879,17.856,15,0
    .goto 202,54.626,16.717,15 >>Travel toward |cRXP_FRIENDLY_Lieutenant Walden|r's corpse on the ground
step
    .goto 202,54.626,16.717
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Walden|r's corpse on the ground
    .turnin 14078 >>Turn in Lockdown!
    .accept 14091 >>Accept Something's Amiss
	.target Lieutenant Walden
step
    #optional
    #completewith next
    .goto 202,56.872,17.840,15,0
    .goto 202,58.366,20.712,15,0
    .goto 202,59.830,22.192,15 >>Return to |cRXP_FRIENDLY_Prince Liam Greymane|r
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14091 >>Turn in Something's Amiss
    .accept 14093 >>Accept All Hell Breaks Loose
    .accept 14098 >>Accept Evacuate the Merchant Square
	.target Prince Liam Greymane
step
    #completewith next
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    >>Kill |cRXP_ENEMY_Rampaging Worgen|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .accept 14094 >>Accept Salvage the Supplies
	.target Gwen Armstead
step
    #sticky
    #label Salvaged
    #loop
    .goto 202,58.931,25.445,0
    .goto 202,61.954,36.882,0
    .goto 202,55.539,33.642,0
    .waypoint 202,58.931,25.445,12,0
    .waypoint 202,62.280,26.295,12,0
    .waypoint 202,59.193,28.776,12,0
    .waypoint 202,59.012,35.683,12,0
    .waypoint 202,61.954,36.882,12,0
    .waypoint 202,59.174,38.938,12,0
    .waypoint 202,56.253,42.897,12,0
    .waypoint 202,58.449,36.570,12,0
    .waypoint 202,55.539,33.642,12,0
    .waypoint 202,60.040,20.806,12,0
    >>Open |cRXP_PICK_Supply Crates|r on the ground. Loot them for |cRXP_LOOT_Salvaged Supplies|r
    .complete 14094,1 --Salvaged Supplies (4)
step
    #sticky
    #label Gwen
    #requires Salvaged
    .goto 202,59.561,26.776,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14094 >>Turn in Salvage the Supplies
	.target Gwen Armstead
step
    #optional
    #sticky
    #label RampWorgen
    #loop
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    .waypoint 202,57.678,23.371,45,0
    .waypoint 202,60.799,22.195,45,0
    .waypoint 202,63.387,19.323,45,0
    .waypoint 202,64.497,24.603,45,0
    .waypoint 202,65.642,33.161,45,0
    .waypoint 202,60.451,34.024,45,0
    .waypoint 202,59.696,41.857,45,0
    .waypoint 202,57.192,40.351,45,0
    >>Kill |cRXP_ENEMY_Rampaging Worgen|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    #label Area1
    #loop
    .goto 202,63.192,31.620,0
    .goto 202,55.001,26.559,0
    .goto 202,58.493,19.345,0
    .goto 202,63.192,31.620,8,0
    .goto 202,63.199,34.791,8,0
    .goto 202,55.001,26.559,8,0
    .goto 202,55.839,20.215,8,0
    .goto 202,58.493,19.345,8,0
    >>Knock on |cRXP_PICK_Merchant Square Doors|r
    >>|cRXP_WARN_This may spawn hostile|r |cRXP_ENEMY_Rampaging Worgen|r
    .complete 14098,1 --Market Homes Evacuated (3)
step
    #optional
    #requires RampWorgen
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Gwen
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14094 >>Turn in Salvage the Supplies
	.target Gwen Armstead
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14093 >>Turn in All Hell Breaks Loose
    .turnin 14098 >>Turn in Evacuate the Merchant Square
    .accept 14099 >>Accept Royal Orders
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,62.290,31.759,15,0
    .goto 202,64.098,34.535,15,0
    .goto 202,68.809,45.472,15,0
    .goto 202,70.770,55.050,15 >> Travel toward |cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 202,70.770,55.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14099 >>Turn in Royal Orders
    .accept 14265 >>Accept Your Instructor << Warrior
    .accept 14269 >>Accept Someone's Looking for You << Rogue
    .accept 14273 >>Accept Shady Associates << Warlock
    .accept 14275 >>Accept Someone's Keeping Track of You << Hunter
    .accept 14277 >>Accept Arcane Inquiries << Mage
    .accept 14278 >>Accept Seek the Sister << Priest
    .accept 14280 >>Accept The Winds Know Your Name... Apparently  << Druid
	.target Gwen Armstead
step << skip
    #completewith next
    .goto 202,71.023,55.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marie Allen|r
    .vendor 38853 >>|cRXP_BUY_Buy|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_from her if needed|r
	.target Marie Allen
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seargent Cleese|r
    .turnin 14265 >>Turn in Your Instructor
    .accept 14266 >>Accept Charge
    .train 100 >>Train |T132337:0|t[Charge] << cata
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    >>|cRXP_WARN_She is|r |T132320:0|t[Stealthed]
    .turnin 14269 >>Turn in Someone's Looking for You
    .accept 14272 >>Accept Eviscerate
    .train 2098 >>Train |T132292:0|t[Eviscerate] << cata
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .turnin 14273 >>Turn in Shady Associates
    .accept 14274 >>Accept Immolate
    .train 348 >>Train |T135817:0|t[Immolate] << cata
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .turnin 14275 >>Turn in Someone's Keeping Track of You
    .accept 14276 >>Accept Steady Shot
    .train 56641 >>Train |T132213:0|t[Steady Shot] << cata
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .turnin 14277 >>Turn in Arcane Inquiries
    .accept 14281 >>Accept Arcane Missiles
    .train 5143 >>Train |T136096:0|t[Arcane Missiles] << cata
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r
    .turnin 14278 >>Turn in Seek the Sister
    .accept 14279 >>Accept Flash Heal << cata
    .accept 14279 >>Accept Learning the Word << !cata
    .train 2061 >>Train |T135907:0|t[Flash Heal] << cata
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .turnin 14280 >>Turn in The Winds Know Your Name... Apparently
    .accept 14283 >>Accept A Rejuvenating Touch << cata
    .accept 14283 >>Accept Moonfire << !cata
    .train 774 >>Train |T136081:0|t[Rejuvenation] << cata
	.target Celestine of the Harvest
step << !Priest !Druid
    .goto 202,67.168,64.124
    >>Cast |T132337:0|t[Charge] on a |cRXP_ENEMY_Bloodfang Worgen|r << Warrior
    >>Cast |T136189:0|t[Sinister Strike] and then |T132292:0|t[Eviscerate] on a |cRXP_ENEMY_Bloodfang Worgen|r << Rogue
    >>Cast |T135817:0|t[Immolate] on a |cRXP_ENEMY_Bloodfang Worgen|r << Warlock
    >>Cast |T132213:0|t[Steady Shot] on a |cRXP_ENEMY_Bloodfang Worgen|r 2 times << Hunter
    >>Cast |T135812:0|t[Fireball] and then |T136096:0|t[Arcane Missiles] when it procs on a |cRXP_ENEMY_Bloodfang Worgen|r << Mage
    .complete 14266,1 << Warrior cata --Cast Charge (1)
    .complete 14272,1 << Rogue cata --Cast Eviscerate (1)
    .complete 14274,1 << Warlock cata --Cast Immolate (1)
    .complete 14276,1 << Hunter cata --Cast Steady Shot (2)
    .complete 14281,1 << Mage cata --Cast Arcane Missiles (1)
    .complete 14266,2 << Warrior !cata --Cast Charge (1)
    .complete 14272,2 << Rogue !cata --Cast Eviscerate (1)
    .complete 14274,2 << Warlock !cata --Cast Immolate (1)
    .complete 14276,2 << Hunter !cata --Cast Steady Shot (2)
    .complete 14281,2 << Mage !cata --Cast Arcane Missiles (1)
    .mob Bloodfang Worgen
step << !cata Druid/Priest
    .goto 202,67.168,64.124
    >>Cast |T136096:0|t[Moonfire] on a |cRXP_ENEMY_Bloodfang Worgen|r << Druid
    >>Cast |T136207:0|t[Shadow Word: Pain] twice on a |cRXP_ENEMY_Bloodfang Worgen|r << Priest
    .complete 14279,2 << Priest --Cast Shadow Word: Pain (1)
    .complete 14283,2 << Druid --Cast Moonfire (2)
    .mob Bloodfang Worgen
step << cata Priest/Druid
    #loop
    .goto 202,70.421,65.541,0
    .goto 202,71.003,66.538,8,0
    .goto 202,70.523,67.189,8,0
    .goto 202,69.416,66.577,8,0
    .goto 202,69.782,63.306,5,0
    >>Cast |T135907:0|t[Flash Heal] on a |cRXP_FRIENDLY_Wounded Guard|r 2 times << Priest
    >>Cast |T136081:0|t[Rejuvenation] on a |cRXP_FRIENDLY_Wounded Guard|r << Druid
    .complete 14279,1 << Priest --Cast Flash Heal (2)
    .complete 14283,1 << Druid --Cast Rejuvenation (1)
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seargent Cleese|r
    .turnin 14266 >>Turn in Charge
    .accept 14286 >>Accept Safety in Numbers
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    >>|cRXP_WARN_She is|r |T132320:0|t[Stealthed]
    .turnin 14272 >>Turn in Eviscerate
    .accept 14285 >>Accept Safety in Numbers
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .turnin 14274 >>Turn in Immolate
    .accept 14287 >>Accept Safety in Numbers
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .turnin 14276 >>Turn in Steady Shot
    .accept 14290 >>Accept Safety in Numbers
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .turnin 14281 >>Turn in Arcane Missiles
    .accept 14288 >>Accept Safety in Numbers
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r
    .turnin 14279 >>Turn in Flash Heal << cata
    .turnin 14279 >>Turn in Learning the Word << !cata
    .accept 14289 >>Accept Safety in Numbers
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .turnin 14283 >> Turn in A Rejuvenating Touch << cata
    .turnin 14283 >> Turn in Moonfire << !cata
    .accept 14291 >> Accept Safety in Numbers
	.target Celestine of the Harvest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r and |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14285 >>Turn in Safety in Numbers << Rogue
    .turnin 14286 >>Turn in Safety in Numbers << Warrior
    .turnin 14287 >>Turn in Safety in Numbers << Warlock
    .turnin 14288 >>Turn in Safety in Numbers << Mage
    .turnin 14289 >>Turn in Safety in Numbers << Priest
    .turnin 14290 >>Turn in Safety in Numbers << Hunter
    .turnin 14291 >>Turn in Safety in Numbers << Druid
    .accept 14157 >>Accept Old Divisions
    .goto 202,65.810,77.714
	.target +King Genn Greymane
    .accept 24930 >>Accept While You're At It
    .goto 202,65.279,77.607
	.target +Lord Godfrey
step
    #sticky
    #label Bloodfang
    #loop
    .goto 202,57.890,72.582,0
    .goto 202,59.334,63.772,0
    .goto 202,61.376,70.799,0
    .goto 202,67.168,64.124,0
    .waypoint 202,57.890,72.582,20,0
    .waypoint 202,55.652,68.601,20,0
    .waypoint 202,56.961,66.801,20,0
    .waypoint 202,58.605,63.555,20,0
    .waypoint 202,59.334,63.772,20,0
    .waypoint 202,61.343,66.187,20,0
    .waypoint 202,61.898,66.760,20,0
    .waypoint 202,59.853,70.005,20,0
    .waypoint 202,61.376,70.799,20,0
    .waypoint 202,61.872,71.789,20,0
    .waypoint 202,64.690,69.474,20,0
    .waypoint 202,67.168,64.124,20,0
	>>Kill |cRXP_ENEMY_Bloodfang Worgen|r
    .complete 24930,1 --Bloodfang Worgen slain (5)
	.mob *Bloodfang Worgen
step
    #optional
    #completewith next
    .goto 202,59.984,71.904,15,0
    .goto 202,58.006,72.476,15,0
    .goto 202,57.736,73.926,15,0
    .goto 202,57.925,75.584,10 >>Travel toward |cRXP_FRIENDLY_Captain Broderick|r inside
step
    .goto 202,57.925,75.584
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Broderick|r inside
    .turnin 14157 >>Turn in Old Divisions
    .accept 28850 >>Accept The Prison Rooftop
	.target Captain Broderick
step
    #optional
    #completewith Rooftop
    #label Staircase1
    .goto 202,57.001,74.780,5,0
    .goto 202,55.627,72.484,12 >>Travel up the spiral staircase
step
    #optional
    #completewith Rooftop
    #requires Staircase1
    .goto 202,54.046,69.362,12,0
    .goto 202,53.759,67.454,12,0
    .goto 202,55.224,62.906,12 >>Travel toward |cRXP_FRIENDLY_Lord Darius Crowley|r
step
    #label Rooftop
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 28850 >>Turn in The Prison Rooftop
    .accept 14154 >>Accept By the Skin of His Teeth
    .timer 118,By the Skin of His Teeth RP
	.target Lord Darius Crowley
step
    .goto 202,55.224,62.906
    >>Kill the oncoming waves of |cRXP_ENEMY_Worgen Alphas|r and |cRXP_ENEMY_Bloodfang Runts|r for 2 minutes
    >>|cRXP_WARN_Stay near |cRXP_FRIENDLY_Lord Darius Crowley|r to gain|r |T236310:0|t[Rebel Valor] |cRXP_WARN_(Passive Aura: Greatly increases haste, health regeneration, and resource regeneration)|r
    .complete 14154,1 --Survive while holding back the worgen for 2 minutes. (1)
    .mob Worgen Alpha
    .mob Bloodfang Runt
step
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 14154 >>Turn in By the Skin of His Teeth
    .accept 26129 >>Accept Brothers In Arms
	.target Lord Darius Crowley
step
    #optional
    #completewith Brothers
    #label Staircase2
    .goto 202,53.759,67.454,12,0
    .goto 202,54.046,69.362,12 >>Travel toward the spiral staircase
--XX NOTE: You can longjump up behind Darius to jump down, but I doubt the avg user can do it (evident of Wetlands skip despite it being easier)
step
    #optional
    #completewith Brothers
    #requires Staircase2
    .goto 202,55.627,72.484,15,0
    .goto 202,57.707,74.729,5,0
    .goto 202,59.984,71.904,20 >>Travel down the spiral staircase. Go outside
step
    #label Brothers
    #requires Bloodfang
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r and |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 24930 >>Turn in While You're At It
    .goto 202,65.279,77.607
	.target +Lord Godfrey
    .turnin 26129 >>Turn in Brothers In Arms
    .accept 14159 >>Accept The Rebel Lord's Arsenal
    .goto 202,65.810,77.714
	.target +King Genn Greymane
step
    #optional
    #completewith Arsenal
    #requires Cellar1
    .goto 202,61.383,80.814,15,0
    .goto 202,56.181,82.790,15,0
    .goto 202,55.945,81.481,5,0
    .goto 202,56.805,81.599,6,0
    .goto 202,56.768,85.448,10 >>Click the |cRXP_PICK_Cellar Door|r to open it, then travel toward |cRXP_FRIENDLY_Josiah Avery|r inside
--XX no spell for this
step
    #label Arsenal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Josiah Avery|r and |cRXP_FRIENDLY_Lorna Crowley|r inside
    .turnin 14159 >>Turn in The Rebel Lord's Arsenal
    .goto 202,56.768,85.448
	.target +Josiah Avery
    .accept 14204 >>Accept From the Shadows
    .goto 202,56.873,81.421
	.target +Lorna Crowley
step << skip
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key.|r
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step
    #loop
    .goto 202,54.026,81.617,0
    .goto 202,50.457,81.103,0
    .goto 202,47.100,77.204,0
    .goto 202,53.263,76.819,0
    .goto 202,54.026,81.617,20,0
    .goto 202,55.209,84.131,20,0
    .goto 202,51.607,83.495,20,0
    .goto 202,50.679,83.942,20,0
    .goto 202,50.457,81.103,20,0
    .goto 202,48.050,84.424,20,0
    .goto 202,47.075,81.792,20,0
    .goto 202,46.153,81.533,20,0
    .goto 202,47.100,77.204,20,0
    .goto 202,48.918,76.770,20,0
    .goto 202,51.200,76.089,20,0
    .goto 202,53.263,76.819,20,0
    >>Kill |cRXP_ENEMY_Bloodfang Lurkers|r
    >>|cRXP_WARN_Be careful as they are|r |T132320:0|t[Stealthed]
    >>|cRXP_WARN_Use your |cRXP_FRIENDLY_Gilnean Mastiff|r's|r |T236186:0|t[Attack Lurker] |cRXP_WARN_spell to help locate |cRXP_ENEMY_Bloodfang Lurkers|r if needed|r
    >>|cRXP_WARN_If you lose your |cRXP_FRIENDLY_Gilnean Mastiff|r, resummon it using the|r |T236926:0|t[Gilnean Mastiff Collar]
    .complete 14204,1 --Bloodfang Lurker slain (6)
	.mob Bloodfang Lurker
    .use 48707
step
    .goto 202,56.873,81.421
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r inside
    .turnin 14204 >>Turn in From the Shadows
    .accept 14214 >>Accept Message to Greymane
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 202,55.818,81.572,6,0
    .goto 202,56.184,82.795,12,0
    .goto 202,59.207,83.777,15 >> Travel toward |cRXP_FRIENDLY_King Genn Greymane|r
step
    .goto 202,59.207,83.777
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 14214 >>Turn in Message to Greymane
    .accept 14293 >>Accept Save Krennan Aranas
    .timer 16,Save Krennan Aranas RP
	.target King Genn Greymane
step << skip
    #completewith next
    .goto 202,58.710,77.289,0
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r AFTER saving |cRXP_FRIENDLY_Krennan Aranas|r
    .target Spirit Healer
step
    .goto 202,59.207,83.777,0
    .goto 202,66.171,61.811
    >>Whilst on |cRXP_FRIENDLY_King Greymane's Horse|r:
    >>Cast |T134149:0|t[Rescue Krennan] (1) to save |cRXP_FRIENDLY_Krennan Aranas|r when you approach him
-- >>|cRXP_WARN_After you save him, press dismount |cRXP_FRIENDLY_King Greymane's Horse|r and die to the|r |cRXP_ENEMY_Bloodfang Rippers|r
    >>|cRXP_WARN_If you fail this, talk to |cRXP_FRIENDLY_King Genn Greymane|r to try again|r
    .complete 14293,1 --Krennan Aranas rescued (1)
    .timer 19,Save Krennan Aranas RP
	.target Krennan Aranas
    .target *King Genn Greymane
    .skipgossip 35550,1
    .timer 16,Save Krennan Aranas RP
--XX 19s slower to not deathskip, not gonna risk it
step << skip
    #optional
    #completewith next
    .goto 202,58.710,77.289
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r AFTER saving |cRXP_FRIENDLY_Krennan Aranas|r
    .target Spirit Healer
step
    .goto 202,55.715,80.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14293 >>Turn in Save Krennan Aranas
    .accept 14294 >>Accept Time to Regroup
	.target Lord Godfrey
--XX 14293 didn't complete after turning in quest, worked again after accepting followup (very minor issue)
step
    #optional
    #completewith next
    .goto 202,53.411,82.729,15,0
    .goto 202,44.351,82.504,15,0
    .goto 202,41.103,81.945,15,0
    .goto 202,30.373,73.142,15 >> Travel toward |cRXP_FRIENDLY_King Genn Greymane|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r and |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 14294 >>Turn in Time to Regroup
    .goto 202,30.373,73.142
	.target +King Genn Greymane
    .accept 14212 >>Accept Sacrifices
    .goto 202,31.103,72.365
	.target +Lord Darius Crowley
step
    #completewith next
    .goto 202,31.282,72.645
    .vehicle >> Enter |cRXP_FRIENDLY_Crowley's Horse|r
    .timer 79,Sacrifices RP
    .target Crowley's Horse
step
    .goto 202,31.282,72.645,-1
    .goto 202,40.749,39.219,-1
    >>Whilst on |cRXP_FRIENDLY_Crowley's Horse|r:
    >>Round up |cRXP_ENEMY_Bloodfang Stalkers|r
    >>Cast |T135433:0|t[Throw Torch] (1) (Ranged instant: Rounds up |cRXP_ENEMY_Bloodfang Stalkers|r)
    .complete 14212,1 --Bloodfang Stalker rounded up (30)
	.mob Bloodfang Stalker
--XX about 40s slower not to d
step
    #completewith next
    >>|cRXP_WARN_Wait out the RP|r
    .goto 202,40.548,39.446,20 >>Travel on |cRXP_FRIENDLY_Crowley's Horse|r toward |cRXP_FRIENDLY_Tobias Mistmantle|r
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle|r
    .turnin 14212 >>Turn in Sacrifices
    .accept 14218 >>Accept By Blood and Ash
	.target Tobias Mistmantle
step
    #completewith next
    .goto 202,40.883,36.449,-1
    .goto 202,40.120,36.463,-1
    .goto 202,38.786,37.390,-1
    .goto 202,38.395,38.282,-1
    .goto 202,37.896,39.535,-1
    .goto 202,37.955,40.949,-1
    .vehicle >> Enter a |cRXP_FRIENDLY_Rebel Cannon|r
    .target Rebel Cannon
step
    .goto 202,40.13,36.52
    >>Whilst in a |cRXP_FRIENDLY_Rebel Cannon|r:
    >>Kill |cRXP_ENEMY_Bloodfang Stalkers|r
    >>Cast |T252185:0|t[Rebel Cannon] (1) (Ranged instant: Deals a LOT of damage)
    .complete 14218,1 --Bloodfang Stalker slain (80)
    .mob Bloodfang Stalker
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle|r
    .turnin 14218 >>Turn in By Blood and Ash
    .accept 14221 >>Accept Never Surrender, Sometimes Retreat
	.target Tobias Mistmantle
step
    #optional
    #completewith next
    .goto 202,41.075,40.477,8,0
    .goto 202,43.584,44.647,12 >>Enter the Cathedral
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r inside
    .turnin 14221 >>Turn in Never Surrender, Sometimes Retreat
    .accept 14222 >>Accept Last Stand
	.target Lord Darius Crowley
step
    #loop
    .goto 202,42.708,43.201,0
    .goto 202,46.550,49.292,0
    .goto 202,47.789,46.937,20,0
    .goto 202,43.825,45.568,20,0
    .goto 202,42.708,43.201,20,0
    .goto 202,45.161,50.530,20,0
    >>Kill |cRXP_ENEMY_Frenzied Stalkers|r
    >>|cRXP_WARN_Stay near |cRXP_FRIENDLY_Lord Darius Crowley|r to gain|r |T236310:0|t[Rebel Valor] |cRXP_WARN_(Passive Aura: Greatly increases haste, health regen, and mana regen)|r
    .complete 14222,1 --Frenzied Stalker slain (8)
	.mob Frenzied Stalker
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r inside
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r
    .turnin 14222 >>Turn in Last Stand
    .timer 46,Last Stand RP
	.target Lord Daruius Crowley
step
    .goto 179,36.47,61.39
    >>|cRXP_WARN_Wait out the RP|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .accept 14375 >>Accept Last Chance at Humanity
    .turnin 14375 >>Turn in Last Chance at Humanity
    .timer 7,Last Chance at Humanity RP
	.target King Genn Greymane
--XX 2dp waypoints here on out (gc bug)
step
    .goto 179,36.51,62.27
    >>|cRXP_WARN_Wait out the RP|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .accept 14313 >>Accept Among Humans Again
	.target Lord Godfrey
step
    #optional
    #completewith next
    .goto 179,37.17,63.58,8,0
    .goto 179,37.41,63.24,10 >>Enter the house
step
    .goto 179,37.41,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r inside
    .turnin 14313 >>Turn in Among Humans Again
    .accept 14320 >>Accept In Need of Ingredients
	.target Krennan Aranas
step
    #sticky
    #label Professions1
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Herbing Herbs and Mining Veins provides XP. Only gather resources in your direct path|r
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    .train 2575 >> Train |T136248:0|t[Mining]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,1,1,1
    .train 2366,1 --Herbalism
    .train 2575,1 --Mining
step
    #optional
    #requires Professions1
    #label Professions2
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Herbing Herbs provides XP. Only gather resources in your direct path|r
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,2,2
    .train 2575,3 --Mining
step
    #optional
    #requires Professions2
    #label Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Mining Veins provides XP. Only gather resources in your direct path|r
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2575 >> Train |T136248:0|t[Mining]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,3,2
    .train 2366,3 --Herbalism
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .trainer >> Train your class spells
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Cleese|r
    .trainer >> Train your class spells
    .target Sergeant Cleese
step
    #completewith INOG
    #optional
    .cast 2383 >> |cRXP_WARN_Cast|r [Find Herbs]
    .cast 2580 >> |cRXP_WARN_Cast|r [Find Minerals]
    .train 2575,3 --Mining
    .train 2366,3 --Herbalism
    .subzoneskip 4786,1
step
    #optional
    .goto 179,36.228,64.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samantha Buckley|r
    .collect 2901,1 >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from her|r
    .target Samantha Buckley
    .train 2575,3 --Mining
    .subzoneskip 4786,1
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r
    .trainer >> Train your class spells
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .trainer >> Train your class spells
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Train your class spells
    .target Myriam Spellwaker
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >> Train your class spells
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    .trainer >> Train your class spells
    .target Loren the Fence
step
    #label INOG
    .goto 179,32.77,66.39
    >>Click the |cRXP_PICK_Crate of Mandrake Essence|r on the ground
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r
    .turnin 14320 >>Turn in In Need of Ingredients
step
    #label MiningWorgen
    .goto 179,32.77,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Slain Watchman|r's corpse on the ground
	>>|cRXP_WARN_If you cannot do this, type /reload in chat|r
    .accept 14321 >>Accept Invasion
    .target Slain Watchman
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r inside
    .turnin 14321 >>Turn in Invasion
    .accept 14336 >>Accept Kill or Be Killed
	.target Gwen Armstead
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14336 >>Turn in Kill or Be Killed
    .accept 14347 >>Accept Hold the Line
    .accept 14348 >>Accept You Can't Take 'Em Alone
	.target Prince Liam Greymane
step
    #sticky
    #label ForsakenInvader
    .goto 179,35.61,66.62,0,0
    >>Kill |cRXP_ENEMY_Forsaken Invaders|r
    .complete 14347,1 --Forsaken Invader slain (10)
	.mob Forsaken Invader
step
    #label Abominations
    #loop
    .goto 179,37.77,69.30,0
    .goto 179,34.23,69.98,0
    .goto 179,33.63,64.76,0
    .goto 179,37.77,69.30,30,0
    .goto 179,38.48,71.45,30,0
    .goto 179,37.24,71.34,30,0
    .goto 179,36.02,71.29,30,0
    .goto 179,34.23,69.98,30,0
    .goto 179,33.39,70.65,30,0
    .goto 179,33.33,71.73,30,0
    .goto 179,33.33,67.76,30,0
    .goto 179,33.63,64.76,30,0
    >>Loot |T132620:0|t|cRXP_LOOT_[Black Gunpowder Kegs]|r on the ground
    >>Throw the |T132620:0|t|cRXP_LOOT_[Black Gunpowder Kegs]|r at |cRXP_ENEMY_Horrid Abominations|r
    .collect 49202,4,14348,1,-1 --Black Gunpowder Keg (4)
    .complete 14348,1 --Gunpowder thrown at Abominations (4)
    .use 49202
	.mob Horrid Abomination
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14347 >>Turn in Hold the Line
    .turnin 14348,1 >>Turn in You Can't Take 'Em Alone << !Warrior !Rogue !Monk
    .turnin 14348,2 >>Turn in You Can't Take 'Em Alone << Warrior/Rogue/Monk
    .accept 14366 >>Accept Holding Steady
	.target Prince Liam Greymane
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r inside
    .turnin 14366 >>Turn in Holding Steady
    .accept 14367 >>Accept The Allens' Storm Cellar
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Enter the Cellar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r and |cRXP_FRIENDLY_Melinda Hammond|r inside
    .turnin 14367 >>Turn in The Allens' Storm Cellar
    .accept 14369 >>Accept Unleash the Beast
    .accept 14382 >>Accept Two By Sea
    .goto 179,28.97,63.93
	.target +Lord Godfrey
    .accept 14368 >>Accept Save the Children!
    .goto 179,28.93,64.04
	.target +Melinda Hammond
step
    #optional
    #label ChildrenHouse1
    #completewith Ashley
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Exit the Cellar
step
    #optional
	#completewith Cynthia
    >>Kill |cRXP_ENEMY_Forsaken Footsoldiers|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob Forsaken Footsoldier
step
    #optional
    #label ChildrenHouse2
    #requires ChildrenHouse1
    #completewith Ashley
    .goto 179,27.83,66.83,7 >>Enter the house
step
    #optional
    #completewith Ashley
    #requires ChildrenHouse2
    .goto 179,27.90,66.12,3,0
    .goto 179,28.19,66.32,3 >>Go upstairs
step
    #label Ashley
    .goto 179,27.88,66.66
    .cast 68598 >>Talk to |cRXP_FRIENDLY_Ashley|r upstairs
--  .complete 14368,2 --Ashley rescued (1)
	.target Ashley
    .isOnQuest 14368
--XX talk spell is about 0.5s faster than credit
step
    .goto 179,28.53,66.73,8,0
    .goto 179,28.71,66.78
    .cast 68596 >>Talk to |cRXP_FRIENDLY_James|r outside
--  .complete 14368,3 --James rescued (1)
	.target James
    .isOnQuest 14368
step
    #label Cynthia
    .goto 179,29.59,69.31
    .cast 68597 >>Talk to |cRXP_FRIENDLY_Cynthia|r
--  .complete 14368,1 --Cynthia rescued (1)
	.target Cynthia
    .isOnQuest 14368
step
	#sticky
    #label Combatants
    #loop
    .goto 179,27.59,75.20,0
    .goto 179,26.15,74.55,0
    .goto 179,24.40,70.19,0
    .goto 179,24.55,69.00,0
    .waypoint 179,27.59,75.20,45,0
    .waypoint 179,27.39,73.94,45,0
    .waypoint 179,26.15,74.55,45,0
    .waypoint 179,24.29,73.29,45,0
    .waypoint 179,24.40,70.19,45,0
    .waypoint 179,24.55,69.00,45,0
    >>Kill |cRXP_ENEMY_Forsaken Footsoldiers|r and |cRXP_ENEMY_Forsaken Sailors|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob *Forsaken Footsoldier
	.mob *Forsaken Sailor
step
    #optional
    #completewith Anson
    #loop
    .goto 179,28.39,72.09,0
    .goto 179,26.90,71.55,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    .goto 179,26.73,73.45,45,0
    >>Kill the |cRXP_ENEMY_Forsaken Machinist|r (if there is one) to make space in the |cRXP_FRIENDLY_Forsaken Catapult|r
    .vehicle >>Enter the |cRXP_FRIENDLY_Forsaken Catapult|r
    .timer 59,Catapult Implodes
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #completewith Anson
    +Whilst in a |cRXP_FRIENDLY_Forsaken Catapult|r:
    >>Aim carefully, then cast |T252175:0|t[Launch] (1) to be launched onto |cRXP_ENEMY_Captain Anson|r's northern ship
    *|cRXP_WARN_Remember that you can move whilst in the|r |cRXP_FRIENDLY_Forsaken Catapult|r
    *|cRXP_WARN_Make sure you aim carefully, as you can be launched into the side of the boat, or into the water past the boat|r
--XX Subzone 4714 (Gilneas) - can tie this to cast ID or subzone ID but there's no good way to hide this/detect if the player gets onto the boat or not
step
    #label Anson
    .goto 179,24.74,76.26,6,0
    .goto 179,24.94,76.50,6,0
    .goto 179,23.77,74.70
    >>Kill |cRXP_ENEMY_Captain Anson|r inside on the bottom floor of the northern ship
    .complete 14382,1 --Captain Anson slain (1)
	.mob Captain Anson
--XX Would add waypoints but the Catapult step gives enough bloat as is
--XX Check if body type 2s can exit via cannon holes
step
    #optional
    #completewith Morris
    #label Catapult3
    .goto 179,24.94,76.50,6 >> Go back upstairs
step
    #optional
    #requires Catapult3
    #completewith Morris
    #loop
    .goto 179,26.73,73.45,0
    .goto 179,26.90,71.55,0
    .goto 179,28.39,72.09,0
    .goto 179,29.61,74.10,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,29.61,74.10,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    >>Kill a |cRXP_ENEMY_Forsaken Machinist|r to make space in the |cRXP_FRIENDLY_Forsaken Catapult|r
    .vehicle >>Enter the |cRXP_FRIENDLY_Forsaken Catapult|r
    .timer 59,Catapult Implodes
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #requires Catapult3
    #completewith Morris
    +Whilst in a |cRXP_FRIENDLY_Forsaken Catapult|r:
    >>Aim carefully, then cast |T252175:0|t[Launch] (1) to be launched onto |cRXP_ENEMY_Captain Morris|r's southern ship
    *|cRXP_WARN_Remember that you can move whilst in the|r |cRXP_FRIENDLY_Forsaken Catapult|r
    *|cRXP_WARN_Make sure you aim carefully, as you can be launched into the side of the boat, or into the water past the boat|r
step
	#label Morris
    .goto 179,27.90,81.11,6,0
    .goto 179,28.06,81.32,6,0
    .goto 179,26.85,79.32
    >>Kill |cRXP_ENEMY_Captain Morris|r on the bottom floor of the southern ship
    .complete 14382,2 --Captain Morris slain (1)
	.mob Captain Morris
step << skip
    #requires Combatants
    #completewith Unleash
    .goto 179,27.65,66.05,0
    .deathskip >>Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .subzoneskip 4792
--XX not worth the timesave
step
    #optional
    #requires Combatants
    #completewith Unleash
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Enter the Cellar
step
    #label Unleash
    #requires Combatants
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melinda Hammond|r and |cRXP_FRIENDLY_Lord Godfrey|r inside
    .turnin 14368 >>Turn in Save the Children!
    .goto 179,28.93,64.04
	.target +Melinda Hammond
    .turnin 14369 >>Turn in Unleash the Beast
    .turnin 14382 >>Turn in Two By Sea
    .accept 14386 >>Accept Leader of the Pack
    .goto 179,28.97,63.93
	.target +Lord Godfrey
step
    .isOnQuest 14386
    #optional
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Exit the Cellar
step
    .isOnQuest 14386
    #completewith Thyala
    .cast 68682 >>Use the |T132161:0|t[Mastiff Whistle] to summon |cRXP_FRIENDLY_Attack Mastiffs|r to attack |cRXP_ENEMY_Dark Ranger Thyala|r
step
    #label Thyala
    .goto 179,23.48,67.53
    >>Kill |cRXP_ENEMY_Dark Ranger Thyala|r
    .complete 14386,1 --Dark Ranger Thyala slain (1)
    .use 49240
	.mob Dark Ranger Thyala
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Enter the Cellar
step
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14386 >>Turn in Leader of the Pack
    .accept 14396 >>Accept As the Land Shatters
	.target Lord Godfrey
step
    #optional
    #label Cellar6
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Exit the Cellar
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14396 >>Turn in As the Land Shatters
    .accept 14395 >>Accept Gasping for Breath
	.target Prince Liam Greymane
step
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pick up a |cRXP_FRIENDLY_Drowning Watchman|r
	.target Drowning Watchman
    .isOnQuest 14395
--XXZ Zarant function
step
    .goto 179,29.03,65.05
    >>Bring the |cRXP_FRIENDLY_Drowning Watchman|r back to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .complete 14395,1,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pick up a |cRXP_FRIENDLY_Drowning Watchman|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Bring the |cRXP_FRIENDLY_Drowning Watchman|r back to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .complete 14395,1,2 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pick up a |cRXP_FRIENDLY_Drowning Watchman|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Bring the |cRXP_FRIENDLY_Drowning Watchman|r back to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .complete 14395,1,3 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pick up a |cRXP_FRIENDLY_Drowning Watchman|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Bring the |cRXP_FRIENDLY_Drowning Watchman|r back to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .complete 14395,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14395,1 >>Turn in Gasping for Breath
    .accept 14397 >>Accept Evacuation
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 179,35.95,63.54,20,0
    .goto 179,37.63,65.23,12 >>Travel toward |cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14397 >>Turn in Evacuation
    .accept 14398 >>Accept Grandma Wahl
    .accept 14403 >>Accept The Hayward Brothers
    .accept 14406 >>Accept The Crowley Orchard
	.target Gwen Armstead
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 14406 >>Turn in The Crowley Orchard
    .accept 14416 >>Accept The Hungry Ettin
	.target Lorna Crowley
step
    #optional
    #completewith next
    #loop
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,39.82,75.32,20,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,39.72,77.14,20,0
    .goto 179,40.11,79.92,20,0
    .goto 179,39.90,81.96,20,0
    .goto 179,38.21,81.88,20,0
    .vehicle >>Enter a |cRXP_FRIENDLY_Mountain Horse|r
    .target Mountain Horse
step
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,37.68,72.76
    >>Whilst on a |cRXP_FRIENDLY_Mountain Horse|r:
    >>Cast |T134326:0|t[Round Up Horse] (1) on |cRXP_FRIENDLY_Mountain Horses|r to make them follow you
    >>Guide 5 |cRXP_FRIENDLY_Mountain Horses|r (including your own) back to |cRXP_FRIENDLY_Lorna Crowley|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Koroth the Hillbreaker|r
    .complete 14416,1 --Mountain Horse rescued (5)
	.target Mountain Horse
	.target Lorna
    .unitscan Koroth the Hillbreaker
--XXZ Zarant function
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 14416 >>Turn in The Hungry Ettin
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Enter the Wahl Cottage
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r inside
    .turnin 14398 >>Turn in Grandma Wahl
    .accept 14399 >>Accept Grandma's Lost It Alright
	.target Grandma Wahl
step
    .goto 179,33.96,77.38
    >>Loot the |cRXP_LOOT_Linen-Wrapped Book|r on the ground
    .complete 14399,1 --Linen-Wrapped Book (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r inside
    .turnin 14399 >>Turn in Grandma's Lost It Alright
    .accept 14400 >>Accept I Can't Wear This
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,32.50,76.06,8,0
    .goto 179,32.27,76.07,10,0
    .goto 179,32.04,75.45,10 >>Travel toward |cRXP_LOOT_Grandma's Good Clothes|r outside
step
    .goto 179,32.04,75.45
    >>Loot |cRXP_LOOT_Grandma's Good Clothes|r outside
    .complete 14400,1 --Grandma's Good Clothes (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r inside
    .turnin 14400 >>Turn in I Can't Wear This
    .accept 14401 >>Accept Grandma's Cat
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,35.16,74.82
    .cast 68743 >>Click |cRXP_FRIENDLY_Chance the Cat|r on the ground to summon |cRXP_ENEMY_Lucius the Cruel|r
	.mob Lucius the Cruel
    .isOnQuest 14401
step
    .goto 179,35.24,74.98
    >>Kill |cRXP_ENEMY_Lucius the Cruel|r. Loot him for |cRXP_LOOT_Chance the Cat|r
    .complete 14401,1 --Chance the Cat (1)
	.mob Lucius the Cruel
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Enter the Wahl Cottage
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r inside
    .turnin 14401 >>Turn in Grandma's Cat
	.target Grandma Wahl
step
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14403 >>Turn in The Hayward Brothers
    .accept 14404 >>Accept Not Quite Shipshape
    .accept 14412 >>Accept Washed Up
	.target Sebastian Hayward
step
	#sticky
    #label Castaways
    #loop
    .goto 179,36.89,84.68,0
    .waypoint 179,37.31,84.32,6,0
    .waypoint 179,36.89,84.68,6,0
    .waypoint 179,36.57,84.53,6,0
    >>Kill |cRXP_ENEMY_Forsaken Castaways|r
    .complete 14412,1 --Forsaken Castaway slain (6)
	.mob Forsaken Castaway
step
    .goto 179,37.58,85.98
    >>Open the |cRXP_PICK_Barrel of Coal Tar|r on the ground. Loot it for the |cRXP_LOOT_Coal Tar|r
    .complete 14404,3 --Coal Tar (1)
step
    #optional
    #completewith next
    .goto 179,37.05,86.81,6 >>Enter the Hayward Fishery house
step
    .goto 179,37.46,87.15
    >>Loot the |cRXP_LOOT_Shipwright's Tools|r on the ground inside
    .complete 14404,1 --Shipwright's Tools (1)
step
    .goto 179,36.09,86.44
    >>Loot the |cRXP_LOOT_Planks of Wood|r on the ground
    .complete 14404,2 --Planks of Wood (1)
step
    #requires Castaways
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14404 >>Turn in Not Quite Shipshape
    .turnin 14412 >>Turn in Washed Up
    .accept 14405 >>Accept Escape By Sea
	.target Sebastian Hayward
step
    #completewith next
    .hs >> Hearth to Duskhaven
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r
    .trainer >> Train your class spells
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .trainer >> Train your class spells
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Train your class spells
    .target Celestine of the Harvest
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >> Train your class spells
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    .trainer >> Train your class spells
    .target Loren the Fence
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .trainer >> Train your class spells
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Cleese|r
    .trainer >> Train your class spells
    .target Sergeant Cleese
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14405 >>Turn in Escape By Sea
    .accept 14465 >>Accept To Greymane Manor
	.timer 32,Greymane Manor RP
	.target Gwen Armstead
step << skip
    #optional
    #label Manor01
    #completewith next
    >>|cRXP_WARN_Wait out the RP|r
--XX add waypoint to tie to timer
step
    #optional
    #completewith next
    .goto 179,30.27,52.03,15,0
    .goto 179,29.54,51.55,15,0
    .goto 179,28.67,51.02,10 >>Enter Graymane Manor
step
    .goto 179,28.132,50.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Queen Mia Greymane|r inside
    .turnin 14465 >>Turn in To Greymane Manor
    .accept 14466 >>Accept The King's Observatory
	.target Queen Mia Greymane
step
    #optional
    #label Manor1
    #completewith AlasGilneas
    .goto 179,27.89,48.10,15,0
    .goto 179,27.11,48.12,15 >>Go upstairs toward the balcony
step
    #optional
    #label Manor2
    #requires Manor1
    #completewith AlasGilneas
    .goto 179,26.16,46.41,10,0
    .goto 179,26.74,46.34,10 >>Ascend toward the top of the Manor's tower
step
    #label AlasGilneas
    .goto 179,26.44,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r atop the Tower
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r
    .turnin 14466 >>Turn in The King's Observatory
    .turnin 14467 >>Turn in Alas, Gilneas!
    .accept 24438 >>Accept Exodus
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 179,29.12,51.80,20,0
    .goto 179,29.86,52.22,15 >>Descend the tower, then exit Graymane Manor. Jump down toward the |cRXP_FRIENDLY_Stagecoach Carriage|r
step
    .goto 179,28.90,54.22
    .isOnQuest 24438
    .vehicle >>Enter the |cRXP_FRIENDLY_Stagecoach Carriage|r
    .timer 80,Stagecoach Carriage Ride RP
    .target Stagecoach Carriage
step
    .isOnQuest 24438
    .goto 179,51.81,80.49,10 >> |cRXP_WARN_Wait out the RP|r
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 24438 >>Turn in Exodus
    .accept 24468 >>Accept Stranded at the Marsh
	.target Prince Liam Greymane
step
    #loop
    .goto 179,53.08,74.25,0
    .goto 179,52.73,72.07,0
    .goto 179,52.23,68.59,0
    .goto 179,53.08,74.25,45,0
    .goto 179,52.04,73.67,45,0
    .goto 179,51.75,72.92,45,0
    .goto 179,51.41,71.57,45,0
    .goto 179,52.73,72.07,45,0
    .goto 179,53.59,71.89,45,0
    .goto 179,53.95,73.95,45,0
    .goto 179,53.56,68.69,45,0
    .goto 179,52.23,68.59,45,0
    .goto 179,50.45,68.07,45,0
    .goto 179,51.46,69.67,45,0
    >>Save |cRXP_FRIENDLY_Crash Survivors|r by killing the |cRXP_ENEMY_Swamp Crocolisks|r that are attacking them
    .complete 24468,1 --Crash Survivor rescued (5)
	.mob Swamp Crocolisk
    .target Crash Survivor
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 24468 >>Turn in Stranded at the Marsh
    .accept 24472 >>Accept Introductions Are in Order
	.target Prince Liam Greymane
step
    #optional
    #completewith Koroth
    .goto 179,50.38,84.87,15,0
    .goto 179,48.88,84.64,15,0
    .goto 179,48.14,85.41,15,0
    .goto 179,46.74,83.20,12 >>Travel toward |cRXP_LOOT_Koroth's Banner|r atop the mountain
step
    #sticky
    #label Ogres
    #loop
    .goto 179,46.93,85.06,0
    .goto 179,50.56,85.62,0
    .waypoint 179,46.93,85.06,45,0
    .waypoint 179,45.77,87.30,45,0
    .waypoint 179,45.77,88.95,45,0
    .waypoint 179,45.26,87.21,45,0
    .waypoint 179,48.10,86.57,45,0
    .waypoint 179,49.25,83.82,45,0
    .waypoint 179,50.56,85.62,45,0
    >>Kill |cRXP_ENEMY_Ogre Minions|r
    .complete 24472,1 --Ogre Minion slain (4)
	.mob Ogre Minion
step
    #label Koroth
    .goto 179,46.74,83.20
    >>Loot |cRXP_LOOT_Koroth's Banner|r on the ground
    .complete 24472,2 --Koroth's Banner (1)
step
    #requires Ogres
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 24472 >>Turn in Introductions Are in Order
    .accept 24483 >>Accept Stormglen
	.target Prince Liam Greymane
step << !Mage
    #optional
    #completewith next
    .goto 179,53.19,84.01,30,0
    .goto 179,55.27,87.50,30,0
    .goto 179,58.49,91.88,30,0
    .goto 179,59.33,92.34,12,0
    .goto 179,59.84,91.92,6 >>Enter |cRXP_FRIENDLY_Gwen Armstead|r's house in Stormglen
step << Mage
    .goto 179,59.073,92.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Train your class spells
    .target Myriam Spellwaker
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r inside
    .turnin 24483 >>Turn in Stormglen
    .accept 24484 >>Accept Pest Control
	.target Gwen Armstead
step
    #sticky
    #label Stormglen
    .goto 179,60.06,91.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willa Arnes|r inside
    .home >>Set your Hearthstone to Stormglen Village
    .isQuestAvailable 24495
step
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r inside
    .accept 24495 >>Accept Pieces of the Past
	.target Lorna Crowley
step << Priest
    .goto 179,60.482,91.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r upstairs
    .trainer >> Train your class spells
    .target Sister Almyra
step << Druid
    .goto 179,60.002,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .trainer >> Train your class spells
    .target Celestine of the Harvest
step << Warrior
    .goto 179,59.500,91.003
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Cleese|r
    .trainer >> Train your class spells
    .target Sergeant Cleese
step << Rogue
    .goto 179,60.255,90.426
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    .trainer >> Train your class spells
    .target Loren the Fence
step << Hunter
    .goto 179,60.468,90.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .trainer >> Train your class spells
    .target Huntsman Blake
step << Warlock
    .goto 179,61.723,91.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >> Train your class spells
    .target Vitus Darkwalker
step
    #sticky
    #requires Stormglen
    #label JournalP
    #loop
    .goto 179,62.32,92.85,0
    .goto 179,65.14,90.76,0
    .goto 179,67.36,92.29,0
    .goto 179,62.32,92.85,15,0
    .goto 179,62.98,92.74,15,0
    .goto 179,63.84,91.65,15,0
    .goto 179,64.33,90.99,15,0
    .goto 179,64.82,90.71,15,0
    .goto 179,65.14,90.76,15,0
    .goto 179,65.45,90.92,15,0
    .goto 179,65.78,90.96,15,0
    .goto 179,65.22,92.46,15,0
    .goto 179,65.48,91.64,15,0
    .goto 179,65.91,90.76,15,0
    .goto 179,66.40,90.82,15,0
    .goto 179,67.18,90.80,15,0
    .goto 179,67.41,91.41,15,0
    .goto 179,67.36,92.29,15,0
    >>Loot |cRXP_LOOT_Old Journal Pages|r on the ground
    .complete 24495,1 --Old Journal Page (6)
step
    #requires Stormglen
    #loop
    .goto 179,65.32,92.71,0
    .goto 179,65.53,88.51,0
    .goto 179,65.59,90.93,0
    .goto 179,65.32,92.71,45,0
    .goto 179,66.30,91.16,45,0
    .goto 179,67.59,92.29,45,0
    .goto 179,67.50,88.31,45,0
    .goto 179,65.53,88.51,45,0
    .goto 179,62.70,91.02,45,0
    .goto 179,63.53,89.30,45,0
    .goto 179,63.64,91.38,45,0
    .goto 179,65.12,91.93,45,0
    .goto 179,65.59,90.93,45,0
    >>Kill |cRXP_ENEMY_Vilebrood Skitterers|r
    .complete 24484,1 --Vilebrood Skitterer slain (6)
	.mob Vilebrood Skitterer
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Enter the house
step
    #requires JournalP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r and |cRXP_FRIENDLY_Gwen Armstead|r inside
    .turnin 24495 >>Turn in Pieces of the Past
    .goto 179,60.26,91.85
	.target +Lorna Crowley
    .turnin 24484 >>Turn in Pest Control
    .accept 24501 >>Accept Queen-Sized Troubles
    .goto 179,59.86,91.71
	.target +Gwen Armstead
step
    .goto 179,68.35,81.65
    >>Kill |cRXP_ENEMY_Rygna|r
    .complete 24501,1 --Rygna slain (1)
	.mob Rygna
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Enter the house
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r and |cRXP_FRIENDLY_Lorna Crowley|r inside
    .turnin 24501 >>Turn in Queen-Sized Troubles
    .goto 179,59.86,91.71
	.target +Gwen Armstead
    .accept 24578 >>Accept The Blackwald
    .goto 179,60.26,91.85
	.target +Lorna Crowley
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belysra Starbreeze|r
    .turnin 24578 >>Turn in The Blackwald
    .accept 24616 >>Accept Losing Your Tail
	.target Belysra Starbreeze
step
    #optional
    #sticky
    #label Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura 70794 >>|cRXP_WARN_Run into the road to get stuck in a|r |T134916:0|t[Freezing Trap] |cRXP_WARN_and summon the |cRXP_ENEMY_Dark Scout|r. Use|r |T133443:0|t[Belysra's Talisman] |cRXP_WARN_to dispel the|r |T134916:0|t[Freezing Trap]
    .use 49944
step
    #optional
    #sticky
    #requires Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura -70794 >>|cRXP_WARN_Use|r |T133443:0|t[Belysra's Talisman] |cRXP_WARN_to dispel the|r |T134916:0|t[Freezing Trap]
    .use 49944
--XXZ Currently doesnt work (aura needs to count debuffs)
step
    #label Scout
    .goto 179,64.12,80.52
    >>Kill the |cRXP_ENEMY_Dark Scout|r
    .complete 24616,1 --Dark Scout slain (1)
	.mob Dark Scout
    .use 49944
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belysra Starbreeze|r
    .turnin 24616 >>Turn in Losing Your Tail
    .accept 24617 >>Accept Tal'doren, the Wild Home
	.target Belysra Starbreeze
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24617 >>Turn in Tal'doren, the Wild Home
    .accept 24627 >>Accept At Our Doorstep
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r
    .accept 24628 >>Accept Preparations
	.target Vassandra Stormclaw
step
    #sticky
    #label Banshees
    #loop
    .goto 179,64.34,75.55,0
    .goto 179,60.44,78.54,0
    .goto 179,64.23,72.55,0
    .goto 179,64.34,75.55,45,0
    .goto 179,61.21,77.57,45,0
    .goto 179,61.38,79.02,45,0
    .goto 179,61.86,79.10,45,0
    .goto 179,60.44,78.54,45,0
    .goto 179,60.19,80.23,45,0
    .goto 179,60.41,76.88,45,0
    .goto 179,59.79,75.62,45,0
    .goto 179,63.38,74.31,45,0
    .goto 179,64.23,72.55,45,0
    >>Kill |cRXP_ENEMY_Howling Banshees|r
    .complete 24627,1 --Howling Banshee slain (6)
	.mob Howling Banshee
step
    #optional
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Loot |cRXP_LOOT_Moonleaf|r on the ground
    *|cRXP_WARN_You can see the location of |cRXP_LOOT_Moonleaf|r on your minimap if you have|r |T133939:0|t[Find Herbs] |cRXP_WARN_enabled|r
    .complete 24628,1 --Moonleaf (6)
	.skill herbalism,1,1
step
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Loot |cRXP_LOOT_Moonleaf|r on the ground
    .complete 24628,1 --Moonleaf (6)
    .skill herbalism,<1,1
step
    #requires Banshees
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24627 >>Turn in At Our Doorstep
    .accept 24646 >>Accept Take Back What's Ours
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r
    .turnin 24628 >>Turn in Preparations
	.target Vassandra Stormclaw
step
    #optional
    #label Taldoren
    #completewith ScytheOfElune
    .goto 179,58.14,75.79
    .cast 71061 >>|cRXP_WARN_Use the|r |T134229:0|t[Horn of Tal'doren] |cRXP_WARN_to distract the|r |cRXP_ENEMY_Veteran Dark Rangers|r
    .use 50134
    .unitscan Veteran Dark Ranger
step
    #optional
    #requires Taldoren
    #completewith ScytheOfElune
    .goto 179,57.85,75.95,8 >> Enter the house
step
    #label ScytheOfElune
    .goto 179,57.51,75.59
	>>Open the |cRXP_PICK_Worn Coffer|r inside. Loot it for the |cRXP_LOOT_Mysterious Artifact|r
    .complete 24646,1 --Mysterious Artifact (1)
    .use 50134
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24646 >>Turn in Take Back What's Ours
    .accept 24593 >>Accept Neither Human Nor Beast
	.target Lord Darius Crowley
step
    >>Drink from the |cRXP_PICK_Well of Fury|r, |cRXP_PICK_Well of Tranquility|r, and |cRXP_PICK_Well of Balance|r
    .complete 24593,1 --Well of Fury (1)
    .goto 179,68.98,72.80,-1
    .complete 24593,2 --Well of Tranquility (1)
    .goto 179,69.26,73.10,-1
    .complete 24593,3 --Well of Balance (1)
    .goto 179,69.14,73.52,-1
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24593 >>Turn in Neither Human Nor Beast
    .accept 24673 >>Accept Return to Stormglen
	.target Lord Darius Crowley
step
    #completewith next
    .hs >> Hearth to Stormglen
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r inside
    .turnin 24673 >>Turn in Return to Stormglen
    .accept 24672 >>Accept Onwards and Upwards
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,60.44,91.30,8,0
    .goto 179,68.80,85.65,45,0
    .goto 179,72.02,82.07,30,0
    .goto 179,72.73,80.05,12 >>Travel toward |cRXP_FRIENDLY_Krennas Aranas|r
step
    .goto 179,72.73,80.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennas Aranas|r
    .turnin 24672 >>Turn in Onwards and Upwards
    .accept 24592 >>Accept Betrayal at Tempest's Reach
	.target Krennas Aranas
step
    #optional
    #label Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75
    .subzone 4788 >>Travel toward Tempest's Reach
step
    #optional
    #sticky
    #label KrennanStealth
    #requires Walden1
    #completewith TempestBetrayal
    .cast 70456 >>|cRXP_WARN_Use|r |T135446:0|t[Krennan's Potion of Stealth] |cRXP_WARN_to become|r |T132320:0|t[Stealthed]
    >>|cRXP_WARN_Whilst|r |T132320:0|t[Stealthed]|cRXP_WARN_, you can cast most spells. The|r |T132320:0|t[Stealth] |cRXP_WARN_breaks upon entering combat|r
    >>|cRXP_WARN_NOTE: |cRXP_ENEMY_Mountain Mastiffs|r have increased|r |T132320:0|t[Stealth] |cRXP_WARN_detection|r
    .use 50218
step
    #optional
    #sticky
    #requires KrennanStealth
    #completewith TempestBetrayal
    +|cRXP_WARN_If your|r |T132320:0|t[Stealth] |cRXP_WARN_breaks, use|r |T135446:0|t[Krennan's Potion of Stealth] |cRXP_WARN_to become|r |T132320:0|t[Stealthed] |cRXP_WARN_again (works in combat)|r
    >>|cRXP_WARN_Whilst|r |T132320:0|t[Stealthed]|cRXP_WARN_, you can cast most spells. The|r |T132320:0|t[Stealth] |cRXP_WARN_breaks upon entering combat|r
    >>|cRXP_WARN_NOTE: |cRXP_ENEMY_Mountain Mastiffs|r have increased|r |T132320:0|t[Stealth] |cRXP_WARN_detection|r
    .use 50218
step
    #optional
    #requires Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75,15,0
    .goto 179,76.84,72.10,12,0
    .goto 179,76.88,71.32,12,0
    .goto 179,78.25,70.46,15,0
    .goto 179,79.25,67.92,15,0
    .goto 179,79.29,64.84,35 >>Carefully travel in between the buildings and hills toward |cRXP_ENEMY_Lord Walden|r
step
    #label Walden
    .goto 179,79.29,64.84,30,0
    .goto 179,78.25,65.86,6,0
    .goto 179,78.03,66.47,4,0
    .goto 179,77.83,66.14,4,0
    .goto 179,78.20,65.97,4,0
    .goto 179,78.11,66.23
    >>Kill |cRXP_ENEMY_Lord Walden|r
    >>|cRXP_WARN_He patrols between the outside of the house and the upstairs inside the house|r
    >>|cRXP_WARN_Be careful as he casts|r |T132797:0|t[Seasoned Brandy] |cRXP_WARN_(Ranged instant: Stuns for 4 seconds and deals damage)|r
    .complete 24592,2 --Lord Walden slain (1)
	.mob Lord Walden
step
    #optional
    #completewith next
    .goto 179,82.67,69.63,30,0
    .goto 179,84.22,72.50,30,0
    .goto 179,85.47,73.25,15,0
    .goto 179,79.29,64.84,35 >>Travel toward |cRXP_ENEMY_Baron Ashbury|r
step
    #label Ashbury
    .goto 179,85.44,74.22,15,0
    .goto 179,84.93,74.37,15,0
    .goto 179,84.21,74.80
    >>Kill |cRXP_ENEMY_Baron Ashbury|r
    >>|cRXP_WARN_He patrols between the doors of his house|r
    .complete 24592,1 --Baron Ashbury slain (1)
	.mob Baron Ashbury
step
    #label TempestBetrayal
    .goto 179,78.28,72.07
    .use 50218 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 24592 >>Turn in Betrayal at Tempest's Reach
    .accept 24677 >>Accept Flank the Forsaken
	.target King Genn Greymane
step
    #completewith next
    .goto 179,78.33,71.88
    .vehicle >>Talk to |cRXP_FRIENDLY_Lord Hewell|r to enter a |cRXP_FRIENDLY_Stout Mountain Horse|r ride toward |cRXP_FRIENDLY_Lorna Crowley|r
    .timer 100.5,Flank the Forsaken RP
    .target Lord Hewell
    .skipgossip 38764,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r, |cRXP_FRIENDLY_Magda Whitewall|r, and |cRXP_FRIENDLY_Marcus|r
    .turnin 24677 >>Turn in Flank the Forsaken
    .accept 24575 >>Accept Liberation Day
    .goto 179,70.88,39.84
	.target +Lorna Crowley
    .accept 24675 >>Accept Last Meal
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .accept 24674 >>Accept Slaves to No One
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
step
    #loop
    .goto 179,75.70,39.60,0
    .goto 179,76.24,45.37,0
    .goto 179,77.83,35.81,0
    .goto 179,75.70,39.60,45,0
    .goto 179,76.12,42.77,45,0
    .goto 179,76.24,45.37,45,0
    .goto 179,77.22,46.97,45,0
    .goto 179,78.11,43.54,45,0
    .goto 179,78.05,38.73,45,0
    .goto 179,77.83,35.81,45,0
    >>Kill |cRXP_ENEMY_Brown Stags|r. Loot them for |cRXP_LOOT_Sides of Stag Meat|r
    .complete 24675,1 --Side of Stag Meat (10)
	.mob Brown Stag
step
    #sticky
    #label Enslaved
    #loop
    .goto 179,75.71,31.17,0
    .waypoint 179,82.16,30.73,20,0
    .waypoint 179,81.95,26.18,20,0
    .waypoint 179,78.75,25.15,20,0
    .waypoint 179,79.37,27.64,20,0
    >>Kill |cRXP_ENEMY_Forsaken Slavedrivers|r. Loot them for |T134247:0|t|cRXP_LOOT_[Slaver's Keys]|r
    >>Use the |T134247:0|t|cRXP_LOOT_[Slaver's Keys]|r on the |cRXP_PICK_Ball and Chain|r of the |cRXP_FRIENDLY_Enslaved Villagers|r inside and around Emberstone Mine to free them
    .collect 49881,5,24575,1,-1 --Slaver's Key (5)
    .complete 24575,1 --Enslaved Gilnean freed (5)
	.mob Forsaken Slavedriver
	.target Enslaved Villagers
--XX may need key drop
step
    #optional
    #label Emberstone1
    #completewith Brothogg
    .goto 179,76.71,30.84,10 >>Enter Emberstone Mine
    .isOnQuest 24674
step
    #optional
    #requires Emberstone1
    #completewith Brothogg
    .goto 179,78.13,24.95,15,0
    .goto 179,79.39,26.51,15 >>Travel toward |cRXP_ENEMY_Brothogg the Slavemaster|r inside
    .isOnQuest 24674
step
    #label Brothogg
    .goto 179,80.32,32.11
    >>Kill |cRXP_ENEMY_Brothogg the Slavemaster|r inside
    .complete 24674,1 --Brothogg the Slavemaster slain (1)
	.mob Brothogg the Slavemaster
step
    #optional
    #requires Enslaved
    #completewith next
    .goto 179,76.71,30.84,10 >>Exit Emberstone Mine
    .subzoneskip 4732,1
step << skip
    #requires Enslaved
	#completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .subzoneskip 4732,1
--XX skipping because theres 0 repair vendors in Gilneas past duskhaven?
step
    #requires Enslaved
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magda Whitewall|r, |cRXP_FRIENDLY_Marcus|r, and |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24675 >>Turn in Last Meal
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .turnin 24674 >>Turn in Slaves to No One
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
    .turnin 24575 >>Turn in Liberation Day
    .accept 24676 >>Accept Push Them Out
    .goto 179,70.88,39.84
	.target +Lorna Crowley
step
    #sticky
    #label Infantry
    #loop
	.goto 179,74.71,27.21,0
	.goto 179,73.51,30.96,0
	.goto 179,71.72,31.08,0
	.waypoint 179,74.71,27.21,45,0
	.waypoint 179,74.95,27.98,45,0
    .waypoint 179,73.54,29.99,45,0
	.waypoint 179,73.51,30.96,45,0
    .waypoint 179,72.88,29.98,45,0
	.waypoint 179,72.30,30.37,45,0
    .waypoint 179,71.90,29.52,45,0
	.waypoint 179,71.72,31.08,45,0
    >>Kill |cRXP_ENEMY_Forsaken Infantry|r
	.complete 24676,1 --Forsaken Infantry slain (4)
	.mob Forsaken Infantry
step
    #sticky
    #label Cornell
	.goto 179,72.86,28.42
    >>Kill |cRXP_ENEMY_Executor Cornell|r
    .complete 24676,2 --Executor Cornell (1)
	.mob Executor Cornell
step
	.goto 179,74.15,27.40
    >>Kill |cRXP_ENEMY_Valov the Mad|r
    .complete 24676,3 --Valnov the Mad slain (1)
	.mob Valnov the Mad
step
    #optional
    #requires Cornell
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Infantry
    .goto 179,70.88,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24676 >>Turn in Push Them Out
    .accept 24904 >>Accept The Battle for Gilneas City
	.target Lorna Crowley
step
    .isOnQuest 24904
    .goto 179,70.049,40.897
    .gossip 38553,0 >>Talk to |cRXP_FRIENDLY_Krennan Aranas|r to begin the Battle for Gilneas City. You may be also teleported into Gilneas if a battle is already in progress
    >>|cRXP_WARN_You won't have an arrow to follow during this as you may be teleported to a random location of Gilneas. Follow |cRXP_FRIENDLY_Prince Liam Greymane|r and |cRXP_FRIENDLY_Lord Darius Crowley|r closely|r
    .skipgossip 38553,1
    .target Krennan Aranas
step
    .isOnQuest 24904
    >>|cRXP_WARN_Follow |cRXP_FRIENDLY_Prince Liam Greymane|r and |cRXP_FRIENDLY_Lord Darius Crowley|r through Gilneas|r
    .use 50334 >>|cRXP_WARN_Use the|r |T135340:0|t[Rapier of the Gilnean Patriots] |cRXP_WARN_on your |cRXP_FRIENDLY_Gilnean Militia|r guardians to increase their haste and health regeneration|r
    >>|cRXP_WARN_Enter an |cRXP_FRIENDLY_Emberstone Cannon|r and a |cRXP_FRIENDLY_Damaged Catapult|r to defeat |cRXP_ENEMY_Vile Abominations|r and|r |cRXP_ENEMY_Gorerot|r
    >>|cRXP_WARN_Defeat |cRXP_ENEMY_Lady Sylvanas Windrunner|r by getting her to 40% health|r
    .complete 24904,1 --Battle for Gilneas City Complete (1)
    .timer 17,The Battle for Gilneas City RP
    .target Prince Liam Greymane
    .target Lord Darius Crowley
    .target Emberstone Cannon
    .target Damaged Catapult
    .mob Vile Abomination
    .mob Gorerot
    .mob Lady Sylvanas Windrunner
step
    #optional
    #completewith next
    >>|cRXP_WARN_Wait out the RP|r
    .goto 202,36.89,59.09,8 >>Enter the house
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Talk to |cRXP_FRIENDLY_Lorna Crowley|r inside
    .turnin 24904 >>Turn in The Battle for Gilneas City
    .accept 24902 >>Accept The Hunt For Sylvanas
    .timer 170,The Hunt For Sylvanas RP
	.target Lorna Crowley
step
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Follow |cRXP_FRIENDLY_Tobias Mistmantle|r closely or he will not move and may despawn|r
    >>|cRXP_WARN_Follow him until he hides in the water inside the Cathedral, then Wait out the RP|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Tobias Mistmantle|r despawns, skip this step|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24902
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Return to |cRXP_FRIENDLY_Lorna Crowley|r
    .isQuestComplete 24902
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Talk to |cRXP_FRIENDLY_Lorna Crowley|r inside
    .turnin 24902 >>Turn in The Hunt For Sylvanas
    .accept 24903 >>Accept Vengeance or Survival
	.target Lorna Crowley
    .isQuestComplete 24902
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Talk to |cRXP_FRIENDLY_Lorna Crowley|r inside
    .accept 24903 >>Accept Vengeance or Survival
	.target Lorna Crowley
    .isQuestTurnedIn 24902
step
    #optional
    #completewith next
    .abandon 24902 >>Abandon The Hunt For Sylvanas
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Talk to |cRXP_FRIENDLY_Lorna Crowley|r inside
    .accept 24902 >>Accept The Hunt For Sylvanas
    .timer 193.5,The Hunt For Sylvanas RP
	.target Lorna Crowley
step
    #optional
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Follow |cRXP_FRIENDLY_Tobias Mistmantle|r closely or he will not move and may despawn|r
    >>|cRXP_WARN_Follow him until he hides in the water inside the Cathedral, then Wait out the RP|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24092
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Return to |cRXP_FRIENDLY_Lorna Crowley|r
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r inside
    .turnin 24902 >>Turn in The Hunt For Sylvanas
    .accept 24903 >>Accept Vengeance or Survival
	.target Lorna Crowley
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r inside
    .accept 24903 >>Accept Vengeance or Survival
	.target Lorna Crowley
step
    #optional
    #requires GennHouse1
    #completewith Vengeance
    .goto 202,32.10,58.01,8 >>Enter |cRXP_FRIENDLY_King Genn Greymane|r's house
step
    #label Vengeance
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 24903 >>Turn in Vengeance or Survival
    .accept 24920 >>Accept Slowing the Inevitable
	.target King Genn Greymane
step
    #optional
    #label RidingBat
    #completewith Survival
    .goto 202,30.24,60.96
    .vehicle >>Enter the |cRXP_FRIENDLY_Captured Riding Bat|r
    .timer 21,Slowing the Inevitable RP
    .target Captured Riding Bat
step
    #optional
    #requires RidingBat
    #completewith Survival
    .goto 179,57.11,39.50,5 >>|cRXP_WARN_Wait out the RP|r
step
    #label Survival
    .goto 179,54.83,35.83,-1
    .goto 179,56.43,28.49,-1
    .goto 179,56.77,20.70,-1
    .goto 179,57.12,15.66,-1
    .goto 179,61.45,19.86,-1
    .goto 179,64.89,27.43,-1
    .goto 179,61.30,35.14,-1
    >>Whilst on the |cRXP_FRIENDLY_Captured Riding Bat|r:
    >>Kill |cRXP_ENEMY_Forsaken Plaguesmiths|r, |cRXP_ENEMY_Forsaken Invaders|r, and |cRXP_ENEMY_Forsaken Catapults|r
    >>Cast |T133709:0|t[Iron Bomb] (1) (Ranged Instant: Deals damage)
    .complete 24920,2 --Invading Forsaken (40)
    .complete 24920,1 --Forsaken Catapult slain (6)
    .mob Forsaken Catapult
    .mob Invading Forsaken
step
    #optional
    #completewith next
    >>Whilst on the |cRXP_FRIENDLY_Captured Riding Bat|r:
    .goto 202,30.43,60.88,5 >>Cast |T132182:0|t[Fly Back] (2) to return to |cRXP_FRIENDLY_King Genn Greymane|r
step
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 24920 >>Turn in Slowing the Inevitable
    .accept 24678 >>Accept Knee-Deep
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 202,33.75,57.09,6 >>Go downstairs into the crypt
step
    #optional
    #completewith Knee
    .goto 179,53.56,55.10,20,0
    .goto 179,49.87,57.26,10,0
    >>|cRXP_WARN_Use the|r |T135432:0|t[Half-Burnt Torch] |cRXP_WARN_to scare away |cRXP_ENEMY_Putrescent Maggots|r, |cRXP_ENEMY_Underground Spiders|r, and|r |cRXP_ENEMY_Graveyard Rats|r
    .goto 179,49.78,57.88,6 >>Travel toward the end of the crypt
    .mob Putrescent Maggot
    .mob Underground Spider
    .mob Graveyard Rat
    .use 50220
step
    #label Knee
    .goto 179,49.71,57.28,8,0
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r outside
    .turnin 24678 >>Turn in Knee-Deep
    .accept 24602 >>Accept Laid to Rest
    .target Krennan Aranas
step
    #loop
    .goto 179,48.60,54.28,0
    .goto 179,46.85,54.23,0
    .goto 179,46.71,56.03,0
    .goto 179,49.33,49.77,0
    .goto 179,51.18,54.22,0
    .goto 179,48.60,54.28,15,0
    .goto 179,48.08,54.11,15,0
    .goto 179,47.59,53.54,15,0
    .goto 179,46.85,54.23,15,0
    .goto 179,48.04,56.35,15,0
    .goto 179,46.71,56.03,15,0
    .goto 179,45.76,54.87,15,0
    .goto 179,45.80,53.49,15,0
    .goto 179,46.79,53.32,15,0
    .goto 179,48.82,50.70,15,0
    .goto 179,49.33,49.77,15,0
    .goto 179,51.01,53.23,15,0
    .goto 179,51.18,54.22,15,0
    >>Open the |cRXP_PICK_Disturbed Soil|r on the ground. Loot it for its |cRXP_LOOT_Unearthed Mementos|r
    .complete 24602,1 --Unearthed Memento (5)
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 24602 >>Turn in Laid to Rest
    .accept 24679 >>Accept Patriarch's Blessing
    .target Krennan Aranas
step
    .goto 179,48.89,53.14
    >>Place the |T134344:0|t[Blessed Offerings] at the Shrine
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r
    .complete 24679,1 --Offering placed (1)
    .use 51956
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 24679 >>Turn in Patriarch's Blessing
    .accept 24680 >>Accept Keel Harbor
	.target Krennan Aranas
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24680 >>Turn in Keel Harbor
    .accept 24681 >>Accept They Have Allies, But So Do We
	.target Lord Darius Crowley
step
    #optional
    #label Glaive
	#completewith Allies
    .goto 179,42.47,37.84
    .vehicle >>Enter the |cRXP_FRIENDLY_Glaive Thrower|r
    .target Glaive Thrower
step
    #optional
    #requires Glaive
    #completewith Allies
    .goto 179,40.32,38.58,20,0
    .goto 179,35.59,35.80
    >>Whilst in the |cRXP_FRIENDLY_Glaive Thrower|r:
    .subzone 4725 >>Travel toward The Headlands
step
    #label Allies
    #loop
    .goto 179,35.03,36.16,0
    .goto 179,31.05,20.09,0
    .goto 179,28.07,23.84,0
    .goto 179,26.35,29.74,0
    .goto 179,30.78,38.88,0
    .goto 179,35.03,36.16,60,0
    .goto 179,31.05,20.09,60,0
    .goto 179,29.52,21.20,60,0
    .goto 179,28.07,23.84,60,0
    .goto 179,27.64,25.32,60,0
    .goto 179,26.83,26.13,60,0
    .goto 179,27.64,27.00,60,0
    .goto 179,26.35,29.74,60,0
    .goto 179,26.56,31.40,60,0
    .goto 179,30.78,38.88,60,0
    >>Whilst in the |cRXP_FRIENDLY_Glaive Thrower|r:
    >>Kill |cRXP_ENEMY_Orc Raiders|r, |cRXP_ENEMY_Wolfmaw Outriders|r, and |cRXP_ENEMY_Orcish War Machines|r
    >>Cast |T132330:0|t[Launch Glaive] (1) (Ranged Instant: Deals damage and knocks back)
    >>|T236303:0|t[Glaive Barrage] (2) (Ranged Instant: Deals A LOT of damage and knocks back)
    >>|T136106:0|t[Double Speed] (3) (Self Instant: Increases movespeed by 100% for 10 seconds)
    >>|cRXP_WARN_Do NOT let the |cRXP_FRIENDLY_Glaive Thrower|r die|r
    .complete 24681,1 --Orc Raider slain (40)
    .complete 24681,2 --Wolfmaw Outrider slain (8)
    .complete 24681,3 --Orcish War Machine slain (4)
step
    #optional
    #completewith next
    .goto 179,41.93,37.60
    >>Whilst in the |cRXP_FRIENDLY_Glaive Thrower|r:
    >>Cast |T136106:0|t[Double Speed] (3) (Self Instant: Increases movespeed by 100% for 10 seconds)
    .subzone 4726 >>Return to Keel Harbor
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24681 >>Turn in They Have Allies, But So Do We
	.target Lord Darius Crowley
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .accept 26706 >>Accept Endgame
	.target Lorna Crowley
step
	#completewith next
    .goto 179,41.65,36.14
    >>|cRXP_WARN_NOTE: This Quest is on an independant timer, meaning you will have to wait up to 5 minutes to be able to enter the|r |cRXP_FRIENDLY_Hippogryph|r
    .vehicle >>Enter the |cRXP_FRIENDLY_Hippogryph|r
	.timer 58,Endgame RP
step
    >>Kill |cRXP_ENEMY_Gunship Grunts|r on the top deck
    >>After clearing the top deck, click the |cRXP_PICK_Rope|r in the middle of the boat to follow |cRXP_FRIENDLY_Lorna Crowley|r
    >>Kill |cRXP_ENEMY_Gunship Grunts|r whilst following |cRXP_FRIENDLY_Lorna Crowley|r
    >>|cRXP_WARN_After |cRXP_FRIENDLY_Lorna Crowley|r sets the explosives, wait out the RP|r
    .complete 26706,1 --Gunship destroyed (1)
	.timer 43,Endgame RP
    .mob Gunship Grunt
    .target Lorna Crowley
--XX Gunship moves, can't use waypoints and timer may be off
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 26706 >>Turn in Endgame
	.target Lorna Crowley
step
    .goto 179,42.59,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Nightwind|r
    .accept 14434 >>Accept Rut'theran Village
    .turnin 14434 >>Turn in Rut'theran Village
	.target Admiral Nightwind
step
    .goto 57,55.229,89.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .accept 28517 >>Accept The Howling Oak
    .target Krennan Aranas
step
    #optional
    #label Darnassus
    #completewith Oak
    .goto 57,55.045,88.301
    .zone 89 >>Go through the portal to Darnassus
--XX Training around here
step
    #optional
    #requires Darnassus
    #completewith Oak
    .goto 89,48.960,19.200,20,0
    .goto 89,48.126,14.432,60 >> Enter The Howling Oak
step
    #label Oak
    .goto 89,48.126,14.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .turnin 28517 >>Turn in The Howling Oak
    .accept 26385 >>Accept Breaking Waves of Change
    .target Genn Greymane
--XX no longer "King"
--XX No need to set hs as it adjusts automatically
--XX Accepting Breaking Waves closes Hero's Call Darkshore (supposedly)
step
    #optional
    #label DarkshoreTravel
    #completewith Darkshore
    .goto 89,48.960,19.200,20 >> Exit The Howling Oak
step
    #optional
    #requires DarkshoreTravel
    #completewith Darkshore
    .goto 89,36.547,50.413
    .zone 57 >>Go back through the portal to Rut'Theran Village
step
    #label Darkshore
    .goto 57,55.415,88.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Lor'Danel >> Fly to Lor'danel
    .target Vesprystus
    .zoneskip 62
]])
