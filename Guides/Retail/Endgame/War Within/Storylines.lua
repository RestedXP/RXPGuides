-- Fate of the Kirin Tor
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r Storylines
#subweight 999.4
#name a) Fate of Kirin Tor
#displayname Fate of Kirin Tor
#next a) Horrific Visions


step
    .isQuestAvailable 82702
    #completewith next
    +|cRXP_WARN_You have to complete the 'Lingering Shadows' chapter first|r
step
    .goto 2339,42.58,27.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r |cRXP_WARN_in Dornogal|r.
    .accept 84223 >>Accept Survivor's Guilt
    .target Archmage Khadgar
step
    #completewith next
    #title Leave the hall
    .goto 2339,42.74,30.57,15 >>Leave the Hall
step
    .goto 2248,29.58,58.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Aethas Sunreaver|r.
    .turnin 84223 >>Turn in Survivor's Guilt
    .target Archmage Aethas Sunreaver
    .accept 83031 >>Accept The Hardest Part
step
    .goto 2248,29.59,58.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Letter|r.
    .complete 83031,1 --1/1 Letter to the survivors written
    .skipgossipid 124241
    .skipgossipid 124239
    .skipgossipid 124242
step
    .goto 2248,29.57,58.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Aethas Sunreaver|r.
    .turnin 83031 >>Turn in The Hardest Part
    .target Archmage Aethas Sunreaver
    .accept 83499 >>Accept Arcane Wasteland
step
    #completewith Frostfire Essence
    >>Kill |cRXP_ENEMY_Lingering Spark|r, |cRXP_ENEMY_Mana Fragment|r and |cRXP_ENEMY_Shard of Dalaran|r. Loot them for the |T4549108:0|t[|cRXP_LOOT_Arcane Dust|r].
    *|cRXP_WARN_You should kill most of the ones you encounter|r.
    .complete 83499,1 --10/10 Arcane Dust collected
    .mob Lingering Spark
    .mob Mana Fragment
    .mob Shard of Dalaran
step
    .goto 2248,29.89,54.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Radiant Prism Crystal|r.
    .complete 83499,2,1 --4/4 Radiant Prism Crystals collected
step
    .goto 2248,29.93,53.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Radiant Prism Crystal|r.
    .complete 83499,2,2 --4/4 Radiant Prism Crystals collected
step
    .goto 2248,30.64,52.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Radiant Prism Crystal|r.
    .complete 83499,2,3 --4/4 Radiant Prism Crystals collected
step
    .goto 2248,31.28,52.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Radiant Prism Crystal|r.
    .complete 83499,2,4 --4/4 Radiant Prism Crystals collected
step
    #label Frostfire Essence
    .goto 2248,28.87,51.88
    >>Kill |cRXP_ENEMY_Frostfire Elemental|r. Loot it for the |T429384:0|t[|cRXP_LOOT_Frostfire Essence|r].
    .complete 83499,3 --1/1 Frostfire Essence collected
    .mob Frostfire Elemental
step
    #loop
    .goto 2248,29.98,53.81,40,0
    .goto 2248,31.02,55.42,40,0
    .goto 2248,31.62,53.89,40,0
    .goto 2248,30.96,52.24,40,0
    >>Kill |cRXP_ENEMY_Lingering Spark|r, |cRXP_ENEMY_Mana Fragment|r and |cRXP_ENEMY_Shard of Dalaran|r. Loot them for |T132854:0|t[|cRXP_LOOT_Arcane Dust|r].
    *|cRXP_WARN_You should kill most of the ones you encounter|r.
    .complete 83499,1 --10/10 Arcane Dust collected
    .mob Lingering Spark
    .mob Mana Fragment
    .mob Shard of Dalaran
step
    .goto 2248,29.57,58.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Aethas Sunreaver|r.
    .turnin 83499 >>Turn in Arcane Wasteland
    .target Archmage Aethas Sunreaver
    .accept 83502 >>Accept Lessons in Defensive Magic
step
    .goto 2248,29.37,58.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Arcane Ward|r.
    .complete 83502,1 --1/1 First Ward activated
step
    .goto 2248,29.61,57.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Arcane Ward|r.
    .complete 83502,2 --1/1 Second Ward activated
step
    .goto 2248,29.99,57.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Arcane Ward|r.
    .complete 83502,3 --1/1 Third Ward activated
step
    .goto 2248,29.76,58.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Arcane Ward|r.
    .complete 83502,4 --1/1 Fourth Ward activated
step
    .goto 2248,29.74,57.93
    >>Use the |T429384:0|t[|cRXP_WARN_ExtraActionButton|r].
    .complete 83502,5 --1/1 Spell empowered
    .timer 6,RP
step
    .goto 2248,29.74,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Aethas Sunreaver|r.
    .turnin 83502 >>Turn in Lessons in Defensive Magic
    .target Archmage Aethas Sunreaver
    .accept 83539 >>Accept Feeling Blue
    .timer 13,RP
step
    .goto 2248,29.62,57.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .complete 83539,1 --1/1 Speak with Kalecgos
    .skipgossipid 123141
    .target Kalecgos
step
    .goto 2248,29.65,57.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Helpful Goods|r.
    .complete 83539,2 --1/1 Bag of Helpful Goods collected
step
    #completewith next
    .cast 456663 >>Use the |T1519433:0|t[|cRXP_WARN_ExtraActionButton|r].
    .timer 5,RP
step
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 83539,3 --1/1 Bag of Helpful Goods searched
step
    .goto 2248,29.5,57.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mailbox|r.
    .complete 83539,4,1 --6/6 Items placed in the outpost
step
    .goto 2248,29.46,57.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tent|r.
    .complete 83539,4,2 --6/6 Items placed in the outpost
step
    .goto 2248,29.49,58.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cabinet Display|r.
    .complete 83539,4,3 --6/6 Items placed in the outpost
step
    .goto 2248,29.59,58.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Enchanted Display|r.
    .complete 83539,4,4 --6/6 Items placed in the outpost
step
    .goto 2248,29.74,58.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flying Carpet|r.
    .complete 83539,4,5 --6/6 Items placed in the outpost
    .skipgossipid 123144
step
    .goto 2248,29.71,58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Banner|r.
    .complete 83539,4,6 --6/6 Items placed in the outpost 
step
    .goto 2248,29.78,57.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83539 >>Turn in Feeling Blue
    .target Kalecgos
    .accept 83553 >>Accept Magic-stealing Kobolds
step
    .goto 2248,61.72,41.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83553 >>Turn in Magic-stealing Kobolds
    .accept 83554 >>Accept Trinkets, Curios and Other Powerful Objects
    .target Kalecgos
step
    .goto 2248,62.14,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kobold Thief|r.
    .accept 83555 >>Accept Mysterious Necklace
    .target Kobold Thief
step
    #completewith Arcane Manuscripts
    >>Kill |cRXP_ENEMY_Kobolds|r. Loot them for the |T1379168:0|t[|cRXP_LOOT_Kirin Tor Artifacts|r].
    .complete 83554,1 --15/15 Kirin Tor Artifacts collected
    .mob Candlelit Big-Boomer
    .mob Candlelit Ouchpatcher
    .mob Candlelit Hexthrower
step
    .goto 2248,62.17,40.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Stolen Goods|r.
    .complete 83554,2,1 --5/5 Arcane Manuscripts found
step
    .goto 2248,64.31,41.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Stolen Goods|r.
    .complete 83554,2,2 --5/5 Arcane Manuscripts found
step
    .goto 2248,64.37,43.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Stolen Goods|r.
    .complete 83554,2,3 --5/5 Arcane Manuscripts found
step
    .goto 2248,64.42,44.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Stolen Goods|r.
    .complete 83554,2,4 --5/5 Arcane Manuscripts found
step
    #label Arcane Manuscripts
    .goto 2248,63.25,45.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Stolen Goods|r.
    .complete 83554,2,5 --5/5 Arcane Manuscripts found
step
    #loop
    .goto 2248,64.07,42.53,40,0
    .goto 2248,63.33,41.85,40,0
    .goto 2248,62.64,43.54,40,0
    .goto 2248,62.45,42.58,40,0
    >>Kill |cRXP_ENEMY_Kobolds|r. Loot them for |T1379168:0|t[|cRXP_LOOT_Kirin Tor Artifacts|r].
    .complete 83554,1 --15/15 Kirin Tor Artifacts collected
    .mob Candlelit Big-Boomer
    .mob Candlelit Ouchpatcher
    .mob Candlelit Hexthrower
step
    .goto 2248,61.52,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83554 >>Turn in Trinkets, Curios and Other Powerful Objects
    .target Kalecgos
    .turnin 83555 >>Turn in Mysterious Necklace
    .accept 83556 >>Accept Maybe You Shouldn't Touch That
step
    .goto 2248,61.52,42.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Emerald Necklace|r |cRXP_WARN_In Kalecgos Hands|r.
    .complete 83556,1 --1/1 Emerald Necklace inspected
    .skipgossipid 123192
step
    .isOnQuest 83556
    #completewith PocketDimension
    +|cRXP_WARN_There are no coordinates available in this zone|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83556 >>Turn in Maybe You Shouldn't Touch That
    .timer 20,RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .accept 83641 >>Accept Trapped Between Life and Death
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scroll|r |cRXP_WARN_in the center of the platform|r.
    .complete 83641,1 --1/1 Scroll investigated
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fragmented Souls|r |cRXP_WARN_at the edge of the platform|r.
    .complete 83641,2 --3/3 Fragmented Souls released
    .skipgossipid 123261
    .target Fragmented Soul
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on 3 |cRXP_PICK_Ingredients|r |cRXP_WARN_next to the cauldron|r (Essence of Death, Alchemical Solution, Skull).
    .complete 83641,3 --3/3 Ingredients added to the Cauldron
step
    >>Kill the |cRXP_ENEMY_Disfigured Ghouls|r.
    .complete 83641,4 --3/3 Disfigured Ghoul slain
    .timer 12,RP
    .mob Disfigured Ghoul
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the mirror image of |cRXP_FRIENDLY_Archmage Kel'Thuzad|r.
    .complete 83641,5 --1/1 Speak with the Mirror Image
    .skipgossipid 131340
    .mob Archmage Kel'Thuzad
step
    #label PocketDimension
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Passage Between Dimensions (Portal)|r.
    .complete 83641,6 --1/1 Leave pocket dimension
step
    .goto 2248,61.52,42.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83641 >>Turn in Trapped Between Life and Death
    .target Kalecgos
    .accept 83643 >>Accept Somehow We Survived
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83643 >>Turn in Somehow We Survived
    .goto 2248,30.99,57.80
    .target +Kalecgos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .accept 83723 >>Accept A Helping Hand
    .goto 2248,30.97,57.73
    .target +Lady Jaina Proudmoore
step
    #completewith next
    .goto 2248,31.12,56.66
    .cast 462625 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Portal|r.
    .target Unstable Portal
step
    .goto 2248,31.7,54.96
    #title Mount Up
    >>|cRXP_WARN_After clicking on the portal run towards the next objective|r.
    .complete 83723,1,1 --3/3 Mages extracted from portals
step
    #completewith next
    .goto 2248,31.7,54.96
    .cast 462625 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Portal|r.
    .target Unstable Portal
step
    .goto 2248,29.98,54.05
    #title Mount Up
    >>|cRXP_WARN_After clicking on the portal run towards the next objective|r.
    .complete 83723,1,2 --3/3 Mages extracted from portals
step
    #completewith next
    .goto 2248,29.98,54.05
    .cast 462625 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Portal|r.
    .target Unstable Portal
step
    .goto 2248,29.80,57.83
    #title Mount Up
    >>|cRXP_WARN_After clicking on the portal run towards the next objective|r.
    .complete 83723,1,3 --3/3 Mages extracted from portals
step
    .goto 2248,29.80,57.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .turnin 83723 >>Turn in A Helping Hand
    .target Lady Jaina Proudmoore
    .accept 83743 >>Accept Arcane Cold War
    .timer 15,RP
step
    .goto 2248,29.68,57.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r.
    .complete 83743,2 --1/1 Portal taken (Optional)
step
    .goto 2274,39.62,75.09
    .complete 83743,1 --1/1 Jaina found in Azj-Kahet
step
    .goto 2255,35.27,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .turnin 83743 >>Turn in Arcane Cold War
    .target Lady Jaina Proudmoore
    .accept 83762 >>Accept Critical Mass
step
    #loop
    .goto 2255,35.38,52.82,20,0
    .goto 2255,35.18,52.02,20,0
    .goto 2255,35.79,51.25,20,0
    .goto 2255,36.03,51.8,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Objects|r that are connected to the mana bomb in the center and kill any |cRXP_ENEMY_enemies|r that emerge.
    *|cRXP_WARN_It's possible that some objects are not connected but still required|r
    .complete 83762,1 --Magical objects disentangled (100%)
    .mob Polymorphed Sheep
step
    .goto 2255,35.59,52.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mana Bomb|r and entangle the connections.
    .complete 83762,2 --1/1 Mana Bomb disarmed
    .timer 5,RP
step
    .goto 2255,35.55,52.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .turnin 83762 >>Turn in Critical Mass
    .accept 83763 >>Accept Preserve the Legacy
    .accept 83764 >>Accept Too Powerful, Too Dangerous
    .target Lady Jaina Proudmoore
step
    .goto 2255,35.68,52.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Wand of Permafrost|r.
    .complete 83764,1,1 --3/3 Dangerous artifacts destroyed
step
    .goto 2255,36.22,52.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Thalen Songweaver's Notes|r |cRXP_WARN_in the water|r.
    .complete 83763,3 --1/1 Thalen Songweaver's notes collected
step
    .goto 2255,35.65,51.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Antonidas' book|r.
    .complete 83763,1 --1/1 Antonidas' book collected
step
    .goto 2255,35.03,51.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Medivh's Karazhan Schematics|r.
    .complete 83763,2 --1/1 Medivh's Schematics collected
step
    .goto 2255,35.31,51.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Staff of a Thousand Meteors|r.
    .complete 83764,1,2 --3/3 Dangerous artifacts destroyed
step
    .goto 2255,35.32,52.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scroll of Permanent Polymorph|r.
    .complete 83764,1,3 --3/3 Dangerous artifacts destroyed
step
    #completewith next
    .goto 2255,57.49,41.63
    .zone 2339 >>Take the Azj-Kahet Portal to Dornogal.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r and |cRXP_FRIENDLY_Archmage Khadgar|r.
    .turnin 83763 >>Turn in Preserve the Legacy
    .turnin 83764 >>Turn in Too Powerful, Too Dangerous
    .goto 2248,31.46,50.96
    .target +Lady Jaina Proudmoore
    .accept 83773 >>Accept Farewell, City of Magic
    .goto 2248,31.45,50.93
    .target +Archmage Khadgar
step
    #loop
    .goto 2248,31.41,51.03,5,0
    .goto 2248,31.63,50.8,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on one of the |cRXP_PICK_Mementos|r on the table and |cRXP_WARN_then on  the correct boat|r. Repeat this 3 times.
    *|cRXP_WARN_Repeat 3times|r.
    .complete 83773,1 --3/3 Mementos placed on boats
step
    .goto 2248,31.47,50.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaina|r.
    .complete 83773,2 --1/1 Speak with Jaina
    .skipgossipid 123819
    .target Jaina
step
    .goto 2248,31.43,50.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r.
    .turnin 83773 >>Turn in Farewell, City of Magic
    .target Archmage Khadgar
]])

--Story Mode: Queen Ansurek
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r Storylines
#name a) Story Mode: Queen Ansurek
#displayname Story Mode: Queen Ansurek
#next a) Fate of Kirin Tor


step
    .goto 2339,31.62,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Webster|r
    .accept 83587 >>Accept Our Chance to Strike
    .target Webster
step
    #completewith next
    .goto 2339,63.62,52.36
    .zone 2255 >>Take the burrow to Azj-Kahet
step
    .goto 2213,50.22,44.84,15,0
    .goto 2213,52.87,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Nizrek|r
    .turnin 83587 >>Turn in Our Chance to Strike
    .target Executor Nizrek
step
    .goto 2213,52.87,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Nizrek|r
    .target Executor Nizrek
    .accept 82124 >>Accept The Beginning of the End
step
    .isOnQuest 82124
    #title Leave the House
    #completewith next
    .goto 2213,50.22,44.84,15 >>Leave the House
step
    #loop
    .goto 2216,51.83,38.55,35,0
    .goto 2213,50.69,34.03,35,0
    .goto 2213,47.53,35.42,35,0
    .goto 2213,49.58,27.56,35,0
    .goto 2213,45.6,28.18,35,0
    .goto 2213,41.08,28.92,35,0
    .goto 2213,46.65,18.41,35,0
    .goto 2213,47.3,13.92,35,0
    .goto 2213,51.08,15.51,35,0
    .goto 2213,54.24,20.73,35,0
    .goto 2213,61.26,18.95,35,0
    .goto 2213,60.43,27.59,35,0
    .goto 2213,55.38,29.1,35,0
    >>Kill |cRXP_ENEMY_Bazaar Guards,|r |cRXP_ENEMY_Bazaar Sentry|r and |cRXP_ENEMY_Loyalist Threadblade.|r
    *Click on the |cRXP_PICK_Propaganda Holograms|r
    -- *|cRXP_WARN_Ignore |cRXP_PICK_Propaganda Holograms|r as they usually waste time|r
    .complete 82124,1 --Umbral Bazaar disrupted (100%)
    .mob Bazaar Guard
    .mob Bazaar Sentry
    .mob Loyalist Threadblade
step
    .isOnQuest 82124
    #title Enter the House
    #completewith next
    .goto 2213,50.12,44.59,15 >> Enter the House
step
    .goto 2213,52.88,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Nizrek|r
    .turnin 82124 >>Turn in The Beginning of the End
    .target Executor Nizrek
    .accept 82125 >>Accept A Spy Like Us
step
    .isOnQuest 82125
    #title Leave the House
    #completewith next
    .goto 2213,53.92,50.28,15 >> Leave the House
step
    .goto 2216,55,42.55,10,0
    .goto 2216,57.30,41.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gut'usul|r |cRXP_WARN_below inside a House.|r
    .turnin 82125 >>Turn in A Spy Like Us
    .target Gut'usul
    .accept 82126 >>Accept Defense of the People
    .accept 82127 >>Accept Make Them Prey
step
    .isOnQuest 82127
    #title Leave the House
    #completewith next
    .goto 2216,55.19,42.91,10 >> Leave the House
step
    #completewith Burrows Residents
    >>Kill |cRXP_ENEMY_Abductors|r
    .complete 82127,1 --8/8 Abductors slain
    .mob Abductors
step
    .goto 2216,54,55.95
    >>Click on |cRXP_PICK_Kah'net|r
    .complete 82126,1,1 --5/5 Burrows Residents rescued
    .mob Kah'net
step
    .goto 2216,44.26,68.11
    >>Click on |cRXP_PICK_Tihk'ot|r
    .complete 82126,1,2 --5/5 Burrows Residents rescued
    .mob Tihk'ot
step
    .goto 2216,38.2,59.37
    >>Click on |cRXP_PICK_Srax'run|r
    .complete 82126,1,3 --5/5 Burrows Residents rescued
    .mob Srax'run
step
    .goto 2216,36.9,57.71
    >>Click on |cRXP_PICK_Gruthit|r
    .complete 82126,1,4 --5/5 Burrows Residents rescued
    .mob Gruthit
step
    #label Burrows Residents
    .goto 2216,46.85,49.12,15,0
    .goto 2216,44.63,49.17
    >>Click on |cRXP_PICK_Mus'ten|r
    .complete 82126,1,5 --5/5 Burrows Residents rescued
    .mob Mus'ten
step
    #loop
    .goto 2216,54,55.95,35,0
    .goto 2216,44.26,68.11,35,0
    .goto 2216,38.2,59.37,35,0
    .goto 2216,36.9,57.71,35,0
    .goto 2216,44.63,49.17,35,0
    >>Kill |cRXP_ENEMY_Abductors|r
    .complete 82127,1 --8/8 Abductors slain
    .mob Abductors
step
    .goto 2216,55.16,42.49,10,0
    .goto 2216,57.33,41.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gut'usul|r
    .turnin 82126 >>Turn in Defense of the People
    .target Gut'usul
    .turnin 82127 >>Turn in Make Them Prey
    .accept 82130 >>Accept A Shot at the Top
step
    .goto 2216,56.47,53.83,15,0
    .goto 2216,55.17,42.87
    >>Kill |cRXP_ENEMY_Master Abductor|r
    .complete 82130,1 --1/1 Master Abductor slain
    .mob Master Abductor
step
    .goto 2216,56.54,53.44,10,0
    .goto 2213,53.74,50.06,10,0
    .goto 2213,52.91,46.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Nizrek|r |cRXP_WARN_up above, inside the main house.|r
    .turnin 82130 >>Turn in A Shot at the Top
    .target Executor Nizrek
    .accept 82141 >>Accept To Kill a Queen
step
    #completewith next
    >>|cRXP_WARN_You can kill her solo or in a raid group (LFR, Normal, Heroic, or Mythic).|r
    *|cRXP_WARN_The fastest and most accessible method is to kill her solo, but you might want to wait if you plan on killing her in a raid group.|r
    *|cRXP_WARN_It all depends on how eager you are for the Heroic Tier Token reward offered by this quest.|r
    *|cFFFF0000This guide will continue to direct you through the solo version|r.
    .complete 82141,2 --1/1 Enter Nerub-ar Palace in Story Mode (Optional)>>Kill |cRXP_ENEMY_Queen Ansurek|r
    .complete 82141,1 --1/1 Queen Ansurek slain
step
    .isOnQuest 82141
    .goto 2213,31.47,64.05
    .gossipoption 123174 >>Talk to |cRXP_FRIENDLY_Kriz the "Loyal"|r
    .mob Kriz the "Loyal"
step
    >>Kill |cRXP_ENEMY_Queen Ansurek|r
    .complete 82141,1 --1/1 Queen Ansurek slain
    .mob Queen Ansurek
step
    #completewith next
    +Click on your player frame and leave the instance group if you're in the solo version.
step
    .goto 2213,50.02,44.51,15,0
    .goto 2213,52.70,46.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Nizrek|r
    .turnin 82141 >>Turn in To Kill a Queen
    .target Executor Nizrek
]])

--Horrific Visions
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r Storylines
#name a) Horrific Visions
#displayname Horrific Vision Intro
#next a) Nightfall Radiance

step
    .goto 2339,42.51,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Onermu|r
    .accept 86706 >>Accept Seeking Knowledge of the Past
    .target Researcher Onermu
step
    .goto 2339,34.69,68.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    .turnin 86706 >>Turn in Seeking Knowledge of the Past
    .accept 87328 >>Accept Truly Horrific to Behold
    .target Soridormi
step
    .goto 2339,34.69,68.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    .complete 87328,1 --1/1 Speak to Soridormi
    .skipgossipid 132133
    .target Soridormi
step
    .goto 2339,34.52,69.71
    >>Shortly, orbs will appear in the sky and descend toward the ground. Jump into them to receive credit.
    .complete 87328,2 --10/10 Collect Horrific Sands of Time
step
    .goto 2339,34.56,68.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    .turnin 87328 >>Turn in Truly Horrific to Behold
    .accept 87329 >>Accept Into the Darkest Memories
    .target Soridormi
step
    .goto 2339,34.68,68.34
    >>Click on the |cFFDB2EEFPortal|r
    .complete 87329,1 --1/1 Portal to Horrific Visions used
    .skipgossipid 132129
    .skipgossipid 132128
step
    .goto 2403,51.99,83.64
    .wpradius 2403,51.99,83.64,100,0
    .goto 2404,53.25,51.25
    .wpradius 2404,53.25,51.25,100,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Image of Wrathion|r
    .complete 87329,2 --1/1 Speak to the Image of Wrathion
    .timer 10,RP
    .skipgossipid 125259
    .target the Image of Wrathion
step
    .zoneskip 2403,1
    .isOnQuest 87329
    .goto 2403,49.86,75.54,10,0
    .goto 2403,49.37,75.07,10,0
    .goto 2403,49.34,74.01,10,0
    .goto 2403,48.45,71.42
    .scenario 1733,1 >>Kill |cRXP_ENEMY_Voidbound Honor Guards|r to open the door to |cRXP_ENEMY_Thrall|r and kill him.
    .mob Thrall
    .mob Voidbound Honor Guard
step
    .zoneskip 2404,1
    .isOnQuest 87329
    .goto 2404,52,54.15,15,0
    .goto 2404,53.53,52.32,15,0
    .goto 2404,52.97,51.12,10,0
    .goto 2404,52.26,50.62,10,0
    .goto 2404,51.72,49.68,10,0
    .goto 2404,51.63,48.56,10,0
    .goto 2404,50.13,45.71
    .scenario 4171,1 >>Kill |cRXP_ENEMY_Fallen Riftwalker|r to open the door to |cRXP_ENEMY_Alleria Windrunner|r and kill her. 
    .mob Alleria Windrunner
    .mob Fallen Riftwalker
step
    .zoneskip 2404,1
    .isOnQuest 87329
    .goto 2404,41.58,34.72
    .cast 3365 >>Click on the |cRXP_PICK_Chest|r
    .complete 87329,3 --100/20 Corrupted Mementos
step
    .isOnQuest 87329
    .zoneskip 2404,1
    +Leave the Horrific Vision (Right-Click your player frame).
step
    .isOnQuest 87329
    .zoneskip 2403,1
    .goto 2403,51.99,85.64
    .cast 3365 >>Click on the |cRXP_PICK_Chest|r
    .complete 87329,3 --100/20 Corrupted Mementos
step
    .isOnQuest 87329
    .zoneskip 2403,1
    +Leave the Horrific Vision (Right-Click your player frame).
step
    .goto 2339,34.57,68.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    .turnin 87329 >>Turn in Into the Darkest Memories
    .target Soridormi
    .accept 87332 >>Accept A Collection of Variables
step
    .goto 2339,35.21,68.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augermu|r
    .turnin 87332 >>Turn in A Collection of Variables
    .target Augermu
    .accept 87335 >>Accept Echoing Lessons
step
    .goto 2339,35.24,68.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augermu|r
    .complete 87335,1 --1/1 Echo of N'Zoth created
    .skipgossipid 132107
    .target Augermu
step
    .goto 2339,35.09,68.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hourglass of Horrific Visions|r and select Orb Operation Manual.
    .complete 87335,2 --1/1 Orb Operation Manual unlocked
    .skipgossipid 132100
step
    .goto 2339,35.19,68.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augermu|r
    .turnin 87335 >>Turn in Echoing Lessons
    .target Augermu
    .accept 87336 >>Accept Remembering Again and Again
step
    .goto 2339,34.55,68.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    .turnin 87336 >>Turn in Remembering Again and Again
    .target Soridormi
step
    .goto 2339,35.24,68.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augermu|r
    .accept 90719 >>Accept Borrowing Corruption
    .target Augermu
step
    .zoneskip 2404
    .goto 2339,34.67,68.29
    .zone 2403 >>Click on the |cRXP_PICK_Portal|r and enter the Vision.
    .skipgossipid 132129
    .skipgossipid 132128
step
    .zoneskip 2403,1
    .goto 2403,52.00,82.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronze Hourglass|r
    .accept 88803 >>Accept Timely Assistance
    .target Bronze Hourglass
step
    .zoneskip 2404,1
    .goto 2404,53.29,50.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronze Hourglass|r
    .accept 88803 >>Accept Timely Assistance
    .target Bronze Hourglass
step
    .goto 2404,53.29,50.39
    .wpradius 2404,53.29,50.39,100,0
    .goto 2403,52.00,82.81
    .wpradius 2403,52.00,82.81,100,0
    >>Select DPS,Healer or Tank Role for your companion.
    .complete 88803,1 --1/1 Use the hourglass to summon aid
step
    .zoneskip 2403,1
    .goto 2403,52.00,82.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronze Hourglass|r
    .turnin 88803 >>Turn in Timely Assistance
    .target Bronze Hourglass
step
    .zoneskip 2404,1
    .goto 2404,53.29,50.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronze Hourglass|r
    .turnin 88803 >>Turn in Timely Assistance
    .target Bronze Hourglass
step
    >>Kill |cRXP_ENEMY_Bosses|r inside the Horrific Vision and open the crates at the end to loot them for |T3528446:0|t[|cRXP_LOOT_Black Blood Residue|r].
    .complete 90719,1
]])

--Nightfall Radiance
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r Storylines
#subweight 999.59
#name a) Nightfall Radiance
#displayname Nightfall Radiance

step
    >>Open the Adventure Guide (default: Shift + J), navigate to Suggested Content, and look for the quest Nightfall Radiance. Accept it.
    .accept 85005 >>Accept A Radiant Call
step
    #include a) DawnBreakerTeleport
step
    .goto 2215,28.26,56.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylton Wyldbraun|r
    .turnin 85005 >>Turn in A Radiant Call
    .target Mylton Wyldbraun
    .accept 89331 >>Accept Flame Fortification
    .accept 89332 >>Accept Boot Camp
    .accept 89295 >>Accept The Flame Burns Eternal
 step
    .goto 2215,28.26,56.11
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylton Wyldbraun|r 
    .questcount <3 87477,87475,87480,88711,88916,88945 >> |cRXP_WARN_Pick up the 3 available dailies |r
    .target Mylton Wyldbraun
    -- .accept 87477 >>Accept Sureki Incursion: Southern Swarm
    -- .accept 87475 >>Accept Sureki Incursion: Hold the Wall
    -- .accept 87480 >>Accept Sureki Incursion: The Eastern Assault
    -- .accept 88711 >>Accept Radiant Incursion: Toxins and Pheromones
    -- .accept 88916 >>Accept Radiant Incursion: Sureki's End
    -- .accept 88945 >>Accept Radiant Incursion: Rak-Zakaz
step
    .goto 2215,28.29,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars Bronsmaelt|r
    .accept 89493 >>Accept Welcome to the Field
    .turnin 89493 >>Turn in Welcome to the Field
    .target Lars Bronsmaelt
step
    .isOnQuest 88711
    .goto 2215,26.48,55.11,40,0
    #completewith Radiant Incursion: Toxins and Pheromones
    >>Check your map to see if the Nightfall event is active. If it is, complete it now; if not, do it later.
    .complete 89295,1 --Complete the scenario "Nightfall"
    .complete 89331,1 --Complete the scenario "Nightfall"
step
    .isOnQuest 
    .goto 2215,26.48,55.11,40,0
    #completewith Sureki Incursion: The Eastern Assault
    >>Check your map to see if the Nightfall event is active. If it is, complete it now; if not, do it later.
    .complete 89295,1 --Complete the scenario "Nightfall"
    .complete 89331,1 --Complete the scenario "Nightfall"
-----------------------------------------------------
--- DAILLIES BATCH 1
-----------------------------------------------------
step
    .isOnQuest 88916
    .goto 2274,48.6,57.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sacred Alchemist|r
    .complete 88916,1 --1/1 Field Elixir taken (Optional)
    .skipgossipid 132981
    .target Sacred Alchemist
step
    .isOnQuest 88916
    #loop
    .goto 2255,63.1,0.87,40,0
    .goto 2255,63.77,5.57,40,0
    .goto 2255,64.24,6.33,40,0
    .goto 2255,64.39,8.27,40,0
    .goto 2255,64.37,10.76,40,0
    .goto 2255,64.74,14.76,40,0
    .goto 2255,66.34,13.43,40,0
    .goto 2255,65.25,6.91,40,0
    >>Kill |cRXP_ENEMY_Sureki Forces|r and click on the nearby |cRXP_PICK_Objects|r.
    .complete 88916,2 --Sureki Forces disrupted (100%)
    .mob Toxic Swarmite
    .mob Battlefront Hauler
    .mob Stagshell Mite
    .mob Skitterling Soldier
    .mob Sureki Raider
    .mob Nerubian Ballista
    .mob Crimson Deathweaver
    .mob Sureki Priestess
step
    #loop
    .goto 2255,64.76,21.1,40,0
    .goto 2255,63.91,27.14,40,0
    .goto 2255,63.83,30.4,40,0
    .goto 2255,62.39,30.92,40,0
    .goto 2255,60.62,28.25,40,0
    .isOnQuest 88945
    >>Kill |cRXP_ENEMY_Sureki Forces|r
    .complete 88945,1 --Sureki Sympathizers disrupted (100%)
step
    .isQuestComplete 88916
    .isQuestComplete 88945
    .goto 2255,60.65,18.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysabel Gleamgaard|r
    .dailyturnin 88916 >>Turn in Radiant Incursion: Sureki's End
    .dailyturnin 88945 >>Turn in Radiant Incursion: Rak-Zakaz
    .target Ysabel Gleamgaard
step
    .isOnQuest 88711
    .goto 2255,65.33,49.67,40,0
    .goto 2255,66.34,53.89,40,0
    .goto 2255,68.72,54.3,40,0
    .goto 2255,69.9,56.17,40,0
    .goto 2255,66.52,55.31,40,0
    >>Kill |cRXP_ENEMY_Sureki Forces|r and click on the nearby |cRXP_PICK_Objects|r.
    .complete 88711,1 --Sureki forces disrupted (100%)
step
    #label Radiant Incursion: Toxins and Pheromones
    .isQuestComplete 88711
    .goto 2255,65.98,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lamplighter Kaerter|r
    .dailyturnin 88711 >>Turn in Radiant Incursion: Toxins and Pheromones
    .target Lamplighter Kaerter
step
    .isQuestComplete 88711
    #include a) DawnBreakerTeleport
-----------------------------------------------------
--- DAILLIES BATCH 2
-----------------------------------------------------
step
    #loop
    .isOnQuest 87475
    .goto 2215,40.13,58.29,30,0
    .goto 2215,41.29,59.47,30,0
    .goto 2215,40.61,61.16,30,0
    >>Kill |cRXP_ENEMY_Sureki Forces|r and click on the nearby |cRXP_PICK_Objects|r.
    .complete 87475,1 --Sureki forces repelled (100%)
    .mob Sureki Ballista
    .mob Sureki Marauder
    .mob Sureki Battle Drone
    .mob Sureki Siegelord
step
    .isQuestComplete 87475
    .goto 2215,40.59,57.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auralia Steelstrike|r
    .turnin 87475 >>Turn in Sureki Incursion: Hold the Wall
    .target Auralia Steelstrike
step
    .isOnQuest 87477
    #loop
    .goto 2215,47.5,68.2,30,0
    .goto 2215,48.06,69.2,30,0
    .goto 2215,51.2,65.38,30,0
    .goto 2215,51.49,70.75,30,0
    >>Kill |cRXP_ENEMY_Sureki Forces|r and click on the nearby |cRXP_PICK_Objects|r.
    .complete 87477,1 --Sureki swarm thwarted (100%)
    .mob Sureki Ballista
    .mob Sureki Marauder
    .mob Sureki Battle Drone
    .mob Sureki Siegelord
step
    .isQuestComplete 87477
    .goto 2215,52.00,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meradyth Lacke|r
    .turnin 87477 >>Turn in Sureki Incursion: Southern Swarm
    .target Meradyth Lacke
step
    .isOnQuest 87480
    #loop
    .goto 2215,71.76,45.59,30,0
    .goto 2215,72.06,46.62,30,0
    .goto 2215,72.78,47.01,30,0
    .goto 2215,73.61,45.84,30,0
    .goto 2215,74.6,45,30,0
    .goto 2215,75.86,45.18,30,0
    .goto 2215,75.66,43.38,30,0
    .goto 2215,73.09,43.06,30,0
    .goto 2215,71.5,42.9,30,0
    >>Kill |cRXP_ENEMY_Sureki Forces|r and click on the nearby |cRXP_PICK_Objects|r.
    .complete 87480,1 --Sureki invasion disrupted (100%)
step
    .isQuestComplete 87480
    #label Sureki Incursion: The Eastern Assault
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izaeh Strongiron|r on a platform high above.
    .turnin 87480 >>Turn in Sureki Incursion: The Eastern Assault
    .target Izaeh Strongiron
step
    .goto 2215,26.48,55.11
    >>Check your map to see if the Nightfall event is active. If it is, complete it now; if not, wait for it to become active.
    .complete 89295,1 --Complete the scenario "Nightfall"
    .complete 89331,1 --Complete the scenario "Nightfall"
step
    .goto 2215,28.26,56.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylton Wyldbraun|r
    .turnin 89332 >>Turn in Boot Camp
    .turnin 89295 >>Turn in The Flame Burns Eternal
    .turnin 89331 >>Turn in Flame Fortification
    .target Mylton Wyldbraun
]])

--Rise of the Red Dawn
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r Storylines
#name a) Rise of the Red Dawn
#displayname Rise of the Red Dawn


-- step
--     #completewith next
--     #label Faerin
--     -- >>Open the Adventure Guide (default: Shift + J), navigate to Suggested Content, and look for the quest Title "Rise of the Red Dawn". Press Accept Quest.
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r
--     .accept 91039 >>Accept Faerin's Request
--     .target Faerin Lothar
step
    #completewith next
    #label Faerin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r
    .accept 84638 >>Accept Trouble in the Highlands
    .target Faerin Lothar
step
    #completewith Faerin
    .zone 2339 >>Enter Dornogal
step
    #requires Faerin
    .goto 2339,46.02,49.4 --clickradius
    .goto 2339,46.07,49.60 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r
    .accept 84638 >>Accept Trouble in the Highlands
    .target Faerin Lothar
-- step
--     #requires Faerin
--     .goto 2339,46.07,49.63
--     -- >>Open the Adventure Guide (default: Shift + J), navigate to Suggested Content, and look for the quest Title "Rise of the Red Dawn". Press Accept Quest.
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r
--     .accept 91039 >>Accept Faerin's Request
--     .target Faerin Lothar
-- step
--     .goto 2339,46.07,49.60
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r
--     .turnin 91039 >>Turn in Faerin's Request
--     .accept 84638 >>Accept Trouble in the Highlands
--     .target Faerin Lothar
step
    .goto 2339,46.02,49.4 --clickradius
    .goto 2339,45.96,49.19 --npc location
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 84638,1 --1/1 Take the portal to the Arathi Highlands
step
    .goto 2372,21.62,38.53 --npc location
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84638,2 --1/1 Follow Faerin
    .target Faerin
step
    .goto 2372,21.62,38.53 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin|r
    .complete 84638,3 --1/1 Speak to Faerin
    .skipgossipid 132093
    .target Faerin
step
    .goto 2372,20.46,39.30 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danath Trollbane|r
    .turnin 84638 >>Turn in Trouble in the Highlands
    .target Danath Trollbane
step
    .goto 2372,20.42,39.5 --clickradius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Walker Gresham|r and |cRXP_FRIENDLY_Maggie Wiltshire|r
    .accept 84639 >>Accept Torches and Tar
    .goto 2372,20.5,39.4
    .target +Walker Gresham
    .accept 84658 >>Accept Finding Family
    .goto 2372,20.52,39.63
    .target +Maggie Wiltshire
step
    #completewith Barrels of Tar
    >>Kill the |cRXP_ENEMY_Defias|r forces. Loot them for |T135432:0|t[|cRXP_LOOT_Stolen Torches|r] and am |T656542:0|t[|cRXP_LOOT_Unfamilar Emblem|r].
    .complete 84639,2 --10/10 Stolen Torches retrieved
    .accept 84640 >>Accept Emblematic of Things to Come
    .mob Defias Lookout
    .mob Defias Ringleader
step
    .goto 2372,17.52,41.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r
    .complete 84639,1,1 --10/10 Barrels of Tar retrieved
step
    .goto 2372,17.37,42.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Sharon Wiltshire|r |cRXP_WARN_inside the house|r
    .complete 84658,2 --1/1 Sharon Wiltshire found
    .target Sharon Wiltshire
step
    .goto 2372,16.53,42.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels|r
    .complete 84639,1,4 --10/10 Barrels of Tar retrieved
step
    #completewith next
    #label Barn
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Marshall Wiltshire|r
    .complete 84658,1 --1/1 Marshall Wiltshire found
    .target Marshall Wiltshire
step
    #completewith Barn
    #title |cFFFCDC00Enter the barn|r
    .goto 2372,14.65,42.17,5 >>Enter the barn
step
    #requires Barn
    .goto 2372,14.75,42.72 --clickradius
    .goto 2372,14.77,42.89 --npc location
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Marshall Wiltshire|r
    .complete 84658,1 --1/1 Marshall Wiltshire found
    .target Marshall Wiltshire
step
    #completewith next
    #label Ellie
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Ellie|r   
    .complete 84658,3 --1/1 Ellie found
    .target Ellie
step
    #completewith Ellie
    #title |cFFFCDC00Enter the house|r
    .goto 2372,14.6,42.19,5,0
    .goto 2372,14.27,41.89,5 >>Enter the house
step
    #requires Ellie
    .goto 2372,14.24,41.88 --clickradius
    .goto 2372,14.08,41.84 --npc location
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Ellie|r   
    .complete 84658,3 --1/1 Ellie found
    .target Ellie
step
    #label Barrels of Tar
    #loop
    .goto 2372,14.78,40.91,12,0
    .goto 2372,16.14,39.70,12,0
    .goto 2372,17.50,41.30,12,0
    .goto 2372,14.94,42.76,12,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r
    .complete 84639,1,10 --10/10 Barrels of Tar retrieved
step
    #loop
    .goto 2372,18.17,39.76,40,0
    .goto 2372,14.54,43.84,40,0
    .goto 2372,14.63,39.93,40,0
    >>Kill |cRXP_ENEMY_Defias|r. Loot them for |T135432:0|t[|cRXP_LOOT_Stolen Torches|r] and a |T656542:0|t[Unfamilar Emblem].
    .complete 84639,2 --10/10 Stolen Torches retrieved
    .accept 84640 >>Accept Emblematic of Things to Come
    .mob Defias Lookout
    .mob Defias Ringleader
step
    .goto 2372,20.51,39.51 --clickradius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Walker Gresham|r, |cRXP_FRIENDLY_Maggie Wiltshire|r and |cRXP_FRIENDLY_Danath Trollbane|r.
    .turnin 84639 >>Turn in Torches and Tar
    .goto 2372,20.47.39.59 --npc location
    .target +Walker Gresham
    .turnin 84658 >>Turn in Finding Family
    .goto 2372,20.50,39.39 --npc location
    .target +Maggie Wiltshire
    .turnin 84640 >>Turn in Emblematic of Things to Come
    .accept 84641 >>Accept Ill Tidings
    .goto 2372,20.46,39.29 --npc location
    .target +Danath Trollbane
step
    .goto 2372,19.4,56.42 --clickradius
    .goto 2372,19.41,56.18 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danath Trollbane|r
    .turnin 84641 >>Turn in Ill Tidings
    .target Danath Trollbane
step
    .goto 2372,19.36,56.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Roderick Brewston|r
    .accept 84643 >>Accept Curfew Kerfuffle
    .accept 84645 >>Accept Deputy Delivery
    .target Captain Roderick Brewston
step
    #completewith Brewston5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Marran Supporters|r and kill them.
    .complete 84643,1 --15/15 Marran Supporters sent home
    .mob Marran Supporter
    .skipgossipid 131456
step
    .goto 2372,20.57,62.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balinda Darkstone|r
    .complete 84645,1,1 --1/5 Brewston's requests delivered
    .skipgossipid 131507
    .target Balinda Darkstone
step
    .goto 2372,21.96,65.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joseph the Enlightened|r
    .complete 84645,1,2 --2/5 Brewston's requests delivered
    .mob Joseph the Enlightened
    .skipgossipid 131529
step
    #completewith next
    #label Brewston
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bertram Barleybeard|r
    .complete 84645,1,3 --3/5 Brewston's requests delivered
    .target Bertram Barleybeard
step
    #completewith Brewston
    #title |cFFFCDC00Enter the house|r
    .goto 2372,19.44,65.45,10,0
    .goto 2372,19.63,65.94,5,0
    .goto 2372,19.86,66.17,5 >>Enter the house
step
    #requires Brewston
    .goto 2372,19.85,66.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bertram Barleybeard|r
    .complete 84645,1,3 --3/5 Brewston's requests delivered
    .target Bertram Barleybeard
    .skipgossipid 131524
step
    #completewith next
    #label Brewston2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Luma Noss|r
    .complete 84645,1,4 --4/5 Brewston's requests delivered
step
    #completewith Brewston2
    #title |cFFFCDC00Leave the house|r
    .goto 2372,19.86,66.17,5,0 
    .goto 2372,19.63,65.94,5,0
    .goto 2372,19.45,65.12,5 >>Leave the house
step
    #requires Brewston2
    #completewith next
    #label Brewston3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Luma Noss|r
    .complete 84645,1,4 --4/5 Brewston's requests delivered
    .target Luma Noss
step
    #requires Brewston2
    #completewith Brewston3
    #title |cFFFCDC00Enter the house|r
    .goto 2372,17.44,66.47,10,0
    .goto 2372,13.85,69.22,10 >>Enter the house
step
    #requires Brewston3
    .goto 2372,14.39,70.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Luma Noss|r
    .complete 84645,1,4 --4/5 Brewston's requests delivered
    .skipgossipid 131514
    .target Luma Noss
step
    #completewith next
    #label Brewston4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amy Hardy|r
    .complete 84645,1,5 --5/5 Brewston's requests delivered
step
    #completewith Brewston4
    #title |cFFFCDC00Leave the house|r
    .goto 2372,13.83,69.28,10 >>Leave the house
step
    #requires Brewston4
    #label Brewston5
    .goto 2372,13.35,68.55,10,0
    .goto 2372,11.98,68.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amy Hardy|r
    .complete 84645,1 --5/5 Brewston's requests delivered
    .skipgossipid 131516
    .target Amy Hardy
step
    #loop
    .goto 2372,12.6,67.59,30,0
    .goto 2372,14.68,68.43,30,0
    .goto 2372,14.14,64.66,30,0
    .goto 2372,15.94,65.99,30,0
    .goto 2372,17.13,63.08,30,0
    .goto 2372,19.16,62,30,0
    .goto 2372,18.63,59.31,30,0
    .goto 2372,20.99,59.88,30,0
    .goto 2372,22.5,60.04,30,0
    .goto 2372,22.41,67.44,30,0
    .goto 2372,18.14,68.19,30,0
    .goto 2372,17.43,66.54,30,0
    .goto 2372,16.27,68.33,30,0
    .goto 2372,14.68,68.43,30,0
    .goto 2372,12.16,69.33,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Marran Supporters|r and kill them.
    .complete 84643,1 --15/15 Marran Supporters sent home
    .mob Marran Supporter
    .skipgossipid 131456
step
    #completewith next
    #label Curfew Kerfuffle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Roderick Brewston|r and |cRXP_FRIENDLY_Colonel Veronica Nials|r
    .turnin 84643 >>Turn in Curfew Kerfuffle
    .turnin 84645 >>Turn in Deputy Delivery
    .target +Captain Roderick Brewston
    .accept 84649 >>Accept Marran Trollbane
    .disablecheckbox
    .target Colonel Veronica Nials
step
    #completewith Curfew Kerfuffle
    #title |cFFFCDC00Enter the house|r
    .goto 2372,17.53,60.55,10 >>Enter the house
step
    #requires Curfew Kerfuffle
    .goto 2372,17.51,59.73 --clickradius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Roderick Brewston|r and |cRXP_FRIENDLY_Colonel Veronica Nials|r
    .turnin 84643 >>Turn in Curfew Kerfuffle
    .turnin 84645 >>Turn in Deputy Delivery
    .goto 2372,17.46,59.57
    .target +Captain Roderick Brewston
    .accept 84649 >>Accept Marran Trollbane
    .goto 2372,17.55,59.58
    .target +Colonel Veronica Nials
step
    .goto 2372,17.96,59.45,5,0
    .goto 2372,17.9,60.45,5,0
    .goto 2372,17.75,60.18
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84649,1 --1/1 Follow Colonel Nials downstairs
step
    .goto 2372,17.79,60.33 --clickradius
    .goto 2372,17.73,60.18 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin|r
    .complete 84649,2 --1/1 Speak to Faerin
    .timer 63,RP
    .skipgossipid 131587
    .target Faerin
step
    .goto 2372,17.9,60.45,5,0
    .goto 2372,17.96,59.45,5,0
    .goto 2372,17.55,59.79 --clickradius
    .goto 2372,17.54,59.58 --npc location
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Go back upstairs and wait for the Roleplay|r.
    .complete 84649,3 --1/1 Listen to the conversation
-- step
--     #completewith next
--     #label MarranRefuge
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Veronica Nials|r
--     .turnin 84649 >>Turn in Marran Trollbane
--     .accept 84650 >>Accept Finding Refuge at Refuge Pointe
--     .target Colonel Veronica Nials
-- step
--     #completewith MarranRefuge
--     #title |cFFFCDC00Follow the arrow|r
--     .goto 2372,17.92,60.50,6,0
--     .goto 2372,17.96,59.37,8 >>Go back upstairs
step
    -- #requires MarranRefuge
    .goto 2372,17.55,59.79 --clickradius
    .goto 2372,17.54,59.58 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Veronica Nials|r
    .turnin 84649 >>Turn in Marran Trollbane
    .accept 84650 >>Accept Finding Refuge at Refuge Pointe
    .target Colonel Veronica Nials
step
    #completewith next
    #label Pointe
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84650,1 --1/1 Meet Faerin at Refuge Pointe
step
    #completewith Pointe
    #title |cFFFCDC00Leave the house|r
    .goto 2372,17.52,60.58,7 >>Leave the house
step
    #requires Pointe
    .goto 2372,38.01,52.27
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84650,1 --1/1 Meet Faerin at Refuge Pointe
step
    .goto 2372,38.04,52.41 --clickradius
    .goto 2372,37.97,52.24 --npc location
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Corpse|r.
    .complete 84650,2 --1/1 Search the body for clues
    .skipgossipid 131607
    .mob Unknown Soldier
step
    .goto 2372,40.84,53.42 --clickradius
    .goto 2372,40.95,53.55 --npc location
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84650,3 --1/1 Follow Faerin up the hill
step
    .goto 2372,40.84,53.42 --clickradius
    .goto 2372,40.95,53.54 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karga Bloodfury|r
    .complete 84650,4 --1/1 Speak to Karga
    .skipgossipid 131610
    .target Karga Bloodfury
step
    .goto 2372,40.84,53.42 --clickradius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r and |cRXP_FRIENDLY_Karga Bloodfury|r
    .turnin 84650 >>Turn in Finding Refuge at Refuge Pointe
    .goto 2372,40.81,53.56
    .target +Faerin Lothar
    .accept 84651 >>Accept A Familiar Face
    .accept 84652 >>Accept Supply Run
    .goto 2372,40.95,53.55
    .target +Karga Bloodfury
step
    #completewith next
    >>Defeat |cRXP_ENEMY_Joseph the Enlightened|r
    .complete 84651,1 --1/1 Enemy leader defeated
    .mob Joseph the Enlightened
step
    #loop
    .goto 2372,40.01,49.53,8,0
    .goto 2372,39.81,48.42,8,0
    .goto 2372,40.66,48.17,8,0
    .goto 2372,40.78,46.72,8,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Supply Crates|r.
    .complete 84652,1 --4/4 Supply Crates collected
step
    .goto 2372,40.42,46.28
    >>Defeat |cRXP_ENEMY_Joseph the Enlightened|r
    .complete 84651,1 --1/1 Enemy leader defeated
    .mob Joseph the Enlightened
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karga Bloodfury|r and |cRXP_FRIENDLY_Faerin Lothar|r
    .turnin 84651 >>Turn in A Familiar Face
    .turnin 84652 >>Turn in Supply Run
    .goto 2372,40.94,53.55
    .target +Karga Bloodfury
    .accept 84656 >>Accept Onward to Hammerfall
    .goto 2372,40.83,53.57
    .target +Faerin Lothar
step
    .goto 2372,69.71,39.22 --clickradius
    .goto 2372,69.71,39.37 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r.
    .turnin 84656 >>Turn in Onward to Hammerfall
    .target Faerin Lothar
step
    .goto 2372,69.71,39.22 --clickradius
    .goto 2372,69.70,39.15 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 84704 >>Accept A Different Point of View
    .target Eitrigg
step
    #loop
    .goto 2372,70.18,37.76,6,0
    .goto 2372,68.94,35.05,6,0
    .goto 2372,69.32,34.89,6,0
    .goto 2372,69.18,31.83,6,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Supply Crates|r.
    *|cRXP_WARN_The third one is on the platform|r
    .complete 84704,1 --4/4 Supply Crates placed
step
    #completewith next
    #label To See a Troll
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r
    .turnin 84704 >>Turn in A Different Point of View
    .target Faerin Lothar
    .accept 84707 >>Accept To See a Troll
    .disablecheckbox
step
    #completewith To See a Troll
    #title |cFFFCDC00Enter the house|r
    .goto 2372,69.14,33.07,5 >>Enter the house
step
    #requires To See a Troll
    .goto 2372,69.45,32.95 --clickradius
    .goto 2372,69.57,32.88 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r
    .turnin 84704 >>Turn in A Different Point of View
    .target Faerin Lothar
    .accept 84707 >>Accept To See a Troll
step
    #completewith next
    #label Withering the Witherbark
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 84707 >>Turn in To See a Troll
    .target Overlord Geya'rah
    .accept 84705 >>Accept Withering the Witherbark
    .disablecheckbox
    .accept 84706 >>Accept Crime Family
    .disablecheckbox
step
    #completewith Withering the Witherbark
    #title |cFFFCDC00Leave the house|r
    .goto 2372,69.14,33.07,5 >>Leave the house
step
    #requires Withering the Witherbark
    .goto 2372,54.44,63.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 84707 >>Turn in To See a Troll
    .target Overlord Geya'rah
    .accept 84705 >>Accept Withering the Witherbark
    .accept 84706 >>Accept Crime Family
step
    #completewith Perry
    >>Kill the |cRXP_ENEMY_Witherbark Trolls|r
    .complete 84705,1 --15/15 Witherbark troll slain
    .mob Witherbark Headhunter
    .mob Witherbark Axe Thrower
    .mob Witherbark Shadow Hunter
step
    .goto 2372,66.49,61.46 --clickradius
    .goto 2372,66.53,61.31 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crestor|r
    .complete 84706,3 --1/1 Crestor saved
    .skipgossipid 124871
    .target Crestor
step
    .goto 2372,68.08,67.41 --clickradius
    .goto 2372,68.21,67.52 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt|r
    .complete 84706,2 --1/1 Holt saved
    .skipgossipid 124867
    .target Holt
step
    #label Perry
    .goto 2372,63.95,72.43 --clickradius
    .goto 2372,64.00,72.61 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Perry|r
    .complete 84706,1 --1/1 Perry saved
    .skipgossipid 124855
    .target Perry
step
    #loop
    .goto 2372,61.92,72.92,40,0
    .goto 2372,60.48,72.92,40,0
    .goto 2372,59.74,71.74,40,0
    .goto 2372,58.76,68.44,40,0
    .goto 2372,60.56,65.47,40,0
    .goto 2372,62.81,63.18,40,0
    .goto 2372,65.19,65.87,40,0
    >>Kill |cRXP_ENEMY_Witherbark troll|r
    .complete 84705,1 --15/15 Witherbark troll slain
    .mob Witherbark Headhunter
    .mob Witherbark Axe Thrower
    .mob Witherbark Shadow Hunter
    .mob Witherbark Raider
step
    .goto 2372,54.45,63.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 84705 >>Turn in Withering the Witherbark
    .turnin 84706 >>Turn in Crime Family
    .accept 84708 >>Accept The Syndicate Strikes Back
    .target Overlord Geya'rah
step
    .goto 2372,69.72,40.93 --clickradius
    .goto 2372,69.60,41.06 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 84708 >>Turn in The Syndicate Strikes Back
    .accept 85451 >>Accept The Burning of Hammerfall
    .mob Overlord Geya'rah
step
    .goto 2372,69.72,40.93 --clickradius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r and |cRXP_FRIENDLY_Faerin Lothar|r
    .accept 84709 >>Accept Hammerfall Down
    .goto 2372,69.72,40.93
    .target +Eitrigg
    .accept 84710 >>Accept Once Bitten Twice Shy
    .goto 2372,69.83,41.07
    .target +Faerin Lothar
step
    #completewith Syndicates
    >>Kill the |cRXP_ENEMY_Syndicate forces|r
    .complete 84709,1 --Retake Hammerfall (100%)
    .mob Syndicate Torchthrower
    .mob Syndicate Battle Shredder
    .mob Imposter Refugee
    .mob Syndicate Pyromancer
step
    .goto 2372,69.64,36.11
    >>Use the |T971277:0|t[|cRXP_WARN_ExtraActionButton|r].
    .complete 85451,1 --1/1 East Spirit Lodge saved
step
    .goto 2372,68.44,37.15
    >>Use the |T971277:0|t[|cRXP_WARN_ExtraActionButton|r].
    .complete 85451,2 --1/1 West Spirit Lodge saved
step
    .goto 2372,67.85,35.27
    >>Use the |T971277:0|t[|cRXP_WARN_ExtraActionButton|r].
    .complete 85451,3 --1/1 Stables saved
step
    .goto 2372,68.97,33.23
    >>Use the |T971277:0|t[|cRXP_WARN_ExtraActionButton|r].
    .complete 85451,5 --1/1 Great Hall saved
step
    .goto 2372,69.28,32.89
    >>Defeat |cRXP_ENEMY_Joseph the Enlightened|r |cRXP_WARN_inside the great hall|r
    .complete 84710,1 --1/1 Joseph the Enlightened defeated
    .mob Joseph the Enlightened
step
    #completewith next
    #label Blacksmith
    >>Use the |T971277:0|t[|cRXP_WARN_ExtraActionButton|r].
    .complete 85451,4 --1/1 Blacksmith saved
step    
    #completewith Blacksmith
    #title |cFFFCDC00Leave the house|r
    .goto 2372,69.02,33.06,10 >>Leave the house
step
    #requires Blacksmith
    #label Syndicates
    .goto 2372,68.44,31.96
    >>Use the |T971277:0|t[|cRXP_WARN_ExtraActionButton|r].
    .complete 85451,4 --1/1 Blacksmith saved
step
    #loop
    .goto 2372,69.23,34.83,30,0
    .goto 2372,70.11,38.11,30,0
    .goto 2372,67.82,35.7,30,0
    >>Kill |cRXP_ENEMY_Syndicates|r
    .complete 84709,1 --Retake Hammerfall (100%)
    .mob Syndicate Torchthrower
    .mob Syndicate Battle Shredder
    .mob Imposter Refugee
    .mob Syndicate Pyromancer
step
    .goto 2372,68.46,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r, |cRXP_FRIENDLY_Faerin Lothar|r and |cRXP_FRIENDLY_Overlord Geya'rah|r.
    .turnin 84709 >>Turn in Hammerfall Down
    .target +Eitrigg
    .turnin 84710 >>Turn in Once Bitten Twice Shy
    .target +Faerin Lothar
    .turnin 85451 >>Turn in The Burning of Hammerfall
    .accept 84711 >>Accept Danath's Disappearance
    .target +Overlord Geya'rah
step
    .goto 2372,41.55,61.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r.
    .turnin 84711 >>Turn in Danath's Disappearance
    .accept 84712 >>Accept False Flag
step
    .goto 2372,41.62,61.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dead Horse|r
    .complete 84712,2 --1/1 Dead Horse investigated
    .skipgossipid 125032
    .target Dead Horse
step
    .goto 2372,42.15,61.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Orcish Axe|r
    .complete 84712,1 --1/1 Orcish Axe investigated
    .skipgossipid 125039
step
    .goto 2372,40.86,61.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Suspicious Dirt|r
    .complete 84712,3 --1/1 Suspicious Dirt investigated
    .skipgossipid 125040
step
    .goto 2372,41.56,61.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .complete 84712,4 --1/1 Speak to Overlord Geya'rah
    .timer 25,RP
    .target Overlord Geya'rah
    .skipgossipid 125047
step
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 84712,5 --1/1 Listen to the conversation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r and |cRXP_FRIENDLY_Faerin Lothar|r
    .turnin 84712 >>Turn in False Flag
    .goto 2372,41.55,61.56
    .target +Overlord Geya'rah
    .accept 84657 >>Accept Return to Stromgarde
    .goto 2372,41.49,61.42
    .target +Faerin Lothar
step
    #completewith next
    #label Nials
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nials in the Stromgarde barracks|r
    .complete 84657,1 --1/1 Speak with Nials in the Stromgarde barracks
    .skipgossipid 131973
    .target Nials in the Stromgarde barracks
step
    #completewith Nials
    #title |cFFFCDC00Enter the house|r
    .goto 2372,17.54,60.62,10 >>Enter the house
step
    #requires Nials
    .goto 2372,17.52,59.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nials in the Stromgarde barracks|r
    .complete 84657,1 --1/1 Speak with Nials in the Stromgarde barracks
    .timer 12,RP
    .skipgossipid 131973
    .target Nials in the Stromgarde barracks
step   
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 84657,2 --1/1 Await rescue
step
    .goto 2372,17.73,60.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Roderick Brewston|r
    .turnin 84657 >>Turn in Return to Stromgarde
    .accept 87299 >>Accept How Old Are These Things?
    .accept 84659 >>Accept The Search for Faerin
    .target Captain Roderick Brewston
step
    #completewith next
    #hidewindow
    #label Army Tent
    .complete 84659,1 --1/1 Army tent searched
step
    #completewith Army Tent
    .goto 2372,17.88,60.42,5,0
    .goto 2372,17.97,59.51,5,0
    .goto 2372,17.66,59.57,6,0
    #title |cFFFCDC00Leave the house|r
    .goto 2372,17.54,60.63,3 >>Leave the house
step
    #requires Army Tent
    #completewith Proof2
    >>Kill |cRXP_ENEMY_Red Dawns|r. Loot them for |T5197944:0|t[|cRXP_LOOT_Proof|r].
    .complete 87299,1 --20/20 Articles of Proof
    .mob Red Dawn Enforcer
    .mob Red Dawn Firebrand
    .mob Red Dawn Houndmaster
    .mob Red Dawn Confessor
step
    #requires Army Tent
    #label Army tent2
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Red Dawn Book|r
    .complete 84659,1 --1/1 Army tent searched
    .skipgossipid 132032
step
    #requires Army Tent
    #completewith Army tent2
    #title |cFFFCDC00Enter the tent|r
    .goto 2372,15.51,61.8,10 >>Enter the tent
step
    #requires Army tent2
    .goto 2372,15.19,61.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Book|r
    .complete 84659,1 --1/1 Army tent searched
    .skipgossipid 132032
step
    #completewith next
    #hidewindow
    #label Inn basement
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scroll|r
    .complete 84659,2 --1/1 Inn basement searched
step
    #completewith Inn basement
    #title |cFFFCDC00Enter the inn|r
    .goto 2372,15.51,61.8,6,0
    .goto 2372,15.15,64.89,5 >>Enter the inn
step
    #requires Inn basement
    #completewith next
    #label Inn basement2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scroll|r
    .complete 84659,2 --1/1 Inn basement searched
    .skipgossipid 132030
step
    #completewith Inn basement2
    #requires Inn basement
    #hidewindow
    #title |cFFFCDC00Follow the Arrow|r
    .goto 2372,14.29,64.92,3,0
    .goto 2372,14.3,64.55,3,0
    .goto 2372,14.78,64.49,5 >>1
step
    #requires Inn basement2
    .goto 2372,14.47,64.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scroll|r
    .complete 84659,2 --1/1 Inn basement searched
    .skipgossipid 132030
step
    #requires Inn basement2
    #completewith next
    #hidewindow
    #label Inn basement3
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Red Dawn Book|r
    .complete 84659,4 --1/1 Home searched
 step
    #completewith Inn basement3
    #requires Inn basement2
    #title |cFFFCDC00Follow the Arrow|r
    .goto 2372,14.78,64.49,5,0
    .goto 2372,14.3,64.55,3,0
    .goto 2372,14.29,64.92,3,0
    .goto 2372,15.2,64.89,5 >>Exit the Inn
step
    #requires Inn basement3
    #completewith next
    #label Home searched
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Red Dawn Book|r
    .complete 84659,4 --1/1 Home searched
    .skipgossipid 132033
step
    #requires Inn basement3
    #completewith Home searched
    #title |cFFFCDC00Enter the house|r
    .goto 2372,16.38,68.54,5 >>Enter the house
step
    #requires Home searched
    .goto 2372,16.34,68.87
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Red Dawn Book|r
    .complete 84659,4 --1/1 Home searched
    .skipgossipid 132033
step
    #completewith next
    #label Tavern searched
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Red Dawn Book|r
    .complete 84659,3 --1/1 Tavern searched
step
    #completewith Tavern searched
    #title |cFFFCDC00Enter the tavern|r
    .goto 2372,16.33,68.46,5,0
    .goto 2372,13.89,69.28,5 >>Enter the tavern
step
    #requires Tavern searched
    .goto 2372,14.19,69.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Red Dawn Book|r
    .complete 84659,3 --1/1 Tavern searched
    .skipgossipid 132031
step
    #completewith next
    #hidewindow
    #label Mage Tower
    .complete 84659,5 --1/1 Mage tower searched
step
    #completewith Mage Tower
    #title |cFFFCDC00Follow the Arrow|r
    .goto 2372,11.3,70.44,5 >>Enter Mage Tower
step
    #requires Mage Tower
    .goto 2372,11.32,70.43,5,0
    .goto 2372,11.07,70.85,5,0
    .goto 2372,11.06,70.4,5,0
    .goto 2372,11.33,70.59,5,0
    .goto 2372,11.22,70.82,5,0
    .goto 2372,10.99,70.42,5,0
    .goto 2372,17.52,60.58,10,0
    .goto 2372,10.99,70.42
    #title |cFFFCDC00Climb the tower|r
    .complete 84659,5 --1/1 Mage tower searched
step
    #label Proof2
    .goto 2372,10.99,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r
    .complete 84659,6 --1/1 Faerin freed
    .skipgossipid 132034
    .target Faerin Lothar
step
    #completewith next
    #label Mage tower searched2
    >>Kill |cRXP_ENEMY_Red Dawns|r. Loot them for any |T5197944:0|t[|cRXP_LOOT_Articles of Proof|r].
    .complete 87299,1 --20/20 Articles of Proof
    .mob Red Dawn Enforcer
    .mob Red Dawn Firebrand
    .mob Red Dawn Houndmaster
step
    #completewith Mage tower searched2
    #title |cFFFCDC00Leave the mage tower|r
    .goto 2372,11.3,70.5,5,0
    .goto 2372,11.09,70.84,5,0
    .goto 2372,11.42,70.34,3 >>Leave the mage tower
step
    #requires Mage tower searched2
    .goto 2372,12.67,67.87,30,0
    .goto 2372,14.41,68.01,30,0
    .goto 2372,16.79,63.08,30,0
    .goto 2372,18.83,61.64,30,0
    .goto 2372,22.14,60.01,30,0
    .goto 2372,20.55,62.09,30,0
    .goto 2372,17.91,66.7,30,0
    .goto 2372,15.97,67.7,30,0
    >>Kill |cRXP_ENEMY_Red Dawns|r. Loot them for |T5366050:0|t[|cRXP_LOOT_Proof|r].
    .complete 87299,1 --20/20 Articles of Proof
    .mob Red Dawn Enforcer
    .mob Red Dawn Firebrand
    .mob Red Dawn Houndmaster
    .mob Red Dawn Confessor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Roderick Brewston|r and |cRXP_FRIENDLY_Faerin Lothar|r
    .turnin 87299 >>Turn in How Old Are These Things?
    .turnin 84659 >>Turn in The Search for Faerin
    .goto 2372,19.33,59.26
    .target +Captain Roderick Brewston
    .accept 84717 >>Accept Rise of the Red Dawn
    .goto 2372,19.45,59.19
    .target +Faerin Lothar
step
    .goto 2372,19.46,64.73
    >>Kill |cRXP_ENEMY_Joseph the Enlightened|r (|cRXP_WARN_third time is the charm|r)
    .complete 84717,1 --1/1 Joseph the Enlightened slain
    .mob Joseph the Enlightened
step
    .goto 2372,21.64,65.06
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84717,2 --1/1 Danath and Eitrigg found
step
    .goto 2372,21.64,65.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danath Trollbane|r
    .turnin 84717 >>Turn in Rise of the Red Dawn
    .accept 85529 >>Accept Past Glory
    .target Danath Trollbane
step
    .goto 2372,20.46,44.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin|r
    .complete 85529,1 --1/1 Speak to Faerin
    .timer 70,RP
    .skipgossipid 125097
step
    .goto 2372,20.46,44.45
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 85529,2 --1/1 Listen to Faerin and Danath
    .target Faerin
step
    .goto 2372,20.46,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r
    .turnin 85529 >>Turn in Past Glory
    .target Faerin Lothar
step 
    .goto 2372,20.66,44.97
    .zone 2339 >>Click on the Portal to Dornogal
]])
