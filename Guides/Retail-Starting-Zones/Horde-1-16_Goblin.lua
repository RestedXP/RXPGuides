RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Goblin Starting Zones
#name Goblin Starting Zone
#next RestedXP Horde 10-60\1 BfA Intro

<< Goblin !DK

step << Goblin
    .zoneskip 1727
    #completewith KezanFirstQuestCheck
    +Welcome to the |cfff78300Goblin Starting Zone|r Guide of RestedXP.
    *This route is a lot slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
step << Goblin
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the |cfff78300Goblin Starting Zone|r.
    +Please choose the |cfff78300Exiles Reach|r Guide.
step
    #label KezanFirstQuestCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
    .goto 194,56.4,76.9
    .accept 14138 >>Accept Taking Care of Business
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Foreman Dampwick
    .goto 194,60.3,74.6
    .turnin 14138 >>Turn in Taking Care of Business
    .accept 14069 >>Accept Good Help is Hard to Find
    .accept 14075 >>Accept Trouble in the Mines
step
    #completewith next
    .goto 194,65.52,87.82,10 >>Enter the mines
step
    #completewith KezanTroubleintheMines
    >>Click on Defiant Trolls. These can be found outside of the mines as well.
    .goto 194,66.02,82.39,0,0
    .complete 14069,1 --8/8 Attitudes Adjusted
step
    #label KezanTroubleintheMines
    >>Kill |cff00ecffTunneling Worms|r
    .goto 197,50.73,59.55
    .complete 14075,1 --6/6 Tunneling Worm slain
step
    #completewith next
    .goto 194,65.52,87.82,8 >>Leave the mines
step
    >>Click on Defiant Trolls
    .goto 194,72.45,83.45,50,0
    .goto 194,70.39,77.73,30,0
    .goto 194,68.74,82.87
    .complete 14069,1 --8/8 Attitudes Adjusted
step
    #completewith next
    .hs >>Hearth to KTC Headquarters
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Foreman Dampwick
    .goto 194,60.1,74.6
    .turnin 14075 >>Turn in Trouble in the Mines
    .turnin 14069 >>Turn in Good Help is Hard to Find
    .accept 25473 >>Accept Kaja'Cola
step << Warlock
    #completewith next
    +|cfff78300Reminder: Use |T136218:0|tSummon Imp to summon your pet|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Handwrench
    .goto 194,56.4,76.9
    .turnin 25473 >>Turn in Kaja'Cola
    .accept 28349 >>Accept Megs in Marketing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Megs Dreadshredder
    .goto 194,58.3,76.4
    .turnin 28349 >>Turn in Megs in Marketing
    .accept 14071 >>Accept Rolling with my Homies
step
    >>Use the |T134246:0|t[Keys to the Hot Rod]
    *NOTE: You can keybind the "Active Items" window in RestedXP by pressing escape, then going under Options->Keybindings->RestedXP Guides.
    .goto 194,58.9,76.3
    .use 46856
    .complete 14071,1 --1/1 Keys to the Hot Rod used
step
    >>Follow the arrow
    >>Use |T135788:0|tPunch (1) it on cooldown
    .goto 194,59.93,85.52,15,0
    .goto 194,58.9,85.5
    .complete 14071,2 --1/1 Izzy picked up
step
    >>Follow the arrow
    >>Use |T135788:0|tPunch (1) it on cooldown
    .goto 194,59.93,85.52,15,0
    .goto 194,57.95,70.46,20,0
    .goto 194,60.6,49.9
    .complete 14071,4 --1/1 Gobber picked up
step
    >>Follow the arrow
    >>Use |T135788:0|tPunch (1) it on cooldown
    .goto 194,48.5,38.3
    .complete 14071,3 --1/1 Ace picked up
step
    #completewith next
    .goto 194,61.98,54.83,30,0
    .goto 194,60.13,64.59,30,0
    .goto 194,57.90,71.12,20 >>Follow the street back up
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Megs Dreadshredder
    .goto 194,58.3,76.5
    .turnin 14071 >>Turn in Rolling with my Homies
    .accept 24567 >>Accept Report for Tryouts
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Handwrench
    .goto 194,56.4,77.0
    .accept 14070 >>Accept Do it Yourself
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chip Endale
    .goto 194,56.3,76.8
    .accept 26711 >>Accept Off to the Bank
--female quest
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Candy Cane
    .goto 194,56.3,76.8
    .accept 26712 >>Accept Off to the Bank
--male quest
step
    >>Follow the arrow around the house and attack Bruno Flameretardant
    *|cfff78300Don't forget to use your Keys to the Hot Rod|r
    .use 46856
    .goto 194,57.52,76.93,5,0
    .goto 194,57.46,78.35,5,0
    .goto 194,55.34,78.25,5,0
    .goto 194,45.25,74.75
    .complete 14070,1 --1/1 Bruno Flameretardant beaten down
step
    >>Attack Sudsy Magee
    .goto 194,41.6,81.9
    .complete 14070,4 --1/1 Sudsy Magee beaten down
step
    >>Attack Jack the Hammer
    .goto 194,37.47,75.97,15,0
    .goto 194,35.0,77.8
    .complete 14070,3 --1/1 Jack the Hammer beaten down
step
    >>Attack Frankei Gearslipper
    .goto 194,36.84,69.95
    .complete 14070,2 --1/1 Frankie Gearslipper beaten down
step
    #completewith next
    .vehicle 34840 >>|cfff78300Make sure to use your Keys to the Hot Rod|r.
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEnter the bank and talk to FBoK Bank Teller
    .goto 194,34.16,69.32,10,0
    .goto 194,32.27,63.79,12,0
    .goto 194,29.72,64.52,16,0
    .goto 194,30.1,71.9
    .turnin 26711 >>Turn in Off to the Bank
    .accept 14110 >>Accept The New You
--female quest
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEnter the bank and talk to FBoK Bank Teller
    .goto 194,34.16,69.32,10,0
    .goto 194,32.27,63.79,12,0
    .goto 194,29.72,64.52,16,0
    .goto 194,30.1,71.9
    .turnin 26712 >>Turn in Off to the Bank
    .accept 14109 >>Accept the New You
--male quest
step
    #completewith next
    .vehicle 34840 >>|cfff78300Make sure to use Keys to the Hot Rod (You should always use them when you have to run somwhere)|r.
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Szabo
    .goto 194,29.80,63.62,16,0
    .goto 194,34.66,54.73,10,0
    .goto 194,37.63,55.38
    .use 46856
    .skipgossip
    .complete 14110,2 --1/1 Hip New Outfit
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Szabo
    .goto 194,29.80,63.62,16,0
    .goto 194,34.66,54.73,10,0
    .goto 194,37.63,55.38
    .use 46856
    .skipgossip
    .complete 14109,2 --1/1 Hip New Outfit
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gappy Silvertooth
    .goto 194,34.9,45.7
    .skipgossip
    .complete 14110,1 --1/1 Shiny Bling
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gappy Silvertooth
    .goto 194,34.9,45.7
    .skipgossip
    .complete 14109,1 --1/1 Shiny Bling
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Missa Spekkies
    .goto 194,40.5,45.8
    .skipgossip
    .complete 14110,3 --1/1 Cool Shades
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Missa Spekkies
    .goto 194,40.5,45.8
    .skipgossip
    .complete 14109,3 --1/1 Cool Shades
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coach Crosscheck
    .goto 194,42.57,55.34,20,0
    .goto 194,48.8,57.8
    .turnin 24567 >>Turn in Report for Tryouts
    .accept 24488 >>Accept The Replacements
step
    >>Pick up the Replacements Parts from the ground while on the Hot Rod
    .loop 20,194,50.99,57.96,51.22,61.01,49.78,66.39,48.17,66.87,46.08,68.18,44.49,65.76,44.23,63.11,43.75,59.25
    .complete 24488,1 --6/6 Replacement Parts
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coach Crosscheck
    .goto 194,48.8,57.8
    .turnin 24488 >>Turn in The Replacements
    .accept 24502 >>Accept Necessary Roughness
step
    >>Click on the Bilgewater Buccaneer roboter
    >>Use |T134480:0|tThrow Footbomb (1) to kill the |cff00ecffSteamwheedle Sharks|r in front of you
    .goto 194,47.7,57.7
    .complete 24502,1 --1/1 Bilgewater Buccaneer
    .complete 24502,2 --8/8 Steamwheedle Shark Footbombed
step
    >>Click on the quest in your quest log, you may have to dismount to accept the next quest from Coach Crosscheck
    .goto 194,47.7,57.7
    .turnin 24502 >>Turn in Necessary Roughness by clicking onto the quest under your minimap
    .accept 24503 >>Accept Fourth and Goal << Male
    .accept 28414 >>Accept Fourth and Goal << Female
step
    >>Use |T134480:0|tKick Footbomb (1)
    .complete 24503,1 << Male --1/1 Footbomb Kicked Through Smokestacks
    .complete 28414,1 << Female --1/1 Footbomb Kicked Through Smokestacks
step
    #completewith next
    +|cfff78300Leave the vehicle|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coach Crosscheck
    .goto 194,48.7,57.8
    .turnin 24503 >>Turn in Fourth and Goal << Male
    .turnin 28414 >>Turn in Fourth and Goal << Female
    .accept 24520 >>Accept Give Sassy the News
step
    #completewith next
    .use 46856
    .vehicle 34840 >>|cfff78300Make sure to use your Keys to the Hot Rod (You should always use them when you have to run somwhere)|r.
step
    #completewith next
    .goto 194,52.91,51.59,30,0
    .goto 194,61.86,55.57,20,0
    .goto 194,61.01,62.01,8,0
    .goto 194,57.76,71.07,15 >>Follow the arrow back to the Headquarters
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench and Chip Endale
    .goto 194,57.58,76.99,10,0
    .turnin 24520 >>Turn in Give Sassy the News
    .turnin 14070 >>Turn in Do it Yourself
    .goto 194,56.4,76.9
    .turnin 14110 >>Turn in The New You
    .accept 14153 >>Accept Life of the Party
    .goto 194,56.3,76.8
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench and Candy Cane
    .goto 194,57.58,76.99,10,0
    .turnin 24520 >>Turn in Give Sassy the News
    .turnin 14070 >>Turn in Do it Yourself
    .goto 194,56.4,76.9
    .turnin 14109 >>Turn in The New You
    .accept 14113 >>Accept Life of the Party
    .goto 194,56.3,76.8
step
    >>Use |T132809:0|tBubbly (1) on Goblins who drink
    >>Use the |T132806:0|tBucket (2) on drunk/confused looking Goblins
    >>|T133836:0|tDance (3) with Goblins who dance
    >>Use |T134285:0|tFireworks (4) on Goblins with sparks
    >>Use |T237329:0|tHors D'oeuvres (5) on Goblins who eat
    .goto 194,59.56,78.75,15,0
    .goto 194,59.09,80.31,10,0
    .goto 194,60.59,82.98,15,0
    .goto 194,60.82,86.33,15,0
    .goto 194,60.6,83.4
    .complete 14153,1 << Female --10/10 Partygoer entertained
	.complete 14113,1 << Male --10/10 Partygoer entertained
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
    .goto 194,57.41,77.03,8,0
    .goto 194,56.4,77.0
    .turnin 14153 >>Turn in Life of the Party << Female
	.turnin 14113 >>Turn in Life of the Party << Male
    .accept 14115 >>Accept Pirate Party Crashers
step
    >>Kill |cff00ecffPirate Party Crashers|r. Focus the ones with lower HP
    .goto 194,57.51,76.97,8,0
    .goto 194,60.05,80.79
    .complete 14115,1 --12/12 Pirate Party Crasher slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
    .goto 194,56.4,77.0
    .turnin 14115 >>Turn in Pirate Party Crashers
    .accept 14116 >>Accept The Uninvited Guest
step
    #completewith next
    .goto 194,56.41,75.33,5,0
    .goto 194,55.99,75.65,4,0
    .goto 194,55.96,77.07,5 >>Go up the stairs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Trade Prince Gallywix
    .goto 194,56.7,76.9
    .turnin 14116 >>Turn in The Uninvited Guest
    .accept 14120 >>Accept A Bazillion Macaroons?!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tJump out of the window and talk to Sassy Handwrench, Megs Dreadshredder, and Foreman Dampwick
    .turnin 14120 >>Turn in A Bazillion Macaroons?!
    .accept 14122 >>Accept The Great Bank Heist
    .goto 194,59.6,77.1
    .accept 14121 >>Accept Robbing Hoods
    .goto 194,60.0,78.1
    .accept 14124 >>Accept Liberate the Kaja'mite
    .goto 194,63.0,77.8
step
    #completewith next
    .use 46856
    .vehicle 34840 >>|cfff78300Make sure to use your Keys to the Hot Rod. While in the vehicle you are immune to fall damage|r.
step
    >>Aim the |T133712:0|t[Kablooey Bombs] on Kaja'mite Deposits and loot the chunks on the ground near the mines.
    .goto 194,67.27,77.69,8,0
    .goto 194,69.59,79.35,8,0
    .goto 194,69.03,83.16,8,0
    .goto 194,66.64,84.03,8,0
    .goto 194,66.09,87.34,8,0
    .goto 194,64.34,83.48,8,0
    .goto 194,64.5,83.6
    .use 48768
    .complete 14124,1 --12/12 Kaja'mite Chunk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Slinky Sharpshiv. She moves around
    .goto 194,58.82,75.06
    .accept 14123 >>Accept Waltz Right In
step
    #completewith next
    .vehicle 34840 >>|cfff78300Make sure to use your Keys to the Hot Rod. While in the vehicle you are immune to fall damage|r.
step
    #completewith next
    >>Drive over Hired Looters when you see them
    .goto 194,57.94,69.61,15,0
    .goto 194,47.67,60.09,25,0
    .goto 194,38.63,78.42,25,0
    .goto 194,32.71,63.68,10,0
    .goto 194,29.79,63.75,10,0
    .complete 14121,1 --12/12 Stolen Loot
step
    >>Click on the First Bank of Kezan Vault and follow the instructions shown in the center of your screen
    .goto 194,29.3,69.5
    .complete 14122,1 --1/1 First Bank of Kezan Vault
    .complete 14122,2 --1/1 Personal Riches
step
    >>Drive over Hired Looters when you see them
    .goto 194,35.91,53.68,20,0
    .goto 194,41.33,53.03,20,0
    .goto 194,41.16,42.01,20,0
    .goto 194,35.96,44.39
    .complete 14121,1 --12/12 Stolen Loot
step
    #completewith next
    .vehicle 34840 >>|cfff78300Make sure to use Keys to the Hot Rod|r.
step
    #completewith KezanWaltzRightIn
    +|cfff78300Avoid Villa Mooks and Keesnout Potbellys because they can detect and kill you|r
step
    >>Pick up the Bomb
    .goto 194,24.20,40.67,30,0
    .goto 194,19.9,30.7
    .complete 14123,3 --1/1 The Ultimate Bomb
step
    >>Pick up the painting
    .goto 194,13.1,35.2
    .complete 14123,2 --1/1 The Goblin Lisa
step
    #completewith next
    .goto 194,17.66,44.49,8,0
    .goto 194,17.66,45.92,8,0
    .goto 194,16.79,46.89,5,0
    .goto 194,17.84,46.82,5,0
    .goto 194,17.34,45.91,3 >>Go up the stairs
step
    #label KezanWaltzRightIn
    >>Pick up Maldy's Falcon
    .goto 194,16.7,46.2
    .complete 14123,1 --1/1 Maldy's Falcon
step
    #completewith next
    >>Jump out of the window and run into hostile Villa Mooks or Keesnout Potbellys
    .goto 194,17.65,45.94,5,0
    .goto 194,17.00,33.96
    .deathskip
step
    #completewith next
    .goto 194,61.89,54.13,25,0
    .goto 194,57.90,71.17,15 >>Follow the way to the Headquarters
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Slinky Sharpshiv
    .goto 194,58.97,76.03
    .turnin 14123 >>Turn in Waltz Right In
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
    .goto 194,59.7,76.9
    .turnin 14122 >>Turn in The Great Bank Heist
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Megs Dreadshredder
    .goto 194,60.0,78.2
    .turnin 14121 >>Turn in Robbing Hoods
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Foreman Dampwick
    .goto 194,62.9,77.8
    .turnin 14124 >>Turn in Liberate the Kaja'mite
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
    .goto 194,59.8,76.9
    .accept 14125 >>Accept 447
step
    >>Enter the house and Click on the Defective Generator
    .goto 194,56.07,76.63
    .complete 14125,1 --1/1 Overload the Defective Generator
step
    >>Click on the Leaky Stove
    .goto 194,56.05,74.67
    .complete 14125,2 --1/1 Activate the Leaky Stove
step
    >>Go up the stairs and Click the Flammable Bed
    .goto 194,55.98,77.11,5,0
    .goto 194,56.64,76.33,5,0
    .goto 194,56.61,74.85
    .complete 14125,3 --1/1 Drop a Cigar on the Flammable Bed
step
    >>Jump out of the window and Click on the Gasbot Control Panel
    >>Wait for the short roleplay
    .goto 194,56.60,76.93,8,0
    .goto 194,59.49,76.81
    .complete 14125,4 --1/1 KTC Headquarters Set Ablaze with Gasbot!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Claims Adjuster and Sassy Hardwrench
    .turnin 14125 >>Turn in 447
    .goto 194,59.6,76.6
    .accept 14126 >>Accept Life Savings
    .goto 194,59.6,77.1
step
    #completewith next
    .vehicle 34840 >>|cfff78300Make sure to use your Keys to the Hot Rod|r.
step
    #completewith next
    .goto 194,25.69,32.13,10,0
    .goto 194,22.22,24.92,10 >> Hug the side of the mountain
step
    #completewith next
    .goto 194,22.31,16.78
    .cast 92633 >> Click the cannon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Trade Prince Gallywix
    .use 46856
    .goto 194,20.8,13.7
    .turnin 14126 >>Turn in Life Savings
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Doc Zapnozzle
    >>Sometimes you can get stuck and have to relog or /reload
    .goto 174,24.6,77.9
    .turnin 14239 >>Turn in Don't Go Into the Light
step
    .goto 174,24.65,77.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Geargrinder Gizmo
    .accept 14001 >>Accept Goblin Escape Pods
step
    >>Click on the Goblin Escape Pods
    .goto 174,22.99,75.62,30,0
    .goto 174,25.50,77.65,30,0
    .goto 174,25.37,75.44
    .complete 14001,1 --6/6 Goblin Survivors Rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Handwrench
    .goto 174,27.9,75.5
    .turnin 14001 >>Turn in Goblin Escape Pods
    .accept 14014 >>Accept Get Our Stuff Back!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maxx Avalanche
    .goto 174,27.85,74.29
    .accept 14473 >>Accept It's Our Problem Now
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bamm Megabomb
    .goto 174,27.95,74.43
    .accept 14019 >>Accept Monkey Business
step << Hunter
    #completewith next
    .tame 36740 >>Tame a Teraptor Hatchling
step
    #sticky
    #label TheLostIslesTeraMonkeys
    >>Use |T133979:0|t[Nitro-Potassium Bananas] on |cff00ecffBomb Throwing Monkeys|r and kill |cff00ecffTeraptor Hatchlings|r
    .use 49028
    .goto 174,27.32,70.14,0,0
    .complete 14473,1 --6/6 Teraptor Hatchling slain
    .complete 14019,1 --10/10 Bomb-Throwing Monkeys Fed
step
    >>Collect Crates of Tools
    .goto 174,29.73,75.42,15,0
    .goto 174,30.35,74.49,15,0
    .goto 174,30.10,72.55,20,0
    .goto 174,28.44,70.88,20,0
    .goto 174,27.32,70.14,20,0
    .complete 14014,1 --8/8 Crate of Tools
step
    #requires TheLostIslesTeraMonkeys
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maxx Avalanche and Bamm Megabomb
    .turnin 14473 >>Turn in It's Our Problem Now
    .goto 174,27.85,74.29
    .turnin 14019 >>Turn in Monkey Business
    .goto 174,27.95,74.43
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Handwrench
    .goto 174,27.9,75.5
    .turnin 14014 >>Turn in Get Our Stuff Back!
    .accept 14248 >>Accept Help Wanted
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Foreman Dampwick
    .goto 174,31.27,79.26
    .turnin 14248 >>Turn in Help Wanted
    .accept 14021 >>Accept Miner Troubles
    .accept 14031 >>Accept Capturing the Unknown
step
    #sticky
    #label TheLostIslesSnapflash1
    >>Use the KTC Snapflash to take a picture of the painting on the wall marked with a floating camera
    .goto 175,55.29,68.39
    .use 49887
    .complete 14031,1 --1/1 Cave Painting 1 Captured
step
    #sticky
    #requires TheLostIslesSnapflash1
    #label TheLostIslesSnapflash2
    >>Use the KTC Snapflash to take a picture of the painting on the wall marked with a floating camera
    .use 49887
    .goto 175,46.82,53.78,10,0
    .goto 175,60.44,63.52
    .complete 14031,2 --1/1 Cave Painting 2 Captured
step
    #sticky
    #requires TheLostIslesSnapflash2
    #label TheLostIslesSnapflash3
    >>Use the KTC Snapflash to take a picture of the painting on the wall marked with a floating camera
    .goto 175,83.43,46.55
    .complete 14031,3 --1/1 Cave Painting 3 Captured
step
    #sticky
    #requires TheLostIslesSnapflash3
    #label TheLostIslesSnapflash4
    .goto 175,51.28,19.23,10,0
    .goto 175,42.41,23.23,0,0
    >>Use the KTC Snapflash to take a picture of the painting on the wall marked with a floating camera
    .use 49887
    .complete 14031,4 --1/1 Pygmy Altar Captured
step
    >>Follow and protect the Fightened Miner
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
step
    >>Try to talk to the Dead Orc Scout
    .goto 175,42.3,24.4
    .accept 14233 >>Accept Orcs Can Write?
step
    #requires TheLostIslesSnapflash4
    >>Leave the cave and return to Foreman Dampwick
    .goto 175,55.05,79.29,10,0
    .goto 174,31.27,79.27
    .turnin 14021 >>Turn in Miner Troubles
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Handwrench
    .goto 174,27.88,75.55
    .turnin 14031 >>Turn in Capturing the Unknown
    .turnin 14233 >>Turn in Orcs Can Write?
    .accept 14234 >>Accept The Enemy of My Enemy
step
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step
    #completewith next
    .goto 174,32.73,80.53,30,0
    .goto 174,34.36,80.78,30,0
    .goto 174,36.96,77.02,20 >>Follow the path up the mountain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aggra
    .goto 174,37.63,78.02
    .turnin 14234 >>Turn in The Enemy of My Enemy
    .accept 14235 >>Accept The Vicious Vale
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kilag Gorefang
    .goto 174,35.43,75.71
    .turnin 14235 >>Turn in The Vicious Vale
    .accept 14236 >>Accept Weed Whacker
step
    >>Use the Weed Whacker and run through the plants to kill them
    .use 49108
    .goto 174,33.90,72.85,30,0
    .goto 174,32.81,76.42,20,0
    .complete 14236,1 --100/100 Deadly Jungle Plants mowed down
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kilag Gorefang
    .goto 174,35.43,75.71
    .turnin 14236 >>Turn in Weed Whacker
    .accept 14303 >>Accept Back to Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aggra
    .goto 174,37.63,78.02
    .turnin 14303 >>Turn in Back to Aggra
    .accept 14237 >>Accept Forward Movement
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kilag Gorefang
    .goto 174,34.62,66.85
    .turnin 14237 >>Turn in Forward Movement
    .accept 14238 >>Accept Infrared = Infradead
step
    >>Use Infraread Heat Focals and kill |cff00ecffSI:7 Assassins|r
    .use 49611
    .goto 174,31.67,65.81
    .complete 14238,1 --10/10 SI:7 Assassin slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kilag Gorefang
    .goto 174,34.61,66.85
    .turnin 14238 >>Turn in Infrared = Infradead
    .accept 14240 >>Accept To the Cliffs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Brax
    .goto 174,25.28,59.84
    .turnin 14240 >>Turn in To the Cliffs
    .accept 14241 >>Accept Get to the Gyrochoppa!
step
    >>Kill |cff00ecffSI:7 Operatives|r and |cff00ecffGyrochopper Pilots|r. Loot them for the Gyrochoppa Keys
    .goto 174,23.23,67.50
    .complete 14241,1 --1/1 Gyrochoppa Keys
step
    >>Interact with the Gyrochoppa. You can ignore the pilot.
    .goto 174,23.2,67.5
    .turnin 14241 >>Turn in Get to the Gyrochoppa!
    .accept 14242 >>Accept Precious Cargo
step
    >>Go down into the ship and talk to Thrall
    .goto 174,11.8,62.7
    .complete 14242,1 --1/1 Precious Cargo located
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrall
    .goto 174,11.8,62.8
    .turnin 14242 >>Turn in Precious Cargo
    .accept 14326 >>Accept Meet Me Up Top
step
    >>Go outside and Meet Thrall on the deck
    .goto 174,12.68,63.33,10,0
    .goto 174,12.4,63.1
    .turnin 14326 >>Turn in Meet Me Up Top
    .accept 14243 >>Accept Warchief's Revenge
step
    >>Focus the small boats with your Lightning Strike (Default: 1). Otherwise just kill the swimming sailors.
    .complete 14243,1 --50/50 Alliance Sailor slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrall
    .goto 174,35.92,66.72
    .turnin 14243 >>Turn in Warchief's Revenge
    .accept 14445 >>Accept Farewell, For Now
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
    .goto 174,36.02,67.53
    .turnin 14445 >>Turn in Farewell, For Now
    .accept 14244 >>Accept Up, Up & Away!
step
    >>Right-Click on the Rocket Sling
    .goto 174,36.34,66.55
    .skipgossip
    .complete 14244,1 --1/1 Rocket Sling Trip Survived
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Foreman Dampwick
    .goto 174,44.54,64.36
    .turnin 14244 >>Turn in Up, Up & Away!
    .accept 14245 >>Accept It's a Town-In-A-Box
step
    >>Right-Click on the Town-In-A-Box Plunger
    .goto 174,45.40,65.36
    .complete 14245,1 --1/1 Town-In-A-Box Set Off!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Foreman Dampwick
    .goto 174,45.36,64.74
    .turnin 14245 >>Turn in It's a Town-In-A-Box
    .accept 27139 >>Accept Hobart Needs You
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hobart Grapplehammer
    .goto 174,45.34,65.22
    .turnin 27139 >>Turn in Hobart Needs You
    .accept 24671 >>Accept Cluster Cluck
step
    >>Click on 10 cluckers around the town
    .loop 20,174,45.64,64.12,46.45,64.90,47.03,65.75,46.28,66.40,45.39,66.82,44.55,66.91,44.52,65.61,44.67,63.90
    .complete 24671,1 --10/10 Wild Cluckers captured
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hobart Grapplehammer and Bamm Megabomb
    .turnin 24671 >>Turn in Cluster Cluck
    .goto 174,45.34,65.22
    .accept 24741 >>Accept Trading Up
    .goto 174,45.25,64.85
step
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step
    >>Use the item Wild Cluster Eggs to place an egg into a trap. Then wait until a raptor steps into the trap and loot the Spiny Raptor Egg
    .use 50232
    .goto 174,49.64,63.45,30,0
    .goto 174,50.25,65.80,20,0
    .goto 174,50.64,68.35,15,0
    .goto 174,47.83,69.14,20,0
    .goto 174,45.93,69.88
    .complete 24741,1 --5/5 Spiny Raptor Egg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bamm Megabomb and Hobart Grapplehammer
    .turnin 24741 >>Turn in Trading Up
    .goto 174,45.25,64.85
    .accept 24744 >>Accept The Biggest Egg Ever
    .goto 174,45.34,65.21
step
    >>Kill the |cff00ecffMechachicken|r. Loot its egg
    .goto 174,44.46,54.24
    .complete 24744,1 --1/1 The Biggest Egg Ever
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hobart Grapplehammer
    .goto 174,45.34,65.21
    .turnin 24744 >>Turn in The Biggest Egg Ever
    .accept 24816 >>Accept Who's Top of the Food Chain Now?
step
    >>Kill |cff00ecffRavenous Lurkers|r. Loot them for their parts
    .goto 174,43.41,70.15,20,0
    .goto 174,42.49,63.12,20,0
    .goto 174,41.53,63.36,10,0
    .goto 174,42.6,62.7
    .complete 24816,1 --5/5 Shark Parts
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Assistant Greely
    .goto 174,45.27,65.57
    .turnin 24816 >>Turn in Who's Top of the Food Chain Now?
    .accept 24817 >>Accept A Goblin in Shark's Clothing
step
    >>Right-Click on the Mechshark X-Steam Controller
    .goto 174,43.68,65.50
    .complete 24817,1 --1/1 Use the Mechashark X-Steam Controller
step
    >>Use your 1 & 2 abilities to kill The Hammer.
    .goto 174,41.7,66.7
    .complete 24817,2 --1/1 The Hammer slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hobart Grapplehammer
    .goto 174,45.34,65.21
    .turnin 24817 >>Turn in A Goblin in Shark's Clothing
    .accept 24856 >>Accept Invasion Imminent!
step
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Megs Dreadshredder
    .goto 174,52.2,73.2
    .turnin 24856 >>Turn in Invasion Imminent!
    .accept 24858 >>Accept Bilgewater Cartel Represent
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brett "Coins" McQuid
    .goto 174,52.20,73.22
    .accept 24859 >>Accept Naga Hide
step
    #completewith next
    >>Kill |cff00ecffNagas|r while replacing the banners. Loot them for their hides
    .goto 174,54.12,78.39,0,0
    .complete 24859,1 --5/5 Intact Naga Hide
step
    .goto 174,52.22,79.19,10,0
    .goto 174,52.76,78.97,10,0
    .goto 174,53.47,80.15,10,0
    .goto 174,54.14,79.91,10,0
    .goto 174,54.81,79.39,10,0
    .goto 174,55.50,79.54,10,0
    .goto 174,55.49,77.98,10,0
    .goto 174,54.86,76.94,10,0
    .goto 174,55.04,76.25,10,0
    .goto 174,53.53,76.90,10,0
    .complete 24858,1 --10/10 Naga Banners replaced
step
    >>Kill |cff00ecffNagas|r while replacing the banners. Loot them for their hides
    .goto 174,54.27,83.49,30,0
    .goto 174,54.12,78.39,0,0
    .complete 24859,1 --5/5 Intact Naga Hide
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brett "Coins" McQuid and Megs Dreadshredder
    .turnin 24859 >>Turn in Naga Hide
    .goto 174,52.2,73.22
    .turnin 24858 >>Turn in Bilgewater Cartel Represent
    .accept 24864 >>Accept Irresistible Pool Pony
    .goto 174,52.20,73.14
step
    #completewith next
    .use 50602
    .cast 71914 >>Use the |T132261:0|t[Irresistible Pool Pony] once you reach the water.
step
    >>Talk to the Naga Hatchlings. Be careful to not kill the hatchlings with AoE abilities
    .use 50602
    .goto 174,59.23,83.03
    .complete 24864,1 --12/12 Naga Hatchlings lured
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Megs Dreadshredder
    .goto 174,52.2,73.15
    .turnin 24864 >>Turn in Irresistible Pool Pony
    .accept 24868 >>Accept Surrender or Else!
step
    >>When you see the spawn animation (purple circle) then you can already go back. Keep looking behind you because you still have to kill the leader
    .goto 174,54.07,90.06,1,0
    .goto 174,53.90,84.17
    .complete 24868,1 --1/1 Leader of the naga dealt with
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Megs Dreadshredder
    .goto 174,52.20,73.15
    .turnin 24868 >>Turn in Surrender or Else!
    .accept 24897 >>Accept Get Back to Town
step
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
    .goto 174,45.18,64.91
    .turnin 24897 >>Turn in Get Back to Town
    .accept 24901 >>Accept Town-In-A-Box: Under Attack
step
    >>Click a B.C. Eliminator to enter it and shoot at Oomlot Warriors
    .goto 174,45.7,65.0
    .complete 24901,1 --30/30 Oomlot Warriors defeated
step
    #completewith next
    +|cfff78300Leave the vehicle|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
    .goto 174,45.2,64.9
    .turnin 24901 >>Turn in Town-In-A-Box: Under Attack
    .accept 24924 >>Accept Oomlot Village
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Izzy
    .goto 174,56.56,71.96
    .turnin 24924 >>Turn in Oomlot Village
    .accept 24925 >>Accept Free the Captives
    .accept 24929 >>Accept Send a Message
step
    #sticky
    #label TheLostIslesGoblinCaptives
    >>Killing Oomlot Shamans frees the goblins
    .goto 174,59.16,70.39,0,0
    .complete 24925,1 --5/5 Goblin Captives freed
step
    .goto 174,59.20,67.32,15,0
    .goto 174,62.91,68.54
    .complete 24929,1 --1/1 Yngwie slain
step
    #requires TheLostIslesGoblinCaptives
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Izzy
    .goto 174,56.56,71.96
    .turnin 24925 >>Turn in Free the Captives
    .turnin 24929 >>Turn in Send a Message
    .accept 24937 >>Accept Oomlot Dealt With
step
    #completewith next
    .hs >>Hearth to Town-In-A-Box
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
    .goto 174,45.2,64.9
    .turnin 24937 >>Turn in Oomlot Dealt With
    .accept 24940 >>Accept Up the Volcano
step
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step
    #completewith next
    +|cfff78300Avoid the Goblin Zombies while running up the mountain|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coach Crosscheck, Foreman Dampwick and Assisstant Greely
    .turnin 24940 >>Turn in Up the Volcano
    .accept 24942 >>Accept Zombies vs. Super Booster Rocket Boots
    .goto 174,51.8,47.1
    .accept 24945 >>Accept Three Little Pygmies
    .goto 174,51.85,47.19
    .accept 24946 >>Accept Rockin' Powder
    .goto 174,51.73,47.38
step
    #completewith next
    >>You have to cancel Shadowform if you are a shadow priest before you can use the boots <<Priest
    .use 52013
    .goto 174,51.77,46.97
    .cast 72891 >>|cfff78300Use the Super Booster Rocket Boots|r
step
    #completewith next
    >>Kill |cff00ecffGoblin Zombies|r by walking over them with the Rocket Boots
    >>|cfff78300Avoid Oostan Headhunters|r. They can kill you very easily
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    #completewith TheLostIslesGaahl
    >>Pick up Rockin' Powder from the ground
    .complete 24946,1 --5/5 Rockin' Powder
step
    >>Kill |cff00ecffMalmo|r
    .goto 174,58.74,47.16
    .complete 24945,2 --1/1 Malmo slain
step
    >>Kill |cff00ecffTeloch|r
    .goto 174,63.7,52.76
    .complete 24945,3 --1/1 Teloch slain
step
    #label TheLostIslesGaahl
    >>Kill |cff00ecffGaahl
    .goto 174,59.59,40.20
    .complete 24945,1 --1/1 Gaahl slain
step
    >>Look around and pick up the remaining powders
    .goto 174,58.8,40.5
    .complete 24946,1 --5/5 Rockin' Powder
step
    >>Kill |cff00ecffGoblin Zombies|r by walking over them with the Rocket Boots
    .use 52013
    .goto 174,56.67,44.26,15,0
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Foreman Dampwick, Assistant Greedy, and Coach Crosscheck
    .turnin 24945 >>Turn in Three Little Pygmies
    .goto 174,51.85,47.20
    .turnin 24946 >>Turn in Rockin' Powder
    .goto 174,51.73,47.38
    .turnin 24942 >>Turn in Zombies vs. Super Booster Rocket Boots
    .accept 24952 >>Accept Rocket Boot Boost
    .goto 174,51.8,47.1
step
    >>Use the Rockin' Powder Infused Rocket Boots
    .use 52032
    .complete 24952,1 --1/1 Rockin' Powder Infused Rocket Boots used
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hobart Grapplehammer
    .goto 174,68.93,46.44
    .turnin 24952 >>Turn in Rocket Boot Boost
    .accept 24954 >>Accept Children of a Turtle God
step
    >>Kill |cff00ecffChilds of Volcanoth|r. Loot them for the glands
    .goto 174,66.92,44.29,20,0
    .goto 174,68.64,43.40
    .complete 24954,1 --5/5 Fire Gland
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hobart Grapplehammer
    .goto 174,68.93,46.44
    .turnin 24954 >>Turn in Children of a Turtle God
    .accept 24958 >>Accept Volcanoth!
step
    >>Spam Use |T135624:0|t[Bootzooka] at the waypoint location
    .use 52043
    .goto 176,55.55,33.93
    .complete 24958,1 --1/1 Volcanoth slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
    .goto 176,62.99,49.87
    .turnin 24958 >>Turn in Volcanoth!
    .accept 25023 >>Accept Old Friends
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrall, Sassy Hardwrench, and Aggra
    .turnin 25023 >>Turn in Old Friends
    .accept 25024 >>Accept Repel the Paratroopers
    .goto 174,36.79,43.14
    .accept 25058 >>Accept Mine Disposal, the Goblin Way
    .goto 174,37.35,41.91
    .accept 25093 >>Accept The Heads of the SI:7
    .goto 174,36.26,43.36
step
    #sticky
    #label TheLostIslesLandMines
    >>Use the |T133716:0|t[Satchel of Grenades] to destroy the mines
    .use 52280
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith TheLostIslesCyn
    >>Kill |cff00ecffAlliance Paratrooper|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
step
    >>Kill |cff00ecffCommander Arrignton|r. Loot him for his head
    .goto 174,32.29,42.89
    .complete 25093,1 --1/1 Commander Arrington's Head
step
    >>Kill |cff00ecffAlexi Silenthowl|r. Loot him for his head
    .goto 174,30.80,33.92
    .complete 25093,3 --1/1 Alexi Silenthowl's Head
step
    #label TheLostIslesCyn
    >>Kill |cff00ecffDarkblade Cyn|r. Loot him for his head
    .goto 174,33.44,27.88
    .complete 25093,2 --1/1 Darkblade Cyn's Head
step
    >>Kill |cff00ecffAlliance Paratrooper|r
    .goto 174,32.38,36.34
    .complete 25024,1 --10/10 Alliance Paratrooper slain
step
    #requires TheLostIslesLandMines
    #completewith next
    .cooldown item,6948,<1,1
    .hs >>Hearth to Warchief's Lookout
step
    #requires TheLostIslesLandMines
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrall, Aggra, and Sassy Hardwrench
    .turnin 25024 >>Turn in Repel the Paratroopers
    .goto 174,36.8,43.1
    .turnin 25093 >>Turn in The Heads of the SI:7
    .goto 174,36.26,43.37
    .turnin 25058 >>Turn in Mine Disposal, the Goblin Way
    .accept 25066 >>Accept The Pride of Kezan
    .goto 174,37.35,41.91
step
    #completewith next
    .skipgossip 38387,1
    .vehicle 39074 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench to enter the vehicle
step
    >>Use |T134273:0|tWild Weasel Rockets (2) on cooldown
    >>Otherwise spam |T135627:0|tMachine Gun (1)
    .goto 174,30.37,39.89
    .complete 25066,1 --10/10 Gnomeregan Stealth Fighters shot down
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly back and talk to Sassy Hardwrench
    .goto 174,37.36,41.92
    .turnin 25066 >>Turn in The Pride of Kezan
    .accept 25098 >>Accept The Warchief Wants You
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrall
    .goto 174,36.79,43.13
    .turnin 25098 >>Turn in The Warchief Wants You
    .accept 25099 >>Accept Borrow Bastia
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kilag Gorefang
    .goto 174,33.8,38.8
    .turnin 25099 >>Turn in Borrow Bastia
    .accept 25100 >>Accept Let's Ride
    .timer 87,Panther Ride
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Slinky Sharpshiv after riding with the panther
    .goto 174,53.71,34.94
    .turnin 25100 >>Turn in Let's Ride
    .accept 25109 >>Accept The Gallywix Labor Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEnter the cave, jump down and talk to Assistant Greely
    .goto 174,54.09,36.01,10,0
    .goto 174,54.94,33.72,10,0
    .goto 174,53.17,36.55
    .turnin 25109 >>Turn in The Gallywix Labor Mine
    .accept 25110 >>Accept Kaja'Cola Gives You IDEAS! (TM)
step
    >>Click on a Kaja'Cola Zero-One to collect it
    .goto 174,53.59,37.41,10,0
    .goto 174,53.94,37.46,10,0
    .goto 174,53.70,36.67
    .complete 25110,1 --1/1 Kaja'Cola Zero-One
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Assistant Greely
    .goto 174,53.17,36.55
    .turnin 25110 >>Turn in Kaja'Cola Gives You IDEAS! (TM)
    .accept 25122 >>Accept Morale Boost
    .accept 25123 >>Accept Throw It On the Ground!
step
    #sticky
    >>You need to collect a total of 9 Kaja'Colas Zero-One
    >>Target a Kezan Citizen and use the cola
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
step
    #title Free Ace
    >>Target Ace and use a Kaja'Cola Zero-One
    .goto 174,57.1,36.9
    .use 52484
    .complete 25122,1 --1/1 Ace's mind freed
step
    #title Free Izzy
    >>Target Izzy and use a Kaja'Cola Zero-One
    .goto 174,57.01,35.02
    .use 52484
    .complete 25122,2 --1/1 Izzy's mind freed
step
    >>Kill |cff00ecffBlastshadow the Brutemaster|r and pick up the flying purple Soulstone. Target the corpse of Blastshadow the Brutemaster and use the soulstone
    .use 52481
    .goto 174,56.18,32.29
    .complete 25123,1 --1/1 Blastshadow's Soulstone destroyed
step
    #title Free Gobber
    >>Target Gobber and use a Kaja'Cola Zero-One
    .goto 174,57.04,32.17
    .use 52484
    .complete 25122,3 --1/1 Gobber's mind freed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Assistant Greely
    .turnin 25123 >>Turn in Throw It On the Ground!
    .turnin 25122 >>Turn in Morale Boost
    .accept 25125 >>Accept Light at the End of the Tunnel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Mine Cart
    .goto 174,56.29,27.33
    .turnin 25125 >>Turn in Light at the End of the Tunnel
    .accept 25184 >>Accept Wild Mine Cart Ride
step
    .goto 174,54.2,17.0
    .complete 25184,1 --1/1 Mine Cart ridden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Assistant Greely
    .goto 174,54.4,16.9
    .turnin 25184 >>Turn in Wild Mine Cart Ride
    .accept 25200 >>Accept Shredder Shutdown
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coach Crosscheck
    .goto 174,54.44,16.93
    .accept 25201 >>Accept The Ultimate Footbomb Uniform
step
    #sticky
    #label TheLostIslesShredderShutdown
    .goto 174,53.5,18.9,0,0
    .complete 25200,1 --8/8 Steamwheedle Shark slain
step
    >>Pick up the Spare Shredder Parts
    .goto 174,53.24,19.55,20,0
    .goto 174,52.16,20.68,20,0
    .goto 174,51.85,19.17,20,0
    .goto 174,52.64,16.93,20,0
    .goto 174,53.13,18.70
    .complete 25201,1 --8/8 Spare Shredder Parts
step
    #requires TheLostIslesShredderShutdown
    #completewith next
    .goto 174,54.47,17.16
    .vendor
step
    #requires TheLostIslesShredderShutdown
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coach Crosscheck
    .goto 174,54.44,16.93
    .turnin 25201 >>Turn in The Ultimate Footbomb Uniform
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Assistant Greely
    .goto 174,54.4,16.93
    .turnin 25200 >>Turn in Shredder Shutdown
    .accept 25204 >>Accept Release the Valves
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ace
    .goto 174,54.16,17.21
    .accept 25203 >>Accept What Kind of Name is Chip, Anyway?
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Izzy
    .goto 174,54.01,16.98
    .accept 25202 >>Accept The Fastest way to His Heart
step
    >>Click on the Valve
    .goto 174,50.85,15.86,10,0
    .goto 174,50.72,13.81
    .complete 25204,1 --1/1 Valve #1 released
step
    >>Click on the Valve
    .goto 174,50.5,13.2
    .complete 25204,3 --1/1 Valve #3 released
step << Female
    >>Kill |cff00ecffChip Endale|r. Loot him for his heart
    .goto 174,50.1,13.8
    .complete 25202,1 --1/1 Still-Beating Heart
step << Male
    >>Kill |cff00ecffChip Endale|r. Loot him for his heart
    .goto 174,50.1,13.8
    .complete 25203,1 --1/1 Still-Beating Heart
step
    >>Click on the Valve
    .goto 174,49.9,12.8
    .complete 25204,4 --1/1 Valve #4 released
step
    >>Click on the Valve
    .goto 174,50.2,11.8
    .complete 25204,2 --1/1 Valve #2 released
step
    >>Interact with the Platform Control Panel
    .goto 174,51.4,13.1
    .turnin 25204 >>Turn in Release the Valves
    .accept 25207 >>Accept Good-bye, Sweet Oil
step
    >>Click on the red button
    .goto 174,51.4,13.1
    .complete 25207,1 --1/1 KTC Oil Platform destroyed
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ace
    .goto 174,54.16,17.19
    .turnin 25203 >>Turn in What Kind of Name is Chip, Anyway?
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Izzy
    .goto 174,54.01,16.97
    .turnin 25202 >>Turn in The Fastest way to His Heart
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Assistant Greely
    .goto 174,54.4,16.9
    .turnin 25207 >>Turn in Good-bye, Sweet Oil
    .accept 25213 >>Accept The Slave Pits
    .timer 24,Shredder Ride
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench after riding with the shredder
    .goto 174,43.63,25.32
    .turnin 25213 >>Turn in The Slave Pits
    .accept 25244 >>Accept What Kind of Name is Candy, Anyway? << Female
	.accept 25243 >>Accept She Loves Me. She Loves Me NOT! << Male
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hobart
    .goto 174,43.85,25.30
    .accept 25214 >>Accept Escape Velocity
step
    #completewith next
    >>Click on Captured Goblins
    .complete 25214,1 --8/8 Cages launched
step
    >>Kill |cff00ecffCandy Cane|r
    .goto 174,39.68,27.18
    .complete 25244,1 << Female --1/1 Candy Cane slain
	.complete 25243,1 << Male --1/1 Candy Cane slain
step
    >>Click on Captured Goblins
    .goto 174,40.03,26.08,10,0
    .goto 174,41.03,25.24,15,0
    .goto 174,41.24,26.35
    .complete 25214,1 --8/8 Cages launched
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hobart Grapplehammer and Sassy Hardwrench
    .turnin 25214 >>Turn in Escape Velocity
    .goto 174,43.85,25.29
    .turnin 25244 >>Turn in What Kind of Name is Candy, Anyway? << Female
	.turnin 25243 >>Turn in She Loves Me. She Loves Me NOT! << Male
    .accept 25251 >>Accept Final Confrontation
    .goto 174,43.63,25.32
step
    >>Enter the Ultimate Footbomb Uniform
    .goto 174,43.86,25.16
    .complete 25251,1 --1/1 Ultimate Footbomb Uniform
step
    >>Target Trade Prince Gallywix and all use your abilities on cooldown
    .goto 174,41.87,17.61,10,0
    .goto 174,43.4,19.9
    .complete 25251,2 --1/1 Trade Prince Gallywix dealt with
step
    #completewith next
    .goto 174,42.76,18.61,10,0
    .goto 174,42.24,19.45,20 >>Jump down
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
    .goto 174,43.6,25.3
    .turnin 25251 >>Turn in Final Confrontation
    .accept 25265 >>Accept Victory!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrall
    .goto 174,42.16,17.37
    .turnin 25265 >>Turn in Victory!
    .accept 25266 >>Accept Warchief's Emissary
step
    #completewith next
    .goto 174,42.57,16.37
    .skipgossip
    .zone 1 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkspear Loyalist
    .goto 1,57.65,9.78
    .turnin 25266 >>Turn in Warchief's Emissary
    .accept 25267 >>Accept Message for Saurfang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Saurfang
    .goto 85,48.5,70.8
    .turnin 25267 >>Turn in Message for Saurfang
step
    #completewith next
    .goto 85,50.08,76.18,10 >>Leave Grommash Hold
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Revi
    .goto 85,43.74,73.17,20,0
    .goto 85,38.6,78.2
    .turnin 32673 >>Turn in Learn To Ride
    .skill riding,75 >>Train Apprentice Riding
]])
