RXPGuides.RegisterGuide([[
#classic
<< Alliance
#group RestedXP Endgame Guides
#subgroup Attunements
#name Onyxia Attunement (A)


step
    #completewith next
    .zone Burning Steppes>>|cRXP_WARN_Travel to|r |cFFfa9602Burning Steppes|r
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4182 >> Accept Dragonkin Menace
    .target Helendis Riverhorn
step
    #loop
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,81.8,60.0,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>Kill |cRXP_ENEMY_Black Broodlings|r, |cRXP_ENEMY_Black Dragonspawns|r, |cRXP_ENEMY_Black Wyrmkins|r and a |cRXP_ENEMY_Black Drake|r
    >>|cRXP_ENEMY_Black Dragonspawns|r|cRXP_WARN_,|r |cRXP_ENEMY_Black Wyrmkins|r |cRXP_WARN_and|r |cRXP_ENEMY_Black Drakes|r |cRXP_WARN_are elite. Group up if needed|r
    .complete 4182,1 -- Black Broodling slain (15)
    .mob +Black Broodling
    .complete 4182,2 -- Black Dragonspawn slain (10)
    .mob +Black Dragonspawn
    .complete 4182,4 -- Black Wyrmkin slain (4)
    .mob +Black Drake
    .complete 4182,3 -- Black Drake slain
    .mob +Black Wyrmkin
step
    .isQuestComplete 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4182 >> Turn in Dragonkin Menace
    .accept 4183 >> Accept The True Masters
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4183 >> Accept The True Masters
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgus Stoutarm|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Borgus Stoutarm
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4183 >> Turn in The True Masters
    .accept 4184 >> Accept The True Masters
    .target Magistrate Solomon
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4184 >> Turn in The True Masters
    .accept 4185 >> Accept The True Masters
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target Lady Katrana Prestor
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4185 >> Turn in The True Masters
    .accept 4186 >> Accept The True Masters
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge>> Fly to Redridge Mountains
    .target Dungar Longdrink
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4186 >> Turn in The True Masters
    .accept 4223 >> Accept The True Masters
    .target Magistrate Solomon
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Burning Steppes >> Fly to Burning Steppes
    .target Ariena Stormfeather
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4223 >> Turn in The True Masters
    .accept 4224 >> Accept The True Masters
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4182
    #completewith WindsorPickup
    .goto Burning Steppes,65.236,24.007
    .subzone 251 >> Travel to Flame Crest
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,65.012,23.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
    .complete 4224,1 -- Ragged John's Story (1)
    .skipgossip
    .target Ragged John
step
    #label WindsorPickup
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4224 >> Turn in The True Masters
    .accept 4241 >> Accept Marshal Windsor
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Enter Blackrock Depths
    >>|cRXP_WARN_Make sure you have a group ready|r
step
    .isQuestTurnedIn 4182
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r
    >>|cRXP_WARN_If your group does not have a Rogue you may need to kill|r |cRXP_ENEMY_High Interrogator Gerstahn|r |cRXP_WARN_for the|r |cRXP_LOOT_Prison Cell Key|r |cRXP_WARN_to open the doors|r
    .turnin 4241 >> Turn in Marshal Windsor
    .accept 4242 >> Accept Abandoned Hope
step
    .isQuestTurnedIn 4182
    #completewith next
    .subzone 2418 >>Travel to Morgan's Vigil in |cFFfa9602Burning Steppes|r
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
    >>|cRXP_WARN_The quest chain will stop here until you find|r |T134331:0|t[A Crumpled Up Note] |cRXP_WARN_at BRD|r
    .turnin 4242 >> Turn in Abandoned Hope
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    .isQuestTurnedIn 4242
    .goto Eastern Kingdoms,48.07,62.42
    #completewith next
    .subzone 1584,2 >>Enter Blackrock Depths
step
    .isQuestTurnedIn 4242
    >>Kill |cRXP_ENEMY_Dwarves|r at BRD. Loot them for |T134331:0|t[A Crumpled Up Note]
    .use 11446 >> |cRXP_WARN_Use|r |T134331:0|t[A Crumpled Up Note] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_It is important you do this before killing bosses |cRXP_ENEMY_General Angerforge|r and|r |cRXP_ENEMY_Golem Lord Argelmach|r
    >>|cRXP_WARN_If you still have not found this by now clear around the Detention Block until it drops|r
    .collect 11446,1,4264,1 -- A Crumpled Up Note (1)
    .accept 4264 >> Accept A Crumpled Up Note
step
    .isOnQuest 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r
    .turnin 4264 >> Turn in A Crumpled Up Note
    .accept 4282 >> Accept A Shred of Hope
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r
    .accept 4282 >> Accept A Shred of Hope
step
    .isOnQuest 4282
    >>Kill |cRXP_ENEMY_General Angerforge|r and |cRXP_ENEMY_Golem Lord Argelmach|r. Loot them both for |cRXP_LOOT_Marshal Windsor's Lost Information|r
    .complete 4282,1 -- Marshal Windsor's Lost Information (1)
    .complete 4282,2 -- Marshal Windsor's Lost Information (1)
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r
    >>|cRXP_WARN_ENSURE ALL PARTY MEMBERS HAVE AUTO ACCEPT OFF FOR THIS STEP! RestedXP HAS AUTO ACCEPT OFF FOR THIS STEP|r
    >>|cRXP_WARN_Accepting this quest will begin the Jail Break escort. Ensure you have cleared all of the Detention Block area for an easier time escorting|r |cRXP_FRIENDLY_Marshal Windsor|r
    .turnin 4282 >> Turn in A Shred of Hope
    .accept 4322,1 >> Accept Jail Break!
step
    .isOnQuest 4322
    >>Escort |cRXP_FRIENDLY_Marshal Windsor|r through BRD
    .complete 4322,1 -- Jail Break! (1)
step
    #completewith Rendezvoes
    .subzone 2418 >>Travel to Morgan's Vigil in |cFFfa9602Burning Steppes|r
step
    .isQuestComplete 4322
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4322 >> Turn in Jail Break!
    .accept 6402 >> Accept Stormwind Rendezvous
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #label Rendezvoes
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .accept 6402 >> Accept Stormwind Rendezvous
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #completewith next
    .goto StormwindClassic,70.424,85.171,5,0
    .goto StormwindClassic,69.709,86.083
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Rowe|r and |cRXP_FRIENDLY_Reginald Windsor|r
    >>|cRXP_FRIENDLY_Squire Rowe|r will call for |cRXP_FRIENDLY_Reginald Windsor's|r arrival after you talk to him at the Gates of Stormwind
    >>|cRXP_WARN_IF YOU ARE IN A PARTY ENSURE NO ONE AUTO ACCEPTS The Great Masquerade. AUTO ACCEPT HAS BEEN TURNED OFF FOR THIS STEP|r
    .turnin 6402 >> Turn in Stormwind Rendezvous
    .accept 6403,1 >> Accept The Great Masquerade
    .skipgossip
    .target Squire Rowe
    .target Reginald Windsor
step
    .isQuestTurnedIn 4322
    .goto StormwindClassic,75.955,19.114,-1
    .goto StormwindClassic,76.865,20.830,-1
    >>Escort |cRXP_FRIENDLY_Reginald Windsor|r into Stormwind Keep
    >>Do not assist |cRXP_FRIENDLY_Reginald Windsor|r in combat while inside the Keep. If you do so there is a high chance you may die. Stay back at the arrow location and let the event finish on its own. It will take a few minutes
    .complete 6403,1 -- Reginald's March (1)
    .target Reginald Windsor
step
    .isQuestComplete 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 6403 >> Turn in The Great Masquerade
    .accept 6501 >> Accept The Dragon's Eye
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .accept 6501 >> Accept The Dragon's Eye
    .target Highlord Bolvar Fordragon
step
    #completewith next
    .zone Winterspring >>Travel to |cFFfa9602Winterspring|r
step
    .isQuestTurnedIn 6403
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>Perform the mountain skip to reach |cRXP_FRIENDLY_Haleh|r
    >>The starting location is marked on your map. Follow the waypoint arrow carefully
    >>|cRXP_WARN_If you have|r |T134863:0|t[Noggenfogger Elixirs]|cRXP_WARN_, you can use them to gain|r |T135992:0|t[Slow Fall] |cRXP_WARN_to make the jump easier|r << !Priest !Mage
    >>|cRXP_WARN_If you have|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_or|r |T132917:0|t[Light Feathers]|cRXP_WARN_, you can use them to gain|r |T135992:0|t[Slow Fall] |cRXP_WARN_to make the jump easier|r << Mage
    >>|cRXP_WARN_If you have|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_or|r |T132917:0|t[Light Feathers]|cRXP_WARN_, you can use them to gain|r |T135992:0|t[Slow Fall] |cRXP_WARN_or|r |T135928:0|t[Levitate] |cRXP_WARN_to make the jump easier|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_Click here for video reference|r
step
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .turnin 6501 >>Turn in The Dragon's Eye
    .accept 6502 >>Accept Drakefire Amulet
    .target Haleh
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Enter Blackrock Spire
    >>|cRXP_WARN_This is a 10-man dungeon. You or somebody in your party must have the|r |T133343:0|t[|cRXP_LOOT_Seal of Ascension|r] |cRXP_WARN_to be able to enter Upper Blackrock Spire|r
step
    .isQuestTurnedIn 6403
    >>Kill |cRXP_ENEMY_General Drakkisath|r. Loot him for |cRXP_LOOT_Blood of the Black Dragon Champion|r
    .complete 6502,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Winterspring >>Travel to |cFFfa9602Winterspring|r
step
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>Perform the mountain skip to reach |cRXP_FRIENDLY_Haleh|r
    >>The starting location is marked on your map. Follow the waypoint arrow carefully
    >>|cRXP_WARN_If you have|r |T134863:0|t[Noggenfogger Elixirs]|cRXP_WARN_, you can use them to gain|r |T135992:0|t[Slow Fall] |cRXP_WARN_to make the jump easier|r << !Priest !Mage
    >>|cRXP_WARN_If you have|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_or|r |T132917:0|t[Light Feathers]|cRXP_WARN_, you can use them to gain|r |T135992:0|t[Slow Fall] |cRXP_WARN_to make the jump easier|r << Mage
    >>|cRXP_WARN_If you have|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_or|r |T132917:0|t[Light Feathers]|cRXP_WARN_, you can use them to gain|r |T135992:0|t[Slow Fall] |cRXP_WARN_or|r |T135928:0|t[Levitate] |cRXP_WARN_to make the jump easier|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_Click here for video reference|r
step
    #softcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    >>|cRXP_WARN_Be careful of the blue circle in front of |cRXP_FRIENDLY_Haleh|r. Stepping on it will teleport you into the cave|r
    .turnin 6502 >>Turn in Drakefire Amulet
    .target Haleh
step
    #hardcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    >>|cRXP_WARN_Be careful! DO NOT step on the blue circle in front of |cRXP_FRIENDLY_Haleh|r. This will teleport you into the cave with an elite dragon and you could DIE|r
    .turnin 6502 >>Turn in Drakefire Amulet
    .target Haleh

]])
RXPGuides.RegisterGuide([[
#classic
<< Horde
#group RestedXP Endgame Guides
#subgroup Attunements
#name Onyxia Attunement (H)

step
    #completewith next
    .subzone 340 >>Travel to Kargath in |cFFfa9602Badlands|r
step
    .goto Badlands,5.81,47.52
	>>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r to receive |T133473:0|t[|cRXP_LOOT_Warlord Goretooth's Command|r]. Use it to accept the quest
    .collect 12563,1,4903 --Warlord Goretooth's Command 1/1
    .accept 4903 >>Accept Warlord's Command
    .target Warlord Goretooth
    .skipgossip 0,1,1,1,1,1
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Enter Blackrock Spire
    >>|cRXP_WARN_This is a 5-10 man dungeon|r
step
    #sticky
    #label ImportantDocuments
    >>Loot the |cRXP_LOOT_Important Blackrock Documents|r
    >>This has 4 different possible spawn points in the dungeon:
    >>|cRXP_WARN_At the feet of|r |cRXP_ENEMY_Overlord Wyrmthalak|r
    >>|cRXP_WARN_In an empty corner next to|r |cRXP_ENEMY_War Master Voone|r
    >>|cRXP_WARN_Near|r |cRXP_ENEMY_Highlord Omokk|r
    >>|cRXP_WARN_Next to |cRXP_ENEMY_Urok Doomhowl's|r Tribute Pile|r
    .complete 4903,4 --Important Blackrock Documents 1/1
step
    >>Kill |cRXP_ENEMY_Highlord Omokk|r, |cRXP_ENEMY_War Master Voone|r and |cRXP_ENEMY_Overlord Wyrmthalak|r
    .complete 4903,2 --Highlord Omokk 1/1
    .mob +Highlord Omokk
    .complete 4903,3 --War Master Voone 1/1
    .mob +War Master Voone
    .complete 4903,1 --Overlord Wyrmthalak 1/1
    .mob +Overlord Wyrmthalak
step
    #requires ImportantDocuments
    #completewith next
    .subzone 340 >>Travel to Kargath in |cFFfa9602Badlands|r
step
    #requires ImportantDocuments
    .goto Badlands,5.81,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .turnin 4903 >>Turn in Warlord's Command
    .accept 4941 >>Accept Eitrigg's Wisdom
    .target Warlord Goretooth
step
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,34.27,39.35,10,0
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r and go through the dialogue, then talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4941 >>Turn in Eitrigg's Wisdom
    .accept 4974 >>Accept For The Horde!
    .target Eitrigg
    .target Thrall
    .skipgossip
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .subzone 1583,2 >>Enter Blackrock Spire
    >>|cRXP_WARN_This is a 10-man dungeon. You or somebody in your party must have the|r |T133343:0|t[|cRXP_LOOT_Seal of Ascension|r] |cRXP_WARN_to be able to enter Upper Blackrock Spire|r
step
    >>Kill |cRXP_ENEMY_Rend Blackhand|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 4974,1 --Head of Rend Blackhand 1/1
    .mob Rend Blackhand
step
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4974 >>Turn in For The Horde!
    .accept 6566 >>Accept What the Wind Carries
    .target Thrall
step
    .goto Orgrimmar,31.74,37.82
    >>Listen to |cRXP_FRIENDLY_Thrall's|r tale
    .complete 6566,1 --Thrall's Tale
    .target Thrall
    .skipgossip
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 6566 >>Turn in What the Wind Carries
    .accept 6567 >>Accept The Champion of the Horde
    .target Thrall
step
    #completewith next
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .fly Sun Rock Retreat >> Fly to Sun Rock Retreat
    .target Doras
    .zoneskip Stonetalon Mountains
    .zoneskip Desolace
    .zoneskip Feralas
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrols North to South through |cFFfa9602Desolace|r. His patrol path is marked on the map. Follow the waypoint arrow to ensure you cover his entire patrol path|r
    >>|cRXP_WARN_He despawns once he reaches The Twin Colossals in |cFFfa9602Feralas|r. After a 5 minute timer he respawns at the |cFFfa9602Stonetalon/Desolace border|r
    .turnin 6567 >>Turn in The Champion of the Horde
    .accept 6568 >>Accept The Testament of Rexxar
    .unitscan Rexxar
step
    #completewith next
    .zone Western Plaguelands >>Travel to |cFFfa9602Western Plaguelands|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myranda the Hag|r
    .turnin 6568 >>Turn in The Testament of Rexxar
    .accept 6569 >>Accept Oculus Illusions
    .target Myranda the Hag
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Enter Blackrock Spire
    >>|cRXP_WARN_This is a 10-man dungeon. You or somebody in your party must have the|r |T133343:0|t[|cRXP_LOOT_Seal of Ascension|r] |cRXP_WARN_to be able to enter Upper Blackrock Spire|r
step
    >>Kill any type of |cRXP_ENEMY_Dragonkin|r. Loot them for their |cRXP_LOOT_Black Dragonspawn Eyes|r
    >>|cRXP_WARN_Only the |cRXP_ENEMY_Dragonkin|r in Upper Blackrock Spire can drop the |cRXP_LOOT_Eyes|r
    .complete 6569,1 --Black Dragonspawn Eye 20/20
step
    #completewith next
    .zone Western Plaguelands >>Travel to |cFFfa9602Western Plaguelands|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myranda the Hag|r
    .turnin 6569 >>Turn in Oculus Illusions
    .accept 6570 >>Accept Emberstrife
    .target Myranda the Hag
step
    #completewith next
    .zone Dustwallow Marsh >>Travel to |cFFfa9602Dustwallow Marsh|r
step
    #completewith Emberstrife1
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Enter Emberstrife's Den
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Be careful! Make sure you use the|r |T133608:0|t[Amulet of Draconic Subversion] |cRXP_WARN_BEFORE you approach |cRXP_ENEMY_Emberstrife|r or he might KILL you|r
    .use 16787
step
    #label Emberstrife1
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emberstrife|r
    .use 16787 >>|cRXP_WARN_Use the|r |T133608:0|t[Amulet of Draconic Subversion] |cRXP_WARN_to disguise yourself|r
    .turnin 6570 >>Turn in Emberstrife
    .accept 6582 >>Accept The Test of Skulls, Scryer
    .accept 6583 >>Accept The Test of Skulls, Somnus
    .accept 6584 >>Accept The Test of Skulls, Chronalis
    .target Emberstrife
step
    #sticky
    #label SkullofDragons
    >>Kill |cRXP_ENEMY_Scryer|r in |cFFfa9602Winterspring|r
    >>Kill |cRXP_ENEMY_Somnus|r in |cFFfa9602Swamp of Sorrows|r
    >>Kill |cRXP_ENEMY_Chronalis|r in |cFFfa9602Tanaris|r
    >>Loot them for their |cRXP_LOOT_Skulls|r
    >>|cRXP_WARN_Their locations are marked on the map. It is recommended to do this with at least 5 players|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .goto Winterspring,52.91,55.77,0
    .complete 6583,1 --The Skull of Somnus 1/1
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .complete 6584,1 --The Skull of Chronalis 1/1
    .goto Tanaris,64.85,50.52
    .unitscan Scryer
    .unitscan Somnus
    .unitscan Chronalis
step
    #completewith next
    .zone Winterspring >>Travel to |cFFfa9602Winterspring|r
step
    #completewith next
    .goto Winterspring,57.07,49.97
    .subzone 2245 >>Enter the Mazthoril cave
step
    .goto Winterspring,52.91,55.77
    >>Kill |cRXP_ENEMY_Scryer|r in the back of the cave. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_WARN_Be careful of his|r |T135848:0|t[Frost Breath] |cRXP_WARN_ability (AOE spray in front of him)|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .unitscan Scryer
step
    #completewith next
    .zone Swamp of Sorrows >>Travel to |cFFfa9602Swamp of Sorrows|r
step
    #loop
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .goto Swamp of Sorrows,85.85,52.28,50,0
    .goto Swamp of Sorrows,84.66,48.44,50,0
    .goto Swamp of Sorrows,80.35,45.41,50,0
    .goto Swamp of Sorrows,78.44,50.46,50,0
    .goto Swamp of Sorrows,79.44,57.58,50,0
    .goto Swamp of Sorrows,77.47,62.39,50,0
    .goto Swamp of Sorrows,76.08,66.50,50,0
    .goto Swamp of Sorrows,76.25,70.23,50,0
    .goto Swamp of Sorrows,82.55,72.08,50,0
    .goto Swamp of Sorrows,85.42,63.68,50,0
    .goto Swamp of Sorrows,86.68,55.89,50,0
    >>Kill |cRXP_ENEMY_Somnus|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_WARN_Be careful of his|r |T136007:0|t[Corrosive Acid Breath] |cRXP_WARN_ability (AOE spray in front of him)|r
    >>|cRXP_WARN_He patrols in a small circle south/east of the lake|r
    .complete 6583,1 --The Skull of Somnus 1/1
    .unitscan Somnus
step
    #completewith next
    .zone Tanaris >>Travel to |cFFfa9602Tanaris|r
step
    #completewith next
    .goto Tanaris,61.55,50.54
    .subzone 1941 >>Travel to the Caverns of Time
step
    .goto Tanaris,64.85,50.52
    >>Kill |cRXP_ENEMY_Chronalis|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_WARN_Be careful of his|r |T135831:0|t[Sand Breath] |cRXP_WARN_ability (AOE spray in front of him)|r
    .complete 6584,1 --The Skull of Chronalis 1/1
    .unitscan Chronalis
step
    #requires SkullofDragons
    #completewith next
    .zone Dustwallow Marsh >>Travel to |cFFfa9602Dustwallow Marsh|r
step
    #requires SkullofDragons
    #completewith Emberstrife2
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Enter Emberstrife's Den
step
    #requires SkullofDragons
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Be careful! Make sure you use the|r |T133608:0|t[Amulet of Draconic Subversion] |cRXP_WARN_BEFORE you approach |cRXP_ENEMY_Emberstrife|r or he might KILL you|r
    .use 16787
step
    #label Emberstrife2
    #requires SkullofDragons
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emberstrife|r
    .use 16787 >>|cRXP_WARN_Use the|r |T133608:0|t[Amulet of Draconic Subversion] |cRXP_WARN_to disguise yourself|r
    .turnin 6582 >>Turn in The Test of Skulls, Scryer
    .turnin 6583 >>Turn in The Test of Skulls, Somnus
    .turnin 6584 >>Turn in The Test of Skulls, Chronalis
    .accept 6585 >>Accept The Test of Skulls, Axtroz
    .target Emberstrife
step
    #completewith next
    .zone Wetlands >>Travel to |cFFfa9602Wetlands|r
step
    #completewith next
    .goto Wetlands,75.44,46.76
    .subzone 1038 >>Travel to the Dragonmaw Gates
step
    #loop
    .goto Wetlands,83.47,48.78,0
    .line Wetlands,81.41,48.41,83.47,48.78,85.61,50.89
    .goto Wetlands,81.41,48.41,30,0
    .goto Wetlands,83.47,48.78,30,0
    .goto Wetlands,85.61,50.89,30,0
    >>Kill |cRXP_ENEMY_Axtroz|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_WARN_Be careful of his|r |T135831:0|t[Flame Breath] |cRXP_WARN_ability (AOE spray in front of him)|r
    .complete 6585,1 --The Skull of Axtroz 1/1
    .unitscan Axtroz
step
    #completewith next
    .zone Dustwallow Marsh >>Travel to |cFFfa9602Dustwallow Marsh|r
step
    #completewith Emberstrife3
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Enter Emberstrife's Den
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Be careful! Make sure you use the|r |T133608:0|t[Amulet of Draconic Subversion] |cRXP_WARN_BEFORE you approach |cRXP_ENEMY_Emberstrife|r or he might KILL you|r
    .use 16787
step
    #label Emberstrife3
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emberstrife|r
    .use 16787 >>|cRXP_WARN_Use the|r |T133608:0|t[Amulet of Draconic Subversion] |cRXP_WARN_to disguise yourself|r
    .turnin 6585 >>Turn in The Test of Skulls, Axtroz
    .accept 6601 >>Accept Ascension...
    .target Emberstrife
step
    #completewith next
    .zone Desolace >>Travel to |cFFfa9602Desolace|r
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrols North to South through |cFFfa9602Desolace|r. His patrol path is marked on the map. Follow the waypoint arrow to ensure you cover his entire patrol path|r
    >>|cRXP_WARN_He despawns once he reaches The Twin Colossals in |cFFfa9602Feralas|r. After a 5 minute timer he respawns at the |cFFfa9602Stonetalon/Desolace border|r
    .turnin 6601 >>Turn in Ascension...
    .accept 6602 >>Accept Blood of the Black Dragon Champion
    .unitscan Rexxar
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Enter Blackrock Spire
    >>|cRXP_WARN_This is a 10-man dungeon. You or somebody in your party must have the|r |T133343:0|t[|cRXP_LOOT_Seal of Ascension|r] |cRXP_WARN_to be able to enter Upper Blackrock Spire|r
step
    .isQuestTurnedIn 6601 
    >>Kill |cRXP_ENEMY_General Drakkisath|r. Loot him for |cRXP_LOOT_Blood of the Black Dragon Champion|r
    .complete 6602,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Desolace >>Travel to |cFFfa9602Desolace|r
step
    .isQuestComplete 6602
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrols North to South through |cFFfa9602Desolace|r. His patrol path is marked on the map. Follow the waypoint arrow to ensure you cover his entire patrol path|r
    >>|cRXP_WARN_He despawns once he reaches The Twin Colossals in |cFFfa9602Feralas|r. After a 5 minute timer he respawns at the |cFFfa9602Stonetalon/Desolace border|r
    .turnin 6602 >>Turn in Blood of the Black Dragon Champion
    .unitscan Rexxar

]])



RXPGuides.RegisterGuide([[
#classic
#subgroup Attunements
#group RestedXP Endgame Guides
#name Molten Core Attunement

step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lothos Riftwaker|r
    .accept 7848 >>Accept Attunement to the Core
    .target Lothos Riftwaker
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Enter Blackrock Depths
    >>|cRXP_WARN_Make sure you have a group ready|r
step
    #softcore
    >>Take a right before entering the The Exyceum and loot the |cRXP_LOOT_Core Fragment|r on the ground outside the |cFFfa9602Molton Core|r instance portal
    >>|cRXP_WARN_The fastest way to get here is by doing the 'Lava skip'. This starts from the platform of|r |cRXP_ENEMY_Lord Incendius|r
    --.link >> |cRXP_WARN_Click here for video reference|r
    .complete 7848,1 --Core Fragment 1/1
    --VV TODO: Lava skip video
step
    #hardcore
    >>Take a right before entering the The Exyceum and loot the |cRXP_LOOT_Core Fragment|r on the ground outside the |cFFfa9602Molton Core|r instance portal
    .complete 7848,1 --Core Fragment 1/1
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lothos Riftwaker|r
    .turnin 7848 >>Turn in Attunement to the Core
    .target Lothos Riftwaker
    .isQuestComplete 7848

]])



RXPGuides.RegisterGuide([[
#classic
#group RestedXP Endgame Guides
#subgroup Attunements
#name Blackwing Lair Attunement

step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #hardcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>Kill the |cRXP_ENEMY_Scarshield Quartermaster|r. Loot him for |T133473:0|t[|cRXP_LOOT_Blackhand's Command|r]. Use it to accept the quest
    >>|cRXP_WARN_This is a strong level 55 elite. Do this with a group for safety|r
    >>|cRXP_WARN_He is located in the hallway to the right of the Blackrock Spire instance portal|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>Accept Blackhand's Command
    .unitscan Scarshield Quartermaster
step
    #softcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>Kill the |cRXP_ENEMY_Scarshield Quartermaster|r. Loot him for |T133473:0|t[|cRXP_LOOT_Blackhand's Command|r]. Use it to accept the quest
    >>|cRXP_WARN_He is located in the hallway to the right of the Blackrock Spire instance portal|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>Accept Blackhand's Command
    .unitscan Scarshield Quartermaster
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Enter Blackrock Spire
    >>|cRXP_WARN_This is a 10-man dungeon. You or somebody in your party must have the|r |T133343:0|t[|cRXP_LOOT_Seal of Ascension|r] |cRXP_WARN_to be able to enter Upper Blackrock Spire|r
step
    >>Click |cRXP_PICK_Drakkisath's Brand|r in the final room of Upper Blackrock Spire behind |cRXP_ENEMY_General Drakkisath|r
    .turnin 7761 >>Turn in Blackhand's Command

]])



RXPGuides.RegisterGuide([[
#classic
#group RestedXP Endgame Guides
#subgroup Keys
#name Upper Blackrock Spire Key

step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>Enter Blackrock Spire
    >>|cRXP_WARN_Make sure you have a group ready|r
step
    >>Kill all types of mobs in Blackrock Spire until you loot an |T135725:0|t[|cRXP_LOOT_Unadorned Seal of Ascension|r]
    .collect 12219,1,4742 --Unadorned Seal of Ascension
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarshield Infiltrator|r
    >>|cRXP_WARN_As you enter Hordemar City at the start of the dungeon, he will be located on a platform to your left|r
    .accept 4742 >>Accept Seal of Ascension
    .target Scarshield Infiltrator
    .target Vaelan
step
    >>Kill |cRXP_ENEMY_Highlord Omokk|r. Loot him for |cRXP_LOOT_Gemstone of Spirestone|r
    >>Kill |cRXP_ENEMY_War Master Voone|r. Loot him for |cRXP_LOOT_Gemstone of Smolderthorn|r
    >>Kill |cRXP_ENEMY_Overlord Wyrmthalak|r. Loot him for |cRXP_LOOT_Gemstone of Bloodaxe|r
    >>|cRXP_WARN_The|r |cRXP_LOOT_Gemstones|r |cRXP_WARN_have a ~30% drop chance. You will most likely have to complete multiple LBRS runs|r
    .complete 4742,1 --Gemstone of Spirestone 1/1
    .target +Highlord Omokk
    .complete 4742,2 --Gemstone of Smolderthorn 1/1
    .target +War Master Voone
    .complete 4742,3 --Gemstone of Bloodaxe 1/1
    .target +Overlord Wyrmthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarshield Infiltrator|r
    >>|cRXP_WARN_As you enter Hordemar City at the start of the dungeon, he will be located on a platform to your left|r
    .turnin 4742 >>Turn in Seal of Ascension
    .accept 4743 >>Accept Seal of Ascension
    .target Scarshield Infiltrator
    .target Vaelan
step
    #completewith ForgedSeal
    .use 12339 >>|cRXP_WARN_Open|r |T132595:0|t[Vaelan's Gift] |cRXP_WARN_to loot|r |T133276:0|t[|cRXP_LOOT_Unforged Seal of Ascension|r] |cRXP_WARN_and|r |T134334:0|t[|cRXP_LOOT_Orb of Draconic Energy|r]
    .collect 12323,1,4743,1 --Unforged Seal of Ascension
    .collect 12300,1,4743,1 --Orb of Draconic Energy
step
    #completewith next
    .zone Dustwallow Marsh >>Travel to |cFFfa9602Dustwallow Marsh|r
step
    #softcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Enter Emberstrife's Den
    >>|cRXP_WARN_You will need a group of at least 3 players to complete this next section|r
step
    #hardcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Enter Emberstrife's Den
    >>|cRXP_WARN_You will need a group of at least 3 players to complete this next section, including a tank and healer for safety!|r
step
    #completewith next
    .cast 16057 >>|cRXP_WARN_Place the|r |T133276:0|t[|cRXP_LOOT_Unforged Seal of Ascension|r] |cRXP_WARN_on the ground before pulling|r |cRXP_ENEMY_Emberstrife|r
    .use 12323
step
    #label ForgedSeal
    .goto Dustwallow Marsh,56.67,87.64
    .use 12300 >>|cRXP_WARN_Attack|r |cRXP_ENEMY_Emberstrife|r. |cRXP_WARN_Once he is below 10% health, use the|r |T134334:0|t[|cRXP_LOOT_Orb of Draconic Energy|r] |cRXP_WARN_to gain control of|r |cRXP_ENEMY_Emberstrife|r
    >>|cRXP_WARN_Cast|r |T135824:0|t[Flames of the Black Flight] |cRXP_WARN_to forge the|r |T133276:0|t[|cRXP_LOOT_Unforged Seal of Ascension|r] |cRXP_WARN_that you placed on the ground|r
    >>Once complete, loot the |cRXP_PICK_Forged Seal of Ascension|r on the ground
    .complete 4743,1 --Forged Seal of Ascension
    .mob Emberstrife
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>Enter Blackrock Spire
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarshield Infiltrator|r
    >>|cRXP_WARN_As you enter Hordemar City at the start of the dungeon, he will be located on a platform to your left|r
    .turnin 4743 >>Turn in Seal of Ascension
    .target Scarshield Infiltrator
    .target Vaelan

]])



RXPGuides.RegisterGuide([[
#classic
<< Alliance
#group RestedXP Endgame Guides
#subgroup Keys
#name Scholomance Key (A)

step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_Go to the Auction House in any Major city and buy 2|r |T133221:0|t[Thorium Bars]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
	.zone Ironforge >> Travel to |cFFfa9602Ironforge|r
step
    #loop
    .goto Ironforge,33.4,20.0,0
    .goto Ironforge,33.4,20.0,70,0
    .goto Ironforge,25.6,61.6,70,0
    .goto Ironforge,64.8,77.8,70,0
    .goto Ironforge,70.6,48.0,70,0
    .goto Ironforge,65.0,22.6,70,0
    .goto Ironforge,50.4,10.4,70,0
    .goto Ironforge,32.6,21.0,70,0
    .goto Ironforge,40.8,39.4,70,0
    .goto Ironforge,51.2,56.6,70,0
    .goto Ironforge,55.8,35.2,70,0
    .goto Ironforge,33.0,22.4,70,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Hammerfall|r
    >>|cRXP_FRIENDLY_Courier Hammerfall|r |cRXP_WARN_patrols through all of Ironforge|r
    >>|cRXP_WARN_This quest can also be accepted in|r |cFFfa9602Stormwind City|r |cRXP_WARN_or|r |cFFfa9602Darnassus|r
    .acceptmultiple 5091,5090,5066 >> Accept A Call to Arms: The Plaguelands!
    .unitscan Courier Hammerfall --IF
    .unitscan Herald Moonstalker --DARN
    .unitscan Crier Goodman --SW
    .isQuestAvailable 5092
step
    #requires ThoriumBars
    #completewith ClearTheWayPU
    .subzone 3197 >>Travel to Chillwind Camp in |cFFfa9602Western Plaguelands|r
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5066 >> Turn in A Call to Arms: The Plaguelands!
    .accept 5092 >> Accept Clear the Way
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5092 >> Accept Clear the Way
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5091 >> Turn in A Call to Arms: The Plaguelands!
    .accept 5092 >> Accept Clear the Way
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5092 >> Accept Clear the Way
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    .isOnQuest 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5090 >> Turn in A Call to Arms: The Plaguelands!
    .accept 5092 >> Accept Clear the Way
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #label ClearTheWayPU
    .isQuestTurnedIn 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5092 >> Accept Clear the Way
    .target Commander Ashlam Valorfist
step
    #loop
    .goto Western Plaguelands,49.90,76.54,0
    .goto Western Plaguelands,48.70,80.37,60,0
    .goto Western Plaguelands,49.90,76.54,60,0
    .goto Western Plaguelands,50.88,76.14,60,0
    .goto Western Plaguelands,50.05,80.74,60,0
    >>Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Slavering Ghouls|r
    .complete 5092,1 -- Skeletal Flayer slain (10)
    .mob +Skeletal Flayer
    .complete 5092,2 -- Slavering Ghoul slain (10)
    .mob +Slavering Ghoul
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5098 >> Accept All Along the Watchtowers
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5098,1 --Tower One marked
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5098 >> Turn in All Along the Watchtower
    .accept 5533 >> Accept Scholomance
    .target Commander Ashlam Valorfist
step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >> Delete the |T135432:0|t[Beacon Torch]
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5533 >>Turn in Scholomance
    .accept 5537 >>Accept Skeletal Fragments
    .target Alchemist Arbington
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>Kill |cRXP_ENEMY_Skeletal Executioners|r and |cRXP_ENEMY_Skeletal Acolytes|r. Loot them for their |cRXP_LOOT_Skeletal Fragments|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5537 >>Turn in Skeletal Fragments
    .accept 5538 >>Accept Mold Rhymes With...
    .target Alchemist Arbington
step
    #completewith next
    .subzone 976 >>Travel to Gadgetzan in |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krinkle Goodsteel|r
    >>|cRXP_WARN_Turning in this quest requires you to pay 15 Gold|r
    .turnin 5538 >>Turn in Mold Rhymes With...
    .accept 5801 >>Accept Fire Plume Forged
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_If you did not buy them earlier, go to the Auction House in any Major city and buy 2|r |T133221:0|t[Thorium Bars]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .goto Tanaris,51.006,29.345
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
    .fly Un'Goro >> Fly to Un'Goro Crater
    .target Bera Stonehammer
    .zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>Travel to the top of the mountain at Fire Plume Ridge
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_Use the|r |T134457:0|t[Skeleton Key Mold] |cRXP_WARN_at the pool of lava to create the|r |cRXP_LOOT_Unfinished Skeleton Key|r
    .complete 5801,1 --Unfinished Skeleton Key (1)
step
    #completewith next
    .subzone 3197 >>Travel to Chillwind Camp in |cFFfa9602Western Plaguelands|r
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5801 >>Turn in Fire Plume Forged
    .accept 5804 >>Accept Araj's Scarab
    .target Alchemist Arbington
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>Travel to the center of the Ruins of Andorhal
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>Kill |cRXP_ENEMY_Araj the Summonor|r. Loot |cRXP_PICK_Araj's Phylactery|r on the ground for |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_is a strong elite. It is recommended to kill him in a group of at least 3 players|r
    .use 12650 >>|cRXP_WARN_Use an|r |T134961:0|t[Attuned Dampener] |cRXP_WARN_on him if you have one|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Kill |cRXP_ENEMY_Araj the Summonor|r. Loot |cRXP_PICK_Araj's Phylactery|r on the ground for |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_is a strong elite. It is recommended to kill him in a group of at least 3 players|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>Kill |cRXP_ENEMY_Araj the Summonor|r. Loot |cRXP_PICK_Araj's Phylactery|r on the ground for |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_is a strong elite and is surrunded by many mobs, clear them carefully. It is recommended to kill him in a group of at least 4 players|r
    .use 12650 >>|cRXP_WARN_Use an|r |T134961:0|t[Attuned Dampener] |cRXP_WARN_on him if you have one|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Kill |cRXP_ENEMY_Araj the Summonor|r. Loot |cRXP_PICK_Araj's Phylactery|r on the ground for |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_is a strong elite and is surrunded by many mobs, clear them carefully. It is recommended to kill him in a group of at least 4 players|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5804 >>Turn in Araj's Scarab
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5505 >>Turn in The Key to Scholomance
    .target Alchemist Arbington

]])



RXPGuides.RegisterGuide([[
#classic
<< Horde
#group RestedXP Endgame Guides
#subgroup Keys
#name Scholomance Key (H)


step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_Go to the Auction House in any Major city and buy 2|r |T133221:0|t[Thorium Bars]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .zone Undercity >>Travel to |cFFfa9602Undercity|r
step
    #loop
    .goto Undercity,67.43,46.15,0
    .goto Undercity,67.43,46.15,50,0
    .goto Undercity,71.23,51.64,50,0
    .goto Undercity,72.99,44.19,50,0
    .goto Undercity,70.91,36.25,50,0
    .goto Undercity,65.84,33.54,50,0
    .goto Undercity,60.90,36.56,50,0
    .goto Undercity,58.89,44.30,50,0
    .goto Undercity,60.98,51.69,50,0
    .goto Undercity,66.07,54.64,50,0
    .goto Undercity,70.81,51.49,50,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Balthaza|r
    .acceptmultiple 5093,5094,5095 >>Accept A Call to Arms: The Plaguelands!
    >>|cRXP_WARN_This quest can be also be accepted in|r |cFFfa9602Orgrimmar|r |cRXP_WARN_or|r |cFFfa9602Thunder Bluff|r
    .unitscan Warcaller Gorlach --ORG
    .unitscan Harbinger Balthazad --UC
    .unitscan Bluff Runner Windstrider --TB
    .isQuestAvailable 5096
    --VV TODO: Patrol paths
step
    #requires ThoriumBars
	#completewith ScarletDiversionsPU
	.subzone 152 >> Travel toward The Bulwark in |cFFfa9602Tirisfal Glades|r
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5093 >>Turn in A Call to Arms: The Plaguelands!
    .accept 5096 >>Accept Scarlet Diversions
	.target High Executor Derrington
    .isOnQuest 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Accept Scarlet Diversions
	.target High Executor Derrington
    .isQuestTurnedIn 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5094 >>Turn in A Call to Arms: The Plaguelands!
    .accept 5096 >>Accept Scarlet Diversions
	.target High Executor Derrington
    .isOnQuest 5094
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Accept Scarlet Diversions
	.target High Executor Derrington
    .isQuestTurnedIn 5094
step
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5095 >>Turn in A Call to Arms: The Plaguelands!
    .accept 5096 >>Accept Scarlet Diversions
	.target High Executor Derrington
    .isOnQuest 5095
step
	.goto Western Plaguelands,26.55,56.18
	>>Click the |cRXP_PICK_Box of Incendiaries|r by the fire
	.collect 12814,1,5095,1 --Flame in a Bottle (1)	
    .isOnQuest 5095
step
    #label ScarletDiversionsPU
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Accept Scarlet Diversions
	.target High Executor Derrington
    .isQuestTurnedIn 5095
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>Click the |cRXP_PICK_Command Tent|r, then use your |T132484:0|t[Scourge Banner]
	>>|cRXP_WARN_These mobs are relatively difficult and can chain-pull each other, so be careful|r
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5096 >>Turn in Scarlet Diversions
    .accept 5098 >>Accept All Along the Watchtowers
	.target High Executor Derrington
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5098,1 --Tower One marked
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5098 >>Turn in All Along the Watchtowers
    .accept 838 >>Accept Scholomance
	.target High Executor Derrington
 step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >> Delete the |T135432:0|t[Beacon Torch]
step
 	#era/som
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dithers|r
    .turnin 838 >>Turn in Scholomance
    .accept 964 >>Accept Skeletal Fragments
	.target Apothecary Dithers
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>Kill |cRXP_ENEMY_Skeletal Executioners|r and |cRXP_ENEMY_Skeletal Acolytes|r. Loot them for their |cRXP_LOOT_Skeletal Fragments|r
    .complete 964,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dithers|r
    .turnin 964 >>Turn in Skeletal Fragments
    .accept 5538 >>Accept Mold Rhymes With...
	.target Apothecary Dithers
step
    #completewith next
    .subzone 976 >>Travel to Gadgetzan in |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krinkle Goodsteel|r
    >>|cRXP_WARN_Turning in this quest requires you to pay 15 Gold|r
    .turnin 5514 >>Turn in Mold Rhymes With...
    .accept 5802 >>Accept Fire Plume Forged
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_If you did not buy them earlier, go to the Auction House in any Major city and buy 2|r |T133221:0|t[Thorium Bars]
    .collect 12359,2,5802,1 --Thorium Bar x2
step
    #completewith next
    .goto Silithus,48.69,36.67,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runk|r
    .fly Un'Goro >>Fly to Un'Goro Crater
	.target Runk Windtamer
	.zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>Travel to the top of the mountain at Fire Plume Ridge
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_Use the|r |T134457:0|t[Skeleton Key Mold] |cRXP_WARN_at the pool of lava to create the|r |cRXP_LOOT_Unfinished Skeleton Key|r
    .complete 5802,1 --Unfinished Skeleton Key (1)
step
    #completewith next
	.subzone 152 >> Travel toward the Bulwark in |cFFfa9602Tirisfal Glades|r
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dithers|r
    .turnin 5802 >>Turn in Fire Plume Forged
    .accept 5804 >>Accept Araj's Scarab
	.target Apothecary Dithers
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>Travel to the center of the Ruins of Andorhal
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>Kill |cRXP_ENEMY_Araj the Summonor|r. Loot |cRXP_PICK_Araj's Phylactery|r on the ground for |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_is a strong elite. It is recommended to kill him in a group of at least 3 players|r
    .use 12650 >>|cRXP_WARN_Use an|r |T134961:0|t[Attuned Dampener] |cRXP_WARN_on him if you have one|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Kill |cRXP_ENEMY_Araj the Summonor|r. Loot |cRXP_PICK_Araj's Phylactery|r on the ground for |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_is a strong elite. It is recommended to kill him in a group of at least 3 players|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>Kill |cRXP_ENEMY_Araj the Summonor|r. Loot |cRXP_PICK_Araj's Phylactery|r on the ground for |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_is a strong elite and is surrunded by many mobs, clear them carefully. It is recommended to kill him in a group of at least 4 players|r
    .use 12650 >>|cRXP_WARN_Use an|r |T134961:0|t[Attuned Dampener] |cRXP_WARN_on him if you have one|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Kill |cRXP_ENEMY_Araj the Summonor|r. Loot |cRXP_PICK_Araj's Phylactery|r on the ground for |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_is a strong elite and is surrunded by many mobs, clear them carefully. It is recommended to kill him in a group of at least 4 players|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dithers|r
    .turnin 5804 >>Turn in Araj's Scarab
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dithers|r
    .turnin 5511 >>Turn in The Key to Scholomance
	.target Apothecary Dithers

]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Endgame Guides
#subgroup Keys
#name Blackrock Depths Key


step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #softcoreserver
    #softcore
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Franclorn Forgewright|r
    >>|cRXP_WARN_You must be a|r |T132331:0|t[Ghost] |cRXP_WARN_to be able to talk to|r |cRXP_FRIENDLY_Franclorn Forgewright|r
    >>|cRXP_WARN_Die intentionally in the lava in Blackrock Mountain, ideally near the Molten Core entrance location|r
    .accept 3801 >> Accept Dark Iron Legacy
    .turnin 3801 >> Turn in Dark Iron Legacy
    .accept 3802 >> Accept Dark Iron Legacy
    .target Franclorn Forgewright
step
    #hardcoreserver
    #completewith next
    .goto 1415,48.656,64.134
    .cast 417803 >>|cRXP_WARN_Click the|r |cRXP_PICK_Brazier of Embersight|r |cRXP_WARN_to gain the|r |T136215:0|t[Emberglow Vision] |cRXP_WARN_debuff|r
step
    #hardcoreserver
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Franclorn Forgewright|r
    >>|cRXP_WARN_You must have the|r |T136215:0|t[Emberglow Vision] |cRXP_WARN_debuff to see him|r
    .accept 3801 >> Accept Dark Iron Legacy
    .turnin 3801 >> Turn in Dark Iron Legacy
    .accept 3802 >> Accept Dark Iron Legacy
    .target Franclorn Forgewright
step
    #softcore
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Ressurect at your corpse and enter Blackrock Depths
    >>|cRXP_WARN_Make sure you have a group ready|r
step
    #hardcoreserver
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Enter Blackrock Depths
    >>|cRXP_WARN_Make sure you have a group ready|r
step
    >>Kill |cRXP_ENEMY_Fineous Darkvire|r. Loot him for the |cRXP_LOOT_Ironfel|r
    >>|cRXP_WARN_He patrols the quarry outside of Lord Incendius' chamber|r
    .complete 3802,1 -- Ironfel (1)
    .target Fineous Darkvire
    .isOnQuest 3802
step
    >>Run back near the location above the Ring of Law
    >>Click the |cRXP_PICK_Monument of Franclorn Forgewright|r
    .turnin 3802 >> Turn in Dark Iron Legacy
    .isQuestComplete 3802

    ]])


RXPGuides.RegisterGuide([[
#classic
#group RestedXP Endgame Guides
#subgroup Keys
#name Dire Maul Key

step
    #completewith next
    .zone Feralas >>Travel to |cFFfa9602Feralas|r
    .subzoneskip 2557
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Enter the Eastern entrance of Dire Maul
    >>|cRXP_WARN_Make sure you have a group ready|r
step
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pusillin|r
    >>|cRXP_WARN_This is a green |cRXP_FRIENDLY_Imp|r at the start of the instance. He will run away after talking to him. You'll have to chase and talk to him multiple times until he becomes hostile in The Hidden Reach chamber|r
    .skipgossip
    .unitscan Pusillin
step
    >>Kill |cRXP_ENEMY_Pusillin|r once he becomes hostile. Loot him for the |T134244:0|t[|cRXP_LOOT_Crescent Key|r]
    .collect 18249,1 --Crescent Key
    .unitscan Pusillin

]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Endgame Guides
#name Demon Fall Canyon Attunement
#subgroup Attunements
<<sod

step
    #completewith next
    .subzone 2479 >>Travel to Emerald Sanctuary in |cFFfa9602Felwood|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Shadowtooth Emissary|r
    .accept 84384 >> Accept Demonic Deceptions
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >> Travel to |cFFfa9602Winterspring|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
	.line Winterspring,64.0,22.6,65.6,23.2,67.6,22.6,65.6,19.6,63.6,16.2,65.6,19.6,64.0,20.8,64.0,22.6
	.goto Winterspring,64.00,22.60,25,0
	.goto Winterspring,65.60,23.20,25,0
	.goto Winterspring,67.60,22.60,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,63.60,16.20,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,64.00,20.80,25,0
	.goto Winterspring,64.00,22.60,25,0
    >>Kill |cRXP_ENEMY_Berserk Owlbeasts|r. Loot them for their |T237413:0|t[|cRXP_LOOT_Owlbeast Pineal Glands|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .subzone 2479 >>Travel to Emerald Sanctuary in |cFFfa9602Felwood|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Shadowtooth Emissary|r
    .turnin 84384 >> Turn in Demonic Deceptions
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket

]])
