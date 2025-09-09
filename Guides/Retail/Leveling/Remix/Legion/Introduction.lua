-- ============================================================
-- ==============  GROUP LEGION REMIX: REMIX INTRO ============
-- ============================================================

---Intro
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Intro
#displayname |cFF00CCFF1|r - Intro|r
#subgroup |cFFFCDC00(10-80)|r Speedrun Route 
#next a) Order Hall Death Knight Part 1 << Death Knight
#next a) Order Hall Demon Hunter Part 1 << Demon Hunter
#next a) Order Hall Druid Part 1 << Druid
#next a) Order Hall Hunter Part 1 << Hunter
#next a) Order Hall Mage Part 1 << Mage
#next a) Order Hall Monk Part 1 << Monk
#next a) Order Hall Paladin Part 1 << Paladin
#next a) Order Hall Priest Part 1 << Priest
#next a) Order Hall Rogue Part 1 << Rogue
#next a) Order Hall Shaman Part 1 << Shaman
#next a) Order Hall Warlock Part 1 << Warlock
#next a) Order Hall Warrior Part 1 << Warrior



step
    #completewith Heroic World Tier
    #hidewindow
    +test
    .use 245925
    .use 246937
    .openitem 237812
    .openitem 243373
step
    .goto 627,72.46,45.90
    .achievementComplete 42313,1
    *|cRXP_WARN_Make sure you have your desired spec selected before proceeding.|r
    .gossipoption 134056 >>Talk to |cRXP_FRIENDLY_Moratari|r
    .target Moratari
step
    #optional
    .achievement 42313,1
    .skipto guide,RestedXP Legion Remix\ab) Intro Skip
step
    .goto 627,72.46,45.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .accept 89404 >>Accept Time Crisis
    .target Moratari
step
    .goto 627,72.46,45.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .complete 89404,1 --1/1 Talk to Moratari
    .skipgossipid 133083
    .target Moratari
step
    .goto 627,67.03,43.15,5,0
    .goto 627,67.63,42.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 89404 >>Turn in Time Crisis
    .target Archmage Khadgar
    .accept 89405 >>Accept Mean Streets of Dalaran
step
    #completewith next
    #label Legion demons purged
    >>Kill |cRXP_ENEMY_Demons|r
    .complete 89405,1 --Legion demons purged (100%)
    .mob Felguard Invader
    .mob Felstalker
    .mob Felstalker Broodling
    .mob Imp Scout
    .mob Felfire Imp
step
    #completewith Legion demons purged
    .goto 627,63.56,45.69,10,0
    .goto 627,59.85,46.83,10,0
    .goto 627,51,58.6,40 >>Enter Dalaran City
step
    #requires Legion demons purged
    #loop
    .goto 627,44.65,59.12,20,0
    .goto 627,34.24,55.91,20,0
    >>Kill |cRXP_ENEMY_Demons|r
    .complete 89405,1 --Legion demons purged (100%)
    .mob Felguard Invader
    .mob Felstalker
    .mob Felstalker Broodling
    .mob Imp Scout
    .mob Felfire Imp
step
    .goto 627,49.08,46.96,5,0
    .goto 627,49.29,47.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r at the center of dalaran.
    .turnin 89405 >>Turn in Mean Streets of Dalaran
    .target Archmage Khadgar
    .accept 89406 >>Accept Seal and Protect
step
    #completewith next
    #label Magical barriers
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Magical barrier|r |cRXP_WARN_from very far away|r.
    .complete 89406,2,1 --5/5 Magical barriers reinforced
step
    #completewith Magical barriers
    .goto 627,45.33,43.21,10 >>Leave Buildung
step
    #requires Magical barriers
    .goto 627,41.39,39.5,8,0
    .goto 627,41.98,37.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Magical barrier|r |cRXP_WARN_to your right from a far|r.
    .complete 89406,2,1 --5/5 Magical barriers reinforced
step
    .goto 627,37.69,34.76
    >>Stand on the Arrow Location and click on the |cRXP_PICK_Magical barrier|r infront of you.
    *|cRXP_WARN_Make sure to do this to receive credit for all three doors at once.|r
    .complete 89406,2,4 --5/5 Magical barriers rein}forced
step
    .goto 627,40.62,30.13,8,0
    .goto 627,41.24,31.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Magical barrier|r |cRXP_WARN_to your right from a far|r.
    .complete 89406,2,5 --5/5 Magical barriers reinforced
step
    .goto 627,42.26,27.69,2,0
    .goto 627,42.81,27.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .complete 89406,3 --1/1 Talk to Momentus
    .skipgossipid 133082
    .skipgossipid 133050
    .skipgossipid 133081
    .target Momentus
step
    .goto 627,42.81,27.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .turnin 89406 >>Turn in Seal and Protect
    .target Momentus
    .accept 89407 >>Accept Thrift
    .accept 89408 >>Accept Threadbare
step
    #completewith next
    #label Frayed Temporal Threads1
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,1 --12/12 Frayed Temporal Threads collected
step
    #completewith Frayed Temporal Threads1
    .goto 627,40.76,27.5,5 >>Enter Building
step
    #requires Frayed Temporal Threads1
    .goto 627,41.17,26.74
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,1 --12/12 Frayed Temporal Threads collected
step
    .goto 627,40.69,24.04
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,2 --12/12 Frayed Temporal Threads collected
step
    .goto 627,40.69,24.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Archeology Chest|r
    .complete 89407,1 --1/1 Dusty Stone Tablet
step
    .goto 627,40.22,25.16
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,3 --12/12 Frayed Temporal Threads collected
step
    #completewith next
    #label Yellow Orbs1
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,4 --12/12 Frayed Temporal Threads collected
step
    #completewith Yellow Orbs1
    .goto 627,40.61,27.39,5 >>Leave the building
step
    #requires Yellow Orbs1
    .goto 627,38.72,35.12
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,4 --12/12 Frayed Temporal Threads collected
step
    .goto 627,39.63,38.61
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,5 --12/12 Frayed Temporal Threads collected
step
    .goto 627,40.22,41.27
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,6 --12/12 Frayed Temporal Threads collected
step
    .goto 627,38.36,40.37
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,7 --12/12 Frayed Temporal Threads collected
step
    .goto 627,38.36,40.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Curio Lockbox|r |cRXP_WARN_to your right|r.
    .complete 89407,3 --1/1 Curious Curio
step
    #completewith next
    #label Yellow Orbs2
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,8 --12/12 Frayed Temporal Threads collected
step
    #completewith Yellow Orbs2
    .goto 627,39.94,42.24,5 >>Leave the Building
step
    #requires Yellow Orbs2
    .goto 627,42.27,37.93
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,8 --12/12 Frayed Temporal Threads collected
step
    .goto 627,44.76,32
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,9 --12/12 Frayed Temporal Threads collected
step
    .goto 627,43.96,29.94
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,10 --12/12 Frayed Temporal Threads collected
step
    .goto 627,45.98,25.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon Crate|r
    .complete 89407,2 --1/1 Bent and Battered Blade
step
    .goto 627,46.46,25.91
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,11 --12/12 Frayed Temporal Threads collected
step
    .goto 627,46.06,27.68
    #title |cFFFCDC00Run through the Yellow Orbs|r
    .complete 89408,1,12 --12/12 Frayed Temporal Threads collected
step
    #completewith next
    #label Turn in Thrift
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .turnin 89407 >>Turn in Thrift
    .turnin 89408 >>Turn in Threadbare
    .accept 89409 >>Accept Infinite Bronze
    .disablecheckbox
    .target Momentus
step
    #completewith Turn in Thrift
    .goto 627,43.96,29.97,5 >>Leave Building
step
    #requires Turn in Thrift
    #completewith next
    #label Turn in Thrift2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r 
    .turnin 89407 >>Turn in Thrift
    .target Momentus
    .turnin 89408 >>Turn in Threadbare
    .accept 89409 >>Accept Infinite Bronze
    .disablecheckbox
step
    #requires Turn in Thrift
    #completewith Turn in Thrift2
    .goto 627,42.83,27.66,20 >>1
step
    #requires Turn in Thrift2
    .goto 627,42.81,28.45,2,0
    .goto 627,42.83,27.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r 
    .turnin 89407 >>Turn in Thrift
    .target Momentus
    .turnin 89408 >>Turn in Threadbare
    .accept 89409 >>Accept Infinite Bronze
step
    #completewith next
    #label Arrived at Tanks for Everything
    #title |cFFFCDC00Follow the Arrow|r
    .complete 89409,1 --Arrived at Tanks for Everything
step
    #completewith Arrived at Tanks for Everything
    .goto 627,43.92,29.96,10 >>Enter the Building
step
    #requires Arrived at Tanks for Everything
    #completewith next
    #label Temporal fibers0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Forge|r |cRXP_WARN_on the wall|r
    .complete 89409,2 --1/1 Anchor materials prepared
step
    #completewith Temporal fibers0
    #requires Arrived at Tanks for Everything
    .goto 627,45.14,29.31
    #title |cFFFCDC00Follow the Arrow|r
    .complete 89409,1 --Arrived at Tanks for Everything
step
    #requires Temporal fibers0
    #completewith next
    #label Temporal fibers
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Temporal fibers|r on the anvil.
    .complete 89409,3 --1/1 Temporal fibers separated
step
    #requires Temporal fibers0
    #completewith Temporal fibers
    .goto 627,45.14,29.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Forge|r on the wall.
    .complete 89409,2 --1/1 Anchor materials prepared
step
    #requires Temporal fibers
    #completewith next
    #label Temporal fibers separated
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Bars|r |cRXP_WARN_on the table infront of you|r.
    .complete 89409,4 --1/1 Anchoring materials infused
step
    #requires Temporal fibers
    #completewith Temporal fibers separated
    .goto 627,45.14,29.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Temporal fibers|r on the anvil.
    .complete 89409,3 --1/1 Temporal fibers separated
step
    #requires Temporal fibers separated
    #completewith next
    #label Infinite Bronze forged
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Bronze|r on the anvil.
    .complete 89409,5 --1/1 Infinite Bronze forged
step
    #requires Temporal fibers separated
    #completewith Infinite Bronze forged
    .goto 627,45.14,29.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Bars|r |cRXP_WARN_on the table infront of you from a far|r.
    .complete 89409,4 --1/1 Anchoring materials infused
step
    #requires Infinite Bronze forged
    .goto 627,45.14,29.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Bronze|r on the anvil.
    .complete 89409,5 --1/1 Infinite Bronze forged
step
    #completewith next
    #label Infinite Bronze
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .turnin 89409 >>Turn in Infinite Bronze
    .target Momentus
step
    #completewith Infinite Bronze
    .goto 627,43.49,30.07,8 >>Leave the Building
step
    #requires Infinite Bronze
    .goto 627,42.81,27.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .turnin 89409 >>Turn in Infinite Bronze
    .accept 90659 >>Accept Something Borrowed
    .target Momentus
step
    .goto 627,42.88,28.69,2,0
    .goto 627,42.81,27.73
    #title |cFFFF0000STOP|r
    *|cRXP_WARN_MAKE SURE YOU HAVE YOUR DESIRED SPEC SELECTED BEFORE PROCEEDING|r.
    *|cRXP_WARN_THIS UNLOCKS YOUR FIRST ARTIFACT WEAPON|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .complete 90659,2 --1/1 Speak to Momentus after choosing a talent specialization
    .target Momentus
    .skipgossipid 133562
step
    .goto 627,42.78,28.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Temporal Knot|r
    .complete 90659,3 --1/1 Artifact Swapped
    .macro Open Artifact Tree,1411839 >> /run SocketInventoryItem(16)
    .target Momentus
step
    .goto 627,42.24,28.31
    >>|cRXP_WARN_In the "Active Items" section|r:
    *There is a macro, use the macro, learn the skill, apply changes, and place the skill on your action bars.
    .complete 90659,4 --Purchase the Remix Time trait in your Artifact Weapon
    .macro Open Artifact Tree,1411839 >> /run SocketInventoryItem(16)
step
    .goto 627,42.46,28.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r and |cRXP_FRIENDLY_Erus|r
    .turnin 90659 >>Turn in Something Borrowed
    .accept 89412 >>Accept Get Plenty of Exorcise
    .accept 90901 >>Accept As A Matter of Artifact
    .accept 89411 >>Accept Scavenger Hunting
    .target Momentus
    .target Erus
step
    #completewith Infinite Power
    >>Kill |cRXP_ENEMY_Demons|r. Loot them for |T134515:0|t[|cRXP_LOOT_Legion Armor Scraps|r] and |T1411837:0|t[|cRXP_LOOT_Infinite Power|r].
    .complete 89411,1 --1/1 Legion Armor Scraps
    .complete 90901,1 --250/250 Infinite Power gathered
    .mob Felstalker
    .mob Felguard Invader 
step
    #completewith next
    #label Legion Portal Sealed
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 89412,1,1 --2/2 Legion Portal Sealed
    .target Legion Portal
step
    #completewith Legion Portal Sealed
    .goto 627,46.47,38.67,10,0
    .goto 627,50.89,40.49,8,0
    .goto 627,50.18,41.85,8,0
    .goto 627,48.33,40.01,8,0
    .goto 627,48.06,37.29,6 >>Enter Building and go upstairs
step
    #requires Legion Portal Sealed
    .goto 627,48.06,37.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 89412,1,1 --2/2 Legion Portal Sealed
    .target Legion Portal
step
    #completewith next
    #label Legion Portal Sealed2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 89412,1,2 --2/2 Legion Portal Sealed
    .target Legion Portal
step
    #completewith Legion Portal Sealed2
    .goto 627,49.41,37.4,10,0
    .goto 627,58.07,46.32,20,0
    .goto 627,56.98,46.74,8,0
    .goto 627,56.86,46.8,5 >>Jump down and Enter the building
step
    #requires Legion Portal Sealed2
    #completewith next
    #label Infinite Power
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 89412,1,2 --2/2 Legion Portal Sealed
    .target Legion Portal
step
    #requires Legion Portal Sealed2
    #completewith Infinite Power
    .goto 627,54.74,47.14,2 >>Portal Click Range 
step
    #requires Infinite Power
    .goto 627,53.1,47.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 89412,1,2 --2/2 Legion Portal Sealed
    .target Legion Portal
step
    #completewith next
    #hidewindow
    #label Scavenger Hunting
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r and |cRXP_FRIENDLY_Erus|r
    .turnin 89411 >>Turn in Scavenger Hunting
step
    #completewith Scavenger Hunting
    .goto 627,57.66,46.35,10 >>Leave the Building
step
    #requires Scavenger Hunting
    #loop
    .goto 627,49.49,32.77,30,0
    .goto 627,51.11,23.6,30,0
    .goto 627,42.29,39.36,30,0
    .goto 627,34.84,43.01,30,0
    >>Kill |cRXP_ENEMY_Demons|r. Loot them for |T134515:0|t[|cRXP_LOOT_Legion Armor Scraps|r] and |T1411837:0|t[|cRXP_LOOT_Infinite Power|r].
    .complete 89411,1 --1/1 Legion Armor Scraps
    .complete 90901,1 --250/250 Infinite Power gathered
    .mob Felstalker
    .mob Felguard Invader
step
    .goto 627,42.79,27.78
    >>|cRXP_WARN_Use the macro, learn the skills, apply changes, and place the skill on your action bars.|r
    .complete 90901,2 --250/250 Infinite Power gathered
    .macro Open Artifact Tree,1411839 >> /run SocketInventoryItem(16)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erus|r
    .turnin 89411 >>Turn in Scavenger Hunting
    .accept 89413 >>Accept Obliterate, Then Iterate
    .goto 627,42.34,27.40
    .target +Erus
step
    #completewith next
    #label Legion Armor Scraps
    >>Click on the |T134515:0|t[Legion Armor Scraps] to put it into the Scrapper and then press scrap.
    .complete 89413,2 --1/1 Scrap Legion Armor Scraps
step
    #completewith Legion Armor Scraps
    .goto 627,42.33,27.22
    .cast 1232807 >>Use [Unraveling Sands]
    *|cRXP_WARN_A button appeared in your UI. You can drag the ability to your action bars if you wish.|r
    .usespell 1232807
step
    #requires Legion Armor Scraps
    .goto 627,42.33,27.22
    >>|cRXP_WARN_You have summoned the |cRXP_PICK_Unraveling Sand|r|r (maybe inside |cRXP_FRIENDLY_Erus|r). Click it and click on the Scrap button.
    .complete 89413,2 --1/1 Scrap Legion Armor Scraps
    .scrap 251901
step
    .goto 627,42.33,27.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erus|r
    .turnin 89413 >>Turn in Obliterate, Then Iterate
    .target Erus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .turnin 89412 >>Turn in Get Plenty of Exorcise
    .turnin 90901 >>Turn in As A Matter of Artifact
    .goto 627,42.73,27.78
    .target +Momentus
step
    .goto 627,42.75,27.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .accept 89414 >>Accept Not A Memento Too Soon
    .target Momentus
step
    #completewith next
    #label Not A Memento Too Soon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 89414 >>Turn in Not A Memento Too Soon
    .accept 89415 >>Accept Storm the Citadel
    .disablecheckbox
    .target Archmage Khadgar
step
    #completewith Not A Memento Too Soon
    .goto 627,45.82,43.5,10 >>Enter the Building
step
    #requires Not A Memento Too Soon
    .goto 627,49,47.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 89414 >>Turn in Not A Memento Too Soon
    .target Archmage Khadgar
    .accept 89415 >>Accept Storm the Citadel
step
    #completewith next
    #hidewindow
    #label Fel Lord Nezmet
    >>Kill |cRXP_ENEMY_Fel Lord Nezmet|r
    .complete 89415,2 --1/1 Fel Lord Nezmet slain
    .mob Fel Lord Nezmet
step
    #completewith Fel Lord Nezmet
    .goto 627,46.28,53.18,10 >>Leave the Building
step
    #requires Fel Lord Nezmet
    #completewith next
    #label Fel Lord Nezmet2
    >>Kill |cRXP_ENEMY_Fel Lord Nezmet|r
    .complete 89415,2 --1/1 Fel Lord Nezmet slain
    .mob Fel Lord Nezmet
step
    #requires Fel Lord Nezmet
    #completewith Fel Lord Nezmet2
    .goto 627,31.54,48.93,10 >>Enter the Building
step
    #requires Fel Lord Nezmet2
    .goto 627,28.63,48.79
    >>Kill |cRXP_ENEMY_Fel Lord Nezmet|r
    .complete 89415,2 --1/1 Fel Lord Nezmet slain
    .mob Fel Lord Nezmet
step
    #completewith next
    #label Storm the Citadel
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 89415 >>Turn in Storm the Citadel
    .target Archmage Khadgar
step
    #completewith Storm the Citadel
    .goto 627,46.28,53.18,10 >>Enter the Building
step
    #requires Storm the Citadel
    .goto 627,49.54,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 89415 >>Turn in Storm the Citadel
    .target Archmage Khadgar
step
    .goto 627,51.03,48.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .accept 89416 >>Accept Eternal Gratitude
    .target Moratari
step
    .goto 627,51.01,47.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 89416,1 --1/1 Portal used
step
    #completewith next
    #label Eternal Gratitude
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .turnin 89416 >>Turn in Eternal Gratitude
    .target Eternus
    .accept 89417 >>Accept Infinite Meetings
step
    #title |cFFFCDC00Mount UP|r
    #completewith Eternal Gratitude
    .goto 619,45.65,67.63,2 >>Mount up now, as you are about to enter a no-mount zone.
step
    #requires Eternal Gratitude
    #completewith next
    #label Infinite Meetings
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .turnin 89416 >>Turn in Eternal Gratitude
    .target Eternus
    .accept 89417 >>Accept Infinite Meetings
    .disablecheckbox
step
    #requires Eternal Gratitude
    #completewith Infinite Meetings
    .goto 619,45.69,68.36,3 >>Dragon Click/Interact Range
step
    #requires Infinite Meetings
    .goto 619,45.7,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .turnin 89416 >>Turn in Eternal Gratitude
    .target Eternus
    .accept 89417 >>Accept Infinite Meetings
step
    #completewith skyride
    +|cRXP_WARN_You can skyride now|r.
step
    .goto 619,45.79,68.29,5,0
    .goto 619,45.82,68.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary XVII|r
    .complete 89417,4 --1/1 Meet Hemet
    .target Hemet Nesingwary XVII
    .skipgossipid 135505
step
    .goto 619,45.81,68.17,5,0
    .goto 619,45.84,68.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horos|r
    .complete 89417,3 --1/1 Meet Horos
    .skipgossipid 135504
    .target Horos
step
    .goto 619,45.83,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .complete 89417,2 --1/1 Meet Momentus, again
    .skipgossipid 133280
    .target Momentus
step
    .goto 619,45.96,67.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r
    .complete 89417,1 --1/1 Meet Nostwin
    .skipgossipid 133270
step
    .goto 619,45.53,67.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
    .complete 89417,6 --1/1 Meet Pythagorus
    .skipgossipid 135503
    .target Pythagorus
step
    #label skyride
    .goto 619,45.48,68.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
    .complete 89417,5 --1/1 Meet Larah
    .skipgossipid 135502
    .target Larah Treebender
step
    .goto 619,45.6,68.43,5,0
    .goto 619,45.69,68.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r |cRXP_WARN_from a far|r.
    .turnin 89417 >>Turn in Infinite Meetings
    .accept 89418 >>Accept A Fixed Point in Time
    .target Eternus
step
    #completewith next 
    #hidewindow
    #label Krasus' Landing
    .complete 89418,1 --1/1 Fly with Moratari to Krasus' Landing
step
    #completewith Krasus' Landing
    .goto 619,45.64,67.7
    .gossipoption 133297 >>|cRXP_WARN_In the "Active Items" section|r There is a macro, spam it after talking to |cRXP_FRIENDLY_Moratari|r.
    .timer 68,RP
    .target Moratari
    .macro Leave Vehicle,6656430 >> /leavevehicle
step
    .isOnQuest 89418
    .goto 619,45.96,67.89
    #title |cFFFCDC00Spam Macro|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r
    .home >>Set your Hearthstone to Dalaran
    .macro Leave Vehicle,6656430 >> /leavevehicle
-- step
--     #requires Meet Nostwin2
--     .isOnQuest 92855
--     .goto 619,45.86,68.00
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lidamorrutu|r
--     .turnin 92855 >>Turn in Make Haste, Not Waste
--     .target Lidamorrutu
step
    .goto 619,45.83,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .accept 91955 >>Accept Just Between Us
    .target Momentus
step
    .isOnQuest 89418
    .goto 619,45.72,67.52,8 
    .goto 619,45.71,67.45
    .cast 1246470 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .isOnQuest 89418
    .goto 627,71.94,41.44
    .cast 1257698 >>Use |T1528676:0|t[Elixir of Remembered Sight] to reveal herbs and ores on the minimap. Collect them when nearby to gain more Infinite Might and increase your overall power.
    .use 254320
    .aura 1257698
step
    .goto 627,71.94,41.44
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 89418,1 --1/1 Fly with Moratari to Krasus' Landing
step
    .goto 627,72.04,41.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .turnin 89418 >>Turn in A Fixed Point in Time
    .target Moratari
step
    .goto 627,72.05,41.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .accept 90754 >>Accept Skyriding
    .target Moratari
step
    .goto 627,72.41,41.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 90754,1 --1/1 Take Moratari's portal
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r and choose one of the mounts.
    *|cRXP_WARN_You can still obtain the other mounts at another time|r.
    .complete 90754,2 --1/1 Acquire a skyriding mount from Lord Andestrasz
    .target Lord Andestrasz
    .skipgossipid 120917
    -- .skipgossipid 120921
    -- .skipgossipid 120920
    -- .skipgossipid 120919
    -- .skipgossipid 120918
step
    .goto 371,65.27,37.18
    >>Right-click to learn your mount.
    .complete 90754,3 --1/1 Learn your new skyriding mount from your 
    .use 194034
    .use 194521
    .use 194106
    .use 194549
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .complete 90754,4 --1/1 Speak to Lord Andestrasz about Skyriding
    .target Lord Andestrasz
    .skipgossipid 120916
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .turnin 90754 >>Turn in Skyriding
    .target Lord Andestrasz
step
    --skyriding tag
    .goto 371,65.14,37.1
    .cast 1246470 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    #hidewindow
    #completewith next
    #label InfiniteChaosA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .turnin 91437 >>Turn in Call for Participants
    .accept 91061 >>Accept Infinite Chaos
    .disablecheckbox
    .accept 91639 >>Accept Embrace Your Own Legend
    .disablecheckbox
    .target Eternus
step
    .zoneskip 619
    #completewith InfiniteChaosA
    .goto 627,72.06,40.49
    .cast 1233963 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r to the Infinite Bazaar
step
    #requires InfiniteChaosA
    .isOnQuest 91437
    .goto 619,45.61,68.46,3,0
    .goto 619,45.68,68.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .turnin 91437 >>Turn in Call for Participants
    .accept 91639 >>Accept Embrace Your Own Legend
    .skipgossipid 1356t03
    .target Eternus
step
    .goto 619,45.61,68.46,3,0
    .goto 619,45.68,68.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .accept 91639 >>Accept Embrace Your Own Legend
    .target Eternus
step
    #completewith next
    #hidewindow
    #label Infinite Chaos
    .accept 91061 >>Accept Infinite Chaos
step
    #completewith Infinite Chaos
    .goto 619,45.68,68.50
    .gossipoption 135603 >>Talk to |cRXP_FRIENDLY_Eternus|r
    .target Eternus
step
    #requires Infinite Chaos
    .goto 619,45.57,68.48,20,0
    .goto 619,45.69,68.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .skipgossipid 135604
    .accept 91061 >>Accept Infinite Chaos
    .target Eternus
step
    #label Heroic World Tier
    .goto 619,45.57,68.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Console|r
    .complete 91061,2 --1/1 Use the Console of Infinite Chaos to enter the Heroic World Tier
step
    .goto 627,72.08,40.59
    .zone 619 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r to the Infinite Bazaar
]])

---Intro Skip
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#name ab) Intro Skip
#displayname |cFF00CCFF2|r - Intro Skip|r
#next a) Order Hall Death Knight Part 1 << Death Knight
#next a) Order Hall Demon Hunter Part 1 << Demon Hunter
#next a) Order Hall Druid Part 1 << Druid
#next a) Order Hall Hunter Part 1 << Hunter
#next a) Order Hall Mage Part 1 << Mage
#next a) Order Hall Monk Part 1 << Monk
#next a) Order Hall Paladin Part 1 << Paladin
#next a) Order Hall Priest Part 1 << Priest
#next a) Order Hall Rogue Part 1 << Rogue
#next a) Order Hall Shaman Part 1 << Shaman
#next a) Order Hall Warlock Part 1 << Warlock
#next a) Order Hall Warrior Part 1 << Warrior

step
    #completewith Heroic World Tier
    #hidewindow
    +test
    .use 245925
    .use 246937
    .openitem 237812
    .openitem 243373
step
    .goto 627,72.05,41.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .accept 90754 >>Accept Skyriding
    .target Moratari
step
    .goto 627,72.41,41.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 90754,1 --1/1 Take Moratari's portal
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r and choose one of the mounts.
    *|cRXP_WARN_You can still obtain the other mounts at another time|r.
    .complete 90754,2 --1/1 Acquire a skyriding mount from Lord Andestrasz
    .target Lord Andestrasz
    .skipgossipid 120917
    -- .skipgossipid 120921
    -- .skipgossipid 120920
    -- .skipgossipid 120919
    -- .skipgossipid 120918
step
    .goto 371,65.27,37.18
    >>Right-click to learn your mount.
    .complete 90754,3 --1/1 Learn your new skyriding mount from your
    .use 194034
    .use 194521
    .use 194106
    .use 194549
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .complete 90754,4 --1/1 Speak to Lord Andestrasz about Skyriding
    .target Lord Andestrasz
    .skipgossipid 120916
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .turnin 90754 >>Turn in Skyriding
    .target Lord Andestrasz
step
    --skyriding tag
    .goto 371,65.14,37.1
    .cast 1246470 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .goto 627,72.08,40.59
    .cast 1233963 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r to the Infinite Bazaar
step
    #label Meet Nostwin2
    #hidewindow
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .accept 91955 >>Accept Just Between Us
    .target Momentus
step
    #completewith Meet Nostwin2
    .goto 619,45.96,67.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r
    .home >>Set your Hearthstone to Dalaran
step
    #requires Meet Nostwin2
    #completewith next
    #label Just Between Us
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .accept 91955 >>Accept Just Between Us
    .target Moment
step
    #requires Meet Nostwin2
    #completewith Just Between Us
    .goto 619,45.96,67.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r
    .collect 254320,1 --Elixir of Remembered Sight
    .buy 254320,1 --Elixir of Remembered Sight
    .skipgossipid 135258
-- step
--     #requires Just Between Us
--     .isOnQuest 92855
--     .goto 619,45.86,68.00
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lidamorrutu|r
--     .turnin 92855 >>Turn in Make Haste, Not Waste
--     .target Lidamorrutu
step
    #requires Just Between Us
    .goto 619,45.83,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .accept 91955 >>Accept Just Between Us
    .target Momentus
step
    .isOnQuest 91955
    .goto 619,45.61,68.46,3,0
    .goto 619,45.68,68.50
    .cast 1257698 >>Use |T1528676:0|t[Elixir of Remembered Sight] to reveal herbs and ores on the minimap. Collect them when nearby to gain more Infinite Might and increase your overall power.
    .use 254320
    .aura 1257698
step
    .isOnQuest 91437
    .goto 619,45.61,68.46,3,0
    .goto 619,45.68,68.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .turnin 91437 >>Turn in Call for Participants
    .accept 91639 >>Accept Embrace Your Own Legend
    .skipgossipid 135603
    .target Eternus
step
    .goto 619,45.61,68.46,3,0
    .goto 619,45.68,68.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .accept 91639 >>Accept Embrace Your Own Legend
    .target Eternus
step
    #completewith next
    #hidewindow
    #label Infinite Chaos
    .accept 91061 >>Accept Infinite Chaos
step
    #completewith Infinite Chaos
    .goto 619,45.68,68.50
    .gossipoption 135603 >>Talk to |cRXP_FRIENDLY_Eternus|r
    .target Eternus
step
    #requires Infinite Chaos
    .goto 619,45.57,68.48,20,0
    .goto 619,45.69,68.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .skipgossipid 135604
    .accept 91061 >>Accept Infinite Chaos
    .target Eternus
step
    #label Heroic World Tier
    .goto 619,45.57,68.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Console|r
    .complete 91061,2 --1/1 Use the Console of Infinite Chaos to enter the Heroic World Tier
step
    .goto 619,45.71,67.46
    .cast 1246470  >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r to the Infinite Bazaar
]])

-- ============================================================
-- ================  GROUP LEGION REMIX: ORDERHALL  ===========
-- ============================================================

-- ========== Monk ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#name a) Order Hall Monk Part 1
#displayname |cFF00CCFF3|r - Order Hall Intro Monk|r
#next

<< Monk

step
    #completewith Turn in Rise, Champions
    #hidewindow
    +test
    .use 245925
    .use 246937
    .openitem 237812
    .openitem 243373
step
    .zoneskip 627
    .zone 627 >>Enter Dalaran
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Da-Nel|r |cRXP_WARN_next to you|r.
    .accept 12103 >>Accept Before the Storm
    .target Initiate Da-Nel
step
    .goto 424,44.86,27.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 12103,1 --Take portal in Dalaran to the Peak of Serenity (Optional)
step
    >>Use |T775462:0|t[Zen Pilgrimage]
    .complete 12103,2 --1/1 Travel to Peak of Serenity by Zen Pilgrimage or Dalaran portal
    -- .macro Zen Pilgrimage,775462 >>/cast Zen Pilgrimage
step
    .goto 424,44.88,27.75
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Master Hight|r
    .complete 12103,3 --1/1 Speak with Master Hight
    .timer 42,RP
    .target Master Hight
step
    .isOnQuest 12103
    .goto 424,45,27.6
    #title Wait at Door
    >>Kill |cRXP_ENEMY_Infernal Destroyer|r |cRXP_WARN_after the roleplay|r.
    .scenario 1887,1
    .mob Infernal Destroyer
step
    .isOnQuest 12103
    #completewith next
    #label Vizznak
    .goto 424,44.64,27.73,30,0
    .goto 424,44.37,27.58,30,0
    .goto 424,43.65,27.49,30,0
    >>Kill |cRXP_ENEMY_Vizznak|r 
    .scenario 1896,1
    .mob Vizznak
step
    .isOnQuest 12103
    #completewith Vizznak
    .goto 424,43.45,27.64,40 >>You can't mount here
step
    .isOnQuest 12103
    #requires Vizznak
    .goto 424,43.45,27.64,20,0
    .goto 424,43.87,27.36
    >>Kill |cRXP_ENEMY_Vizznak|r and afterwards leave the cave.
    .scenario 1896,1
    .timer 30,RP
    .mob Vizznak
step
    .isOnQuest 12103
    #completewith next
    #label Number Nine Jia
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 1897,1
step
    .isOnQuest 12103
    #completewith Number Nine Jia
    .goto 424,43.87,27.36
    .cast 193726 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Number Nine Jia|r
    .timer 21,RP
    .target Number Nine Jia
step
    .isOnQuest 12103
    #requires Number Nine Jia
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 1897,1
step
    .isOnQuest 12103
    #completewith next
    #label Morvath the Reaver
    .goto 424,45.3,26.4,10,0
    >>Kill |cRXP_ENEMY_Morvath the Reaver|r
    .scenario 1898,1
    .mob Morvath the Reaver
step
    .isOnQuest 12103
    #completewith Morvath the Reaver
    #hidewindow
    .goto 424,45.53,25.6,50 >>1
step
    .isOnQuest 12103
    #requires Morvath the Reaver
    .goto 424,45.53,25.6
    >>Kill |cRXP_ENEMY_Morvath the Reaver|r
    .scenario 1898,1
    .mob Morvath the Reaver
step
    .isOnQuest 12103
    #completewith next
    #title |cFFFCDC00Follow the Arrow|r
    #label Test3221
    .scenario 1899,1
step
    .isOnQuest 12103
    #completewith Test3221
    #title |cFFFCDC00Follow the Arrow|r
    #hidewindow
    .goto 424,45.21,26.48,20,0
    .goto 424,44.67,26.69,50 >>1
    .timer 60,RP
step
    .isOnQuest 12103
    #requires Test3221
    .goto 424,44.67,26.69
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 1899,1
step
    .isOnQuest 12103
    .goto 424,44.67,26.71
    >>Kill |cRXP_ENEMY_Portal Master Jorvinax|r
    .scenario 1900,1
    .mob Portal Master Jorvinax
step
    .isOnQuest 12103
    .goto 424,44.67,26.6
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r
    .scenario 1901,1
step
    #completewith next
    #label Dawning Light
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fearsome Jang|r
    .turnin 12103 >>Turn in Before the Storm
    .target Fearsome Jang
    .accept 40236 >>Accept The Dawning Light
    .disablecheckbox
step
    #title |cFFFCDC00Leave House|r
    #completewith Dawning Light
    .goto 709,57.44,59.16,5 >>Leave the House
step
    #requires Dawning Light
    #completewith next
    #label Dawning Light2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fearsome Jang|r
    .turnin 12103 >>Turn in Before the Storm
    .target Fearsome Jang
    .accept 40236 >>Accept The Dawning Light
    .disablecheckbox
step
    #requires Dawning Light
    #completewith Dawning Light2
    #title |cFFFCDC00Follow the Arrow|r
    .goto 709,56.05,59.36,25,0
    .goto 709,54.73,58.48,25,0
    .goto 709,51.58,57.48,25,0
    .goto 709,51.35,54.33,40 >>|cRXP_WARN_You can mount again|r.
step
    #requires Dawning Light2
    .goto 709,51.35,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fearsome Jang|r
    .turnin 12103 >>Turn in Before the Storm
    .target Fearsome Jang
    .accept 40236 >>Accept The Dawning Light
    .timer 42,RP
step
    .goto 709,51.41,48.41
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 40236,1 --1/1 Accompany Fearsome Jang
    .timer 67,RP
step
    .goto 709,51.41,48.41
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 40236,2 --1/1 Establish the Order of The Broken Temple
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 40236 >>Turn in The Dawning Light
    .target Iron-Body Ponshu
--HERE INSERT ARTIFACT WEAPONS    
-- step
--     .spec 1
--     #include a) Artifact Brewmaster
-- step
--     .spec 2
--     #include a) Artifact Windwalker
-- step
--     .spec 3
--     #include a) Artifact Mistweaver
--HERE INSERT WAY TO NEXT QUEST FOR ALL ARTIFACT WEAPONS
step
    #completewith next
    #label Matter of Planning
    .goto 709,49.99,58.69,30,0
    .goto 709,51.04,57.64,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .accept 40793 >>Accept A Matter of Planning
    .target Iron-Body Ponshu
step
    #completewith Matter of Planning
    #hidewindow
    .goto 709,51.41,48.4,60 >>1
step
    #requires Matter of Planning
    .goto 709,51.42,48.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .accept 40793 >>Accept A Matter of Planning
    .target Iron-Body Ponshu
step
    #completewith next
    #label Turn in A Matter of Planning
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hsu|r
    .turnin 40793 >>Turn in A Matter of Planning
    .accept 40795 >>Accept The Fight Begins
    .disablecheckbox
    .target Master Hsu
step
    #completewith Turn in A Matter of Planning
    #hidewindow
    .goto 709,51.46,54.08,20,0
    .goto 709,52.77,59.73,50 >>1
step
    #requires Turn in A Matter of Planning
    .goto 709,52.74,59.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hsu|r
    .turnin 40793 >>Turn in A Matter of Planning
    .accept 40795 >>Accept The Fight Begins
    .target Master Hsu


----HERE INSERT MAP QUEST



step
    .goto 709,52.80,59.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hsu|r
    .turnin 40795 >>Turn in The Fight Begins
    .target Master Hsu
step
    .goto 709,52.39,57.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 39735,1 --1/1 Travel to Dalaran
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Da-Nel|r |cRXP_WARN_next to you|r
    .accept 42186 >>Accept Growing Power
    .target Initiate Da-Nel
step
    #completewith next
    #label Growing Power
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 42186 >>Turn in Growing Power
step
    #completewith Growing Power
    .cast 126892 >>Use |T775462:0|t[Zen Pilgrimage]
    .usespell 126892
step
    #requires Growing Power
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 42186 >>Turn in Growing Power
    .target Iron-Body Ponshu
    .accept 42187 >>Accept Rise, Champions
    .accept 43973 >>Accept Two Paths, Two Weapons
----HERE SECOND & THIRD ARTIFACT
-- step
--     .complete 43973,1 --1/1 Choose a second artifact to pursue
-- step
--     .goto 709,51.42,48.42
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
--     .turnin 43973 >>Turn in Two Paths, Two Weapons
--     .target Iron-Body Ponshu
--     .accept 42762 >>Accept The Wanderer's Companion
-- step
--     .goto 709,49.09,58.66
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
--     .turnin 40704 >>Turn in Champion: Li Li Stormstout
step
    #completewith next
    #label Enlist Li Li Stormstout
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r    
    .complete 42187,2 --1/1 Enlist Li Li Stormstout
    .target Li Li Stormstout
step
    #completewith Enlist Li Li Stormstout
    .goto 709,51.33,54.04,20,0
    .goto 709,49.96,58.69,10 >>Enter House
step
    #requires Enlist Li Li Stormstout
    .goto 709,49.14,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 40704 >>Turn in Champion: Li Li Stormstout
    .target Li Li Stormstout
    .complete 42187,2 --1/1 Enlist Li Li Stormstout
step
    .goto 709,55.25,57.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
    .turnin 41115 >>Turn in Champion: Chen Stormstout
    .complete 42187,1 --1/1 Enlist Chen Stormstout
    .target Chen Stormstout
step
    #label Turn in Rise, Champions
    .goto 709,52.77,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hsu|r
    .turnin 42187 >>Turn in Rise, Champions
    .accept 41945 >>Accept Tianji of the Ox
    .turnin 41945 >>Turn in Tianji of the Ox
    .accept 41946 >>Accept Building Our Troops
    .turnin 41946 >>Turn in Building Our Troops
    .accept 42210 >>Accept Scrolls of Knowledge
    .turnin 42210 >>Turn in Scrolls of Knowledge
    .target Master Hsu
-- step
--     .goto 709,51.41,48.38
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
--     .accept 41905 >>Accept Report from Tian Monastery
--     .target Iron-Body Ponshu
--     .turnin 41905 >>Turn in *undefined*
--     .accept 41728 >>Accept The Defense of Tian Monastery
]])

-- ========== Death Knight ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Order Hall Death Knight Part 1
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#next

<< Death Knight

step
    +test

]])

-- ========== Demon Hunter ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Order Hall Demon Hunter Part 1
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#next

<< Demon Hunter

step
    .goto 627,72.07,41.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .accept 90995 >>Accept The Future of The Fel Hammer
    .target Moratari
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .complete 90995,1 --1/1 Speak with Moratari to choose a champion
    .skipgossipid 134009
    .choose 1274666
    .target Moratari
step
    .goto 627,72.07,41.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .turnin 90995 >>Turn in The Future of The Fel Hammer
    .target Moratari
step
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r |cRXP_WARN_next to you|r
    .accept 39261 >>Accept Call of the Illidari
    .target Kor'vas Bloodthorn
step
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 39261 >>Turn in Call of the Illidari
    .target Kayn Sunfury
    .accept 40814 >>Accept The Power to Survive
--here
step
    #requires Turn in The Hunt
    .goto 627,73.86,46.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 39247 >>Turn in The Hunt
    .target Kor'vas Bloodthorn
    .accept 42869 >>Accept Eternal Vigil
step
    .goto 627,95.12,65.97
    #title |cFFFCDC00Skyride; not glide|r
    .complete 42869,1 --Glide to Illidari Redoubt
step
    .goto 627,95.12,65.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 42869 >>Turn in Eternal Vigil
    .target Jace Darkweaver
    .accept 42872 >>Accept Securing the Way
step
    .goto 627,95.12,65.97
    >>Use the |cRXP_WARN_ExtraActionButton|r
    .complete 42872,1 --1/1 Have the prisoners' souls removed
    .use 217377
step
    .goto 627,97.66,68.89
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gate|r.
    .complete 42872,2 --1/1 Rip open a gateway to the Fel Hammer
step
    .goto 627,95.15,65.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 42872 >>Turn in Securing the Way
    .target Jace Darkweaver
step
    .goto 627,95.24,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Mother Malevolence|r
    .accept 41221 >>Accept Return to Mardum
    .target Matron Mother Malevolence
step
    .goto 627,97.66,68.89
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gate|r.
    .complete 41221,1 --Board the Fel Hammer
step
    .goto 720,57.64,67.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 41221 >>Turn in Return to Mardum
    .target Kayn Sunfury
    .accept 41037 >>Accept Unbridled Power
step
    #completewith next
    #label Fel Hammer
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 41037,1 --1/1 Activate the Fel Hammer
step
    #completewith Fel Hammer
    .goto 720,58.84,65.90
    .cast 203269 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Console|r
    .timer 38,RP
step
    #requires Fel Hammer
    .goto 720,58.64,57.83
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 41037,1 --1/1 Activate the Fel Hammer
step
    .goto 720,58.65,57.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 41037 >>Turn in Unbridled Power
    .target Kayn Sunfury
    .accept 41062 >>Accept Spoils of Victory
step
    .goto 720,55.88,54.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Battlelord Gaardoun|r
    .complete 41062,1 --1/1 Speak to Battlelord Gaardoun
    .timer 29,RP
    .skipgossipid 45282
    .target Battlelord Gaardoun
step
    .goto 720,49.59,41.73,20,0
    .goto 720,46.7,53.07,20,0
    .goto 721,59.76,46.94
    #title |cFFFCDC00Follow the Arrow|r
    .complete 41062,2 --1/1 Follow Battlelord Gaardoun
step
    .goto 721,59.76,45.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Battlelord Gaardoun|r
    .turnin 41062 >>Turn in Spoils of Victory
    .target Battlelord Gaardoun
step
    .goto 721,59.33,51.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r
    .accept 41066 >>Accept The Hunter's Gaze
    .target Allari the Souleater
step
    #completewith next
    #label Burning Legion
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 41066,1 --1/1 Gaze upon the Burning Legion
step
    #completewith Burning Legion
    .goto 721,58.93,52.97
    .gossipoption 45456 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crucible|r
    .timer 40,RP
step
    #requires Burning Legion
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 41066,1 --1/1 Gaze upon the Burning Legion    
step
    .goto 721,59.34,51.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r
    .turnin 41066 >>Turn in The Hunter's Gaze
    .target Allari the Souleater
    .accept 41067 >>Accept Time is of the Essence
step
    #completewith next
    #label Time is of the Essence
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 41067 >>Turn in Time is of the Essence
    .target Kayn Sunfury
    .accept 41069 >>Accept Direct Our Wrath
    .disablecheckbox
step
    #hidewindow
    #completewith Time is of the Essence
    .goto 720,46.47,56.04,30,0
    .goto 720,51.22,66.52,30,0
    .goto 720,58.59,57.91,30 >>1
step
    #requires Time is of the Essence
    .goto 720,58.59,57.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 41067 >>Turn in Time is of the Essence
    .target Kayn Sunfury
    .accept 41069 >>Accept Direct Our Wrath
step
    .goto 720,58.84,54.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crucible|r
    .complete 41069,1 --1/1 Initial strike point chosen
    .accept 39735 >>Accept Stormheim
step
    .goto 720,58.57,57.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 41069 >>Turn in Direct Our Wrath
    .target Kayn Sunfury
    -- .accept 44383 >>Accept In Pursuit of Power
step
    .goto 720,56.07,54.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Battlelord Gaardoun|r
    .accept 42671 >>Accept Rise, Champions
    .target Battlelord Gaardoun
step
    .goto 720,58.62,57.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 42695 >>Turn in Champion: Kayn Sunfury
    .target Kayn Sunfury
    .complete 42671,1 --Kayn Sunfury recruited
step
    .goto 720,56.18,38.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asha Ravensong|r
    .turnin 42697 >>Turn in Champion: Asha Ravensong
    .target Asha Ravensong
    .complete 42671,2 --Asha Ravensong recruited
step
    .goto 720,59.26,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 42671 >>Turn in Rise, Champions
    .target Kor'vas Bloodthorn
    .accept 42677 >>Accept Things Gaardroun Needs
    .turnin 42677 >>Turn in Things Gaardroun Needs
    .accept 42679 >>Accept Broken Warriors
    .turnin 42679 >>Turn in Broken Warriors
    .accept 42681 >>Accept Loramus, Is That You?
    .turnin 42681 >>Turn in *undefined*
    .accept 42683 >>Accept Demonic Improvements
step
    #completewith next
    #label Loramus Thalipedes
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42683,1 --1/1 Loramus' story
step
    #completewith Loramus Thalipedes
    .goto 721,55.19,62.08
    .gossipoption 45707 >>Talk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .timer 85,RP
    .target Loramus Thalipedes
    --you can make a skip here dont need to be there
step
    #requires Loramus Thalipedes
    .goto 721,55.19,62.08
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42683,1 --1/1 Loramus' story
step
    .goto 720,60.02,48.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Mother Malevolence|r
    .turnin 42683 >>Turn in Demonic Improvements
    .target Matron Mother Malevolence
    .accept 42682 >>Accept Additional Accoutrements
step
    .goto 720,59.30,57.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 42682 >>Turn in Additional Accoutrements
    .target Kor'vas Bloodthorn
    .accept 37447 >>Accept The Blood of Demons
----Initinal Intro Complete

step
    .goto 720,57.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falara Nightsong|r
    .accept 44213 >>Accept You Will Be Prepared!
    .target Falara Nightsong
    .turnin 44213 >>Turn in You Will Be Prepared!

step
    .goto 721,58.41,51.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 37447 >>Turn in The Blood of Demons
    .target Kayn Sunfury
    .accept 42510 >>Accept Immortal Soul
    .complete 42510,1 --1/1 Blood Offering made
step
    .goto 721,58.41,51.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 42510 >>Turn in Immortal Soul
    .target Kayn Sunfury
    .accept 42522 >>Accept Leader of the Illidari
step
    .goto 720,58.68,57.76
    .turnin 42522 >>Turn in Leader of the Illidari

step
    .goto 720,59.98,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Mother Malevolence|r
    .accept 42593 >>Accept The Arcane Way
    .target Matron Mother Malevolence
step
    .goto 627,26.02,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .turnin 42593 >>Turn in The Arcane Way
    .target Archmage Lan'dalock
    .accept 42594 >>Accept Move Like No Other
step
    .goto 627,32.66,49.26
    .complete 42594,1 --1/1 Imp chased
step
    .goto 627,42.58,45.19
    .complete 42594,2 --1/1 Portal stopped
step
    .goto 627,41.37,37.47
    .complete 42594,3 --1/1 Crate inspected
step
    .goto 627,48.16,38.37
    .complete 42594,4 --1/1 Imp found
step
    .goto 627,50.32,35.77
    .complete 42594,5 --1/1 Escape stopped
step
    .goto 627,53.97,40.13
    .complete 42594,6 --1/1 Invisible imp spotted
step
    .goto 627,58.86,46.54
    .complete 42594,7 --1/1 Imp followed
step
    .goto 627,60.62,49.73
    .complete 42594,8 --1/1 Imp foiled
step
    .goto 627,60.28,49.51
    .complete 42594,9 --1/1 Grimoire of Arcane Ways
step
    .goto 720,57.52,52.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belath Dawnblade|r
    .turnin 42594 >>Turn in Move Like No Other
    .target Belath Dawnblade
    .accept 42801 >>Accept Back in Black
step
    .goto 720,59.96,49.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Mother Malevolence|r
    .turnin 42801 >>Turn in Back in Black
    .target Matron Mother Malevolence
    .accept 42921 >>Accept Confrontation at the Black Temple
    .complete 42921,1 --1/1 Gateway summoned
step
    .goto 720,62.32,50.01
    .complete 42921,2 --1/1 Gateway used
    step
    .scenario 2582,1
step
step
    .scenario 2583,1
step
step
    .scenario 2584,1
step
step
    .scenario 2585,1
step
step
    .scenario 2586,1
step
step
    .goto 759,54.08,70.57
    .complete 42921,3 --1/1 Akama confronted
step
    .goto 680,36.57,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Arcanist Thalyssra|r
    .turnin 41704 >>Turn in Subject 16
    .target First Arcanist Thalyssra
    .accept 41760 >>Accept Kel'danath's Legacy

step
 
step
    .goto 720,58.65,57.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 42921 >>Turn in Confrontation at the Black Temple
    .target Kayn Sunfury
    .accept 42665 >>Accept Into Our Ranks
step
    .goto 720,57.88,57.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shade of Akama|r
    .turnin 42664 >>Turn in 
    .target Shade of Akama
    .complete 42665,1 --Shade of Akama recruited
step
    .goto 720,59.26,57.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 42673 >>Turn in 
    .target Kor'vas Bloodthorn
    .complete 42665,2 --Kor'vas recruited
step
    .goto 720,60.09,48.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Mother Malevolence|r
    .turnin 42665 >>Turn in Into Our Ranks
    .target Matron Mother Malevolence
    .accept 42131 >>Accept Unexpected Visitors
    .accept 42802 >>Accept Securing Mardum
step
    .goto 720,57.64,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belath Dawnblade|r
    .turnin 42802 >>Turn in Securing Mardum
    .target Belath Dawnblade
    .accept 42808 >>Accept Green Adepts
    .turnin 42808 >>Turn in Green Adepts

step
    .goto 720,56.27,50.71
    .complete 42131,1 --1/1 Unexpected visitors heard
step
    .goto 720,57.59,52.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belath Dawnblade|r
    .turnin 42131 >>Turn in Unexpected Visitors
    .target Belath Dawnblade
    .accept 42731 >>Accept Working With the Wardens
    .turnin 42731 >>Turn in *undefined*

    .accept 42787 >>Accept Deal With It Personally
step
    .goto 680,61.34,39.63
    >>Kill |cRXP_ENEMY_Hertha Grimdottir|r
    .complete 42787,2 --1/1 Hertha Grimdottir slain
    .mob Hertha Grimdottir
step
    .goto 650,54.50,41.39
    >>Kill |cRXP_ENEMY_Devouring Darkness|r
    .complete 42787,1 --1/1 Devouring Darkness slain
    .mob Devouring Darkness
step
    .goto 619,45.69,68.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mythunyeth|r
    .accept 89469 >>Accept Infinite Research: Dungeoneers Wanted, Heroic
    .target Mythunyeth
step
    .goto 641,52.90,79.63
    .accept 38842 >>Accept Faerie Fracas
step
    .goto 641,38.04,52.83
    >>Kill |cRXP_ENEMY_Theryssia|r
    .complete 42787,3 --1/1 Theryssia slain
    .mob Theryssia
step
    #completewith next
    .hs >>Hearth to Dalaran
step
    .goto 720,57.58,52.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belath Dawnblade|r
    .turnin 42787 >>Turn in Deal With It Personally
    .target Belath Dawnblade
    .accept 42735 >>Accept Malace in Vrykul Land
step
    .goto 627,69.78,51.19
    .complete 42735,1 --1/1 Flight from Aludane taken (Optional)
step
    .goto 634,65.15,58.80
    .complete 42735,2 --1/1 Malace Shade found
step
    .goto 634,64.88,58.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malace Shade|r
    .turnin 42735 >>Turn in Malace in Vrykul Land
    .target Malace Shade
    .accept 42736 >>Accept Rune Ruination
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar's Runestone|r
    .accept 42738 >>Accept Rune Ruination: Runelord Ragnar
    .target Ragnar's Runestone
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Floki's Runestone|r
    .accept 42739 >>Accept Rune Ruination: Runesage Floki
    .target Floki's Runestone
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rollo's Runestone|r
    .accept 42737 >>Accept Rune Ruination: Runeskeld Rollo
    .target Rollo's Runestone
step
    .goto 634,71.09,38.06
    .complete 42737,1 --1/1 Rollo's Rune
step
    .goto 634,64.91,59.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rollo's Runestone|r
    .turnin 42737 >>Turn in Rune Ruination: Runeskeld Rollo
    .target Rollo's Runestone
    .complete 42736,1 --Use Heller's Rune to deactivate his runestone
step
    .goto 634,60.30,46.02
    .complete 42739,1 --1/1 Floki's Rune
step
    .goto 634,64.97,58.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Floki's Runestone|r
    .turnin 42739 >>Turn in Rune Ruination: Runesage Floki
    .target Floki's Runestone
    .complete 42736,3 --Use Torsten's Rune to deactivate his runestone
step
    .goto 634,45.72,69.28
    .complete 42738,2 --1/1 Ragnar's Rune
step
    .goto 634,64.81,58.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar's Runestone|r
    .turnin 42738 >>Turn in Rune Ruination: Runelord Ragnar
    .target Ragnar's Runestone
    .complete 42736,2 --Use Midian's Rune to deactivate his runestone
step
    .goto 634,64.89,58.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malace Shade|r
    .turnin 42736 >>Turn in Rune Ruination
    .target Malace Shade
    .accept 42749 >>Accept Strange Bedfellows
step
    .goto 634,66.44,63.75
    .complete 42749,1 --1/1 Malace met
step
    .goto 634,66.12,63.27
    >>Kill |cRXP_ENEMY_Lochaber|r
    .complete 42749,2 --1/1 Lochaber slain
    .mob Lochaber
step
    .goto 634,66.23,63.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mythunyeth|r
    .turnin 42749 >>Turn in Strange Bedfellows
    .target Mythunyeth
    .accept 42752 >>Accept Vault of the Wardens: Vault Break-In
step
    .goto 619,45.69,68.53
    .accept 90112 >>Accept Infinite Research: Combat Studies, Elite
    step
    .goto 720,57.62,52.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belath Dawnblade|r
    .turnin 42752 >>Turn in Vault of the Wardens: Vault Break-In
    .target Belath Dawnblade
    .accept 42775 >>Accept The Crux of the Plan
step
    .goto 720,58.51,53.21
    .complete 42775,1 --1/1 Sargerite Keystone placed
step
    .goto 720,58.52,57.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 42775 >>Turn in The Crux of the Plan
    .target Kayn Sunfury
    .accept 42776 >>Accept Two Worthies
step
    .goto 720,57.64,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belath Dawnblade|r
    .turnin 42777 >>Turn in 
    .target Belath Dawnblade
    .complete 42776,1 --Belath Dawnblade recruited
step
    .goto 720,59.89,49.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Mother Malevolence|r
    .turnin 42701 >>Turn in 
    .target Matron Mother Malevolence
    .complete 42776,2 --Malevolence recruited
step
    .goto 721,55.93,61.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r
    .turnin 42776 >>Turn in Two Worthies
    .target Allari the Souleater
    .accept 42669 >>Accept Preparations for Invasion
    .turnin 42669 >>Turn in Preparations for Invasion

step
    .goto 721,59.07,74.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .accept 44694 >>Accept One Battle at a Time
    .target Jace Darkweaver


step
    .goto 680,22.69,36.69
    .complete 43943,1 --1/1 Bring 400 Ancient Mana to Thalyssra
step
    .goto 680,22.69,36.69
    .turnin 43943 >>Turn in Make Haste, Not Waste

step
    .goto 680,22.63,36.09
    .accept 44176 >>Accept The Conveniences of Home
step
    .goto 680,37.86,47.48
    .complete 44176,1 --1/1 Place the Banking Chest in Shal'aran
step
    .goto 680,37.86,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Traveler's Banking Chest|r
    .turnin 44176 >>Turn in The Conveniences of Home
    .target Traveler's Banking Chest
step
    .goto 636,17.93,40.08
    .complete 42178,1 --1/1 Transponder Charged
step
    .goto 636,17.93,40.08
    .turnin 42178 >>Turn in The Conveniences of Home

    .complete 44694,1 --10/10 World Quests completed
step
    .goto 627,73.94,41.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muninn|r
    .accept 44720 >>Accept A Call to Action
    .target Muninn
step
    .goto 721,54.23,57.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r
    .turnin 44694 >>Turn in One Battle at a Time
    .target Allari the Souleater
    .accept 42733 >>Accept A Very Special Kind of Fuel
step
    .goto 634,60.15,50.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Havi|r
    .turnin 44720 >>Turn in A Call to Action
    .target Havi
    .accept 44771 >>Accept A Threat Rises
step
    .goto 634,60.23,50.88
    .complete 44771,1 --1/1 Brought Havi Grog
step
    .goto 634,60.17,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Havi|r
    .turnin 44771 >>Turn in A Threat Rises
    .target Havi
    .accept 44721 >>Accept Helya's Conquest
step
    .goto 634,57.31,46.52
    .complete 44721,1 --1/1 Investigate Tideskorn Harbor
step
    .goto 634,55.97,41.05
    >>Kill |cRXP_ENEMY_Vagnhild|r
    .complete 44721,3 --1/1 Vagnhild slain
    .mob Vagnhild
step
    .goto 634,55.99,40.32
    >>Kill |cRXP_ENEMY_Helarjar Soulthief|r
    .complete 44721,2 --4/4 Helarjar Soulthief slain
    .mob Helarjar Soulthief
step
    .goto 634,60.15,50.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Havi|r
    .complete 44721,4 --1/1 Speak with Havi
    .target Havi
step
    .goto 634,60.14,50.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Havi|r
    .turnin 44721 >>Turn in Helya's Conquest
    .target Havi
    .accept 44729 >>Accept Trial of Valor: Odyn's Favor.complete 40072,1 --1/1 Claim the Aegis of Aggramar
.complete 40072,2 --1/1 Odyn defeated

    .accept 43349 >>Accept The Aegis of Aggramar.complete 42733,1 --15/15 Sovereign Soul
step
    .goto 721,59.17,74.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 42733 >>Turn in A Very Special Kind of Fuel
    .target Jace Darkweaver
    .accept 42754 >>Accept Jump-Capable
step
    .goto 680,31.02,85.07
    .complete 42754,1 --1/1 Portal at Felsoul Hold used (Optional)
step
    .goto 680,33.78,73.53
    .complete 42754,2 --1/1 Fel Engine Injector
step
    .goto 680,34.79,67.76
    .complete 42754,3 --1/1 Soul Configuration Matrix
step
    .goto 630,32.45,53.82
    .complete 42754,6 --1/1 Vile Spirit Converter
step
    .goto 630,26.78,49.07
    .complete 42754,4 --1/1 Portal at Faronaar used (Optional)
step
    .goto 630,28.43,52.25
    .complete 42754,5 --1/1 Fel Engine Ignition
step
    #completewith next
    .hs >>Hearth to Dalaran
step
    .goto 721,59.06,75.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 42754 >>Turn in Jump-Capable
    .target Jace Darkweaver
    .accept 42810 >>Accept A Final Offer
step
    .goto 720,58.82,82.04
    .complete 42810,1 --1/1 Fel Hammer Balcony
step
    .goto 720,59.12,93.47
    .complete 42810,2 --1/1 Kil'jaeden's Offer
step
    .goto 721,59.06,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 42810 >>Turn in A Final Offer
    .target Jace Darkweaver
    .accept 42920 >>Accept The Invasion of Niskara
step
    .goto 720,58.80,65.87
    .complete 42920,1 --1/1 Control Console activated
step
    .goto 714,27.41,41.79
    .complete 42920,2 --1/1 Jump to Niskara
    step
    .scenario 2646,1
step
step
    .scenario 2648,1
step
step
    .scenario 2652,1
step
step
    .scenario 2652,2
step
step
    .scenario 2652,3
step
step
    .scenario 2652,4
step
step
    .scenario 2654,1
step
step
    .scenario 2656,1
step
step
    .scenario 2658,1
step
step
    .scenario 2658,2
step
step
    .scenario 2660,1
step

step
    .goto 714,72.77,79.50
    >>Kill |cRXP_ENEMY_Varedis Felsoul|r
    .complete 42920,4 --1/1 Varedis Felsoul slain
    .mob Varedis Felsoul
step
    .goto 714,72.97,79.38
    >>Kill |cRXP_ENEMY_Caria Felsoul|r
    .complete 42920,3 --1/1 Caria Felsoul slain
    .mob Caria Felsoul
step
    .goto 720,58.71,57.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 42920 >>Turn in The Invasion of Niskara
    .target Kayn Sunfury
    .accept 42132 >>Accept Last, But Not Least
step
    .goto 721,62.47,48.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r
    .turnin 43184 >>Turn in 
    .target Allari the Souleater
    .complete 42132,1 --Allari the Souleater recruited
step
    .goto 721,59.03,74.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 43185 >>Turn in 
    .target Jace Darkweaver
    .complete 42132,2 --Jace Darkweaver recruited
step
    .goto 720,58.46,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 42132 >>Turn in Last, But Not Least
    .target Kayn Sunfury
    .accept 43186 >>Accept I Am the Slayer!
step
    .goto 720,58.27,55.21
    .complete 43186,1 --1/1 Honored by the Illidari
step
    .goto 720,58.50,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 43186 >>Turn in I Am the Slayer!
    .target Kayn Sunfury
    .accept 44214 >>Accept One More Thing...
step
    .goto 721,57.30,32.26
    .turnin 44214 >>Turn in One More Thing...

    .accept 43412 >>Accept A Hero's Weapon
step
    .goto 721,58.51,31.40
    .complete 43412,1 --1/1 Artifact Infused
step
    .goto 721,57.32,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 43412 >>Turn in A Hero's Weapon
    .target Kayn Sunfury
step
    .goto 627,49.08,47.79
    .complete 43349,1 --1/1 Central Dalaran teleport used
step
    .goto 629,49.12,62.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Aegis of Aggramar|r
    .turnin 43349 >>Turn in The Aegis of Aggramar
    .target The Aegis of Aggramar
step
    .goto 627,59.96,50.80
    .accept 44545 >>Accept Pressing the Assault
step
    .goto 720,58.95,54.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mythunyeth|r
    .accept 39718 >>Accept Paradise Lost
    .target Mythunyeth
    .complete 44545,1 --1/1 Next strike point chosen
step
    .goto 720,58.95,54.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mythunyeth|r
    .turnin 44545 >>Turn in Pressing the Assault
    .target Mythunyeth
step
    .goto 720,58.35,17.02
    .complete 39718,1 --1/1 Travel to Dalaran
step
    .goto 627,72.51,45.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 39718 >>Turn in Paradise Lost
    .target Archmage Khadgar
    .accept 41220 >>Accept Down to Azsuna
step
    .goto 627,69.95,51.04
    .fly Lorlathil >>Fly to Lorlathil
  >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aludane Whitecloud|r
  .target Aludane Whitecloud.complete 91721,1 --Reach Level 80
    .accept 91203 >>Accept Special Assignment: Capstone 2 - Unlock
.complete 42714,2 --1/1 Shade of Xavius defeated
>>Kill |cRXP_ENEMY_Kraxa|r
    .complete 41865,1 --1/1 Kraxa slain
    .mob Kraxa
>>Kill |cRXP_ENEMY_Dargrul the Underking|r
    .complete 41865,2 --1/1 Dargrul the Underking slain
    .mob Dargrul the Underking



]])

-- ========== Druid ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Order Hall Druid Part 1
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#next

<< Druid

step
    +test
]])

-- ========== Hunter ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Order Hall Hunter Part 1
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#next

<< Hunter

step
    +test
]])

-- ========== Mage ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Order Hall Mage Part 1
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#next

<< Mage

step
    +test
]])

-- ========== Paladin ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Order Hall Paladin Part 1
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#next

<< Paladin

step
    +test
]])

-- ========== Priest ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Order Hall Priest Part 1
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#next

<< Priest

step
    +test
]])

-- ========== Rogue ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Order Hall Rogue Part 1
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#next

<< Rogue

step
    .goto 627,72.24,43.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ravenholdt Courier|r
    .accept 40832 >>Accept Call of The Uncrowned
    .target Ravenholdt Courier


]])

-- ========== Shaman ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Order Hall Shaman Part 1
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#next

<< Shaman

step
    .goto 627,47.31,33.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 39746 >>Accept A Ring Unbroken
    .target Thrall
step
    .goto 627,73.85,43.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Stormbeak|r
    .complete 39746,1 --1/1 Fly to the Maelstrom with Mylra
    .target Stormbeak
step
    .isInScenario 1038
    .goto 725,31.52,76.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .scenario 2205,1 --1/1 Speak with Nobundo
    .target Farseer Nobundo
    .skipgossipid 45305
step
    .isInScenario 1038
    .goto 725,30.01,77.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Maelstrom Pillar|r
    .scenario 2206,3 --1/1 Help Rehgar and Erunak
step
    .isInScenario 1038
    .goto 725,33.66,81.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Screech|r
    .scenario 2206,1 --1/1 Help the Dwarves
step
    .isInScenario 1038
    .goto 725,33.66,81.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Damp Campfire|r
    .scenario 2206,2 --1/1 Help the Tauren and Trolls
step
    .isInScenario 1038
    #loop
    .goto 725,31.07,70.68,25,0
    .goto 725,30.11,84.72,25,0
    .goto 725,35.31,77.68,25,0
    >>Kill the |cRXP_ENEMY_Infernals|r
    .scenario 2207,1 --5/5 Defeat the Infernals
    .mob Infernal
step
    .isInScenario 1038
    .goto 725,30.19,76.62
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Tribemother Torra|r
    >>Use the |T135129:0|t[|cRXP_WARN_ExtraActionButton|r]
    .scenario 2208,1 --1/1 Use Torra's Spear to Bring Down the Felbat Falthus
    .target Tribemother Torra
step
    .isInScenario 1038
    .goto 725,30.01,77.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Maelstrom Pillar|r
    .scenario 2209,1 --1/1 Active the Maelstrom Pillar to Defeat Geth'xun
step
    .goto 725,29.91,77.48
    >>Complete the scenario
    .complete 39746,2 --Aid Shaman at the Maelstrom
step
    .goto 725,36.20,74.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 39746 >>Turn in A Ring Unbroken
    .accept 41335 >>Accept The Elements Call...
    .target Thrall
step
    >>Choose one of the artifacts
    .complete 41335,1 --1/1 Choose your artifact
step
    .goto 725,36.20,74.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 41335 >>Turn in The Elements Call...
    .target Thrall

-- step
--     .spec 1
--     #include a) Artifact Elemental
-- step
--     .spec 2
--     #include a) Artifact Enhancement
-- step
--     .spec 3
--     #include a) Artifact Restoration
step
    .goto 726,34.04,76.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormcaller Mylra|r
    .accept 40225 >>Accept A Ring Reforged
    .target Stormcaller Mylra
step
    .goto 726,30.25,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nobundo|r
    .complete 40225,1 --1/1 Speak to Nobundo
    .target Nobundo
    .skipgossipid 44785
step
    .goto 726,29.16,69.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ancient Rockslide|r
    .complete 40225,2 --1/1 Unearth the Heart of Azeroth
step
    .goto 726,28.99,69.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 40225 >>Turn in A Ring Reforged
    .accept 41510 >>Accept Azeroth Needs You
    .target Farseer Nobundo
step
    --TODO: Auto Pick?
    .goto 726,33.49,59.38    
    .complete 41510,1 --1/1 Initial strike point chosen
step
    .goto 726,30.38,51.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 41510 >>Turn in Azeroth Needs You
--    .accept 44406 >>Accept Aggra's Guidance
    .target Farseer Nobundo
--step
--    .goto 726,36.16,80.10
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r
--    .turnin 44406 >>Turn in Aggra's Guidance
--    .accept 43945 >>Accept Expanding Your Horizons
--    .target Aggra
step
    .goto 726,33.05,60.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Sevel|r
    .accept 42188 >>Accept Nobundo Awaits
    .target Advisor Sevel
step
    .goto 726,34.15,31.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 42188 >>Turn in Nobundo Awaits
    .accept 42114 >>Accept The Ritual of Tides
    .target Farseer Nobundo
step
    .goto 726,34.82,31.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Summoning Totem|r
    .complete 42114,1 --1/1 Ritual started
    .timer 125,Neptulon Roleplay
step
    .goto 726,34.82,31.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neptulon|r
    .turnin 42114 >>Turn in The Ritual of Tides
    .target Neptulon
step
    .goto 726,34.14,31.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .accept 42383 >>Accept Rise, Champions
    .target Farseer Nobundo
step
    .goto 726,34.14,31.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .accept 42383 >>Accept Rise, Champions
    .target Farseer Nobundo
step
    .goto 726,34.52,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormcaller Mylra|r
    .turnin 42198 >>Turn in Champion: Stormcaller Mylra
    .complete 42383,1 --1/1 Recruit Stormcaller Mylra
    .target Stormcaller Mylra
step
    .goto 726,29.55,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 42197 >>Turn in Champion: Duke Hydraxis
    .complete 42383,2 --1/1 Recruit Hydraxis
    .target Duke Hydraxis
step
    .goto 726,33.06,60.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Sevel|r
    .turnin 42383 >>Turn in Rise, Champions
    .accept 42141 >>Accept Summoner Morn
    .turnin 42141 >>Turn in Summoner Morn
    .accept 42142 >>Accept Recruiting The Troops
    .turnin 42142 >>Turn in Recruiting The Troops
    .accept 41741 >>Accept Troops in the Field
    .turnin 41741 >>Turn in Troops in the Field
    .accept 42184 >>Accept Mission: Elemental Diplomacy
    .turnin 42184 >>Turn in Mission: Elemental Diplomacy
    .accept 42977 >>Accept Servant of the Windseeker
    .target Advisor Sevel
step
    .goto 726,32.64,60.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Infinitely Mysterious Portal|r
    .complete 42977,1 --Silithus's past entered
step
    .goto 81,29.62,10.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Demitrian|r
    .turnin 42977 >>Turn in Servant of the Windseeker
    .accept 43002 >>Accept Blessed Blade of the Windseeker
    .target Highlord Demitrian
step
    --TODO: Add more check to skip it when no longer on that quest
    .zoneskip 81,1
    .goto 81,29.85,10.35
    .zone 619 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to the Infinite Bazaar|r
step
    .zoneskip 619,1
    .goto 619,45.70,67.44
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Dalaran|r
step
    #completewith next
    #label BlessedBladeOfTheWindseekerA    
    .complete 43002,1 --1/1 Thunderfury located
step
    --TODO: Title color
    #completewith BlessedBladeOfTheWindseekerA
    #title Enter the cave
    .goto 630,34.40,49.62,15 >>|cRXP_WARN_Enter the cave|r
step
    #requires BlessedBladeOfTheWindseekerA
    .goto 630,32.73,48.83
    >>|cRXP_WARN_Follow the arrow|r
    .complete 43002,1 --1/1 Thunderfury located
step
    .goto 630,32.73,48.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Damaged Thunderfury|r
    .complete 43002,2 --1/1 Collect damaged Thunderfury
step
    --TODO: Add additional checks
    .hs >>Hearth to Dalaran
step
    .zoneskip 619,1
    .goto 619,45.70,67.44
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Dalaran|r
step
    .zoneskip 627,1
    .goto 627,67.04,48.20
    .zone 726 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Dalaran|r
step
    .goto 726,33.06,60.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Sevel|r
    .turnin 43002 >>Turn in Blessed Blade of the Windseeker
    .accept 41770 >>Accept The Skies Above
    .target Advisor Sevel
step
    --TODO: Add additional checks
    .zoneskip 726,1
    .goto 726,26.62,41.27
    .zone 737 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vortex Pinnacle Portal|r
step
    .goto 737,55.21,18.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Consular Celestos|r
    .turnin 41770 >>Turn in The Skies Above
    .accept 41771 >>Accept Recharging the Blade
    .target Consular Celestos
step
    #completewith next
    #label RechargingTheBladeA
    >>Kill |cRXP_ENEMY_Vortos|r. Loot him for the |T132862:0|t[|cRXP_LOOT_Heart of Skywall|r].
    .complete 41771,1 --1/1 Heart of Skywall
    .mob Armored Mistral
    .mob Wild Vortex
    .mob Vortos
step
    #completewith RechargingTheBladeA
    .goto 737,62.44,29.11,20,0
    .goto 737,65.76,30.99,25,0
    .goto 737,61.82,34.45,25 >>Follow the way to the Cyclone Summit
step
    #requires RechargingTheBladeA
    .goto 737,54.67,45.20
    >>Kill |cRXP_ENEMY_Vortos|r. Loot him for the |T132862:0|t[|cRXP_LOOT_Heart of Skywall|r].
    .complete 41771,1 --1/1 Heart of Skywall
    .mob Armored Mistral
    .mob Wild Vortex
    .mob Vortos
step
    .goto 737,54.67,45.20
    >>Use the |T132862:0|t[|cRXP_LOOT_Heart of Skywall|r].
    .complete 41771,2 --1/1 Use the Heart of Skywall to recharge Thunderfury
    .use 135589
step
    .goto 737,58.13,49.25
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Slipstream|r
    .complete 41771,3 --1/1 Take the Slipstream to Nimbus Rise
step
    .goto 737,52.10,81.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Consular Celestos|r
    .turnin 41771 >>Turn in Recharging the Blade
    .accept 41776 >>Accept Return of the Windlord
    .target Consular Celestos
step
    .goto 737,52.33,79.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thunderaan|r
    .turnin 41776 >>Turn in Return of the Windlord
    .accept 41901 >>Accept Oath of the Windlord
    .target Thunderaan
step
    #completewith next
    #label OathOfTheWindlordA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Sevel|r
    .turnin 41901 >>Turn in Oath of the Windlord
    .accept 42986 >>Accept Enemies of Air
    .turnin 42986 >>Turn in Enemies of Air
    .accept 42996 >>Accept The Maelstrom Pillar: Air
    .accept 44465 >>Accept Recruiting Earthcallers
    .target Advisor Sevel
step
    #completewith OathOfTheWindlordA
    .goto 737,49.83,80.92
    .zone 726 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Maelstrom Portal|r
step
    #requires OathOfTheWindlordA
    .goto 726,33.06,60.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Sevel|r
    .turnin 41901 >>Turn in Oath of the Windlord
    .accept 42986 >>Accept Enemies of Air
    .turnin 42986 >>Turn in Enemies of Air
    .accept 42996 >>Accept The Maelstrom Pillar: Air
    .accept 44465 >>Accept Recruiting Earthcallers
    .target Advisor Sevel
step
    .goto 726,29.62,57.18,10,0
    .goto 726,27.36,59.61,10,0
    .goto 726,29.43,77.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Janai|r
    .turnin 42996 >>Turn in The Maelstrom Pillar: Air
    .accept 42983 >>Accept Mistral Essence
    .target Elementalist Janai
step
    .goto 726,30.25,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 41743 >>Turn in Champion: Nobundo
    .target Farseer Nobundo
step
    .goto 726,28.19,45.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Consular Celestos|r
    .turnin 41742 >>Turn in Champion: Celestos
    .target Consular Celestos
step
    .goto 726,29.23,42.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felinda Frye|r
    .turnin 44465 >>Turn in Recruiting Earthcallers
    .target Felinda Frye
step
    --TODO: Add additional checks
    .zoneskip 726,1
    .goto 726,26.62,41.27
    .zone 737 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vortex Pinnacle Portal|r
step
    #completewith next
    #label MistralEssenceA
    .goto 737,62.64,29.05,25,0
    .goto 737,65.55,32.42,25,0
    .goto 737,60.55,36.43,25,0
    .goto 737,54.82,45.60,35,0
    .goto 737,57.57,48.93
    >>Kill the |cRXP_ENEMY_Storm and Wind elementals|r. Loot them for the |T463565:0|t[|cRXP_LOOT_Mistral Essence|r].
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Slipstream|r at the end
    .complete 42983,1 --100/100 Mistral Essence
    .mob Armored Mistral
    .mob Young Storm Dragon
    .mob Gust Soldier
    .mob Wild Vortex
step
    #hidewindow
    #completewith MistralEssenceA
    .vehicle 106858 >>1
step
    #requires MistralEssenceA
    #completewith next
    #label MistralEssenceB
    .goto 737,50.80,78.08,20,0
    .goto 737,63.88,58.84
    >>Kill the |cRXP_ENEMY_Storm and Wind elementals|r. Loot them for the |T463565:0|t[|cRXP_LOOT_Mistral Essence|r].
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Slipstream|r at the end
    .complete 42983,1 --100/100 Mistral Essence
    .mob Armored Mistral
    .mob Young Storm Dragon
    .mob Gust Soldier
    .mob Wild Vortex
step
    #hidewindow
    #completewith MistralEssenceB
    .vehicle 106858 >>1
step
    #completewith next
    #label MistralEssenceC
    .goto 737,54.82,45.60,35,0
    .goto 737,60.55,36.43,25,0
    .goto 737,65.55,32.42,25,0
    .goto 737,62.64,29.05,25,0
    .goto 737,65.55,32.42,25,0
    .goto 737,60.55,36.43,25,0
    .goto 737,54.82,45.60,35,0
    .goto 737,57.57,48.93
    >>Kill the |cRXP_ENEMY_Storm and Wind elementals|r. Loot them for the |T463565:0|t[|cRXP_LOOT_Mistral Essence|r].
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Slipstream|r at the end
    .complete 42983,1 --100/100 Mistral Essence
    .mob Armored Mistral
    .mob Young Storm Dragon
    .mob Gust Soldier
    .mob Wild Vortex
step
    #hidewindow
    #completewith MistralEssenceC
    .vehicle 106858 >>1
step
    #requires MistralEssenceC
    #completewith next
    #label MistralEssenceD
    #loop
    .goto 737,50.80,78.08,20,0
    .goto 737,63.88,58.84,30,0
    >>Kill the |cRXP_ENEMY_Storm and Wind elementals|r. Loot them for the |T463565:0|t[|cRXP_LOOT_Mistral Essence|r].
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Slipstream|r at the end
    .complete 42983,1 --100/100 Mistral Essence
    .mob Armored Mistral
    .mob Young Storm Dragon
    .mob Gust Soldier
    .mob Wild Vortex
step
    .zoneskip 737,1
    .isOnQuest 42983
    #optional
    #completewith next
    #label MistralEssenceE
    .goto 737,63.88,58.84
    .vehicle 106858 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Slipstream|r at the end
step
    #hidewindow
    #completewith MistralEssenceE
    .goto 737,49.87,80.94,420 >>1
step
    .zoneskip 737,1
    .isOnQuest 42983
    .isQuestComplete 42983
    #requires MistralEssenceE
    .goto 737,49.87,80.94
    .zone 726 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Maelstrom Portal|r
step
    .goto 727,31.69,50.14,20,0
    .goto 727,29.92,57.45,20,0
    .goto 727,27.38,60.91,20,0
    .goto 726,29.45,77.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Janai|r
    .turnin 42983 >>Turn in Mistral Essence
    .accept 42984 >>Accept Eye of Azshara: The Scepter of Storms
    .target Elementalist Janai
step
    >>Queue for the dungeon |cRXP_WARN_Eye of Azshara|r or clear it solo if you're powerful enough.
    >>Kill |cRXP_ENEMY_Lady Hatecoil|r. Loot her for the |T135470:0|t[|cRXP_LOOT_Scepter of Storms|r].
    >>Kill |cRXP_ENEMY_Wrath of Azshara|r
    .complete 42984,1 --1/1 Scepter of Storms
    .complete 42984,2 --1/1 Wrath of Azshara slain
    .mob Lady Hatecoil
    .mob Wrath of Azshara
step
    .goto 726,29.45,77.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Janai|r
    .turnin 42984 >>Turn in Eye of Azshara: The Scepter of Storms
    .target Elementalist Janai
step
    .goto 726,33.03,60.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Sevel|r
    .accept 42200 >>Accept Mission: Investigating Deepholm
    .turnin 42200 >>Turn in Mission: Investigating Deepholm
    .accept 41775 >>Accept The Great Stonemother
    .target Advisor Sevel
step
    .goto 726,26.44,57.02,15,0
    .goto 726,26.18,52.50,15,0
    .goto 726,27.65,50.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Deepholm Portal|r
    .complete 41775,1 --1/1 Deepholm portal taken
step
    .goto 207,56.34,12.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therazane|r
    .turnin 41775 >>Turn in The Great Stonemother
    .accept 42068 >>Accept The Return of Twilight
    .target Therazane
step
    .goto 207,64.03,70.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muln Earthfury|r
    .turnin 42068 >>Turn in The Return of Twilight
    .accept 41777 >>Accept Destroying the Cult
    .accept 41897 >>Accept The Master's Plan
    .target Muln Earthfury
step
    #completewith TheMastersPlanA
    >>Kill the |cRXP_ENEMY_Twilight Cultists|r.
    .complete 41777,1 --15/15 Twilight Cultist slain
    .mob Twilight Darkcaller
    .mob Twilight Endbringer
    .mob Twilight Earthbreaker
step
    .goto 207,63.99,75.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_The Master's Journal pt. 1|r
    .complete 41897,1 --1/1 The Master's Journal pt. 1
step
    .goto 207,61.74,72.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_The Master's Journal pt. 2|r
    .complete 41897,2 --1/1 The Master's Journal pt. 2
step
    #label TheMastersPlanA
    .goto 207,62.38,75.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_The Master's Journal pt. 3|r
    .complete 41897,3 --1/1 The Master's Journal pt. 3
step
    #loop
    .goto 207,63.13,70.94,30,0
    .goto 207,64.77,75.53,40,0
    .goto 207,63.05,77.77,40,0
    .goto 207,62.00,72.08,40,0
    >>Kill the |cRXP_ENEMY_Twilight Cultists|r.
    .complete 41777,1 --15/15 Twilight Cultist slain
    .mob Twilight Darkcaller
    .mob Twilight Endbringer
    .mob Twilight Earthbreaker
step
    .goto 207,63.20,73.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muln Earthfury|r
    .turnin 41777 >>Turn in Destroying the Cult
    .turnin 41897 >>Turn in The Master's Plan
    .accept 41898 >>Accept Unleashing the Elements
    .accept 41899 >>Accept Held Captive!
    .target Muln Earthfury
]])

-- ========== Warlock ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Order Hall Warlock Part 1
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#next

<< Warlock

step
    +test
]])

-- ========== Warrior ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Order Hall Warrior Part 1
#subgroup |cFFFCDC00(10-80)|r Speedrun Route
#next

<< Warrior

step
    +test
]])

-- ============================================================
-- ================  GROUP LEGION REMIX: FIRST ZONE  ==========
-- ============================================================




-- ============================================================
-- ==============  GROUP SPEED LEVELING: REMIX INTRO ==========
-- ============================================================

---Intro
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Intro
#displayname |cFF00CCFF1|r - Intro|r
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next b) Order Hall Death Knight Part 1 << Death Knight
#next b) Order Hall Demon Hunter Part 1 << Demon Hunter
#next b) Order Hall Druid Part 1 << Druid
#next b) Order Hall Hunter Part 1 << Hunter
#next b) Order Hall Mage Part 1 << Mage
#next b) Order Hall Monk Part 1 << Monk
#next b) Order Hall Paladin Part 1 << Paladin
#next b) Order Hall Priest Part 1 << Priest
#next b) Order Hall Rogue Part 1 << Rogue
#next b) Order Hall Shaman Part 1 << Shaman
#next b) Order Hall Warlock Part 1 << Warlock
#next b) Order Hall Warrior Part 1 << Warrior


step
    #include RestedXP Legion Remix\a) Intro
]])

---Intro Skip
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#name ba) Intro Skip
#displayname |cFF00CCFF2|r - Intro Skip|r
#next b) Order Hall Death Knight Part 1 << Death Knight
#next b) Order Hall Demon Hunter Part 1 << Demon Hunter
#next b) Order Hall Druid Part 1 << Druid
#next b) Order Hall Hunter Part 1 << Hunter
#next b) Order Hall Mage Part 1 << Mage
#next b) Order Hall Monk Part 1 << Monk
#next b) Order Hall Paladin Part 1 << Paladin
#next b) Order Hall Priest Part 1 << Priest
#next b) Order Hall Rogue Part 1 << Rogue
#next b) Order Hall Shaman Part 1<< Shaman
#next b) Order Hall Warlock Part 1 << Warlock
#next b) Order Hall Warrior Part 1 << Warrior

step
    #include RestedXP Legion Remix\a) Intro Skip
]])

-- ============================================================
-- ==============  GROUP SPEED LEVELING: ORDERHALL ============
-- ============================================================

-- ========== Monk ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#name b) Order Hall Monk Part 1
#displayname |cFF00CCFF3|r - Order Hall Intro Monk|r
#next 

<< Monk

step
    #include RestedXP Legion Remix\a) Order Hall Monk Part 1
]])

-- ========== Death Knight ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Order Hall Death Knight Part 1
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next

<< Death Knight

step
    #include a) Order Hall Death Knight Part 1

]])

-- ========== Demon Hunter ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Order Hall Demon Hunter Part 1
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next

<< Demon Hunter

step
    #include RestedXP Legion Remix\a) Order Hall Demon Hunter Part 1


]])

-- ========== Druid ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Order Hall Druid Part 1
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next

<< Druid

step
    #include RestedXP Legion Remix\a) Order Hall Druid Part 1
]])

-- ========== Hunter ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Order Hall Hunter Part 1
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next

<< Hunter

step
    #include RestedXP Legion Remix\a) Order Hall Hunter Part 1
]])

-- ========== Mage ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Order Hall Mage Part 1
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next

<< Mage

step
    #include RestedXP Legion Remix\a) Order Hall Mage Part 1
]])

-- ========== Paladin ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Order Hall Paladin Part 1
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next

<< Paladin

step
    #include RestedXP Legion Remix\a) Order Hall Paladin Part 1
]])

-- ========== Priest ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Order Hall Priest Part 1
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next

<< Priest

step
    #include RestedXP Legion Remix\a) Order Hall Priest Part 1
]])

-- ========== Rogue ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Order Hall Rogue Part 1
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next

<< Rogue

step
    #include RestedXP Legion Remix\a) Order Hall Rogue Part 1


]])

-- ========== Shaman ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Order Hall Shaman Part 1
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next

<< Shaman

step
    #include RestedXP Legion Remix\a) Order Hall Shaman Part 1
]])

-- ========== Warlock ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Order Hall Warlock Part 1
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next

<< Warlock

step
    #include RestedXP Legion Remix\a) Order Hall Warlock Part 1
]])

-- ========== Warrior ==========
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name b) Order Hall Warrior Part 1
#subgroup |cFFFCDC00(10-80)|r Legion Remix
#next

<< Warrior

step
    #include RestedXP Legion Remix\a) Order Hall Warrior Part 1
]])

-- ============================================================
-- ================  GROUP SPEED LEVELING: FIRST ZONE  ========
-- ============================================================