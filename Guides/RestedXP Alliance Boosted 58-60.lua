local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name Boosted Character 58-60
#version 1
#group RestedXP Alliance Boosted 58-60
#defaultfor 58Boost
#next RestedXP Alliance 60-70\59-61 Hellfire Peninsula
step << Warrior
.accept 64028 >>Accept A New Beginning
    .turnin 64028 >>Turn in A New Beginning
    .accept 64031 >>Accept Tools for Survival
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Warrior
    .goto StormwindClassic,78.3,47.4
    .turnin 64031 >>Turn in Tools for Survival
    .accept 64034 >>Accept Combat Training
    .complete 64034,1 --1/1 Train a Spell (1)
step << Warrior
    .goto StormwindClassic,78.3,47.4
    .turnin 64034 >>Turn in Combat Training
    .accept 64035 >>Accept Talented
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Warrior
    .goto StormwindClassic,78.3,47.4
    .turnin 64035 >>Turn in Talented
    .accept 64038 >>Accept The Dark Portal
--
step << Paladin
    .goto StormwindClassic,37.3,33.0
    .accept 64028 >>Accept A New Beginning
step << Paladin
    .goto StormwindClassic,37.2,33.2
    .turnin 64028 >>Turn in A New Beginning
    .accept 64031 >>Accept Tools for Survival
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Paladin
    .goto StormwindClassic,37.2,33.2
    .turnin 64031 >>Turn in Tools for Survival
    .accept 64034 >>Accept Combat Training
    .complete 64034,1 --1/1 Train a Spell (1)
step << Paladin
    .goto StormwindClassic,37.2,33.2
    .turnin 64034 >>Turn in Combat Training
    .accept 64035 >>Accept Talented
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Paladin
    .goto StormwindClassic,37.2,33.2
    .turnin 64035 >>Turn in Talented
    .accept 64038 >>Accept The Dark Portal
--
step << Rogue
    .goto StormwindClassic,78.3,57.3
    .accept 64028 >>Accept A New Beginning
    .turnin 64028 >>Turn in A New Beginning
    .accept 64031 >>Accept Tools for Survival
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Rogue
    .goto StormwindClassic,78.3,57.3
    .turnin 64031 >>Turn in Tools for Survival
    .accept 64034 >>Accept Combat Training
    .complete 64034,1 --1/1 Train a Spell (1)
step << Rogue
    .goto StormwindClassic,78.3,57.3
    .turnin 64034 >>Turn in Combat Training
    .accept 64035 >>Accept Talented
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Rogue
    .goto StormwindClassic,78.3,57.3
    .turnin 64035 >>Turn in Talented
    .accept 64038 >>Accept The Dark Portal
--
step << Priest
    .goto StormwindClassic,38.8,26.4
    .accept 64028 >>Accept A New Beginning
    .turnin 64028 >>Turn in A New Beginning
    .accept 64031 >>Accept Tools for Survival
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Priest
    .goto StormwindClassic,38.8,26.4
    .turnin 64031 >>Turn in Tools for Survival
    .accept 64034 >>Accept Combat Training
    .complete 64034,1 --1/1 Train a Spell (1)
step << Priest
    .goto StormwindClassic,38.8,26.4
    .turnin 64034 >>Turn in Combat Training
    .accept 64035 >>Accept Talented
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Priest
    .goto StormwindClassic,38.8,26.4
    .turnin 64035 >>Turn in Talented
    .accept 64038 >>Accept The Dark Portal

--
step << Mage
    .goto StormwindClassic,38.7,79.3
    .accept 64028 >>Accept A New Beginning
    .turnin 64028 >>Turn in A New Beginning
    .accept 64031 >>Accept Tools for Survival
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Mage
    .goto StormwindClassic,38.7,79.3
    .turnin 64031 >>Turn in Tools for Survival
    .accept 64034 >>Accept Combat Training
    .complete 64034,1 --1/1 Train a Spell (1)
step << Mage
    .goto StormwindClassic,38.7,79.3
    .turnin 64034 >>Turn in Combat Training
    .accept 64035 >>Accept Talented
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Mage
    .goto StormwindClassic,38.7,79.3
    .turnin 64035 >>Turn in Talented
    .accept 64038 >>Accept The Dark Portal

--
step << Warlock
    .goto StormwindClassic,26.0,77.4
    .accept 64028 >>Accept A New Beginning
    .turnin 64028 >>Turn in A New Beginning
    .accept 64031 >>Accept Tools for Survival
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Warlock
    .goto StormwindClassic,26.0,77.4
    .turnin 64031 >>Turn in Tools for Survival
    .accept 64034 >>Accept Combat Training
    .complete 64034,1 --1/1 Train a Spell (1)
step << Warlock
    .goto StormwindClassic,26.0,77.4
    .turnin 64034 >>Turn in Combat Training
    .accept 64035 >>Accept Talented
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Warlock
    .goto StormwindClassic,26.1,77.4
    .turnin 64035 >>Turn in Talented
    .accept 64038 >>Accept The Dark Portal

--
step << Hunter
    .goto StormwindClassic,61.7,15.2
    .accept 64028 >>Accept A New Beginning
    .turnin 64028 >>Turn in A New Beginning
    .accept 64031 >>Accept Tools for Survival
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Hunter
    .goto StormwindClassic,61.7,15.2
    .turnin 64031 >>Turn in Tools for Survival
    .accept 64034 >>Accept Combat Training
    .complete 64034,1 --1/1 Train a Spell (1)
step << Hunter
    .goto StormwindClassic,61.7,15.2
    .turnin 64034 >>Turn in Combat Training
    .accept 64035 >>Accept Talented
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Hunter
    .goto StormwindClassic,61.7,15.2
    .turnin 64035 >>Turn in Talented
    .accept 64038 >>Accept The Dark Portal

step << Druid
    .goto StormwindClassic,21.4,51.4
    .turnin 64028 >>Turn in A New Beginning
    .accept 64031 >>Accept Tools for Survival
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Druid
    .goto StormwindClassic,21.4,51.4
    .turnin 64031 >>Turn in Tools for Survival
    .accept 64034 >>Accept Combat Training
    .complete 64034,1 --1/1 Train a Spell (1)
step << Druid
    .goto StormwindClassic,21.4,51.4
    .turnin 64034 >>Turn in Combat Training
    .accept 64035 >>Accept Talented
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Druid
    .goto StormwindClassic,21.4,51.4
    .turnin 64035 >>Turn in Talented
    .accept 64038 >>Accept The Dark Portal
step << skip
    #completewith bs1
    .goto StormwindClassic,78.0,18.2
.target King Varian Wrynn
.target Highlord Bolvar Fordragon
>>Talk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
-->>Talk to |cRXP_FRIENDLY_King Varian Wrynn|r
    .accept 6182 >>Accept The First and the Last
    >>There is a long scripted RP sequence part of the Onyxia attunement quest that makes Bolvar not able to interact with players for a few minutes, if that's the case, skip this step and try to get this quest later after finishing Burning Steppes
step
    #label bs1
    .goto StormwindClassic,66.2,62.2
    .complete 64038,1 --Speak to Dungar Longdrink, the Gryphon Master (1)
    .fly Morgan's Vigil>>Fly to Morgan's Vigil
step
    .goto Burning Steppes,85.820,68.948
.target Helendis Riverhorn
>>Talk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4182 >>Accept Dragonkin Menace
step
    .goto Burning Steppes,87.7,46.1
    .goto Burning Steppes,88.8,37.6
    .goto Burning Steppes,88.3,41.4
    .goto Burning Steppes,88.6,53.4
    .complete 4182,1 --Black Broodling (15)
    .complete 4182,2 --Black Dragonspawn (10)
    .complete 4182,3 --Black Drake (1)
    .complete 4182,4 --Black Wyrmkin (4)
step
    .goto Burning Steppes,85.820,68.948
>>Talk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4182 >>Turn in Dragonkin Menace
.target Helendis Riverhorn
    .accept 4183 >>Accept The True Masters
step
    .goto Burning Steppes,84.4,68.4
    .fly Lakeshire >>Fly to Lakeshire
step
    .goto Redridge Mountains,29.8,44.5
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4183 >>Turn in The True Masters
.target Magistrate Solomon
    .accept 4184 >>Accept The True Masters
step
    .goto Redridge Mountains,30.58,59.41
    .fly Stormwind>>Fly to Stormwind
step
    .goto StormwindClassic,78.0,18.2
>>Talk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4184 >>Turn in The True Masters
.target Highlord Bolvar Fordragon
    .accept 4185 >>Accept The True Masters
-- .accept 6182 >>Accept The First and the Last
step
    .goto StormwindClassic,78.11,17.75
    >>Talk to Lady Prestor
    .complete 4185,1 --Advice from Lady Prestor (1)
step
    .goto StormwindClassic,78.0,18.2
>>Talk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4185 >>Turn in The True Masters
.target Highlord Bolvar Fordragon
    .accept 4186 >>Accept The True Masters
step << skip
    .goto StormwindClassic,75.9,59.8
>>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 6182 >>Turn in The First and the Last
.target Master Mathias Shaw
    .accept 6183 >>Accept Honor the Dead
    .turnin 6183 >>Turn in Honor the Dead
    .accept 6184 >>Accept Flint Shadowmore
step
    .goto StormwindClassic,66.2,62.3
    .fly Lakeshire >>Fly to Lakeshire
step
    .goto Redridge Mountains,29.8,44.5
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4186 >>Turn in The True Masters
.target Magistrate Solomon
    .accept 4223 >>Accept The True Masters
step
    .goto Redridge Mountains,30.6,59.4
    .fly Morgan's Vigil >>Fly to Morgan's Vigil
step
    .goto Burning Steppes,84.6,68.9
.target Marshal Maxwell
>>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4223 >>Turn in The True Masters
step
    .goto Burning Steppes,84.4,68.3
    .fly Southshore >>Fly to Southshore
step
    .goto Hillsbrad Foothills,51.1,58.9
    .home >>Set your Hearthstone to Southshore
step
    .goto Hillsbrad Foothills,49.4,52.3
    .fly Chillwind Camp >>Fly to Chillwind Camp
step
    #completewith mark1
    .goto Western Plaguelands,42.9,84.6,0
    >>Speak to the Draenei NPC in Chillwind
.target Anchorite Truuen
>>Talk to |cRXP_FRIENDLY_Anchorite Truuen|r
    .accept 9474 >>Accept The Mark of the Lightbringer
    >>The quest giver is part of a long scripted RP sequence, if you can't find him skip this step
step
    .goto Western Plaguelands,42.8,84.0
.target Commander Ashlam Valorfist
>>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5092 >>Accept Clear the Way
step
    .goto Western Plaguelands,43.418,84.834
.target Nathaniel Dumah
>>Talk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .accept 5903 >>Accept A Plague Upon Thee
step << skip
    .goto Western Plaguelands,43.7,84.5
>>Talk to |cRXP_FRIENDLY_Flint Shadowmore|r
    .turnin 6184 >>Turn in Flint Shadowmore
.target Flint Shadowmore
    .accept 6185 >>Accept The Eastern Plagues
step
    #label mark1
    .goto Western Plaguelands,42.9,85.0
    .fly Light's Hope Chapel >>Fly to Light's Hope Chapel
step
    .goto Eastern Plaguelands,79.5,64.0
.target Caretaker Alen
>>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 6021 >>Accept Zaeldarr the Outcast
    .accept 5281 >>Accept The Restless Souls
step << Hunter
    #sticky
    .tame 8602 >> If your pet has no abilities other than Growl, ditch your pet and tame a level 58 bat on your way to Plaguewood
    >>Buy some fungi to feed your new pet
    .collect 8948,20
    .goto Eastern Plaguelands,79.5,64.0
step
    #sticky
    .abandon 5211 >>Abandon Defenders of Darrowshire if you have this quest
step
    .goto Eastern Plaguelands,34.0,28.1
	>>Look for termite mounds around Plaguewood
    .complete 5903,1 --Collect Plagueland Termites (x100)
step
    .goto Eastern Plaguelands,14.5,33.7
>>Talk to |cRXP_FRIENDLY_Egan|r
    .turnin 5281 >>Turn in The Restless Souls
.target Egan
    .accept 5282 >>Accept The Restless Souls
step
    #completewith next
    .hs >> Hearth to Southshore
step
    .goto Hillsbrad Foothills,49.4,52.3
    .fly Chillwind Camp >>Fly to Chillwind Camp
step
    #completewith tower
    .goto Western Plaguelands,42.9,84.6,0
    >>Speak to the Draenei NPC in Chillwind
.target Anchorite Truuen
>>Talk to |cRXP_FRIENDLY_Anchorite Truuen|r
    .accept 9474 >>Accept The Mark of the Lightbringer
    >>The quest giver is part of a long scripted RP sequence, if he's not at Chillwind just keep an eye for it while you quest through the zone
step
    .goto Western Plaguelands,50.4,76.4
    .complete 5092,2 --Slavering Ghoul (10)
    .complete 5092,1 --Skeletal Flayer (10)
step
    .goto Western Plaguelands,49.19,78.64
    >>Speak to Marlene Redpath inside the house
.target Marlene Redpath
>>Talk to |cRXP_FRIENDLY_Marlene Redpath|r
    .accept 5142 >>Accept Little Pamela
step
    .goto Western Plaguelands,42.8,84.0
>>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5092 >>Turn in Clear the Way
.target Commander Ashlam Valorfist
    .accept 5097 >>Accept All Along the Watchtowers
    .accept 5215 >>Accept The Scourge Cauldrons
step
    .goto Western Plaguelands,43.0,84.6
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5215 >>Turn in The Scourge Cauldrons
.target High Priestess MacDonnell
    .accept 5216 >>Accept Target: Felstone Field
step
    .goto Western Plaguelands,43.418,84.834
>>Talk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 5903 >>Turn in A Plague Upon Thee
.target Nathaniel Dumah
    .accept 5904 >>Accept A Plague Upon Thee
step
    .goto Western Plaguelands,40.0,71.8
	>>Use the beacon torch in your bags at the side of the doorway of the tower
    .complete 5097,1 --Tower One marked (1)
step
    .goto Western Plaguelands,37.1,56.9
    >>Kill the cauldron lord and loot the cauldron key
    .turnin 5216 >>Turn in Target: Felstone Field
    .accept 5217 >>Accept Return to Chillwind Camp
step
    .goto Western Plaguelands,42.3,66.2
	>>Use the beacon torch in your bags at the side of the doorway of the tower
    .complete 5097,2 --Tower Two marked (1)
step
    .goto Western Plaguelands,43.0,84.4
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5217 >>Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
    .accept 5219 >>Accept Target: Dalson's Tears
step
    .goto Western Plaguelands,46.7,71.0
	>>Use the beacon torch in your bags at the side of the doorway of the tower
    .complete 5097,4 --Tower Four marked (1)
step
    .goto Western Plaguelands,53.7,64.7
.target Mulgris Deepriver
>>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .accept 4984 >>Accept The Wildlife Suffers Too
step
	#completewith Businessman
    .goto Western Plaguelands,46.0,47.7,0
	>>The Diseased Wolves share spawns with Carrion Lurkers. Kill them too if you're unable to find Wolves.
    .complete 4984,1 --Kill Diseased Wolf (x8)
	.unitscan Diseased Wolf
step
    .goto Western Plaguelands,47.8,50.8
	>>Click on the diary inside the barn
    .turnin 5058 >> Turn in Mrs. Dalson Diary
step
	#completewith DalsonsT
    .goto Western Plaguelands,46.9,51.5,0
	>>Look for the Wandering Skeleton that patrols the area around the farmhouse
    .collect 12738,1 --Collect Dalson Outhouse Key (x1)
	.unitscan Wandering Skeleton
step
    .goto Western Plaguelands,46.0,52.4
    .complete 5219,1 --Collect Dalson's Tears Cauldron Key (x1)
step
	#label DalsonsT
    .goto Western Plaguelands,46.2,52.1
    .turnin 5219 >> Turn in Target: Dalson's Tears
    .accept 5220 >> Accept Return to Chillwind Camp
step
    .goto Western Plaguelands,46.9,51.5
	>>Look for the Wandering Skeleton that patrols the area around the farmhouse
    .collect 12738,1 --Collect Dalson Outhouse Key (x1)
	.unitscan Wandering Skeleton
step
	#completewith next
    .goto Western Plaguelands,48.2,49.7
	>>Make sure you're full health before turning in
    .turnin 5059 >> Turn in Locked Away
step
    .goto Western Plaguelands,48.2,49.7
	>>Kill Farmer Dalson. Loot him for the key
    .collect 12739,1 --Collect Dalson Cabinet Key (x1)
step
    .goto Western Plaguelands,47.4,49.7
	>>Click on the cabinet at the top floor of the farmhouse
    .turnin 5060 >> Turn in Locked Away
step
    .goto Western Plaguelands,48.4,31.9
    .turnin 5904 >>Turn in A Plague Upon Thee
    .accept 6389 >>Accept A Plague Upon Thee
step
    .goto Western Plaguelands,51.920,28.058
.target Kirsta Deepshadow
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .accept 6004 >>Accept Unfinished Business
step
    .goto Western Plaguelands,52.0,44.3,70,0
    .goto Western Plaguelands,50.3,41.1,70,0
    .goto Western Plaguelands,40.7,52.2,70,0
    .goto Western Plaguelands,50.3,41.1,70,0
    .goto Western Plaguelands,52.0,44.3
	>>Kill Scarlet mobs. If you're unable to find medics and hunters, kill mobs at the camps to force new respawns, as they share respawns with other mob types
	>>If you're unable to find Mages, kill Knights (as they share spawns)
    .complete 6004,1 --Scarlet Medic (2)
    .complete 6004,2 --Scarlet Hunter (2)
    .complete 6004,3 --Scarlet Mage (2)
    .complete 6004,4 --Scarlet Knight (2)
step
    .goto Western Plaguelands,51.920,28.058
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6004 >>Turn in Unfinished Business
.target Kirsta Deepshadow
    .accept 6023 >>Accept Unfinished Business
step
	#label Businessman
    .goto Western Plaguelands,55.1,23.5
    >>Look for the named mob that patrols up and down the tower
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    *There is a level 63 elite mob that can spawn at the tower, if that's the case just be patient and wait for Durgen to come down
	.unitscan Cavalier Durgen
step
    #label tower
    .goto Western Plaguelands,55.1,23.5
    >>Loot the chest at the top of the tower, skip this step if the level 63 rare elite is blocking the way
    .complete 9474,1 --Collect Mark of the Lightbringer (x1)
    .isOnQuest 9474
step
    .goto Western Plaguelands,57.5,35.2
    .complete 6023,1 --Huntsman Radley (1)
step
    .goto Western Plaguelands,52.0,28.1
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6023 >>Turn in Unfinished Business
.target Kirsta Deepshadow
    .accept 6025 >>Accept Unfinished Business
step
	>>Run to the top of the tower in Hearthglen
    .goto Western Plaguelands,45.6,18.6
    .complete 6025,1 --Overlook Hearthglen from a high vantage point (1)
step
    .goto Western Plaguelands,52.0,28.1
.target Kirsta Deepshadow
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6025 >>Turn in Unfinished Business
step
    .goto Western Plaguelands,51.2,53.3,70,0
    .goto Western Plaguelands,46.9,47.0,70,0
    .goto Western Plaguelands,50.4,35.0,70,0
    .goto Western Plaguelands,45.6,37.7,70,0
    .goto Western Plaguelands,42.8,56.7,70,0
    .goto Western Plaguelands,51.2,53.3
	>>The Diseased Wolves share spawns with Carrion Lurkers. Kill them too if you're unable to find Wolves.
    .complete 4984,1 --Kill Diseased Wolf (x8)
	.unitscan Diseased Wolf
step
    .goto Western Plaguelands,44.3,63.2
	>>Use the beacon torch in your bags at the side of the doorway of the tower
    .complete 5097,3 --Tower Three marked (1)
step
    .goto Western Plaguelands,42.7,84.1
>>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5097 >>Turn in All Along the Watchtowers
.target Commander Ashlam Valorfist
    .accept 5533 >>Accept Scholomance
step
    .goto Western Plaguelands,42.69,83.90
>>Talk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5533 >>Turn in Scholomance
.target Alchemist Arbington
    .accept 5537 >>Accept Skeletal Fragments
step
    .goto Western Plaguelands,42.94,84.42
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5220 >>Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
    .accept 5222 >>Accept Target: Writhing Haunt
step
    .goto Western Plaguelands,42.94,84.42
.target Anchorite Truuen
>>Talk to |cRXP_FRIENDLY_Anchorite Truuen|r
    .turnin 9474 >>Turn in The Mark of the Lightbringer
    .isQuestComplete 9474
step
    .goto Western Plaguelands,43.5,84.9
.target Nathaniel Dumah
>>Talk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 6389 >>Turn in A Plague Upon Thee
step
    .goto Western Plaguelands,39.4,66.9
.target Chromie
>>Talk to |cRXP_FRIENDLY_Chromie|r
    .accept 4971 >>Accept A Matter of Time
step
    #completewith next
    >>Kill Skeletons in Andorhal. Loot them for their Fragments
    .goto Western Plaguelands,42.10,69.98,0
    .complete 5537,1 --Skeletal Fragments (15)
step
	>>Use the Temporal Displacer next to the glowing Silos in Andorhal. Kill the Temporal Parasites that spawn
    .goto Western Plaguelands,48.2,66.5
    .complete 4971,1 --Temporal Parasite (10)
step
    >>Kill Skeletons in Andorhal. Loot them for their Fragments
    .goto Western Plaguelands,42.10,69.98
    .complete 5537,1 --Skeletal Fragments (15)
step
    .goto Western Plaguelands,53.0,65.8
    .turnin 5222 >>Turn in Target: Writhing Haunt
    .accept 5223 >>Accept Return to Chillwind Camp
step
    .goto Western Plaguelands,53.7,64.7
>>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .turnin 4984 >>Turn in The Wildlife Suffers Too
.target Mulgris Deepriver
    .accept 4985 >>Accept The Wildlife Suffers Too
step
    .goto Western Plaguelands,53.9,51.3
	>>The Diseased Grizzlies share spawns with Plague Lurkers. Kill them too if you're unable to find Grizzlies.
    .complete 4985,1 --Diseased Grizzly (8)
	.unitscan Diseased Grizzly
step
    .goto Western Plaguelands,53.7,64.7
>>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .turnin 4985 >>Turn in The Wildlife Suffers Too
.target Mulgris Deepriver
    .accept 4986 >>Accept Glyphed Oaken Branch << !Shaman !Warlock !Paladin
step
    .goto Western Plaguelands,42.908,84.496
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5223 >>Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
    .accept 5225 >>Accept Target: Gahrron's Withering
step
    .goto Western Plaguelands,62.6,58.7
    .turnin 5225 >>Turn in Target: Gahrron's Withering
    .accept 5226 >>Accept Return to Chillwind Camp
step
	>>Go to the bottom of the crypt
    .goto Eastern Plaguelands,27.3,85.3
    .complete 6021,1 --Zaeldarr's Head (1)
step << skip
    .goto Eastern Plaguelands,28.8,79.8
	>>Click the skeleton on the ground. Loot it for the Insignia
    .complete 6185,2 --SI:7 Insignia (Rutger) (1)
step << skip
    .goto Eastern Plaguelands,28.8,74.9
	>>Click the skeleton on the ground. Loot it for the Insignia
    .complete 6185,4 --SI:7 Insignia (Turyen) (1)
step << skip
    .goto Eastern Plaguelands,27.2,75.0
	>>Click the skeleton on the ground. Loot it for the Insignia
    .complete 6185,3 --SI:7 Insignia (Fredo) (1)
    .complete 6185,1 --The Blightcaller Uncovered (1)
step
    .goto Eastern Plaguelands,36.5,90.9
>>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5142 >>Turn in Little Pamela
.target Pamela Redpath
    .accept 5149 >>Accept Pamela's Doll
step
	#completewith next
    .goto Eastern Plaguelands,38.14,92.43,20,0
    .goto Eastern Plaguelands,39.61,92.60,20,0
    .goto Eastern Plaguelands,39.60,90.00
    >>Loot the 3 doll parts around the buildings of Darrowshire. A ghost spawns each time you try looting one
	.collect 12886,1
	.collect 12887,1
	.collect 12888,1
step
    .goto Eastern Plaguelands,36.4,90.8
    >>Combine the doll parts together by clicking on any of them
    .complete 5149,1 --Pamela's Doll (1)
step
    .goto Eastern Plaguelands,36.4,90.8
>>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5149 >>Turn in Pamela's Doll
.target Pamela Redpath
    .accept 5152 >>Accept Auntie Marlene
    .accept 5241 >>Accept in Uncle Carlin
step
    #completewith next
    .hs >> Hearth to Southshore
step
    .goto Eastern Plaguelands,81.6,59.3
    .fly Chillwind Camp >>Fly to Chillwind Camp
step
    .goto Western Plaguelands,42.908,84.496
.target High Priestess MacDonnell
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5226 >>Turn in Return to Chillwind Camp
step
    .goto Western Plaguelands,42.7,84.1
.target Commander Ashlam Valorfist
>>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5237 >>Turn in Mission Accomplished!
step
    .goto Western Plaguelands,42.7,83.8
.target Alchemist Arbington
>>Talk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5537 >>Turn in Skeletal Fragments
step << skip
    .goto Western Plaguelands,43.6,84.4
>>Talk to |cRXP_FRIENDLY_Flint Shadowmore|r
    .turnin 6185 >>Turn in The Eastern Plagues
.target Flint Shadowmore
    .accept 6186 >>Accept The Blightcaller Cometh
step
    .goto Western Plaguelands,49.1,78.5
>>Talk to |cRXP_FRIENDLY_Marlene Redpath|r
    .turnin 5152 >>Turn in Auntie Marlene
.target Marlene Redpath
    .accept 5153 >>Accept A Strange Historian
step
    .goto Western Plaguelands,49.6,76.7
	>>Loot the gravestone right outside the house
    .complete 5153,1 --Joseph's Wedding Ring (1)
step
    .goto Western Plaguelands,39.46,66.90
>>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 4971 >>Turn in A Matter of Time
.target Chromie
    .accept 4972 >>Accept Counting Out Time
    .turnin 5153 >>Turn in A Strange Historian
    .accept 5154 >>Accept The Annals of Darrowshire
step
    #completewith next
    .goto Western Plaguelands,40.4,66.5,0
    >>Look for small lockboxes inside the burned houses. There should be one per house
    .complete 4972,1 --Andorhal Watch (5)
step
    .goto Western Plaguelands,43.4,69.6
	>>Loot books inside the Andorhal town hall until you get the correct one
    .complete 5154,1 --Collect Annals of Darrowshire (x1)
	*The correct book's pages has a lighter shade of grey and sometimes the correct book won't spawn
	*If you're unlucky, you have to keep looting bad tomes until a good one spawns
step
    .goto Western Plaguelands,40.4,66.5
    >>Look for small lockboxes inside the burned houses. There should be one per house
    .complete 4972,1 --Andorhal Watch (5)
step
    .goto Western Plaguelands,39.45,66.88
>>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 4972 >>Turn in Counting Out Time
    .turnin 5154 >>Turn in The Annals of Darrowshire
.target Chromie
    .accept 5210 >>Accept Brother Carlin
step
    .goto Western Plaguelands,42.9,85.0
    .fly Light's Hope Chapel >>Fly to Light's Hope Chapel
step
    .goto Eastern Plaguelands,81.51,59.81
    >>Speak to Carlin Redpath
>>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5241 >>Turn in Uncle Carlin
    .turnin 5210 >>Turn in Brother Carlin
.target Carlin Redpath
    .accept 5181 >>Accept Villains of Darrowshire
step
    .goto Eastern Plaguelands,79.7,63.7
.target Caretaker Alen
>>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .turnin 6021 >> Turn in Zaeldarr the Outcast
step
    #completewith next
    .goto Eastern Plaguelands,51.41,49.70
    .xp 60-8750 >> Grind xp until you're 8750xp away from level 60
step
    >>Do Villains of Darrowshire if you still need xp
    .complete 5181,1 --Skull of Horgus (1)
    .goto Eastern Plaguelands,51.41,49.70
    .complete 5181,2 --Shattered Sword of Marduk (1)
    .goto Eastern Plaguelands,53.90,65.71
.target Carlin Redpath
>>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5181 >>Turn in Villains of Darrowshire
    .goto Eastern Plaguelands,81.52,59.87
step
    .goto Eastern Plaguelands,81.64,59.28
    .fly Stormwind >>Fly to Stormwind
step << skip
    .goto StormwindClassic,77.9,18.2
.target King Varian Wrynn
>>Talk to |cRXP_FRIENDLY_King Varian Wrynn|r
    .turnin 6186 >>Turn in The Blightcaller Cometh
]])
