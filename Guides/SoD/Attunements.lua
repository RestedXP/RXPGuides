RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Endgame Guides
#subgroup Attunements
#name Karazhan Crypts Attunement

step
    #completewith next
    .subzone 2268 >> Travel to the |cRXP_LOOT_Light's Hope Chapel|r in |cRXP_PICK_Eastern Plaguelands|r
step
    .goto Eastern Plaguelands,81.3,58.75
    >>Click on the billboard labeled |cRXP_FRIENDLY_Seeking Seasoned Adventurers|r to the right of the Chapel's entrance
    .accept 86964 >> Accept For Gold and Glory
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >> Travel to the |cRXP_PICK_Deadwind Pass|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,47.36,75.60,100 >> Travel south towards |cRXP_LOOT_Karazhan|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,39,74
    >>Look for a corpse of a |cRXP_FRIENDLY_Deceased Adventurer|r
    .turnin 86964 >> Turn in For Gold and Glory
    .accept 86965 >> Accept No Ordinary Shadows
    .target Deceased Adventurer
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>Travel north to the Dalaran Agent's camp
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Keanna|r
    .turnin 86965 >> Turn in No Ordinary Shadows
    .accept 86966 >> Accept Seeking Survivors
step
    .goto Deadwind Pass,59.2,73.4,30 >> Travel south to the entrance of the ogre cave
    .isOnQuest 86966
step
    .goto Deadwind Pass,65.0,78.0
    >>Enter the cave, look for the |cRXP_FRIENDLY_Injured Adventurer|r, he is locked in a cage
    .turnin 86966 >> Turn in Seeking Survivors
    .accept 86967 >> Accept To the Rescue
    .target Injured Adventurer
step
    .goto Deadwind Pass,65.0,78.0
    >>Kill any of the |cRXP_ENEMY_Ogres|r and loot them untill you find a |cRXP_LOOT_Deadwind Cage "Key"|r. Use it on the cage to complete the quest
    >>|cRXP_WARN_If someone else completes this objective while you're nearby you will also get credit even if you're not in a group with them|r
    .complete 86967,1
    .collect 235785,1 --Deadwind Cage "Key"
    .disablecheckbox
    .mob Deadwind Warlock
    .mob Deadwind Mauler
    .mob Deadwind Ogre Mage
    .mob Deadwind Brute
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>Travel back north to the Dalaran Agent's camp
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 86967 >> Turn in To the Rescue
    .accept 86968 >> Accept Are You Afraid of the Dark?
    .target Harrison Jones
step
    .goto Deadwind Pass,52.09,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Keanna|r
    .turnin 86968 >> Turn in Are You Afraid of the Dark?
    .accept 86969 >> Accept The Hypothesis
    .target Agent Keanna
step
    #optional
    #completewith Hypothesis
    #label Wetlands
    .zone Wetlands >> Travel to |cRXP_PICK_Wetlands|r to look for the |T132839:0|t[Flame of Life]
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires Wetlands
    #label GrimBatol
    .goto 1437/0,-3451.700,-3450.800,40 >> Head to the start of the path to |cRXP_LOOT_Grim Batol|r
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires GrimBatol
    .goto Wetlands,52.55,41.62,0
    .goto Wetlands,88.07,60.72,0
    .goto Wetlands,85.72,69.33,0
    .goto Wetlands,87.04,51.45
    >>Kill any of the |cRXP_ENEMY_Dragonkin|r in the area untill you loot the |T132839:0|t[|cRXP_LOOT_Flame of Life|r]
    .collect 235789,1 --Flame of Life
    .mob Red Scalebane
    .mob Scalebane Lieutenant
    .mob Wyrmkin Firebrand
    .mob Red Dragonspawn
    .mob Scalebane Royal Guard
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label EnterDungeon
    .subzoneskip 2557 --Dire Maul
    .subzoneskip 15475 --Demon Fall Canyon
    .goto Kalimdor,42.98,67.51,0 --Dire Maul Entrance
    .goto Ashenvale,84.5,75.0,0 --Demon Fall Canyon Entrance
    +Look for a group for either |cRXP_LOOT_Dire Maul West|r or |cRXP_LOOT_Demon Fall Canyon|r and enter the dungeon
    >>|cRXP_WARN_Keep in mind you need to be attuned to enter Demon Fall Canyon.|r You can find a guide for that in the Endgame Guides > Attunements section
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>Kill |cRXP_ENEMY_Tendris Warpwood|r the first boss in the instance. Loot him for the |T135139:0|t[Ironwood Branch]
    .complete 86969,2
    .subzoneskip 2557,1 --Only shows in Dire Maul
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>Kill |cRXP_ENEMY_Grimroot|r the first boss in the instance. Loot him for the |T135139:0|t[Ironwood Branch]
    .complete 86969,2
    .subzoneskip 15475,1 --Only shows in Demon Fall Canyon
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label Winterspring
    .zone Winterspring >> Travel to |cRXP_PICK_Winterspring|r to look for the |T136116:0|t[Enthusiastic Wisp]
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Winterspring
    #label Darkwhisper
    .goto Winterspring,60.39,73.95,50 >> Travel to the |cRXP_LOOT_Darkwhisper Gorge|r
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Darkwhisper
    .goto Winterspring,59.78,75.92,20,0
    .goto Winterspring,60.18,78.08,20,0
    .goto Winterspring,60.74,79.11,20,0
    .goto Winterspring,61.16,80.19,20,0
    .goto Winterspring,61.21,82.13,20,0
    .goto Winterspring,59.09,83.57,20,0
    .goto Winterspring,58.93,85.67,20,0
    .goto Winterspring,56.06,84.80,20,0
    .goto Winterspring,55.13,84.21,20,0
    .goto Winterspring,53.88,84.77,20,0
    .goto Winterspring,53.08,86.33,20,0
    .goto Winterspring,52.68,88.38,20,0
    .goto Winterspring,52.2,90.4
    .target Enthusiastic Wisp
    >>Travel south and look for the |cRXP_FRIENDLY_Enthusiastic Wisp|r. Interact with it to pick it up
    >>|cRXP_WARN_Avoid fighting the elite demons in the area. You can just run past them|r
    .complete 86969,3 --Enthusiastic Wisp
    .isOnQuest 86969
    .itemcount 235788,<1 
step
    #label Hypothesis
    >>Collect the |T132839:0|t[Flame of Life]. It drops from |cRXP_ENEMY_Elite Dragonkin|r near |cRXP_LOOT_Grim Batol|r in |cRXP_PICK_Wetlands|r
    >>Collect the |T135139:0|t[Ironwood Branch]. It drops from either |cRXP_ENEMY_Grimroot|r in |cRXP_LOOT_Demon Fall Canyon|r|cRXP_WARN_(dungeon)|r or |cRXP_ENEMY_Tendris Warpwood|r in |cRXP_LOOT_Dire Maul West|r|cRXP_WARN_(dungeon)|r
    >>Collect the |T136116:0|t[Enthusiastic Wisp]. It's an interactable |cRXP_FRIENDLY_friendly NPC|r in |cRXP_LOOT_Darkwhisper Gorge|r in |cRXP_PICK_Winterspring|r
    >>|cRXP_WARN_These items can be collected in any order|r
    .complete 86969,1 --Flame of Life
    .complete 86969,2 --Ancient Ironwood Branch
    .complete 86969,3 --Enthusiastic Wisp
    .mob Grimroot
    .mob Tendris Warpwood
    .isOnQuest 86969
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >> Return to the |cRXP_PICK_Deadwind Pass|r
    .isQuestComplete 86969
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>Travel to the Dalaran Agent's camp
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Keanna|r
    .turnin 86969 >> Turn in The Hypothesis
    .accept 86970 >> Accept Testing Our Hypothesis
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,42.20,77.41,20,0
    .goto Deadwind Pass,39.98,75.36,20,0
    .goto Deadwind Pass,39.93,74.24
    >>Travel to Morgan's Plot located west of Karazhan. |cRXP_WARN_Walk into the massive shadow orb there|r
    >>Use your |T135432:0|t[|cRXP_FRIENDLY_Enchanted Firebrand|r] once inside and wait for the RP to complete
    .complete 86970,1
    .use 235790 --Enchanted Firebrand
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,55.40,78.75,20,0
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>Travel back north to the Dalaran Agent's camp
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Keanna|r
    .turnin 86970 >> Turn in Testing Our Hypothesis
    .target Agent Keanna
step
    >>|cRXP_WARN_Congratulations, you're now attuned to the Karazhan Crypts!|r
    >>You can |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r to pick up a quest from him that can be completed inside the instance
    .accept 86971 >> Accept Curious Karazhan Curios!
    .target Harrison Jones
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Endgame Guides
#subgroup Attunements
#name Scarlet Enclave Introduction

step
   #completewith next
   .subzone 2268 >> Travel to the |cRXP_LOOT_Light's Hope Chapel|r in |cRXP_PICK_Eastern Plaguelands|r
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r inside the chapel
   .accept 87459 >> Accept Scarlet Activities
   .target Leonid Barthalomew the Revered
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessica Chambers|r
    .home >> If you want to|cRXP_WARN_ you can set your hearthstone here|r. This will help you return from Tirisfal Glades quicker
    .target Jessica Chambers
step << Alliance
    .goto Eastern Plaguelands,81.64,59.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khaelyn Steelwing|r outside
    .fly Chillwind >> Fly to Western Plaguelands
    .target Khaelyn Steelwing
    .isOnQuest 87459
step << Horde
    .goto Eastern Plaguelands,80.23,57.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Georgia|r outside
    .target Georgia
    .fly Undercity >> Fly to the Undercity
    .isOnQuest 87459
step << Horde
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
    .isOnQuest 87459
step << Alliance
   #completewith next
   .goto Tirisfal Glades,84.85,70.57
   .zone Tirisfal Glades >> Travel to Tirisfal Glades
   .isOnQuest 87459
step
   .goto Tirisfal Glades,81.76,58.06
   >>Head north to the scarlet camp << Alliance
   >>Head east to the scarlet camp << Horde
   >>Click on the |cRXP_PICK_Ball and Chain|r outside of the small tent. It will spawn an |cRXP_WARN_elite|r |cRXP_ENEMY_Scarlet Infiltrator|r who will attack you
   >>Kill and |cRXP_LOOT_loot|r him for the |T133471:0|t[Orders from the High General]
   .complete 87459,1 --Orders from the High General
   .mob Scarlet Infiltrator
   .isOnQuest 87459
step
   #completewith next
   .subzone 2268 >> Return to the |cRXP_LOOT_Light's Hope Chapel|r in |cRXP_PICK_Eastern Plaguelands|r
   .isOnQuest 87459
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r inside the chapel
    .turnin 87459 >> Turn in Scarlet Activities
    .accept 87493 >> Accept Unrest at Tyr's Hand
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Travel south to the scarlet base camp
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Beatrix|r
    .turnin 87493 >> Turn in Unrest at Tyr's Hand
    .accept 87497 >> Accept The Schism
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Beatrix|r and complete her dialogue
    .complete 87497,1
    .skipgossip
    .target Commander Beatrix
step
   .goto Eastern Plaguelands,81.73,57.84
   >>Return to the Light's Hope Chapel
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r inside
    .turnin 87497 >> Turn in The Schism
    .accept 87498 >> Accept The Scarlet Redemption
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Return to the scarlet base camp
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Beatrix|r
    .turnin 87498 >> Turn in The Scarlet Redemption
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarlet Inquisitor Caldoran|r
    .accept 87502 >> Accept Gathering Intelligence
    .target Scarlet Inquisitor Caldoran
step
    .goto Eastern Plaguelands,68.18,82.43
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inquisitor Jociphine|r |cRXP_WARN_to receive a temporary scarlet disguise|r
    .aura 1231929 --Scarlet Illusion
    .skipgossip
    .target Inquisitor Jociphine
step
    >>Enter Tyr's Hand and travel to the Cathedral in the center
    .goto Eastern Plaguelands,85.27,83.98
    .complete 87502,1 --Scout the Cathedral in Tyr's Hand: 1/1 
step
    .goto Eastern Plaguelands,89.76,81.41,30 >>Take the left path leading into New Avalon
step
    >>Head towards the keep in New Avalon
    >>|cRXP_WARN_Be careful of |r|cRXP_ENEMY_Scarlet Bloodhounds|r |cRXP_WARN_they will see through your disguise!|r
    >>You can use |T132328:0|t[Track Beasts] to help keep track of the hounds position << Hunter
    .goto Eastern Plaguelands,96.66,83.06
    .complete 87502,3 --Scout the Keep in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>Head towards the Mage Tower
    >>|cRXP_WARN_Be careful of |r|cRXP_ENEMY_Scarlet Bloodhounds|r |cRXP_WARN_they will see through your disguise!|r
    >>You can use |T132328:0|t[Track Beasts] to help keep track of the hounds position << Hunter
    .goto Eastern Plaguelands,98.14,87.88
    .complete 87502,2 --Scout the Mage Tower in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>Return to the scarlet base camp
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarlet Inquisitor Caldoran|r
    .turnin 87502 >> Turn in Gathering Intelligence
    .accept 87506 >> Accept Weakening the Defenses
    .target Scarlet Inquisitor Caldoran
    .unitscan Sarlet Bloodhound
step
    #optional
    #completewith next
    >>|cRXP_WARN_You can now unlock the permanent Scarlet Disguise by collecting 4 pieces of a craftable scarlet set then using the provided|r |T134503:0|t[|cFF0070FFScarlet Insignia|r]
    >>You should be able to find those on the auction house. It's not mandatory but will make traversing New Avalon in the future much easier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inquisitor Jociphine|r
    .accept 90510 >> Accept New Avalon
    .use 237020 --Scarlet Insignia
step
    >>Enter Tyr's Hand and look for |cRXP_ENEMY_Scarlet Siege Commanders|r 
    >>|cRXP_WARN_They can be found more commonly near siege weapons or on the walls|r
    .complete 87506,1 --Scarlet Siege Commander (3)
    .target Scarlet Siege Commander
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Return to the scarlet base camp
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Beatrix|r
    .turnin 87506 >> Turn in Weakening the Defenses
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Argent Emissary|r
    .accept 87508 >> Accept Report to Lord Tyrosus
step
    >>Travel back to the Light's Hope Chapel
    .goto Eastern Plaguelands,81.74,57.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r inside
    .turnin 87508 >> Turn in Report to Lord Tyrosus
    .accept 87509 >> Accept The Wrath of the Dawn
    .target Lord Maxwell Tyrosus
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Return to the scarlet base camp
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Beatrix|r
    .skipgossip
    .complete 87509,1 --Report back to Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Beatrix|r
    .turnin 87509 >> Turn in The Wrath of the Dawn
    .accept 87516 >> Accept Decapitation Strike
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.36,87.58
    >>This quest requires you to kill |cRXP_ENEMY_Balnazzar|r |cRXP_WARN_the first boss in the new Scarlet Enclave raid|r
    >>Find a raid group and happy hunting!
    .complete 87516,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r inside the prison you get moved to after defeating Balnazzar in in the raid
    .turnin 87516 >> Turn in Decapitation Strike
    .target Lord Maxwell Tyrosus
step
    +|cRXP_WARN_Congratulations you have completed the Scarlet Enclave introductory questline!|r
]])