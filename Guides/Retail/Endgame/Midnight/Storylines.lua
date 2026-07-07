-- Omnium Folio Unlock
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Midnight
#subgroup |cFFE74C3C(90)|r Max-Level Campaigns
#name xa) Omnium Folio Unlock
#displayname Omnium Folio Unlock (12.0.7)

step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Magister's Missive|r
    .goto 2393,47.87,51.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister's Missive|r.
    .accept 96223 >>Accept The Magisters' Call
    .target Magister's Missive
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2393,38.88,48.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .turnin 96223 >>Turn in The Magisters' Call
    .accept 96225 >>Accept The Magisters' Conundrum
    .target Grand Magister Rommath
step
    #arrowtext Click on the\n|cRXP_PICK_Portal to Magisters' Terrace|r
    .goto 2393,39.06,48.90
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Magisters' Terrace|r.
    .complete 96225,1 --1/1 Take the Portal to Magisters' Terrace (Optional)
step
    #title Follow the arrow
    .goto 2649,62.90,80.81,10,0
    .goto 2649,44.44,61.38,10,0
    .goto 2649,62.28,17.00
    .complete 96225,2 --1/1 Meet Rommath and Umbric in the Magisters' Terrace Library
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Magister Umbric|r
    .goto 2649,61.72,15.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r.
    .turnin 96225 >>Turn in The Magisters' Conundrum
    .accept 96226 >>Accept Omnium Anomalies
    .target Magister Umbric
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,63.15,16.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .accept 96227 >>Accept Lycaneum Chaos
    .target Grand Magister Rommath
step
    #completewith next
    #arrowtext Click on the\n|cRXP_PICK_Folios|r and |cRXP_PICK_Sparklings|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Folios|r and |cRXP_PICK_Sparklings|r
    .complete 96227,1 --Library chaos cleansed (100%)
    .mob Energized Folio
    .mob Chaotic Sparkling
step
    #loop
    #arrowtext Click on the\n|cRXP_PICK_Omnial Anomalies|r
    .goto 2649,63.67,44.08,12,0
    .goto 2649,47.74,42.38,12,0
    .goto 2649,57.59,15.27,12,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Omnial Anomalies|r.
    *Kill the |cRXP_ENEMY_Images|r.
    .complete 96226,1 --3/3 Omnial Anomalies confronted
    .mob Image of Dar'Khan Drathir
    .mob Image of Dath'Remar Sunstrider
    .mob Image of Kael'thas Sunstrider
step
    #loop
    #arrowtext Click on the\n|cRXP_PICK_Folios|r and |cRXP_PICK_Sparklings|r
    .goto 2649,63.67,44.08,25,0
    .goto 2649,47.74,42.38,25,0
    .goto 2649,57.59,15.27,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Folios|r and |cRXP_PICK_Sparklings|r
    .complete 96227,1 --Library chaos cleansed (100%)
    .mob Energized Folio
    .mob Chaotic Sparkling
step
    #arrowtext Talk to |cRXP_FRIENDLY_Magister Umbric|r\nand |cRXP_FRIENDLY_Grand Magister Rommath|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r and |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .turnin 96226 >>Turn in Omnium Anomalies
    .goto 2649,61.71,15.17
    .target +Magister Umbric
    .turnin 96227 >>Turn in Lycaneum Chaos
    .accept 96230 >>Accept Unravelling the Wards
    .goto 2649,63.37,16.57
    .target +Grand Magister Rommath
    .accept 96228 >>Accept The Shadowed Spire
    .goto 2649,61.76,15.10
    .target +Magister Umbric
step
    #completewith next
    #label UnravellingTheWardsA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rommath|r.
    .complete 96230,1 --1/1 Speak with Rommath at the Grand Magisters' Office
    .target Rommath at the Grand Magisters' Office
step
    #completewith UnravellingTheWardsA
    #arrowtext Leave the foyer
    .goto 2649,44.90,65.35,10,0
    .goto 2649,64.85,85.81,15,0
    .goto 2649,64.05,29.02 >>Leave the foyer
step
    #requires UnravellingTheWardsA
    #arrowtext Talk to |cRXP_FRIENDLY_Rommath|r\nat the Grand Magisters' Office
    .goto 2424,58.81,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rommath|r.
    .complete 96230,1 --1/1 Speak with Rommath at the Grand Magisters' Office
    .target Rommath at the Grand Magisters' Office
    .skipgossipid 139813
step
    #arrowtext Click on the\n|cRXP_PICK_Security Ward|r
    .goto 2424,59.01,59.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Security Ward|r.
    .complete 96230,2 --1/1 First Ward unraveled
step
    #arrowtext Click on the\n|cRXP_PICK_Security Ward|r
    .goto 2424,58.99,60.31,8,0
    .goto 2424,59.45,59.30,8,0
    .goto 2424,58.92,59.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Security Ward|r.
    .complete 96230,3 --1/1 Second Ward unraveled
step
    #arrowtext Click on the\n|cRXP_PICK_Security Ward|r
    .goto 2424,57.60,59.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Security Ward|r.
    .complete 96230,4 --1/1 Third Ward unraveled
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2424,58.91,57.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .turnin 96230 >>Turn in Unravelling the Wards
    .accept 96231 >>Accept The Grand Magister's Key-Cipher
    .target Grand Magister Rommath
step
    #arrowtext Click on the\n|cRXP_PICK_Vault|r
    .goto 2424,59.33,59.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vault|r.
    .complete 96231,1 --1/1 Open the Arcane Vault (Optional)
step
    #arrowtext Kill |cRXP_ENEMY_Mirror Image of Belo'vir Salonar|r\nLoot for |T7549087:0|t[|cRXP_LOOT_Grand Magister's Key-Cipher|r]
    .goto 2424,59.02,59.50
    >>Kill the |cRXP_ENEMY_Mirror Image of Belo'vir Salonar|r. Loot him for the |T7549087:0|t[|cRXP_LOOT_Grand Magister's Key-Cipher|r].
    .complete 96231,2 --1/1 Grand Magister's Key-Cipher
    .mob Mirror Image of Belo'vir Salonar
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2424,59.06,59.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .turnin 96231 >>Turn in The Grand Magister's Key-Cipher
    .target Grand Magister Rommath
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Umbric at Dawnstar Spire|r
    .goto 2395,62.60,63.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbric at Dawnstar Spire|r.
    .complete 96228,1 --1/1 Speak with Umbric at Dawnstar Spire
    .target Umbric at Dawnstar Spire
    .skipgossipid 139725
step
    #loop
    #arrowtext Click on the\n|cRXP_PICK_Focusing Anchors|r
    .goto 2395,62.46,62.76,10,0
    .goto 2395,62.62,62.53,10,0
    .goto 2395,62.74,62.77,10,0
    .goto 2395,62.61,62.97,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Focusing Anchors|r to connect them clockwise.
    .complete 96228,2 --1/1 First Anchor connected
    .complete 96228,3 --1/1 Second Anchor connected
    .complete 96228,4 --1/1 Third Anchor connected
    .complete 96228,5 --1/1 Final Anchor Connected
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Magister Umbric|r
    .goto 2395,62.59,63.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r.
    .turnin 96228 >>Turn in The Shadowed Spire
    .accept 96229 >>Accept The Void Reveals
    .target Magister Umbric
step
    #arrowtext Click on the\n|cRXP_PICK_Revealed Gateway|r
    .goto 2395,62.61,62.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Revealed Gateway|r.
    .complete 96229,1 --1/1 Revealed Gateway Taken
step
    #arrowtext Click on the\n|cRXP_PICK_Pulsing Void Magicule|r
    .goto 2395,62.55,62.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pulsing Void Magicule|r.
    .complete 96229,2 --1/1 Void Magicule inspected (Optional)
step
    #arrowtext Kill |cRXP_ENEMY_Bound Horror from Beyond|r\nLoot for |T7554214:0|t[|cRXP_LOOT_Void Magicule|r]
    .goto 2395,62.54,62.68
    >>Kill the |cRXP_ENEMY_Bound Horror from Beyond|r. Loot it for the |T7554214:0|t[|cRXP_LOOT_Void Magicule|r].
    .complete 96229,3 --1/1 Void Magicule
    .mob Bound Horror from Beyond
step
    #completewith next
    #label TheVoidRevealsA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r.
    .turnin 96229 >>Turn in The Void Reveals
    .accept 96232 >>Accept Return to the Omnium
    .target Magister Umbric
step
    #completewith TheVoidRevealsA
    #arrowtext Click on the |cRXP_PICK_Return Gateway|r
    .goto 2395,62.52,63.11
    .subzone 3495 >>Click on the |cRXP_PICK_Return Gateway|r
step
    #requires TheVoidRevealsA
    #arrowtext Talk to\n|cRXP_FRIENDLY_Magister Umbric|r
    .goto 2395,62.55,62.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r.
    .turnin 96229 >>Turn in The Void Reveals
    .accept 96232 >>Accept Return to the Omnium
    .target Magister Umbric
step
    #arrowtext Click on the\n|cRXP_PICK_Portal to Magisters' Terrace|r
    .goto 2395,62.53,62.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Magisters' Terrace|r.
    .complete 96232,1 --1/1 Take the Portal to Magisters' Terrace (Optional)
step
    #title Follow the arrow
    #arrowtext |cFFFCDC00Follow the Arrow|r
    .goto 2649,62.44,80.42,8,0
    .goto 2649,44.36,62.00,10,0
    .goto 2649,63.67,17.95
    .complete 96232,2 --1/1 Return to the Omnium
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,63.22,16.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .turnin 96232 >>Turn in Return to the Omnium
    .accept 96233 >>Accept The Omnium Reawakens
    .target Grand Magister Rommath
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,63.22,16.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .complete 96233,1 --1/1 Sunstrider Omnium Activated
    .skipgossipid 139847
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Magister Umbric|r
    .goto 2649,60.39,10.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r.
    .turnin 96233 >>Turn in The Omnium Reawakens
    .accept 96410 >>Accept Seeking Knowledge Week 1 of 5: The Omnium Folio
    .target Magister Umbric
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,59.75,11.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .complete 96410,1 --1/1 Speak to Grand Magister Rommath
    .complete 96410,2 --1/1 Omnium Folio received
    .target Grand Magister Rommath
    .skipgossipid 139870
    .skipgossipid 139891
step
    #arrowtext Open the\n|T7554214:0|t[Omnium Folio]
    .goto 2649,60.91,13.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the new button on your minimap or use the macro in the active items window.
    .complete 96410,3 --1/1 Open your Omnium Folio and empower your first rune
    .macro Omnium Folio,7554214 >>/click ExpansionLandingPageMinimapButton
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,59.70,11.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .turnin 96410 >>Turn in Seeking Knowledge Week 1 of 5: The Omnium Folio
    .target Grand Magister Rommath
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,60.41,10.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .accept 96441 >>Accept Seeking Knowledge Week 2 of 5: Ritualized Arcana
    .target Magister Rommath
step
    #completewith Week2of5A
    #hidewindow
    .areapoiexists 2395,8615
    .goto 2395,37.57,65.26
    +1
step
    #completewith Week2of5A
    #hidewindow
    .areapoiexists 2437,8614
    .goto 2437,29.58,77.95
    +1
step
    #label Week2of5A
    >>Complete Rituals. Loot the |cRXP_ENEMY_elites|r for |T4226155:0|t[Ritualized Arcana].
    *|cRXP_WARN_Note:|r You can loot all eight arcana in one ritual (at least in the one in Zul'Aman)
    .complete 96441,1 --1/1 Ritual Sites disrupted
    .complete 96441,2 --8/8 Ritualized Arcana
step
    #completewith next
    #label RitualizedArcanaA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .turnin 96441 >>Turn in Seeking Knowledge Week 2 of 5: Ritualized Arcana
    .target Magister Rommath
step
    #completewith RitualizedArcanaA
    #arrowtext Enter the foyer
    .goto 2649,62.56,92.50,8,0
    .goto 2649,61.87,78.81
    .subzone 17068 >>Enter the foyer.
step
    #requires RitualizedArcanaA
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,44.92,60.96,10,0
    .goto 2649,59.74,10.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .turnin 96441 >>Turn in Seeking Knowledge Week 2 of 5: Ritualized Arcana
    .target Magister Rommath
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,59.74,10.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .accept 96442 >>Accept Seeking Knowledge Week 3 of 5: Leyline Assaults
    .target Magister Rommath
step
    >>Complete 5 Void Strikes :)
    .complete 96422,1 --5/5 Dark-Ley Coalescence
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,59.74,10.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .turnin 96442 >>Turn in Seeking Knowledge Week 3 of 5: Leyline Assaults
    .target Magister Rommath
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,59.74,10.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .accept 96443 >>Accept Seeking Knowledge Week 4 of 5: Magical Primessence
    .target Magister Rommath
step
    >>Loot the endboss of a dungeon, delve or the Sporefall raid. You can also open the chest of a random battleground or skirmish.
    .complete 96443,1 --1/1 Recover a Pure Magical Primessence
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,59.74,10.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .turnin 96443 >>Turn in Seeking Knowledge Week 4 of 5: Magical Primessence
    .target Magister Rommath
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,59.74,10.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .accept 96444 >>Accept Seeking Knowledge Week 5 of 5: Off-World Magic
    .target Magister Rommath
-- step
--     #arrowtext Click on the\n|cRXP_PICK_Portal to Voidstorm|r
--     .goto 2393,35.27,66.20
--     .zone 2405 >>Click on the |cRXP_PICK_Portal to Voidstorm|r.
-- step
--     .zoneskip 2600
--     #arrowtext Click on the\n|cRXP_PICK_Rift|r
--     .goto 2405,51.43,71.30
--     .zone 2599 >>Click on the |cRXP_PICK_Rift|r.
-- step
--     .zoneskip 2600
--     #arrowtext Click on the\n|cRXP_PICK_Portal|r
--     .goto 2599,49.57,97.00
--     .zone 2618 >>Click on the |cRXP_PICK_Portal|r.
step
    .zoneskip 2600
    #arrowtext Kill |cRXP_ENEMY_Imperator Pertinax|r\nLoot for |T7554216:0|t[|cRXP_LOOT_Singularian Cryocore|r]
    .goto 2618,84.38,69.58,12,0
    .goto 2618,42.60,81.31
    >>Kill |cRXP_ENEMY_Imperator Pertinax|r. Loot him for the |T7554216:0|t[|cRXP_LOOT_Singularian Cryocore|r].
    >>Kill |cRXP_ENEMY_Nexus-Captain Leth'ir|r. Loot him for the |T7548890:0|t[|cRXP_LOOT_Arcfluxion Hydrospore|r].
    >>|cRXP_WARN_NOTE:|r This quest requires multiple people and at least a tank. It's also optional so you can skip it.
    .complete 96444,1 --1/1 Recover a Fragment of Alien Void or Arcane Magic
    .mob Imperator Pertinax
step
    .zoneskip 2599
    .zoneskip 2618
    #arrowtext Kill |cRXP_ENEMY_Nexus-Captain Leth'ir|r\nLoot for |T7548890:0|t[|cRXP_LOOT_Arcfluxion Hydrospore|r]
    .goto 2600,78.4,69.2
    >>Kill |cRXP_ENEMY_Nexus-Captain Leth'ir|r. Loot him for the |T7548890:0|t[|cRXP_LOOT_Arcfluxion Hydrospore|r].
    >>|cRXP_WARN_NOTE:|r This quest requires multiple people and at least a tank. It's also optional so you can skip it.
    .complete 96444,1 --1/1 Recover a Fragment of Alien Void or Arcane Magic
    .mob Nexus-Captain Leth'ir
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Grand Magister Rommath|r
    .goto 2649,59.74,10.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Magister Rommath|r.
    .turnin 96444 >>Turn in Seeking Knowledge Week 5 of 5: Off-World Magic
    .target Magister Rommath
]])
-- The War Within Recap
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP Speed Leveling
#name a) The War Within Recap
#internal

step
    .isOnQuest 93929
    .goto 85,53.53,58.42,-1
    .goto 2112,46.40,60.23,-1
    .goto 2393,58.40,70.77,-1
    .goto 84,64.17,16.65,-1
    .goto 2339,49.46,31.76,-1
    .complete 93929,1 --Visit the Tome of History in Valdrakken
step
    .isOnQuest 93929
    .goto 85,53.53,58.42,-1
    .goto 2112,46.40,60.23,-1
    .goto 2393,58.40,70.77,-1
    .goto 84,64.17,16.65,-1
    .goto 2339,49.46,31.76,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    .turnin 93929 >>Turn in The War Within Recap
    .target Tome of History
step
    .isQuestAvailable 91843
    .goto 85,53.53,58.42,-1
    .goto 2112,46.40,60.23,-1
    .goto 2393,58.40,70.77,-1
    .goto 84,64.17,16.65,-1
    .goto 2339,49.46,31.76,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome of History|r.
    .accept 91843 >>Accept Recap: The Harbinger
    .skipgossipid 135057
    .choose 7231394
step
    #completewith next
    #hidewindow
    .gossipoption 135075 >>1
    .timer 15,Roleplay Duration
step
    .goto 85,53.53,58.42,-1
    .goto 2112,46.40,60.23,-1
    .goto 2393,58.40,70.77,-1
    .goto 84,64.17,16.65,-1
    .goto 2339,49.46,31.76,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome of History|r.
    .complete 91843,1 --1/1 Consult the Tome of History to learn about the Harbinger
    .skipgossipid 135075
step
    .goto 85,53.53,58.42,-1
    .goto 2112,46.40,60.23,-1
    .goto 2393,58.40,70.77,-1
    .goto 84,64.17,16.65,-1
    .goto 2339,49.46,31.76,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    .turnin 91843 >>Turn in Recap: The Harbinger
    .accept 91864 >>Accept Recap: Fractured Visions
    .target Tome of History
step
    .goto 85,53.53,58.42,-1
    .goto 2112,46.40,60.23,-1
    .goto 2393,58.40,70.77,-1
    .goto 84,64.17,16.65,-1
    .goto 2339,49.46,31.76,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome of History|r.
    .complete 91864,1 --1/1 Consult the Tome to learn about the Radiant Song
    .skipgossipid 135151
step
    .goto 2305,50.16,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Wait for the RP|r. Talk to the |cRXP_FRIENDLY_Alleria Windrunner|r.
    .accept 79105 >>Accept Breach
    .target Alleria Windrunner
    .skipgossipid 135151
step
    #include RestedXP Speed Leveling\a) Isle of Dorn Campaign@DalaranStart-DalaranEnd
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r and |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .turnin 78529 >>Turn in Violent Impact
    .accept 78531 >>Accept Urgent Recovery
    .goto 2248,29.45,55.07
    .target +Thrall
    .accept 78530 >>Accept Slay the Saboteurs
    .accept 80334 >>Accept Shattered Spires
    .goto 2248,29.50,55.01
    .target +Lady Jaina Proudmoore
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r and |cRXP_FRIENDLY_Thrall|r.
    .turnin 78529 >>Turn in Violent Impact
    .accept 78530 >>Accept Slay the Saboteurs
    .goto 2248,29.50,55.01
    .target +Lady Jaina Proudmoore
    .accept 78531 >>Accept Urgent Recovery
    .accept 80334 >>Accept Shattered Spires
    .goto 2248,29.45,55.07
    .target +Thrall
step
    #include RestedXP Speed Leveling\a) Isle of Dorn Campaign@DornStart-DornEnd
step
    .goto 2248,30.42,55.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelgrim|r.
    .turnin 78533 >>Turn in Secure the Beach
    .complete 91864,5 --Aid the crash survivors
    .target Baelgrim
step
    .goto 2248,30.42,55.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    .complete 91864,6 --1/1 Consult the Tome on the arrival in Dornogal
    .skipgossipid 135191
step
    .goto 2339,39.86,26.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r.
    .accept 78459 >>Accept State of the Union
    .target Merrix
    .skipgossipid 122306
step
    #completewith next
    #hidewindow
    .gossipoption 122305 >>1
    .timer 40,Roleplay Duration
step
    .goto 2339,39.86,26.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r. |cRXP_WARN_Wait for the roleplay.|r
    .complete 78459,1 --1/1 Speak to Merrix
    .skipgossipid 122306
    .skipgossipid 122305
    .target Merrix
step
    .goto 2339,39.86,26.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r.
    .turnin 78459 >>Turn in State of the Union
    .target Merrix
step
    .goto 2339,40.55,25.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .accept 78461 >>Accept The Fourth Seat
    .target Moira Thaurissan
step
    #title Use |cFFFCDC00Earthen Teleporter|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Earthen Teleporter|r.
    .goto 2339,40.74,22.38
    .complete 78461,1 --1/1 Earthen Teleporter used
step
    #label IsleOfDornB
    #title |cFFFCDC00Follow the Arrow|r.
    .goto 2339,40.69,27.07
    .complete 78461,2 --1/1 Regroup with Baelgrim at the top of Foundation Hall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Follow the arrow with your dragonriding mount|r and talk to |cRXP_FRIENDLY_Moira Thaurissan|r in Adelgonn.
    .goto 2248,41.86,72.63
    .complete 78461,3 --1/1 Adelgonn found
    .skipgossipid 122307
    .target Adelgonn
step
    .goto 2248,41.86,72.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adelgonn|r.
    .turnin 78461 >>Turn in The Fourth Seat
    .accept 78462 >>Accept Echoes of Compassion
    .target Adelgonn
step
    #loop
    .goto 2248,41.79,72.39,8,0
    .goto 2248,42.07,72.62,8,0
    .goto 2248,41.92,73.01,8,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Injured Earthen|r.
    .complete 78462,1 --5/5 Injured Earthen healed
    .target Injured Earthen
step
    .goto 2248,41.79,72.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Findorn|r.
    *|cRXP_WARN_You can't pick him up while shapeshifted|r. <<Druid/Shaman
    .complete 78462,2 --1/1 Findorn picked up
    .skipgossipid 120682
    .target Findorn
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the shade of |cRXP_FRIENDLY_Findorn|r.
    .goto 2248,41.87,72.76
    .complete 78462,3 --1/1 Findorn placed in pool
step
    #label IsleOfDornJ
    .goto 2248,41.86,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebona|r.
    .complete 78462,4 --1/1 Ebona assessed
    .timer 17,Roleplay Duration
    .skipgossipid 120684
step
    .goto 2248,41.86,72.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the roleplay. Talk to |cRXP_FRIENDLY_Adelgonn|r and |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 78462 >>Turn in Echoes of Compassion
    .target +Adelgonn
step
    #completewith next
    #hidewindow
    .gossipoption 136140 >>1
    .timer 15,Roleplay Duration
step
    .goto 2248,41.86,72.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |T2056011:0|t[Consult the Tome] in the "Active Items" window. Talk to |cRXP_FRIENDLY_Tome of History|r afterwards.
    .complete 91864,8 --1/1 Consult the Tome on the Gathering of the Stormriders
    .target Tome of History
    .skipgossipid 136140
    .usespell 1255165
step
    .goto 2339,36.05,52.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelgrim|r.
    .accept 80022 >>Accept Calling the Stormriders
    .target Baelgrim
step
    #title |cFFFCDC00Follow the Arrow|r.
    .goto 2339,32.18,35.71
    .complete 80022,1 --1/1 Meet Baelgrim outside Stormperch
step
    .goto 2339,32.18,35.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelgrim|r.
    .complete 80022,2 --1/1 Speak to Baelgrim to enter The Rookery
    .target Baelgrim to proceed
    .skipgossipid 122130
step
    #completewith VoidstoneMonstrosity
    #label TheRookeryCorruptionA
    >>Complete the follower dungeon
    *- Use the |cRXP_WARN_ZoneButton|r to toggle between leading or following the followers
    .complete 80022,3 --1/1 Corruption purged from Stormperch
    .skipgossipid 122130
step
    .isOnQuest 80022
    >>Kill |cRXP_ENEMY_Kyrioss|r.:
    *- Clear the |cRXP_ENEMY_guards|r around the |cRXP_FRIENDLY_Stormrooks|r.
    *- |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dark Fragment|r to free them.
    *- |TInterface/cursor/crosshair/interact.blp:20|tClick on a |cRXP_FRIENDLY_Stormrook|r to advance to the boss area.
    .scenario 6794,1 --1/1 Kyrioss Defeated
    .target Stormrook
    .mob Kyrioss
step
    .isOnQuest 80022
    >>Kill |cRXP_ENEMY_Stormguard Gorren|r.:
    *- Jump down and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stormrook Feather|r.
    *- Dodge the purple balls
    .scenario 6794,2 --1/1 Stormguard Gorren Defeated
    .target Stormrook
    .mob Stormguard Gorren
step
    #label VoidstoneMonstrosity
    #completewith TheRookeryCorruptionA
    .isOnQuest 80022
    >>Kill |cRXP_ENEMY_Voidstone Monstrosity|r.:
    *- Kill the |cRXP_ENEMY_Void Ascendant|r and jump down.
    *- Kill the |cRXP_ENEMY_void enemies|r before and around the boss to spawn him.
    .scenario 6794,3 --1/1 Voidstone Monstrosity Defeated
    .target Stormrook
    .mob Stormguard Gorren
step
    #requires TheRookeryCorruptionA
    .goto 2339,30.24,42.60
    >>Complete the follower dungeon
    *- Use the |cRXP_WARN_ZoneButton|r to toggle between leading or following the followers.
    .complete 80022,3 --1/1 Corruption purged from Stormperch
    .skipgossipid 122130
step
    #completewith next
    #label CallingtheStormriders
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r outside the instance.
    .turnin 80022 >>Turn in Calling the Stormriders
    .target Merrix
step
    .isOnQuest 80022
    #completewith CallingtheStormriders
    .zone 2339 >>Leave the instance group (Right-Click your player frame).
step
    #requires CallingtheStormriders
    .goto 2339,36.02,52.58
    #title |cFFFCDC00Fly over the mountain|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r.
    .turnin 80022 >>Turn in Calling the Stormriders
    .complete 91864,9 --Venture into the Rookery
    .target Merrix
step
    .goto 2339,36.02,52.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    .complete 91864,10 --1/1 Consult the Tome on nerubian incursion in Khaz Algar
    .target Tome of History
    .skipgossipid 135193
step
    .goto 2248,74.77,42.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelgrim|r.
    .accept 78544 >>Accept Bring the Thunder
    .target Baelgrim
step
    .goto 2248,74.75,42.27
    >>Use |T5483861:0|t[Place Sticky Cinderhoney] (1) |cRXP_WARN_at each of the arrowheads on the ground|r.
    *Use whatever for the remaining two
    .complete 78544,1 --6/6 Defenses placed
step
    .goto 2248,74.77,42.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelgrim|r to begin the defense.
    .complete 78544,2 --1/1 Speak to Baelgrim to begin the defense
    .target Baelgrim
    .skipgossipid 120672
step
    >>|cRXP_WARN_Use|r |T237587:0|t[Static Pulse] (3) |cRXP_WARN_to kill the |cRXP_ENEMY_Swarming Skyterror|r attacking you|r.
    >>Use |T1397637:0|t[Storm Axe] (2) to kill |cRXP_ENEMY_Enraged Colossus|r.
    >>Use |T135990:0|t[Lightning Bolt] (1) otherwise
    >>Kill |cRXP_ENEMY_Nerubians|r.
    .complete 78544,3 --Nerubians slain (100%)
    .timer 15,Roleplay Duration
    .mob Provoked Burrowfiend
    .mob Enraged Colossus
    .mob Razorfang Saboteur
    .mob Swarking Skyterror
step
    >>|cRXP_WARN_Wait for the roleplay|r.
    .complete 78544,4 --1/1 Baelgrim's plan witnessed
step
    .goto 2248,75.10,43.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adelgonn|r.
    .turnin 78544 >>Turn in Bring the Thunder
    .accept 78545 >>Accept Return to the Coreway
    .target Adelgonn
step
    #title |cFFFCDC00Click on the Tome|r.
    .goto 2248,75.10,43.72
    .complete 78545,1 --1/1 Return to Merrix in Dornogal
step
    .goto 2339,32.06,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r.
    .turnin 78545 >>Turn in Return to the Coreway
    .accept 78546 >>Accept Recompense
    .timer 11.5,Roleplay Duration
    .target Merrix
step
    .goto 2339,31.85,59.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adelgonn|r after the roleplay.
    .complete 78546,1 --1/1 Speak to Adelgonn
    .complete 78546,2 --1/1 Listen to the debriefing
    .target Adelgonn
    .skipgossipid 137812
    .skipgossipid 122368
step
    .goto 2339,32.06,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r.
    .complete 78546,3 --1/1 Witness the Coreway's restoration
    .skipgossipid 120762
    .target Merrix
step
    .goto 2339,32.06,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r.
    .turnin 78546 >>Turn in Recompense
    .complete 91864,11 --Aid the earthen at the Meadery
    .target Merrix
step
    .goto 2339,31.98,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .accept 80434 >>Accept Into the Deeps
    .target Moira Thaurissan
step
    .zoneskip 2339,1
    .isQuestAvailable 78837
    .goto 2339,32.11,59.47
    .zone 2214>>Click on the |cRXP_PICK_Tome of History|r.
step
    .goto 2214,37.94,28.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Speaker Brinthe|r.
    .turnin 80434 >>Turn in Into the Deeps
    .accept 78837 >>Accept Pomp and Dire Circumstance
    .target Speaker Brinthe
step
    .goto 2214,37.94,28.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Speaker Brinthe|r.
    .complete 78837,1 --1/1 Ask Speaker Brinthe about the High Speaker
    .target +Speaker Brinthe
    .skipgossipid 122955
step
    .goto 2214,43.03,34.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Speaker Brinthe|r.
    .turnin 78837 >>Turn in Pomp and Dire Circumstance
    .complete 91864,12 --Aid the Machine Speakers in the deeps
    .target Speaker Brinthe
step
    .goto 2214,43.03,34.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    .complete 91864,13 --Consult the Tome to learn about Taelloch
    .target Tome of History
    .skipgossipid 135196
step
    .goto 2214,64.30,62.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magni Bronzebeard|r |cRXP_WARN_next to you|r.
    .accept 78704 >>Accept Find the Foreman
    .target +Magni Bronzebeard
step
    #completewith next
    #label FindTheForemanA
    .goto 2214,64.31,64.17,0,0
    >>Kill |cRXP_ENEMY_Kol Bruncrag|r.
    .complete 78704,1 --1/1 Foreman confronted
    .mob Kol Bruncrag
step
    #title |cFFFCDC00Go up the ramp|r.
    #completewith FindTheForemanA
    .isOnQuest 78704
    .goto 2214,64.01,64.16,12 >>Navigate up the ramp.
step
    #requires FindTheForemanA
    .goto 2214,64.31,64.17
    >>Kill |cRXP_ENEMY_Kol Bruncrag|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck at "Retrieving quest data...".|r
    .complete 78704,1 --1/1 Foreman confronted
    .mob Kol Bruncrag
step
    .goto 2214,64.31,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magni Bronzebeard|r and |cRXP_FRIENDLY_Dagran Thaurissan II|r |cRXP_WARN_next to you|r.
    .turnin 78704 >>Turn in Find the Foreman
    .target +Magni Bronzebeard
    .accept 78705 >>Accept What She Saw
    .target +Dagran Thaurissan II
step
    .goto 2214,64.43,64.44
    >>|cRXP_WARN_Jump down|r and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Memory Gem|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck at "Retrieving quest data...".|r
    .complete 78705,1 --1/1 Gem examined
    .timer 58,Roleplay Duration
step
    .goto 2214,64.43,64.44
    >>Relog skips the roleplay. You can also wait for the roleplay to end.
    .complete 78705,2 --1/1 Memory viewed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagran Thaurissan II|r.
    .turnin 78705 >>Turn in What She Saw
    .goto 2214,64.41,64.35
    .target +Dagran Thaurissan II
    .accept 78706 >>Accept The High Speaker's Secret
    .goto 2214,64.39,64.33
    .target +Magni Bronzebeard
step
    .isOnQuest 78706
    #completewith next
    #label TheHighSpeakersSecretA
    .goto 2214,64.43,64.22
    +Click on the |cRXP_PICK_Tome of History|r.
step
    #hidewindow
    #completewith TheHighSpeakersSecretA
    .goto 2214,42.49,10.24,100 >>1
step
    #requires TheHighSpeakersSecretA
    .goto 2214,42.49,10.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Speaker Brinthe|r.
    .turnin 78706 >>Turn in The High Speaker's Secret
    .complete 91864,14 --Aid the Bronzebeards in finding the Foreman
    .target Speaker Brinthe
step
    .goto 2214,42.49,10.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    .complete 91864,15 --Consult the Tome to learn about the Highspeaker's reaction
    .target Tome of History
    .skipgossipid 135241
step
    .goto 2214,42.55,10.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .accept 78761 >>Accept Into the Machine
    .target Moira Thaurissan
step
    .goto 2214,42.27,8.76
    >>|cRXP_WARN_Run into the portal|r.
    .complete 78761,1 --1/1 Enter the Hall of Awakening
step
    #completewith ConfrongHighSpeaker
    >>Finish the Hall of Awakening scenario
    .complete 78761,2 --1/1 Confront the High Speaker in the Halls of Awakening
step
    .isOnQuest 78761
    .goto 2368,22.41,49.46
    #title |cFFFCDC00Follow the Arrow|r.
    >>Kill |cRXP_ENEMY_Ostiary Wystan|r and the |cRXP_ENEMY_Machinist Protectors|r.
    .scenario 6719,1 --1/1 Follow the trail of the High Speaker into the Hall of Awakening
    .mob Ostiary Wystan
    .mob Machinist Protector
step
    .isOnQuest 78761
    .goto 2368,24.78,55.32
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ironfuse Bomb|r.
    .scenario 6720,2 --1/1 Ironfuse Bomb collected
step
    .isOnQuest 78761
    .goto 2368,24.69,53.17
    >>Use the |cRXP_WARN_ExtraActionButton|r and aim the rectangle at the |cRXP_ENEMY_Inferno Sprayer|r.
    .scenario 6720,1,1 --1/4 Inferno Sprayers destroyed
step
    .isOnQuest 78761
    #completewith next
    #label InfernoSprayerB
    >>Use the |cRXP_WARN_ExtraActionButton|r and aim the rectangle at the |cRXP_ENEMY_Inferno Sprayer|r.
    .scenario 6720,1,2 --2/4 Inferno Sprayers destroyed
step
    .isOnQuest 78761
    #completewith InfernoSprayerB
    .goto 2368,28.53,51.02
    .cast 143394 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ironfuse Bomb|r.
step
    .isOnQuest 78761
    #requires InfernoSprayerB
    .goto 2368,26.37,53.12
    >>Use the |cRXP_WARN_ExtraActionButton|r and aim the rectangle at the |cRXP_ENEMY_Inferno Sprayer|r.
    .scenario 6720,1,2 --2/4 Inferno Sprayers destroyed
step
    .isOnQuest 78761
    #completewith next
    #label InfernoSprayerC
    >>Use the |cRXP_WARN_ExtraActionButton|r and aim the rectangle at the |cRXP_ENEMY_Inferno Sprayer|r.
    .scenario 6720,1,3 --3/4 Inferno Sprayers destroyed
step
    .isOnQuest 78761
    #completewith InfernoSprayerC
    .goto 2368,28.59,48.15
    .cast 143394 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ironfuse Bomb|r.
step
    .isOnQuest 78761
    #requires InfernoSprayerC
    .goto 2368,26.40,45.97
    >>Use the |cRXP_WARN_ExtraActionButton|r and aim the rectangle at the |cRXP_ENEMY_Inferno Sprayer|r.
    .scenario 6720,1,3 --3/4 Inferno Sprayers destroyed
step
    .isOnQuest 78761
    #completewith next
    #label InfernoSprayerD
    >>Use the |cRXP_WARN_ExtraActionButton|r and aim the rectangle at the |cRXP_ENEMY_Inferno Sprayer|r.
    .scenario 6720,1,4 --4/4 Inferno Sprayers destroyed
step
    .isOnQuest 78761
    #completewith InfernoSprayerD
    .goto 2368,28.47,47.98
    .cast 143394 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ironfuse Bomb|r.
step
    .isOnQuest 78761
    #requires InfernoSprayerD
    .goto 2368,24.64,45.98
    >>Use the |cRXP_WARN_ExtraActionButton|r and aim the rectangle at the |cRXP_ENEMY_Inferno Sprayer|r.
    .scenario 6720,1 --4/4 Inferno Sprayers destroyed
    .timer 45,Roleplay Duration
step
    .isOnQuest 78761
    .goto 2368,37.50,49.54
    #title |cFFFCDC00Follow the Arrow|r.
    >>You have to wait for |cRXP_FRIENDLY_Dagran Thaurissan II|r to open each of the doors.
    .scenario 6941,1 --1/1 Journey Onward
step
    .isOnQuest 78761
    .goto 2368,39.3,43.68,10,0
    .goto 2368,41.96,41.79,5,0
    .goto 2368,42.75,45.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Earthen Console|r.
    .scenario 6729,1 --1/1 Help Dagran activate the Runelock sequence
step
    .isOnQuest 78761
    #loop
    .goto 2368,43.78,43.25,30,0
    .goto 2368,44.22,56.47,30,0
    >>Kill the attacking |cRXP_ENEMY_Skardyn forces|r.
    *|cRXP_WARN_If the mobs stop spawning, check if one of them is still attacking other NPCs|r.
    .scenario 6730,1 --1/1 Protect Dagran while he solves the Runelock combination
    .mob Skardyn Remnants
    .mob Skardyn Metamorphosis
    .mob Deranged Skardyn
    .mob Enraged Skardyn
    .mob Deviant Skardyn
    .mob Void Crystal Monstrosity
step
    .isOnQuest 78761
    .goto 2368,53.33,49.49
    >>|cRXP_WARN_Follow the arrow into the next chamber|r.
    *|cRXP_WARN_If the door doesn't open, check if one of the NPCs is still fighting at the entrance of the chamber|r.
    .scenario 6732,1 --1/1 Enter the Annihilation Interface
    .timer 30,Roleplay Duration
step
    .isOnQuest 78761
    .goto 2368,59.84,49.47
    >>Kill the |cRXP_ENEMY_Earthen-Ward Sentinel|r and |cRXP_ENEMY_Iron-Runed Protector|r.
    *|cRXP_WARN_You can only attack the one without the shield|r.
    *|cRXP_WARN_Make sure to be in combat with both of them otherwise you have to wait for the full shield duration|r.
    .scenario 6732,2 --1/1 Earthen-Ward Sentinel slain
    .scenario 6732,3 --1/1 Iron-Runed Protector slain
    .mob Earthen-Ward Sentinel
    .mob Iron-Runed Protector
step
    .isOnQuest 78761
    .goto 2368,70.95,45.09,15,0
    .goto 2368,74.15,45.18,15,0
    .goto 2368,76.72,48.12,15,0
    .goto 2368,79.54,49.49
    >>|cRXP_WARN_Follow the arrow into the final chamber. You can already attack |cRXP_ENEMY_Master Machinist Dunstan|r and kill the mech but don't kill the earthen,|r.
    .scenario 6943,1 --1/1 Enter the final chamber
    .timer 30,Roleplay Duration
step
    .isOnQuest 78761
    .goto 2368,85.42,49.44
    >>Kill |cRXP_ENEMY_Master Machinist Dunstan|r.
    .scenario 6738,1 --1/1 Master Machinist Dunstan defeated
    .mob Master Machinist Dunstan
step
    .isOnQuest 78761
    #label ConfrongHighSpeaker
    .goto 2368,91.12,49.34
    #title |cFFFCDC00Follow the Arrow|r.
    -- *|cRXP_WARN_DON'T CANCEL THE CINEMATIC IMMEDIATELY|r.
    .scenario 6739,1 --1/1 Confront High Speaker Eirich at the Awakening Machine
step
    .goto 2214,42.27,8.76
    #title |cFFFCDC00DON'T CANCEL THE CINEMATIC|r.
    >>Finish the Hall of Awakening scenario.
    .complete 78761,2 --1/1 Confront the High Speaker in the Halls of Awakening
step
    .goto 2214,43.00,34.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 78761 >>Turn in Into the Machine
    .target Moira Thaurissan
step
    .goto 2214,43.00,34.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    .turnin 91864 >>Turn in Recap: Fractured Visions
    .accept 91868 >>Accept Recap: Shadowy Pursuits
    .target Tome of History
step
    .goto 2214,43.00,34.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck at "Retrieving quest data...".|r
    .complete 91868,1 --
    .target Tome of History
    .skipgossipid 136034
step
    .goto 2214,42.92,32.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r.
    .accept 78658 >>Accept The Hallowed Path
    .target Anduin Wrynn
step
    .goto 2214,36.47,24.18
    #title |cFFFCDC00Follow the Arrow|r.
    .complete 78658,1 --Find the Gate to Hallowfall
step
    .goto 2215,77.18,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78658,2 --1/1 Speak with Anduin in Hallowfall
    .target Anduin Wrynn
    .skipgossipid 120906
step
    .goto 2215,68.40,45.11
    #title |cFFFCDC00Follow the Arrow|r.
    >>|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78658,3 --Meet the Arathi in Dunelle's Kindness
    .timer 28,Roleplay Duration
step
    .goto 2215,68.41,45.02,5,0
    .goto 2215,68.40,45.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin|r.
    .turnin 78658 >>Turn in The Hallowed Path
    .accept 78659 >>Accept Where the Light Touches
    .target Faerin
step
    #completewith next
    #hidewindow
    .complete 78659,1 --1/1 Ride with Faerin to the Aegis Wall (Optional)
    .timer 93,Roleplay Duration
step
    #completewith next
    #title |cFFFCDC00Follow the Arrow|r.
    >>You can also take the cart but it's a lot slower
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78659,2 --1/1 Arrive at the Aegis Wall
step
    .goto 2215,71.61,57.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Great Kyron|r.
    .turnin 78659 >>Turn in Where the Light Touches
    .complete 91868,2 --Aid Anduin in Hallowfall
    .target Great Kyron
step
    .goto 2215,71.61,57.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    .complete 91868,3 --
    .skipgossipid 135244
step
    .goto 2215,56.91,68.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .accept 78671 >>Accept The Light of the Dawntower
    .target Anduin Wrynn
step
    .goto 2215,54.11,64.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78671,1 --1/1 Witness the lighting of the dawntower
    .target Anduin Wrynn
    .skipgossipid 120738
step
    .goto 2215,54.11,64.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .turnin 78671 >>Turn in The Light of the Dawntower
    .complete 91868,4 --Aid Anduin and Faerin
    .target Faerin
step
    .goto 2215,54.11,64.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    *|cRXP_WARN_DON'T RELOAD UNTIL THE ROLEPLAY IS OVER. Type /reload into the chat when |cRXP_FRIENDLY_Faerin|r is standing in front of you again.|r
    .complete 91868,5 --
    .skipgossipid 137362
step
    .goto 2215,54.11,64.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |T2056011:0|t[Consult the Tome]. Talk to |cRXP_FRIENDLY_Tome of History|r afterwards.
    *|cRXP_WARN_DON'T RELOAD UNTIL THE ROLEPLAY IS OVER. Type /reload into the chat when |cRXP_FRIENDLY_Faerin|r is standing in front of you again.|r
    *|cRXP_WARN_NOTE:|r If you can't use the ability then restart your game with ALT+F4.
    .complete 91868,6 --
    .skipgossipid 135246
    .usespell 1255165
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Steelstrike|r and |cRXP_FRIENDLY_Alleria Windrunner|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .accept 78620 >>Accept Crossroads of Twilight
    .goto 2215,41.06,54.76
    .target +General Steelstrike
    .accept 78621 >>Accept The Shadow Rising
    .goto 2215,41.05,54.67
    .target +Alleria Windrunner
step
    #completewith LighteaterSlain
    >>Kill the |cRXP_ENEMY_Ragefin forces|r or |cRXP_ENEMY_Darkwater Tidecrushers|r.
    .complete 78620,1 --15/15 Kobyss Attackers slain
    .mob Ragefin Carver
    .mob Ragefin Executioner
    .mob Darkwater Tidecrusher
step
    .goto 2215,35.03,56.86
    >>Kill |cRXP_ENEMY_Heartfang|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78621,2 --1/1 Heartfang slain
    .mob Heartfang
step
    .goto 2215,34.87,54.64
    >>Kill |cRXP_ENEMY_Old Grim|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78621,1 --1/1 Old Grim slain
    .mob Old Grim
step
    #label LighteaterSlain
    .goto 2215,35.08,52.37
    >>Kill |cRXP_ENEMY_Lighteater|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78621,3 --1/1 Lighteater slain
    .mob Lighteater
step
    #loop
    .goto 2215,36.96,54.72,35,0
    .goto 2215,35.05,59.01,45,0
    .goto 2215,34.15,52.46,45,0
    >>Kill the |cRXP_ENEMY_Ragefin forces|r or |cRXP_ENEMY_Darkwater Tidecrushers|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78620,1 --15/15 Kobyss Attackers slain
    .mob Ragefin Carver
    .mob Ragefin Executioner
    .mob Darkwater Tidecrusher
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r and |cRXP_FRIENDLY_General Steelstrike|r.
    .turnin 78621 >>Turn in The Shadow Rising
    .goto 2215,34.07,54.74
    .target +Alleria Windrunner
    .turnin 78620 >>Turn in Crossroads of Twilight
    .accept 78624 >>Accept A Candle in the Dark
    .goto 2215,34.07,54.68
    .target +General Steelstrike
step
    .isOnQuest 78624
    .goto 2215,34.07,54.74
    .gossipoption 121810 >>Talk to |cRXP_FRIENDLY_Alleria Windrunner|r.
    .timer 21,Roleplay Duration
    .target Alleria Windrunner
step
    .goto 2215,33.41,54.60
    #title |cFFFCDC00Follow the Arrow|r.
    >>|cRXP_WARN_Wait for the roleplay|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78624,1 --1/1 Have Alleria bring down the void bubble
    .target Alleria Windrunner
step
    .goto 2215,33.41,54.60
    >>Kill |cRXP_ENEMY_Aelric Leid|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78624,2 --1/1 Aelric Leid slain
    .mob Aelric Leid
step
    .goto 2215,33.62,54.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Steelstrike|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .turnin 78624 >>Turn in A Candle in the Dark
    .complete 91868,7 --Aid the Arathi against the Order of Night
    .target General Steelstrike
step
    .goto 2215,33.62,54.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 91868,8 --
    .skipgossipid 135248
step
    .goto 2215,38.78,81.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .accept 78630 >>Accept The Rise of the Reckoning
    .target Faerin Lothar
step
    .goto 2215,38.87,81.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rope Ladder|r.
    *|cRXP_WARN_Click on it only once. Wait afterwards|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78630,1 --1/1 The Reckoning boarded
step
    .goto 2215,38.87,81.59
    >>Use |T1508065:0|t[Ballista Strike] (1) and |T135926:0|t[Faerin's Spear Strike] (2)  to kill the |cRXP_ENEMY_Nerubian forces|r.
    >>Use |T4914669:0|t[Alleria's Hungering Void] (3) in combination with (2)
    >>Use |T450908:0|t[Switch Focus] (5) to switch to different positions
    *|cRXP_WARN_Ignore the |cRXP_ENEMY_Crypt Lords|r as they take multiple hits to kill|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78630,2 --175/175 Nerubian forces slain
step
    .isOnQuest 78630
    .exitvehicle >>Use |T252175:0|t[Leave The Reckoning] (6)
step
    .goto 2255,29.39,42.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .turnin 78630 >>Turn in The Rise of the Reckoning
    .complete 91868,9 --Aid Alleria and Faerin against the nerubians
    .target Faerin
step
    .goto 2255,29.39,42.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 91868,10 --
    .skipgossipid 135253
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .accept 78348 >>Accept Friends in Low Places
    .goto 2255,32.49,47.14
    .target +Faerin
step
    .goto 2255,33.37,55.54
    #title |cFFFCDC00Follow the Arrow|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78348,1 --1/1 Jump into the Breathing Pit (Optional)
step
    .goto 2255,32.99,56.38
    #title |cFFFCDC00Follow the Arrow|r.
    .complete 78348,2 --1/1 Mysterious Protector Found
step
    .goto 2255,32.99,56.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r.
    .turnin 78348 >>Turn in Friends in Low Places
    .accept 78352 >>Accept For Naught, So Vial
    .accept 78353 >>Accept Fear the Old Blood
    .target Orweyna
step
    #completewith ForNaughtSoVial
    .isOnQuest 78353
    >>Kill |cRXP_ENEMY_Horrid Effusia|r or |cRXP_ENEMY_Blackblood Coalescence|r.
    .complete 78353,1 --The Breathing Pit Cleansed (100%)
    .mob Horrid Effusia
    .mob Blackblood Coalescence
step
    #title Nerubian Extractor (1/8)
    .goto 2255,33.62,56.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nerubian Extractor|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78352,1,1 --1/8 Nerubian Extractor
step
    #title Nerubian Extractor (2/8)
    .goto 2255,34.00,56.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nerubian Extractor|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78352,1,2 --2/8 Nerubian Extractor
step
    #title Nerubian Extractor (3/8)
    .goto 2255,33.71,54.75
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nerubian Extractor|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78352,1,3 --3/8 Nerubian Extractor
step
    #title Nerubian Extractor (4/8)
    .goto 2255,32.74,55.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nerubian Extractor|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78352,1,4 --4/8 Nerubian Extractor
step
    #title Nerubian Extractor (5/8)
    .goto 2255,32.85,55.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nerubian Extractor|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78352,1,5 --5/8 Nerubian Extractor
step
    #title Nerubian Extractor (6/8)
    .goto 2255,33.26,56.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nerubian Extractor|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78352,1,6 --6/8 Nerubian Extractor
step
    #title Nerubian Extractor (7/8)
    .goto 2255,33.99,57.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nerubian Extractor|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78352,1,7 --7/8 Nerubian Extractor
step
    #label ForNaughtSoVial
    #title Nerubian Extractor (8/8)
    .goto 2255,34.38,57.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nerubian Extractor|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78352,1 --8/8 Nerubian Extractor
step
    .goto 2255,33.79,56.70
    >>Kill |cRXP_ENEMY_Horrid Effusia|r or |cRXP_ENEMY_Blackblood Coalescence|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78353,1 --The Breathing Pit Cleansed (100%)
    .mob Horrid Effusia
    .mob Blackblood Coalescence
step
    .goto 2255,35.71,58.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .turnin 78352 >>Turn in For Naught, So Vial
    .turnin 78353,1 >>Turn in Fear the Old Blood
    .complete 91868,11 --
    .target Orweyna
step
    .goto 2255,35.71,58.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 91868,12 --
    .skipgossipid 135255
step
    .goto 2255,55.73,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Widow Arak'nai|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .accept 78226 >>Accept A Most Intriguing Invitation
    .target Widow Arak'nai
step
    .goto 2255,55.97,43.53
    >>Use the |cRXP_WARN_ExtraActionButton|r at the waypoint location.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78226,1 --1/1 Apply Pheromones
step
    .goto 2255,55.74,44.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Tome of History|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78226,2 --1/1 Take Tome of History to city
    .target Tome of History
step
    #title Follow the arrow
    .goto 2216,66.43,26.55
    >>|cRXP_WARN_NOTE:|r It can bug out. Run around the waypoint until it triggers the quest completion.
    .complete 78226,3 --1/1 Arrive in the Burrows
step
    .goto 2216,66.63,31.07
    #title |cFFFCDC00Follow the Arrow|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78226,4 --1/1 Meet The Vizier
    .timer 22,Roleplay Duration
step
    #label AzjkahetK
    .goto 2216,67.11,31.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r |cRXP_WARN_after the rolepla|r.
    .turnin 78226 >>Turn in A Most Intriguing Invitation
    .accept 78228 >>Accept Into a Skittering City
    .target Anduin Wrynn
step
    .goto 2216,67.48,32.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Vizier|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78228,1 --1/1 Speak with the Vizier
    .target the Vizier
    .skipgossipid 121538
step
    .goto 2216,67.00,32.58
    >>Use the |cRXP_WARN_ExtraActionButton|r at the waypoint location.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 78228,2 --1/1 Have Tulumun apply the Pheromones
step
    .goto 2216,67.46,32.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Nizrek|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .turnin 78228 >>Turn in Into a Skittering City
    .complete 91868,13 --Survive the political machinations of Azj-Kahet
    .timer 26,Roleplay Duration
    .target Executor Nizrek
step
    .goto 2216,67.46,32.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 91868,14 --1/1 Consult the Tome to learn about what Alleria and Anduin did next
    .target Tome of History
    .skipgossipid 135257
step
    .goto 2213,55.29,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r.
    .accept 78244 >>Accept Kaheti Hospitality
    .target Anduin Wrynn
step
    .goto 2213,55.29,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r.
    *|cRXP_WARN_Make sure everyone in your group has the quest before queueing for the scenario|r.
    .complete 78244,1 --1/1 Speak with Anduin
    .target Anduin Wrynn
    .skipgossipid 120665
step
    #completewith EscapeFromTheBurrows
    >>Finish the Escape The Burrows scenario
    *|cRXP_WARN_DISCLAIMER: Waypoints are currently not working in this scenario!|r.
    .goto 2213,55.29,46.08,0,0
    .complete 78244,2 --1/1 Escape from The Burrows
    .skipgossipid 120665
-- TODO: Find a way to fix waypoints
step
    .isOnQuest 78244
    >>Kill the incoming |cRXP_ENEMY_Nerubian forces|r.
    *|cRXP_WARN_No Arrow possible|r.
    .scenario 6910,1 --Defeat Threadmaestro's troop (100%)
    .mob Sureki String Leader
    .mob Heelripper
    .mob Crawler
    .mob Sureki String Conductor
    .mob Gahn'dante
    .mob Al'haggro
step
    .isOnQuest 78244

    >>Kill |cRXP_ENEMY_Threadmaestro Fothis|r.
    *|cRXP_WARN_No Arrow possible|r.
    .scenario 6910,2 --1/1 Threadmaestro Fothis slain
    .mob Threadmaestro Fothis
    .mob Kra'jhendo
step
    .isOnQuest 78244
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Web Blockade|r.
    *|cRXP_WARN_No Arrow possible|r.
    .scenario 6910,3 --1/1 Destroy the Web Wall
step
    .isOnQuest 78244
    >>Kill |cRXP_ENEMY_Swarm-Maven Donmiss|r.
    *|cRXP_WARN_No Arrow possible|r.
    *|cRXP_WARN_Dodge the green bomb impacts as they knock you back|r.
    .scenario 6911,1 --1/1 Swarm-Maven Donmiss slain
    .mob Swarm-Maven Donmiss
step
    .isOnQuest 78244
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on any |cRXP_FRIENDLY_Vizier's Getaway Flyer|r.
    *|cRXP_WARN_No Arrow possible|r.
    .scenario 6912,1 --1/1 Vizier's Flyers reached
    .target Vizier's Getaway Flyer
step
    .isOnQuest 78244
    >>Run into the wall and Kill |cRXP_ENEMY_Kx, Fang of the Queen|r.
    *|cRXP_WARN_No Arrow possible|r.
    .scenario 6917,1 --1/1 Kx, Fang of the Queen slain
    .mob Kx, Fang of the Queen
step
    .isOnQuest 78244
    #label EscapeFromTheBurrows
    >>|cRXP_WARN_Jump down!|r.
    *|cRXP_WARN_No Arrow possible|r.
    .scenario 6918,1 --1/1 JUMP!
    .timer 30,Roleplay Duration
step
    >>Finish the Escape The Burrows scenario
    .goto 2213,55.29,46.08
    .complete 78244,2 --1/1 Escape from The Burrows
    .timer 40,Roleplay Duration NYI
    .skipgossipid 120665
step
    .goto 2255,60.62,68.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r |cRXP_WARN_after the roleplay|r.
    .turnin 78244 >>Turn in Kaheti Hospitality
    .complete 91868,15 --Aid Alleria and Anduin
    .target Anduin Wrynn
step
    .goto 2255,60.62,68.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 91868,16 --1/1 Consult the Tome
    .target Tome of History
    .skipgossipid 135261
step
    .goto 2248,57.06,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r.
    .accept 79156 >>Accept The Edicts
    .target Merrix
step
    .goto 2248,57.06,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r.
    .complete 79156,1 --1/1 Report to Merrix
    .target Merrix
    .skipgossipid 121537
step
    .goto 2248,57.06,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r.
    .turnin 79156 >>Turn in The Edicts
    .complete 91868,17 --Aid the earthen
    .target Merrix
step
    .goto 2248,57.06,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |T2056011:0|t[Consult the Tome] in the "Active Items" window. Talk to |cRXP_FRIENDLY_Tome of History|r afterwards.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 91868,18 --
    .skipgossipid 137367
    .usespell 1255165
step
    .goto 2248,57.06,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |T2056011:0|t[Consult the Tome]. Talk to |cRXP_FRIENDLY_Tome of History|r afterwards.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 91868,19 --
    .skipgossipid 135276
    .usespell 1255165
step
    .goto 2215,64.53,61.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r.
    .accept 78948 >>Accept A Light in the Dark
    .target Anduin Wrynn
step
    .goto 2215,64.53,61.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r.
    .complete 78948,1 --1/1 Speak with Anduin to chase down Xal'atath
    .target Anduin Wrynn
    .skipgossipid 122377
step
    .isOnQuest 78948
    .goto 2215,64.53,61.79
    .enterScenario 2416 >>Enter the |cRXP_PICK_A Light in the Dark|r scenario.
step
    .isInScenario 2416
    .goto 2330,73.50,53.20,25,0
    .goto 2330,63.31,73.70
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Corrupted Flame|r and wait for a few seconds.
    *|cRXP_WARN_NOTE:|r Kill all enemies near the path because otherwise your friendly NPCs get stuck and you need them.
    *Use the |T1030102:0|t[|cRXP_WARN_ExtraActionButton|r] to regain Hope.
    .scenario 7008,1 --South Brazier Lit
step
    .isInScenario 2416
    .goto 2330,73.51,45.44,20,0
    .goto 2330,65.10,33.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Corrupted Flame|r and wait for a few seconds.
    *|cRXP_WARN_NOTE:|r Kill all enemies near the path because otherwise your friendly NPCs get stuck and you need them.
    .scenario 7008,2 --North Brazier Lit
step
    .goto 2330,69.81,49.34,15,0
    .goto 2330,60.94,50.52
    .isInScenario 2416
    >>Kill |cRXP_ENEMY_Shadesworn Crusher|r
    .scenario 7009,1 --Shadesworn Crusher slain
    .mob Shadesworn Crusher
step
    .isInScenario 2416
    .goto 2330,56.58,51.20
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Oil Brazier|r.
    .scenario 7010,1 --Holy Oilwell cleansed
step
    .goto 2330,45.51,65.79,25,0
    .goto 2330,38.21,54.32
    .isInScenario 2416
    >>Kill |cRXP_ENEMY_Broken Queen|r
    .scenario 7012,1 --Broken Queen slain
    .mob Broken Queen
step
    #arrowtext |cRXP_WARN_Follow the arrow|r
    .isInScenario 2416
    .goto 2330,26.58,56.10
    .scenario 7013,1 --Enter the Priory
    .complete 78948,2 --Defeat Xal'atath
step
    .goto 2215,35.94,35.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r.
    .turnin 78948 >>Turn in A Light in the Dark
    .accept 83503 >>Accept Return to Dornogal
    .target Alleria Windrunner
step
    .isOnQuest 83503
    .goto 2215,36.10,35.43
    .zone 2339 >>Click on the |cRXP_PICK_Tome of History|r.
step
    .goto 2339,39.85,26.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r.
    .complete 83503,1 --1/1 Report back to Merrix in Dornogal
    .target Merrix
    .skipgossipid 123407
step
    .goto 2339,40.54,25.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 83503 >>Turn in Return to Dornogal
    .complete 91868,20 --Aid Alleria, Anduin, and Faerin
    .target Moira Thaurissan
step
    .goto 2339,40.54,25.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome of History|r.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .complete 91868,21 --1/1 Consult Tome
    .target Tome of History
    .skipgossipid 136269
step
    .goto 2248,57.06,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |T2056011:0|t[Consult the Tome]. Talk to |cRXP_FRIENDLY_Tome of History|r afterwards.
    *|cRXP_WARN_Type /reload into the chat if this step is stuck.|r
    .turnin 91868 >>Turn in Recap: Shadowy Pursuits
    .accept 91871 >>Accept Recap: The Dark Heart
    .target Tome of History
    .usespell 1255165
step
    .goto 2248,57.06,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |T2056011:0|t[Consult the Tome]. Talk to |cRXP_FRIENDLY_Tome of History|r afterwards.
    *|cRXP_WARN_NOTE:|r If you can't use the ability then restart your game with ALT+F4.
    .complete 91871,1 --1/1 Consult the Tome to learn about Xal'atath and Gallywix's deal
    .target Tome of History
    .skipgossipid 135278
    .usespell 1255165
step
    .goto 2248,57.06,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |T2056011:0|t[Consult the Tome]. Talk to |cRXP_FRIENDLY_Tome of History|r afterwards.
    *|cRXP_WARN_NOTE:|r If you can't use the ability then restart your game with ALT+F4.
    .complete 91871,2 --1/1 Consult the Tome on the events in Undermine
    .target Tome of History
    .skipgossipid 135280
    .usespell 1255165
step
    .goto 2346,29.46,69.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r.
    .accept 83126 >>Accept Ethereal Invasion
    .accept 85449 >>Accept Phase Shift
    .target Alleria Windrunner
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Ethereals|r
    .complete 83126,1 --10/10 Ethereals slain
    .mob Ethereal Warpblade
    .mob Ethereal Mind-Scraper
step
    #loop
    .goto 2346,30.47,74.80,15,0
    .goto 2346,34.10,69.96,15,0
    .goto 2346,28.81,63.09,15,0
    .goto 2346,26.31,69.16,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Resonance|r
    .complete 85449,1 --4/4 Phase Resonance destroyed
step
    #loop
    .goto 2346,28.81,63.09,25,0
    .goto 2346,34.10,69.96,25,0
    .goto 2346,30.47,74.80,25,0
    .goto 2346,30.64,69.69,25,0
    .goto 2346,26.31,69.16,25,0
    >>Kill the |cRXP_ENEMY_Ethereals|r
    .complete 83126,1 --10/10 Ethereals slain
    .mob Ethereal Warpblade
    .mob Ethereal Mind-Scraper
step
    .goto 2346,29.50,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r |cRXP_WARN_next to you|r.
    .turnin 85449 >>Turn in Phase Shift
    .turnin 83126 >>Turn in Ethereal Invasion
    .accept 85450 >>Accept Evacuation Plan
    .target Alleria Windrunner
step
    #completewith next
    #label SpeakGazloweLaboratory
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .complete 85450,1 --1/1 Speak to Gazlowe inside the laboratory
    .target Monte Gazlowe
step
    #completewith SpeakGazloweLaboratory
    #title Enter the laboratory
    .goto 2346,29.00,69.66,5 >>Enter the laboratory
step
    #requires SpeakGazloweLaboratory
    #completewith next
    #hidewindow
    .gossipoption 125342 >>Talk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .timer 30,Roleplay
step
    #requires SpeakGazloweLaboratory
    .goto 2346,26.92,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .complete 85450,1 --1/1 Speak to Gazlowe inside the laboratory
    .target Monte Gazlowe
    .skipgossipid 125342
step
    .goto 2346,26.92,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 85450 >>Turn in Evacuation Plan
    .accept 83127 >>Accept Racing the Clock
    .target Monte Gazlowe
step
    #completewith next
    #label RacingPeopleOut
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83127 >>Turn in Racing the Clock
    .accept 83128 >>Accept Get Our People Out
    .target Monte Gazlowe
step
    #completewith RacingPeopleOut
    #title Leave the laboratory
    .goto 2346,27.07,71.21,5,0
    .goto 2346,27.41,70.83,5,0
    .goto 2346,27.86,70.82,5,0
    .goto 2346,29.02,69.64,5 >>Leave the laboratory
step
    #requires RacingPeopleOut
    .goto 2346,55.67,63.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83127 >>Turn in Racing the Clock
    .accept 83128 >>Accept Get Our People Out
    .target Monte Gazlowe
step
    #completewith HostagesRescued
    >>Kill the |cRXP_ENEMY_Ethereal Heartseeker|r by using the |T458733:0|t[|cRXP_WARN_ExtraActionButton|r] on them.
    *- |cRXP_WARN_Running into the hidden |cRXP_ENEMY_Ethereal Heartseeker|r will lead them to stun you|r
    .complete 83128,2 --10/10 Ethereal Heartseeker slain
    .mob Ethereal Heartseeker
step
    #arrowtext |cFFFCDC00Click on the |cFFDB2EEFDoor|r|r\nHostages rescued (1/3)
    .goto 2346,55.49,59.53,8,0
    .goto 2346,55.64,58.80
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chain|r
    *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
    .complete 83128,1,1 --1/3 Hostages rescued
step
    #arrowtext |cFFFCDC00Follow the way to the second floor|r\nHostages rescued (2/3)
    .goto 2346,57.41,57.36,8,0
    .goto 2346,57.46,56.25,5,0
    .goto 2346,57.17,55.96,5,0
    .goto 2346,56.98,56.80,5,0
    .goto 2346,56.74,57.29,5,0
    .goto 2346,57.15,56.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chains|r
    *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
    .complete 83128,1,2 --2/3 Hostages rescued
step
    #arrowtext |cFFFCDC00Jump down|r\nHostages rescued (3/3)
    .goto 2346,57.43,57.62,5,0
    .goto 2346,57.89,54.93,5,0
    .goto 2346,57.59,54.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chain|r and |cRXP_PICK_Padlock|r
    *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
    .complete 83128,1 --3/3 Hostages rescued
step
    #loop
    .goto 2346,57.99,63.45,30,0
    .goto 2346,54.93,59.30,30,0
    .goto 2346,58.98,56.15,30,0
    >>Kill the |cRXP_ENEMY_Ethereal Heartseeker|r by using the |T458733:0|t[|cRXP_WARN_ExtraActionButton|r] on them.
    *- |cRXP_WARN_Running into the hidden |cRXP_ENEMY_Ethereal Heartseeker|r will lead them to stun you|r
    .complete 83128,2 --10/10 Ethereal Heartseeker slain
    .mob Ethereal Heartseeker
step
    .goto 2346,58.59,59.43
    >>|cRXP_WARN_Follow the arrow.|r
    .complete 83128,3 --1/1 Cave entrance found
step
    .goto 2346,58.63,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83128 >>Turn in Get Our People Out
    .target Monte Gazlowe
    .accept 83129 >>Accept Nowhere Left to Hide
step
    .goto 2346,58.69,59.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Improvised Explosives|r
    .complete 83129,1 --3/3 Light the Improvised Explosives
step
    #completewith next
    #label GallywixConfronted
    #hidewindow
    .complete 83129,2 --1/1 Gallywix confronted
step
    #completewith GallywixConfronted
    #title Enter the cave
    .goto 2346,59.47,59.10,8 >>Enter the cave
step
    #requires GallywixConfronted
    .goto 2346,61.74,62.09
    >>|cRXP_WARN_Follow the arrow|r
    .complete 83129,2 --1/1 Gallywix confronted
step
    .goto 2346,61.71,62.69
    >>Kill the |cRXP_ENEMY_Ultra-Deluxe Riotguards|r
    .complete 83129,3 --1/1 Hold off Gallywix's riotguards
step
    .goto 2346,61.63,62.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83129 >>Turn in Nowhere Left to Hide
    .complete 91871,3 --Aid Gazlowe and Alleria
    .target Monte Gazlowe
step
    .goto 2346,61.63,62.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome of History|r.
    .complete 91871,4 --1/1 Consult the Tome to learn what became of Xal'atath's deal
    .target Tome of History
    .skipgossipid 135298
step
    .goto 2346,61.68,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome of History|r.
    .complete 91871,5 --1/1 Consult the Tome on what happened after the Dark Heart was lost
    .target Tome of History
    .skipgossipid 137368
step
    .goto 2346,61.68,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |T2056011:0|t[Consult the Tome]. Talk to |cRXP_FRIENDLY_Tome of History|r afterwards.
    *|cRXP_WARN_NOTE:|r If you can't use the ability then restart your game with ALT+F4.
    .complete 91871,6 --1/1 Consult the Tome about Locus-Walker's summons to Tazavesh
    .target Tome of History
    .skipgossipid 135300
    .usespell 1255165
step
    .goto 2472,40.52,67.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r.
    .accept 84967 >>Accept The Shadowguard Shattered
    .target Locus-Walker
step
    .goto 2472,39.05,67.72,10,0
    .goto 2472,36.39,74.60
    >>Kill |cRXP_ENEMY_Shadowlord Al'zar|r.
    .complete 84967,1 --1/1 Shadowlord Al'zar slain
    .mob Shadowlord Al'zar
step
    .goto 2472,37.85,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r.
    .turnin 84967 >>Turn in The Shadowguard Shattered
    .target Locus-Walker
step
    .goto 2472,37.68,74.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r.
    .accept 93979 >>Accept Lingering Memories
    .target Locus-Walker
step
    #completewith next
    #label LingeringMemoriesA
    #hidewindow
    .complete 93979,1 --1/1 Meet Alleria and Locus-Walker at the docks
step
    #completewith LingeringMemoriesA
    #arrowtext |cRXP_WARN_Leave the building.|r
    .goto 2472,38.86,69.70,10,0
    .goto 2472,40.72,70.91,10,0
    .goto 2472,39.10,67.60,10,0
    .goto 2472,41.00,65.54,10 >>|cRXP_WARN_Leave the building.|r
step
    #requires LingeringMemoriesA
    #title |cRXP_WARN_Follow the arrow|r
    .goto 2472,34.23,10.96
    .complete 93979,1 --1/1 Meet Alleria and Locus-Walker at the docks
step
    .goto 2472,33.99,10.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r.
    .turnin 93979 >>Turn in Lingering Memories
    .complete 91871,7 --Aid Alleria and Locus-Walker in Tazavesh
    .target Locus-Walker
step
    .goto 2472,33.99,10.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome of History|r.
    .complete 91871,8 --1/1 Consult the Tome to learn about Reshii Ribbons
    .target Tome of History
    .skipgossipid 135303
step
    .goto 2371,48.19,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r.
    .accept 86495 >>Accept The Reshii Ribbon
    .target Locus-Walker
step
    .goto 2371,48.25,36.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r.
    .complete 86495,2 --1/1 Alleria convinced
    .target Alleria Windrunner
    .skipgossipid 132007
    .skipgossipid 131486
step
    .goto 2371,48.20,36.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ribbon|r.
    .complete 86495,3 --1/1 Locus-Walker's Reshii Ribbon acquired
step
    .goto 2371,48.17,36.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r.
    .turnin 86495 >>Turn in The Reshii Ribbon
    .accept 84856 >>Accept Where the Void Gathers
    .target Xal'atath
step
    .goto 2371,48.17,36.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r.
    .complete 84856,1 --1/1 Talk to Xal'atath
    .target Xal'atath
    .skipgossipid 135350
step
    .goto 2371,45.24,19.92
    >>Use the |T6654410:0|t[|cRXP_WARN_ExtraActionButton|r].
    .complete 84856,2 --1/1 Conduit examined
step
    .goto 2371,42.64,22.62
    >>Use the |T6654410:0|t[|cRXP_WARN_ExtraActionButton|r].
    .complete 84856,3 --1/1 Manaforge entrance examined
step
    .goto 2371,48.17,36.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r.
    .turnin 84856 >>Turn in Where the Void Gathers
    .target Xal'atath
step
    .goto 2371,48.19,36.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r.
    .accept 84857 >>Accept Eco-Dome: Primus
    .target Locus-Walker
step
    .goto 2371,47.07,54.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r.
    .turnin 84857 >>Turn in Eco-Dome: Primus
    .complete 91871,9 --Convince Alleria to work with Xal'atath
    .target Locus-Walker
step
    .goto 2371,47.07,54.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome of History|r.
    .complete 91871,10 --1/1 Consult the Tome to learn about the search for more ribbons
    .target Tome of History
    .skipgossipid 135306
step
    .goto 2371,47.09,54.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r.
    .accept 84862 >>Accept Void Alliance
    .target Xal'atath
step
    #loop
    .goto 2371,50.45,54.16,10,0
    .goto 2371,51.00,56.35,10,0
    .goto 2371,50.29,58.82,10,0
    .goto 2371,49.29,60.53,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defense Matrices|r.
    .complete 84862,1 --4/4 Defense Matrices placed
step
    .goto 2371,47.09,54.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r.
    .turnin 84862 >>Turn in Void Alliance
    .accept 84864 >>Accept Her Dark Side
    .accept 84865 >>Accept Divide and Conquer
    .target Xal'atath
step
    .goto 2371,47.13,54.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r.
    .accept 84863 >>Accept Counter Measures
    .target Ve'nari
step
    .goto 2371,54.10,48.12
    >>Use the |T4913234:0|t[|cRXP_WARN_ExtraActionButton]
    .complete 84864,1 --1/1 Ethereal Siphon Barrier removed
step
    .goto 2371,54.10,48.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ethereal Siphon Console|r.
    .complete 84864,2 --1/1 Ethereal Siphon Console overloaded
step
    #completewith CounterMeasuresA
    #hidewindow
    #loop
    .goto 2371,52.55,49.79,35,0
    .goto 2371,52.29,48.06,35,0
    .goto 2371,54.54,50.45,35,0
    +1
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84863,1 --12/12 Shadowguard forces eliminated
    .mob Shadowguard Speardancer
    .mob Shadowguard Riftcaller
    .mob Shadowguard Voidblade
step
    >>Use the |T5976941:0|t[|cRXP_WARN_ExtraActionButton] and aim at the |cRXP_PICK_Shadowguard Cannons|r.
    .complete 84865,1 --3/3 Shadowguard Cannons destroyed
step
    #label CounterMeasuresA
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84863,1 --12/12 Shadowguard forces eliminated
    .mob Shadowguard Speardancer
    .mob Shadowguard Riftcaller
    .mob Shadowguard Voidblade
step
    .goto 2371,53.41,47.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r |cRXP_WARN_next to you|r.
    .turnin 84865 >>Turn in Divide and Conquer
    .turnin 84864 >>Turn in Her Dark Side
    .turnin 84863 >>Turn in Counter Measures
    .accept 84866 >>Accept To Purchase Safety
    .target Alleria Windrunner
step
    .goto 2371,54.39,46.57
    >>Kill |cRXP_ENEMY_Shadow-Captain Lakheesh|r.
    .complete 84866,1 --1/1 Shadow-Captain Lakheesh slain
    .mob Shadow-Captain Lakheesh
step
    .goto 2371,54.27,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r.
    .turnin 84866 >>Turn in To Purchase Safety
    .accept 86946 >>Accept Unwrapped and Unraveled
    .goto 2371,54.27,45.48
    .target Xal'atath
step
    .goto 2371,47.08,54.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r.
    .complete 86946,1 --1/1 Find Alleria in Eco-Dome: Primus
    .skipgossipid 132658
    .target Alleria Windrunner
step
    .goto 2371,47.12,54.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r.
    .turnin 86946 >>Turn in Unwrapped and Unraveled
    .accept 90517 >>Accept My Part of the Deal
    .target Ve'nari
step
    .goto 2371,47.12,54.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ribbon|r.
    .complete 90517,1 --1/1 Ve'nari's Reshii Ribbon acquired
step
    .goto 2371,47.12,54.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r.
    .turnin 90517 >>Turn in My Part of the Deal
    .complete 91871,11 --Aid Xal'atath and Ve'nari
    .target Ve'nari
step
    .goto 2371,47.12,54.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome of History|r.
    .complete 91871,12 --1/1 Consult the Tome on the manipulation of the Wastelanders
    .target Tome of History
    .skipgossipid 135310
step
    .goto 2371,44.24,18.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r.
    .accept 85037 >>Accept That's a Wrap
    .target Xal'atath
step
    .goto 2371,42.85,21.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r.
    .complete 85037,1 --1/1 Speak to Xal'atath
    .target Xal'atath
    .skipgossipid 131307
step
    .goto 2371,42.83,21.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Reshii Ribbons|r.
    .complete 85037,2 --1/1 Reshii Wraps
step
    .goto 2371,42.89,21.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r.
    .turnin 85037 >>Turn in That's a Wrap
    .accept 86820 >>Accept Manaforge Omega: Dimensius Looms
    .target Alleria Windrunner
step
    .goto 2371,41.95,22.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phase-General Ameer|r.
    .complete 86820,1 --1/1 Enter the Manaforge Omega raid in Story Mode (Optional)
    .skipgossipid 134990
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Console|r
    - Use the |T135752:0|t[ExtraActionButton] near the portals to start the fight
    - Fly through the rings during the second phase
    - Move into a star while Dimensius tries to drag you in in the last phase
    .complete 86820,2 --1/1 Dimensius defeated
step
    #completewith next
    #label ManaforeOmegaDimensiusLoomsA
    .goto 2371,41.95,22.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phase-General Ameer|r.
    .complete 86820,3 --1/1 
    .skipgossipid 135141
step
    #completewith ManaforeOmegaDimensiusLoomsA
    .zone 2371 >>Leave the instance group
step
    #requires ManaforeOmegaDimensiusLoomsA
    .goto 2371,41.95,22.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phase-General Ameer|r.
    .complete 86820,3 --1/1 
    .skipgossipid 135141
step
    .goto 2371,41.95,22.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the popup in your quest log under your minimap.
    .turnin 86820 >>Turn in Manaforge Omega: Dimensius Looms
    .complete 91871,13 --Aid Alleria in the defeat of Dimensius
step
    .goto 2371,41.95,22.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome of History|r.
    .complete 91871,14 --1/1 Consult the Tome to return
    .target Tome of History
    .skipgossipid 136042
step
    .goto 2339,49.52,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome of History|r.
    .complete 91871,15 --1/1 Consult the Tome to end the story
    .target Tome of History
    .skipgossipid 136043
step
    .goto 2339,49.52,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tome of History|r.
    .turnin 91871 >>Turn in Recap: The Dark Heart
    .target Tome of History
]])