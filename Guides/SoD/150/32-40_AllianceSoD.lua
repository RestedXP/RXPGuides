RXPGuides.RegisterGuide([[
#version 20
#season 2
#group RXP SOD TEST
#classic
<< Alliance
#name 32-33 Wetlands/Hillsbrad SoD
#next 33-34 Thousand Needles SoD

step
    #xprate >1.99
    #optional
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 289 >> Accept The Cursed Crew
    .isQuestTurnedIn 288
step
    .goto Wetlands,10.828,60.399
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vincent Hyal|r
    .turnin 1301 >> Turn in James Hyal
    .accept 1302 >> Accept James Hyal
    .target Vincent Hyal
step
#xprate >1.99
    .goto Wetlands,10.585,60.592
    .target Glorin Steelbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 270 >> Turn in The Doomed Fleet
    .accept 321 >>Accept Lightforge Iron
step
    #completewith next
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
	>>|cRXP_WARN_Accepting this quest will make |cRXP_ENEMY_Tapoke "Slim" Jahn|r by the Inn entrance|r |T132320:0|t[Stealth] |cRXP_WARN_and run away outside|r
    .turnin 1248 >> Turn in The Missing Diplomat
    .accept 1249,1 >> Accept The Missing Diplomat
    .target Mikhail
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.795,59.616
    >>|cRXP_WARN_Quickly run outside!|r
    >>|cRXP_WARN_Defeat |cRXP_ENEMY_Tapoke "Slim" Jahn|r. |cRXP_ENEMY_Slim's Friend|r will run away once |cRXP_ENEMY_Tapoke "Slim" Jahn|r submits|r
    >>|cRXP_WARN_Use any Crowd Control (CC) on |cRXP_ENEMY_Slim's Friend|r if needed|r
    .complete 1249,1 --1/1 Defeat Tapoke Jahn
    .mob Tapoke "Slim" Jahn
step
    #sticky
    #label Mead
    .goto Wetlands,10.69,60.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
    >>|cRXP_BUY_Buy a|r |T132792:0|t[Flagon of Dwarven Honeymead] |cRXP_BUY_from him|r
    .collect 2594,1,288,1 -- Flagon of Dwarven Honeymead (1)
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
    >>|cRXP_WARN_Wait out the RP|r
    .turnin 1249 >> Turn in The Missing Diplomat
    .target Mikhail
step
    .goto Wetlands,10.545,60.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
    .accept 1250 >> Accept The Missing Diplomat
    .target Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1250 >> Turn in The Missing Diplomat
    .accept 1264 >> Accept The Missing Diplomat
    .target Mikhail
step
    #xprate >1.99
    #requires Mead
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >> Accept The Third Fleet
    .turnin 288 >> Turn in The Third Fleet
    .accept 289 >> Accept The Cursed Crew
    .target First Mate Fitzsimmons
step
    #xprate >1.99
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .accept 281 >> Accept Reclaiming Goods
    .isQuestTurnedIn 279
    .target Karl Boran
step
    #xprate >1.99
    #optional
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Turn in Daily Delivery
    .target James Halloran
    .isOnQuest 469
step
    #xprate >1.99
    .isQuestTurnedIn 484
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .accept 471 >> Accept Apprentice's Duties
    .target James Halloran
step
    #xprate >1.99
    .isQuestTurnedIn 279
    .goto Wetlands,13.513,41.384
    >>Click the |cRXP_PICK_Damaged Crate|r on the ground
    .turnin 281 >> Turn in Reclaiming Goods
    .accept 284 >> Accept The Search Continues
--XX xp check in 22-24 wetlands, you do this q chain early if you're lacking xp
step
    #xprate >1.99
    .isQuestTurnedIn 281
    .goto Wetlands,13.608,38.214
    >>Click the |cRXP_PICK_Sealed Barrel|r on the ground
    .turnin 284 >> Turn in The Search Continues
    .accept 285 >> Accept Search More Hovels
step
    #xprate >1.99
    .isQuestTurnedIn 284
    .goto Wetlands,13.945,34.809
    >>Click the |cRXP_PICK_Half-buried Barrel|r on the ground
    .turnin 285 >> Turn in Search More Hovels
    .accept 286 >> Accept Return the Statuette
step
    #xprate >1.99
    #loop
    .goto Wetlands,14.00,29.80,0
    .goto Wetlands,15.03,24.05,0
    .goto Wetlands,14.00,29.80,70,0
    .goto Wetlands,15.03,24.05,70,0
    >>Kill |cRXP_ENEMY_Cursed Sailors|r, |cRXP_ENEMY_Cursed Marines|r and |cRXP_ENEMY_First Mate Snellig|r. Loot him for his |cRXP_LOOT_Snuffbox|r
    .complete 289,1 -- Cursed Sailor slain (13)
    .complete 289,2 -- Cursed Marine slain (5)
    .complete 289,3 -- Snellig's Snuffbox
    .mob Cursed Sailor
    .mob Cursed Marine
    .mob First Mate Snellig
step
    #loop
    #xprate >1.99
    .isOnQuest 471
    .goto Wetlands,18.0,27.0,0
    .goto Wetlands,22.8,21.8,0
    .goto Wetlands,28.0,18.8,0
    .goto Wetlands,18.0,27.0,70,0
    .goto Wetlands,22.8,21.8,70,0
    .goto Wetlands,28.0,18.8,70,0
    >>Kill |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Giant Crocolisk Skin|r
    .complete 471,1 --6/6 Giant Crocolisk Skin
    .mob Giant Wetlands Crocolisk
step
    #xprate >1.99
    .isQuestComplete 471
    .goto Wetlands,8.54,55.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 471 >>Turn in Apprentice's Duties
    .target James Halloran
step
    #xprate >1.99
    .isOnQuest 286
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 286 >> Turn in Return the Statuette
    .target Karl Boran
step
    #xprate >1.99
    >>Click the |cRXP_PICK_Waterlogged Chest|r
    .goto Wetlands,12.10,64.19
    .turnin 321 >>Turn in Lightforge Iron
    .accept 324 >>Accept The Lost Ingots
    .isQuestTurnedIn 270
step
#xprate >1.99
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    .goto Wetlands,12.6,65.2
    >>Kill |cRXP_ENEMY_Bluegill Raiders|r. Loot them for |cRXP_LOOT_Ingots|r
    .complete 324,1 --5/5 Lightforge Ingot
    .mob Bluegill Raider
    .isQuestTurnedIn 270
step
#xprate >1.99
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 289 >> Turn in The Cursed Crew
    .accept 290 >> Accept Lifting the Curse
    .target First Mate Fitzsimmons
step
#xprate >1.99
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 324 >>Turn in The Lost Ingots
    .accept 322 >>Accept Blessed Arm
    .target Glorin Steelbrow
step
#xprate >1.99
    .goto Wetlands,10.84,55.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harlo Barnaby|r
    .accept 472 >> Accept Fall of Dun Modr
    .target Harlo Barnaby
step
#xprate >1.99
    #label Halyndor
    .goto Wetlands,15.984,23.111,25,0
    .goto Wetlands,15.44,23.60
    >>Run up the mast of the ship
    >>Kill |cRXP_ENEMY_Captain Halyndor|r. Loot him for the |cRXP_LOOT_Strongbox Key|r
    .complete 290,1 --1/1 Intrepid Strongbox Key
    .mob Captain Halyndor
step
#xprate >1.99
    .goto Wetlands,14.292,23.609,15,0
    .goto Wetlands,14.381,24.047
    >>Enter through the large hole on the side of the ship
    >>Click |cRXP_PICK_Intrepid's Locked Strongbox|r on the ground
    .turnin 290 >>Turn in Lifting the Curse
    .accept 292 >>Accept The Eye of Paleth
step
#xprate >1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r and |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 472 >>Turn in Fall of Dun Modr
    .goto Wetlands,49.803,18.257
    .accept 631 >>Accept The Thandol Span
    .goto Wetlands,49.908,18.233
    .target Longbraid the Grim
    .target Rhag Garmason
step
#xprate >1.99
    .group 3 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r and |cRXP_FRIENDLY_Longbraid the Grim|r
    .accept 303 >> Accept The Dark Iron War
    .goto Wetlands,49.665,18.231
    .accept 304 >> Accept A Grim Task
    .goto Wetlands,49.803,18.257
    .target Motley Garmason
    .target Longbraid the Grim
step
#xprate >1.99
    .group 3
    #completewith next
    .goto Wetlands,62.48,28.41,40,0
    .goto Wetlands,61.83,26.27,40,0
    .goto Wetlands,60.01,24.35,40,0
    .goto Wetlands,62.48,28.41
    >>Kill |cRXP_ENEMY_Dark Iron Dwarves|r, |cRXP_ENEMY_Dark Iron Tunnelers|r, |cRXP_ENEMY_Dark Iron Saboteurs|r and |cRXP_ENEMY_Dark Iron Demolitionists|r
    >>|cRXP_ENEMY_Dark Iron Saboteurs|r |cRXP_WARN_will cast|r |T135826:0|t[Sapper Explode] |cRXP_WARN_as they die which deals Fire damage in close proximity|r
    >>|cRXP_ENEMY_Dark Iron Demolitionists|r |cRXP_WARN_will continously throw|r |T135826:0|t[Bombs] |cRXP_WARN_from range|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob Dark Iron Dwarf
    .mob Dark Iron Tunneler
    .mob Dark Iron Saboteur
    .mob Dark Iron Demolitionist
step
#xprate >1.99
    .group 3
--  .goto Wetlands,46.6,18.6,0
--  .goto Wetlands,47.4,15.0,0
--  .goto Wetlands,62.48,28.41,40,0
--  .goto Wetlands,46.6,18.6,0,40,0
--  .goto Wetlands,47.4,15.0,0,40,0
    .goto Wetlands,62.48,28.41
    >>Kill |cRXP_ENEMY_Balgaras the Foul|r. Loot him for his |cRXP_LOOT_Ear|r
    .complete 304,1 -- Ear of Balgaras
    .mob Balgaras the Foul
step
#xprate >1.99
    .group 3
    .goto Wetlands,62.48,28.41,40,0
    .goto Wetlands,61.83,26.27,40,0
    .goto Wetlands,60.01,24.35,40,0
    .goto Wetlands,62.48,28.41
    >>Kill |cRXP_ENEMY_Dark Iron Dwarves|r, |cRXP_ENEMY_Dark Iron Tunnelers|r, |cRXP_ENEMY_Dark Iron Saboteurs|r and |cRXP_ENEMY_Dark Iron Demolitionists|r
    >>|cRXP_ENEMY_Dark Iron Saboteurs|r |cRXP_WARN_will cast|r |T135826:0|t[Sapper Explode] |cRXP_WARN_as they die which deals Fire damage in close proximity|r
    >>|cRXP_ENEMY_Dark Iron Demolitionists|r |cRXP_WARN_will continously throw|r |T135826:0|t[Bombs] |cRXP_WARN_from range|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob Dark Iron Dwarf
    .mob Dark Iron Tunneler
    .mob Dark Iron Saboteur
    .mob Dark Iron Demolitionist
step
#xprate >1.99
    .group
    .goto Wetlands,49.665,18.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >> Turn in The Dark Iron War
    .target Motley Garmason
    .isQuestComplete 303
step
#xprate >1.99
    .group
    .goto Wetlands,49.803,18.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 304 >> Turn in A Grim Task
    .target Longbraid the Grim
    .isQuestComplete 304
step
#xprate >1.99
    .goto Wetlands,51.481,8.111,15,0
    .goto Wetlands,51.115,8.156,15,0
    .goto Wetlands,51.287,7.953
    >>Click on |cRXP_PICK_Ebenezer Rustlocke's Corpse|r
    >>|cRXP_WARN_Ensure you are on full HP before going down the Spiral Staircase. There are 2 Elite |cRXP_ENEMY_Dark Iron Sabotuers|r. Cast any crowd-control abilities on them when once you go down and then run past them. Run back up and out after|r
    .turnin 631 >>Turn in The Thandol Span
    .accept 632 >>Accept The Thandol Span
    .link https://youtu.be/awe7f-iI-ic >>|cRXP_WARN_Click here for a video guide|r
step
#xprate >1.99
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Turn in The Thandol Span
    .accept 633 >>Accept The Thandol Span
    .target Rhag Garmason
step
#xprate >1.99
    .goto Arathi Highlands,43.240,92.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foggy MacKreel|r
    >>|cRXP_WARN_Jump down onto the invisible chain first, then onto the broken beam on the bridge. All classes are able to do this jump. If you are unable to do it, skip this step|r
    .accept 647 >>Accept MacKreel's Moonshine
    .target Foggy MacKreel
    .link https://www.twitch.tv/videos/646111384 >>|cRXP_WARN_Click here for a video guide|r
step
#xprate >1.99
    .goto Arathi Highlands,44.28,92.877
    >>Dive down underwater
    >>Open the |cRXP_PICK_Waterlogged Letter|r. Loot it for the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r]
    >>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r] to start the quest|r
    .collect 4433,1,637
    .use 4433
    .accept 637 >>Accept Sully Balloo's Letter
step
#xprate >1.99
    #completewith PleaTurnin
    .goto Arathi Highlands,52.5,90.4,30 >>Swim east toward the ramp here
step
#xprate >1.99
    .goto Arathi Highlands,48.789,88.058
    >>Click the |cRXP_PICK_Cache of Explosives|r
    .complete 633,1 --1/1 Cache of Explosives Destroyed
step
#xprate >1.99
    #label PleaTurnin
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >>Turn in The Thandol Span
    .accept 634 >>Accept Plea To The Alliance
    .target Rhag Garmason
step
#xprate >1.99
    #completewith next
    .goto Arathi Highlands,45.83,47.55,150 >> Travel to Refuge Point
step
#xprate >1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .goto Arathi Highlands,45.83,47.55
    .turnin 634 >>Turn in Plea To The Alliance
    .target Captain Nials
step
#xprate >1.99
    .goto Arathi Highlands,46.652,47.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 690 >> Turn in Malin's Request
    .isOnQuest 690
    .target Skuerto
step
#xprate >1.99
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
    .goto Arathi Highlands,45.73,46.09
    .fp Arathi >> Get the Arathi Highlands Flight Path
    .target Cedrik Prose
step -- Needs better guidance to avoid Tarren Mill Courier
#xprate >1.99
    #softcore
    >>Travel to the basement in the Southshore Inn. If you fail the timed quest, abandon it and skip this step
    >>If you die, the quest will fail
    .goto Arathi Highlands,19.72,29.04,150,0
    .goto Hillsbrad Foothills,50.71,58.76,15,0
    .goto Hillsbrad Foothills,52.09,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmeister Bilger|r
    .turnin 647 >>Turn in MacKreel's Moonshine
    .target Brewmeister Bilger
step -- Needs better guidance to avoid Tarren Mill Courier
#xprate >1.99
    #hardcore
    >>Travel to the basement in the Southshore Inn. If you fail the timed quest, abandon it and skip this step
    .goto Arathi Highlands,19.72,29.04,150,0
    .goto Hillsbrad Foothills,50.71,58.76,15,0
    .goto Hillsbrad Foothills,52.09,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmeister Bilger|r
    .turnin 647 >>Turn in MacKreel's Moonshine
    .target Brewmeister Bilger
step
#xprate >1.99
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .accept 536 >> Accept Down the Coast
    .target Lieutenant Farren Orinelle
step
#xprate <1.99
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Southshore>> Fly to Southshore
    .target Shellei Brondir
step
    #completewith LeaveSS
    >>|cRXP_WARN_The |cRXP_ENEMY_Shadowy Assassin|r attack on Southshore is a random event|r
    >>If you ever see a |cRXP_ENEMY_Shadowy Assassin|r in Southshore, kill them. Loot them for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
    >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] to start the quest|r
    >>|cRXP_WARN_Skip this step if you don't see the event|r
	.collect 3668,1,522
    .use 3668
    .accept 522 >> Accept Assassin's Contract
    .unitscan Shadowy Assassin 
step
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 538 >> Turn in Southshore
    .target Loremaster Dibbs
step
#xprate <1.99 << !Hunter
    .goto Hillsbrad Foothills,50.344,59.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
    .accept 659 >> Accept Hints of a New Plague?
    .target Phin Odelic
step
#xprate <1.99
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .accept 536 >> Accept Down the Coast
    .target Lieutenant Farren Orinelle
step
#xprate <1.99
    .goto Hillsbrad Foothills,51.170,58.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Anderson|r
    .home >> Set your Hearthstone to Southshore
    .target Innkeeper Anderson
step
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24
    >>Kill |cRXP_ENEMY_Torn Fin Tidehunters|r and |cRXP_ENEMY_Torn Fin Oracles|r
    .complete 536,1 --10/10 Torn Fin Tidehunter slain
    .complete 536,2 --10/10 Torn Fin Oracle slain
    .mob Torn Fin Tidehunter
    .mob Torn Fin Oracle
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 536 >> Turn in Down the Coast
    .accept 559 >> Accept Farren's Proof
    .target Lieutenant Farren Orinelle
step
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24,50,0
    .goto Hillsbrad Foothills,33.19,69.10,50,0
    .goto Hillsbrad Foothills,31.47,72.51,50,0
    .goto Hillsbrad Foothills,28.81,73.18,50,0
    .goto Hillsbrad Foothills,24.84,70.21,50,0
    .goto Hillsbrad Foothills,33.19,69.10
    >>Kill |cRXP_ENEMY_Torn Fin Tidehunters|r, |cRXP_ENEMY_Torn Fin Oracles|r, |cRXP_ENEMY_Torn Fin Coastrunners|r and |cRXP_ENEMY_Torn Fin Muckdwellers|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 559,1 --10/10 Murloc Head
    .mob Torn Fin Muckdweller
    .mob Torn Fin Coastrunner
    .mob Torn Fin Tidehunter
    .mob Torn Fin Oracle
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 559 >> Turn in Farren's Proof
    .accept 560 >> Accept Farren's Proof
    .target Lieutenant Farren Orinelle
step
    .goto Hillsbrad Foothills,49.473,58.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 560 >> Turn in Farren's Proof
    .accept 561 >> Accept Farren's Proof
    .target Marshal Redpath
step
    .goto Hillsbrad Foothills,48.145,59.121
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .accept 505 >> Accept Syndicate Assassins
    .target Magistrate Henry Maleb
step
    .goto Hillsbrad Foothills,48.145,59.121
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    >>|cRXP_WARN_Don't accept the follow up|r
    .turnin 522 >> Turn in Assassin's Contract
    .isOnQuest 522
    .target Magistrate Henry Maleb
step
    #label LeaveSS
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 561 >> Turn in Farren's Proof
    .accept 562 >> Accept Stormwind Ho!
    .target Lieutenant Farren Orinelle
step
    .goto Hillsbrad Foothills,52.97,64.67,60,0
    .goto Hillsbrad Foothills,55.32,63.35,60,0
    .goto Hillsbrad Foothills,58.35,66.37,60,0
    .goto Hillsbrad Foothills,59.55,73.43,60,0
    .goto Hillsbrad Foothills,56.97,67.01
    >>Kill |cRXP_ENEMY_Daggerspine Sirens|r and |cRXP_ENEMY_Daggerspine Shorehunters|r
    >>|cRXP_WARN_You may need to swim out in the water for them|r
    .complete 562,1 --10/10 Daggerspine Shorehunter
    .complete 562,2 --10/10 Daggerspine Siren
    .mob Daggerspine Shorehunter
    .mob Daggerspine Siren
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 562 >> Turn in Stormwind Ho!
    .accept 563 >> Accept Reassignment
    .target Lieutenant Farren Orinelle
step
    #label start
    .goto Hillsbrad Foothills,48.937,55.028
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
    >>|cRXP_BUY_Buy 4|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from him|r
    .collect 3713,4,1218,1 --1/1 Soothing Spices
    .target Micha Yance
step
#xprate >1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fp Southshore >>Get the Southshore Flight Path
    .target Darla Harris
step
    #era/som
    .goto Hillsbrad Foothills,49.431,55.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartolo Ginsetti|r
    >>Skip this step if you don't have a |T132913:0|t[Bolt of Woolen Cloth] and |T133759:0|t[Hillman's Cloak]
    .accept 565 >> Accept Bartolo's Yeti Fur Cloak
    .itemcount 3719,1 -- Hillman's Cloak (1)
    .itemcount 2997,1 -- Bolt of Woolen Cloth (1)
    .target Bartolo Ginsetti
step
#xprate <1.99
    #era/som
    .isOnQuest 689
    #completewith next
    .goto Hillsbrad Foothills,45.46,31.25,40 >> Enter the Darrow Hill Yeti Cave
step
#xprate <1.99
    #era/som
    #completewith next
    .isOnQuest 565
    >>Kill |cRXP_ENEMY_Yeti's|r. Loot them for their |cRXP_LOOT_Fur|r
    >>|cRXP_WARN_Only complete this if you managed to acquire a|r |T132913:0|t[Bolt of Woolen Cloth] |cRXP_WARN_and|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_earlier|r
    .complete 565,4 -- Yeti Fur (10)
    .mob Cave Yeti
    .mob Ferocious Yeti
    .mob Mountain Yeti
    .mob Giant Yeti
    .itemcount 3719,1 -- Hillman's Cloak (1)
    .itemcount 2997,1 -- Bolt of Woolen Cloth (1)
step
#xprate <1.99
    #era/som        
    .isOnQuest 689
    .goto Hillsbrad Foothills,44.36,26.48,50,0
    .goto Hillsbrad Foothills,42.13,32.80,50,0
    .goto Hillsbrad Foothills,44.49,29.74
    >>Loot the |cRXP_LOOT_Alterac Granite|r on the ground
    >>|cRXP_LOOT_Alterac Granite|r |cRXP_WARN_spawns throughout the entire Cave|r
    .complete 689,1 --5/5 Alterac Granite
step
    #era/som
    .isOnQuest 565
    .goto Hillsbrad Foothills,44.36,26.48,50,0
    .goto Hillsbrad Foothills,42.13,32.80,50,0
    .goto Hillsbrad Foothills,44.49,29.74
    .goto Alterac Mountains,41.6,65.0,0
    .goto Alterac Mountains,36.6,70.6,0
    .goto Alterac Mountains,31.2,52.8,0
    >>Kill |cRXP_ENEMY_Yeti's|r. Loot them for their |cRXP_LOOT_Fur|r
    >>|cRXP_WARN_If all of the |cRXP_ENEMY_Yeti's|r are dead inside of the cave you may kill the |cRXP_ENEMY_Yeti's|r to the north around Alterac Mountains as well|r
    >>|cRXP_WARN_Only complete this if you managed to acquire a|r |T132913:0|t[Bolt of Woolen Cloth] |cRXP_WARN_and|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_earlier|r
    .complete 565,4 -- Yeti Fur (10)
    .mob Cave Yeti
    .mob Ferocious Yeti
    .mob Mountain Yeti
    .mob Giant Yeti
    .itemcount 3719,1 -- Hillman's Cloak (1)
    .itemcount 2997,1 -- Bolt of Woolen Cloth (1)
step
    #completewith next
	>>Kill |cRXP_ENEMY_Syndicate Thieves|r and |cRXP_ENEMY_Syndicate Footpads|r
    .complete 505,1 --12/12 Syndicate Footpad slain
    .complete 505,2 --8/8 Syndicate Thief slain
    .mob Syndicate Footpad
    .mob Syndicate Thief
step
    .goto Alterac Mountains,58.317,67.951
    >>Click the |cRXP_PICK_Syndicate Documents|r on the table
    .accept 510 >> Accept Foreboding Plans
    .accept 511 >> Accept Encrypted Letter
step
    #label FinishSyndicate
    >>Kill |cRXP_ENEMY_Syndicate Thieves|r and |cRXP_ENEMY_Syndicate Footpads|r
    .goto Alterac Mountains,58.31,67.92,90,0
    .goto Alterac Mountains,48.0,82.0,90,0
    .goto Alterac Mountains,58.31,67.92
    .goto Alterac Mountains,48.0,82.0,0
    .complete 505,1 --12/12 Syndicate Footpad slain
    .complete 505,2 --8/8 Syndicate Thief slain
    .mob Syndicate Footpad
    .mob Syndicate Thief
step
    #xprate <1.2
    .goto Hillsbrad Foothills,69.30,12.40
    >>Kill |cRXP_ENEMY_Snapjaws|r. Loot them for their |cRXP_LOOT_Turtle Meat|r
    >>|cRXP_WARN_Go up and down along the River until you've completed it|r
    .collect 3712,10,555,1
    .mob Snapjaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto Western Plaguelands,42.924,85.061
    .fp Chillwind>> Get the Western Plaguelands Flight Path
    .target Bibilfaz Featherwhistle
step
    #completewith letter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto Western Plaguelands,42.924,85.061
    .fly Southshore>> Fly to Southshore
    .target Bibilfaz Featherwhistle
step
    .goto Hillsbrad Foothills,48.937,55.028
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
    >>|cRXP_BUY_Buy 1|r |T132912:0|t[Fine Thread] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Skip this step if you havn't completed the other objectives of the quest Bartolo's Yeti Fur Cloak|r
    .collect 2321,1,565,1 --1/1 Fine Thread
    .itemcount 2997,1 -- Bolt of Woolen Cloth (1)
    .itemcount 3719,1 -- Hillman's Cloak (1)
    .itemcount 3720,10 -- Yeti Fur (10)
    .target Micha Yance
step
    .goto Hillsbrad Foothills,48.937,55.028
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
    >>|cRXP_BUY_Buy 1|r |T134059:0|t[Soothing Spice] |cRXP_BUY_from him|r
    .collect 3713,1,555,1 --1/1 Soothing Spices
    .target Micha Yance
step
    .isQuestComplete 565
    .goto Hillsbrad Foothills,49.431,55.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartolo Ginsetti|r
    >>Skip this step if you don't have |T133759:0|t[Hillman's Cloak] and a |T132913:0|t[Bolt of Woolen Cloth]
    .turnin 565 >> Turn in Bartolo's Yeti Fur Cloak
    .target Bartolo Ginsetti
step
    #label letter
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 511 >> Turn in Encrypted Letter
    .accept 514 >> Accept Letter to Stormpike
    .target Loremaster Dibbs
step
#xprate <1.2
    .goto Hillsbrad Foothills,51.885,58.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
    .accept 555 >> Accept Soothing Turtle Bisque
    .turnin 555 >> Turn in Soothing Turtle Bisque
    .target Chef Jessen
step
#xprate >1.19
#ah
    .goto Hillsbrad Foothills,51.885,58.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
    .accept 555 >> Accept Soothing Turtle Bisque
    .turnin 555 >> Turn in Soothing Turtle Bisque
    .target Chef Jessen
    .itemcount 3712,10
step << Hunter
#xprate >1.99
    #completewith fly2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley|r
    .goto Hillsbrad Foothills,50.415,58.803
    .stable >> Stable your pet. You will tame a |cRXP_ENEMY_Plains Creeper|r shortly
    .target Wesley
step
    .goto Hillsbrad Foothills,48.145,59.121
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 505 >> Turn in Syndicate Assassins
    .turnin 510 >> Turn in Foreboding Plans
    .target Magistrate Henry Maleb
step
#xprate <1.99 << !Hunter
#label fly2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Arathi>> Fly to Arathi Highlands
    .target Darla Harris
    .zoneskip Arathi Highlands
step << Hunter
#xprate >1.99
    #label courierhunter
    .goto Arathi Highlands,41.6,47.8,0
    .goto Arathi Highlands,41.8,58.6,0
    .goto Arathi Highlands,49.0,50.2,0  
    .goto Arathi Highlands,41.6,47.8,40,0
    .goto Arathi Highlands,41.8,58.6,40,0
    .goto Arathi Highlands,49.0,50.2,40,0
    .goto Arathi Highlands,48.0,58.6
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find a |cRXP_ENEMY_Plains Creeper|r. Some of their locations are marked on your map|r
    >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Plains Creeper|r to tame it|r -- .tame 2563
    .train 17265 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 5)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
	.unitscan Plains Creeper
step
#xprate <1.99
	#era/som
    .goto Arathi Highlands,45.832,47.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .accept 681 >> Accept Northfold Manor
    .target Captain Nials
step
#xprate <1.99
    .goto Arathi Highlands,46.652,47.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 690 >> Turn in Malin's Request
    .isOnQuest 690
    .target Skuerto
step
#xprate <1.99 << !Hunter
    .goto Arathi Highlands,60.185,53.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .turnin 659 >> Turn in Hints of a New Plague?
    .accept 658 >> Accept Hints of a New Plague?
    .target Quae
step << Hunter
    #season 2
    .train 410109,1
    .goto Arathi Highlands,67.8,66.0
    >>Kill |cRXP_ENEMY_Needletooth|r. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Steady Shot|r]
    >>|cRXP_ENEMY_Needletooth|r |cRXP_WARN_is a fish that swims in the Witherbark Village lake|r
    .collect 213122,1
    .mob Needletooth
step << Hunter
    #season 2
    .train 410109 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Steady Shot|r] |cRXP_WARN_to train|r |T132213:0|t[Steady Shot]
    .use 213122
    .itemcount 213122,1
step
#xprate <1.99
	#completewith Northfold
    .goto Arathi Highlands,25.68,59.45,15,0
    .goto Arathi Highlands,23.76,60.26,15,0
    .goto Arathi Highlands,23.76,58.39,35,0
    .goto Arathi Highlands,26.966,58.834
    >>|cRXP_WARN_Travel to Stromgarde Keep to further train your|r |T135966:0|t[First Aid]
    >>|cRXP_WARN_Follow the Arrow very closely once you are inside, as there are a lot of Elite mobs in the Keep|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deneb Walker|r
    >>|cRXP_BUY_Buy the|r |T133740:0|t[Expert First Aid - Under Wraps]|cRXP_BUY_,|r |T133735:0|t[Manual: Heavy Silk Bandage] |cRXP_BUY_and|r |T133735:0|t[Manual: Mageweave Bandage] |cRXP_BUY_from him|r
    >>|cRXP_FRIENDLY_Deneb Walker|r |cRXP_WARN_also has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_WARN_and|r |T134851:0|t|T134831:0|t[Potions] |cRXP_WARN_as well which you should buy|r << !Warrior !Rogue
    >>|cRXP_FRIENDLY_Deneb Walker|r |cRXP_WARN_also has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_WARN_and|r |T134831:0|t[Potions] |cRXP_WARN_as well which you should buy|r << Warrior Rogue
    .collect 16084,1 -- Expert First Aid - Under Wraps
    .collect 16112,1 -- Manual: Heavy Silk Bandage
    .collect 16113,1 -- Manual: Mageweave Bandage
    .skill firstaid,151,1 -- step only displays if firstaid skill is less than 151. if they have 151 or above they've already learnt these books
    .target Deneb Walker
    --TODO: bridge jump video
step
#xprate <1.99
    #completewith courier << !Hunter
    #completewith courierhunter << Hunter
    .line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
    .line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
    >>Kill the |cRXP_ENEMY_Forsaken Courier|r. Loot her for her |cRXP_LOOT_Sealed Folder|r 
    >>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find the|r |cRXP_ENEMY_Forsaken Courier|r << Hunter
    >>|cRXP_WARN_If you can't see them in Arathi, look for them in Hillsbrad after finishing Northfold Manor|r << Hunter
    .complete 658,1 --1/1 Sealed Folder
    .unitscan Forsaken Courier
step
#xprate <1.99
    #era/som
	#label Northfold
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47
    >>Kill |cRXP_ENEMY_Syndicate Mercenaries|r and |cRXP_ENEMY_Syndicate Highwaymen|r
    >>|cRXP_WARN_Be aware |cRXP_ENEMY_Syndicate Highwaymen|r are in|r |T132320:0|t[Stealth] |cRXP_WARN_and can be found around the perimiter of Northfold Manor|r
    >>|cRXP_WARN_Cast|r |T136090:0|t[Perception] |cRXP_WARN_to help spot|r |cRXP_ENEMY_Syndicate Highwaymen|r << Human
    .complete 681,1 --10/10 Syndicate Highwayman slain
    .complete 681,2 --10/10 Syndicate Mercenary slain
    .mob Syndicate Highwayman
    .mob Syndicate Mercenary
step << Hunter
#xprate <1.99
    #completewith next
    .hs >> Hearth to Southshore
	>>|cRXP_BUY_Buy food/water if needed|r
step << Hunter
#xprate <1.99
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley|r
    .goto Hillsbrad Foothills,50.415,58.803
    .stable >> Stable your pet. You will tame a |cRXP_ENEMY_Plains Creeper|r shortly
    .target Wesley
step << Hunter
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Arathi>> Fly to Arathi Highlands
    .target Darla Harris
step
#xprate <1.99
    #era/som
    #label courier
    .goto Arathi Highlands,45.832,47.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 681 >> Turn in Northfold Manor
    .target Captain Nials
step << Hunter
#xprate <1.99
    #label courierhunter
    .goto Arathi Highlands,41.6,47.8,0
    .goto Arathi Highlands,41.8,58.6,0
    .goto Arathi Highlands,49.0,50.2,0  
    .goto Arathi Highlands,41.6,47.8,40,0
    .goto Arathi Highlands,41.8,58.6,40,0
    .goto Arathi Highlands,49.0,50.2,40,0
    .goto Arathi Highlands,48.0,58.6
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find a |cRXP_ENEMY_Plains Creeper|r. Some of their locations are marked on your map|r
    >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Plains Creeper|r to tame it|r -- .tame 2563
    .train 17265 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 5)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
	.unitscan Plains Creeper
step
#xprate <1.99
    .isQuestComplete 658
    .goto Arathi Highlands,60.185,53.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    >>|cRXP_WARN_Don't go out of your way to find the |cRXP_ENEMY_Forsaken Courier|r. You can skip this step and finish it later|r
    .turnin 658 >> Turn in Hints of a New Plague?
    .target Quae
step << !Hunter
#xprate <1.99
    #completewith next
    .hs >> Hearth to Southshore if you are far away from the Flight Path
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r or |cRXP_FRIENDLY_Cedrik Prose|r << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r << Hunter
    .goto Hillsbrad Foothills,49.338,52.272,-1
    .goto Arathi Highlands,45.73,46.09,-1
    .fly Wetlands >> Fly to Wetlands
    .target Darla Harris << !Hunter
    .target Cedrik Prose
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
step << !Mage
#xprate >1.99
    .hs >> Hearth to Ironforge
    .zoneskip Ironforge
step << Mage
#xprate >1.99
    .zone Ironforge >> Teleport to Ironforge
step
#xprate >1.99
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Balloo|r
    .turnin 637 >> Turn in Sully Balloo's Letter
    .timer 17,Sully Balloo's Letter RP
    .accept 683 >> Accept Sara Balloo's Plea
    .target Sara Balloo
step << Hunter/Warrior
#xprate >1.99
#completewith flyif
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >> Train your class spells
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
step
#xprate >1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .goto Ironforge,74.645,11.742
    .turnin 514 >>Turn in Letter to Stormpike
    .target Prospector Stormpike
    .isOnQuest 514
step << Warlock
#xprate >1.99
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .acceptmultiple 4736,4738 >> Accept In Search of Menara Voidrender
    .target Briarthorn
step << Warlock/Rogue
#xprate >1.99
#completewith flyif
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,50.343,5.657 << Warlock
    .trainer >> Train your class spells
    .target Fenthwick << Rogue
    .target Briarthorn << Warlock
step
#xprate >1.99
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 683 >> Turn in Sara Balloo's Plea
    .accept 686 >> Accept A King's Tribute
    .target King Magni Bronzebeard
step << Priest/Paladin
#xprate >1.99
#completewith flyif
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,23.141,6.149 << Paladin
    .trainer >> Train your class spells
    .target Toldren Deepiron << Priest
    .target Brandur Ironhammer << Paladin
step
#xprate >1.99
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .turnin 686 >> Turn in A King's Tribute
step
#label flyif
#xprate >1.99
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Fly to Wetlands
    .target Gryth Thurden
    .zoneskip Wetlands
step
#xprate >1.99
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 292 >>Turn in The Eye of Paleth
    .accept 293 >>Accept Cleansing the Eye
    .target Glorin Steelbrow
]])

RXPGuides.RegisterGuide([[
#version 20
#group RXP SOD TEST
#season 2
#classic
<< Alliance
#name 33-34 Thousand Needles SoD
#next 34-35 Stranglethorn Vale I SoD


step
    #completewith next
    .goto Wetlands,7.270,62.527,25 >> Travel to the Menethil Harbor Dock
step
    .goto Wetlands,5.075,63.408
    .zone Dustwallow Marsh >> Take the boat to Theramore
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
    .zoneskip Tanaris
    .zoneskip Thousand Needles
    .zoneskip The Barrens
step
    #completewith MDiplomat
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
    .goto Dustwallow Marsh,67.476,51.300
    .fp Theramore >> Get the Theramore Flight Path
    .target Baldruc
step
    #label JamesHyjal
    .goto Dustwallow Marsh,67.877,48.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Lendry|r upstairs in the Keep
    .turnin 1302 >> Turn in James Hyal
    .target Clerk Lendry
    .isOnQuest 1302
step
    #label MDiplomat
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Samaul|r
    .turnin 1264 >> Turn in The Missing Diplomat
    .accept 1265 >> Accept The Missing Diplomat
    .goto Dustwallow Marsh,67.923,48.540
    .target Commander Samaul
step
    .goto Dustwallow Marsh,66.156,46.067
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Byron|r
    .accept 1282 >> Accept They Call Him Smiling Jim
    .target Guard Byron
    .isQuestAvailable 1302
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Janene|r
    .goto Dustwallow Marsh,66.587,45.223
    .home >> Set your Hearthstone to Theramore
    .target Innkeeper Janene
step << Paladin
    .trainer >>Train your spells
    .train 19752 >>Train |T136106:0|t[|cRXP_FRIENDLY_Divine Intervention|r]. You will need it for a rune later << sod
step
    .goto Dustwallow Marsh,66.459,45.147
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Longears|r
    .accept 1135 >> Accept Highperch Venom
    .maxlevel 33 << !Hunter !Rogue
    .target Fiora Longears
step << Warlock
    #season 2
    #completewith AltekFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
    .goto Dustwallow Marsh,67.476,51.300
    .fly Auberdine >> Fly to Auberdine
    .target Baldruc
    .train 403938,1
    .itemcount 210765,1 --Orb of Des (1)
    .itemcount 210763,<1 --Bough of Altek (<1)
    .isQuestAvailable 78680
    .dungeon SFK
step << Warlock
    #season 2
    #label AltekFinal
    .goto Darkshore,56.3,26.5
    >>Loot the |cRXP_PICK_Bough of Altek|r at the top of the tower to get the |T135153:0|t[Bough of Altek]
    .collect 210763,1
    .train 403938,1
    .itemcount 210765,1 --Orb of Des (1)
    .isQuestAvailable 78680
    .dungeon SFK
step << Warlock
    #season 2
    #optional
    #completewith OrcReport
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Theramore >> Fly to Theramore
    .target Caylais Moonfeather
    .cooldown item,6948,<0
    .zoneskip Darkshore,1
    .dungeon SFK
step << Warlock
    #season 2
    #completewith OrcReport
    .hs >> Hearth to Theramore
    .zoneskip Dustwallow Marsh,1
    .cooldown item,6948,>0,1
    .dungeon SFK
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .goto Dustwallow Marsh,66.005,45.500
    .stable >> Withdraw your pet from the Stable
    .target Michael
step
    .goto Dustwallow Marsh,66.437,51.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helenia Olden|r
    >>|cRXP_BUY_Buy 3|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from her|r
    .collect 3713,3,1218,1 -- Soothing Spices (3)
    .target Helenia Olden
step
    .goto Dustwallow Marsh,59.72,41.17 >> Travel to the Sentry Point Tower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
    >>|cRXP_WARN_Stay in |cRXP_FRIENDLY_Archmage Tervosh's|r Line of Sight as he will buff you with|r |T135880:0|t[Proudmoore's Defense] |cRXP_WARN_which gives 10 Stamina and 40 Armor|r
    .complete 1265,1 --1/1 Sentry Point explored
    .goto Dustwallow Marsh,59.652,41.243
    .turnin 1265 >> Turn in The Missing Diplomat
    .accept 1266 >> Accept The Missing Diplomat
    .goto Dustwallow Marsh,59.652,41.243
    .target Archmage Tervosh
step
    .goto Dustwallow Marsh,55.437,26.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .accept 1218 >> Accept Soothing Spices
    .turnin 1218 >> Turn in Soothing Spices
    .target "Swamp Eye" Jarl
step
    #label OrcReport
    .goto Dustwallow Marsh,55.442,25.917
    >>Click the |cRXP_PICK_Loost Dirt|r
    .accept 1219 >> Accept The Orc Report
step
#softcoreserver
#hardcore
    .goto Dustwallow Marsh,45.24,24.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
    >>|cRXP_WARN_IF YOU CHOOSE TO ACCEPT THE FOLLOW UP QUEST YOU WILL BE PVP FLAGGED! MEANING HORDE PLAYERS CAN KILL YOU! PROCEED AT YOUR OWN RISK!|r
    >>|cRXP_WARN_You will NOT be PvP Flagged for turning in this current quest. Auto accept has been turned OFF for the follow up|r
    .turnin 1266 >> Turn in The Missing Diplomat
    .target Private Hendel
    .isQuestTurnedIn 1264
step
#softcoreserver
#hardcore
    .isQuestTurnedIn 1264
    .goto Dustwallow Marsh,45.24,24.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
    >>|cRXP_WARN_IF YOU CHOOSE TO ACCEPT THIS QUEST YOU WILL BE PVP FLAGGED! MEANING HORDE PLAYERS CAN KILL YOU! PROCEED AT YOUR OWN RISK!|r
    .accept 1324,1 >> Accept The Missing Diplomat
    .target Private Hendel
step
#hardcoreserver
    .goto Dustwallow Marsh,45.24,24.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
    >>|cRXP_WARN_Blizzard has adjusted this quest so it will no longer PvP Flag you on Official Hardcore Servers|r
    .turnin 1266 >> Turn in The Missing Diplomat
    .accept 1324,1 >> Accept The Missing Diplomat
    .target Private Hendel
    .isQuestTurnedIn 1264
step
#softcore
    .goto Dustwallow Marsh,45.24,24.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
    .turnin 1266 >> Turn in The Missing Diplomat
    .accept 1324,1 >> Accept The Missing Diplomat
    .target Private Hendel
    .isQuestTurnedIn 1264
step
    .goto Dustwallow Marsh,45.24,24.65
    >>Defeat |cRXP_ENEMY_Private Hendel|r. He will attack you along with 2 |cRXP_ENEMY_Theramore Sentries|r
    >>They will both reset once you subdue |cRXP_ENEMY_Private Hendel|r
	.complete 1324,1 --1/1 Subdue Private Hendel
    .isOnQuest 1324
    .mob Private Hendel
step
    .isQuestComplete 1324
    .goto Dustwallow Marsh,45.193,24.292
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
    .turnin 1324 >> Turn in The Missing Diplomat
    .target Archmage Tervosh
step
    .isQuestTurnedIn 1324    
    .goto Dustwallow Marsh,45.218,24.230
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 1267 >> Turn in The Missing Diplomat
    .target Lady Jaina Proudmoore
step
	#sticky
	.abandon 1324 >> Abandon The Missing Diplomat quest if you still have it in your quest log
step
#season 0,1 << Hunter
	.goto Dustwallow Marsh,35.154,38.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
    .accept 1177 >> Accept Hungry!
    .target Mudcrush Durtfeet
step
    >>Click the |cRXP_PICK_Hoofprints|r on the ground
    >>Click the |cRXP_PICK_Black Shield|r hanging on the fireplace
    >>Click the |cRXP_PICK_Theramore Guard Badge|r on the wooden plank
    .accept 1284 >> Accept Suspicious Hoofprints
    .goto Dustwallow Marsh,29.705,47.645
    .accept 1253 >> Accept The Black Shield
    .goto Dustwallow Marsh,29.631,48.606
    .accept 1252 >> Accept Lieutenant Paval Reethe
    .goto Dustwallow Marsh,29.832,48.243
step << Warlock
    #season 2
    .goto The Barrens,49.2,57.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
    .turnin 1740 >>Turn in The Orb of Soran'ruk
    .accept 78680 >>Accept Rumors Abound
    .turnin 78680 >>Turn in Rumors Abound
    .accept 78681 >>Accept The Conjuring
    .target Doan Karhan
    .train 403938,1
    .itemcount 210763,1 --Bough of Altek (1)
    .itemcount 210765,1 --Orb of Des (1)
    .isQuestComplete 1740
    .dungeon SFK
step << Warlock
    #season 2
    #optional
    .goto The Barrens,49.2,57.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
    .accept 78680 >>Accept Rumors Abound
    .turnin 78680 >>Turn in Rumors Abound
    .accept 78681 >>Accept The Conjuring
    .target Doan Karhan
    .train 403938,1
    .itemcount 210763,1 --Bough of Altek (1)
    .itemcount 210765,1 --Orb of Des (1)
    .isQuestTurnedIn 1740
    .dungeon SFK
step << Warlock
    #season 2
    #optional
    .goto The Barrens,49.2,57.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
    .accept 78680 >>Accept Rumors Abound
    .turnin 78680 >>Turn in Rumors Abound
    .accept 78681 >>Accept The Conjuring
    .target Doan Karhan
    .train 403938,1
    .itemcount 210763,1 --Bough of Altek (1)
    .itemcount 210765,1 --Orb of Des (1)
    .isQuestTurnedIn 1740
    .dungeon SFK
step << Warlock
    #season 2
    #optional
    .goto The Barrens,49.2,57.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
    .turnin 1740 >>Turn in The Orb of Soran'ruk
    .target Doan Karhan
    .train 403938,1
    .isQuestComplete 1740
    .dungeon SFK
step << Warlock
    #season 2
    #optional
    #completewith next
    .goto The Barrens,63.087,37.607
    .subzone 392 >>Travel to Ratchet
    .isOnQuest 78681
    .train 403938,1
    .dungeon SFK
step << Warlock
    #season 2
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Aszhara >> Fly to Azshara
    .target Bragok
    .isOnQuest 78681
    .train 403938,1
    .dungeon SFK
step << Warlock
    #season 2
    #optional
    #completewith next
    .zone Ashenvale >>Travel to Ashenvale
    .train 403938,1
    .isOnQuest 78681
    .dungeon SFK
step << Warlock
    #season 2
    .goto Ashenvale,83.07,70.56,40,0
    .goto Ashenvale,84.05,76.96,30,0
    .goto Ashenvale,81.29,78.14,30,0
    .goto Ashenvale,79.05,81.11,30,0
    .goto Ashenvale,84.2,76.4
    >>Kill the |cRXP_ENEMY_Demons|r in the area. Loot them for the |cRXP_LOOT_Blood of the Legion|r
    .complete 78681,1 --10/10 Blood of the Legion
    .mob Mannoroc Lasher
    .mob Felguard
    .mob Searing Infernal
    .mob Legion Hound
    .isOnQuest 78681
    .dungeon SFK
step << Warlock
    #season 2
    #completewith WarlockRuneMetamorphosisB
    +|cRXP_WARN_If you're in a group of warlocks then the first warlock (the one who has a debuff) who turns in the quest has to get the killing blow of the |cRXP_ENEMY_Searing Infernal|r while standing inside the rune|r
    .train 403938,1
    .isQuestAvailable 78702
    .zoneskip Ashenvale,1
    .dungeon SFK
step << Warlock
    #season 2
    >>Interact with the |cRXP_PICK_Dark Ritual Stone|r
    .goto Ashenvale,78.92,80.29
    .turnin 78681 >>Turn in The Conjuring
    .target Dark Ritual Stone
    .train 403938,1
    .zoneskip Ashenvale,1
    .dungeon SFK
step << Warlock
    #season 2
    #label WarlockRuneMetamorphosisB
    >>Kill the spawning |cRXP_ENEMY_Demons|r. |cRXP_WARN_Kill the |cRXP_ENEMY_Searing Infernal|r WHILE CHANNELING|r |T136163:0|t[Drain Soul] |cRXP_WARN_and WHILE STANDING INSIDE THE RUNE|r
    .goto Ashenvale,79.00,80.38
    .accept 78684 >>Accept Mysterious Traveler
    .mob Searing Infernal
    .train 403938,1
    .zoneskip Ashenvale,1
    .dungeon SFK
step << Warlock
    #season 2
    #optional
    #completewith next
    .goto Azshara,11.90,77.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
    .fly Ratchet>> Fly to Ratchet
    .target Jarrodenus
    .zoneskip The Barrens
    .dungeon SFK
step << Warlock
    #season 2
    .goto The Barrens,49.2,57.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r to get the |T134419:0|t[|cRXP_FRIENDLY_Rune of Metamorphosis|r]
    .turnin 78684 >>Turn in Mysterious Traveler
    .turnin 78702 >>Turn in Raszel Ander
    .collect 210980,1
    .target Doan Karhan
    .train 403938,1
    .dungeon SFK
step << Warlock
    #season 2
    .use 210980
    .itemcount 210980,1
    .train 403938 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Metamorphosis|r] |cRXP_WARN_to train|r |T237558:0|t[Metamorphosis]
    .dungeon SFK
step
	#completewith next
    .goto The Barrens,44.213,91.217,0
    .goto Thousand Needles,32.09,22.33
    .zone Thousand Needles >> Travel to Thousand Needles
step
    .goto Thousand Needles,30.725,24.346
    >>Loot |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] on the ground
    .use 5791 >>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] to start the quest|r
    .accept 1100 >> Accept Lonebrow's Journal
step << Mage
    #season 2
    .train 425189,1
    #loop
    .goto Thousand Needles,23.2,25.0,25,0
    .goto Thousand Needles,20.2,22.0,25,0
    .goto Thousand Needles,17.6,19.6,25,0
    .goto Thousand Needles,18.6,24.6,25,0
    >>Kill |cRXP_ENEMY_Galak Marauders|r, |cRXP_ENEMY_Galak Maulers|r and |cRXP_ENEMY_Galak Stormers|r. Loot them for the |cRXP_LOOT_Cougar Cage Key|r
    .collect 214435,1
    .mob Galak Mauler
    .mob Galak Marauder
    .mob Galak Stormer
    .itemcount 213634,<1
    .train 400640,3
    .train 120,3
step << Mage
    #season 2
    #completewith next
    .goto Thousand Needles,23.714,24.780
    +Open the |cRXP_PICK_Cougar Cage|r to release the |cRXP_ENEMY_Seared Needles Cougar|r
    .itemcount 214435,1
    .train 400640,3
    .train 120,3
step << Mage
    #season 2
    .train 425189,1
    .train 400640,3
    .train 120,3
    .goto Thousand Needles,23.714,24.780
    >>Kill the |cRXP_ENEMY_Seared Needles Cougar|r. Loot her for the |T134943:0|t[|cRXP_LOOT_Partial Spell Notes|r]
    >>|cRXP_WARN_You need to cool it down to kill it. In order to do it by yourself you have to use this exact rotation in quick succession:|r
    >>Cast |T135846:0|t[Frostbolt] > |T135848:0|t[Frost Nova] > |T135852:0|t[Cone of Cold] > |T135844:0|t[Ice Lance] |cRXP_WARN_This has to be done without any breaks between the casts|r
    .mob Seared Needles Cougar
    .collect 213634,1
step << Rogue
    #season 2
    .train 400093,1
    #completewith next
    .goto Thousand Needles,18.44,21.58,10 >> Enter the large tent at Camp E'thok
step << Rogue
    #season 2
    .train 400093,1
    .goto Thousand Needles,18.686,21.126
    >>Open the |cRXP_PICK_Sizable Stolen Strongbox|r. Loot it for the |T132597:0|t[|cRXP_LOOT_Large Strongbox|r]
    .collect 215451,1
step << Rogue
    #season 2
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Large Strongbox|r] |cRXP_WARN_to unlock it|r
    .usespell 1804
    .use 215451
step << Rogue
    #season 2
    .train 400093,1
    .use 215451 >> Open the |T132597:0|t[|cRXP_LOOT_Large Strongbox|r]. Loot it for the |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r]
    .collect 215452,1
step << Rogue
    #season 2
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r] |cRXP_WARN_to unlock it|r
    .usespell 1804
    .use 215452
step << Rogue
    #season 2
    .train 400093,1
    .use 215452 >> Open the |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r]. Loot it for the |T132597:0|t[|cRXP_LOOT_Small Strongbox|r]
    .collect 215453,1
step << Rogue
    #season 2
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Small Strongbox|r] |cRXP_WARN_to unlock it|r
    .usespell 1804
    .use 215453 
step << Rogue
    #season 2
    .train 400093,1
    .use 215453 >> Open the |T132597:0|t[|cRXP_LOOT_Small Strongbox|r]. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r]
    .collect 213138,1
step << Rogue
    #season 2
    .itemcount 213138,1
    .use 213138
    .train 400093 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r] |cRXP_WARN_to train|r |T134919:0|t[Rolling with the Punches]
step
    #completewith next
    .goto Thousand Needles,8.456,17.953,0
    .goto Feralas,89.50,45.85,50 >> Travel to Thalanaar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
    .goto Feralas,89.497,45.853
    .fp Thalanaar >> Get the Thalanaar flight path
    .target Thyssiana
step
    .goto Feralas,89.634,46.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1100 >> Turn in Lonebrow's Journal
    .target Falfindel Waywarder
step
.dungeon RFK
    .goto Feralas,89.634,46.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1100 >> Turn in Lonebrow's Journal
    .accept 1101 >> Accept The Crone of the Kraul
    .target Falfindel Waywarder
step
    #xprate <1.2
    .goto Feralas,89.634,46.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1059 >> Turn in Reclaiming the Charred Vale
    .target Falfindel Waywarder
    .isOnQuest 1059
step
.dungeon RFK
    #completewith next
    .goto Thousand Needles,10.88,33.24,0
    .goto Thousand Needles,11.01,38.31,0
    .goto Thousand Needles,13.27,38.47,0
    .goto Thousand Needles,17.46,41.62,0
    .zone The Barrens >> Grind |cRXP_ENEMY_Highperch Wyverns|r, |cRXP_ENEMY_Highperch Consorts|r and |cRXP_ENEMY_Highperch Patriarchs|r while looking for a group for Razorfen Kraul
    .mob Highperch Patriarch
    .mob Highperch Wyvern
    .mob Highperch Consort
step
.dungeon RFK
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.877,70.339
    .subzone 491,2 >> Enter Razorfen Kraul
step
.dungeon RFK
    >>Kill |cRXP_ENEMY_Charlga Razorflank|r. Loot her for |cRXP_LOOT_Razorflank's Heart|r
    .complete 1101,1 -- Razorflank's Heart (1)
    .isOnQuest 1101
step
.dungeon RFK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heralath Fallowbrook|r and |cRXP_FRIENDLY_Willix the Importer|r
    .accept 1142 >> Accept Mortality Wanes
    .accept 1144 >> Accept Willix the Importer
    .target Heralath Fallowbrook
    .target Willix the Importer
step
.dungeon RFK
    #completewith next
    >>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
    .complete 1142,1 -- Treshala's Pendant (1)
    .isOnQuest 1142
step
.dungeon RFK
    >>Escort |cRXP_FRIENDLY_Willix the Importer|r through Razorfen Krual
    >>|cRXP_WARN_Ensure you stay close to |cRXP_FRIENDLY_Willix|r otherwise the quest may not complete!|r
    .complete 1144,1 -- Help Willix the Importer escape from Razorfen Kraul
    .isOnQuest 1144
step
.dungeon RFK
    #completewith next
    >>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
    .complete 1142,1 -- Treshala's Pendant (1)
    .isOnQuest 1142
step
.dungeon RFK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willix the Importer|r
    .turnin 1144 >> Turn in Willix the Importer
    .target Willix the Importer
    .isQuestComplete 1144
step
.dungeon RFK
    >>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
    .complete 1142,1 -- Treshala's Pendant (1)
    .isOnQuest 1142
step
.dungeon RFK
    .goto Feralas,89.634,46.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1101 >> Turn in The Crone of the Kraul
    .target Falfindel Waywarder
    .isQuestComplete 1101
step
.dungeon RFK
    #completewith ABump
    .isQuestComplete 1142
    +NOTE: It is never time efficient to go to Darnassus to turn in Mortality Wanes. Buy a portal from a Mage to Darnassus when the guide tells you to use your Hearthstone next, so you can turn it in at Darnassus then use Hearthstone to remain on track with the guide, otherwise abandon Mortality Wanes
step
    #qremove 1142 --Don't modify this line
step << Mage
    #season 2
    #sticky
    #completewith HighperchVenomSacs
    .train 425189,1
    .train 400640,3
    .train 120,3
    .goto Thousand Needles,13.598,33.854,40,0
    .goto Thousand Needles,10.81,39.60
    >>Kill the |cRXP_ENEMY_Singed Highperch Consort|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Partial Spell Notes|r]
    >>|cRXP_WARN_You need to cool it down to kill it. In order to do it by yourself you have to use this exact rotation in quick succession:|r
    >>Cast |T135846:0|t[Frostbolt] > |T135848:0|t[Frost Nova] > |T135852:0|t[Cone of Cold] > |T135844:0|t[Ice Lance] |cRXP_WARN_This has to be done without any breaks between the casts|r
    .collect 213633,1
    .mob Singed Highperch Consort
step
    #label HighperchVenomSacs
    .isOnQuest 1135
    .goto Thousand Needles,13.136,34.221,40,0
    .goto Thousand Needles,10.88,33.24,50,0
    .goto Thousand Needles,11.01,38.31,50,0
    .goto Thousand Needles,13.27,38.47,50,0
    .goto Thousand Needles,17.46,41.62,50,0
    .goto Thousand Needles,11.07,35.59
    >>Kill |cRXP_ENEMY_Highperch Wyverns|r, |cRXP_ENEMY_Highperch Consorts|r and |cRXP_ENEMY_Highperch Patriarchs|r. Loot them for their |cRXP_LOOT_Venom Sacs|r
    .complete 1135,1 --10/10 Highperch Venom Sac
    .mob Highperch Patriarch
    .mob Highperch Wyvern
    .mob Highperch Consort
step << Mage
    #season 2
    .train 425189,1
    .train 400640,3
    .train 120,3
    .goto Thousand Needles,13.598,33.854,40,0
    .goto Thousand Needles,10.81,39.60
    >>Kill the |cRXP_ENEMY_Singed Highperch Consort|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Partial Spell Notes|r]
    >>|cRXP_WARN_You need to cool it down to kill it. In order to do it by yourself you have to use this exact rotation in quick succession:|r
    >>Cast |T135846:0|t[Frostbolt] > |T135848:0|t[Frost Nova] > |T135852:0|t[Cone of Cold] > |T135844:0|t[Ice Lance] |cRXP_WARN_This has to be done without any breaks between the casts|r
    .collect 213633,1
    .mob Singed Highperch Consort
step << Mage
    #season 2
    #label SpellNotes
    .train 425189,1
    .train 400640,3
    .train 120,3
    .goto Thousand Needles,26.66,46.38
    >>Kill the |cRXP_ENEMY_Scorched Screeching Roguefeather|r. Loot it for the |T134937:0|t[|cRXP_LOOT_Partial Spell Notes|r]
    >>|cRXP_WARN_You need to cool it down to kill it. In order to do it by yourself you have to use this exact rotation in quick succession:|r
    >>Cast |T135846:0|t[Frostbolt] > |T135848:0|t[Frost Nova] > |T135852:0|t[Cone of Cold] > |T135844:0|t[Ice Lance] |cRXP_WARN_This has to be done without any breaks between the casts|r
    .collect 213632,1
    .mob Scorched Screeching Roguefeather
step << Mage
    #season 2
    .train 425189,1
    .itemcount 213633,1
    .itemcount 213632,1
    .itemcount 213634,1
    .itemcount 
    >>|cRXP_WARN_Use the|r |T134943:0|t|T134938:0|t|T134937:0|t[|cRXP_LOOT_Partial Spell Notes|r] |cRXP_WARN_to create the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Chronostatic Preservation|r]
    .collect 213116,1
    .use 213634
    .use 213633
    .use 213632
step << Mage
    #season 2
    .train 425189 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Chronostatic Preservation|r |cRXP_WARN_to train|r |T135729:0|t[Chronostatic Preservation]
    .use 213116
    .itemcount 213116,1
    .train 425189,1
step << Mage
    #optional
    #completewith next
    #season 2
    .engrave 8 >> Open your character sheet and engrave your boots with |T135729:0|t[Chronostatic Preservation]
    .train 1543,3
step << Druid
    #season 2
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .aura 435081 >> |cRXP_WARN_Stand next to the |cRXP_PICK_Beastly Effigy|r statue to receive the|r |T134912:0|t[Beastly Effigy] |cRXP_WARN_buff|r
step << Druid
    #season 2
    #completewith next
    .goto Thousand Needles,68.690,55.155
    .train 424760,1
    .cast 5209 >> |cRXP_WARN_Go into|r |T132276:0|t[Bear Form] |cRXP_WARN_and cast|r |T132117:0|t[Challenging Roar] |cRXP_WARN_to spawn|r |cRXP_ENEMY_Zai'enki|r |cRXP_WARN_(lvl 28 elite)|r
step << Druid
    #season 2
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    >>Kill |cRXP_ENEMY_Zai'enki|r. Loot it for the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r]
    .collect 213594,1
    .mob Zai'enki
step << Druid
    #season 2
    .train 424760,1
    .equip 18,213594 >> Equip the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r]
    .use 213594
step << Druid
    #season 2
    #title Gain 5x |T237556:0|t[Building Inspiration]
    #completewith TurninShimmering
    #label BerserkInspired
    .itemcount 213594,1
    .train 424760,1
    .aura 408828 >> |cRXP_WARN_Cast|r |T132117:0|t[Challenging Roar] |cRXP_WARN_to taunt at least 2 enemies and kill one of them while they have the|r |T132117:0|t[Challenging Roar] |cRXP_WARN_debuff. This will give you a stack of the|r |T237556:0|t[Building Inspiration] |cRXP_WARN_buff. Repeat this 5 times until you gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    *|cRXP_WARN_It's recommened you fight one mob and almost kill it, then pull a 2nd and cast|r |T132117:0|t[Challenging Roar]|cRXP_WARN_, then kill the low health mob. You will lose all stacks of|r |T237556:0|t[Building Inspiration] |cRXP_WARN_if you die|r
step << Druid
    #season 2
    #requires BerserkInspired
    #completewith TurninShimmering
    .itemcount 213594,1
    .use 213594
    .train 424760 >> |cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r] |cRXP_WARN_to train|r |T236149:0|t[Berserk]
step
    #completewith next
    .goto Thousand Needles,77.782,77.263,100 >> Travel to the Mirage Raceway
step
    .goto Thousand Needles,77.782,77.263
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    >>|cRXP_WARN_Don't accept the other quests yet|r
    .accept 1110 >> Accept Rocket Car Parts
    .target Kravel Koalbeard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 1104 >> Accept Salt Flat Venom
    .goto Thousand Needles,78.064,77.126 -- Fizzle
    .turnin 1179 >> Turn in The Brassbolts Brothers
    .accept 1105 >> Accept Hardened Shells
    .goto Thousand Needles,78.143,77.120 -- Wizzle
    .target Fizzle Brassbolts
    .target Wizzle Brassbolts
step
    .goto Thousand Needles,80.178,75.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .accept 1176 >> Accept Load Lightening
    .target Pozzik
step
    #label ABump
    .goto Thousand Needles,81.635,77.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
    .accept 1175 >> Accept A Bump in the Road
    .target Trackmaster Zherin
step
#optional
    >>|cRXP_WARN_Run circles around The Shimmering Flats until all objectives are complete|r
    >>Kill |cRXP_ENEMY_Salt Flats Scavengers|r and |cRXP_ENEMY_Salt Flats Vultures|r. Loot them for their |cRXP_LOOT_Bones|r
    >>Kill |cRXP_ENEMY_Sparkleshell Tortoises|r, |cRXP_ENEMY_Sparkleshell Borers|r and |cRXP_ENEMY_Sparkleshell Snappers|r. Loot them for their |cRXP_LOOT_Shells|r
    >>|cRXP_WARN_Don't go out of your way to collect all|r |cRXP_LOOT_Turtle Meat|r
    >>Kill |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for their |cRXP_LOOT_Venom|r
    >>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r and |cRXP_ENEMY_Saltstone Gazers|r
    >>Loot |cRXP_ENEMY_Saltstone Basilisks|r for their |cRXP_LOOT_Scales|r
    >>Open the |cRXP_PICK_Rocket Car Rubble|r. Loot it for the |cRXP_LOOT_Rocket Car Parts|r
    .complete 1176,1 --Collect Hollow Vulture Bone (x10)
    .goto Thousand Needles,87.5,65.6,0
    .complete 1105,1 --Collect Hardened Tortoise Shell (x9)
	.goto Thousand Needles,82.6,54.8,0
    .complete 1104,1 --Collect Salty Scorpid Venom (x6)
    .goto Thousand Needles,71.8,73.4,0
    .complete 1175,1 --Kill Saltstone Basilisk (x10)
    .goto Thousand Needles,73.5,59.9,0
    .complete 1078,1 -- Crystalized Scales (8)
    .goto Thousand Needles,73.5,59.9,0
    .complete 1175,2 --Kill Saltstone Crystalhide (x10)
    .goto Thousand Needles,77.65,87.34,0
    .complete 1175,3 --Kill Saltstone Gazer (x6)
    .goto Thousand Needles,77.65,87.34,0
    .complete 1110,1 --Collect Rocket Car Parts (x30)
    .mob Salt Flats Scavenger
    .mob Salt Flats Vulture
    .mob Sparkleshell Snapper
    .mob Sparkleshell Borer
    .mob Sparkleshell Tortoise
    .mob Saltstone Basilisk
    .mob Saltstone Crystalhide
    .mob Saltstone Gazer
    .mob Scorpid Reaver
    .mob Scorpid Terror
    .isOnQuest 1078
step
    >>|cRXP_WARN_Run circles around The Shimmering Flats until all objectives are complete|r
    >>Kill |cRXP_ENEMY_Salt Flats Scavengers|r and |cRXP_ENEMY_Salt Flats Vultures|r. Loot them for their |cRXP_LOOT_Bones|r
    >>Kill |cRXP_ENEMY_Sparkleshell Tortoises|r, |cRXP_ENEMY_Sparkleshell Borers|r and |cRXP_ENEMY_Sparkleshell Snappers|r. Loot them for their |cRXP_LOOT_Shells|r
    >>|cRXP_WARN_Don't go out of your way to collect all|r |cRXP_LOOT_Turtle Meat|r
    >>Kill |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for their |cRXP_LOOT_Venom|r
    >>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r and |cRXP_ENEMY_Saltstone Gazers|r
    >>Open the |cRXP_PICK_Rocket Car Rubble|r. Loot it for the |cRXP_LOOT_Rocket Car Parts|r
    .complete 1176,1 --Collect Hollow Vulture Bone (x10)
    .goto Thousand Needles,87.5,65.6,0
    .complete 1105,1 --Collect Hardened Tortoise Shell (x9)
	.goto Thousand Needles,82.6,54.8,0
    .complete 1104,1 --Collect Salty Scorpid Venom (x6)
    .goto Thousand Needles,71.8,73.4,0
    .complete 1175,1 --Kill Saltstone Basilisk (x10)
    .goto Thousand Needles,73.5,59.9,0
    .complete 1175,2 --Kill Saltstone Crystalhide (x10)
    .goto Thousand Needles,77.65,87.34,0
    .complete 1175,3 --Kill Saltstone Gazer (x6)
    .goto Thousand Needles,77.65,87.34,0
    .complete 1110,1 --Collect Rocket Car Parts (x30)
    .mob Salt Flats Scavenger
    .mob Salt Flats Vulture
    .mob Sparkleshell Snapper
    .mob Sparkleshell Borer
    .mob Sparkleshell Tortoise
    .mob Saltstone Basilisk
    .mob Saltstone Crystalhide
    .mob Saltstone Gazer
    .mob Scorpid Reaver
    .mob Scorpid Terror
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
    .goto Thousand Needles,81.635,77.953
    .turnin 1175 >> Turn in A Bump in the Road
    .target Trackmaster Zherin
step
    .goto Thousand Needles,80.178,75.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .turnin 1176 >> Turn in Load Lightening
    .accept 1178 >> Accept Goblin Sponsorship
    .target Pozzik
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 1104 >> Turn in Salt Flat Venom
    .goto Thousand Needles,78.064,77.126 -- Fizzle
    .turnin 1105 >> Turn in Hardened Shells
    .accept 1106 >> Accept Martek the Exiled
    .goto Thousand Needles,78.143,77.120 -- Wizzle
    .target Fizzle Brassbolts
    .target Wizzle Brassbolts
step
    #label TurninShimmering
    .goto Thousand Needles,77.782,77.263
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .turnin 1110 >> Turn in Rocket Car Parts
    .accept 1111 >> Accept Wharfmaster Dizzywig
    .accept 5762 >> Accept Hemet Nesingwary
    .target Kravel Koalbeard
step << Druid
    #season 2
    #title Gain 5x |T237556:0|t[Building Inspiration]
    .itemcount 213594,1
    .train 424760,1
    .aura 408828 >> |cRXP_WARN_Cast|r |T132117:0|t[Challenging Roar] |cRXP_WARN_to taunt at least 2 enemies and kill one of them while they have the|r |T132117:0|t[Challenging Roar] |cRXP_WARN_debuff. This will give you a stack of the|r |T237556:0|t[Building Inspiration] |cRXP_WARN_buff. Repeat this 5 times until you gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    *|cRXP_WARN_It's recommened you fight one mob and almost kill it, then pull a 2nd and cast|r |T132117:0|t[Challenging Roar]|cRXP_WARN_, then kill the low health mob. You will lose all stacks of|r |T237556:0|t[Building Inspiration] |cRXP_WARN_if you die|r
step << Druid
    #season 2
    .itemcount 213594,1
    .use 213594
    .train 424760 >> |cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r] |cRXP_WARN_to train|r |T236149:0|t[Berserk]
step << Warrior
    #season 2
    .train 403472,1
    >>|cRXP_WARN_You will need a shield to get this rune. Skip the following steps if you don't have one|r
    .goto Thousand Needles,67.84,89.50,100 >> Travel to the Rustmaul Digsite in |cFFfa9602Thousand Needles|r
    .train 5308,3 --Skips if you don't have Execute
    .train 355,3 --Skips if you don't have Taunt
    .train 72,3 --Skips if you don't have Shield Bash
    .train 403338,1 --Skips if you already have the rune
step << Warrior
    #season 2
    #completewith next
    +|cRXP_WARN_Ensure you have equiped your one-handed weapon and shield|r
    .train 5308,3 --Skips if you don't have Execute
    .train 355,3 --Skips if you don't have Taunt
    .train 72,3 --Skips if you don't have Shield Bash
    .train 403338,1 --Skips if you already have the rune
step << Warrior
    #season 2
    .train 403472,1
    .goto Thousand Needles,67.968,89.800
    .cast 5308,20658,20660,20661,20662 >>|cRXP_WARN_Cast|r |T135358:0|t[Execute] |cRXP_WARN_on the |cRXP_ENEMY_Combat Dummy|r, then move across to the next|r |cRXP_ENEMY_Combat Dummy|r
    .mob Combat Dummy
    .train 5308,3 --Skips if you don't have Execute
    .train 355,3 --Skips if you don't have Taunt
    .train 72,3 --Skips if you don't have Shield Bash
    .train 403338,1 --Skips if you already have the rune
step << Warrior
    #season 2
    .train 403472,1
    .goto Thousand Needles,67.845,89.511
    .cast 355 >>|cRXP_WARN_Cast|r |T136080:0|t[Taunt] |cRXP_WARN_on the |cRXP_ENEMY_Combat Dummy|r, then move across to the next|r |cRXP_ENEMY_Combat Dummy|r
    .mob Combat Dummy
    .train 5308,3 --Skips if you don't have Execute
    .train 355,3 --Skips if you don't have Taunt
    .train 72,3 --Skips if you don't have Shield Bash
    .train 403338,1 --Skips if you already have the rune
step << Warrior
    #season 2
    .train 403472,1
    .goto Thousand Needles,67.713,89.245
    .cast 72,1671,1672 >>|cRXP_WARN_Cast|r |T132357:0|t[Shield Bash] |cRXP_WARN_on the|r |cRXP_ENEMY_Combat Dummy|r
    .mob Combat Dummy
    .train 5308,3 --Skips if you don't have Execute
    .train 355,3 --Skips if you don't have Taunt
    .train 72,3 --Skips if you don't have Shield Bash
    .train 403338,1 --Skips if you already have the rune
step << Warrior
    #season 2
    .train 403472,1
    .goto Thousand Needles,67.933,89.408
    >>Open the |cRXP_PICK_Warrior's Bounty|r chest. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r]
    .collect 213111,1 --Rune of Intervention (1x)
    .train 5308,3 --Skips if you don't have Execute
    .train 355,3 --Skips if you don't have Taunt
    .train 72,3 --Skips if you don't have Shield Bash
    .train 403338,1 --Skips if you already have the rune
step << Warrior
    #season 2
    .train 403472 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r] |cRXP_WARN_to train|r |T132365:0|t[Intervene]
    .use 213111
    .train 5308,3 --Skips if you don't have Execute
    .train 355,3 --Skips if you don't have Taunt
    .train 72,3 --Skips if you don't have Shield Bash
    .train 403338,1 --Skips if you already have the rune
step
    #completewith next
    .goto Tanaris,51.01,29.35,150 >> Travel to Tanaris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
    .goto Tanaris,51.006,29.345
    .fp Tanaris>> Get the Tanaris Flight Path
    .target Bera Stonehammer
step
    #completewith DWallow
    .hs >> Hearth to Theramore
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .isOnQuest 1135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Longears|r
    .goto Dustwallow Marsh,66.459,45.147
    .turnin 1135 >> Turn in Highperch Venom
    .target Fiora Longears
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Theramore Lieutenant|r
    .goto Dustwallow Marsh,68.125,48.201
    .turnin 1219 >> Turn in The Orc Report
    .accept 1220 >> Accept Captain Vimes
    .target Theramore Lieutenant
step
    #completewith next
    .goto Dustwallow Marsh,68.23,48.82,25 >> Travel upstairs in the Keep
step
    #label DWallow
    .goto Dustwallow Marsh,68.212,48.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1252 >> Turn in Lieutenant Paval Reethe
    .accept 1259 >> Accept Lieutenant Paval Reethe
    .turnin 1253 >> Turn in The Black Shield
    .accept 1319 >> Accept The Black Shield
    .turnin 1284 >> Turn in Suspicious Hoofprints
    .turnin 1220 >> Turn in Captain Vimes
    .target Captain Garran Vimes
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1282 >> Turn in They Call Him Smiling Jim
    .goto Dustwallow Marsh,68.212,48.620
    .target Captain Garran Vimes
    .isOnQuest 1282
step
    .goto Dustwallow Marsh,68.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adjutant Tesoran|r
    .turnin 1259 >> Turn in Lieutenant Paval Reethe
    .accept 1285 >> Accept Daelin's Men
    .target Adjutant Tesoran
step
    .goto Dustwallow Marsh,68.212,48.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1285 >> Turn in Daelin's Men
    .target Captain Garran Vimes
step
    .goto Dustwallow Marsh,64.756,50.426
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caz Twosprocket|r
    .turnin 1319 >> Turn in The Black Shield
    .accept 1320 >> Accept The Black Shield
    .target Caz Twosprocket
step
    .goto Dustwallow Marsh,68.212,48.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1320 >> Turn in The Black Shield
    .target Captain Garran Vimes
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
    .goto Dustwallow Marsh,67.476,51.301
    .fly Ratchet>> Fly to Ratchet
    .target Baldruc
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
    .goto Dustwallow Marsh,67.476,51.301
    .fly Ratchet>> Fly to Ratchet
    .target Baldruc
    .dungeon WC
step << !Warlock
    #completewith next
    .goto Dustwallow Marsh,54.25,9.20,80,0
    .goto The Barrens,62.68,36.23
    .zone The Barrens >> Travel north to The Barrens grinding your way up
    .dungeon !WC
step << Warrior
    #completewith next
    .goto The Barrens,62.86,52.75,80,0
    .goto The Barrens,68.34,48.84,50 >> Travel to Fray Island
step << Warrior
    .goto The Barrens,68.615,49.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc Macleod|r
    .turnin 1718 >> Turn in The Islander
    .accept 1719 >> Accept The Affray
    .target Klannoc Macleod
step << Warrior
    .goto The Barrens,68.606,48.720
    >>|cRXP_WARN_Start the affray by stepping on the grate|r
    >>Kill |cRXP_ENEMY_Affray Challengers|r until |cRXP_ENEMY_Big Will|r appears
    >>Kill |cRXP_ENEMY_Big Will|r
    .complete 1719,2 --Step on the grate to begin the Affray
    .complete 1719,1 --Kill Big Will (x1)
    .mob Affray Challenger
    .mob Big Will
step << Warrior
    #xprate >1.99
    .goto The Barrens,68.615,49.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc Macleod|r
    .turnin 1719 >> Turn in The Affray
    .target Klannoc Macleod
step << Warrior
    #xprate <1.99
    .goto The Barrens,68.615,49.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc Macleod|r
    .turnin 1719 >> Turn in The Affray
    .accept 1791 >> Accept The Windwatcher
    .target Klannoc Macleod
step
    .goto The Barrens,62.639,37.421,-1
    .goto The Barrens,62.680,37.395,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
    .bankdeposit 3721,3521,4521,5847,5827 >> Deposit the following items into your bank:
    >>|T133461:0|t[Farren's Report] -- 3721
    >>|T134939:0|t[Cleverly Encrypted Letter] (If you found it) -- 3521
    >>|T135234:0|t[Alterac Granite] -- 4521
    >>|T134302:0|t[Mirefin Head] -- 5847
    >>|T133469:0|t[Fizzle Brassbolts' Letter] -- 5827
    .target Fuzruckle
    .target Zikkel
step << !Warlock
    #season 0
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet>> Get the Ratchet Flight Path
    .target Bragok
    .dungeon !WC
step << !Warlock
    #season 2
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet>> Get the Ratchet Flight Path
    .fly Azshara >> Fly to Azshara << Paladin
    .target Bragok
    .isOnQuest 78092 << Paladin
    .dungeon !WC
step << Paladin
    #season 2
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Azshara >> Fly to Azshara
    .target Bragok
    .isOnQuest 78092
    .dungeon WC
step << Paladin
    #season 2
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet>> Get the Ratchet Flight Path
    .target Bragok
    .isQuestTurnedIn 78093
    .dungeon !WC
step << Paladin
    #season 2
    #completewith next
    .goto Ashenvale,84.12,72.10,200 >>Travel toward Demon Fall Canyon
    .train 410014,1
    .isOnQuest 78092
step << Paladin
    #season 2
    #loop
    .goto Ashenvale,83.92,71.16,50,0
    .goto Ashenvale,84.65,74.15,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,82.60,79.15,50,0
    .goto Ashenvale,82.74,77.95,15,0
    .goto Ashenvale,82.02,77.93,15,0
    .goto Ashenvale,81.13,78.57,15,0
    .goto Ashenvale,81.17,79.78,15,0
    .goto Ashenvale,78.59,81.31,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,84.78,77.78,50,0
    .goto Ashenvale,87.28,79.21,50,0
    .goto Ashenvale,89.76,76.69,50,0
    .goto Ashenvale,84.18,76.79,50,0
    >>Kill |cRXP_ENEMY_Searing Infernals|r, |cRXP_ENEMY_Felguards|r, |cRXP_ENEMY_Mannoroc Lashers|r, and |cRXP_ENEMY_Legion Hounds|r. Loot them for |cRXP_LOOT_Motes of Mannoroth|r
    >>|cRXP_WARN_|cRXP_LOOT_Motes of Mannoroth|r are distributed on an individual basis (each mob has a chance to drop Motes for each person in your group), so you CAN easily group with others for this quest|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Searing Infernals|r have|r |T135802:0|t[Immolation Aura] |cRXP_WARN_(Passive Melee AoE: Deals 27-28 fire damage every 3 seconds), |cRXP_ENEMY_Felguards|r cast|r |T132154:0|t[Knockdown] |cRXP_WARN_(Melee Instant: Deals around 140 damage and stuns for 2 seconds), and |cRXP_ENEMY_Mannoroc Lashers|r cast|r |T135817:0|t[Flame Lash] |cRXP_WARN_(Ranged Instant: Deals around 45 Fire damage, then 12-13 Fire damage every 3 seconds for 21 seconds) and|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(Ranged Cast: Deals about 125 Shadow damage)|r
    .complete 78092,1 --Mote of Mannoroth (12)
    .mob Searing Infernal
    .mob Felguard
    .mob Mannoroc Lasher
    .mob Legion Hound
    .train 410014,1
    .isOnQuest 78092
step << Paladin
    #season 2
    >>Click the |cRXP_PICK_Spear of Mannoroth|r in the air, then click the |cRXP_PICK_Shattered Orb|r on the ground
    .turnin 78092 >> Turn in It Must Be Destroyed
    .goto Ashenvale,89.48,77.03
    .accept 78093 >> Accept Return to Delgren
    .goto Ashenvale,89.44,77.01
    .train 410014,1
    .isQuestComplete 78092
step << Paladin
    #season 2
    >>Click the |cRXP_PICK_Spear of Mannoroth|r in the air, then click the |cRXP_PICK_Shattered Orb|r on the ground
    .accept 78093 >> Accept Return to Delgren
    .goto Ashenvale,89.44,77.01
    .train 410014,1
    .isQuestTurnedIn 78092
step << Paladin
    #season 2
    .goto Ashenvale,26.19,38.69
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 78093 >> Turn in Return to Delgren
    .train 410014 >> This will teach you |T133815:0|t[Engrave Chest - Divine Storm]
    .target Delgren the Purifier
    .train 410014,1
    .isOnQuest 78093
step << Paladin
    #season 2
    #label GSponsorHS
    #completewith GSponsor
    .hs >> Hearth to Theramore
    .cooldown item,6948,>0
step << Paladin
    #season 2
    #completewith GSponsor
    #requires GSponsorHS
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Ratchet >> Fly to Ratchet
	.target Daelyshia
    .zoneskip Ashenvale,1
    .cooldown item,6948,<0
step << Paladin
    #season 2
    #completewith next
    #requires GSponsorHS
    .goto Dustwallow Marsh,67.476,51.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
    .fly Ratchet >> Fly to Ratchet
    .target Baldruc
    .zoneskip Dustwallow Marsh,1
step
    #optional
    #completewith Wharfmaster
    #season 2
    .goto The Barrens,61.8,39.4
    >>|cRXP_WARN_If you have |cRXP_LOOT_3 gold|r to spare you can buy a rune from|r |cRXP_FRIENDLY_Grizzby|r |cRXP_WARN_in the Ratchet inn. Judge for yourself if you can afford it and if the rune is useful for your class. You can always buy it later|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r in the inn
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Buy and use the|r |T135791:0|t[|cRXP_FRIENDLY_Harmonious Epiphany|r] |cRXP_WARN_to train|r |T237549:0|t[Serendipity] << Priest
    .train 410010 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sacrifice|r] |cRXP_WARN_to train|r |T134596:0|t[Engrave Pants - Divine Sacrifice] << Paladin
    .train 401761 >>|cRXP_WARN_Buy and use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Rewind Time|r] |cRXP_WARN_to train|r |T237538:0|t[Rewind Time] << Mage
    .train 410122 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r] |cRXP_WARN_to train|r |T132266:0|t[Lone Wolf] << Hunter
    .train 416042 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Survival|r] |cRXP_WARN_to train|r |T132126:0|t[Survival of the Fittest] << Druid
    .train 425445 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Warbringer|r] |cRXP_WARN_to train|r |T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r] |cRXP_WARN_to train|r |T237562:0|t[Demonic Pact] << Warlock
    .train 424990 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Main Gauche|r] |cRXP_WARN_to train|r |T237531:0|t[Main Gauche] << Rogue
    .train 410096 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dual Wield Specialization|r] |cRXP_WARN_to train|r |T132686:0|t[Engrave Chest - Dual Wield Specialization] << Shaman
    .target Grizzby
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
step
    #label GSponsor
    .goto The Barrens,62.680,36.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 1178 >> Turn in Goblin Sponsorship
    .accept 1180 >> Accept Goblin Sponsorship
    .target Gazlowe
step << Warlock
    .isOnQuest 4736
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
    .goto The Barrens,62.509,35.449
    .turnin 4736 >> Turn in In Search of Menara Voidrender
    .target Menara Voidrender
step << Warlock
	.isOnQuest 4738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
    .goto The Barrens,62.509,35.449
    .turnin 4738 >> Turn in In Search of Menara Voidrender
    .target Menara Voidrender
step << Warlock
    .goto The Barrens,62.627,35.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 1798 >> Turn in Seeking Strahad
    .accept 1758 >> Accept Tome of the Cabal
    .target Strahad Farsan
step
    #xprate <1.2
    .goto The Barrens,63.352,38.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 1111 >> Turn in Wharfmaster Dizzywig
    .accept 1112 >> Accept Parts for Kravel
    .turnin 1039 >> Turn in The Barrens Port
    .accept 1040 >> Accept Passage to Booty Bay
    .target Wharfmaster Dizzywig
    .isQuestTurnedIn 1038
step
    #label Wharfmaster
    .goto The Barrens,63.352,38.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 1111 >> Turn in Wharfmaster Dizzywig
    .accept 1112 >> Accept Parts for Kravel
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,63.677,38.618
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
    .zone Stranglethorn Vale >> Take the boat to Booty Bay
]])


RXPGuides.RegisterGuide([[
#version 20
#group RXP SOD TEST
#classic
#season 2
<< Alliance
#name 34-36 Stranglethorn Vale I SoD
#next 36-38 Stranglethorn Vale II SoD

step
    .goto Stranglethorn Vale,26.345,73.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
    .turnin 1180 >>Turn in Goblin Sponsorship
    .accept 1181 >>Accept Goblin Sponsorship
    .target Wharfmaster Lozgil
step
    #season 0,1
    #optional
    .goto Stranglethorn Vale,27.600,77.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scooty|r
    .turnin 2904 >> Turn in A Fine Mess
    .isQuestComplete 2904
    .target Scooty
step
    #xprate <1.2
    .isQuestTurnedIn 1038
    .goto Stranglethorn Vale,27.368,74.079
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
    .turnin 1040 >>Turn in Passage to Booty Bay
    .accept 1041 >>Accept The Caravan Road
    .target Caravaneer Ruzzgot
step
	.goto Stranglethorn Vale,27.04,77.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
    .home >>Set your Hearthstone to Booty Bay
    .target Innkeeper Skindle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
    .accept 213 >> Accept Hostile Takeover
    .goto Stranglethorn Vale,27.000,77.124
    .accept 198 >>Accept Supplies to Private Thorsen
    .accept 201 >>Accept Investigate the Camp
    .accept 616 >>Accept The Haunted Isle
    .goto Stranglethorn Vale,26.943,77.207
    .target Kebok
    .target Krazek
step
    .goto Stranglethorn Vale,27.22,76.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 616 >>Turn in The Haunted Isle
    .accept 578 >>Accept The Stone of the Tides
    .turnin 1181 >>Turn in Goblin Sponsorship
    .accept 1182 >>Accept Goblin Sponsorship
    .target Baron Revilgaz
step
    .goto Stranglethorn Vale,28.294,77.592
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 575 >>Accept Supply and Demand
    .target Drizzlik
step
    .destroy 3898 >>Throw away the |T134939:0|t[Library Scrip]
-----------
step << Mage
#xprate >1.99
    #completewith next
    .goto Stormwind City,43.08,80.39
	.zone Stormwind City >> Teleport to Stormwind City
step << Mage
#xprate >1.99
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells
    .target Elsharin
	.target Jennea Cannon
step << !Mage
#xprate >1.99
    .goto Stranglethorn Vale,27.530,77.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .fly Stormwind>> Fly to Stormwind
    .target Gyll

step
#xprate >1.99
    .goto Stormwind City,57.06,73.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .bankwithdraw 3721,3521,4521 >> Withdraw the following items from your bank: << Warlock
    .bankwithdraw 3721,3521,4521,5996 >> Withdraw the following items from your bank: << !Warlock
    >>|T133461:0|t[Farren's Report] -- 3721
    >>|T134939:0|t[Cleverly Encrypted Letter] (If you found it earlier) -- 3521
    -->>|T135234:0|t[Alterac Granite] -- 4521
    >>|T134797:0|t[Elixir of Water Breathing] (If you have one) << !Warlock -- 5996
    .target Newton Burnside
step
#xprate >1.99
    .goto Stormwind City,57.06,73.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .bankdeposit 2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> Deposit the following items into your bank:
    >>Deposit any |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
    .target Newton Burnside
step << !Warlock
#xprate >1.99
    #ah
    .goto Stormwind City,57.06,73.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    >>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_from the Auction House|r 
    .collect 5996,1 --1/1 Elixir of Water Breathing
    .target Newton Burnside
step << Warlock
#xprate >1.99
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Head to the Slaughtered Lamb and go downstairs
step << Warlock
#xprate >1.99
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step
#xprate >1.99
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step
#xprate >1.99
    #sticky
	#label Eye
    .goto Stormwind City,39.60,27.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .turnin 293 >> Turn in Cleansing the Eye
    .target Archbishop Benedictus
step << Paladin
#xprate >1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest
#xprate >1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r 
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .target Brother Joshua
step
#xprate >1.99
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Turn in Blessed Arm
    .accept 325 >> Accept Armed and Ready
    .target Grimand Elmore
    .isQuestTurnedIn 324
step
#xprate >1.99
.dungeon Gnomer
#season 0,1
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2928 >> Turn in Gyrodrillmatic Excavationators
    .target Shoni the Shilent
    .isQuestComplete 2928
step << Hunter
#xprate >1.99
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Train your class spells
    .train 1543 >>Make sure you train |T135815:0|t[|cRXP_FRIENDLY_Flare|r]. You will need it for a rune later
    .target Einris Brightspear
step << Hunter
#xprate >1.99
    .goto StormwindClassic,61.576,15.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Train your pet spells
    .target Karrina Mekenda
step
#xprate >1.99
    #completewith next
    .goto Stormwind City,71.68,25.60,40 >> Travel to the Stormwind Keep
step
#xprate >1.99
    .goto Stormwind City,77.30,17.18,25,0
    .goto Stormwind City,72.571,15.888
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Major Samuelson|r
    .turnin 563 >> Turn in Reassignment
    .target Major Samuelson
step
#xprate >1.99
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
    .accept 337 >> Accept An Old History Book
    .turnin 337 >> Turn in An Old History Book
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step << Warrior
#xprate >1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
#xprate >1.99
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step
#xprate >1.99
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
----------
step
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .goto Stranglethorn Vale,27.530,77.787
    .fly Westfall >> Fly to Westfall
    .target Gyll
step
#xprate <1.99
    #completewith ThorsenR
    .goto Duskwood,17.72,29.07
    .zone Duskwood >> Travel to Duskwood
step
#xprate >1.99
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >> Turn in Armed and Ready
    .accept 55 >> Accept Morbent Fel
    .target Sven Yorgen
    .isQuestTurnedIn 322
step
#xprate >1.99
    .goto Duskwood,19.59,37.28
    >>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
#xprate >1.99
    #completewith next
    >>Clear your way to the 2nd floor of the house
    .cast 8913 >>|cRXP_WARN_Equip|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_in your off-hand|r
    >>|cRXP_WARN_Use|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
    >>|cRXP_WARN_Remember to equip your weapon/off-hand slot after weakening him|r
    .use 7297
step
#xprate >1.99
    .goto Duskwood,16.90,33.40
    >>Kill |cRXP_ENEMY_Morbent Fel|r
    >>|cRXP_WARN_This quest can be difficult. If you aren't confident doing it, you may skip this step|r
    .complete 55,1 --1/1 Morbent Fel slain
    .use 7297
    .mob Morbent Fel
    .isOnQuest 55
step
#xprate >1.99
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >> Turn in Morbent Fel
    .isQuestComplete 55
    .target Sven Yorgen
step
#xprate >1.99
#optional
    .abandon 55 >> Abandon Morbent Fel
step
    .isOnQuest 231
    >>Click |cRXP_PICK_A Weathered Grave|r
    .goto Duskwood,17.72,29.07
    .turnin 231 >> Turn in A Daughter's Love
step
    .destroy 2154 >> Delete the |T133741:0|t[The Story of Morgan Ladimore]
step
    #completewith ThorsenR
    .goto Duskwood,44.598,87.565,50 >> Travel to northern Stranglethorn Vale
step
	#completewith Fern
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
    >>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
    >>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
    .accept 215 >> Accept Jungle Secrets
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
	#label ThorsenR
    .goto Stranglethorn Vale,37.980,3.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r at the Rebel Camp
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Private Thorsen|r isn't at the Rebel Camp he may be in progress for his special event. Skip this step. Look for him down the path if you havn't accepted his quest yet|r
    .turnin 198 >>Turn in Supplies to Private Thorsen
    .target Private Thorsen
step
    .goto Stranglethorn Vale,38.017,3.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .accept 203 >>Accept The Second Rebellion
    .accept 204 >>Accept Bad Medicine
    .target Sergeant Yohwa
step
    #completewith Fern
    .goto Stranglethorn Vale,32.6,8.8,0
    .goto Stranglethorn Vale,36.8,10.6,0
    .goto Stranglethorn Vale,40.8,13.8,0
	>>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
    .complete 575,1 --2/2 Large River Crocolisk Skin
    .mob River Crocolisk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 583 >> Accept Welcome to the Jungle
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >> Turn in Welcome to the Jungle
    .goto Stranglethorn Vale,35.658,10.808
    .target Barnil Stonepot
    .target Hemet Nesingwary
step
    .goto Stranglethorn Vale,35.658,10.808
    .target Hemet Nesingwary
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 5762 >> Turn in Hemet Nesingwary
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 185 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,50,0
    .goto Stranglethorn Vale,31.76,9.00,50,0
    .goto Stranglethorn Vale,35.40,12.50
	>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 --10/10 Young Stranglethorn Tiger slain
    .mob Young Stranglethorn Tiger
step
    .goto Stranglethorn Vale,35.61,10.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 185 >>Turn in Tiger Mastery
    .accept 186 >>Accept Tiger Mastery
    .target Ajeck Rouack
step
    #completewith next
    .goto Stranglethorn Vale,44.93,10.25,0
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
    >>|cRXP_ENEMY_Kurzen Medicine Men|r |cRXP_WARN_also drop|r |T134413:0|t[Liferoot]|cRXP_WARN_. Save these for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
    >>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
    .complete 203,1 --15/15 Kurzen Jungle Fighter
    .complete 204,1 --7/7 Jungle Remedy
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
step
    #label Fern
    .goto Stranglethorn Vale,44.086,9.538
    >>Open the |cRXP_PICK_Kurzen Supplies|r. Loot it for the |cRXP_LOOT_Venom Fern Extract|r
    .complete 204,2 --1/1 Venom Fern Extract
step
    .goto Stranglethorn Vale,44.93,10.25
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
    >>|cRXP_ENEMY_Kurzen Medicine Men|r |cRXP_WARN_also drop|r |T134413:0|t[Liferoot]|cRXP_WARN_. Save these for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
    >>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
    .complete 203,1 --15/15 Kurzen Jungle Fighter
    .complete 204,1 --7/7 Jungle Remedy
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
step << Rogue
    #season 2
    .train 425103,1
    .skill lockpicking,125 >>|cRXP_WARN_Now is a great time to acquire the|r |T132299:0|t[Master of Subtlety] |cRXP_WARN_rune, however you must level your |T136058:0|t[Lockpicking] |cRXP_WARN_to at least 125. Try to do this before returning to STV in the future|r
step << Rogue
    #season 2
    .train 425103,1
    #completewith Uniform
    .goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
    .skill lockpicking,<125,1
step << Rogue
    #season 2
    .train 425103,1
    #completewith next
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
    .skill lockpicking,<125,1
step << Rogue
    #season 2
    #label Uniform
    .train 425103,1
    .goto Stranglethorn Vale,49.616,7.743
    >>Open the |cRXP_PICK_Kurzen Supply Crate|r. Loot it for the |cRXP_LOOT_Kurzen Fighter's Uniform|r
    .collect 216617,1
    .skill lockpicking,<125,1
step << Rogue
    #season 2
    .train 425103,1
    .goto Stranglethorn Vale,49.943,3.953,40,0
    .goto Stranglethorn Vale,49.617,7.562,40,0
    .goto Stranglethorn Vale,49.25,6.18
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
    .skill lockpicking,<125,1
step << Rogue
    #season 2
    .train 425103,1
    #completewith next
    .goto Stranglethorn Vale,44.261,7.908,60 >> Exit the cave. Travel toward |cRXP_FRIENDLY_Wendel Mathers|r in the tower outside
    .skill lockpicking,<125,1
step << Rogue
    #season 2
    .train 425103,1
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r in the tower
    >>|cRXP_WARN_He has a respawn timer of around 3 minutes|r
    .destroy 216616 >> Hand the |cRXP_LOOT_Compound Cage Key|r to him
    .destroy 216617 >> Hand the |cRXP_LOOT_Kurzen Fighter's Uniform|r to him
    .skipgossip 218230,1
    .target Wendel Mathers
    .skill lockpicking,<125,1
step
    .goto Stranglethorn Vale,46.75,15.81
    >>Kill |cRXP_ENEMY_Stranglethorn Tigers|r
    .complete 186,1 --10/10 Stranglethorn Tiger
    .mob Stranglethorn Tiger
step
    #completewith Prints
    >>Kill |cRXP_ENEMY_Venture Co. Geologists|r. Loot them for their |cRXP_LOOT_Crystals|r
    .complete 213,1 --8/8 Tumbled Crystals
    .mob Venture Co. Geologist
step
    .goto Stranglethorn Vale,42.646,18.353
    >>Kill |cRXP_ENEMY_Foreman Cozzle|r atop the Oil Rig. Loot him for his |cRXP_LOOT_Key|r
    .collect 5851,1,1182,1 --1/1 Cozzle's Key
    .mob Foreman Cozzle
step
    #label Prints
    .goto Stranglethorn Vale,43.332,20.329
    >>Open |cRXP_PICK_Cozzle's Footlocker|r. Loot it for the |cRXP_LOOT_Fuel Regulator Blueprints|r
    .complete 1182,1 --Collect Fuel Regulator Blueprints (x1)
step
    .goto Stranglethorn Vale,45.18,22.65,75,0
    .goto Stranglethorn Vale,45.55,18.78,75,0
    .goto Stranglethorn Vale,43.42,17.00,75,0
    .goto Stranglethorn Vale,45.18,22.65,75,0
    .goto Stranglethorn Vale,45.55,18.78
    >>Kill |cRXP_ENEMY_Venture Co. Geologists|r. Loot them for their |cRXP_LOOT_Crystals|r
    .complete 213,1 --8/8 Tumbled Crystals
    .mob Venture Co. Geologist
step
    .goto Stranglethorn Vale,41.50,12.00,50,0
    .goto Stranglethorn Vale,42.74,12.40,50,0
    .goto Stranglethorn Vale,41.43,9.77,50,0
    .goto Stranglethorn Vale,40.67,11.65,50,0
    .goto Stranglethorn Vale,41.50,12.00
	>>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    .goto Stranglethorn Vale,38.017,3.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .turnin 203 >> Turn in The Second Rebellion
    .turnin 204 >> Turn in Bad Medicine
    .target Sergeant Yohwa
step
    .goto Stranglethorn Vale,37.740,3.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .accept 210 >> Accept Krazek's Cookery
    .target Corporal Kaleb
step
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    >>|cRXP_WARN_Don't accept the follow up yet|r
    .turnin 215 >> Turn in Jungle Secrets
    .isOnQuest 215
    .target Lieutenant Doren
step
    .goto Stranglethorn Vale,38.01,3.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r
    .turnin 198 >>Turn in Supplies to Private Thorsen
    .target Private Thorsen
step
    #completewith next
    .goto Stranglethorn Vale,32.6,8.8,0
    .goto Stranglethorn Vale,36.8,10.6,0
    .goto Stranglethorn Vale,40.8,13.8,0
	>>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
    .complete 575,1 --2/2 Large River Crocolisk Skin
    .mob River Crocolisk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 194 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .turnin 186 >> Turn in Tiger Mastery
    .accept 187 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >>Turn in Panther Mastery
    .accept 191 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    .goto Stranglethorn Vale,32.6,8.8,60,0
    .goto Stranglethorn Vale,36.8,10.6,60,0
    .goto Stranglethorn Vale,40.8,13.8,60,0
    .goto Stranglethorn Vale,32.6,8.8,60,0
    .goto Stranglethorn Vale,36.8,10.6,60,0
    .goto Stranglethorn Vale,40.8,13.8,60,0
    .goto Stranglethorn Vale,36.8,10.6
	>>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
    .complete 575,1 --2/2 Large River Crocolisk Skin
    .mob River Crocolisk
step << Hunter
    #season2
    .train 410116,1 >>|cRXP_WARN_You will need |T135815:0|t[Flare] to get this rune, skip it if you don't have the spell|r
    .goto Stranglethorn Vale,31.84,15.61
    +|cRXP_WARN_Travel to the arrow location and run around until the buff called|r |T132118:0|t[Danger!] |cRXP_WARN_appears on you|r
    .aura 435548
    .aura 435428
    .aura 435546
    .train 1543,3
step << Hunter
    #season 2
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    #completewith next
    .cast 1543 >>|cRXP_WARN_Cast|r |T135815:0|t[Flare] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Bloodscalp Guerrilla|r
    .usespell 1543
    .train 1543,3
step << Hunter
    #season 2
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    >>Kill the |cRXP_ENEMY_Bloodscalp Guerrilla|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Scrapper|r]
    .collect 213126,1
    .mob Bloodscalp Guerrilla
    .train 1543,3
step << Hunter
    #season 2
    .itemcount 213126,1
    .use 213126
    .train 410116 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Scrapper|r] |cRXP_WARN_to train|r |T132147:0|t[Dual-Wield Specialization]
    .train 1543,3
step << Hunter
    #optional
    #completewith next
    #season 2
    .engrave 8 >> Open your character sheet and engrave your boots with |T132147:0|t[Dual-Wield Specialization]
    .train 1543,3
step
    #completewith next
    >>Kill |cRXP_ENEMY_Panthers|r
    .complete 191,1 --Kill Panther (x10)
    .mob Panther
step
    .goto Stranglethorn Vale,31.52,16.61,60,0
    .goto Stranglethorn Vale,31.91,19.93,60,0
    .goto Stranglethorn Vale,34.36,18.58,60,0
    .goto Stranglethorn Vale,31.52,16.61,60,0
    .goto Stranglethorn Vale,31.91,19.93
    >>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
    .complete 187,1 --Kill Elder Stranglethorn Tiger (x10)
    .mob Elder Stranglethorn Tiger
step
    .goto Stranglethorn Vale,30.4,12.4,60,0
    .goto Stranglethorn Vale,29.4,8.8,60,0
    .goto Stranglethorn Vale,28.2,12.0,60,0
    .goto Stranglethorn Vale,28.2,16.4,60,0
    .goto Stranglethorn Vale,29.8,11.2
    >>Kill |cRXP_ENEMY_Panthers|r
    .complete 191,1 --Kill Panther (x10)
    .mob Panther
step
    .goto Stranglethorn Vale,27.61,15.39,60,0
    .goto Stranglethorn Vale,25.91,16.33,60,0
    .goto Stranglethorn Vale,24.24,15.84,60,0
    .goto Stranglethorn Vale,27.16,16.06
    >>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
    .complete 194,1 --10/10 Stranglethorn Raptor
    .mob Stranglethorn Raptor
step
    .goto Stranglethorn Vale,21.580,21.842
    .goto Stranglethorn Vale,21.580,21.842 >> Travel to the Haunted Island
    .complete 578,1 --1/1 Explore Zone
step
	#softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    #completewith next
    .goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 194 >> Turn in Raptor Mastery
    .accept 195 >>Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .turnin 187 >> Turn in Tiger Mastery
    .accept 188 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 191 >> Turn in Panther Mastery
    .accept 192 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
step
    #completewith next
    .hs >> Hearth to Booty Bay
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue 
step
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
    .turnin 213 >>Turn in Hostile Takeover
    .goto Stranglethorn Vale,27.000,77.124
    .turnin 201 >> Turn in Investigate the Camp
    .turnin 210 >> Turn in Krazek's Cookery
    .goto Stranglethorn Vale,26.943,77.207
    .target Kebok
    .target Krazek
step
#xprate >1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
    .turnin 213 >>Turn in Hostile Takeover
    .goto Stranglethorn Vale,27.000,77.124
    .turnin 201 >> Turn in Investigate the Camp
    .turnin 210 >> Turn in Krazek's Cookery
    .accept 189 >> Accept Bloodscalp Ears
    .goto Stranglethorn Vale,26.943,77.207
    .target Kebok
    .target Krazek
step
    #optional
    .goto Stranglethorn Vale,26.943,77.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 627 >> Accept Favor for Krazek
    .turnin 627 >> Turn in Favor for Krazek
    .accept 622 >> Accept Return to Corporal Kaleb
    .itemcount 4278,4 -- Lesser Bloodstone Ore (4)
    .target Krazek
step
    #optional
    .isQuestTurnedIn 627
    .goto Stranglethorn Vale,26.943,77.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 622 >> Accept Return to Corporal Kaleb
    .target Krazek
step
    .goto Stranglethorn Vale,27.227,76.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 1182 >>Turn in Goblin Sponsorship
    .accept 1183 >>Accept Goblin Sponsorship
    .turnin 578 >> Turn in The Stone of the Tides
    .accept 601 >> Accept Water Elementals
    .target Baron Revilgaz
step << Rogue
    #season 2
    .train 425103,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Aransas|r
    >>She will give you |T133640:0|t[|cRXP_LOOT_Captain Aransas' Reward|r]
    .goto Stranglethorn Vale,27.681,76.648
    .skipgossip
    .collect 216618,1
    .target Captain Aransas
    .skill lockpicking,<125,1
step << Rogue
    #season 2
    .train 425103,1
    .use 216618 >>Open |T133640:0|t[|cRXP_LOOT_Captain Aransas' Reward|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r] and |T338666:0|t[|cRXP_FRIENDLY_Jani's Charm|r]
    >>|cRXP_WARN_Do NOT destroy|r |T338666:0|t[|cRXP_FRIENDLY_Jani's Charm|r] |cRXP_WARN_as it is used for gather future runes|r
    .collect 213136,1
    .skill lockpicking,<125,1
step << Rogue
    #season 2
    .itemcount 213136,1
    .use 213136
    .train 425103 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r] |cRXP_WARN_to train|r |T132299:0|t[Master of Subtlety]
    .skill lockpicking,<125,1
step
    .goto Stranglethorn Vale,28.294,77.592
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 575 >> Turn in Supply and Demand
    .accept 577 >> Accept Some Assembly Required
    .target Drizzlik
step
	#xprate <1.2
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .goto Stranglethorn Vale,27.530,77.787
    .fly Duskwood >> Fly to Duskwood
    .target Gyll
step
    #xprate <1.2
    .isQuestTurnedIn 1040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .goto Duskwood,72.6,46.8
    .turnin 1041 >> Turn in The Caravan Road
    .accept 1042 >> Accept The Carevin Family
    .target Clerk Daltry
step
    #xprate <1.2
    .isQuestTurnedIn 1040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .goto Duskwood,75.2,48.8
    .turnin 1042 >> Turn in The Carevin Family
    .accept 1043 >> Accept The Scythe of Elune
    .target Jonathan Carevin
step
#xprate <1.2
    #completewith next
    .goto Duskwood,73.20,76.19,30 >> Travel to Roland's Doom
    .isQuestTurnedIn 1040
step
    #xprate <1.2
    .isQuestTurnedIn 1040
    >>Click the |cRXP_PICK_Mound of Dirt|r at the back of the Cave
    .goto Duskwood,73.527,79.143
    .complete 1043,1 --1/1 Find evidence of the Scythe of Elune
step << !Hunter
    #xprate <1.2
	#softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    #xprate <1.2
    #completewith next
    .goto Duskwood,75.2,48.8,150 >> Travel to Darkshire
    .isQuestTurnedIn 1040
step
    #xprate <1.2
    .isQuestTurnedIn 1040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .goto Duskwood,75.2,48.8
    .turnin 1043 >> Turn in The Scythe of Elune
    --.accept 1044 >> Accept Answered Questions
    .target Jonathan Carevin
step << Mage
#xprate <1.99
    #completewith next
    .goto Stormwind City,43.08,80.39
	.zone Stormwind City >> Teleport to Stormwind City
step << Mage
#xprate <1.99
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells
    .target Elsharin
	.target Jennea Cannon
step << !Mage
#xprate <1.99
    .goto Stranglethorn Vale,27.530,77.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .fly Stormwind>> Fly to Stormwind
    .target Gyll
    .zoneskip Stranglethorn Vale,1
step << !Mage
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.486,44.287
    .fly Stormwind>> Fly to Stormwind
    .target Felicia Maline
    .zoneskip Duskwood,1
step
#xprate <1.99
    .goto Stormwind City,57.06,73.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .bankwithdraw 3721,3521,4521 >> Withdraw the following items from your bank: << Warlock
    .bankwithdraw 3721,3521,4521,5996 >> Withdraw the following items from your bank: << !Warlock
    >>|T133461:0|t[Farren's Report] -- 3721
    >>|T134939:0|t[Cleverly Encrypted Letter] (If you found it earlier) -- 3521
    >>|T135234:0|t[Alterac Granite] -- 4521
    >>|T134797:0|t[Elixir of Water Breathing] (If you have one) << !Warlock -- 5996
    .target Newton Burnside
step
#xprate <1.99
    .goto Stormwind City,57.06,73.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .bankdeposit 2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> Deposit the following items into your bank:
    >>Deposit any |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
    .target Newton Burnside
step << !Warlock
#xprate <1.99
    #ah
    .goto Stormwind City,57.06,73.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    >>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_from the Auction House|r 
    .collect 5996,1 --1/1 Elixir of Water Breathing
    .target Newton Burnside
step << Priest/Paladin
#xprate <1.99
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r 
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .target Brother Joshua
step << Hunter
#xprate <1.99
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Train your class spells
    .target Einris Brightspear
step << Hunter
#xprate <1.99
    .goto StormwindClassic,61.576,15.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Train your pet spells
    .target Karrina Mekenda
step
#xprate <1.99
    #completewith next
    .goto Stormwind City,71.68,25.60,40 >> Travel to the Stormwind Keep
step
#xprate <1.99
    .goto Stormwind City,77.30,17.18,25,0
    .goto Stormwind City,72.571,15.888
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Major Samuelson|r
    .turnin 563 >> Turn in Reassignment
    .target Major Samuelson
step
#xprate <1.99
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
    .accept 337 >> Accept An Old History Book
    .turnin 337 >> Turn in An Old History Book
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step << Warrior
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
#xprate <1.99
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step
#xprate <1.99
.dungeon Gnomer
#season 0,1
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2928 >> Turn in Gyrodrillmatic Excavationators
    .target Shoni the Shilent
    .isQuestComplete 2928
step << !Mage
#xprate <1.99
    #completewith ReclaimersDesolace
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the Tram|r
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Do a logout skip inside the Tram. Click here for video reference|r
step << Mage
#xprate <1.99
    #completewith next
    .goto Stormwind City,63.73,8.43,30,0
    .zone Ironforge >> Teleport to Ironforge
step << Warlock
#xprate <1.99
    #label ReclaimersDesolace
    #som
	#phase 3-6
    .goto Ironforge,67.91,17.50,25,0
    .goto Ironforge,69.93,21.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
    >>|cRXP_FRIENDLY_Roetten Stonehammer|r |cRXP_WARN_patrols the Hall of Explorers|r
    .accept 1453 >> Accept Reclaimers' Business in Desolace
    .target Roetten Stonehammer
step
#xprate <1.99
    #label ReclaimersDesolace
	#era/som
    .goto Ironforge,67.91,17.50,25,0
    .goto Ironforge,69.93,21.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
    >>|cRXP_FRIENDLY_Roetten Stonehammer|r |cRXP_WARN_patrols the Hall of Explorers|r
    .accept 1453 >> Accept Reclaimers' Business in Desolace
    .target Roetten Stonehammer
step << Warlock
#xprate <1.99
    .goto Ironforge,74.179,9.371
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .turnin 1758 >> Turn in Tome of the Cabal
    .target Krom Stoutarm
step << Warlock
#xprate <1.99
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus] |cRXP_BUY_or|r |T136221:0|t[Voidwalker]   
    .target Jubahl Corpseseeker
step << Warlock
#xprate <1.99
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .target Briarthorn
step
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .goto Ironforge,74.645,11.742
    .turnin 514 >>Turn in Letter to Stormpike
    .target Prospector Stormpike
step
#xprate <1.99
    .isQuestComplete 689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .goto Ironforge,39.03,88.05
    .turnin 689 >>Turn in A King's Tribute
    .timer 75,Marblesten RP
    .accept 700 >>Accept A King's Tribute
    .target Grand Mason Marblesten
step
#xprate <1.99
	.abandon 689 >> Abandon the quest "A King's Tribute" if you haven't collected the granite chunks in Alterac previously
step
#xprate <1.99
    .isQuestTurnedIn 689
    >>|cRXP_WARN_Wait out the RP|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .goto Ironforge,39.03,88.05
    .accept 700 >>Accept A King's Tribute
    .target Grand Mason Marblesten
step
#xprate <1.99
    .isQuestTurnedIn 689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .goto Ironforge,39.09,56.19
    .turnin 700 >>Turn in A King's Tribute
    .target King Magni Bronzebeard
]])

RXPGuides.RegisterGuide([[
#version 20
#group RXP SOD TEST
#season 2
#classic
<< Alliance
#name 36-38 Stranglethorn Vale II SoD
#next 38-40 Alterac/Arathi SoD

step
#xprate <1.99
	#sticky
	#label BankD1
    .goto Stranglethorn Vale,26.539,76.570,-1
    .goto Stranglethorn Vale,26.515,76.471,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
    .bankdeposit 6253,3518,5539,6245,5827,3404 >>Deposit the following items into your bank:
    >>|T133633:0|t[Karnitol's Satchel]
    >>|T134940:0|t[Decrypted Letter]
    >>|T133460:0|t[Letter of Commendation]
    >>|T133469:0|t[Fizzle Brassbolts' Letter]
    >>|T134304:0|t[Buzzard Wing]
    .target Viznik Goldgrubber
    .target Rickle Goldgrubber
step
#xprate <1.99
	#sticky
	#label BankW1
    .goto Stranglethorn Vale,26.539,76.570,-1
    .goto Stranglethorn Vale,26.515,76.471,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
    .bankwithdraw 2719,5996 >> Withdraw the |T134238:0|t[Small Brass Key] from your bank (if you have it) << !Warlock
    .bankwithdraw 2719 >> Withdraw the |T134238:0|t[Small Brass Key] from your bank (if you have it) << Warlock
	>>Withdraw the |T134797:0|t[Elixir or Water Breathing] from your bank (if you have them) << !Warlock
	>>If you don't have one or other of the items, skip this step
    .target Viznik Goldgrubber
    .target Rickle Goldgrubber
step << !Warlock
#xprate <1.99
    #softcore
    #ah
	#requires BankW1
    .goto Stranglethorn Vale,26.59,76.37
    >>If you didn't have any |T134797:0|t[Elixir or Water Breathing] in your bank, try buying some from the Auction House. Skip this step if you can't find them.
    .collect 5996,1 --1/1 Elixir of Water Breathing
step
#xprate <1.99
    #requires BankW1
	.goto Stranglethorn Vale,27.04,77.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
    .home >>Set your Hearthstone to Booty Bay
    -->>|cRXP_WARN_OR Set your Hearthstone to Duskwood or Westfall if you used the unstuck self service to teleport to Stormwind|r
    .target Innkeeper Skindle
step << !Hunter
#xprate <1.99
    #season 2
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79235 >>Turn in On the Lam
    .accept 79236 >>Accept Cherry for Your Thoughts?
    .target Tokal
step << !Hunter
#xprate <1.99
    #season 2
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nixxrax Fillamug|r
    >>|cRXP_BUY_Buy a|r |T132790:0|t[Cherry Grog]
    .goto Stranglethorn Vale,27.039,77.168
    .collect 4600,1,79236,1
    .target Nixxrax Fillamug
step << !Hunter
#xprate <1.99
    #season 2
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79236 >>Turn in Cherry for Your Thoughts?
    .accept 79242 >>Accept No Honor Among Thieves
    .target Tokal
step
#xprate <1.99
	#requires BankW1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r upstairs on the top floor
    .turnin 1115 >> Turn in The Rumormonger
    .goto Stranglethorn Vale,26.943,77.207
    .target Krazek
    .isOnQuest 1115
step
#xprate <1.99
    #requires BankW1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r up stairs on the top floor
    .accept 189 >> Accept Bloodscalp Ears
    .goto Stranglethorn Vale,27.000,77.124
    .target Kebok
step
#xprate <1.99
    .goto Stranglethorn Vale,27.227,76.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 601 >> Accept Water Elementals
    .target Baron Revilgaz
step
#xprate <1.99
    .goto Stranglethorn Vale,28.294,77.592
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 577 >> Accept Some Assembly Required
    .target Drizzlik
step
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .goto Stranglethorn Vale,27.530,77.787
    .fly Westfall >> Fly to Westfall
    .target Gyll
step
#optional
#xprate >1.99
    .goto StormwindClassic,66.277,62.137,-1
    .goto Stranglethorn Vale,27.530,77.787,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Duskwood >> Fly to Duskwood
    .target Dungar Longdrink
    .target Gyll
    .zoneskip Stormwind City,1
step
	#xprate >1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .goto Stranglethorn Vale,27.530,77.787
    .fly Duskwood >> Fly to Duskwood
    .target Gyll
step
#xprate >1.99
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 228 >>Turn in Mor'Ladim
    .accept 229 >>Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step
#xprate >1.99
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
    .turnin 229 >>Turn in The Daughter Who Lived
    .target Watcher Ladimore
step
#xprate <1.99
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >> Turn in Armed and Ready
    .accept 55 >> Accept Morbent Fel
    .target Sven Yorgen
step
#xprate <1.99
    .goto Duskwood,19.59,37.28
    >>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
#xprate <1.99
    #completewith next
    >>Clear your way to the 2nd floor of the house
    .cast 8913 >>|cRXP_WARN_Equip|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_in your off-hand|r
    >>|cRXP_WARN_Use|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
    >>|cRXP_WARN_Remember to equip your weapon/off-hand slot after weakening him|r
    .use 7297
step
#xprate <1.99
    .goto Duskwood,16.90,33.40
    >>Kill |cRXP_ENEMY_Morbent Fel|r
    >>|cRXP_WARN_This quest can be difficult. If you aren't confident doing it, you may skip this step|r
    .complete 55,1 --1/1 Morbent Fel slain
    .use 7297
    .mob Morbent Fel
    .isOnQuest 55
step
#xprate <1.99
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >> Turn in Morbent Fel
    .isQuestComplete 55
    .target Sven Yorgen
step
#xprate <1.99
    .abandon 55 >> Abandon Morbent Fel
step
    #completewith next
    .goto Duskwood,44.598,87.565,0
    .goto Stranglethorn Vale,40.635,3.514,40,0
    .goto Stranglethorn Vale,38.63,5.05
    .subzone 99 >> Travel to the Rebel Camp in northern Stranglethorn Vale
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r and |cRXP_FRIENDLY_Brother Nimetz|r
    .accept 574 >> Accept Special Forces
    .goto Stranglethorn Vale,38.017,3.330
    .accept 207 >> Accept Kurzen's Mystery
    .goto Stranglethorn Vale,37.832,3.559
    .target Sergeant Yohwa
    .target Brother Nimetz
step
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .accept 200 >> Accept Bookie Herod
    .target Lieutenant Doren
step
    #optional
    .isOnQuest 622
    .goto Stranglethorn Vale,37.740,3.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .turnin 622 >> Turn in Return to Corporal Kaleb
    .target Corporal Kaleb
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 195 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .accept 188 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .accept 192 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,43.669,9.372
    >>Click on |cRXP_PICK_Bookie Herod's Records|r upstairs in the house
    .turnin 200 >> Turn in Bookie Herod
    .accept 328 >> Accept The Hidden Key
step
    #completewith SpecialForces
    .goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step << Rogue
    #season 2
    .train 425103,1
    #completewith next
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
    .skill lockpicking,<125,1
step << Rogue
    #season 2
    .train 425103,1
    .goto Stranglethorn Vale,49.616,7.743
    >>Open the |cRXP_PICK_Kurzen Supply Crate|r. Loot it for the |cRXP_LOOT_Kurzen Fighter's Uniform|r
    .collect 216617,1
    .skill lockpicking,<125,1
step
    #completewith next
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,49.617,7.562
    >>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
    .turnin 328 >> Turn in The Hidden Key
    .accept 329 >> Accept The Spy Revealed!
step << Rogue
    #season 2
    .train 425103,1
    .goto Stranglethorn Vale,49.943,3.953,40,0
    .goto Stranglethorn Vale,49.617,7.562,40,0
    .goto Stranglethorn Vale,49.25,6.18
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
    .skill lockpicking,<125,1
step
    #label SpecialForces
    .goto Stranglethorn Vale,46.45,6.89,40,0
    .goto Stranglethorn Vale,47.89,7.77,40,0
    .goto Stranglethorn Vale,46.45,6.89
    >>Kill |cRXP_ENEMY_Kurzen Commandos|r and |cRXP_ENEMY_Kurzen Headshrinkers|r. Loot them for their |T132905:0|t[Silk Cloth]
    >>|cRXP_WARN_Be cautious of |cRXP_ENEMY_Kurzen Commandos|r in|r |T132320:0|t[Stealth]
    >>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
    .collect 4306,15,4449,1,1 --15/15 Silk Cloth
    .complete 574,1 --10/10 Kurzen Commando slain
    .complete 574,2 --10/10 Kurzen Headshrinker slain
    .mob Kurzen Commando
    .mob Kurzen Headshrinker
step
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,49.617,7.562
    >>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
    .turnin 328 >> Turn in The Hidden Key
    .accept 329 >> Accept The Spy Revealed!
step << Rogue
    #season 2
    .train 425103,1
    #completewith next
    .goto Stranglethorn Vale,44.261,7.908,60 >> Exit the cave. Travel toward |cRXP_FRIENDLY_Wendel Mathers|r in the tower outside
    .skill lockpicking,<125,1
step << Rogue
    #season 2
    .train 425103,1
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r in the tower
    >>|cRXP_WARN_He has a respawn timer of around 3 minutes|r
    .destroy 216616 >> Hand the |cRXP_LOOT_Compound Cage Key|r to him
    .destroy 216617 >> Hand the |cRXP_LOOT_Kurzen Fighter's Uniform|r to him
    .skipgossip 218230,1
    .target Wendel Mathers
    .skill lockpicking,<125,1
step << Warrior
    #xprate <1.99
    #ah
    .goto Stranglethorn Vale,44.5,9.6
    >>Kill |cRXP_ENEMY_Kurzen Medicine Men|r. Loot them for their |T134413:0|t[Liferoot]
    >>|cRXP_WARN_This is for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest. You may also buy them from the Auction House if you wish. If you will buy them from the Auction House, skip this step|r
    >>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
    .complete 1712,1 --Collect Liferoot (x8)
    .isOnQuest 1712
    .mob Kurzen Medicine Man
step << Warrior
    #xprate <1.99
    .goto Stranglethorn Vale,44.5,9.6
    >>Kill |cRXP_ENEMY_Kurzen Medicine Men|r. Loot them for their |T134413:0|t[Liferoot]
    >>|cRXP_WARN_This is for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest|r
    >>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
    .complete 1712,1 --Collect Liferoot (x8)
    .isOnQuest 1712
    .mob Kurzen Medicine Man
step
    .goto Stranglethorn Vale,48.64,22.95,75,0
    .goto Stranglethorn Vale,48.86,23.48
    .goto Stranglethorn Vale,48.79,19.96
    .goto Stranglethorn Vale,36.09,37.29,0
    >>Kill |cRXP_ENEMY_Shadowmaw Panthers|r
    >>|cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
    >>|cRXP_WARN_You can find more further south-west if needed. The location is marked on your map|r
    >>|cRXP_WARN_They also share spawns with|r |cRXP_ENEMY_Shadowmaw Tigresses|r
    .complete 192,1 --10/10 Shadowmaw Panther slain
    .mob Shadowmaw Panther
step
    #completewith next
    >>Kill |cRXP_ENEMY_Lashtail Raptors|r
    >>|cRXP_ENEMY_Lashtail Raptors|r |cRXP_WARN_cast|r |T132109:0|t[Lash] |cRXP_WARN_which is a 2 second stun|r
    >>|cRXP_WARN_They can also|r |T132343:0|t[Disarm] |cRXP_WARN_you for 5 seconds|r << Warrior/Rogue/Paladin
    .complete 195,1 --10/10 Lashtail Raptor slain
    .mob Lashtail Raptor
step
    .goto Stranglethorn Vale,40.68,21.85,70,0
    .goto Stranglethorn Vale,39.71,29.82,70,0
    .goto Stranglethorn Vale,37.09,32.60,70,0
    .goto Stranglethorn Vale,39.1,27.2,70,0
    .goto Stranglethorn Vale,39.61,21.90,70,0
    .goto Stranglethorn Vale,40.03,15.67,75,0
    .goto Stranglethorn Vale,39.1,27.2
    >>Kill |cRXP_ENEMY_Snapjaw Crocolisk|r. Loot them for their |cRXP_LOOT_Skin|r
    .complete 577,1 --5/5 Snawpjaw Crocolisk Skin
    .mob Snapjaw Crocolisk
step
    .goto Stranglethorn Vale,38.10,20.50,70,0
    .goto Stranglethorn Vale,36.98,24.90,70,0
    .goto Stranglethorn Vale,34.24,26.16,70,0
    .goto Stranglethorn Vale,31.37,22.28
    >>Kill |cRXP_ENEMY_Lashtail Raptors|r
    >>|cRXP_ENEMY_Lashtail Raptors|r |cRXP_WARN_cast|r |T132109:0|t[Lash] |cRXP_WARN_which is a 2 second stun|r
    >>|cRXP_WARN_They can also|r |T132343:0|t[Disarm] |cRXP_WARN_you for 5 seconds|r << Warrior/Rogue/Paladin
    .complete 195,1 --10/10 Lashtail Raptor slain
    .mob Lashtail Raptor
step
    >>Kill |cRXP_ENEMY_Sin'Dall|r. Loot him for his |cRXP_LOOT_Paw|r
    >>|cRXP_ENEMY_Sin'Dall|r |cRXP_WARN_can be on top of the Plateau, or patrolling around it|r
    .goto Stranglethorn Vale,32.23,17.24
    .complete 188,1 --Collect Paw of Sin'Dall (x1)
    .unitscan Sin'Dall
step << Warrior
    #xprate <1.99
    #completewith KurzenMystery1
    .goto Stranglethorn Vale,25.38,12.55,75,0
    .goto Stranglethorn Vale,25.58,10.02,75,0
    .goto Stranglethorn Vale,24.00,12.34
    .goto Stranglethorn Vale,25.52,9.36,0
    >>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r and |cRXP_LOOT_Tusks|r
    >>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
    .complete 189,1 --Bloodscalp Ears (15)
    .complete 1712,2 -- Bloodscalp Tusk (30)
    .collect 4306,15,4449,1,1 --15/15 Silk Cloth
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
    .mob Bloodscalp Beastmaster
    .mob Bloodscalp Mystic
    .isOnQuest 1712
step << Warrior
    #xprate <1.99
    .isOnQuest 1712
    #completewith next
    .goto Stranglethorn Vale,29.471,19.119,70 >> Travel to the Bal'lal Ruins
step << Warrior
    #xprate <1.99
    .isOnQuest 1712
    .goto Stranglethorn Vale,29.471,19.119
    >>Open the |cRXP_PICK_Moon Over the Vale|r. Loot it for |cRXP_LOOT_The First Troll Legend|r
    .complete 207,1 --1/1 The First Troll Legend
step << Warrior
    #xprate <1.99
    .isOnQuest 1712
    #completewith next
    .goto Stranglethorn Vale,24.719,8.905,150 >> Travel to the Ruins of Zul'Kunda
step << Warrior
    #xprate <1.99
    .isOnQuest 1712
    .goto Stranglethorn Vale,24.719,8.905
    >>Open |cRXP_PICK_The Emperor's Tomb|r. Loot it for |cRXP_LOOT_The Fourth Troll Legend|r
    .complete 207,4 --1/1 The Fourth Troll Legend
step << Warrior
    #xprate <1.99
    #label KurzenMystery1
    .isOnQuest 1712
    .goto Stranglethorn Vale,22.94,12.01
    >>Open the |cRXP_PICK_Fall of Gurubashi|r. Loot it for |cRXP_LOOT_The Third Troll Legend|r
    .complete 207,3 --1/1 The Third Troll Legend 
step << Warrior
    #xprate <1.99
    .isOnQuest 1712
    .goto Stranglethorn Vale,25.38,12.55,75,0
    .goto Stranglethorn Vale,25.58,10.02,75,0
    .goto Stranglethorn Vale,24.00,12.34
    .goto Stranglethorn Vale,25.52,9.36,0
    >>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r and |cRXP_LOOT_Tusks|r
    >>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
    .complete 189,1 --Bloodscalp Ears (15)
    .complete 1712,2 -- Bloodscalp Tusk (30)
    .collect 4306,15,4449,1,1 --15/15 Silk Cloth
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
    .mob Bloodscalp Beastmaster
    .mob Bloodscalp Mystic
step
    #completewith KurzenMystery2
    .goto Stranglethorn Vale,25.52,9.36,0
    >>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r
    >>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
    .complete 189,1 --Bloodscalp Ears (15)
    .collect 4306,15,4449,1,1 --15/15 Silk Cloth
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
    .mob Bloodscalp Beastmaster
    .mob Bloodscalp Mystic
step
    #optional
    #completewith next
    .goto Stranglethorn Vale,29.471,19.119,70 >> Travel to the Bal'lal Ruins
step
    .goto Stranglethorn Vale,29.471,19.119
    >>Open the |cRXP_PICK_Moon Over the Vale|r. Loot it for |cRXP_LOOT_The First Troll Legend|r
    .complete 207,1 --1/1 The First Troll Legend
step
    #optional
    #completewith next
    .goto Stranglethorn Vale,24.719,8.905,150 >> Travel to the Ruins of Zul'Kunda
step
    .goto Stranglethorn Vale,24.719,8.905
    >>Open |cRXP_PICK_The Emperor's Tomb|r. Loot it for |cRXP_LOOT_The Fourth Troll Legend|r
    .complete 207,4 --1/1 The Fourth Troll Legend
step
    #label KurzenMystery2
    .goto Stranglethorn Vale,22.94,12.01
    >>Open the |cRXP_PICK_Fall of Gurubashi|r. Loot it for |cRXP_LOOT_The Third Troll Legend|r
    .complete 207,3 --1/1 The Third Troll Legend
step
    .goto Stranglethorn Vale,25.38,12.55,75,0
    .goto Stranglethorn Vale,25.58,10.02,75,0
    .goto Stranglethorn Vale,24.00,12.34
    .goto Stranglethorn Vale,25.52,9.36,0
    >>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r
    >>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
    .complete 189,1 --Bloodscalp Ears (15)
    .collect 4306,15,4449,1,1 --15/15 Silk Cloth
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
    .mob Bloodscalp Beastmaster
    .mob Bloodscalp Mystic
step
    #optional
    #completewith next
    .goto Stranglethorn Vale,21.10,22.84,125 >> Travel to the Haunted Island
step
    .goto Stranglethorn Vale,21.10,22.84
    >>Kill |cRXP_ENEMY_Lesser Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
    .complete 601,1 --6/6 Water Elemental Bracers
    .mob Lesser Water Elemental
step
    #completewith UnderwaterLegend
    .cast 7178 >> |cRXP_WARN_Use your|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_if you have one|r
    .itemcount 5996,1 -- Elixir of Water Breathing
    .use 5996 -- Elixir of Water Breathing
step
    #ah
    #completewith UnderwaterLegend
    .goto Stranglethorn Vale,24.9,29.1,0
    .goto Stranglethorn Vale,27.6,29.2,0
    .goto Stranglethorn Vale,25.4,24.1,0
    .goto Stranglethorn Vale,27.5,24.2,0
    >>Open the |cRXP_PICK_Giant Clams|r. Loot them for |cRXP_LOOT_Blue Pearls|r. You may also buy these from the Auction House
    >>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
    .use 5996 -- Elixir of Water Breathing
    .collect 4611,9,705,1 --9/9 Blue Pearls
step
    #ssf
    #completewith UnderwaterLegend
    .goto Stranglethorn Vale,24.9,29.1,0
    .goto Stranglethorn Vale,27.6,29.2,0
    .goto Stranglethorn Vale,25.4,24.1,0
    .goto Stranglethorn Vale,27.5,24.2,0
    >>Open the |cRXP_PICK_Giant Clams|r. Loot them for |cRXP_LOOT_Blue Pearls|r
    >>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
    .use 5996 -- Elixir of Water Breathing
    .collect 4611,9,705,1 --9/9 Blue Pearls
step << Hunter
    #completewith UnderwaterLegend
    #era/som
    .goto Stranglethorn Vale,24.42,24.46,0
    >>Kill |cRXP_ENEMY_Saltscale Murlocs|r. Loot them for their |cRXP_LOOT_Encrusted Tail Fins|r
    >>|cRXP_WARN_Only engage in combat with 1 |cRXP_ENEMY_Murloc|r at a time. Try to avoid |cRXP_ENEMY_Saltscale Oracles|r and|r |cRXP_ENEMY_Saltscale Tide Lords|r
    >>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
    .use 5996 -- Elixir of Water Breathing
    .complete 1107,1 --10/10 Encrusted Tail Fin
    .mob Saltscale Forager
    .mob Saltscale Warrior
    .mob Saltscale Hunter
    .mob Saltscale Oracle
    .isOnQuest 1107
step
    #label UnderwaterLegend
    .goto Stranglethorn Vale,24.765,22.871
    >>Open |cRXP_PICK_Gri'lek the Wanderer|r underwater. Loot it for |cRXP_LOOT_The Second Troll Legend|r
    .complete 207,2 --1/1 The Second Troll Legend
step << Hunter
    #completewith next
    #era/som
    .goto Stranglethorn Vale,24.42,24.46,0
    >>Kill |cRXP_ENEMY_Saltscale Murlocs|r. Loot them for their |cRXP_LOOT_Encrusted Tail Fins|r
    >>|cRXP_WARN_Only engage in combat with 1 |cRXP_ENEMY_Murloc|r at a time. Try to avoid |cRXP_ENEMY_Saltscale Oracles|r and|r |cRXP_ENEMY_Saltscale Tide Lords|r
    >>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
    .use 5996 -- Elixir of Water Breathing
    .complete 1107,1 --10/10 Encrusted Tail Fin
    .mob Saltscale Forager
    .mob Saltscale Warrior
    .mob Saltscale Hunter
    .mob Saltscale Oracle
    .isOnQuest 1107
step
    #ah
    .goto Stranglethorn Vale,24.9,29.1,90,0
    .goto Stranglethorn Vale,27.6,29.2,90,0
    .goto Stranglethorn Vale,25.4,24.1,90,0
    .goto Stranglethorn Vale,27.5,24.2
    >>Open the |cRXP_PICK_Giant Clams|r. Loot them for |cRXP_LOOT_Blue Pearls|r. You may also buy these from the Auction House
    >>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
    .use 5996 -- Elixir of Water Breathing
    .collect 4611,9,705,1 --9/9 Blue Pearls
step
    #ssf
    .goto Stranglethorn Vale,24.9,29.1,90,0
    .goto Stranglethorn Vale,27.6,29.2,90,0
    .goto Stranglethorn Vale,25.4,24.1,90,0
    .goto Stranglethorn Vale,27.5,24.2
    >>Open the |cRXP_PICK_Giant Clams|r. Loot them for |cRXP_LOOT_Blue Pearls|r
    >>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
    .use 5996 -- Elixir of Water Breathing
    .collect 4611,9,705,1 --9/9 Blue Pearls
step << Hunter
    #era/som
    .goto Stranglethorn Vale,24.42,24.46,80,0
    .goto Stranglethorn Vale,26.6,26.6,80,0
    .goto Stranglethorn Vale,24.6,27.2,80,0
    .goto Stranglethorn Vale,24.42,24.46
    >>Kill |cRXP_ENEMY_Saltscale Murlocs|r. Loot them for their |cRXP_LOOT_Encrusted Tail Fins|r
    >>|cRXP_WARN_Only engage in combat with 1 |cRXP_ENEMY_Murloc|r at a time. Try to avoid |cRXP_ENEMY_Saltscale Oracles|r and|r |cRXP_ENEMY_Saltscale Tide Lords|r
    >>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
    .use 5996 -- Elixir of Water Breathing
    .complete 1107,1 --10/10 Encrusted Tail Fin
    .mob Saltscale Forager
    .mob Saltscale Warrior
    .mob Saltscale Hunter
    .mob Saltscale Oracle
    .isOnQuest 1107
step
    #som
    .goto Stranglethorn Vale,25.52,9.36
    .xp 38-26000 >>Grind until you are 26k xp away from level 38
step
    #xprate <1.2
    .goto Stranglethorn Vale,25.52,9.36
    .xp 38-18600 >>Grind until you are 18,600 xp away from level 38
step
	#softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    #softcore
    #completewith next
    +Travel to the Rebel Camp
step
    #softcore
    .goto Stranglethorn Vale,37.832,3.559
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 207 >> Turn in Kurzen's Mystery
    .accept 205 >> Accept Troll Witchery << Mage
    .target Brother Nimetz
step
    #softcore
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 574 >> Turn in Special Forces
    .accept 202 >> Accept Colonel Kurzen
    .turnin 329 >> Turn in The Spy Revealed!
    .accept 330 >> Accept Patrol Schedules
    .target Lieutenant Doren
step
    #softcore
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 574 >> Turn in Special Forces
    .accept 202 >> Accept Colonel Kurzen
    .target Lieutenant Doren
step
    #softcore
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,37.66,3.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
    .turnin 330 >> Turn in Patrol Schedules
    .accept 331 >> Accept Report to Doren
    .target Corporal Sethman
step
    #softcore
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 331 >> Turn in Report to Doren
    .target Lieutenant Doren
step
    #completewith next
    .goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 195 >> Turn in Raptor Mastery
    .accept 196 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .turnin 188 >> Turn in Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 192 >> Turn in Panther Mastery
    .accept 193 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    #hardcore
    #completewith next
    +Travel to the Rebel Camp
step
    #hardcore
    .goto Stranglethorn Vale,37.832,3.559
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 207 >> Turn in Kurzen's Mystery
    .accept 205 >> Accept Troll Witchery << Mage
    .target Brother Nimetz
step
    #hardcore
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 574 >> Turn in Special Forces
    .accept 202 >> Accept Colonel Kurzen
    .turnin 329 >> Turn in The Spy Revealed!
    .accept 330 >> Accept Patrol Schedules
    .target Lieutenant Doren
step
    #hardcore
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 574 >> Turn in Special Forces
    .accept 202 >> Accept Colonel Kurzen
    .target Lieutenant Doren
step
    #hardcore
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,37.66,3.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
    .turnin 330 >> Turn in Patrol Schedules
    .accept 331 >> Accept Report to Doren
    .target Corporal Sethman
step
    #hardcore
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 331 >> Turn in Report to Doren
    .target Lieutenant Doren
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
step
    #completewith BBTurnins
    .hs >> Hearth to Booty Bay
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .isQuestTurnedIn 1114
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
    .turnin 189 >> Turn in Bloodscalp Ears
    .goto Stranglethorn Vale,27.000,77.124
    .accept 1116 >> Accept Dream Dust in the Swamp
    .goto Stranglethorn Vale,26.943,77.207
    .target Kebok
    .target Krazek
step
    .goto Stranglethorn Vale,27.000,77.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r up stairs on the top floor
    .turnin 189 >>Turn in Bloodscalp Ears
    .target Kebok
step
    #label BBTurnins
    .goto Stranglethorn Vale,27.227,76.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 601 >> Turn in Water Elementals
    .accept 602 >> Accept Magical Analysis
    .target Baron Revilgaz
step << Rogue
    #season 2
    .train 425103,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Aransas|r
    >>She will give you |T133640:0|t[|cRXP_LOOT_Captain Aransas' Reward|r]
    .goto Stranglethorn Vale,27.681,76.648
    .skipgossip
    .collect 216618,1
    .target Captain Aransas
    .skill lockpicking,<125,1
step << Rogue
    #season 2
    .train 425103,1
    .use 216618 >>Open |T133640:0|t[|cRXP_LOOT_Captain Aransas' Reward|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r] and |T338666:0|t[|cRXP_FRIENDLY_Jani's Charm|r]
    >>|cRXP_WARN_Do NOT destroy|r |T338666:0|t[|cRXP_FRIENDLY_Jani's Charm|r] |cRXP_WARN_as it is used for gather future runes|r
    .collect 213136,1
    .skill lockpicking,<125,1
step << Rogue
    #season 2
    .itemcount 213136,1
    .use 213136
    .train 425103 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r] |cRXP_WARN_to train|r |T132299:0|t[Master of Subtlety]
    .skill lockpicking,<125,1
step
    .goto Stranglethorn Vale,28.294,77.592
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 577 >> Turn in Some Assembly Required
    .target Drizzlik
step
    .xp 38 >> Make sure you are level 38 before starting the next segment
step << !Mage
    #label end
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .goto Stranglethorn Vale,27.530,77.787
    .fly Stormwind>> Fly to Stormwind
    .target Gyll
step << Warrior
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Buy 400|r |T135427:0|t[Wicked Throwing Daggers]
    .collect 15327,400 --Collect Wicked Throwing Dagger
    .target Thurman Mullby
step << Mage
    #completewith next
    .goto Stranglethorn Vale,27.530,77.787
	.zone Stormwind City >> Teleport to Stormwind City
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells
    .target Elsharin
	.target Jennea Cannon
]])

RXPGuides.RegisterGuide([[
#version 20
#group RXP SOD TEST
#season 2
#classic
<< Alliance
#name 38-40 Alterac/Arathi SoD
#next 40-41 Badlands SoD


step << Warlock
    >>Abandon the following quests, you will pick them up again later
    .abandon 196 >> Abandon Raptor Mastery
    .abandon 193 >> Abandon Panther Mastery
step
    .goto Arathi Highlands,46.197,47.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .accept 691 >> Accept Worth Its Weight in Gold
    .target Apprentice Kryten
    .maxlevel 40
step << !Hunter
    #season 2
    .isOnQuest 79242
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    #completewith next
    .zone Wetlands >>Travel to the Arathi Highlands/Wetlands zone border
step << !Hunter
    #season 2
    .isOnQuest 79242
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .goto Wetlands,58.320,6.927
    .cast 6477 >>Enter the |cRXP_PICK_Rowboat|r in the water
    .subzoneskip 308
step << NightElf !Hunter
    #season 2
    .isOnQuest 79242
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r to receive |cRXP_LOOT_Illari's Key|r
    .complete 79242,1 --Found Illari Duskfeather
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,2
    .target Illari Duskfeather
step << !NightElf !Hunter
    #season 2
    .isOnQuest 79242
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    #completewith next
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r. You will have to fight her after
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip 215655,1,1,1
    .target Illari Duskfeather
step << !NightElf !Hunter
    #season 2
    .isOnQuest 79242
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .goto Arathi Highlands,93.90,71.49
    >>Kill |cRXP_ENEMY_Illari Duskfeather|r. Open the |cRXP_PICK_Dropped Pouch|r she drops on the ground. Loot it for |cRXP_LOOT_Illari's Key|r
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,1
    .mob Illari Duskfeather 
step << !NightElf !Hunter
    #season 2
    .isOnQuest 79242
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip
    .target Illari Duskfeather
step << !Hunter
    #xprate <1.99
    #season 2
    .isOnQuest 79242
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    >>Click |cRXP_PICK_Illari's Loot Cache|r on the ground
    .goto Arathi Highlands,94.154,69.266
    .turnin 79242 >>Turn in No Honor Among Thieves
step << !Hunter
    #season 2
    .isQuestTurnedIn 79242
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] << Priest
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r] << Paladin
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Brain Freeze|r] << Mage
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse|r] << Druid
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r] << Warrior
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness|r] << Warlock
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Poisoned Blade|r] << Rogue
    .collect 212552,1 << Priest
    .collect 212551,1 << Paladin
    .collect 208853,1 << Mage
    .collect 212548,1 << Druid
    .collect 212562,1 << Warrior
    .collect 212561,1 << Warlock
    .collect 212559,1 << Rogue
    .use 212553 --Jewel-Encrusted Box (1)
step << !Hunter
    #season 2
    .isQuestTurnedIn 79242
    .train 431663 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] |cRXP_WARN_to train|r |T136181:0|t[Mind Spike] << Priest
    .train 416031 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r] |cRXP_WARN_to train|r |T236246:0|t[The Art of War] << Paladin
    .train 401752 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Brain Freeze|r] |cRXP_WARN_to train|r |T236206:0|t[Brain Freeze] << Mage
    .train 410029 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse|r] |cRXP_WARN_to train|r |T236151:0|t[Eclipse] << Druid
    .train 403467 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r] |cRXP_WARN_to train|r |T132345:0|t[Enraged Regeneration] << Warrior
    .train 426452 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness|r] |cRXP_WARN_to train|r |T135823:0|t[Shadow and Flame] << Warlock
    .train 425102 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Poisoned Blade|r] |cRXP_WARN_to train|r |T236270:0|t[Poisoned Blade] << Rogue
    .use 212552 << Priest
    .use 212551 << Paladin
    .use 208853 << Mage
    .use 212548 << Druid
    .use 212562 << Warrior
    .use 212561 << Warlock
    .use 212559 << Rogue
    .itemcount 212552,1 << Priest
    .itemcount 212551,1 << Paladin
    .itemcount 208853,1 << Mage
    .itemcount 212548,1 << Druid
    .itemcount 212562,1 << Warrior
    .itemcount 212561,1 << Warlock
    .itemcount 212559,1 << Rogue
step << !Hunter
    #season 2
    .isQuestTurnedIn 79242
    .goto 1417,89.536,78.149
    .cast 6477 >>Enter the |cRXP_PICK_Rowboat|r in the water to get back to Arathi
    .subzoneskip 308,1
step
    .goto Arathi Highlands,62.50,33.72
    >>Click the |cRXP_PICK_Shards of Myzrael|r
    .accept 642 >> Accept The Princess Trapped
step << Paladin
    #season 2
    #sticky
    #completewith ArathiEnd
    #label BeadI
    >>Be on the lookout for three different |T135261:0|t[|cRXP_LOOT_Tarnished Prayer Beads|r] as you're questing in Arathi. They can drop from all the humanoids in the zone.
    .collect 213444,1 --Tarnished Prayer Bead I
    .train 426173,1 -- Skips if you already have the rune
    .train 19740,3 -- Skips if you don't have BoM
    .train 642,3 -- Skips if you don't have Divine Shield
    .train 20164,3 -- SKips if you don't have Seal of Justice
step << Paladin
    #season 2
    #sticky
    #completewith ArathiEnd
    #label BeadII
    >>Be on the lookout for three different |T135261:0|t[|cRXP_LOOT_Tarnished Prayer Beads|r] as you're questing in Arathi. They can drop from all the humanoids in the zone.
    .collect 213445,1 --Tarnished Prayer Bead II
    .train 426173,1 -- Skips if you already have the rune
    .train 19740,3 -- Skips if you don't have BoM
    .train 642,3 -- Skips if you don't have Divine Shield
    .train 20164,3 -- SKips if you don't have Seal of Justice
step << Paladin
    #season 2
    #sticky
    #completewith ArathiEnd
    #label BeadIII
    >>Be on the lookout for three different |T135261:0|t[|cRXP_LOOT_Tarnished Prayer Beads|r] as you're questing in Arathi. They can drop from all the humanoids in the zone.
    .collect 213446,1 --Tarnished Prayer Bead III
    .train 426173,1 -- Skips if you already have the rune
    .train 19740,3 -- Skips if you don't have BoM
    .train 642,3 -- Skips if you don't have Divine Shield
    .train 20164,3 -- SKips if you don't have Seal of Justice
step << Paladin
    #season 2
    #sticky
    #requires BeadI
    #completewith ArathiEnd
    #label PurifiedBeadI
    .itemcount 213444,1
    >>|cRXP_WARN_Cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_on yourself while in combat with an enemy and kill it. Doing so will purify the bead and award you with a|r |T135260:0|t[|cRXP_LOOT_Divine Prayer Bead I|r]
    .collect 213448,1
    .train 426173,1
step << Paladin
    #season 2
    #sticky
    #requires BeadII
    #completewith ArathiEnd
    #label PurifiedBeadII
    .itemcount 213445,1
    >>|cRXP_WARN_Cast|r |T135896:0|t[Divine Shield] |cRXP_WARN_on yourself while you're below 10% health. Doing so will purify the bead and award you with a|r |T135260:0|t[|cRXP_LOOT_Divine Prayer Bead II|r]
    .collect 213449,1
    .train 426173,1
step << Paladin
    #season 2
    #sticky
    #requires BeadIII
    #completewith ArathiEnd
    #label PurifiedBeadIII
    .itemcount 213446,1
    >>|cRXP_WARN_Cast|r |T135971:0|t[Seal of Justice] |cRXP_WARN_followed by|r |T135959:0|t[Judgement] |cRXP_WARN_on a fleeing enemy to receive the|r |T135260:0|t[|cRXP_LOOT_Divine Prayer Bead III|r]
    .collect 213450,1
    .train 426173,1
step << Paladin
    #season 2
    #sticky
    #requires PurifiedBeadIII
    #completewith ArathiEnd
    .itemcount 213450,1
    .itemcount 213449,1
    .itemcount 213448,1
    #label Rosary
    >>|cRXP_WARN_Use a|r |T135260:0|t[|cRXP_LOOT_Divine Prayer Bead|r] |cRXP_WARN_to combine them into the|r |T133289:0|t[|cRXP_LOOT_Rosary of the Light|r]
    .use 213448
    .use 213449
    .use 213450
    .collect 213447,1 --Rosary of the Light (1)
    .train 426173,1
step << Paladin
    #season 2
    #sticky
    #requires PurifiedBeadII
    #completewith ArathiEnd
    .itemcount 213450,1
    .itemcount 213449,1
    .itemcount 213448,1
    #label Rosary
    >>|cRXP_WARN_Use a|r |T135260:0|t[|cRXP_LOOT_Divine Prayer Bead|r] |cRXP_WARN_to combine them into the|r |T133289:0|t[|cRXP_LOOT_Rosary of the Light|r]
    .use 213448
    .use 213449
    .use 213450
    .collect 213447,1 --Rosary of the Light (1)
    .train 426173,1
step << Paladin
    #season 2
    #sticky
    #requires PurifiedBeadI
    #completewith ArathiEnd
    .itemcount 213450,1
    .itemcount 213449,1
    .itemcount 213448,1
    #label Rosary
    >>|cRXP_WARN_Use a|r |T135260:0|t[|cRXP_LOOT_Divine Prayer Bead|r] |cRXP_WARN_to combine them into the|r |T133289:0|t[|cRXP_LOOT_Rosary of the Light|r]
    .use 213448
    .use 213449
    .use 213450
    .collect 213447,1 --Rosary of the Light (1)
    .train 426173,1
step
    #completewith next
    >>Mine the |cRXP_PICK_Lesser Bloodstone Deposits|r. Loot it for |cRXP_LOOT_Lesser Bloodstone Ore|r
    >>|cRXP_WARN_These are found inside of the Cave|r
    .collect 4278,4,627,1 -- Lesser Bloodstone Ore (4)
    .skill mining,<75,1
step
    .goto Arathi Highlands,78.59,39.99,50,0
    .goto Arathi Highlands,82.02,39.59,40,0
    .goto Arathi Highlands,83.12,35.52,40,0
    .goto Arathi Highlands,87.11,31.40,25,0
    .goto Arathi Highlands,84.30,30.95
    >>Kill |cRXP_ENEMY_Drywhisker Kobolds|r, |cRXP_ENEMY_Drywhisker Diggers|r and |cRXP_ENEMY_Drywhisker Surveyors|r. Loot them for their |cRXP_LOOT_Motes|r
    >>|cRXP_WARN_The quest turn in for this is inside the Cave. Clear your way to the back while completing it|r
    .complete 642,1 -- Mote of Myzrael (12)
    .mob Drywhisker Kobold
    .mob Drywhisker Digger
    .mob Drywhisker Surveyor
step
    .goto Arathi Highlands,87.11,31.40,25,0
    .goto Arathi Highlands,84.30,30.95
    >>Mine the |cRXP_PICK_Lesser Bloodstone Deposits|r. Loot it for |cRXP_LOOT_Lesser Bloodstone Ore|r
    >>|cRXP_WARN_These are found inside of the Cave|r
    .collect 4278,4,627,1 -- Lesser Bloodstone Ore (4)
    .skill mining,<75,1
step
    .goto Arathi Highlands,84.30,30.95
    >>Click the |cRXP_PICK_Iridescent Shards|r at the back of the Cave
    .turnin 642 >> Turn in The Princess Trapped
    .accept 651 >> Accept Stones of Binding
step
    #completewith EastBinding
    .goto Arathi Highlands,70.34,39.52,140 >> Travel to the Circle of East Binding
step << Warrior
    #xprate <1.99
    #completewith next
    >>Kill |cRXP_ENEMY_Cresting Exiles|r. Loot them for their |cRXP_LOOT_Cresting Charms|r
    .collect 4481,8,1712,1 --Collect Cresting Charm (x8)
    .mob Cresting Exile
    .isOnQuest 1712
step
    #label EastBinding
    .goto Arathi Highlands,66.710,29.725
    >>Open the |cRXP_PICK_Stone of East Binding|r. Loot it for the |cRXP_LOOT_Cresting Key|r
    .complete 651,2 -- Cresting Key
step << Warrior
    #xprate <1.99
    .goto Arathi Highlands,67.46,28.79,40,0
    .goto Arathi Highlands,65.47,28.77,40,0
    .goto Arathi Highlands,65.87,31.24,40,0
    .goto Arathi Highlands,67.47,30.65,40,0
    .goto Arathi Highlands,66.82,29.77
    >>Kill |cRXP_ENEMY_Cresting Exiles|r. Loot them for their |cRXP_LOOT_Cresting Charms|r
    .collect 4481,8,1712,1 --Collect Cresting Charm (x8)
    .mob Cresting Exile
    .isOnQuest 1712
step << Warrior
    #season 2
    .train 409163,1
    #completewith WitherbarkCave
    +|cRXP_WARN_Considering looking for additional party members in helping you to try acquire the|r |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r] |cRXP_WARN_as it requires killing a level 35 elite and 2 mobs at the same time. It is completed in this area|r
step << Warrior
    #season 2
    #completewith next
    .train 409163,1
    >>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for the |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r]
    .collect 216483,1
    .mob Witherbark Shadow Hunter
    .mob Witherbark Axe Thrower
    .mob Witherbark Headhunter
    .mob Witherbark Witch Doctor
step
    >>Kill the |cRXP_ENEMY_Witherbarks|r. Loot them for their |cRXP_LOOT_Witherbark Tusks|r
    >>Kill |cRXP_ENEMY_Witherbark Witch Doctors|r. Loot them for their |cRXP_LOOT_Medicine Pouches|r
    >>Kill |cRXP_ENEMY_Witherbark Shadow Hunters|r. Loot them for their |cRXP_LOOT_Shadow Hunter Knife|r
    >>|cRXP_ENEMY_Witherbark Shadow Hunters|r |cRXP_WARN_are only found inside the Cave|r
    .complete 691,1 --10/10 Witherbark Tusk
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    .complete 691,2 --4/4 Witherbark Medicine Pouch
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    .complete 691,3 --1/1 Shadow Hunter Knife
    .goto Arathi Highlands,68.38,75.92,30,0
    .goto Arathi Highlands,68.20,79.47
    .mob Witherbark Shadow Hunter
    .mob Witherbark Witch Doctor
    .mob Witherbark Shadowcaster
    .mob Witherbark Troll
    .isOnQuest 691
step << Warrior
    #season 2
    #completewith next
    .train 409163,1
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    >>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for the |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r]
    .collect 216483,1
    .mob Witherbark Shadow Hunter
    .mob Witherbark Axe Thrower
    .mob Witherbark Headhunter
    .mob Witherbark Witch Doctor
step << Warrior
    #season 2
    .train 409163,1
    #label WitherbarkCave
    .goto Arathi Highlands,68.363,75.806,25 >>Enter the Witherbark Cave
step << Warrior
    #season 2
    .train 409163,1
    #completewith next
    .goto Arathi Highlands,69.502,81.924
    .cast 436278 >> |cRXP_WARN_Use the|r |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r] |cRXP_WARN_at the |cRXP_PICK_Gong|r inside the cave|r
    .use 216483 >>|cRXP_WARN_This will spawn a |cRXP_ENEMY_Witherbark Goliath|r (lvl 35 elite) as well as 2 additional mobs|r
step << Warrior
    #season 2
    .train 409163,1
    .goto Arathi Highlands,69.61,81.60
    >>Kill the |cRXP_ENEMY_Witherbark Goliath|r. Loot it for the |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r]
    .collect 213109,1
    .mob Witherbark Goliath
step << Warrior
    #season 2
    .train 409163 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r] |cRXP_WARN_to train|r |T132345:0|t[Focused Rage]
    .use 213109
step << Warrior
    #xprate <1.99
    #completewith next
    >>Kill |cRXP_ENEMY_Thundering Exiles|r. Loot them for their |cRXP_LOOT_Thundering Charms|r
    .collect 4480,8,1712,1 --Collect Thundering Charm (x8)
    .mob Thundering Exile
    .isOnQuest 1712
step
    .goto Arathi Highlands,52.042,50.734
    >>Open the |cRXP_PICK_Stone of Outer Binding|r. Loot it for the |cRXP_LOOT_Thundering Key|r
    .complete 651,3 -- Thundering Key
step << Warrior
    #xprate <1.99
    .goto Arathi Highlands,52.74,50.61,40,0
    .goto Arathi Highlands,50.97,52.16,40,0
    .goto Arathi Highlands,51.52,48.93,40,0
    .goto Arathi Highlands,52.12,51.11
    >>Kill |cRXP_ENEMY_Thundering Exiles|r. Loot them for their |cRXP_LOOT_Thundering Charms|r
    .collect 4480,8,1712,1 --Collect Thundering Charm (x8)
    .mob Thundering Exile
    .isOnQuest 1712
step
    .goto Arathi Highlands,46.197,47.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .turnin 691 >> Turn in Worth Its Weight in Gold
    .target Apprentice Kryten
    .isQuestComplete 691
step
    .group
    .goto Arathi Highlands,46.652,47.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .accept 693 >> Accept Wand over Fist
    .target Skuerto
    .isQuestTurnedIn 691
step
    .group
    #completewith next
    .goto Arathi Highlands,54.21,77.80,30 >> Enter the Bolderfist Hall Cave
step
    .group
    .goto Arathi Highlands,54.75,81.87
    >>Kill |cRXP_ENEMY_Kor'gresh Coldrage|r. Loot him for |cRXP_LOOT_Trelane's Wand|r
    .complete 693,1 -- Trelane's Wand of Invocation (1)
    .mob Kor'gresh Coldrage
    .isQuestTurnedIn 691
step
    .group
	#completewith next
    .goto Arathi Highlands,54.428,80.800 
	+|cRXP_WARN_Perform a Logout skip on the banner next to |cRXP_ENEMY_Kor'gresh Coldrage|r to teleport closer to Refuge Point. If you are unable to do this just run out normally|r
	.link https://youtu.be/SWBtPqm5M0Q?t=61 >> |cRXP_WARN_Click here for video reference|r
    .subzoneskip 316,1
step
    .group
    .goto Arathi Highlands,46.652,47.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    >>|cRXP_WARN_Do not accept the follow up yet|r
    .turnin 693 >> Turn in Wand over Fist
step
    .goto Arathi Highlands,45.73,46.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
    .fly Southshore >> Fly to Southshore
    .target Cedrik Prose
    .zoneskip Hillsbrad Foothills
step
    #completewith Analysis
    >>|cRXP_WARN_The |cRXP_ENEMY_Shadowy Assassin|r attack on Southshore is a random event|r
    >>If you ever see a |cRXP_ENEMY_Shadowy Assassin|r in Southshore, kill them. Loot them for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
    >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] to start the quest|r
    >>|cRXP_WARN_Skip this step if you don't see the event|r
	.collect 3668,1,522
    .use 3668
    .accept 522 >> Accept Assassin's Contract
    .unitscan Shadowy Assassin
step
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 538 >> Turn in Southshore
    .target Loremaster Dibbs
    .isOnQuest 538
step
    .goto Hillsbrad Foothills,51.170,58.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Anderson|r
    .home >> Set your Hearthstone to Southshore
    .target Innkeeper Anderson
step
    #som
    .goto Hillsbrad Foothills,51.88,58.67
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chef Jessen
	>>Skip this if you dropped the Turtle Meat from earlier
    .target Chef Jessen
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
    .accept 555 >> Accept Soothing Turtle Bisque
    .turnin 555 >> Turn in Soothing Turtle Bisque
step
    #xprate <1.99
    .goto Hillsbrad Foothills,51.468,58.354
    .target Raleigh the Devout
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r up stairs
    .turnin 1052 >> Turn in Down the Scarlet Path
    .isOnQuest 1052
step
    #xprate <1.99
    .goto Hillsbrad Foothills,51.468,58.354
    .target Raleigh the Devout
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r up stairs
    .accept 1053 >> Accept In the Name of the Light
    .isQuestTurnedIn 1052
    .dungeon SM
step << skip
	#som
    .goto Hillsbrad Foothills,51.36,58.55
    >>Head upstairs
    .target Raleigh the Devout
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r
    .turnin 1052 >> Turn in Down the Scarlet Path
    .isOnQuest 1052
step
    #label Analysis
    .goto Hillsbrad Foothills,49.473,58.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
    .accept 500 >> Accept Crushridge Bounty
    .target Marshal Redpath
step << skip
    .goto Hillsbrad Foothills,49.473,58.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
    .accept 504 >> Accept Crushridge Warmongers
    .target Marshal Redpath
    .isQuestTurnedIn 500
step
    .goto Hillsbrad Foothills,48.145,59.121
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 522 >> Turn in Assassin's Contract
    .isOnQuest 522
    .target Magistrate Henry Maleb
step
.dungeon !SM
    .goto Hillsbrad Foothills,48.145,59.121
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .accept 523 >> Accept Baron's Demise
    .isQuestTurnedIn 522
    .target Magistrate Henry Maleb
step
    .goto Hillsbrad Foothills,48.145,59.121
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 525 >> Turn in Further Mysteries
    .accept 537 >> Accept Dark Council
    .accept 512 >> Accept Noble Deaths
    .target Magistrate Henry Maleb
step
.dungeon SM
    #completewith next
    .goto Alterac Mountains,58.31,67.92,0
    .goto Alterac Mountains,48.0,82.0,0
    .zone Silverpine Forest >> Grind the |cRXP_ENEMY_Syndicate|r in Alterac Mountains while looking for a group for Scarlet Monastery
    .zoneskip Tirisfal Glades
    .mob Syndicate Footpad
    .mob Syndicate Thief
step << Paladin
.dungeon !SM
    #season 2
    .train 426178,1
    #completewith next
    .goto Alterac Mountains,58.31,67.92,0
    .goto Alterac Mountains,48.0,82.0,0
    .zone Silverpine Forest >> Grind the |cRXP_ENEMY_Syndicate|r in Alterac Mountains while looking for a group for Scarlet Monastery. You will finish the quest for the |T236263:0|t[Sheath of Light] rune now
    .zoneskip Tirisfal Glades
    .mob Syndicate Footpad
    .mob Syndicate Thief
step << Paladin
    #season 2
    .train 426178,1
    .goto Silverpine Forest,69.95,7.05,150,0
    .goto Tirisfal Glades,56.15,64.62,100 >>|cRXP_WARN_You now have to go into Scarlet Monastery and complete a full Cathedral run|r
    >>After killing |cRXP_ENEMY_Mograine|r and |cRXP_ENEMY_Whitemane|r, talk to |cRXP_FRIENDLY_Aeonas|r in the back room
    .complete 79946,2 --Find Aeonas in the Scarlet Monastery
    .turnin 79946 >>Turn in A Brother in Need
    .accept 79963 >>Accept By The Light's Grace
    .target Aeonas
step << Paladin
    #season 2
    .train 426178,1
    >>Heal |cRXP_FRIENDLY_Aenoas|r to full HP
    .complete 79963,1 --Heal Aeonas
    .target Aeonas
step << Paladin
    #season 2
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeonas|r
    .turnin 79963 >>Turn in By The Light's Grace
    .accept 79970 >>Accept Aeonas the Vindicated
    .target Aeonas
step
.dungeon SM
    .goto Silverpine Forest,69.95,7.05,150,0
    .goto Tirisfal Glades,56.15,64.62,100,0
    .goto 1415,47.500,19.652,25,0
    .goto 1415,47.792,19.611
    .subzone 796,2 >> Enter Scarlet Monastery. Start with Library so you can loot the [|cRXP_FRIENDLY_The Scarlet Key|r] at the end
step
.dungeon SM
    #completewith Bosses
    >>Loot the |cRXP_LOOT_Mythology of the Titans|r
    >>|cRXP_WARN_This can spawn randomly on the ground or in bookshelves throughout the Library wing|r
    .complete 1050,1 -- Mythology of the Titans (1)
    .isOnQuest 1050
step
.dungeon SM
    #completewith Mythology
    >>Open |cRXP_PICK_Doan's Strongbox|r. Loot it for [|cRXP_FRIENDLY_The Scarlet Key|r]
    .collect 7146,1 -- The Scarlet Key
step
    #xprate <1.99
    #label Bosses
    >>Kill |cRXP_ENEMY_Houndmaster Loksey|r, |cRXP_ENEMY_Herod|r, |cRXP_ENEMY_High Inquisitor Whitemane|r and |cRXP_ENEMY_Scarlet Commander Mograine|r
    >>|cRXP_ENEMY_Houndmaster Loksey|r |cRXP_WARN_is located in the Library|r
    >>|cRXP_ENEMY_Herod|r |cRXP_WARN_is located in the Armory|r
    >>|cRXP_ENEMY_High Inquisitor Whitemane|r |cRXP_WARN_and |cRXP_ENEMY_Scarlet Commander Mograine|r are located in the Cathedral|r
    .complete 1053,4 -- Houndmaster Loksey slain
    .complete 1053,3 -- Herod slain
    .complete 1053,1 -- High Inquisitor Whitemane slain
    .complete 1053,2 -- Scarlet Commander Mograine slain
    .isOnQuest 1053
    .dungeon SM
step
.dungeon SM
    #label Mythology
    >>Loot the |cRXP_LOOT_Mythology of the Titans|r
    >>|cRXP_WARN_This can spawn randomly on the ground or in bookshelves throughout the Library wing|r
    .complete 1050,1 -- Mythology of the Titans (1)
    .isOnQuest 1050
step
.dungeon SM
    #completewith next
    .hs >> Hearth to Southshore
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << Paladin
.dungeon !SM
    #season 2
    #optional
    .train 426178,1
    .hs >> Hearth to Southshore
    .subzoneskip 796,1 -- SM
step
.dungeon !SM
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .accept 540 >> Accept Preserving Knowledge
    .target Loremaster Dibbs
    .isQuestTurnedIn 538
step
.dungeon !SM
    .goto Alterac Mountains,18.83,78.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver|r
    .turnin 602 >> Turn in Magical Analysis
    .timer 6,Magical Analysis RP
    .accept 603 >> Accept Ansirem's Key
    .target Archmage Ansirem Runeweaver
step
    #xprate <1.99
    .goto Hillsbrad Foothills,51.468,58.354
    .target Raleigh the Devout
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r up stairs
    .turnin 1053 >> Turn in In the Name of the Light
    .isQuestTurnedIn 1052
    .dungeon SM
step
.dungeon SM
    .goto Hillsbrad Foothills,48.145,59.121
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .accept 523 >> Accept Baron's Demise
    .isQuestTurnedIn 522
    .target Magistrate Henry Maleb
step
.dungeon SM
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .accept 540 >> Accept Preserving Knowledge
    .target Loremaster Dibbs
    .isQuestTurnedIn 538
step
.dungeon SM
    .goto Alterac Mountains,18.83,78.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver|r
    .turnin 602 >> Turn in Magical Analysis
    .accept 603 >> Accept Ansirem's Key
    .target Archmage Ansirem Runeweaver
step
    #optional
    #completewith Ruins
    .goto Alterac Mountains,39.83,62.18,80,0
    .goto Alterac Mountains,37.55,61.44,35 >> Travel to the Ruins of Alterac. This location will also serve as your exit route, should you need it
step << skip
    #completewith Ruins
    >>Kill |cRXP_ENEMY_Crushridge Warmongers|r
	>>|cRXP_ENEMY_Crushridge Warmongers|r |cRXP_WARN_call for help at 25% HP|r
	.complete 504,1 -- Crushridge Warmonger slain (15)
	.mob Crushridge Warmonger
    .isOnQuest 504
--XX needs Crushridge Bounty to be turned in to pick up
step << Paladin
    #season 2
    #sticky
    #softcore
    #completewith Tiara
    #label DormantRune
    .goto Alterac Mountains,39.6,60.8
    >>Look for a skeleton on the southern wall of the keep. Loot it for a |T134424:0|t|cRXP_LOOT_Dormant Holy Rune|r. |cRXP_WARN_You will need it to unlock a rune. Hoever to unlock it you will need to use|r |T136106:0|t[|cRXP_FRIENDLY_Divine Intervention|r] |cRXP_WARN_on a player and then get resurrected. You can skip this step if you know you won't be able to find a healer to help|r
    .collect 213452,1
    .train 415059,1
step << Paladin
    #season 2
    #sticky
    #softcore
    #completewith AlteracEnd
    #requires DormantRune
    .itemcount 213452,1
    .train 415059,1
    >>If you find a healer you can ask him to resurrect you after you cast |T136106:0|t[|cRXP_FRIENDLY_Divine Intervention|r] on them. Doing so will award you with the |T237537:0|t[|cRXP_FRIENDLY_Guarded by the Light|r] rune
    .collect 213132,1 --Rune of the Guardian
step
    #label Tiara
    .goto Alterac Mountains,40.36,47.05,50,0
    .goto Alterac Mountains,37.72,52.66,50,0
    .goto Alterac Mountains,40.36,47.05
    .line Alterac Mountains,35.58,54.44,35.26,54.33,35.20,54.18,35.77,53.74,36.26,55.11,36.66,54.81,36.29,53.75,37.30,52.85,37.59,52.71,38.24,52.79,38.87,51.55,39.28,50.93,39.52,49.71,40.14,47.23,40.91,46.30,40.24,46.09,40.13,47.69,39.19,51.17,38.51,52.01,38.11,52.68,37.46,52.78,36.28,53.71,35.88,52.69,35.52,53.01,35.77,53.74,35.20,54.18,35.26,54.33,35.58,54.44
    >>Kill |cRXP_ENEMY_Grel'borg the Miser|r. Loot him for the |cRXP_LOOT_Perenolde Tiara|r
    >>|cRXP_ENEMY_Grel'borg the Miser|r |cRXP_WARN_patrols the Ruins of Alterac. He is a level 39 Elite and easy to kill so long as you don't agro additional mobs. His patrol route is marked on your map|r
    .complete 543,1 -- Perenolde Tiara 
    .isOnQuest 543
    .unitscan Grel'borg the Miser
step
    #label Ruins
    .goto Alterac Mountains,38.421,46.368
    >>Enter the Town Hall
    >>Open the |cRXP_PICK_Weathered Bookcase|r. Loot it for the |cRXP_LOOT_Worn Leather Book|r
    >>|cRXP_WARN_You may kill |cRXP_ENEMY_Muckrake|r or just CC him, loot and then run away|r
    .complete 540,2 -- Worn Leather Book
    .isOnQuest 540
step << skip
    .goto Alterac Mountains,38.40,57.80,60,0
    .goto Alterac Mountains,37.25,50.39,60,0
    .goto Alterac Mountains,38.40,57.80,60,0
    .goto Alterac Mountains,36.855,53.237
    >>Kill |cRXP_ENEMY_Crushridge Warmongers|r
	>>|cRXP_ENEMY_Crushridge Warmongers|r |cRXP_WARN_call for help at 25% HP|r
	.complete 504,1 -- Crushridge Warmonger slain (15)
	.mob Crushridge Warmonger
    .isOnQuest 504
step
    #completewith next
    .goto Alterac Mountains,39.66,18.24,100 >> Travel to Dandred's Fold. Be careful of fall damage if dropping down from the Ruins of Alterac
    .isOnQuest 504,543,540
    .train 415423,3 << Hunter sod
step
    #completewith ShadowMage
    .goto Alterac Mountains,62.39,43.64,0
    >>Kill the |cRXP_ENEMY_Syndicate|r. Loot them for their |cRXP_LOOT_Signet Rings|r
    >>|cRXP_ENEMY_Syndicate Assassins|r |cRXP_WARN_and |cRXP_ENEMY_Syndicate Spies|r will be in|r |T132320:0|t[Stealth]
    .complete 512,1 -- Alterac Signet Ring (7)
    .mob Syndicate Assassin
    .mob Syndicate Enforcer
    .mob Syndicate Saboteur
    .mob Syndicate Sentry
    .mob Syndicate Spy
    .mob Syndicate Wizard
    .train 415423,3 << Hunter sod
    .train 401977,3 << Priest sod
step
    .goto Alterac Mountains,39.22,14.31
    >>Kill |cRXP_ENEMY_Nagaz|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 537,2 -- Head of Nagaz
    .mob Nagaz
    .train 415423,3 << Hunter sod
    .train 401977,3 << Priest sod
step
    .goto Alterac Mountains,39.177,14.661
    >>Open the |cRXP_PICK_Worn Wooden Chest|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r]
    >>Don't start the quest from this item yet
    -->>|cRXP_WARN_Use the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r] to start the quest|r
    .collect 3706,1,551,1
    --.use 3706
    --.accept 551 >> Accept The Ensorcelled Parchment
    .train 415423,3 << Hunter sod
    .train 401977,3 << Priest sod
step
	#completewith next
    >>Kill |cRXP_ENEMY_Argus Shadow Mages|r
    .complete 537,1 -- Argus Shadow Mage slain (4)
    .mob Argus Shadow Mage
    .train 415423,3 << Hunter sod
    .train 401977,3 << Priest sod
step
    .goto Alterac Mountains,47.8,17.1,70,0
    .goto Alterac Mountains,53.6,20.6,70,0
    .goto Alterac Mountains,56.2,26.8,70,0
    .goto Alterac Mountains,58.1,29.9,70,0
    .goto Alterac Mountains,59.7,43.9
    >>Kill |cRXP_ENEMY_Baron Vardus|r. Loot him for his |cRXP_LOOT_Head|r
	>>|cRXP_ENEMY_Baron Vardus|r |cRXP_WARN_can be in the outside camps, as well as the basement Inn of Strahnbrad|r
	.complete 523,1 -- Head of Baron Vardus
    .isOnQuest 523
	.unitscan Baron Vardus
    .train 415423,3 << Hunter sod
    .train 401977,3 << Priest sod
step
    #label ShadowMage
    .goto Alterac Mountains,62.3,40.6,50,0
    .goto Alterac Mountains,63.6,43.7,50,0
    .goto Alterac Mountains,57.4,46.2,50,0
    .goto Alterac Mountains,62.3,40.6
    .goto Alterac Mountains,47.8,17.4,0
    .goto Alterac Mountains,53.3,20.7,0
    .goto Alterac Mountains,56.1,27.3,0
    .goto Alterac Mountains,58.7,30.5,0
    >>Kill |cRXP_ENEMY_Argus Shadow Mages|r
    >>|cRXP_WARN_You may find |cRXP_ENEMY_Argus Shadow Mages|r in Strahnbrad as well as The Uplands|r
    .complete 537,1 -- Argus Shadow Mage slain (4)
    .mob Argus Shadow Mage
    .train 415423,3 << Hunter sod
    .train 401977,3 << Priest sod
step
    .goto Alterac Mountains,62.3,40.6,50,0
    .goto Alterac Mountains,63.6,43.7,50,0
    .goto Alterac Mountains,57.4,46.2,50,0
    .goto Alterac Mountains,62.3,40.6
    .goto Alterac Mountains,47.8,17.4,0
    .goto Alterac Mountains,53.3,20.7,0
    .goto Alterac Mountains,56.1,27.3,0
    .goto Alterac Mountains,58.7,30.5,0
    >>Kill the |cRXP_ENEMY_Syndicate|r. Loot them for their |cRXP_LOOT_Signet Rings|r
    >>|cRXP_ENEMY_Syndicate Assassins|r |cRXP_WARN_and |cRXP_ENEMY_Syndicate Spies|r will be in|r |T132320:0|t[Stealth]
    .complete 512,1 -- Alterac Signet Ring (7)
    .mob Syndicate Assassin
    .mob Syndicate Enforcer
    .mob Syndicate Saboteur
    .mob Syndicate Sentry
    .mob Syndicate Spy
    .mob Syndicate Wizard
    .train 415423,3 << Hunter sod
    .train 401977,3 << Priest sod
step << Priest
    #season 2
    #completewith EmpoweredRenew
    .train 425309,1
    >>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for the |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r]
    .collect 213140,1
    .mob Crushridge Ogre
    .mob Crushridge Brute
step
    .goto Alterac Mountains,47.48,58.94,0
    .goto Alterac Mountains,51.73,40.23,70,0
    .goto Alterac Mountains,45.19,33.91,70,0
    .goto Alterac Mountains,51.46,53.84,70,0
    .goto Alterac Mountains,48.54,40.72
    >>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for their |cRXP_LOOT_Tomes|r and |cRXP_LOOT_Knucklebones|r
    .complete 540,1 -- Recovered Tome (5)
    .complete 500,1 -- Dirty Knucklebones (9)
    .isOnQuest 540
    .isOnQuest 500
    .mob Crushridge Ogre
    .mob Crushridge Brute
step
    #label EmpoweredRenew
    .goto Alterac Mountains,47.48,58.94,0
    .goto Alterac Mountains,51.73,40.23,70,0
    .goto Alterac Mountains,45.19,33.91,70,0
    .goto Alterac Mountains,51.46,53.84,70,0
    .goto Alterac Mountains,48.54,40.72
    >>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for their |cRXP_LOOT_Knucklebones|r
    .complete 500,1 -- Dirty Knucklebones (9)
    .isOnQuest 500
    .mob Crushridge Ogre
    .mob Crushridge Brute
step << Mage
    #season 2
    .train 401749,1
    .train 2120,3
    .goto Alterac Mountains,60.510,46.286,-1
    .goto Alterac Mountains,60.278,44.900,-1
    >>|cRXP_WARN_Cast|r |T135826:0|t[Flamestrike] |cRXP_WARN_on the two bellows attached to the blacksmith building in Strahnbrad. Once one of the bellows starts glowing red and fiery, cast|r |T135826:0|t[Flamestrike] |cRXP_WARN_again on the second bellow to ignite it as well. This will trigger the |cRXP_ENEMY_Ancient Fire Elemental|r to spawn|r
    >>Kill the |cRXP_ENEMY_Ancient Fire Elemental|r. Loot it for the |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r]
    .collect 213113,1
    .mob Ancient Fire Elemental
step << Mage
    #season 2
    .train 401749 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r] |cRXP_WARN_to train|r |T236218:0|t[Hot Streak]
    .use 213113
    .itemcount 213113
step << Priest
    #season 2
    .train 425309,1
    .goto Alterac Mountains,47.48,58.94,0
    .goto Alterac Mountains,51.73,40.23,70,0
    .goto Alterac Mountains,45.19,33.91,70,0
    .goto Alterac Mountains,51.46,53.84,70,0
    .goto Alterac Mountains,48.54,40.72
    >>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for the |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r]
    .collect 213140,1
    .mob Crushridge Ogre
    .mob Crushridge Brute
step << Priest
    #season 2
    .train 425309 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r] |cRXP_WARN_to train|r |T236254:0|t[Empowered Renew]
    .use 213140
step <<
    #completewith next
    +Grind mobs until your Hearthstone cooldown is <6min
    .train 415423,3 << Hunter sod
    .train 401977,3 << Priest sod
step <<
    .goto Alterac Mountains,59.52,62.68,65,0
    .goto Hillsbrad Foothills,71.43,21.04,35,0
    .goto Hillsbrad Foothills,84.23,31.99,45,0
    .goto The Hinterlands,6.23,61.87
    .zone The Hinterlands >> Travel to The Hinterlands
    .train 415423,3 << Hunter sod
    .train 401977,3 << Priest sod
step <<
    .goto The Hinterlands,11.071,46.153
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
    .fp Hinterlands >> Get The Hinterlands Flight Path
    .target Guthrum Thunderfist
    .train 415423,3 << Hunter sod
    .train 401977,3 << Priest sod
step << Hunter/Priest
    #season 2
    .goto 1416/0,-846.200,905.400,55 >>Head to the easternmost Sindicate camp
    .train 415423,1 << Hunter sod
    .train 401977,1 << Priest sod
step << Hunter/Priest
    #season 2
    #sticky
    #completewith SoDNagaz
    .goto Alterac Mountains,62.39,43.64,0
    >>Kill the |cRXP_ENEMY_Syndicate|r. Loot them for their |cRXP_LOOT_Signet Rings|r
    >>|cRXP_ENEMY_Syndicate Assassins|r |cRXP_WARN_and |cRXP_ENEMY_Syndicate Spies|r will be in|r |T132320:0|t[Stealth]
    .complete 512,1 -- Alterac Signet Ring (7)
    .mob Syndicate Assassin
    .mob Syndicate Enforcer
    .mob Syndicate Saboteur
    .mob Syndicate Sentry
    .mob Syndicate Spy
    .mob Syndicate Wizard
    .train 415423,1 << Hunter sod
    .train 401977,1 << Priest sod
    .isQuestComplete 512
step << Hunter/Priest
    #season 2
    #sticky
    #completewith SoDNagaz
    .goto Alterac Mountains,47.8,17.1,70,0
    .goto Alterac Mountains,53.6,20.6,70,0
    .goto Alterac Mountains,56.2,26.8,70,0
    .goto Alterac Mountains,58.1,29.9,70,0
    .goto Alterac Mountains,59.7,43.9
    >>Look for |cRXP_ENEMY_Baron Vardus|r as you quest. Kill him and loot for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_He can spawn in any of the syndicate camps marked on your map or in Strahnbrad inn basement. Use|r |T132172:0|t[|cRXP_FRIENDLY_Eagle Eye|r] |cRXP_WARN_to scout where he is|r
	.complete 523,1 -- Head of Baron Vardus
    .isOnQuest 523
	.unitscan Baron Vardus
    .train 415423,1 << Hunter sod
    .train 401977,1 << Priest sod
    .isQuestComplete 523
step << Hunter/Priest
    #season 2
    .goto 1416/0,-846.200,905.400,0
    .goto 1416/0,-755.800,978.70,0
    .goto 1416/0,-694.300,1093.700,0
    .goto 1416/0,-537.500,1156.900,0
    >>Kill |cRXP_ENEMY_Argus Shadow Mages|r. |cRXP_WARN_You should find the 4 you need for the quest if you head northwest towards Nagaz's hut and check for them in the camps marked on your map|r
    .complete 537,1 -- Argus Shadow Mage slain (4)
    .mob Argus Shadow Mage
    .train 415423,1 << Hunter sod
    .train 401977,1 << Priest sod
    .isQuestComplete 537
step << Hunter/Priest
    #season 2
    #label SoDNagaz
    .goto Alterac Mountains,39.22,14.31
    >>Kill |cRXP_ENEMY_Nagaz|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 537,2 -- Head of Nagaz
    .mob Nagaz
    .train 415423,1 << Hunter sod
    .train 401977,1 << Priest sod
    .isQuestComplete 537
step << Hunter/Priest
    #season 2
    .goto Alterac Mountains,39.177,14.661
    >>Open the |cRXP_PICK_Worn Wooden Chest|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r]
    >>|cRXP_WARN_Use the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r] to start the quest|r
    .collect 3706,1,551,1
    .use 3706
    .accept 551 >> Accept The Ensorcelled Parchment
    .isOnQuest 551
    .train 415423,1 << Hunter sod
    .train 401977,1 << Priest sod
step << Hunter/Priest
    #season 2
    .goto Alterac Mountains,62.39,43.64,0
    >>Finish off killing |cRXP_ENEMY_Syndicate|r for their |cRXP_LOOT_Signet Rings|r
    .complete 512,1 -- Alterac Signet Ring (7)
    .mob Syndicate Assassin
    .mob Syndicate Enforcer
    .mob Syndicate Saboteur
    .mob Syndicate Sentry
    .mob Syndicate Spy
    .mob Syndicate Wizard
    .train 415423,1 << Hunter sod
    .train 401977,1 << Priest sod
    .isQuestComplete 512
step << Hunter/Priest
    #season 2
    .goto 1420/0,14.700,1522.500,30 >> Head north along the shore toward Undercity
    .train 415423,1 << Hunter sod
    .train 401977,1 << Priest sod
step << Hunter/Priest
    #season 2
    #optional
    #completewith next
    +You can get around the Undercity in three different ways
    >>|cRXP_LOOT_Use the blizzard website unstuck feature to get teleported to a Tirisfal graveyard|r
    .link https://eu.battle.net/support/en/article/32275 >>Unstuck website link for EU servers
    .link https://us.battle.net/support/en/article/32275 >>Unstuck website link for US servers
    +|cRXP_LOOT_Do a jumping skip|r, |cRXP_WARN_you will need to limit your FPS to 30 to properly clip the wall|r
    .link https://youtu.be/dMO4G41j71s >>Jump skip reference video link
    +|cRXP_LOOT_Run around undercity, if you fall down just swim around|r |cRXP_WARN_(this is the simplest and the slowest solution)|r
    .link https://youtu.be/NDs_NQ509cY >>Running around reference video link
    .train 415423,1 << Hunter sod
    .train 401977,1 << Priest sod
step << Hunter/Priest
    #season 2
    .goto Tirisfal Glades,82.32,35.24
    .zone 796 >>Head to the Scarlet Monastery
    .train 415423,1 << Hunter sod
    .train 401977,1 << Priest sod
step << Hunter/Priest
    #season 2
    >>Enter |cRXP_PICK_the Graveyard|r dungeon. Clear up to and including |cRXP_ENEMY_Interrogator Vishas|r. Loot him for the |T133739:0|t[|cRXP_LOOT_Treatise on Aspect of the Viper|r] << Hunter
    >>Your pet should be able to easily tank the mobs and boss with the |T132270:0|t[|cRXP_FRIENDLY_Beast Mastery|r] rune << Hunter
    .collect 216770,1 << Hunter -- Treatise on Aspect of the Viper
    >>Enter |cRXP_PICK_the Graveyard|r dungeon. Clear up to and including |cRXP_ENEMY_Interrogator Vishas|r. Loot him for the |T237162:0|t[|cRXP_LOOT_Scroll of Shadowfiend|r] << Priest
    >>|cRXP_WARN_This may take more than one run since you can also receive a|r |T237162:0|t[|cRXP_LOOT_Scroll of Increased Fortitude|r]. |cRXP_WARN_Reset the dungeon and repeat killing the Interrogator untill you get the|r |T237162:0|t[|cRXP_LOOT_Scroll of Shadowfiend|r] << Priest
    >>Remember to use |T135894:0|t[|cRXP_FRIENDLY_Dispel Magic|r] on yourself to dispell his |T136207:0|t[|cRXP_FRIENDLY_Shadow Word Pain|r] << Priest
    .collect 216745,1 << Priest --Scroll of Shadowfiend
    .mob Interrogator Vishas
    .train 415423,1 << Hunter sod
    .train 401977,1 << Priest sod
step << Hunter/Priest
    #season 2
    .train 415423 >>|cRXP_WARN_Use the|r |T133739:0|t|cRXP_LOOT_[Treatise on Aspect of the Viper]|r |cRXP_WARN_to learn|r |T132160:0|t[|cRXP_FRIENDLY_Aspect of the Viper|r] << Hunter
    .train 401977 >>|cRXP_WARN_Use the|r |T237162:0|t|cRXP_LOOT_[Scroll of Shadowfiend]|r |cRXP_WARN_to learn|r |T136199:0|t[Shadowfiend] << Priest
    .train 415423,1 << Hunter
    .train 401977,1 << Priest
step << Paladin
    #season 2
    .train 429139,1 -- Skips if you already have the rune
    .train 5502,3 -- Skips if you don't have Sense Undead
    .goto The Hinterlands,33.0,44.0
    >>|cRXP_WARN_This step can only be completed if the SERVER TIME is between 9pm and 3am. The mob won't be there otherwise|r
    >>Cast |T135974:0|t[|cRXP_FRIENDLY_Sense Undead|r] and go to the Quel'Danil Lodge. Look for a |cRXP_PICK_Vengeful Spirit|r there, a level 45 undead. Kill it and loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r]
    *The |cRXP_ENEMY_Vengeful Spirit|r walks around the lake
    .collect 220165,1
    .mob Vengeful Spirit
step << Paladin
    #season 2
    .itemcount 220165,1
    .use 220165
    .train 429249 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r] |cRXP_WARN_to train|r |T236260:0|t[|cRXP_FRIENDLY_Wrath|r]
step
    .hs >> Hearth to Southshore
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .zoneskip The Hinterlands,1 << !Hunter sod
step
    .goto Hillsbrad Foothills,49.473,58.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 500 >> Turn in Crushridge Bounty
    .target Marshal Redpath
    .isQuestComplete 500
step << skip
    .goto Hillsbrad Foothills,49.473,58.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 504 >> Turn in Crushridge Warmongers
    .target Marshal Redpath
    .isQuestComplete 504
--XX opens from turning in Crushridge Bounty
step
    .goto Hillsbrad Foothills,48.145,59.121
    .target Magistrate Henry Maleb
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 512 >> Turn in Noble Deaths
    .turnin 537 >> Turn in Dark Council
step
    .abandon 504 >> Abandon Crushridge Warmongers
step
    .goto Hillsbrad Foothills,48.145,59.121
    .target Magistrate Henry Maleb
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 523 >> Turn in Baron's Demise
    .isOnQuest 523
step
    .goto Hillsbrad Foothills,50.570,57.093
    >>|cRXP_WARN_Use the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r] to start the quest|r
    .collect 3706,1,551,1
    .use 3706
    .accept 551 >> Accept The Ensorcelled Parchment
    .turnin 551 >> Turn in The Ensorcelled Parchment
    .target Loremaster Dibbs
step
    .isQuestComplete 540
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 540 >> Turn in Preserving Knowledge
    .target Loremaster Dibbs
step -- most likekly done already earlier, and should be on 658 now
    .goto Hillsbrad Foothills,50.344,59.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
    .accept 659 >> Accept Hints of a New Plague?
    .target Phin Odelic
step
    #completewith next
    +Run from Southshore and check Tarren Mill and then go into Arathi looking for the |cRXP_ENEMY_Forsaken Courier|r
step
    .isOnQuest 658
    .line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
    .line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
    >>Kill the |cRXP_ENEMY_Forsaken Courier|r. Loot her for her |cRXP_LOOT_Sealed Folder|r 
    >>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
    >>If you haven't found her by the time you reached Go'Shek, grind the Orcs there for 5 minutes, then skip the step if she hasn't spawned in Jorell's house by then
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find the|r |cRXP_ENEMY_Forsaken Courier|r << Hunter
    .complete 658,1 --1/1 Sealed Folder
    .unitscan Forsaken Courier
step
    #optional
    #completewith NewPlague
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Arathi>> Fly to Arathi Highlands
    .target Darla Harris
    .zoneskip Hillsbrad Foothills,1
step
#xprate <1.99
    #optional
    .goto Arathi Highlands,60.185,53.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .turnin 659 >> Turn in Hints of a New Plague?
    .accept 658 >> Accept Hints of a New Plague?
    .target Quae
step
#xprate >1.99
    #optional
    .goto Arathi Highlands,60.185,53.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .turnin 659 >> Turn in Hints of a New Plague?
    .target Quae
step
#xprate <1.99
    .isOnQuest 658
    .line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
    .line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
    >>Kill the |cRXP_ENEMY_Forsaken Courier|r. Loot her for her |cRXP_LOOT_Sealed Folder|r 
    >>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find the|r |cRXP_ENEMY_Forsaken Courier|r << Hunter
    .complete 658,1 --1/1 Sealed Folder
    .unitscan Forsaken Courier
step
#xprate <1.99
    .isQuestComplete 658
    .goto Arathi Highlands,60.185,53.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .turnin 658 >> Turn in Hints of a New Plague?
    .target Quae
step
#xprate <1.99
    .isQuestTurnedIn 658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r and |cRXP_FRIENDLY_Kinelory|r
    >>|cRXP_WARN_Someone may be doing the |cRXP_FRIENDLY_Kinelory|r escort if she isn't there. Wait until she returns|r
    .accept 657 >> Accept Hints of a New Plague?
    .goto Arathi Highlands,60.185,53.848
    .turnin 657 >> Turn in Hints of a New Plague?
    .accept 660,1 >> Accept Hints of a New Plague?
    .goto Arathi Highlands,60.238,53.920
    .target Quae
    .target Kinelory    
step
#xprate <1.99
	.isQuestTurnedIn 658
    >>Escort |cRXP_FRIENDLY_Kinelory|r through Go'Shek Farm
    .complete 660,1
    .target Kinelory
step
#xprate <1.99
    #label NewPlague
	.isQuestTurnedIn 658
    .goto Arathi Highlands,60.185,53.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .turnin 660 >> Turn in Hints of a New Plague?
    .accept 661 >> Accept Hints of a New Plague?
    .target Quae
step
    .goto Arathi Highlands,46.652,47.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .accept 693 >> Accept Wand over Fist
    .target Skuerto
    .isQuestTurnedIn 691
step
    #completewith next
    .goto Arathi Highlands,54.21,77.80,30 >> Enter the Bolderfist Hall Cave
step
    .goto Arathi Highlands,54.75,81.87
    >>Kill |cRXP_ENEMY_Kor'gresh Coldrage|r. Loot him for |cRXP_LOOT_Trelane's Wand|r
    >>|cRXP_WARN_He will cast|r |T136230:0|t[Trelane's Freezing Touch] |cRXP_WARN_which has a 3 second cast time that silences you for 12 seconds and slows your attack speed by 25%|r
    .complete 693,1 -- Trelane's Wand of Invocation (1)
    .mob Kor'gresh Coldrage
    .isQuestTurnedIn 691
step
	#completewith next
    .goto Arathi Highlands,54.428,80.800 
	+|cRXP_WARN_Perform a Logout skip on the banner next to |cRXP_ENEMY_Kor'gresh Coldrage|r to teleport closer to Refuge Point. If you are unable to do this just run out normally|r
	.link https://youtu.be/SWBtPqm5M0Q?t=61 >> |cRXP_WARN_Click here for video reference|r
    .subzoneskip 316,1
step
    .goto Arathi Highlands,46.652,47.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 693 >> Turn in Wand over Fist
    .accept 694 >> Accept Trelane's Defenses
    .target Skuerto
    .isQuestTurnedIn 691
step << Hunter/Druid/Rogue
    .solo
    .goto Arathi Highlands,46.042,47.764
    >>Click the |cRXP_PICK_Wanted Board|r
    .accept 684 >> Accept Wanted! Marez Cowl
step
    .group
    .goto Arathi Highlands,46.042,47.764
    >>Click the |cRXP_PICK_Wanted Board|r
    .accept 684 >> Accept Wanted! Marez Cowl
    .accept 685 >> Accept Wanted! Otto and Falconcrest
step << Warrior
    #xprate <1.99
    #completewith next
    >>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for their |cRXP_LOOT_Burning Charms|r
    .collect 4479,8,1712,1 --Collect Burning Charm (x8)
    .mob Burning Exile
    .isOnQuest 1712
step << Mage
    #season 2
    #completewith next
    .train 401749,1
    >>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r]
    >>|cRXP_WARN_Note: This has been reported to have a relatively low drop rate. You may want to consider getting it from Alterac Mountains instead|r
    .collect 213113,1
    .mob Burning Exile
step
    #label WestBinding
    .goto Arathi Highlands,25.468,30.110
    >>Open the |cRXP_PICK_Stone of West Binding|r. Loot it for the |cRXP_LOOT_Burning Key|r
    .complete 651,1 -- Burning Key
step << Mage
    #season 2
    .train 401749,1
    .goto Arathi Highlands,67.46,28.79,40,0
    .goto Arathi Highlands,65.47,28.77,40,0
    .goto Arathi Highlands,65.87,31.24,40,0
    .goto Arathi Highlands,67.47,30.65,40,0
    .goto Arathi Highlands,66.82,29.77
    >>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r]
    >>|cRXP_WARN_Note: This has been reported to have a relatively low drop rate. You may want to consider getting it from Alterac Mountains instead|r
    .collect 213113,1
    .mob Burning Exile
step << Mage
    #season 2
    .train 401749 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r] |cRXP_WARN_to train|r |T236218:0|t[Hot Streak]
    .use 213113
    .train 401749,1
    .itemcount 213113
step << Warrior
    #xprate <1.99
    .goto Arathi Highlands,67.46,28.79,40,0
    .goto Arathi Highlands,65.47,28.77,40,0
    .goto Arathi Highlands,65.87,31.24,40,0
    .goto Arathi Highlands,67.47,30.65,40,0
    .goto Arathi Highlands,66.82,29.77
    >>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for their |cRXP_LOOT_Burning Charms|r
    .collect 4479,8,1712,1 --Collect Burning Charm (x8)
    .mob Burning Exile
    .isOnQuest 1712
step << Warrior
    #xprate <1.99
    #optional
    #completewith next
    .goto Alterac Mountains,79.318,66.811 >> Travel to Chillwind Point in Alterac Mountains
step << Warrior
    #xprate <1.99
    .goto Alterac Mountains,79.318,66.811
    >>Click |cRXP_PICK_Bath'rah's Cauldron|r
    .complete 1712,3 --Collect Essence of the Exile (x1)
    .isOnQuest 1712
step << Warrior
    #xprate <1.99
    #completewith TheSummoning
    +Before Accepting The Summoning watch the video below on how to solo |cRXP_ENEMY_Cyclonian|r
    .link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
    .isOnQuest 1712
step << Warrior
    #xprate <1.99
    .goto Alterac Mountains,80.497,66.919
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 1712 >> Turn in Cyclonian
    .target Bath'rah the Windwatcher
    .isQuestComplete 1712
step << Warrior
    #xprate <1.99
    #label TheSummoning
    .goto Alterac Mountains,80.497,66.919
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .accept 1713 >> Accept The Summoning
    .timer 40,The Summoning RP
    >>|cRXP_WARN_Accepting this quest will summon |cRXP_ENEMY_Cyclonian|r. He hits fairly hard, but can be solo'd. Be sure to check the video for pointers on how to do so|r
    .link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
    .target Bath'rah the Windwatcher
    .isQuestTurnedIn 1712
step << Warrior
    #xprate <1.99
    .goto Alterac Mountains,80.65,62.1
    >>Follow |cRXP_FRIENDLY_Bath'rah the Windwatcher|r to where he will summon |cRXP_ENEMY_Cyclonian|r
    >>Kill |cRXP_ENEMY_Cyclonian|r. Loot him for his |cRXP_LOOT_Whirlwind Heart|r
    >>|cRXP_ENEMY_Cyclonian|r hits fairly hard, but can be solo'd. Be sure to check the video for pointers on how to do so|r
    .complete 1713,1 --Collect Whirlwind Heart (x1)
    .link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
    .isOnQuest 1713
step << Warrior
    #xprate <1.99
    .goto Alterac Mountains,80.497,66.919
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 1713 >> Turn in The Summoning
    .target Bath'rah the Windwatcher
    .isQuestComplete 1713
step << Warrior
    #xprate <1.99
    .goto Alterac Mountains,80.497,66.919
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r  
    >>|cRXP_WARN_The |T132403:0|t[|cFF0070FFWhirlwind Axe|r] is the best reward out of them all. However, if you do wish to choose a different weapon, it's only a small loss|r
    .turnin 1792 >> Turn in Whirlwind Weapon
    .target Bath'rah the Windwatcher
    .isQuestTurnedIn 1713
--XX Quest needs no accept step
step << Warrior
    #xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto Western Plaguelands,42.924,85.061
    .fly Arathi >> Fly to Arathi Highlands
    .target Bibilfaz Featherwhistle
    .zoneskip Arathi Highlands
    .isQuestTurnedIn 1713
step
    .goto Arathi Highlands,36.229,57.375
    >>Click the |cRXP_PICK_Stone of Inner Binding|r
    .turnin 651 >> Turn in Stones of Binding
    .accept 652 >> Accept Breaking the Keystone
step
    .line Arathi Highlands,51.47,62.86,52.40,61.71,52.88,60.55,53.55,59.12,53.50,57.45,56.00,53.72,57.19,53.47,57.83,52.44,58.15,50.90,58.95,49.98,59.25,48.79,63.29,47.45,64.13,46.33,64.67,45.12,65.36,44.70,66.45,41.91,66.46,38.76,67.12,37.75,66.76,36.28,67.13,34.82,66.72,32.40,65.81,31.48,65.32,30.15,65.20,29.17,65.23,28.38,64.45,27.54,64.92,28.84,65.56,29.31,65.94,29.87,65.72,30.38,65.85,33.96,65.85,39.15,65.39,39.96,64.65,40.04,63.83,40.93,64.40,42.42,63.55,43.66,62.72,42.95,61.41,42.66,60.33,43.59,58.51,44.13,57.48,45.04,56.39,46.10,55.30,46.04,54.34,46.32,53.92,47.60,53.39,48.30,53.22,49.35,52.48,49.62,52.20,50.10,51.37,49.86,50.94,50.55,50.15,54.42,49.47,55.75,49.21,56.40,48.59,57.35,47.53,56.82,45.94,56.89,44.73,57.27,44.18,57.62,43.39,57.58,41.99,54.35,41.37,52.86,41.00,51.93,40.26,50.75,39.01,50.91,37.71,49.91,37.26,49.60,36.31,49.65,34.70,49.04,32.84,48.14,31.85,47.98,30.96,45.92,30.53,45.11,29.31,45.06,28.95,43.63,28.32,42.50,27.88,41.11,27.82,39.36,27.14,38.30,27.24,35.22,27.02,33.80,26.63,32.82,26.71,31.35,25.98,30.58,26.50,30.73,26.40,32.32,24.72,34.39,24.09,34.93,23.68,35.34,23.51,35.57,22.92,36.46,22.69,38.23,21.29,39.69,21.85,41.02,21.32,42.13,21.28,43.16,21.29,44.12,22.50,44.63,22.80,45.81,22.95,46.40,24.03,46.68,25.02,47.22,25.65,47.63,26.78,48.39,28.37,49.05,28.44,49.09,29.21,50.19,29.66,51.84,30.25,52.82,30.47,53.30,30.53,54.51,31.28,55.28,39.30,55.96,40.00,57.11,40.35,56.72,40.64,56.41,41.45,57.19,41.84,57.99,42.80,58.55,43.39,58.58,44.48,58.75,45.09,58.86,46.58,59.63,47.74,60.30,48.88,60.56,50.05,62.41,50.33,62.96,51.41,62.92
    >>Kill |cRXP_ENEMY_Fozruk|r. Loot him for the |cRXP_LOOT_Rod of Order|r
    >>|cRXP_WARN_Focus on killing and interrupting the casts of |cRXP_ENEMY_Sleeby|r, |cRXP_ENEMY_Znort|r and |cRXP_ENEMY_Feeboz|r before killing|r |cRXP_ENEMY_Fozruk|r
    >>|cRXP_ENEMY_Fozruk|r |cRXP_WARN_can be CC'd|r
    >>|cRXP_WARN_Their patrol path is marked on your map|r
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find|r |cRXP_ENEMY_Fozruk|r << Hunter
    .complete 652,1
    .link https://www.twitch.tv/videos/778346703 >> |cRXP_WARN_Click here for video reference|r << Hunter
    .link https://www.twitch.tv/videos/669107037?t=05h51m54s >> |cRXP_WARN_Click here for video reference|r << Warlock
    .unitscan Fozruk
    .mob Sleeby
    .mob Znort
    .mob Feeboz
step
    .goto Arathi Highlands,36.07,58.09
    >>Click on the |cRXP_PICK_Keystone|r
    >>|cRXP_WARN_If you are still in a group, hand in this quest while with your party! |cRXP_ENEMY_Thenan|r, a level 42 Elite will spawn. You can either kill him or run away and reset him if you're solo|r
    .turnin 652 >> Turn in Breaking the Keystone
    .isQuestComplete 652
step
    .dungeon !SM
    .goto Arathi Highlands,36.07,58.09
    >>Click on the |cRXP_PICK_Keystone|r
    .accept 653 >> Accept Myzrael's Allies
    .isQuestTurnedIn 652
step << Warlock
    #season 2
    .train 426443,1
    #completewith SyndicateConjuror
    +|cRXP_WARN_It is recommended you find additional party members for acquiring the|r |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r] |cRXP_WARN_as it requires killing elites in Stromgarde Keep|r
step << Warlock
    #season 2
    .train 426443,1
    #completewith next
    .subzone 324 >> Travel to Stromgarde Keep 
step << Warlock
    #season 2
    #label SyndicateConjuror
    .train 426443,1
    #loop
    .goto Arathi Highlands,26.04,62.80,40,0
    .goto Arathi Highlands,29.47,64.14,40,0
    .goto Arathi Highlands,29.06,60.96,40,0
    >>Kill |cRXP_ENEMY_Syndicate Conjurors|r. Loot them for their |T348282:0|t[|cRXP_LOOT_Conjuror's Pendants|r]
    >>Kill a |cRXP_ENEMY_Voidwalker Minion|r while you are channelling |T136163:0|t[Drain Soul] on it to receive a |T132885:0|t[|cRXP_LOOT_Soul of the Void|r]
    .collect 213573,10
    .collect 213572,1
    .mob Syndicate Conjuror
    .mob Voidwalker Minion
step << Warlock
    #season 2
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.292,62.283,10 >> |cRXP_WARN_Enter the large house on the lower level of Stromgade Keep, and head up to the 2nd floor|r
step << Warlock
    #season 2
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    .cast 434994 >> |cRXP_WARN_Use the|r |T348282:0|t[|cRXP_LOOT_Conjuror's Pendants|r] |cRXP_WARN_up stairs next to the floating|r |cRXP_PICK_Void Prism|r |cRXP_WARN_to summon a level 36 elite |cRXP_ENEMY_Void Seeker|r
    .use 213573
step << Warlock
    #season 2
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    >>Kill the |cRXP_ENEMY_Void Seeker|r. Loot it for the |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r]
    .collect 213098,1
    .mob Void Seeker
step << Warlock
    #season 2
    .train 426443 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r] |cRXP_WARN_to train|r |T136133:0|t[Invocation]
    .use 213098
step << Hunter/Druid/Rogue
    #completewith next
    .solo
    .goto Arathi Highlands,29.599,63.682,0 -- in between location
    .goto Arathi Highlands,29.477,64.149,20,0 -- High ground location
    .goto Arathi Highlands,29.624,62.975 -- Low ground location
    >>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Marez Cowl|r |cRXP_WARN_has 2 different spawn locations. One is on the high ground location, and the other is below behind the house. They are marked on your map|r
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location she is in|r << Hunter
    .complete 684,1 -- Marez's Head
    .unitscan Marez Cowl
    .isOnQuest 684
step
    #completewith next
    .group 2
    .goto Arathi Highlands,29.599,63.682,0 -- in between location
    >>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Marez Cowl|r |cRXP_WARN_has 2 different spawn locations. One is on the high ground location, and the other is below behind the house. They are marked on your map|r
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location she is in|r << Hunter
    .complete 684,1 -- Marez's Head
    .unitscan Marez Cowl
    .isOnQuest 684
step
    .group 4
    .goto Arathi Highlands,26.026,65.656
    >>Kill |cRXP_ENEMY_Otto|r and |cRXP_ENEMY_Lord Falconcrest|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 685,1 -- Otto's Head
    .complete 685,2 -- Falconcrest's Head
    .mob Otto
    .mob Lord Falconcrest
    .isOnQuest 685
step << Hunter/Druid/Rogue
    .solo
    .goto Arathi Highlands,29.599,63.682,0 -- in between location
    .goto Arathi Highlands,29.477,64.149,20,0 -- High ground location
    .goto Arathi Highlands,29.624,62.975 -- Low ground location
    >>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Marez Cowl|r |cRXP_WARN_has 2 different spawn locations. One is on the high ground location, and the other is below behind the house. They are marked on your map|r
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location she is in|r << Hunter
    .complete 684,1 -- Marez's Head
    .unitscan Marez Cowl
    .isOnQuest 684
step
    #label MarezCowl
    .group 2
    .goto Arathi Highlands,29.599,63.682,0 -- in between location
    .goto Arathi Highlands,29.477,64.149,20,0 -- High ground location
    .goto Arathi Highlands,29.624,62.975 -- Low ground location
    >>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Marez Cowl|r |cRXP_WARN_has 2 different spawn locations. One is on the high ground location, and the other is below behind the house. They are marked on your map|r
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location she is in|r << Hunter
    .complete 684,1 -- Marez's Head
    .unitscan Marez Cowl
    .isOnQuest 684
step << Paladin
    #season 2
    .train 426173,1
    .itemcount 213447,1
    #label ArathiEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Atticus|r inside Stormgarde Keep to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Piety|r]
    .goto Arathi Highlands,26.06,55.75,20,0
    .goto Arathi Highlands,25.71,59.92,20,0
    .goto Arathi Highlands,23.69,60.52,20,0
    .goto Arathi Highlands,23.75,58.89,15,0
    .goto Arathi Highlands,27.81,58.99,15,0
    .goto Arathi Highlands,28.74,58.97,15,0
    .goto Arathi Highlands,28.71,57.37,15,0
    .goto Arathi Highlands,27.01,56.95
    .skipgossip 217387,1
    .collect 213128,1
    .target Brother Atticus
step << Paladin
    #season 2
    .itemcount 213128,1
    .use 213128
    .train 426175 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Piety|r] |cRXP_WARN_to train|r |T236251:0|t[Enlightened Judgements]
step
    .goto Arathi Highlands,24.14,61.85,30,0
    .goto Arathi Highlands,24.25,64.97,30,0
    .goto Arathi Highlands,21.22,66.52,40,0
    .goto Arathi Highlands,20.21,67.17
    >>Kill |cRXP_ENEMY_Boulderfist Shamans|r. Loot them for the |cRXP_LOOT_Azure Agate|r
    .complete 694,1 --Collect Azure Agate (x1)
    .mob Boulderfist Shaman
    .isOnQuest 694
step
    #completewith next
    .goto Arathi Highlands,24.57,64.60,10,0
    .goto Arathi Highlands,21.25,70.33,30 >> Escape Stromgarde through the hole in the wall in the south of the Ogre area. You can do this by jumping up on either side of the metal railings near the bent lamp post and running over to it
    .goto Arathi Highlands,21.98,79.75,40 >> Head to Faldir's Cove, follow the path between the mountains and Stromgarde's southeastern wall
    .link https://youtu.be/5n9od9fcoz0?t=315 >> |cRXP_WARN_Click here for video reference|r
step
    .goto Arathi Highlands,31.78,82.68
    .target Lolo the Lookout
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lolo the Lookout|r
    .accept 663 >> Accept Land Ho!
step
    .goto Arathi Highlands,32.283,81.364
    .target Shakes O'Breen
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 663 >> Turn in Land Ho!
step
    .goto Arathi Highlands,32.79,81.48
    .target First Mate Nilzlix
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Nilzlix|r
    .accept 662 >> Accept Deep Sea Salvage
step
    .goto Arathi Highlands,34.002,80.792
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r
    .accept 664 >> Accept Drowned Sorrows
    .target Captain Steelgut
step
    .goto Arathi Highlands,33.869,80.549
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Phizzlethorpe|r
    >>|cRXP_WARN_This will start an escort. If |cRXP_FRIENDLY_Professor Phizzlethorpe|r is not there, someone may already be doing it. Wait for him to return|r
    .accept 665 >> Accept Sunken Treasure
    .target Professor Phizzlethorpe
step
    .goto Arathi Highlands,35.74,79.59,30,0
    .goto Arathi Highlands,33.856,80.444
    >>Escort |cRXP_FRIENDLY_Professor Phizzlethorpe|r into the small Cave
    >>Kill the |cRXP_ENEMY_Vengeful Surges|r that attack once inside
    >>Follow |cRXP_FRIENDLY_Professor Phizzlethorpe|r back to the camp afterwards
    .complete 665,1
    .target Professor Phizzlethorpe
    .mob Vengeful Surge
step
    .goto Arathi Highlands,33.856,80.444
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
    .turnin 665 >> Turn in Sunken Treasure
    .accept 666 >> Accept Sunken Treasure
    .target Doctor Draxlegauge
step << !Warlock !Druid
	#completewith SLog
	.cast 7178 >> |cRXP_WARN_Use your|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_if you have one|r
    >>|cRXP_WARN_PAY CLOSE ATTENTION TO YOUR BREATH BAR IF YOU DO NOT HAVE ONE!|r
    .use 5996 -- Elixir of Water Breathing
step
	#completewith SLog
    >>Loot the |cRXP_LOOT_Elven Gems|r on the sea floor
    .use 4491 >> |cRXP_WARN_Equip your|r |T133149:0|t[Goggles of Gem Hunting] |cRXP_WARN_so the |cRXP_LOOT_Elven Gems|r show up on your minimap|r
    >>|cRXP_WARN_Ensure you have buffed yourself with|r |T136148:0|t[Unending Breath] << Warlock
    >>|cRXP_WARN_Cast|r |T132112:0|t[Aquatic Form] |cRXP_WARN_once your Breath Bar gets low|r << Druid
    .complete 666,1 --Collect Elven Gem (x10)
    .use 5996 -- Elixir of Water Breathing
step
	#completewith SLog
    >>Kill |cRXP_ENEMY_Daggerspine Raiders|r and |cRXP_ENEMY_Daggerspine Sorceresses|r
    >>|cRXP_WARN_Be aware the |cRXP_ENEMY_Daggerspine Raiders|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
    .complete 664,1 --Kill Daggerspine Raider (x10)
    .complete 664,2 --Kill Daggerspine Sorceress (x3)
    .use 5996 -- Elixir of Water Breathing
    .mob Daggerspine Raider
    .mob Daggerspine Sorceress
step
    .goto Arathi Highlands,23.394,85.086
    >>Loot |cRXP_LOOT_Maiden's Folly Log|r on the 2nd floor of the ship. It is inside of the Cauldron
    .complete 662,2 --Collect Maiden's Folly Log (x1)
    .use 5996 -- Elixir of Water Breathing
step
    .goto Arathi Highlands,23.045,84.510
	>>Loot |cRXP_LOOT_Maiden's Folly Charts|r on the 2nd floor of the ship. It is on the Pillar
    .complete 662,1 --Collect Maiden's Folly Charts (x1)
    .use 5996 -- Elixir of Water Breathing
step
    #completewith next
    .goto Arathi Highlands,20.5,85.6,50 >> Swim to the other sunken ship
step
    .goto Arathi Highlands,20.458,85.612
    >>Loot the |cRXP_LOOT_Spirit of Silverpine Charts|r on the 2nd floor of the ship. It is on top of the Crate next to the Cannon
    .complete 662,3 --Collect Spirit of Silverpine Charts (x1)
    .use 5996 -- Elixir of Water Breathing
step
	#label SLog
    .goto Arathi Highlands,20.649,85.103
    >>Loot the |cRXP_LOOT_Spirit of Silverpine Charts|r on the bottom of the ship. It is on the sea floor
    .complete 662,4 --Collect Spirit of Silverpine Log (x1)
    .use 5996 -- Elixir of Water Breathing
step
	#completewith next
    >>Loot the |cRXP_LOOT_Elven Gems|r on the sea floor
    .use 4491 >> |cRXP_WARN_Equip your|r |T133149:0|t[Goggles of Gem Hunting] |cRXP_WARN_so the |cRXP_LOOT_Elven Gems|r show up on your minimap|r
    >>|cRXP_WARN_Ensure you have buffed yourself with|r |T136148:0|t[Unending Breath] << Warlock
    >>|cRXP_WARN_Cast|r |T132112:0|t[Aquatic Form] |cRXP_WARN_once your Breath Bar gets low|r << Druid
    .complete 666,1 --Collect Elven Gem (x10)
    .use 5996 -- Elixir of Water Breathing
step
    .goto Arathi Highlands,19.3,84.1,90,0
    .goto Arathi Highlands,17.7,89.5,90,0
    .goto Arathi Highlands,25.5,90.8,90,0
    .goto Arathi Highlands,24.1,85.7,90,0
    .goto Arathi Highlands,23.2,89.7,90,0
    .goto Arathi Highlands,19.3,84.1
    >>Kill |cRXP_ENEMY_Daggerspine Raiders|r and |cRXP_ENEMY_Daggerspine Sorceresses|r
    >>|cRXP_WARN_Be aware the |cRXP_ENEMY_Daggerspine Raiders|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
    .complete 664,1 --Kill Daggerspine Raider (x10)
    .complete 664,2 --Kill Daggerspine Sorceress (x3)
    .use 5996 -- Elixir of Water Breathing
    .mob Daggerspine Raider
    .mob Daggerspine Sorceress
step
    .goto Arathi Highlands,17.7,88.8,80,0
    .goto Arathi Highlands,23.0,92.2,80,0
    .goto Arathi Highlands,24.3,84.8,80,0
    .goto Arathi Highlands,25.2,90.6,80,0
    .goto Arathi Highlands,19.6,84.7,80,0
    .goto Arathi Highlands,22.7,88.6
    >>Loot the |cRXP_LOOT_Elven Gems|r on the sea floor
    .use 4491 >> |cRXP_WARN_Equip your|r |T133149:0|t[Goggles of Gem Hunting] |cRXP_WARN_so the |cRXP_LOOT_Elven Gems|r show up on your minimap|r
    >>|cRXP_WARN_Ensure you have buffed yourself with|r |T136148:0|t[Unending Breath] << Warlock
    >>|cRXP_WARN_Cast|r |T132112:0|t[Aquatic Form] |cRXP_WARN_once your Breath Bar gets low|r << Druid
    .complete 666,1 --Collect Elven Gem (x10)
    .use 5996 -- Elixir of Water Breathing
step
    #completewith NormalHelm
    .itemStat 1,QUALITY,1
    +Equip your normal |T133127:0|t[Helmet]
step
	.goto Arathi Highlands,32.79,81.48
    .target First Mate Nilzlix
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Nilzlix|r
    .turnin 662 >> Turn in Deep Sea Salvage
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r and |cRXP_FRIENDLY_Doctor Draxlegauge|r
    .turnin 664 >> Turn in Drowned Sorrows
    .goto Arathi Highlands,34.002,80.792
    .turnin 666 >> Turn in Sunken Treasure
    .accept 668 >> Accept Sunken Treasure
    .goto Arathi Highlands,33.856,80.444
    .target Captain Steelgut
    .target Doctor Draxlegauge
step
    #label NormalHelm
    .goto Arathi Highlands,32.283,81.364
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 668 >> Turn in Sunken Treasure
    .accept 669 >> Accept Sunken Treasure
    .target Shakes O'Breen
step
	#completewith next
    .goto Arathi Highlands,35.79,79.52,10 >> Logout on top of the rock in the cave where you escorted |cRXP_FRIENDLY_Professor Phizzlethorpe|r, then log back in
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q&t=114s >> |cRXP_WARN_Click here for video reference|r
step
    .dungeon SM
    .goto Arathi Highlands,36.07,58.09
    >>Click on the |cRXP_PICK_Keystone|r
    .accept 653 >> Accept Myzrael's Allies
    .isQuestTurnedIn 652
step << Hunter/Druid/Rogue
    .goto Arathi Highlands,45.832,47.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 684 >> Turn in Wanted! Marez Cowl
    .target Captain Nials
    .isQuestComplete 684
step
    .goto Arathi Highlands,45.832,47.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 684 >> Turn in Wanted! Marez Cowl
    .turnin 685 >> Turn in Wanted! Otto and Falconcrest
    .target Captain Nials
    .isQuestComplete 684
    .isQuestComplete 685
step
    .goto Arathi Highlands,45.832,47.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 684 >> Turn in Wanted! Marez Cowl
    .target Captain Nials
    .isQuestComplete 684
step
    .goto Arathi Highlands,45.832,47.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 685 >> Turn in Wanted! Otto and Falconcrest
    .target Captain Nials
    .isQuestComplete 685
step
    .goto Arathi Highlands,46.197,47.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .turnin 694 >> Turn in Trelane's Defenses
    .target Apprentice Kryten
    .isQuestComplete 694
step
    .goto Arathi Highlands,46.197,47.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .accept 695 >> Accept An Apprentice's Enchantment
    .target Apprentice Kryten
    .isQuestTurnedIn 694
step
    .goto Arathi Highlands,46.652,47.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 695 >> Turn in An Apprentice's Enchantment   
    .target Skuerto
    .isQuestTurnedIn 694
step
    #optional
    .destroy 4529 >> Delete the |T134094:0|t[Enchanted Agate] from your bags. It's no longer necessary
step <<  Warlock/Paladin
    .xp 40 >> Grind to level 40
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
    .xp <40,1
step << Druid
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
    .xp <40,1
step << !Hunter
    .hs >> Hearth to Southshore
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << Hunter
    #completewith endsshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
    .goto Arathi Highlands,45.73,46.09
    .fly Southshore >> Fly to Southshore
    .target Cedrik Prose
    .zoneskip Hillsbrad Foothills
step
	.isOnQuest 661
    .goto Hillsbrad Foothills,50.34,59.04
    .target Phin Odelic
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
    .turnin 661 >> Turn in Hints of a New Plague?
step
    .isQuestTurnedIn 551
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .accept 554 >> Accept Stormpike's Deciphering
    .target Loremaster Dibbs
step
#label endsshore
    .isQuestTurnedIn 540
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .accept 542 >> Accept Return to Milton
    .target Loremaster Dibbs
step
    .goto Hillsbrad Foothills,49.338,52.272
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .fly Wetlands >> Fly to Wetlands
    .target Darla Harris
step
.dungeon RFD
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .home >> Set your Hearthstone to Menethil Harbor
    .target Innkeeper Helbrek
step
.dungeon SM
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge>> Fly to Ironforge
    .target Shellei Brondir
    .isQuestComplete 1050
step
.dungeon RFD
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge>> Fly to Ironforge
    .target Shellei Brondir
step << Warlock/Paladin
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge>> Fly to Ironforge
    .target Shellei Brondir
step
.dungeon SM
    .goto Ironforge,74.980,12.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
    .turnin 1050 >> Turn in Mythology of the Titans
    .target Librarian Mae Paledust
    .isQuestComplete 1050
step
    #optional
    .isOnQuest 554
    .goto Ironforge,74.645,11.742
    .target Prospector Stormpike
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
    >>|cRXP_WARN_Skip this step if you are not in Ironforge|r
    .turnin 554 >> Turn in Stormpike's Deciphering
step << Warlock
    .isOnQuest 653
    .goto Ironforge,50.827,5.621
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 653 >> Turn in Myzrael's Allies
    .target Gerrig Bonegrip
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
    .target Jubahl Corpseseeker
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .accept 4487 >> Accept Summon Felsteed
    .accept 4965 >> Accept Knowledge of the Orb of Orahil
    .trainer >> Train your class spells
    .target Briarthorn
step
.dungeon RFD
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Take the tram to Stormwind
step << Paladin
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Take the tram to Stormwind
step << Paladin
    .goto Stormwind City,39.81,29.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1661 >>Accept The Tome of Nobility
	.turnin 1661 >>Turnin The Tome of Nobility
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Paladin
    #season 2
    .goto Stormwind City,37.355,31.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeonas the Vindicated|r
    .turnin 79970 >> Turn in Aeonas the Vindicated
    .train 426178 >> Train |T236263:0|t[Sheath of Light]
    .target Aeonas the Vindicated
step
.dungeon RFD
    .goto Stormwind City,39.592,27.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .accept 3636 >> Accept Bring the Light
    .target Archbishop Benedictus
step
.dungeon RFD
    .goto StormwindClassic,39.834,54.360
    +Zone into the Stockade in Stormwind
    .link /run InviteUnit("a");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Click here to Copy + Paste this macro once you're inside The Stockades to ghetto Hearth to Wetlands|r
    .zone Wetlands >>|cRXP_WARN_If you are unable to do this, make your way back to Wetlands|r
step
.dungeon !SM
    .goto Hillsbrad Foothills,49.338,52.272 << !Warlock !Paladin
    .goto Ironforge,55.501,47.742 << Warlock
    .goto StormwindClassic,66.277,62.137 << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r << !Warlock !Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r << Paladin
    .fly Wetlands >> Fly to Wetlands
    .target Darla Harris << !Warlock !Paladin
    .target Gryth Thurden << Warlock
    .target Dungar Longdrink << Paladin
]])