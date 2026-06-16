
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
    >>Complete Rituals. Loot the |cRXP_ENEMY_elites|r for |T4226155:0|t[Ritualized Arcana].
    *|cRXP_WARN_Note:|r You can look all eight arcana in one ritual (at least in the one in Zul'Aman)
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
    .goto 2659,44.92,60.96,10,0
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