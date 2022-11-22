RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#name 3Retail_Allied Races
#displayname Allied Races
#next RestedXP Alliance 10-60\1A_Elwynn Forest

<<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf


step <<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
    #completewith next
    .zoneskip 84
    +Press(Default N) to Open Talents Select your desired Talent Specilization
step <<DarkIronDwarf
    .zoneskip 1602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Moira
    .goto 1186,56.43,31.86
    .accept 51486 >>Accept Fer the Alliance
step <<DarkIronDwarf
    #completewith next
    .zoneskip 1602
    .goto 1186,59.27,26.52
    .cast 281587 >> Click the Mole Machine
step <<DarkIronDwarf
    .zoneskip 1602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Moorgard
    .goto 84,53.08,15.26
    .turnin 51486 >>Turn in Fer the Alliance
step <<KulTiran
    .zoneskip 1602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Katherine Proudmoore
    .goto 1161,67.71,21.77
    .accept 55142 >>Accept For the Alliance
step <<KulTiran
    .zoneskip 1602
    >>Click the Stormwind Portal
    .goto 1161,67.15,22.9,10,0
    .goto 1161,67.44,21.4,10,0
    .goto 1161,68.87,21.12,10,0
    .goto 1161,70.47,17.11,10,0
    .goto 1161,70.1,16.8
    .complete 55142,1 --1/1 Portal to Stormwind Taken
step <<KulTiran 
    .zoneskip 1602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Moorgard
    .goto 84,53.08,15.26
    .turnin 55142 >>Turn in For the Alliance
step <<LightforgedDraenei
    .zoneskip 1602
    >>Captain Fareeya
    .goto 940,49.2,43.8
    .accept 49772 >>Accept For the Alliance
step <<LightforgedDraenei
    .zoneskip 1602
    >>Go into the Room Below and Click the Portal to Stormwind
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Moorgard
    .goto 940,54.98,61.47,10,0
    .goto 940,43.32,25.32,10,0
    .goto 84,53.08,15.26
    .turnin 49772 >>Turn in For the Alliance
step <<Mechagnome
    .zoneskip 1602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Tinker Mekkartonque
    .goto 1573,18.67,67.5
    .accept 58146 >>Accept For the Alliance
step <<Mechagnome
    .zoneskip 1602
    >>Walk on the Stormwind Teleportation Unit
    .goto 1573,20.5,60.0
    .complete 58146,1 --1/1 Teleport to Stormwind
step <<Mechagnome
    .zoneskip 1602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Moorgard
    .goto 84,53.08,15.26
    .turnin 58146 >>Turn in For the Alliance
step <<VoidElf
    .zoneskip 1602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alleria
    .goto 971,28.5,22.3
    .accept 49788 >>Accept For the Alliance
step <<VoidElf
    .zoneskip 1602
    .goto 971,27.99,21.50,10,0
    .goto 84,53.08,15.26
    >>Click the Void Portal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Moorgard
    .turnin 49788 >>Turn in For the Alliance
step <<Kultiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf/Pandaren
    >>Talk to Chromie
    .goto 84,56.26,17.32
    .skipgossip 1
    .accept 60891 >>Accept Cataclysm: Onward to Adventure in the Eastern Kingdoms
step <<DarkIronDwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .isQuestTurnedIn 51486
    .goto 84,62.16,30.14
    .accept 46727 >>Accept Tides of War
step <<KulTiran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .isQuestTurnedIn 55142
    .goto 84,62.16,30.14
    .accept 46727 >>Accept Tides of War
step <<LightforgedDraenei
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .isQuestTurnedIn 49772
    .goto 84,62.16,30.14
    .accept 46727 >>Accept Tides of War
step <<Mechagnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .isQuestTurnedIn 58146
    .goto 84,62.16,30.14
    .accept 46727 >>Accept Tides of War
step <<VoidElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .isQuestTurnedIn 49788
    .goto 84,62.16,30.14
    .accept 46727 >>Accept Tides of War
step <<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 84,62.10,32.18
    .accept 7905 >>Accept The Darkmoon Faire
step <<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
    .dmf
    +Talk to the Darkmoon Faire Mystic Mage and press accept
    .goto 84,62.10,32.18
    .zoneskip 37
    .skipgossip
step <<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
    .nodmf
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato
    .accept 332 >>Accept Wine Shop Advert
step <<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
    .nodmf
    .goto 84,70.0,47.24,20,0
    .goto 84,68.54,51.37,20,0
    .goto 84,67.45,57.19,25,0
    .goto 84,68.59,62.19,25,0
    .goto 84,66.03,64.49,25,0
    .goto 84,64.39,67.14,25,0
    .goto 84,63.89,72.21,35,0
    .goto 84,63.81,73.53,10,0
    .goto 84,67.45,80.52,25,0
    .goto 84,67.1,83.44,25,0
    .goto 84,69.69,84.78,25,0
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bartlett in Goldshire
    .fp >>Get the Goldshire Flight Path
step <<DK
    .zoneskip 84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to The Lich King
    .goto 1602,49.55,90.69
    .accept 58877 >>Accept Death's Power Grows
step <<DK
    .isOnQuest 58877
    >>Use the Extra Action Button infront of the Lich King
    .complete 58877,1 --1/1 Fealty sworn
step <<DK
    .isQuestComplete 58877
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to The Lich King
    .goto 1602,49.6,90.7
    .turnin 58877,1 >>Turn in Death's Power Grows
    .accept 58902 >>Accept Defender of Azeroth << Alliance
    .accept 58903 >>Accept Defender of Azeroth << Horde
step <<DK
    .isQuestTurnedIn 58877 --x New Type of DK Check
    #completewith next
    .zoneskip 84
    +Press(Default N) to Open Talents Select your desired Talent Specilization
step <<DK
    .isQuestTurnedIn 58877 --x New Type of DK Check
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Highlord Darion Morgraine
    .goto 1602,50.7,71.0
    .skipgossip
    .complete 58902,1 << Alliance --1/1 Speak with Highlord Darion Mograine 
    .complete 58903,1 << Horde --1/1 Speak with Highlord Darion Mograine
step <<DK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .goto 84,67.16,83.4,20,0
    .goto 84,67.51,80.47,20,0
    .goto 84,63.77,73.60
    .accept 332 >>Accept Wine Shop Advert
step <<DK
    .isQuestTurnedIn 58877 --x New Type of DK Check
    >>Click the Hero's Call Board
    .goto 84,62.9,71.8,5,0
    .complete 58902,4 --1/1 Hero's Call Board
step <<DK
    .isQuestTurnedIn 58877 --x New Type of DK Check
    >>Click the Quest Pop-Up to turn in the Quest
    .turnin 58902 >>Turn in Defender of Azeroth
step <<DK
    .isQuestTurnedIn 58877 --x New Type of DK Check
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .goto 84,62.81,71.74
    .accept 46727 >>Accept Tides of War
step <<DK
    .isQuestTurnedIn 58877 --x New Type of DK Check
    >>Click the Death Gate
    .goto 1602,49.96,39.08
    .complete 58902,2 << Alliance --1/1 Death Gate Used
    .complete 58903,2 << Horde --1/1 Death Gate Used 
step <<DK
    +Use Death Gate to Acherus:The Ebon Hold
    .zoneskip 23
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .use 50977
step <<DK
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .goto 23,82.02,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Highlord Darion Mograine
    .accept 58989 >>Accept Runeforging 101
step <<DK
    .isQuestTurnedIn 58877 --x New Type of DK Check
    >>Teleport by walking over the purple circle(not click)
    .goto 23,83.19,48.90
    .complete 58989,1 --1/1 Use the portal to the 2nd floor
step <<DK
    .isQuestTurnedIn 58877 --x New Type of DK Check
    >>Go to the Runeforge and open your Spellbook and use the enchant Fallen Crusader on your weapon
    .goto 23,83.14,45.4
    .complete 58989,2 --Weapon emblazoned (1)
step <<DK
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .goto 23,83.25,49.02,10,0
    .goto 23,82.02,46.28
    >>Go Back on the Teleporter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Highlord Darion Mograine
    .turnin 58989 >>Turn in Runeforging 101
step <<DK
    >>You might have to wait shortly on it's CD
    +Use Death Gate to Stormwind
    .zoneskip 84
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .use 50977
step << DK
    .isQuestTurnedIn 58902 --x New Type of DK Check
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 84,62.25,72.96
    .accept 7905 >>Accept The Darkmoon Faire
step <<DK
    .dmf
    .isQuestTurnedIn 58902  --x new type of dk check
    +Talk to Darkmoon Faire Mystic Mage and press accept
    .skipgossip
    .zoneskip 37
    .goto 84,62.25,72.96
step <<DK 
    .nodmf
    .isQuestTurnedIn 58877 --x New DK Check
    .goto 84,64.63,70.45,25,0
    .goto 84,68.29,74.57,25,0
    .goto 84,70.92,72.45
    .fly Goldshire >>Fly to Goldshire
]])
