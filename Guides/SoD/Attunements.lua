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
step
    .goto Deadwind Pass,47.36,75.60,100 >> Travel south towards |cRXP_LOOT_Karazhan|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Keanna|r at her camp
    .turnin 86965 >> Turn in No Ordinary Shadows
    .accept 86966 >> Accept Seeking Survivors
step
    .goto Deadwind Pass,59.2,73.4,30 >> Travel south to the entrance of the ogre cave
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r at the camp
    .turnin 86967 >> Turn in To the Rescue
    .accept 86968 >> Accept Are You Afraid of the Dark?
    .target Harrison Jones
step
    .goto Deadwind Pass,52.09,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Keanna|r
    .turnin 86968 >> Turn in Are You Afraid of the Dark?
    .accept 86969 >> Accept Hypothesis
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
    .zoneskip 2557 --Dire Maul
    .zoneskip 15475 --Demon Fall Canyon
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
    .zoneskip 2557,1 --Only shows in Dire Maul
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>Kill |cRXP_ENEMY_Grimroot|r the first boss in the instance. Loot him for the |T135139:0|t[Ironwood Branch]
    .complete 86969,2
    .zoneskip 15475,1 --Only shows in Demon Fall Canyon
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
]])