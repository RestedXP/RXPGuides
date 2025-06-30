local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Kezan
#next 6-11 The Lost Isles
#version 1
--#group RXP Cataclysm (H) << cata
#group RXP MoP (H) << mop
#defaultfor Goblin
#group RXP Cataclysm 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    .goto 194,56.44,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sassy|r
    .accept 14138 >>Accept Taking Care of Business
    .target Sassy Hardwrench
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dampwick|r
    .turnin 14138 >>Turn in Taking Care of Business
    .accept 14069 >>Accept Good Help is Hard to Find
    .accept 14075 >>Accept Trouble in the Mines
    .target Foreman Dampwick
step
    #completewith next
    .goto 194,65.52,87.82,10 >>Enter the mines
step
    #completewith KezanTroubleintheMines
    >>Click on the |cRXP_FRIENDLY_Defiant Trolls|r. These can be found outside of the mines as well.
    .goto 194,66.02,82.39,0,0
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    #label KezanTroubleintheMines
    >>Kill |cRXP_ENEMY_Tunneling Worms|r
    .goto 197,50.73,59.55
    .complete 14075,1 --6/6 Tunneling Worm slain
    .mob Tunneling Worm
step
    #completewith next
    .goto 194,65.52,87.82,8 >>Leave the mines
step
    >>Click on the |cRXP_FRIENDLY_Defiant Trolls|r
    .goto 194,72.45,83.45,50,0
    .goto 194,70.39,77.73,30,0
    .goto 194,68.74,82.87
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dampwick|r
    .turnin 14075 >>Turn in Trouble in the Mines
    .turnin 14069 >>Turn in Good Help is Hard to Find
    .accept 25473 >>Accept Kaja'Cola
    .target Foreman Dampwick
step
    .goto 194,56.4,76.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sassy Hardwrench|r
    .turnin 25473 >>Turn in Kaja'Cola
    .accept 28349 >>Accept Megs in Marketing
    .target Sassy Hardwrench
step
    .goto 194,58.3,76.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Megs Dreadshredder|r
    .turnin 28349 >>Turn in Megs in Marketing
    .accept 14071 >>Accept Rolling with my Homies
    .target Megs Dreadshredder
step
    .goto 194,58.9,76.3
    >>Use the |T134246:0|t[Keys to the Hot Rod]
    >>|cRXP_WARN_You can keybind the "Active Items" window in RestedXP by pressing escape, then going under Options->Keybindings->RestedXP Guides.|r
    .use 46856
    .complete 14071,1 --1/1 Keys to the Hot Rod used
step
    .goto 194,59.93,85.52,15,0
    .goto 194,58.9,85.5
    >>Travel toward |cRXP_FRIENDLY_Izzy|r
    >>|cRXP_WARN_Use|r |T135788:0|t[Punch] |cRXP_WARN_to increase your speed|r
    .complete 14071,2 --1/1 Izzy picked up
    .target Izzy
step
    .goto 194,59.93,85.52,15,0
    .goto 194,57.95,70.46,20,0
    .goto 194,60.6,49.9
    >>Travel toward |cRXP_FRIENDLY_Gobber|r
    >>|cRXP_WARN_Use|r |T135788:0|t[Punch] |cRXP_WARN_to increase your speed|r
    .complete 14071,4 --1/1 Gobber picked up
    .target Gobber
step
    .goto 194,48.5,38.3
    >>Travel toward |cRXP_FRIENDLY_Ace|r
    >>|cRXP_WARN_Use|r |T135788:0|t[Punch] |cRXP_WARN_to increase your speed|r
    .complete 14071,3 --1/1 Ace picked up
    .target Ace
step
    #completewith next
    .goto 194,61.98,54.83,30,0
    .goto 194,60.13,64.59,30,0
    .goto 194,57.90,71.12,20 >>Follow the street back up
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Megs|r, |cFF00FF25Sassy|r and |cFF00FF25Chip|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Megs|r, |cFF00FF25Sassy|r and |cFF00FF25Candy|r << Male
    .turnin 14071 >>Turn in Rolling with my Homies
    .accept 24567 >>Accept Report for Tryouts
    .goto 194,58.28,76.57
    .accept 14070 >>Accept Do it Yourself
    .goto 194,56.43,76.95
    .accept 26711 >>Accept Off to the Bank << Female
    .goto 194,56.32,76.77 << Female
    .accept 26712 >>Accept Off to the Bank << Male
    .goto 194,56.30,77.12 << Male
    .target Megs Dreadshredder
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Make sure to use your|r |T134246:0|t[Keys to the Hot Rod]
    .use 46856
step
    #completewith next
    .goto 194,57.10,78.44,10,0
    .goto 194,53.39,75.13,20,0
    .goto 194,47.36,78.46,30 >> Follow the arrow around the house
step
    .goto 194,45.19,74.76
    >>Attack |cFFFF5722Bruno|r
    .complete 14070,1 --1/1 Bruno Flameretardant beaten down
    .mob Bruno Flameretardant
step
    .goto 194,41.6,81.9
    >>Attack |cFFFF5722Sudsy|r
    .complete 14070,4 --1/1 Sudsy Magee beaten down
    .mob Sudsy Magee
step
    .goto 194,37.47,75.97,15,0
    .goto 194,35.0,77.8
    >>Attack |cFFFF5722Jack|r
    .complete 14070,3 --1/1 Jack the Hammer beaten down
    .mob Jack the Hammer
step
    .goto 194,36.84,69.95
    >>Attack |cFFFF5722Frankei|r
    .complete 14070,2 --1/1 Frankie Gearslipper beaten down
    .mob Frankie Gearslipper
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Make sure to use your|r |T134246:0|t[Keys to the Hot Rod]
    .use 46856
step
    .goto 194,34.16,69.32,10,0
    .goto 194,32.27,63.79,12,0
    .goto 194,29.72,64.52,16,0
    .goto 194,30.11,71.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEnter the bank and talk to |cFF00FF25FBok Bank Teller|r
    .turnin 26711 >>Turn in Off to the Bank <<Female
    .accept 14110 >>Accept The New You <<Female
    .turnin 26712 >>Turn in Off to the Bank <<Male
    .accept 14109 >>Accept the New You <<Male
    .target FBok Bank Teller
step
    #completewith TheNewYou
    .vehicle 34840 >>|cFFFCDC00Make sure to use|r |T134246:0|t[Keys to the Hot Rod]
    .use 46856
step
    .goto 194,29.80,63.62,16,0
    .goto 194,34.66,54.73,10,0
    .goto 194,37.63,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Szabo|r
    >>Obtain a |cRXP_LOOT_a Hip New Outfit|r from him
    .complete 14110,2 << Female --1/1 Hip New Outfit
    .complete 14109,2 << Male --1/1 Hip New Outfit
    .use 46856
    .skipgossip
    .target Szabo
step
    .goto 194,34.87,45.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gappy|r
    >>Obtain |cRXP_LOOT_Shiny Bling|r from him
    .complete 14110,1 << Female --1/1 Shiny Bling
    .complete 14109,1 << Male --1/1 Shiny Bling
    .skipgossip
    .target Gappy Silvertooth
step
    #label TheNewYou
    .goto 194,40.43,45.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Missa|r
    >>Obtain |cRXP_LOOT_Cool Shades |rfrom her
    .complete 14110,3 << Female --1/1 Cool Shades
    .complete 14109,3 << Male --1/1 Cool Shades
    .skipgossip
    .target Missa Spekkies
step
    .goto 194,42.57,55.34,20,0
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Crosscheck|r
    .turnin 24567 >>Turn in Report for Tryouts
    .accept 24488 >>Accept The Replacements
    .target Coach Crosscheck
step
    #loop
    .goto 194,51.883,60.156,0
    .goto 194,46.133,63.902,0
    .waypoint 194,51.883,60.156,25,0
    .waypoint 194,49.085,69.812,25,0
    .waypoint 194,46.133,63.902,25,0
    .waypoint 194,43.062,62.732,25,0
    .waypoint 194,44.868,54.606,25,0
    >>Pick up the |cFFDB2EEFReplacements Parts|r from the ground while on the |cFFFCDC00Hot Rod|r
    .complete 24488,1 --6/6 Replacement Parts
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Crosscheck|r
    .turnin 24488 >>Turn in The Replacements
    .accept 24502 >>Accept Necessary Roughness
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    >>Get into the |cRXP_FRIENDLY_Bilgewater Buccaneer|r
    .complete 24502,1 --1/1 Bilgewater Buccaneer
    .target Bilgewater Buccaneer
step
    >>Use |T134480:0|t[Throw Footbomb] (1) to kill the |cRXP_ENEMY_Steamwheedle Sharks|r in front of you
    .goto 194,47.7,57.7
    .complete 24502,2 --8/8 Steamwheedle Shark Footbombed
step
    >>Click on the quest in your quest log, you may have to dismount to accept the next quest from |cFF00FF25Crosscheck|r
    .goto 194,48.79,57.79
    .turnin 24502 >>Turn in Necessary Roughness by clicking onto the quest under your minimap
    --.accept 24503 >>Accept Fourth and Goal << Male
    .accept 28414 >>Accept Fourth and Goal
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    .vehicle >> Get into the |cRXP_FRIENDLY_Bilgewater Buccaneer|r
    .target Bilgewater Buccaneer
step
    >>Use |T134480:0|tKick Footbomb (1)
    --.complete 24503,1 << Male --1/1 Footbomb Kicked Through Smokestacks
    .complete 28414,1 --1/1 Footbomb Kicked Through Smokestacks
step
    #completewith next
    +|cFFFCDC00Leave the vehicle|r
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Crosscheck|r
    .turnin 24503 >>Turn in Fourth and Goal
    --.turnin 28414 >>Turn in Fourth and Goal << Male
    .accept 24520 >>Accept Give Sassy the News
    .target Coach Crosscheck
step
    #completewith next
    .hs >>Hearth to KTC Headquarters
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sassy|r and |cFF00FF25Chip|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sassy|r and |cFF00FF25Candy|r << Male
    .turnin 24520 >>Turn in Give Sassy the News
    .turnin 14070 >>Turn in Do it Yourself
    .goto 194,56.42,76.94
    .turnin 14110 >>Turn in The New You << Female
    .goto 194,56.32,76.77 << Female
    .turnin 14109 >>Turn in The New You << Male
    .goto 194,56.30,77.12 << Male
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Slinky|r
    .accept 14010 >>Accept Eviscerate
    .train 2098 >> Train |T132292:0|t[Eviscerate] << Cata
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Warrior-Matic NX-01|r
    .accept 14013 >>Accept Charge
    .train 100 >> |T132337:0|t[Charge] << Cata
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bamm|r
    .accept 14007 >>Accept Steady Shot
    .train 56641 >>Train |T132213:0|t[Steady Shot] << Cata
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maxx|r
    .accept 14011 >>Accept Primal Strike
    .train 73899 >>Train |T460956:0|t[Primal Strike] << Cata
    .target Maxx Avalanche
step << Mage
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Fizz|r
    .accept 14008 >>Accept Arcane Missiles
    .train 5143 >>Train |T136096:0|t[Arcane Missiles] << Cata
    .target Fizz Lighter
    --VV Quest id is 14008#.?
step << Warlock
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Evol|r
    .accept 14012 >>Accept Immolate
    .train 348 >>Train |T135817:0|t[Immolate] << Cata
    .target Evol Fingers
step << Priest
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Goldskimmer|r
    .accept 14009 >>Accept Flash Heal
    .train 2061 >>Train |T135907:0|t[Flash Heal] << Cata
    .target Sister Goldskimmer
step << Rogue
    .goto 194,60.91,77.39
	>>Cast |T132292:0|t[Eviscerate] on a |cFFFF5722Training Dummy|r
	.complete 14010,2 << !Cata --Cast Eviscerate (x3)
	.complete 14010,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 194,60.91,77.39
	>>Cast |T132337:0|t[Charge] on a |cFFFF5722Training Dummy|r
	.complete 14013,2 << !Cata --Cast Charge (x3)
	.complete 14013,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 194,60.91,77.39
	>>Cast |T132213:0|t[Steady Shot] on a |cFFFF5722Training Dummy|r
	.complete 14007,2 << !Cata --Steady Shot (x3)
	.complete 14007,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Shaman
    .goto 194,60.91,77.39
	>>Cast |T460956:0|t[Primal Strike] on a |cFFFF5722Training Dummy|r
	.complete 14011,2 << !Cata --Cast Primal Strike (x3)
	.complete 14011,1 << Cata --Cast Primal Strike (x3)
	.mob Training Dummy
step << Mage
    .goto 194,60.91,77.39
	>>Cast |T136096:0|t[Arcane Missiles] on a |cFFFF5722Training Dummy|r
	.complete 14008,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 14008,1 << Cata --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Warlock
    .goto 194,60.91,77.39
	>>Cast |T135817:0|t[Immolate] on a |cFFFF5722Training Dummy|r
	.complete 14012,2 << !Cata --Cast Immolate (x3)
	.complete 14012,1 << Cata --Cast Immolate (x3)
	.mob Training Dummy
step << Priest
    .goto 194,58.24,77.40
	>>Cast |T135907:0|t[Flash Heal] on a |cFF00FF25Injured Employee|r
	.complete 14009,2 << !Cata --Cast Flash Heal (x5)
	.complete 14009,1 << Cata --Cast Flash Heal (x5)
	.target Injured Employee
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Slinky|r
    .turnin 14010 >>Turn in Eviscerate
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Warrior-Matic NX-01|r
    .turnin 14013 >>Turn in Charge
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bamm|r
    .turnin 14007 >>Turn in Steady Shot
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maxx|r
    .turnin 14011 >>Turn in Primal Strike
    .target Maxx Avalanche
step << Mage
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Fizz|r
    .turnin 14008 >>Turn in Arcane Missiles
    .target Fizz Lighter
    --VV Quest id is 14008#.?
step << Warlock
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Evol|r
    .turnin 14012 >>Turn in Immolate
    .target Evol Fingers
step << Priest
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Goldskimmer|r
    .turnin 14009 >>Turn in Flash Heal
    .target Sister Goldskimmer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Chip|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Candy|r << Male
    .accept 14153 >>Accept Life of the Party << Female
    .goto 194,56.32,76.77 << Female
    .accept 14113 >>Accept Life of the Party << Male
    .goto 194,56.30,77.12 << Male
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    >>Use |T132809:0|t[Bubbly] (1) on |cRXP_FRIENDLY_Goblins|r who drink
    >>Use the |T132806:0|t[Bucket] (2) on drunk/confused looking |cRXP_FRIENDLY_Goblins|r
    >>|T133836:0|t[Dance] (3) with |cRXP_FRIENDLY_Goblins|r who dance
    >>Use |T134285:0|t[Fireworks] (4) on |cRXP_FRIENDLY_Goblins|r with sparks
    >>Use |T237329:0|t[Hors D'oeuvres] (5) on |cRXP_FRIENDLY_Goblins|r who eat
    .goto 194,59.56,78.75,15,0
    .goto 194,59.09,80.31,10,0
    .goto 194,60.59,82.98,15,0
    .goto 194,60.82,86.33,15,0
    .goto 194,60.6,83.4
    .complete 14153,1 << Female --10/10 Partygoer entertained
	.complete 14113,1 << Male --10/10 Partygoer entertained
    .target Kezan Partygoer
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sassy|r
    .turnin 14153 >>Turn in Life of the Party << Female
	.turnin 14113 >>Turn in Life of the Party << Male
    .accept 14115 >>Accept Pirate Party Crashers
    .target Sassy Hardwrench
step
    #loop
    .goto 194/648,1329.20007,-8457.50000,0
    .waypoint 194/648,1329.20007,-8457.50000,20,0
    .waypoint 194/648,1354.90002,-8454.50000,20,0
    .waypoint 194/648,1382.70007,-8468.70020,20,0
    .waypoint 194/648,1377.70007,-8508.90039,20,0
    .waypoint 194/648,1340.09998,-8512.29980,20,0
    .waypoint 194/648,1302.09998,-8503.70020,20,0
    .waypoint 194/648,1304.90002,-8457.29980,20,0
    >>Kill |cRXP_ENEMY_Pirate Party Crashers|
    .complete 14115,1 --12/12 Pirate Party Crasher slain
    .target Pirate Party Crasher
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sassy|r
    .turnin 14115 >>Turn in Pirate Party Crashers
    .accept 14116 >>Accept The Uninvited Guest
    .target Sassy Hardwrench
step
    #completewith next
    .goto 194,56.41,75.33,5,0
    .goto 194,55.99,75.65,4,0
    .goto 194,55.96,77.07,5 >>Go up the stairs
step
    .goto 194,56.77,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gallywix|r
    .turnin 14116 >>Turn in The Uninvited Guest
    .accept 14120 >>Accept A Bazillion Macaroons?!
    .target Trade Prince Gallywix
step
    .goto 194,59.67,77.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tJump out of the window and talk to |cFF00FF25Sassy|r
    .turnin 14120 >>Turn in A Bazillion Macaroons?!
    .accept 14122 >>Accept The Great Bank Heist
    .target Sassy Hardwrench
step
    .goto 194,60.054,78.092
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r
    .accept 14121 >>Accept Robbing Hoods
    .target Megs Dreadshredder
step
    .goto 194,62.965,77.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r
    .accept 14124 >>Accept Liberate the Kaja'mite
    .target Foreman Dampwick
step
    #completewith next
    .use 46856
    .vehicle 34840 >>|cRXP_WARN_Make sure to use your|r |T134246:0|t[Keys to the Hot Rod]|cRXP_WARN_. While in the vehicle you are immune to fall damage|r
step
    .goto 194,67.27,77.69,10,0
    .goto 194,69.59,79.35,10,0
    .goto 194,69.03,83.16,10,0
    .goto 194,66.64,84.03,10,0
    .goto 194,66.09,87.34,10,0
    .goto 194,64.34,83.48,10,0
    .goto 194,64.44,83.52
    >>Aim the |T133712:0|t[Kablooey Bombs] on |cRXP_PICK_Kaja'mite Deposits|r and loot the |cFF00BCD4Kaja'mite Chunks|r on the ground near the mines
    .use 48768
    .complete 14124,1 --12/12 Kaja'mite Chunk
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Slinky|r. She moves around
    .accept 14123 >>Accept Waltz Right In
    .target Slinky Sharpshiv
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_Make sure to use your|r |T134246:0|t[Keys to the Hot Rod]|cRXP_WARN_. While in the vehicle you are immune to fall damage|r
step
    #completewith next
    .goto 194,57.94,69.61,15,0
    .goto 194,47.67,60.09,25,0
    .goto 194,38.63,78.42,25,0
    .goto 194,32.71,63.68,10,0
    .goto 194,29.79,63.75,10,0
    >>Drive over |cFFFF5722Hired Looters|r when you see them
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    .goto 194,29.35,69.57
    >>Click on the |cRXP_PICK_First Bank of Kezan Vault|r
    >>|cRXP_WARN_Follow the instructions shown in the center of your screen|r
    .complete 14122,1 --1/1 First Bank of Kezan Vault
    .complete 14122,2 --1/1 Personal Riches
step
    .goto 194,35.91,53.68,20,0
    .goto 194,41.33,53.03,20,0
    .goto 194,41.16,42.01,20,0
    .goto 194,35.96,44.39
    >>Drive over |cFFFF5722Hired Looters|r when you see them
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Make sure to use Keys to the Hot Rod|r.
step
    #completewith KezanWaltzRightIn
    +|cFFFCDC00Avoid patrolling|r |cFFFF5722Villa Mooks|r |cFFFCDC00and|r |cFFFF5722Keesnout Potbellys|r |cFFFCDC00because they can detect and kill you|r
    .mob Keesnout Potbellys
step
    .goto 194,24.20,40.67,30,0
    .goto 194,19.89,30.65
    >>Pick up |cFF00BCD4The Ultimate Bomb|r
    .complete 14123,3 --1/1 The Ultimate Bomb
step
    .goto 194,12.88,35.18
    >>Pick up |cFF00BCD4The Goblin Lisa|r
    .complete 14123,2 --1/1 The Goblin Lisa
step
    #completewith next
    .goto 194,17.66,44.49,10,0
    .goto 194,17.66,45.92,10,0
    .goto 194,16.79,46.89,8,0
    .goto 194,17.84,46.82,8,0
    .goto 194,17.34,45.91,8 >>Go up the stairs
step
    #label KezanWaltzRightIn
    .goto 194,16.72,46.26
    >>Pick up |cFF00BCD4Maldy's Falcon|r
    .complete 14123,1 --1/1 Maldy's Falcon
step
    #completewith next
    >>Jump out of the window and run into hostile |cFFFF5722Villa Mooks|r or |cFFFF5722Keesnout Potbellys|r
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
    .goto 194,17.65,45.94,5,0
    .goto 194,17.00,33.96
    .mob Keesnout Potbelly
step
    #completewith next
    .goto 194,61.89,54.13,25,0
    .goto 194,57.90,71.17,15 >>Follow the way to the Headquarters
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Slinky|r. She moves around
    .turnin 14123 >>Turn in Waltz Right In
    .target Slinky Sharpshiv
step
    .goto 194,62.965,77.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r
    .target Foreman Dampwick
    .turnin 14124 >>Turn in Liberate the Kaja'mite
step
    .goto 194,60.036,78.125
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r
    .target Megs Dreadshredder
    .turnin 14121 >>Turn in Robbing Hoods
step
    .goto 194,59.607,77.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .target Sassy Hardwrench
    .turnin 14122 >>Turn in The Great Bank Heist
    .accept 14125 >>Accept 447
step
    .goto 194/648,1371.00000,-8420.79980
    >>Enter the house and Click on the |cFF00BCD4Defective Generator|r
    .complete 14125,1 --1/1 Overload the Defective Generator
step
    .goto 194,56.05,74.67
    >>Click on the |cFF00BCD4Leaky Stove|r
    .complete 14125,2 --1/1 Activate the Leaky Stove
step
    .goto 194,55.98,77.11,5,0
    .goto 194,56.64,76.33,5,0
    .goto 194,56.61,74.85
    >>Go up the stairs and click on the |cFF00BCD4Flammable Bed|r
    .complete 14125,3 --1/1 Drop a Cigar on the Flammable Bed
step
    .goto 194,56.60,76.93,8,0
    .goto 194,59.49,76.81
    >>Jump out of the window and click on the |cFF00BCD4Gasbot Control Panel|r
    >>|cRXP_WARN_Wait for the short roleplay|r
    .timer 17,447 RP
    .complete 14125,4 --1/1 KTC Headquarters Set Ablaze with Gasbot!
step
    .goto 194,59.521,76.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Claims Adjuster|r
    .target Claims Adjuster
    .turnin 14125 >>Turn in 447
step
    .goto 194,59.607,77.106
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .target Sassy Hardwrench
    .accept 14126 >>Accept Life Savings
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Make sure to use your|r |T134246:0|t[Keys to the Hot Rod]
step
    #completewith next
    .goto 194,23.18,39.30,15 >>Travel toward the Gallywix's Villa
    .subzoneskip 4768
step
    #completewith next
    .goto 194,22.31,16.78
    .cast 92633 >> Click the cannon
step
    .goto 194,20.76,13.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gallywix|r
    .turnin 14126 >>Turn in Life Savings
    .target Trade Prince Gallywix
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-11 The Lost Isles
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata
#group RXP MoP (H) << mop
#defaultfor Goblin
#group RXP Cataclysm 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step
    #completewith next
    >>Sometimes you can get stuck and have to relog or /reload
    .timer 45 >> Don't Go Into the Light RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zapnozzle|r and |cFF00FF25Gizmo|r
    .turnin 14239 >>Turn in Don't Go Into the Light
    .goto 174,24.62,77.86
    .accept 14001 >>Accept Goblin Escape Pods
    .goto 174,24.65,77.94
    .target Doc Zapnozzle
    .target Geargrinder Gizmo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Zapnozzle|r
    >>Sometimes you can get stuck and have to relog or /reload
    .goto 174,24.6,77.9
    .turnin 14239 >>Turn in Don't Go Into the Light
    .target Doc Zapnozzle
step
    .goto 174,24.65,77.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geargrinder Gizmo|r
    .accept 14001 >>Accept Goblin Escape Pods
    .target Geargrinder Gizmo
step
    >>Click on the |cRXP_PICK_Goblin Escape Pods|r
    .goto 174,22.99,75.62,30,0
    .goto 174,25.50,77.65,30,0
    .goto 174,25.37,75.44
    .complete 14001,1 --6/6 Goblin Survivors Rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,27.9,75.5
    .turnin 14001 >>Turn in Goblin Escape Pods
    .accept 14014 >>Accept Get Our Stuff Back!
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .goto 174,27.85,74.29
    .accept 14473 >>Accept It's Our Problem Now
    .trainer >>Train your class spells << Shaman Cata
    .target Maxx Avalanche
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .goto 174,27.95,74.43
    .accept 14019 >>Accept Monkey Business
    .trainer >>Train your class spells << Hunter Cata
    .target Bamm Megabomb
step << Priest Cata
    .goto 174,27.697,74.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >>Train your class spells
    .target Sister Goldskimmer
step << Mage Cata
    .goto 174,27.715,74.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >>Train your class spells
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,28.419,75.648
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >>Train your class spells
    .target Evol Fingers
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warrior-Matic NX-01|r
    .trainer >>Train your class spells
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,28.654,76.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r
    .trainer >>Train your class spells
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
--step << Hunter
    --#completewith next
    --.cast 1515 >>Tame a |cRXP_ENEMY_Teraptor Hatchling|r
    --.mob Teraptor Hatchling
    --VV See if this is needed in Cataclysm
step
    #sticky
    #label TheLostIslesTeraMonkeys
    >>Use |T133979:0|t[Nitro-Potassium Bananas] on |cRXP_ENEMY_Bomb Throwing Monkeys|r and kill |cRXP_ENEMY_Teraptor Hatchlings|r
    .use 49028
    .goto 174,27.32,70.14,0,0
    .complete 14473,1 --6/6 Teraptor Hatchling slain
    .complete 14019,1 --10/10 Bomb-Throwing Monkeys Fed
    .mob Bomb Throwing Monkeys
    .mob Teraptor Hatchlings
step
    #loop
    .goto 174,29.73,75.42,15,0
    .goto 174,30.35,74.49,15,0
    .goto 174,30.10,72.55,20,0
    .goto 174,28.44,70.88,20,0
    .goto 174,27.32,70.14,20,0
    >>Collect |cRXP_LOOT_Crates of Tools|r
    .complete 14014,1 --8/8 Crate of Tools
step
    #requires TheLostIslesTeraMonkeys
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r and |cRXP_FRIENDLY_Bamm Megabomb|r
    .turnin 14473 >>Turn in It's Our Problem Now
    .goto 174,27.85,74.29
    .turnin 14019 >>Turn in Monkey Business
    .goto 174,27.95,74.43
    .target Maxx Avalanche
    .target Bamm Megabomb
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,27.9,75.5
    .turnin 14014 >>Turn in Get Our Stuff Back!
    .accept 14248 >>Accept Help Wanted
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r
    .goto 174,31.27,79.26
    .turnin 14248 >>Turn in Help Wanted
    .accept 14021 >>Accept Miner Troubles
    .accept 14031 >>Accept Capturing the Unknown
    .target Foreman Dampwick
step
    #completewith DeadOrc
    >>Follow and protect the |cRXP_FRIENDLY_Frightened Miner|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2946.00000,568.60004
    >>Use the |T134442:0|t[KTC Snapflash] to take a picture of the painting on the wall marked with a floating camera
    .use 49887
    .complete 14031,1 --1/1 Cave Painting 1 Captured
step
    .goto 174/648,2914.50000,573.20001
    >>Use the |T134442:0|t[KTC Snapflash] to take a picture of the painting on the ceiling marked with a floating camera
    .use 49887
    .complete 14031,2 --1/1 Cave Painting 2 Captured
step
    .goto 174/648,2857.00000,615.29999
    >>Use the |T134442:0|t[KTC Snapflash] to take a picture of the painting on the wall marked with a floating camera
    .goto 175,86.331,44.317
    .complete 14031,3 --1/1 Cave Painting 3 Captured
step
    .goto 174/648,2969.80005,654.90002
    >>Use the |T134442:0|t[KTC Snapflash] to take a picture of the painting on the wall marked with a floating camera
    .use 49887
    .complete 14031,4 --1/1 Pygmy Altar Captured
step
    #label DeadOrc
    .goto 174/648,2975.60010,651.10004
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTry to talk to the |cRXP_FRIENDLY_Dead Orc Scout|r
    .accept 14233 >>Accept Orcs Can Write?
    .target Dead Orc Scout
step
    .goto 174/648,2969.80005,654.90002
    >>Follow and protect the |cRXP_FRIENDLY_Frightened Miner|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2971.60010,495.10001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave the cave and talk to |cRXP_FRIENDLY_Foreman Dampwick|r
    .turnin 14021 >>Turn in Miner Troubles
    .target Foreman Dampwick
step
    .goto 174,27.88,75.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 14031 >>Turn in Capturing the Unknown
    .turnin 14233 >>Turn in Orcs Can Write?
    .accept 14234 >>Accept The Enemy of My Enemy
    .target Sassy Hardwrench
step
    #completewith next
    .goto 174,32.73,80.53,30,0
    .goto 174,34.36,80.78,30,0
    .goto 174,36.96,77.02,20 >>Follow the path up the mountain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r
    .goto 174,37.63,78.02
    .turnin 14234 >>Turn in The Enemy of My Enemy
    .accept 14235 >>Accept The Vicious Vale
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .goto 174,35.43,75.71
    .turnin 14235 >>Turn in The Vicious Vale
    .accept 14236 >>Accept Weed Whacker
    .target Kilag Gorefang
step
    #loop
    .goto 174/648,2813.30005,653.40002,0
    .waypoint 174/648,2813.30005,653.40002,40,0
    .waypoint 174/648,2846.10010,706.79999,40,0
    .waypoint 174/648,2884.69995,661.79999,40,0
    .waypoint 174/648,2922.40015,579.10004,40,0
    >>Use the |cRXP_FRIENDLY_Weed Whacker|r and run through the |cRXP_ENEMY_plants|r to kill them
    .use 49108
    .complete 14236,1 --100/100 Deadly Jungle Plants mowed down
    .mob Deadly Jungle Plant
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .goto 174,35.43,75.71
    .turnin 14236 >>Turn in Weed Whacker
    .accept 14303 >>Accept Back to Aggra
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r
    .goto 174,37.63,78.02
    .turnin 14303 >>Turn in Back to Aggra
    .accept 14237 >>Accept Forward Movement
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .goto 174,34.62,66.85
    .turnin 14237 >>Turn in Forward Movement
    .accept 14238 >>Accept Infrared = Infradead
    .target Kilag Gorefang
step
    #loop
    .goto 174,31.252,65.272,0
    .waypoint 174,32.264,67.282,50,0
    .waypoint 174,30.783,67.512,50,0
    .waypoint 174,31.252,65.272,50,0
    .waypoint 174,30.712,64.450,50,0
    .waypoint 174,29.589,62.824,50,0
    .waypoint 174,33.536,64.171,50,0
    >>Kill |cRXP_ENEMY_SI:7 Assassins|r
    >>|cRXP_WARN_Use your|r |T133149:0|t[Infraread Heat Focals] |cRXP_WARN_to see them|r
    .use 49611
    .complete 14238,1 --10/10 SI:7 Assassin slain
    .mob SI:7 Assassin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .goto 174,34.61,66.85
    .turnin 14238 >>Turn in Infrared = Infradead
    .accept 14240 >>Accept To the Cliffs
    .timer 52,Riding Bastia
    .target Kilag Gorefang
step
    #completewith next
    .goto 174,25.28,59.84,50 >>Wait until you arrive at |cRXP_FRIENDLY_Scout Brax|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Brax|r
    .goto 174,25.28,59.84
    .turnin 14240 >>Turn in To the Cliffs
    .accept 14241 >>Accept Get to the Gyrochoppa!
    .target Scout Brax
step
    >>Kill |cRXP_ENEMY_SI:7 Operatives|r and |cRXP_ENEMY_Gyrochopper Pilots|r. Loot them for the |cRXP_LOOT_Gyrochoppa Keys|r
    .goto 174,23.23,67.50
    .complete 14241,1 --1/1 Gyrochoppa Keys
    .mob SI:7 Operative
    .mob Gyrochopper Pilot
step
    .goto 174,23.2,67.5
    >>Interact with the |cRXP_FRIENDLY_Gyrochoppa|r
    >>|cRXP_WARN_You can ignore the|r |cRXP_ENEMY_Gyrochoppa Pilot|r
    .turnin 14241 >>Turn in Get to the Gyrochoppa!
    .accept 14242 >>Accept Precious Cargo
    .target Gyrochoppa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo down into the ship and talk to |cRXP_FRIENDLY_Thrall|r
    .goto 174,11.8,62.7
    .complete 14242,1 --1/1 Precious Cargo located
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .goto 174,11.8,62.8
    .turnin 14242 >>Turn in Precious Cargo
    .accept 14326 >>Accept Meet Me Up Top
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo outside and meet |cRXP_FRIENDLY_Thrall|r on the deck
    .goto 174,12.68,63.33,10,0
    .goto 174,12.4,63.1
    .turnin 14326 >>Turn in Meet Me Up Top
    .accept 14243 >>Accept Warchief's Revenge
    .target Thrall
step
    >>Use |T237589:0|t[Lightning Strike] (1) to kill |cRXP_FRIENDLY_Alliance Sailors|r.
    >>|cRXP_WARN_Aim for the smaller boats|r
    .complete 14243,1 --50/50 Alliance Sailor slain
    .mob Alliance Sailor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .goto 174,35.92,66.72
    .turnin 14243 >>Turn in Warchief's Revenge
    .accept 14445 >>Accept Farewell, For Now
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,36.02,67.53
    .turnin 14445 >>Turn in Farewell, For Now
    .accept 14244 >>Accept Up, Up & Away!
    .target Sassy Hardwrench
step
    >>Click on the |cRXP_PICK_Rocket Sling|r
    .goto 174,36.34,66.55
    .skipgossip
    .complete 14244,1 --1/1 Rocket Sling Trip Survived
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r
    .goto 174,44.54,64.36
    .turnin 14244 >>Turn in Up, Up & Away!
    .accept 14245 >>Accept It's a Town-In-A-Box
    .target Foreman Dampwick
step
    >>Click on the |cRXP_PICK_Town-In-A-Box Plunger|r
    .goto 174,45.40,65.36
    .complete 14245,1 --1/1 Town-In-A-Box Set Off!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r
    .goto 174,45.36,64.74
    .turnin 14245 >>Turn in It's a Town-In-A-Box
    .accept 27139 >>Accept Hobart Needs You
    .target Foreman Dampwick
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .goto 174,45.34,65.22
    .turnin 27139 >>Turn in Hobart Needs You
    .accept 24671 >>Accept Cluster Cluck
    .target Hobart Grapplehammer
step
    .goto 174,44.928,65.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimy Greasefingers|r
    .home >>Set your Hearthstone to Town-In-A-Box
    .target Grimy Greasefingers
    .isQuestAvailable 24925
step << Priest Cata
    .goto 174,45.586,65.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >>Train your class spells
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,45.246,64.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .trainer >>Train your class spells
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,45.119,65.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >>Train your class spells
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,45.492,65.593
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >>Train your class spells
    .target Evol Fingers
step << Shaman Cata
    .goto 174,45.106,65.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .trainer >>Train your class spells
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warrior-Matic NX-01|r
    .trainer >>Train your class spells
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,45.055,65.524
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r
    .trainer >>Train your class spells
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #loop
    .goto 174,46.490,65.922,0
    .goto 174,44.482,64.109,0
    .waypoint 174,45.178,63.335,40,0
    .waypoint 174,45.938,61.535,40,0
    .waypoint 174,47.170,62.983,40,0
    .waypoint 174,46.490,65.922,40,0
    .waypoint 174,44.674,67.001,40,0
    .waypoint 174,44.482,64.109,40,0
    .use 52712 >>Use your |T134273:0|t[Remote Control Fireworks] to capture |cRXP_PICK_Wild Cluckers|r around the town
    .complete 24671,1 --10/10 Wild Cluckers captured
    .target Wild Clucker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r and |cRXP_FRIENDLY_Bamm Megabomb|r
    .turnin 24671 >>Turn in Cluster Cluck
    .goto 174,45.34,65.22
    .accept 24741 >>Accept Trading Up
    .goto 174,45.25,64.85
    .target Hobart Grapplehammer
    .target Bamm Megabomb
step
    #loop
    .goto 174,45.93,69.88,0
    .waypoint 174,49.64,63.45,20,0
    .waypoint 174,50.25,65.80,20,0
    .waypoint 174,50.64,68.35,20,0
    .waypoint 174,47.83,69.14,20,0
    .waypoint 174,45.93,69.88,20,0
    >>Use the |T236997:0|t[Wild Cluster Eggs] to place an egg into a trap. Then wait until a |cRXP_ENEMY_Spiny Raptor|r steps into the trap and loot the |cRXP_PICK_Spiny Raptor Egg|r
    .use 50232
    .complete 24741,1 --5/5 Spiny Raptor Egg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r and |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 24741 >>Turn in Trading Up
    .goto 174,45.25,64.85
    .accept 24744 >>Accept The Biggest Egg Ever
    .goto 174,45.34,65.21
    .target Bamm Megabomb
    .target Hobart Grapplehammer
step
    .goto 174,43.667,54.169
    >>Kill the |cRXP_ENEMY_Mechachicken|r. Loot |cRXP_LOOT_The Biggest Egg Ever|r that drops on the ground
    .complete 24744,1 --1/1 The Biggest Egg Ever
    .unitscan Mechachicken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .goto 174,45.34,65.21
    .turnin 24744 >>Turn in The Biggest Egg Ever
    .accept 24816 >>Accept Who's Top of the Food Chain Now?
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,2455.80005,861.90002,0
    .waypoint 174/648,2415.60010,795.60004,50,0
    .waypoint 174/648,2467.00000,730.10004,50,0
    .waypoint 174/648,2578.30005,794.20001,50,0
    .waypoint 174/648,2455.80005,861.90002,50,0
    >>Kill |cRXP_ENEMY_Ravenous Lurkers|r. Loot them for their |cRXP_LOOT_Shark Parts|r
    .complete 24816,1 --5/5 Shark Parts
    .mob Ravenous Lurker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .goto 174,45.27,65.57
    .turnin 24816 >>Turn in Who's Top of the Food Chain Now?
    .accept 24817 >>Accept A Goblin in Shark's Clothing
    .target Assistant Greely
step
    >>Click on the |cRXP_PICK_Mechshark X-Steam Controller|r
    .goto 174,43.68,65.50
    .complete 24817,1 --1/1 Use the Mechashark X-Steam Controller
step
    >>Use |T132345:0|t[Freakin' Laser Beam] (1) and |T135821:0|t[Egg-splosive Barrage] (2) to kill |cRXP_ENEMY_The Hammer|r
    >>|cRXP_WARN_Use|r |T132996:0|t[Repair] |cRXP_WARN_to heal if needed|r
    .goto 174,41.7,66.7
    .complete 24817,2 --1/1 The Hammer slain
    .mob The Hammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .goto 174,45.34,65.21
    .turnin 24817 >>Turn in A Goblin in Shark's Clothing
    .accept 24856 >>Accept Invasion Imminent!
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r
    .goto 174,52.2,73.2
    .turnin 24856 >>Turn in Invasion Imminent!
    .accept 24858 >>Accept Bilgewater Cartel Represent
    .target Megs Dreadshredder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brett "Coins" McQuid|r
    .goto 174,52.20,73.22
    .accept 24859 >>Accept Naga Hide
    .target Brett "Coins" McQuid
step
    #completewith next
    >>Kill |cRXP_ENEMY_Vashj'elan Warriors|r and |cRXP_ENEMY_Vashj'elan Sirens|r. Loot them for their |cRXP_LOOT_Hides|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    #loop
    .goto 174,53.477,80.146,0
    .waypoint 174,52.22,79.19,10,0
    .waypoint 174,52.76,78.97,10,0
    .waypoint 174,53.47,80.15,10,0
    .waypoint 174,54.14,79.91,10,0
    .waypoint 174,54.81,79.39,10,0
    .waypoint 174,55.50,79.54,10,0
    .waypoint 174,55.49,77.98,10,0
    .waypoint 174,54.86,76.94,10,0
    .waypoint 174,55.04,76.25,10,0
    .waypoint 174,53.53,76.90,10,0
    >>Click the |cRXP_PICK_Naga Banners|r
    .complete 24858,1 --10/10 Naga Banners replaced
step
    #loop
    .goto 174/648,2004.30005,498.39999,0
    .waypoint 174/648,2004.30005,498.39999,40,0
    .waypoint 174/648,1873.00000,503.00000,40,0
    .waypoint 174/648,1897.90002,591.50000,40,0
    >>Kill |cRXP_ENEMY_Vashj'elan Warriors|r and |cRXP_ENEMY_Vashj'elan Sirens|r. Loot them for their |cRXP_LOOT_hides|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brett "Coins" McQuid|r and |cRXP_FRIENDLY_Megs Dreadshredder|r
    .turnin 24859 >>Turn in Naga Hide
    .goto 174,52.2,73.22
    .turnin 24858 >>Turn in Bilgewater Cartel Represent
    .accept 24864 >>Accept Irresistible Pool Pony
    .goto 174,52.20,73.14
    .target Brett "Coins" McQuid
    .target Megs Dreadshredder
step
    #completewith next
    .use 50602
    .cast 71914 >>Use the |T132261:0|t[Irresistible Pool Pony] once you reach the water.
step
    #loop
    .goto 174/648,1713.59998,401.10001,0
    .waypoint 174/648,1766.20007,387.50000,30,0
    .waypoint 174/648,1713.59998,401.10001,30,0
    .waypoint 174/648,1684.20007,416.89999,30,0
    .waypoint 174/648,1661.20007,386.00000,30,0
    .waypoint 174/648,1619.50000,380.10001,30,0
    .waypoint 174/648,1594.09998,415.60001,30,0
    .waypoint 174/648,1567.59998,351.70001,30,0
    .waypoint 174/648,1689.50000,325.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Naga Hatchlings|r
    >>|cRXP_WARN_Be careful to not kill the hatchlings with AoE abilities|r
    .use 50602
    .complete 24864,1 --12/12 Naga Hatchlings lured
    .target Naga Hatchling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Megs Dreadshredder|r
    .goto 174,52.2,73.15
    .turnin 24864 >>Turn in Irresistible Pool Pony
    .accept 24868 >>Accept Surrender or Else!
    .target Megs Dreadshredder
step
    #completewith next
    .goto 174,54.07,90.06,30 >>Travel south toward the Ruins of Vashj'elan
step
    .goto 174,54.07,90.06
    >>Kill |cRXP_ENEMY_Faceless of the Deep|r
    >>|cRXP_WARN_Wait for the spawn animation (purple circle). He will jump down shortly after|r
    .complete 24868,1 --1/1 Leader of the naga dealt with
    .mob Faceless of the Deep
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r
    .goto 174,52.20,73.15
    .turnin 24868 >>Turn in Surrender or Else!
    .accept 24897 >>Accept Get Back to Town
    .target Megs Dreadshredder
step
    #completewith next
    .subzone 4871 >>Return to Town-in-a-Box
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,45.18,64.91
    .turnin 24897 >>Turn in Get Back to Town
    .accept 24901 >>Accept Town-In-A-Box: Under Attack
    .target Sassy Hardwrench
step
    >>Click a |cRXP_PICK_B.C. Eliminator|r to enter it and shoot at |cRXP_ENEMY_Oomlot Warriors|r
    .goto 174,45.7,65.0
    .complete 24901,1 --30/30 Oomlot Warriors defeated
step
    #completewith next
    +|cRXP_WARN_Leave the vehicle|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,45.2,64.9
    .turnin 24901 >>Turn in Town-In-A-Box: Under Attack
    .accept 24924 >>Accept Oomlot Village
    .target Sassy Hardwrench
step
    #completewith next
    .subzone 4886 >>Travel to Oomlot Village
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r
    .goto 174,56.56,71.96
    .turnin 24924 >>Turn in Oomlot Village
    .accept 24925 >>Accept Free the Captives
    .accept 24929 >>Accept Send a Message
    .target Izzy
step
    #completewith next
    >>Kill |cRXP_ENEMY_Oomlot Shamans|r to free the |cRXP_FRIENDLY_Goblin Captives|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>Kill |cRXP_ENEMY_Yngwie|r
    .goto 174/648,1710.70007,843.79999,20,0
    .goto 174/648,1543.20007,817.29999
    .complete 24929,1 --1/1 Yngwie slain
    .mob Yngwie
step
    #loop
    .goto 174/648,1753.00000,746.50000,0
    .waypoint 174/648,1593.59998,754.90002,35,0
    .waypoint 174/648,1661.90002,717.40002,35,0
    .waypoint 174/648,1753.00000,746.50000,35,0
    .waypoint 174/648,1698.59998,802.10004,35,0
    >>Kill |cRXP_ENEMY_Oomlot Shamans|r to free the |cRXP_FRIENDLY_Goblin Captives|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r
    .goto 174,56.56,71.96
    .turnin 24925 >>Turn in Free the Captives
    .turnin 24929 >>Turn in Send a Message
    .accept 24937 >>Accept Oomlot Dealt With
    .target Izzy
step
    #completewith next
    .hs >>Hearth to Town-In-A-Box
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,45.2,64.9
    .turnin 24937 >>Turn in Oomlot Dealt With
    .accept 24940 >>Accept Up the Volcano
    .target Sassy Hardwrench
step
    #completewith next
    +|cRXP_WARN_Avoid the |cRXP_ENEMY_Goblin Zombies|r while running up the mountain|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r, |cRXP_FRIENDLY_Foreman Dampwick|r and |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 24940 >>Turn in Up the Volcano
    .accept 24942 >>Accept Zombies vs. Super Booster Rocket Boots
    .goto 174,51.8,47.1
    .accept 24945 >>Accept Three Little Pygmies
    .goto 174,51.85,47.19
    .accept 24946 >>Accept Rockin' Powder
    .goto 174,51.73,47.38
    .target Coach Crosscheck
    .target Foreman Dampwick
    .target Assistant Greely
step
    #completewith next
    >>|cRXP_WARN_You have to cancel Shadowform if you are a shadow priest before you can use the boots|r <<Priest
    .use 52013
    .goto 174,51.77,46.97
    .cast 72891 >>|cRXP_WARN_Use the |T133029:0|t[Super Booster Rocket Boots]|r
step
    #completewith next
    >>Kill |cRXP_ENEMY_Goblin Zombies|r by walking over them with the Rocket Boots
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Oostan Headhunters|r|r|cRXP_WARN_. They can kill you very easily|r
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    #completewith TheLostIslesGaahl
    >>Pick up |cRXP_PICK_Rockin' Powder|r from the ground
    .complete 24946,1 --5/5 Rockin' Powder
step
    >>Kill |cRXP_ENEMY_Malmo|r
    .goto 174,58.74,47.16
    .complete 24945,2 --1/1 Malmo slain
    .mob Malmo
step
    >>Kill |cRXP_ENEMY_Teloch|r
    .goto 174,63.7,52.76
    .complete 24945,3 --1/1 Teloch slain
    .mob Teloch
step
    #label TheLostIslesGaahl
    >>Kill |cRXP_ENEMY_Gaahl
    .goto 174,59.59,40.20
    .complete 24945,1 --1/1 Gaahl slain
    .mob Gaahl
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>Look around and pick up the remaining |cRXP_PICK_Rockin' Powders|r
    .complete 24946,1 --5/5 Rockin' Powder
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>Kill |cRXP_ENEMY_Goblin Zombies|r by walking over them with the Rocket Boots
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r, |cRXP_FRIENDLY_Assistant Greedy|r, and |cRXP_FRIENDLY_Coach Crosscheck|r
    .turnin 24945 >>Turn in Three Little Pygmies
    .goto 174,51.85,47.20
    .turnin 24946 >>Turn in Rockin' Powder
    .goto 174,51.73,47.38
    .turnin 24942 >>Turn in Zombies vs. Super Booster Rocket Boots
    .accept 24952 >>Accept Rocket Boot Boost
    .goto 174,51.8,47.1
    .target Foreman Dampwick
    .target Assistant Greedy
    .target Coach Crosscheck
step
    .goto 174/648,2044.80005,1463.09998
    >>Use the |T133029:0|t[Rockin' Powder Infused Rocket Boots]
    .use 52032
    .complete 24952,1 --1/1 Rockin' Powder Infused Rocket Boots used
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .goto 174,68.93,46.44
    .turnin 24952 >>Turn in Rocket Boot Boost
    .accept 24954 >>Accept Children of a Turtle God
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,1333.30005,1529.30005,0
    .waypoint 174/648,1333.30005,1529.30005,40,0
    .waypoint 174/648,1368.00000,1597.70007,40,0
    .waypoint 174/648,1263.20007,1570.70007,40,0
    >>Kill |cRXP_ENEMY_Childs of Volcanoth|r. Loot them for the |cRXP_LOOT_Glands|r
    .complete 24954,1 --5/5 Fire Gland
    .mob Childs of Volcanoth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .goto 174,68.93,46.44
    .turnin 24954 >>Turn in Children of a Turtle God
    .accept 24958 >>Accept Volcanoth!
    .target Hobart Grapplehammer
step
    .goto 174/648,1180.20007,1309.70007
    >>Spam Use |T135624:0|t[Bootzooka] at the waypoint location on |cRXP_ENEMY_Volcanoth|r
    .use 52043
    .complete 24958,1 --1/1 Volcanoth slain
    .mob Volcanoth
step
    .goto 174/648,1094.00000,1163.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 24958 >>Turn in Volcanoth!
    .accept 25023 >>Accept Old Friends
    .timer 110,Old Friends Flight
    .target Sassy Hardwrench
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 25023 >>Turn in Old Friends
    .accept 25024 >>Accept Repel the Paratroopers
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .accept 25058 >>Accept Mine Disposal, the Goblin Way
    .target Sassy Hardwrench
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r
    .accept 25093 >>Accept The Heads of the SI:7
    .target Aggra
step
    #completewith Paratroopers
    >>Use the |T133716:0|t[Satchel of Grenades] to destroy the |cRXP_PICK_Mines|r on the ground
    .goto 174,32.38,36.34,0,0
    .use 52280
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith TheLostIslesCyn
    >>Kill |cRXP_ENEMY_Alliance Paratrooper|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    >>Kill |cRXP_ENEMY_Commander Arrington|r. Loot him for his |cRXP_LOOT_Head|r
    .goto 174,32.29,42.89
    .complete 25093,1 --1/1 Commander Arrington's Head
    .target Commander Arrington
step
    >>Kill |cRXP_ENEMY_Alexi Silenthowl|r. Loot him for his |cRXP_LOOT_Head|r
    .goto 174,30.80,33.92
    .complete 25093,3 --1/1 Alexi Silenthowl's Head
    .mob Alexi Silenthowl
step
    #label TheLostIslesCyn
    >>Kill |cRXP_ENEMY_Darkblade Cyn|r. Loot him for his |cRXP_LOOT_Head|r
    .goto 174,33.44,27.88
    .complete 25093,2 --1/1 Darkblade Cyn's Head
    .mob Darkblade Cyn
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    >>Kill |cRXP_ENEMY_Alliance Paratrooper|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    .use 52280 >>Use the |T133716:0|t[Satchel of Grenades] to destroy the |cRXP_PICK_Mines|r on the ground
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith next
    .subzone 4912 >>Travel to Warchief's Lookout
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r
    .turnin 25093 >>Turn in The Heads of the SI:7
    .target Aggra
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 25024 >>Turn in Repel the Paratroopers
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 25058 >>Turn in Mine Disposal, the Goblin Way
    .accept 25066 >>Accept The Pride of Kezan
    .target Sassy Hardwrench
step
    #completewith next
    .skipgossip 38387,1
    .vehicle 39074 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r to enter the vehicle
    .target Sassy Hardwrench
step
    >>Destroy |cRXP_ENEMY_Gnomeregan Stealth Fighters|r
    >>|cRXP_WARN_Use|r |T134273:0|t[Wild Weasel Rockets] |cRXP_WARN_(2)|r |cRXP_WARN_on cooldown and spam|r |T135627:0|t[Machine Gun] |cRXP_WARN_(1)|r
    .goto 174,30.37,39.89
    .complete 25066,1 --10/10 Gnomeregan Stealth Fighters shot down
    .mob Gnomeregan Stealth Fighter
step
    #completewith next
    .subzone 4912 >>Fly back to Warchief's Lookout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,37.36,41.92
    .turnin 25066 >>Turn in The Pride of Kezan
    .accept 25098 >>Accept The Warchief Wants You
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .goto 174,36.79,43.13
    .turnin 25098 >>Turn in The Warchief Wants You
    .accept 25099 >>Accept Borrow Bastia
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .goto 174,33.8,38.8
    .turnin 25099 >>Turn in Borrow Bastia
    .accept 25100 >>Accept Let's Ride
    .timer 87,Panther Ride
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r after riding with the panther
    .goto 174,53.71,34.94
    .turnin 25100 >>Turn in Let's Ride
    .accept 25109 >>Accept The Gallywix Labor Mine
    .target Slinky Sharpshiv
step << Priest Cata
    .goto 174,53.760,35.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >>Train your class spells
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,53.744,35.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .trainer >>Train your class spells
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,53.754,33.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >>Train your class spells
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,54.087,34.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >>Train your class spells
    .target Evol Fingers
step << Shaman Cata
    .goto 174,53.245,35.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .trainer >>Train your class spells
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,53.810,35.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warrior-Matic NX-01|r
    .trainer >>Train your class spells
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,53.716,34.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r
    .trainer >>Train your class spells
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #completewith next
    .goto 174,54.09,36.01,10,0
    .goto 174,54.94,33.72,10 >>Enter the cave and jump down
step
    .goto 174,53.17,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 25109 >>Turn in The Gallywix Labor Mine
    .accept 25110 >>Accept Kaja'Cola Gives You IDEAS! (TM)
    .target Assistant Greely
step
    >>Pick up a |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-One|r] from the ground
    .goto 174,53.59,37.41,10,0
    .goto 174,53.94,37.46,10,0
    .goto 174,53.70,36.67
    .complete 25110,1 --1/1 Kaja'Cola Zero-One
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .goto 174,53.17,36.55
    .turnin 25110 >>Turn in Kaja'Cola Gives You IDEAS! (TM)
    .accept 25122 >>Accept Morale Boost
    .accept 25123 >>Accept Throw It On the Ground!
    .target Assistant Greely
step
    #completewith FreeGobber
    >>Loot |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-One|r] from the ground
    >>Target |cRXP_FRIENDLY_Kezan Citizens|r and use the |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-One|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    #title Free Ace
    >>Target |cRXP_FRIENDLY_Ace|r and use a |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-One|r]
    .goto 174,57.1,36.9
    .use 52484
    .complete 25122,1 --1/1 Ace's mind freed
    .target Ace
step
    #title Free Izzy
    >>Target |cRXP_FRIENDLY_Izzy|r and use a |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-One|r]
    .goto 174,57.01,35.02
    .use 52484
    .complete 25122,2 --1/1 Izzy's mind freed
    .target Izzy
step
    >>Kill |cRXP_ENEMY_Blastshadow the Brutemaster|r and pick up the |cRXP_PICK_Blastshadow's Soulstone|r.
    .use 52481 >>|cRXP_WARN_Use|r |T134336:0|t[Blastshadow's Soulstone] |cRXP_WARN_on the corpse of|r |cRXP_ENEMY_Blastshadow the Brutemaster|r
    .goto 174,56.18,32.29
    .complete 25123,1 --1/1 Blastshadow's Soulstone destroyed
    .mob Blastshadow the Brutemaster
step
    #label FreeGobber
    >>Target |cRXP_FRIENDLY_Gobber|r and use a |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-One|r]
    .goto 174,57.04,32.17
    .use 52484
    .complete 25122,3 --1/1 Gobber's mind freed
    .target Gobber
step
    #loop
    .goto 174/648,1807.59998,1983.59998,0
    .waypoint 174/648,1807.59998,1983.59998,25,0
    .waypoint 174/648,1830.20007,1860.80005,25,0
    .waypoint 174/648,1820.40002,1784.20007,25,0
    .waypoint 174/648,1917.40002,1809.40002,25,0
    >>Loot |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-One|r] from the ground
    >>Target |cRXP_FRIENDLY_Kezan Citizens|r and use the |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-One|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 25123 >>Turn in Throw It On the Ground!
    .turnin 25122 >>Turn in Morale Boost
    .accept 25125 >>Accept Light at the End of the Tunnel
    .target Assistant Greely
step
    >>Interact with the |cRXP_PICK_Mine Cart|r
    .goto 174,56.29,27.33
    .turnin 25125 >>Turn in Light at the End of the Tunnel
    .accept 25184 >>Accept Wild Mine Cart Ride
step
    >>Ride with the Mine Cart
    .goto 174,54.2,17.0
    .complete 25184,1 --1/1 Mine Cart ridden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .goto 174,54.4,16.9
    .turnin 25184 >>Turn in Wild Mine Cart Ride
    .accept 25200 >>Accept Shredder Shutdown
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r
    .goto 174,54.44,16.93
    .accept 25201 >>Accept The Ultimate Footbomb Uniform
    .target Coach Crosscheck
step
    #sticky
    #label TheLostIslesShredderShutdown
    >>Kill |cRXP_ENEMY_Steamwheedle Sharks|r
    .goto 174,53.5,18.9,0,0
    .complete 25200,1 --8/8 Steamwheedle Shark slain
    .mob Steamwheedle Shark
step
    >>Pick up the |cRXP_LOOT_Spare Shredder Parts|r
    .goto 174,53.24,19.55,20,0
    .goto 174,52.16,20.68,20,0
    .goto 174,51.85,19.17,20,0
    .goto 174,52.64,16.93,20,0
    .goto 174,53.13,18.70
    .complete 25201,1 --8/8 Spare Shredder Parts
step
    #requires TheLostIslesShredderShutdown
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r
    .goto 174,54.44,16.93
    .turnin 25201 >>Turn in The Ultimate Footbomb Uniform
    .target Coach Crosscheck
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .goto 174,54.4,16.93
    .turnin 25200 >>Turn in Shredder Shutdown
    .accept 25204 >>Accept Release the Valves
    .target Assistant Greely
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ace|r
    .goto 174,54.16,17.21
    .accept 25203 >>Accept What Kind of Name is Chip, Anyway?
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r
    .goto 174,54.01,16.98
    .accept 25202 >>Accept The Fastest way to His Heart
    .target Izzy
step
    >>Click on the |cRXP_PICK_Valve|r
    .goto 174,50.85,15.86,10,0
    .goto 174,50.72,13.81
    .complete 25204,1 --1/1 Valve #1 released
step
    >>Click on the |cRXP_PICK_Valve|r
    .goto 174,50.5,13.2
    .complete 25204,3 --1/1 Valve #3 released
step << Female
    >>Kill |cRXP_ENEMY_Chip Endale|r. Loot him for his |cRXP_LOOT_heart|r
    .goto 174,50.1,13.8
    .complete 25202,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step << Male
    >>Kill |cRXP_ENEMY_Chip Endale|r. Loot him for his |cRXP_LOOT_heart|r
    .goto 174,50.1,13.8
    .complete 25203,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step
    >>Click on the |cRXP_PICK_Valve|r
    .goto 174,49.9,12.8
    .complete 25204,4 --1/1 Valve #4 released
step
    >>Click on the |cRXP_PICK_Valve|r
    .goto 174,50.2,11.8
    .complete 25204,2 --1/1 Valve #2 released
step
    >>Interact with the |cRXP_PICK_Platform Control Panel|r
    .goto 174,51.4,13.1
    .turnin 25204 >>Turn in Release the Valves
    .accept 25207 >>Accept Good-bye, Sweet Oil
step
    >>Click on the |cRXP_PICK_Red Button|r
    .goto 174,51.4,13.1
    .complete 25207,1 --1/1 KTC Oil Platform destroyed
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ace|r
    .goto 174,54.16,17.19
    .turnin 25203 >>Turn in What Kind of Name is Chip, Anyway?
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r
    .goto 174,54.01,16.97
    .turnin 25202 >>Turn in The Fastest way to His Heart
    .target Izzy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .goto 174,54.4,16.9
    .turnin 25207 >>Turn in Good-bye, Sweet Oil
    .accept 25213 >>Accept The Slave Pits
    .timer 24,Shredder Ride
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r after riding with the shredder
    .goto 174,43.63,25.32
    .turnin 25213 >>Turn in The Slave Pits
    .accept 25244 >>Accept What Kind of Name is Candy, Anyway? << Female
	.accept 25243 >>Accept She Loves Me. She Loves Me NOT! << Male
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart|r
    .goto 174,43.85,25.30
    .accept 25214 >>Accept Escape Velocity
    .target Hobart Grapplehammer
step
    #completewith next
    >>Click on |cRXP_FRIENDLY_Captured Goblins|r
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>Kill |cRXP_ENEMY_Candy Cane|r
    .goto 174,39.68,27.18
    .complete 25244,1 << Female --1/1 Candy Cane slain
	.complete 25243,1 << Male --1/1 Candy Cane slain
    .mob Candy Cane
step
    >>Click on |cRXP_FRIENDLY_Captured Goblins|r
    .goto 174,40.03,26.08,10,0
    .goto 174,41.03,25.24,15,0
    .goto 174,41.24,26.35
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart|r
    .goto 174,43.85,25.30
    .turnin 25214 >>Turn in Escape Velocity
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,43.63,25.32
    .turnin 25244 >>Turn in What Kind of Name is Candy, Anyway? << Female
	.turnin 25243 >>Turn in She Loves Me. She Loves Me NOT! << Male
    .accept 25251 >>Accept Final Confrontation
    .target Sassy Hardwrench
step
    >>Enter the |cRXP_FRIENDLY_Ultimate Footbomb Uniform|r
    .goto 174,43.86,25.16
    .complete 25251,1 --1/1 Ultimate Footbomb Uniform
    .target Ultimate Footbomb Uniform
step
    >>Target |cRXP_ENEMY_Trade Prince Gallywix|r and use all your abilities on cooldown
    .goto 174,41.87,17.61,10,0
    .goto 174,43.4,19.9
    .complete 25251,2 --1/1 Trade Prince Gallywix dealt with
    .mob Trade Prince Gallywix
step
    #completewith next
    .goto 174,42.76,18.61,10,0
    .goto 174,42.24,19.45,20 >>Jump down
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,43.6,25.3
    .turnin 25251 >>Turn in Final Confrontation
    .accept 25265 >>Accept Victory!
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .goto 174,42.16,17.37
    .turnin 25265 >>Turn in Victory!
    .accept 25266 >>Accept Warchief's Emissary
    .target Thrall
step
    #completewith next
    .goto 174,42.57,16.37
    .skipgossip
    .zone 1 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'Kron Loyalist|r
    .goto 1,57.65,9.78
    .turnin 25266 >>Turn in Warchief's Emissary
    .accept 25267 >>Accept Message for Saurfang
    .timer 75,Ride to Orgrimmar
    .target Kor'Kron Loyalist
step
    #completewith next
    .goto 1,45.506,11.949,30,0
    .zone Orgrimmar >>Enter Orgrimmar
step
    .goto 1454/1,-4343.20020,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
    .turnin 25267 >>Turn in Message for Saurfang
    .accept 25275 >>Accept Report to the Labor Captain
    .target Garrosh Hellscream
]])
