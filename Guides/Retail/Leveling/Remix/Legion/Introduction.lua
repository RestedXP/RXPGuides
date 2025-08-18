-- ======================================
-- ==============  CAMPAIGN  ============
-- ======================================

RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name a) Intro
#next 
#displayname |cFF00CCFF0|r - Intro|r.
#subgroup |cFFFCDC00(1-80)|r Legion Remix
#internal

-- step
--     #completewith
--     #hidewindow
--     +1
--     .use 245925
-- step 
--     -- .isQuestTurnedIn account,89418
--     -- .achievementComplete 42313,1
--     .goto 627,72.46,45.90
--     *|cRXP_WARN_Make sure you have your desired spec selected before proceeding.|r
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
--     .complete 89404,1 --1/1 Talk to Moratari
--     .skipgossipid 134056
--     .target Moratari
step
    -- .achievementInComplete 42313,1
    .goto 627,72.46,45.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .accept 89404 >>Accept Time Crisis
    .target Moratari
step
    -- .achievementInComplete 42313,1
    .goto 627,72.46,45.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .complete 89404,1 --1/1 Talk to Moratari
    .skipgossipid 133083
    .target Moratari
step
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
    .goto 627,59.85,46.83,10 >>Enter Dalaran City
step
    #requires Legion demons purged
    #loop
    .goto 627,49.94,63.06,40,0
    .goto 627,38.87,52.98,40,0
    .goto 627,34.41,55.6,40,0
    >>Kill |cRXP_ENEMY_Demons|r
    .complete 89405,1 --Legion demons purged (100%)
    .mob Felguard Invader
    .mob Felstalker
    .mob Felstalker Broodling
    .mob Imp Scout
    .mob Felfire Imp
    --they respawn a lot here so best strat for launch
step
    .goto 627,49.29,47.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
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
    .goto 627,41.55,39.57,40 >>Leave Buildung
step
    #requires Magical barriers
    .goto 627,41.55,39.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Magical barrier|r |cRXP_WARN_from very far away|r.
    .complete 89406,2,1 --5/5 Magical barriers reinforced
step
    .goto 627,37.69,34.76
    >>Stand on the Arrow Location and click on the |cRXP_PICK_Magical barrier|r infront of you.
    *|cRXP_WARN_Make sure to do this to receive credit for all three doors at once.|r
    .complete 89406,2,4 --5/5 Magical barriers reinforced
step
    .goto 627,40.76,29.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Magical barrier|r |cRXP_WARN_from very far away|r.
    .complete 89406,2,5 --5/5 Magical barriers reinforced
step
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dusty Stone Tablet|r
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dusty Stone Tablet|r
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bent and Battered Blade|r
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
    .goto 627,43.84,30.11,10 >>Enter the Building
step
    #requires Arrived at Tanks for Everything
    #completewith next
    #label Temporal fibers0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Forge|r |cRXP_WARN_on the wall|r
    .complete 89409,2 --1/1 Anchor materials prepared
step
    #completewith Temporal fibers0
    #requires Arrived at Tanks for Everything
    .goto 627,44.52,29.61
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
    .goto 627,44.98,29.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Forge|r
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
    .goto 627,44.98,29.4
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
    .goto 627,44.98,29.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Bars|r |cRXP_WARN_on the table infront of you|r.
    .complete 89409,4 --1/1 Anchoring materials infused
step
    #requires Infinite Bronze forged
    .goto 627,44.98,29.4
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
    .goto 627,42.81,27.73
    #title |cFFFF0000STOP|r
    *|cRXP_WARN_MAKE SURE YOU HAVE YOUR DESIRED SPEC SELECTED BEFORE PROCEEDING|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .complete 90659,1 --1/1 Speak to Momentus after choosing a talent specialization
    .target Momentus
    .skipgossipid 133562
step
    .goto 627,42.78,28.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Temporal Knot|r
    .complete 90659,2 --1/1 Artifact Swapped
    .target Momentus


-- step << DemonHunter
--     .spec 1
--     .goto 627,42.81,27.69
--     .equip 16,242556 >> Equip |T135975:0|t[Twinblades of the deceiver]
-- step << Monk
--     .goto 627,42.81,27.69
--     .equip 242597
-- step << DemonHunter
--     .spec 2
--     .goto 627,42.81,27.69
--     .equip 16,242556 >> Equip |T135975:0|t[Twinblades of the deceiver] 2
-- step << DemonHunter
--     .goto 627,42.81,27.69
--     .equip 242556
-- step << DemonHunter
--     .goto 627,42.81,27.69
--     .equip 242556
-- step << DemonHunter
--     .goto 627,42.81,27.69
--     .equip 242556
-- step << DemonHunter
--     .goto 627,42.81,27.69
--     .equip 242556
-- step << DemonHunter
--     .goto 627,42.81,27.69
--     .equip 242556
-- step << DemonHunter
--     .goto 627,42.81,27.69
--     .equip 242556
-- step << DemonHunter
--     .goto 627,42.81,27.69
--     .equip 242556
-- step << DemonHunter
--     .goto 627,42.81,27.69
--     .equip 242556
-- step << DemonHunter
--     .goto 627,42.81,27.69
--     .equip 242556
-- step << DemonHunter
--     .goto 627,42.81,27.69
--     .equip 242556
step
    .goto 627,42.81,27.69
    >>Open your Character Panel, Shift + Right-Click your Artifact Weapon, learn the skill, apply changes, and place the skill on your action bars.
    -- .link /run if RemixArtifactFrame then if RemixArtifactFrame:IsShown() then RemixArtifactFrame:Hide() else RemixArtifactFrame:Show() end end >> CLICK HERE TO COPY & PASTE MACRO
    .complete 90659,3 --Purchase the Remix Time trait in your Artifact Weapon
    .use 242557
step
    .goto 627,42.81,27.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .turnin 90659 >>Turn in Something Borrowed
    .target Momentus
    .accept 89412 >>Accept Get Plenty of Exorcise
    .accept 90901 >>Accept As A Matter of Artifact
step
    .goto 627,42.40,27.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erus|r
    .accept 89411 >>Accept Scavenger Hunting
    .target Erus
step
    #hidewindow
    #completewith Scavenger Hunting
    #label Legion Armor Scraps
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r and |cRXP_FRIENDLY_Erus|r
    .turnin 89411 >>Turn in Scavenger Hunting
step
    #completewith Legion Armor Scraps
    >>Kill |cRXP_ENEMY_Demons|r. Loot them for |T134515:0|t[|cRXP_LOOT_Legion Armor Scraps|r] and |T1411837:0|t[|cRXP_LOOT_Infinite Power|r].
    .complete 89411,1 --1/1 Legion Armor Scraps
    .complete 90901,1 --250/250 Infinite Power gathered
    .mob Felstalker
    .mob Felguard Invader
step
    #label Scavenger Hunting
    #completewith Legion Armor Scraps
    .goto 627,46.47,38.67,10,0
    .goto 627,50.89,40.49,8,0
    .goto 627,50.18,41.85,8,0
    .goto 627,48.33,40.01,8,0
    .goto 627,48.06,37.29,6 >>Enter Building and go upstairs
step
    #requires Legion Armor Scraps
    .goto 627,48.06,37.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 89412,1,1 --2/2 Legion Portal Sealed
    .target Legion Portal
step
    #hidewindow
    #completewith Scavenger Hunting2
    #label Legion Armor Scraps2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r and |cRXP_FRIENDLY_Erus|r
    .turnin 89411 >>Turn in Scavenger Hunting
step
    #completewith Legion Armor Scraps2
    >>Kill |cRXP_ENEMY_Demons|r. Loot them for |T134515:0|t[|cRXP_LOOT_Legion Armor Scraps|r] and |T1411837:0|t[|cRXP_LOOT_Infinite Power|r].
    .complete 89411,1 --1/1 Legion Armor Scraps
    .complete 90901,1 --250/250 Infinite Power gathered
    .mob Felstalker
    .mob Felguard Invader
step
    #label Scavenger Hunting2
    #completewith Legion Armor Scraps2
    .goto 627,49.41,37.4,10,0
    .goto 627,58.07,46.32,20,0
    .goto 627,56.98,46.74,8,0
    .goto 627,53.1,47.46,25 >>Jump down and Enter the building
step
    #requires Legion Armor Scraps2
    #completewith next
    >>Kill |cRXP_ENEMY_Demons|r. Loot them for |T134515:0|t[|cRXP_LOOT_Legion Armor Scraps|r] and |T1411837:0|t[|cRXP_LOOT_Infinite Power|r].
    .complete 89411,1 --1/1 Legion Armor Scraps
    .complete 90901,1 --250/250 Infinite Power gathered
    .mob Felstalker
    .mob Felguard Invader
step
    #requires Legion Armor Scraps2
    .goto 627,53.1,47.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 89412,1,2 --2/2 Legion Portal Sealed
    .target Legion Portal
step
    #hidewindow
    #completewith Scavenger Hunting3
    #label Legion Armor Scraps3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r and |cRXP_FRIENDLY_Erus|r
    .turnin 89411 >>Turn in Scavenger Hunting
step
    #completewith Legion Armor Scraps3
    >>Kill |cRXP_ENEMY_Demons|r. Loot them for |T134515:0|t[|cRXP_LOOT_Legion Armor Scraps|r] and |T1411837:0|t[|cRXP_LOOT_Infinite Power|r].
    .complete 89411,1 --1/1 Legion Armor Scraps
    .complete 90901,1 --250/250 Infinite Power gathered
    .mob Felstalker
    .mob Felguard Invader
step
    #label Scavenger Hunting3
    #completewith Legion Armor Scraps3
    .goto 627,57.66,46.35,10 >>Leave the Building
step
    #requires Legion Armor Scraps3
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
    >>Open up Character Panel shift right click artifact weapon learn skill hit apply changes put skill on bars
    .complete 90901,2 --250/250 Infinite Power gathered
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r and |cRXP_FRIENDLY_Erus|r
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
    *|cRXP_WARN_You can move the Ability to your Actionbars.|r
    .usespell 1232807
step
    #requires Legion Armor Scraps
    .goto 627,42.33,27.22
    >>Click on Scrap
    .complete 89413,2 --1/1 Scrap Legion Armor Scraps
    .scrap 251901
step
    .goto 627,42.33,27.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erus|r
    .turnin 89413 >>Turn in Obliterate, Then Iterate
    .target Erus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r and |cRXP_FRIENDLY_Erus|r
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
    .goto 627,49.26,47.59
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
    .goto 627,46.28,53.18,10 >>Leave the Building
step
    #requires Storm the Citadel
    .goto 627,49.24,47.65
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
-- step
--     #completewith next
--     #label Eternal Gratitude
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
--     .turnin 89416 >>Turn in Eternal Gratitude
--     .target Eternus
--     .accept 89417 >>Accept Infinite Meetings
--     .disablecheckbox
-- step
--     #completewith Eternal Gratitude
--     .goto 619,45.66,67.89,15 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    -- #requires Eternal Gratitude
    .goto 619,45.67,68.37
    --.goto 619,45.69,68.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .turnin 89416 >>Turn in Eternal Gratitude
    .target Eternus
    .accept 89417 >>Accept Infinite Meetings
step
    --you can skyride now
    .goto 619,45.8,68.29
    --.goto 619,45.80,68.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary XVII|r
    .complete 89417,4 --1/1 Meet Hemet
    .target Hemet Nesingwary XVII
    .skipgossipid 135505
step
    .goto 619,45.81,68.17
    --.goto 619,45.84,68.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horos|r
    .complete 89417,3 --1/1 Meet Horos
    .skipgossipid 135504
    .target Horos
step
    .goto 619,45.83,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    --.accept 91955 >>Accept Just Between Us
    .complete 89417,2 --1/1 Meet Momentus, again
    .skipgossipid 133280
    .target Momentus
-- step
--     #completewith next
--     #label Meet Nostwin
--     
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r
--     .complete 89417,1 --1/1 Meet Nostwin
--     .skipgossipid 133270
-- step
--     #completewith Meet Nostwin
-- .goto 619,45.96,67.89
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r
--     .home >>Set your Hearthstone to Dalaran
-- step
--     #requires Meet Nostwin
--     .goto 619,45.96,67.89
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r
--     .complete 89417,1 --1/1 Meet Nostwin
--     .skipgossipid 133270
step
    .goto 619,45.96,67.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r
    .complete 89417,1 --1/1 Meet Nostwin
    .skipgossipid 133270
step
    .goto 619,45.49,67.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
    .complete 89417,6 --1/1 Meet Pythagorus
    .skipgossipid 135503
    .target Pythagorus
step
    .goto 619,45.48,68.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah|r
    .complete 89417,5 --1/1 Meet Larah
    .skipgossipid 135502
    .target Larah Treebender
step
    .goto 619,45.57,68.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r
    .turnin 89417 >>Turn in Infinite Meetings
    .target Eternus
    .accept 89418 >>Accept A Fixed Point in Time

----SKIP: DECIDE IF IT MAKES SENSE
step
    #completewith next 
    #label Krasus' Landing
    .link /leavevehicle >>|cRXP_WARN_CLICK HERE & COPY MACRO|r before talking to her.
    .complete 89418,1 --1/1 Fly with Moratari to Krasus' Landing
step
    #completewith Krasus' Landing
    .goto 619,45.64,67.7
    .gossipoption 133297 >>Talk to |cRXP_FRIENDLY_Moratari|r
    *|cRXP_WARN_WHEN ON DRAGON; PASTE MACRO|r
    .timer 70,RP
    .target Moratari
step
    #requires Krasus' Landing
    #label Meet Nostwin2
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .accept 91955 >>Accept Just Between Us
    .target Momentus
step
    #requires Krasus' Landing
    #completewith Meet Nostwin2
    *|cRXP_WARN_WHEN ON DRAGON; PASTE MACRO|r
    .goto 619,45.96,67.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r
    .home >>Set your Hearthstone to Dalaran
step
    #requires Meet Nostwin2
    .goto 619,45.83,68.00
    *|cRXP_WARN_WHEN ON DRAGON; PASTE MACRO|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r
    .accept 91955 >>Accept Just Between Us
    .target Momentus
step
    #completewith next
    #label Portal
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 89418,1 --1/1 Fly with Moratari to Krasus' Landing
step
    #completewith Portal
    .goto 619,45.71,67.45
    .cast 1246470 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    #requires Portal
    .goto 627,71.94,41.44
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 89418,1 --1/1 Fly with Moratari to Krasus' Landing
step
    .goto 627,72.04,41.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .turnin 89418 >>Turn in A Fixed Point in Time
    --.accept 90995 >>Accept The Future of The Fel Hammer << DemonHunter
    .target Moratari
step
    .goto 627,72.04,41.59
    .gossipoption 133762 >>Talk to |cRXP_FRIENDLY_Moratari|r
    .target Moratari


---order hall stuff





--inlinite bazaar stuff





]])

RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name ab) Intro Skip
#next
#displayname |cFF00CCFF1|r - Intro Skip
#subgroup |cFFFCDC00(1-80)|r Legion Remix
#internal

step
    -- .isQuestTurnedIn account,89418
    -- .achievementComplete 42313,1
    .goto 627,72.46,45.90
    *|cRXP_WARN_Make sure you have your desired spec selected before proceeding.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .complete 89404,1 --1/1 Talk to Moratari
    .skipgossipid 134056
    .target Moratari
step
--skyriding skip
    .goto 627,72.04,41.59
    .gossipoption 133762 >>Talk to |cRXP_FRIENDLY_Moratari|r
    .target Moratari

---order hall stuff

---infinite bazaar


]])